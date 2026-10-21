// Copyright (c) 2026 weilai090624-code
// JiajiaBox modification, distributed under the surrounding sing-box license.
package clashapi

import (
	"context"
	"crypto/tls"
	"encoding/json"
	"errors"
	"io"
	"net"
	"net/http"
	"net/netip"
	"strings"
	"sync"
	"time"

	"github.com/sagernet/sing-box/adapter"
	C "github.com/sagernet/sing-box/constant"
	M "github.com/sagernet/sing/common/metadata"
	N "github.com/sagernet/sing/common/network"
	"github.com/sagernet/sing/common/ntp"
)

type globeIP struct {
	IP      string `json:"ip"`
	Pending bool   `json:"pending"`
	expires time.Time
}
type globeCache struct {
	mu     sync.Mutex
	values map[string]globeIP
	slots  chan struct{}
}

func newGlobeCache() *globeCache {
	return &globeCache{values: make(map[string]globeIP), slots: make(chan struct{}, 3)}
}

// Runs only when the visible globe asks for data, never switches a selector,
// never uses the node's configured server IP as a substitute for its public exit.
func (c *globeCache) lookup(ctx context.Context, key string, probe func(context.Context) (string, error)) globeIP {
	c.mu.Lock()
	defer c.mu.Unlock()
	if v, ok := c.values[key]; ok && (v.Pending || time.Now().Before(v.expires)) {
		return v
	}
	select {
	case c.slots <- struct{}{}:
	default:
		return globeIP{Pending: true}
	}
	v := globeIP{Pending: true}
	c.values[key] = v
	go func() {
		defer func() { <-c.slots }()
		probeCtx, cancel := context.WithTimeout(ctx, 7*time.Second)
		defer cancel()
		ip, err := probe(probeCtx)
		ttl := 3 * time.Minute
		if err != nil {
			ip = ""
			ttl = 45 * time.Second
		}
		c.mu.Lock()
		defer c.mu.Unlock()
		c.values[key] = globeIP{IP: ip, expires: time.Now().Add(ttl)}
		// Physical network IDs may change repeatedly; bound retained records.
		if len(c.values) > 512 {
			for k, v := range c.values {
				if !v.Pending && time.Now().After(v.expires) {
					delete(c.values, k)
				}
			}
		}
	}()
	return v
}

func publicGlobeIP(raw string) string {
	a, err := netip.ParseAddr(strings.TrimSpace(raw))
	if err != nil {
		return ""
	}
	a = a.Unmap()
	if !a.IsGlobalUnicast() || a.IsPrivate() || a.IsLoopback() || a.IsLinkLocalUnicast() {
		return ""
	}
	for _, s := range []string{"100.64.0.0/10", "198.18.0.0/15", "192.0.0.0/24", "192.0.2.0/24", "198.51.100.0/24", "203.0.113.0/24", "2001:db8::/32"} {
		if netip.MustParsePrefix(s).Contains(a) {
			return ""
		}
	}
	return a.String()
}

func parseGlobeIP(body []byte) string {
	var obj struct {
		IP string `json:"ip"`
	}
	if json.Unmarshal(body, &obj) == nil {
		if ip := publicGlobeIP(obj.IP); ip != "" {
			return ip
		}
	}
	for _, line := range strings.Split(string(body), "\n") {
		if strings.HasPrefix(line, "ip=") {
			return publicGlobeIP(strings.TrimPrefix(line, "ip="))
		}
	}
	return publicGlobeIP(string(body))
}

func probeGlobeIP(ctx context.Context, detour N.Dialer) (string, error) {
	// Fixed HTTPS services only. No destination hosts, connection details, or
	// node credentials are submitted to these services. TLS stays verified.
	transport := &http.Transport{Proxy: nil, DisableKeepAlives: true, TLSClientConfig: &tls.Config{RootCAs: adapter.RootPoolFromContext(ctx), Time: ntp.TimeFuncFromContext(ctx)}, DialContext: func(ctx context.Context, network, address string) (net.Conn, error) {
		return detour.DialContext(ctx, network, M.ParseSocksaddr(address))
	}}
	defer transport.CloseIdleConnections()
	client := &http.Client{Transport: transport, Timeout: 3 * time.Second, CheckRedirect: func(*http.Request, []*http.Request) error { return http.ErrUseLastResponse }}
	for _, url := range []string{"https://api.ipify.org?format=json", "https://www.cloudflare.com/cdn-cgi/trace"} {
		req, err := http.NewRequestWithContext(ctx, http.MethodGet, url, nil)
		if err != nil {
			continue
		}
		resp, err := client.Do(req)
		if err != nil {
			continue
		}
		body, readErr := io.ReadAll(io.LimitReader(resp.Body, 8193))
		resp.Body.Close()
		if resp.StatusCode == http.StatusOK && readErr == nil && len(body) <= 8192 {
			if ip := parseGlobeIP(body); ip != "" {
				return ip, nil
			}
		}
	}
	return "", errors.New("public exit unavailable")
}

func globeEgress(s *Server) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {
		tags := r.URL.Query()["tag"]
		network := r.URL.Query().Get("network")
		if len(tags) > 128 || len(network) > 128 {
			http.Error(w, "too many exits", http.StatusBadRequest)
			return
		}
		var direct adapter.Outbound
		for _, o := range s.outbound.Outbounds() {
			if o.Type() == C.TypeDirect {
				direct = o
				if o.Tag() == "direct" {
					break
				}
			}
		}
		self := globeIP{}
		if direct != nil {
			self = s.globe.lookup(s.ctx, network+"\x00self", func(ctx context.Context) (string, error) { return probeGlobeIP(ctx, direct) })
		}
		exits := make(map[string]globeIP)
		for _, tag := range tags {
			o, ok := s.outbound.Outbound(tag)
			if !ok {
				if e, found := s.endpoint.Get(tag); found {
					o = e
					ok = true
				}
			}
			if !ok || o.Type() == C.TypeBlock || o.Type() == C.TypeDNS {
				continue
			}
			if _, group := o.(adapter.OutboundGroup); group {
				continue
			}
			if o.Type() == C.TypeDirect {
				exits[tag] = self
				continue
			}
			exits[tag] = s.globe.lookup(s.ctx, network+"\x00exit\x00"+tag, func(ctx context.Context) (string, error) { return probeGlobeIP(ctx, o) })
		}
		w.Header().Set("Content-Type", "application/json")
		w.Header().Set("Cache-Control", "no-store")
		json.NewEncoder(w).Encode(map[string]any{"self": self, "exits": exits})
	}
}
