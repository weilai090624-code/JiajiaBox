package clashapi

import (
	"context"
	"crypto/ecdsa"
	"crypto/elliptic"
	"crypto/rand"
	"crypto/tls"
	"crypto/x509"
	"crypto/x509/pkix"
	"encoding/json"
	"errors"
	"github.com/sagernet/sing-box/adapter"
	C "github.com/sagernet/sing-box/constant"
	M "github.com/sagernet/sing/common/metadata"
	"github.com/sagernet/sing/service"
	"io"
	"math/big"
	"net"
	"net/http"
	"net/http/httptest"
	"sort"
	"strings"
	"sync"
	"sync/atomic"
	"testing"
	"time"
)

type globeTestRoots struct {
	adapter.CertificateStore
	pool *x509.CertPool
}

func (s globeTestRoots) Pool() *x509.CertPool { return s.pool }

type globeTestOutbound struct {
	adapter.Outbound
	name, kind, address string
	calls               atomic.Int32
}

func (o *globeTestOutbound) Type() string { return o.kind }
func (o *globeTestOutbound) Tag() string  { return o.name }
func (o *globeTestOutbound) DialContext(ctx context.Context, network string, address M.Socksaddr) (net.Conn, error) {
	o.calls.Add(1)
	return (&net.Dialer{}).DialContext(ctx, network, o.address)
}

type globeTestManager struct {
	adapter.OutboundManager
	values map[string]adapter.Outbound
}

func (m *globeTestManager) Outbound(tag string) (adapter.Outbound, bool) {
	v, ok := m.values[tag]
	return v, ok
}
func (m *globeTestManager) Outbounds() []adapter.Outbound {
	var out []adapter.Outbound
	for _, v := range m.values {
		out = append(out, v)
	}
	return out
}

type globeTestEndpoints struct{ adapter.EndpointManager }

func (globeTestEndpoints) Get(string) (adapter.Endpoint, bool) { return nil, false }

func globeTestTLS(t *testing.T, pool *x509.CertPool, handler http.HandlerFunc) *httptest.Server {
	t.Helper()
	key, err := ecdsa.GenerateKey(elliptic.P256(), rand.Reader)
	if err != nil {
		t.Fatal(err)
	}
	template := &x509.Certificate{SerialNumber: big.NewInt(time.Now().UnixNano()), Subject: pkix.Name{CommonName: "globe test"}, DNSNames: []string{"api.ip.sb", "api-ipv4.ip.sb"}, NotBefore: time.Now().Add(-time.Hour), NotAfter: time.Now().Add(time.Hour), KeyUsage: x509.KeyUsageDigitalSignature, ExtKeyUsage: []x509.ExtKeyUsage{x509.ExtKeyUsageServerAuth}}
	der, err := x509.CreateCertificate(rand.Reader, template, template, &key.PublicKey, key)
	if err != nil {
		t.Fatal(err)
	}
	cert, err := x509.ParseCertificate(der)
	if err != nil {
		t.Fatal(err)
	}
	pool.AddCert(cert)
	server := httptest.NewUnstartedServer(handler)
	server.TLS = &tls.Config{Certificates: []tls.Certificate{{Certificate: [][]byte{der}, PrivateKey: key}}}
	server.StartTLS()
	t.Cleanup(server.Close)
	return server
}
func globeTestGeoServer(t *testing.T, pool *x509.CertPool, own, code string) *httptest.Server {
	return globeTestTLS(t, pool, func(w http.ResponseWriter, r *http.Request) {
		if r.Host != "api.ip.sb" || r.Header.Get("User-Agent") != "JiajiaBox/0.0.4 GlobeGeoIP" {
			t.Errorf("wrong API or user agent: %s %s", r.Host, r.UserAgent())
		}
		ip, country := own, code
		if r.URL.Path != "/geoip" {
			ip = strings.TrimPrefix(r.URL.Path, "/geoip/")
			country = map[string]string{"1.36.1.1": "HK", "1.160.0.1": "TW"}[ip]
			if country == "" {
				t.Errorf("unexpected target %q", ip)
			}
		}
		json.NewEncoder(w).Encode(map[string]any{"ip": ip, "country_code": country, "latitude": 35.68, "longitude": 139.69})
	})
}
func globeWait(t *testing.T, condition func() bool) {
	t.Helper()
	deadline := time.Now().Add(3 * time.Second)
	for !condition() {
		if time.Now().After(deadline) {
			t.Fatal("globe async operation timed out")
		}
		time.Sleep(5 * time.Millisecond)
	}
}
func TestGlobePublicIPs(t *testing.T) {
	for _, ip := range []string{"127.0.0.1", "10.0.0.1", "100.64.0.1", "198.18.0.1", "203.0.113.1", "::1", "2001:db8::1", "invalid", "node.example", "8.8.8.8/../"} {
		if publicGlobeIP(ip) != "" {
			t.Errorf("accepted nonpublic %s", ip)
		}
	}
	for _, ip := range []string{"8.8.8.8", "2606:4700:4700::1111"} {
		if publicGlobeIP(ip) != ip {
			t.Errorf("rejected %s", ip)
		}
	}
}
func TestGlobeLocationValidation(t *testing.T) {
	valid := []byte(`{"ip":"1.36.1.1","country_code":"hk","latitude":22.3829,"longitude":114.1779}`)
	v, err := parseGlobeLocation(valid, "1.36.1.1")
	if err != nil || v.IP != "1.36.1.1" || v.CountryCode != "HK" || v.Source != "ip.sb" || v.CheckedAt == 0 || v.Latitude == nil || *v.Latitude != 22.3829 {
		t.Fatal(v, err)
	}
	if _, err := parseGlobeLocation(valid, "1.160.0.1"); err == nil {
		t.Fatal("accepted location for the wrong target")
	}
	for _, body := range []string{`{}`, `{"ip":"10.0.0.1","country_code":"CN"}`, `{"ip":"8.8.8.8","country_code":"USA"}`, `{"ip":"8.8.8.8","country_code":"a1"}`, `<html>blocked</html>`} {
		if _, err := parseGlobeLocation([]byte(body), ""); err == nil {
			t.Errorf("accepted bad response %s", body)
		}
	}
	v, err = parseGlobeLocation([]byte(`{"ip":"8.8.8.8","country_code":"US","latitude":91,"longitude":181}`), "")
	if err != nil || v.CountryCode != "US" || v.Latitude != nil || v.Longitude != nil {
		t.Fatal("bad coordinates must not destroy a valid country", v, err)
	}
	v, err = parseGlobeLocation([]byte(`{"ip":"2606:4700:4700:0::1111","country_code":"AU"}`), "2606:4700:4700::1111")
	if err != nil || v.IP != "2606:4700:4700::1111" {
		t.Fatal("IPv6 canonical comparison", v, err)
	}
}
func TestGlobeOnlineEgressAndTargets(t *testing.T) {
	pool := x509.NewCertPool()
	local := globeTestGeoServer(t, pool, "223.5.5.5", "CN")
	// Deliberately different from the offline country of this IP.
	remote := globeTestGeoServer(t, pool, "8.8.8.8", "JP")
	direct := &globeTestOutbound{name: "direct", kind: C.TypeDirect, address: local.Listener.Addr().String()}
	proxy := &globeTestOutbound{name: "node-a", kind: "socks", address: remote.Listener.Addr().String()}
	ctx := service.ContextWith[adapter.CertificateStore](context.Background(), globeTestRoots{pool: pool})
	cache := newGlobeCache()
	cache.interval = 0
	s := &Server{ctx: ctx, outbound: &globeTestManager{values: map[string]adapter.Outbound{"direct": direct, "node-a": proxy}}, endpoint: globeTestEndpoints{}, globe: cache}
	handler := authentication("test-secret")(globeEgress(s))
	type snapshot struct {
		Provider string             `json:"provider"`
		Self     globeIP            `json:"self"`
		Exits    map[string]globeIP `json:"exits"`
		Targets  map[string]globeIP `json:"targets"`
	}
	request := func(auth string) snapshot {
		req := httptest.NewRequest("GET", "/globe-egress?tag=node-a&network=wifi&ip=1.36.1.1&ip=1.160.0.1&ip=1.36.1.1&ip=198.18.0.1", nil)
		req.Header.Set("Authorization", auth)
		w := httptest.NewRecorder()
		handler.ServeHTTP(w, req)
		if auth != "Bearer test-secret" {
			if w.Code != 401 {
				t.Fatal(w.Code)
			}
			return snapshot{}
		}
		if w.Code != 200 {
			t.Fatal(w.Code, w.Body.String())
		}
		var out snapshot
		if err := json.Unmarshal(w.Body.Bytes(), &out); err != nil {
			t.Fatal(err)
		}
		return out
	}
	request("wrong")
	if direct.calls.Load() != 0 || proxy.calls.Load() != 0 {
		t.Fatal("unauthenticated query")
	}
	globeWait(t, func() bool {
		v := request("Bearer test-secret")
		if v.Self.Pending || v.Exits["node-a"].Pending || len(v.Targets) != 2 {
			return false
		}
		for _, target := range v.Targets {
			if target.Pending {
				return false
			}
		}
		if v.Provider != "ip.sb" || v.Self.CountryCode != "CN" || v.Exits["node-a"].IP != "8.8.8.8" || v.Exits["node-a"].CountryCode != "JP" || v.Targets["1.36.1.1"].CountryCode != "HK" || v.Targets["1.160.0.1"].CountryCode != "TW" {
			t.Fatalf("wrong online attribution: %+v", v)
		}
		return true
	})
	for range 5 {
		request("Bearer test-secret")
	}
	if direct.calls.Load() != 1 || proxy.calls.Load() != 3 {
		t.Fatal("queries not isolated/deduplicated", direct.calls.Load(), proxy.calls.Load())
	}
	cache.mu.Lock()
	defer cache.mu.Unlock()
	if d := time.Until(cache.values["wifi\x00self"].expires); d < 25*time.Second || d > 30*time.Second {
		t.Fatal("self TTL", d)
	}
	if d := time.Until(cache.values["wifi\x00target\x001.36.1.1"].expires); d < 55*time.Second || d > time.Minute {
		t.Fatal("target TTL", d)
	}
}
func TestGlobeCacheRefreshAndFailures(t *testing.T) {
	cache := newGlobeCache()
	cache.interval = 0
	done := make(chan struct{})
	var calls atomic.Int32
	probe := func(context.Context) (globeIP, error) {
		calls.Add(1)
		<-done
		return globeIP{IP: "8.8.8.8", CountryCode: "JP", Source: "ip.sb"}, nil
	}
	for range 20 {
		if !cache.lookup(context.Background(), "wifi/node", 30*time.Second, probe).Pending {
			t.Fatal("expected pending")
		}
	}
	globeWait(t, func() bool { return calls.Load() == 1 })
	close(done)
	globeWait(t, func() bool { return !cache.lookup(context.Background(), "wifi/node", 30*time.Second, probe).Pending })
	cache.mu.Lock()
	value := cache.values["wifi/node"]
	value.expires = time.Now().Add(-time.Second)
	cache.values["wifi/node"] = value
	cache.mu.Unlock()
	if !cache.lookup(context.Background(), "wifi/node", 30*time.Second, func(context.Context) (globeIP, error) { return globeIP{}, errors.New("down") }).Pending {
		t.Fatal("expired lookup must refresh")
	}
	globeWait(t, func() bool { return !cache.lookup(context.Background(), "wifi/node", 30*time.Second, probe).Pending })
	v := cache.lookup(context.Background(), "wifi/node", 30*time.Second, probe)
	if v.IP != "" || v.CountryCode != "" || v.Error != "unavailable" {
		t.Fatal("failed query kept an old/made up location", v)
	}
	if calls.Load() != 1 {
		t.Fatal("failure bypassed backoff")
	}
}
func TestGlobeQueryRateAndTLS(t *testing.T) {
	cache := newGlobeCache()
	cache.interval = 20 * time.Millisecond
	var mu sync.Mutex
	var times []time.Time
	var group sync.WaitGroup
	for range 3 {
		group.Add(1)
		go func() {
			defer group.Done()
			if err := cache.waitTurn(context.Background()); err != nil {
				t.Error(err)
			}
			mu.Lock()
			times = append(times, time.Now())
			mu.Unlock()
		}()
	}
	group.Wait()
	sort.Slice(times, func(i, j int) bool { return times[i].Before(times[j]) })
	for i := 1; i < len(times); i++ {
		if times[i].Sub(times[i-1]) < 15*time.Millisecond {
			t.Fatal("concurrent requests bunched up", times)
		}
	}
	if globeRetryAfter("1") != time.Minute || globeRetryAfter("120") != 2*time.Minute || globeRetryAfter("invalid") != time.Minute {
		t.Fatal("incorrect retry-after")
	}
	pool := x509.NewCertPool()
	server := globeTestTLS(t, pool, func(w http.ResponseWriter, r *http.Request) { w.Header().Set("Retry-After", "120"); w.WriteHeader(429) })
	proxy := &globeTestOutbound{kind: "socks", address: server.Listener.Addr().String()}
	ctx := service.ContextWith[adapter.CertificateStore](context.Background(), globeTestRoots{pool: pool})
	_, err := probeGlobeLocation(ctx, proxy, "")
	var limited *globeRateLimit
	if !errors.As(err, &limited) || limited.retry != 2*time.Minute {
		t.Fatal("429 not respected", err)
	}
	badCtx := service.ContextWith[adapter.CertificateStore](context.Background(), globeTestRoots{pool: x509.NewCertPool()})
	if _, err := probeGlobeLocation(badCtx, proxy, ""); err == nil {
		t.Fatal("untrusted TLS accepted")
	}
	cache = newGlobeCache()
	cache.interval = 0
	cache.lookup(context.Background(), "limited", time.Minute, func(context.Context) (globeIP, error) { return globeIP{}, &globeRateLimit{retry: time.Minute} })
	globeWait(t, func() bool {
		cache.mu.Lock()
		defer cache.mu.Unlock()
		return cache.values["limited"].Error == "rate_limited"
	})
	ctx, cancel := context.WithTimeout(context.Background(), 20*time.Millisecond)
	defer cancel()
	if err := cache.waitTurn(ctx); !errors.Is(err, context.DeadlineExceeded) {
		t.Fatal("global cooldown was ignored", err)
	}
}
func TestGlobeConcurrencyAndTargetPriority(t *testing.T) {
	cache := newGlobeCache()
	cache.interval = 0
	done := make(chan struct{})
	var running, max atomic.Int32
	probe := func(context.Context) (globeIP, error) {
		n := running.Add(1)
		for {
			old := max.Load()
			if n <= old || max.CompareAndSwap(old, n) {
				break
			}
		}
		<-done
		running.Add(-1)
		return globeIP{}, errors.New("test")
	}
	for _, key := range []string{"a", "b", "c", "d", "e"} {
		cache.lookup(context.Background(), key, time.Minute, probe)
	}
	globeWait(t, func() bool { return running.Load() == 3 })
	close(done)
	if max.Load() != 3 {
		t.Fatal("concurrency limit", max.Load())
	}
	cache.mu.Lock()
	cache.values["wifi\x00target\x008.8.8.8"] = globeIP{expires: time.Now().Add(time.Minute)}
	cache.mu.Unlock()
	ips := []string{"8.8.8.8", "1.36.1.1"}
	cache.orderTargets("wifi", ips)
	if ips[0] != "1.36.1.1" {
		t.Fatal("fresh cache entry blocked a new target")
	}
}

type globeFailDialer struct {
	adapter.Outbound
	calls atomic.Int32
}

func (d *globeFailDialer) DialContext(context.Context, string, M.Socksaddr) (net.Conn, error) {
	d.calls.Add(1)
	return nil, io.EOF
}

func TestGlobeIPv4NetworkFallback(t *testing.T) {
	pool := x509.NewCertPool()
	server := globeTestTLS(t, pool, func(w http.ResponseWriter, r *http.Request) {
		if r.Host != "api-ipv4.ip.sb" || r.URL.Path != "/geoip/1.36.1.1" {
			t.Errorf("wrong documented fallback endpoint: %s %s", r.Host, r.URL.Path)
		}
		json.NewEncoder(w).Encode(map[string]string{"ip": "1.36.1.1", "country_code": "HK"})
	})
	primary := &globeFailDialer{}
	fallback := &globeTestOutbound{address: server.Listener.Addr().String()}
	ctx := service.ContextWith[adapter.CertificateStore](context.Background(), globeTestRoots{pool: pool})
	turns := 0
	result, err := probeGlobeLocationFallback(ctx, primary, fallback, "1.36.1.1", func(context.Context) error { turns++; return nil })
	if err != nil || result.CountryCode != "HK" || primary.calls.Load() != 1 || fallback.calls.Load() != 1 || turns != 1 {
		t.Fatal("IPv4/network fallback", result, err, turns)
	}
}
func TestGlobeDenialVisibleWithoutBypass(t *testing.T) {
	pool := x509.NewCertPool()
	server := globeTestTLS(t, pool, func(w http.ResponseWriter, r *http.Request) { w.WriteHeader(403) })
	primary := &globeTestOutbound{address: server.Listener.Addr().String()}
	fallback := &globeFailDialer{}
	ctx := service.ContextWith[adapter.CertificateStore](context.Background(), globeTestRoots{pool: pool})
	_, err := probeGlobeLocationFallback(ctx, primary, fallback, "", nil)
	if globeErrorCode(err) != "http_403" || fallback.calls.Load() != 0 {
		t.Fatal("API denial must remain visible", err)
	}
	if globeErrorCode(&net.DNSError{Err: "no answer", Name: "api.ip.sb"}) != "dns" || globeErrorCode(context.DeadlineExceeded) != "timeout" || globeErrorCode(io.EOF) != "connection_closed" {
		t.Fatal("specific network error codes")
	}
}
func TestGlobeRetainsMarkedLastResultAndRetry(t *testing.T) {
	cache := newGlobeCache()
	cache.interval = 0
	checked := time.Now().UnixMilli()
	cache.values["wifi\x00exit\x00node"] = globeIP{IP: "1.36.1.1", CountryCode: "HK", Source: "ip.sb", CheckedAt: checked, expires: time.Now().Add(-time.Second)}
	failure := func(context.Context) (globeIP, error) { return globeIP{}, &globeResponseError{code: "http_503"} }
	cache.lookup(context.Background(), "wifi\x00exit\x00node", time.Minute, failure)
	globeWait(t, func() bool {
		cache.mu.Lock()
		defer cache.mu.Unlock()
		return !cache.values["wifi\x00exit\x00node"].Pending
	})
	cache.mu.Lock()
	value := cache.values["wifi\x00exit\x00node"]
	cache.mu.Unlock()
	if value.IP != "1.36.1.1" || !value.Stale || value.Error != "http_503" || value.CheckedAt != checked {
		t.Fatal("last online result should be retained and marked", value)
	}
	cache.retry("wifi")
	cache.mu.Lock()
	value = cache.values["wifi\x00exit\x00node"]
	value.CheckedAt = time.Now().Add(-6 * time.Minute).UnixMilli()
	cache.values["wifi\x00exit\x00node"] = value
	cache.mu.Unlock()
	cache.lookup(context.Background(), "wifi\x00exit\x00node", time.Minute, failure)
	globeWait(t, func() bool {
		cache.mu.Lock()
		defer cache.mu.Unlock()
		return !cache.values["wifi\x00exit\x00node"].Pending
	})
	cache.mu.Lock()
	value = cache.values["wifi\x00exit\x00node"]
	cache.mu.Unlock()
	if value.IP != "" || value.Stale || value.Error != "http_503" {
		t.Fatal("stale location exceeded retention bound", value)
	}
}
