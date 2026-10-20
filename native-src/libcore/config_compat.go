package libcore

import (
	"context"
	"encoding/json"
	"fmt"
	"github.com/sagernet/sing-box/option"
	"net/url"
	"strconv"
	"strings"
)

// Upgrade the configuration emitted by the cached Android client before decoding
// it with the upstream 1.14 registries. Tags and explicit rule order are retained.
func upgradeClientConfig(config string) (string, error) {
	var root map[string]any
	if err := json.Unmarshal([]byte(config), &root); err != nil {
		return "", err
	}
	obj := func(v any) map[string]any { m, _ := v.(map[string]any); return m }
	arr := func(v any) []any { a, _ := v.([]any); return a }
	str := func(v any) string { s, _ := v.(string); return s }
	route := obj(root["route"])
	if route == nil {
		route = map[string]any{}
		root["route"] = route
	}
	legacyDnsOutbound := func() string {
		if tag := str(route["final"]); tag != "" {
			return tag
		}
		outbounds := arr(root["outbounds"])
		if len(outbounds) == 0 {
			return ""
		}
		first := obj(outbounds[0])
		if first == nil {
			return ""
		}
		if tag := str(first["tag"]); tag != "" {
			return tag
		}
		used := map[string]bool{}
		for _, v := range outbounds {
			used[str(obj(v)["tag"])] = true
		}
		tag := "jiajia-dns-default"
		for i := 1; used[tag]; i++ {
			tag = fmt.Sprintf("jiajia-dns-default-%d", i)
		}
		first["tag"] = tag
		return tag
	}
	dns := obj(root["dns"])
	strategies := map[string]any{}
	rcodes := map[string]string{}
	if dns != nil {
		fake := obj(dns["fakeip"])
		delete(dns, "fakeip")
		servers := []any{}
		for _, value := range arr(dns["servers"]) {
			s := obj(value)
			if s == nil {
				return "", fmt.Errorf("invalid DNS server")
			}
			if str(s["type"]) != "" {
				servers = append(servers, s)
				continue
			}
			address := str(s["address"])
			tag := str(s["tag"])
			if strings.HasPrefix(address, "rcode://") {
				rcodes[tag] = strings.TrimPrefix(address, "rcode://")
				continue
			}
			// Preserve the old default-outbound semantics when converting network DNS.
			if address != "fakeip" && address != "local" && !strings.HasPrefix(address, "dhcp://") && str(s["detour"]) == "" {
				if tag := legacyDnsOutbound(); tag != "" {
					s["detour"] = tag
				}
			}
			if strategy, ok := s["strategy"]; ok {
				strategies[tag] = strategy
			}
			delete(s, "strategy")
			resolver := s["address_resolver"]
			strategy := s["address_strategy"]
			if resolver != "" && resolver != nil {
				d := map[string]any{"server": resolver}
				if strategy != nil {
					d["strategy"] = strategy
				}
				s["domain_resolver"] = d
			}
			if delay, ok := s["address_fallback_delay"]; ok {
				s["fallback_delay"] = delay
			}
			delete(s, "address")
			delete(s, "address_resolver")
			delete(s, "address_strategy")
			delete(s, "address_fallback_delay")
			switch address {
			case "local":
				s["type"] = "local"
			case "fakeip":
				s["type"] = "fakeip"
				for _, k := range []string{"inet4_range", "inet6_range"} {
					if v, ok := fake[k]; ok {
						s[k] = v
					}
				}
			default:
				raw := address
				if !strings.Contains(raw, "://") {
					raw = "udp://" + raw
				}
				u, err := url.Parse(raw)
				if err != nil || u.Hostname() == "" {
					return "", fmt.Errorf("invalid DNS address %q", address)
				}
				s["type"] = u.Scheme
				s["server"] = u.Hostname()
				if u.Port() != "" {
					p, err := strconv.Atoi(u.Port())
					if err != nil {
						return "", err
					}
					s["server_port"] = p
				}
				if u.Scheme == "https" || u.Scheme == "h3" {
					if u.Path != "" {
						s["path"] = u.RequestURI()
					}
				}
				if u.Scheme == "dhcp" {
					delete(s, "server")
					if u.Host != "auto" {
						s["interface"] = u.Host
					}
				}
			}
			servers = append(servers, s)
		}
		dns["servers"] = servers
		var rewrite func([]any)
		rewrite = func(rules []any) {
			for _, v := range rules {
				r := obj(v)
				if r == nil {
					continue
				}
				rewrite(arr(r["rules"]))
				tag := str(r["server"])
				if code, ok := rcodes[tag]; ok {
					delete(r, "server")
					r["action"] = "predefined"
					r["rcode"] = strings.ToUpper(map[string]string{"success": "NOERROR", "format_error": "FORMERR", "server_failure": "SERVFAIL", "name_error": "NXDOMAIN", "not_implemented": "NOTIMP", "refused": "REFUSED"}[code])
				}
				if strategy, ok := strategies[tag]; ok {
					if _, exists := r["strategy"]; !exists {
						r["strategy"] = strategy
					}
				}
				// Predefined replies bypass upstream lookup and its response cache.
				// Strip route-only fields left over from legacy rcode transports.
				if str(r["action"]) == "predefined" {
					for _, key := range []string{"server", "strategy", "disable_cache", "disable_optimistic_cache", "rewrite_ttl", "client_subnet", "remove_client_subnet", "timeout", "speculative"} {
						delete(r, key)
					}
				}
			}
		}
		rewrite(arr(dns["rules"]))
		final := str(dns["final"])
		if final == "" && len(servers) > 0 {
			final = str(obj(servers[0])["tag"])
		}
		if strategy, ok := strategies[final]; ok {
			dns["rules"] = append(arr(dns["rules"]), map[string]any{"action": "route", "server": final, "strategy": strategy})
		}
	}
	// Modern DNS rules with query_type cannot be mixed with legacy strategy actions.
	// Lookup preference is retained globally and on resolve actions; family-only
	// DNS rules synthesize an empty answer for the excluded query family.
	if dns != nil {
		var modernize func([]any) []any
		modernize = func(rules []any) []any {
			result := []any{}
			for _, v := range rules {
				r := obj(v)
				strategy := str(r["strategy"])
				delete(r, "strategy")
				if strategy == "ipv4_only" || strategy == "ipv6_only" {
					kind := "AAAA"
					if strategy == "ipv6_only" {
						kind = "A"
					}
					match := map[string]any{}
					for k, v := range r {
						if k != "server" && k != "action" && k != "disable_cache" && k != "rewrite_ttl" && k != "client_subnet" {
							match[k] = v
						}
					}
					if len(match) == 0 {
						result = append(result, map[string]any{"query_type": []any{kind}, "action": "predefined", "rcode": "NOERROR"})
					} else {
						result = append(result, map[string]any{"type": "logical", "mode": "and", "rules": []any{match, map[string]any{"query_type": []any{kind}}}, "action": "predefined", "rcode": "NOERROR"})
					}
				}
				result = append(result, r)
			}
			return result
		}
		dns["rules"] = modernize(arr(dns["rules"]))
		final := str(dns["final"])
		if final == "" {
			servers := arr(dns["servers"])
			if len(servers) > 0 {
				final = str(obj(servers[0])["tag"])
			}
		}
		if strategy, ok := strategies[final]; ok {
			if _, exists := dns["strategy"]; !exists {
				dns["strategy"] = strategy
			}
		}
	}
	var prefix []any
	for i, v := range arr(root["inbounds"]) {
		in := obj(v)
		tag := str(in["tag"])
		if tag == "" {
			tag = fmt.Sprintf("jiajia-in-%d", i)
			in["tag"] = tag
		}
		if in["type"] == "tun" {
			for _, pair := range [][3]string{{"address", "inet4_address", "inet6_address"}, {"route_address", "inet4_route_address", "inet6_route_address"}, {"route_exclude_address", "inet4_route_exclude_address", "inet6_route_exclude_address"}} {
				for _, k := range pair[1:] {
					if value, ok := in[k]; ok {
						values := arr(value)
						if values == nil {
							values = []any{value}
						}
						in[pair[0]] = append(arr(in[pair[0]]), values...)
						delete(in, k)
					}
				}
			}
			if in["endpoint_independent_nat"] == true {
				in["udp_mapping"] = "endpoint_independent"
			}
			delete(in, "endpoint_independent_nat")
			delete(in, "gso")
		}
		match := []any{tag}
		if in["sniff"] == true {
			rule := map[string]any{"inbound": match, "action": "sniff"}
			if t, ok := in["sniff_timeout"]; ok {
				rule["timeout"] = t
			}
			prefix = append(prefix, rule)
		}
		if s := str(in["domain_strategy"]); s != "" && s != "as_is" {
			prefix = append(prefix, map[string]any{"inbound": match, "action": "resolve", "strategy": s})
		}
		if in["udp_disable_domain_unmapping"] == true {
			prefix = append(prefix, map[string]any{"inbound": match, "action": "route-options", "udp_disable_domain_unmapping": true})
		}
		for _, k := range []string{"sniff", "sniff_timeout", "sniff_override_destination", "domain_strategy", "udp_disable_domain_unmapping"} {
			delete(in, k)
		}
	}
	dnsTags := map[string]bool{}
	outbounds := []any{}
	for _, v := range arr(root["outbounds"]) {
		out := obj(v)
		switch str(out["type"]) {
		case "dns":
			dnsTags[str(out["tag"])] = true
			continue
		case "wireguard":
			out["address"] = out["local_address"]
			delete(out, "local_address")
			delete(out, "gso")
			if value, ok := out["system_interface"]; ok {
				out["system"] = value
			}
			delete(out, "system_interface")
			if value, ok := out["interface_name"]; ok {
				out["name"] = value
			}
			delete(out, "interface_name")
			delete(out, "network")
			if value, ok := out["peer_public_key"]; ok {
				out["public_key"] = value
			}
			delete(out, "peer_public_key")
			peers := arr(out["peers"])
			if len(peers) == 0 {
				peer := map[string]any{}
				for _, k := range []string{"server", "server_port", "public_key", "pre_shared_key", "reserved"} {
					if x, ok := out[k]; ok {
						peer[k] = x
						delete(out, k)
					}
				}
				peer["allowed_ips"] = []any{"0.0.0.0/0", "::/0"}
				peers = []any{peer}
			}
			for _, p := range peers {
				peer := obj(p)
				peer["address"] = peer["server"]
				peer["port"] = peer["server_port"]
				delete(peer, "server")
				delete(peer, "server_port")
			}
			out["peers"] = peers
			root["endpoints"] = append(arr(root["endpoints"]), out)
			continue
		}
		outbounds = append(outbounds, out)
	}
	root["outbounds"] = outbounds
	var rewriteRoute func([]any)
	rewriteRoute = func(rules []any) {
		for _, v := range rules {
			r := obj(v)
			rewriteRoute(arr(r["rules"]))
			if dnsTags[str(r["outbound"])] {
				delete(r, "outbound")
				r["action"] = "hijack-dns"
			}
		}
	}
	rewriteRoute(arr(route["rules"]))
	route["rules"] = append(prefix, arr(route["rules"])...)

	// New DNS transports already use the direct default dialer. Upstream rejects
	// a detour to a direct outbound without options; this is equivalent to no detour.
	if dns != nil {
		emptyDirect := map[string]bool{}
		for _, v := range outbounds {
			o := obj(v)
			if o["type"] == "direct" && len(o) == 2 {
				emptyDirect[str(o["tag"])] = true
			}
		}
		for _, v := range arr(dns["servers"]) {
			o := obj(v)
			if emptyDirect[str(o["detour"])] {
				delete(o, "detour")
			}
		}
	}

	b, err := json.Marshal(root)
	return string(b), err
}

// Generated configurations use the upstream decoder directly. Legacy custom
// profiles retain conversion as a fallback, without copying large native configs.
func decodeClientConfig(ctx context.Context, config string) (option.Options, error) {
	var options option.Options
	if err := options.UnmarshalJSONContext(ctx, []byte(config)); err == nil && !hasLegacyDNSStrategy(options.DNS) && !hasLegacyTunOptions(options.Inbounds) {
		return options, nil
	}

	modern, err := upgradeClientConfig(config)
	if err != nil {
		return option.Options{}, err
	}
	options = option.Options{}
	err = options.UnmarshalJSONContext(ctx, []byte(modern))
	return options, err
}

func hasLegacyDNSStrategy(dns *option.DNSOptions) bool {
	if dns == nil {
		return false
	}
	for _, r := range dns.Rules {
		if r.DefaultOptions.RouteOptions.Strategy != 0 || r.LogicalOptions.RouteOptions.Strategy != 0 {
			return true
		}
	}
	return false
}

func hasLegacyTunOptions(inbounds []option.Inbound) bool {
	for _, in := range inbounds {
		o, ok := in.Options.(*option.TunInboundOptions)
		if !ok {
			continue
		}
		if o.InboundOptions != (option.InboundOptions{}) || o.GSO || o.EndpointIndependentNat || len(o.Inet4Address)+len(o.Inet6Address)+len(o.Inet4RouteAddress)+len(o.Inet6RouteAddress)+len(o.Inet4RouteExcludeAddress)+len(o.Inet6RouteExcludeAddress) > 0 {
			return true
		}
	}
	return false
}
