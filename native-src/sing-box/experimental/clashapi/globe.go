// Copyright (c) 2026 weilai090624-code
// JiajiaBox modification, distributed under the surrounding sing-box license.
package clashapi

import (
	"context"
	"crypto/tls"
	"encoding/json"
	"errors"
	"io"
	"math"
	"net"
	"net/http"
	"net/netip"
	"sort"
	"strconv"
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
	IP          string   `json:"ip"`
	CountryCode string   `json:"country_code,omitempty"`
	Latitude    *float64 `json:"latitude,omitempty"`
	Longitude   *float64 `json:"longitude,omitempty"`
	Source      string   `json:"source,omitempty"`
	CheckedAt   int64    `json:"checked_at,omitempty"`
	Pending     bool     `json:"pending"`
	Error       string   `json:"error,omitempty"`
	expires     time.Time
}
type globeCache struct {
	mu           sync.Mutex
	values       map[string]globeIP
	slots        chan struct{}
	interval     time.Duration
	nextRequest  time.Time
	blockedUntil time.Time
}

func newGlobeCache() *globeCache {
	return &globeCache{values: make(map[string]globeIP), slots: make(chan struct{}, 3), interval: time.Second}
}

// Runs only when the visible globe asks for data, never switches a selector,
// never uses the node's configured server IP as a substitute for its public exit.
func (c *globeCache) lookup(ctx context.Context, key string, ttl time.Duration, probe func(context.Context) (globeIP, error)) globeIP {
	c.mu.Lock()
	defer c.mu.Unlock()
	if v, ok := c.values[key]; ok && (v.Pending || time.Now().Before(v.expires)) {
		return v
	}
	select {
	case c.slots <- struct{}{}:
	default:
		v := c.values[key]
		v.Pending = true
		return v
	}
	v := c.values[key]
	v.Pending = true
	c.values[key] = v
	go func() {
		defer func() { <-c.slots }()
		probeCtx, cancel := context.WithTimeout(ctx, 10*time.Second)
		defer cancel()
		var result globeIP
		err := c.waitTurn(probeCtx)
		if err == nil {
			result, err = probe(probeCtx)
		}
		c.mu.Lock()
		defer c.mu.Unlock()
		if err != nil {
			result = globeIP{Error: "unavailable"}
			ttl = 15 * time.Second
			var limited *globeRateLimit
			if errors.As(err, &limited) {
				result.Error = "rate_limited"
				ttl = limited.retry
				c.blockedUntil = time.Now().Add(ttl)
			}
		}
		result.expires = time.Now().Add(ttl)
		c.values[key] = result
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

// At most 60 requests/minute for this core (IP.SB documents 100/minute/IP).
// Check again after waiting so parallel jobs cannot bunch up or ignore a 429.
func (c *globeCache) waitTurn(ctx context.Context) error {
	for {
		c.mu.Lock()
		now, next := time.Now(), c.nextRequest
		if c.blockedUntil.After(next) {
			next = c.blockedUntil
		}
		if !now.Before(next) {
			c.nextRequest = now.Add(c.interval)
			c.mu.Unlock()
			return ctx.Err()
		}
		c.mu.Unlock()
		timer := time.NewTimer(time.Until(next))
		select {
		case <-ctx.Done():
			timer.Stop()
			return ctx.Err()
		case <-timer.C:
		}
	}
}

type globeRateLimit struct{ retry time.Duration }

func (*globeRateLimit) Error() string { return "ip.sb rate limit" }

func globeRetryAfter(value string) time.Duration {
	retry := time.Minute
	if seconds, err := strconv.Atoi(value); err == nil && seconds > 0 {
		retry = time.Duration(seconds) * time.Second
	} else if date, err := http.ParseTime(value); err == nil {
		retry = time.Until(date)
	}
	if retry < time.Minute {
		retry = time.Minute
	}
	if retry > time.Hour {
		retry = time.Hour
	}
	return retry
}

// New/expired target IPs go ahead of fresh entries. This prevents a long list
// of active connections from repeatedly refreshing its first few addresses.
func (c *globeCache) orderTargets(network string, ips []string) {
	c.mu.Lock()
	defer c.mu.Unlock()
	sort.SliceStable(ips, func(i, j int) bool {
		a, b := c.values[network+"\x00target\x00"+publicGlobeIP(ips[i])], c.values[network+"\x00target\x00"+publicGlobeIP(ips[j])]
		return a.expires.Before(b.expires)
	})
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

func parseGlobeLocation(body []byte, target string) (globeIP, error) {
	var value globeIP
	if err := json.Unmarshal(body, &value); err != nil {
		return globeIP{}, err
	}
	value.IP = publicGlobeIP(value.IP)
	value.CountryCode = strings.ToUpper(value.CountryCode)
	if value.IP == "" || (target != "" && value.IP != publicGlobeIP(target)) || len(value.CountryCode) != 2 ||
		value.CountryCode[0] < 'A' || value.CountryCode[0] > 'Z' || value.CountryCode[1] < 'A' || value.CountryCode[1] > 'Z' {
		return globeIP{}, errors.New("invalid ip.sb location")
	}
	if value.Latitude == nil || value.Longitude == nil || math.IsNaN(*value.Latitude) || math.IsNaN(*value.Longitude) ||
		math.IsInf(*value.Latitude, 0) || math.IsInf(*value.Longitude, 0) || math.Abs(*value.Latitude) > 90 || math.Abs(*value.Longitude) > 180 {
		value.Latitude, value.Longitude = nil, nil
	}
	value.Source, value.Pending, value.Error = "ip.sb", false, ""
	value.CheckedAt = time.Now().UnixMilli()
	return value, nil
}

func probeGlobeLocation(ctx context.Context, detour N.Dialer, target string) (globeIP, error) {
	// Fixed verified HTTPS API. Only the IP being located is submitted; never
	// domains, connection details, node credentials, or GPS coordinates.
	transport := &http.Transport{Proxy: nil, DisableKeepAlives: true, TLSClientConfig: &tls.Config{RootCAs: adapter.RootPoolFromContext(ctx), Time: ntp.TimeFuncFromContext(ctx)}, DialContext: func(ctx context.Context, network, address string) (net.Conn, error) {
		return detour.DialContext(ctx, network, M.ParseSocksaddr(address))
	}}
	defer transport.CloseIdleConnections()
	client := &http.Client{Transport: transport, Timeout: 4 * time.Second, CheckRedirect: func(*http.Request, []*http.Request) error { return http.ErrUseLastResponse }}
	url := "https://api.ip.sb/geoip"
	if target != "" {
		target = publicGlobeIP(target)
		if target == "" {
			return globeIP{}, errors.New("invalid target IP")
		}
		url += "/" + target
	}
	req, err := http.NewRequestWithContext(ctx, http.MethodGet, url, nil)
	if err != nil {
		return globeIP{}, err
	}
	req.Header.Set("User-Agent", "JiajiaBox/0.0.4 GlobeGeoIP")
	req.Header.Set("Accept", "application/json")
	resp, err := client.Do(req)
	if err != nil {
		return globeIP{}, err
	}
	defer resp.Body.Close()
	if resp.StatusCode == http.StatusTooManyRequests {
		return globeIP{}, &globeRateLimit{retry: globeRetryAfter(resp.Header.Get("Retry-After"))}
	}
	if resp.StatusCode != http.StatusOK {
		return globeIP{}, errors.New("ip.sb unavailable")
	}
	body, err := io.ReadAll(io.LimitReader(resp.Body, 16385))
	if err != nil || len(body) > 16384 {
		return globeIP{}, errors.New("invalid ip.sb response")
	}
	return parseGlobeLocation(body, target)
}

func globeEgress(s *Server) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {
		tags := r.URL.Query()["tag"]
		ips := r.URL.Query()["ip"]
		network := r.URL.Query().Get("network")
		if len(tags) > 128 || len(ips) > 256 || len(network) > 128 {
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
			self = s.globe.lookup(s.ctx, network+"\x00self", 30*time.Second, func(ctx context.Context) (globeIP, error) { return probeGlobeLocation(ctx, direct, "") })
		}
		exits := make(map[string]globeIP)
		var targetDialer N.Dialer = direct
		proxySelected := false
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
			if !proxySelected {
				targetDialer = o
				proxySelected = true
			}
			exits[tag] = s.globe.lookup(s.ctx, network+"\x00exit\x00"+tag, 30*time.Second, func(ctx context.Context) (globeIP, error) { return probeGlobeLocation(ctx, o, "") })
		}
		targets := make(map[string]globeIP)
		s.globe.orderTargets(network, ips)
		for _, raw := range ips {
			ip := publicGlobeIP(raw)
			if ip == "" || targetDialer == nil {
				continue
			}
			targets[raw] = s.globe.lookup(s.ctx, network+"\x00target\x00"+ip, time.Minute, func(ctx context.Context) (globeIP, error) { return probeGlobeLocation(ctx, targetDialer, ip) })
		}
		w.Header().Set("Content-Type", "application/json")
		w.Header().Set("Cache-Control", "no-store")
		json.NewEncoder(w).Encode(map[string]any{"provider": "ip.sb", "self": self, "exits": exits, "targets": targets})
	}
}
