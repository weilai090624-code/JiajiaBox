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
	"math/big"
	"net"
	"net/http"
	"net/http/httptest"
	"sync/atomic"
	"testing"
	"time"

	"github.com/sagernet/sing-box/adapter"
	C "github.com/sagernet/sing-box/constant"
	M "github.com/sagernet/sing/common/metadata"
	"github.com/sagernet/sing/service"
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

func (m globeTestManager) Outbound(tag string) (adapter.Outbound, bool) {
	v, ok := m.values[tag]
	return v, ok
}
func (m globeTestManager) Outbounds() []adapter.Outbound {
	var out []adapter.Outbound
	for _, v := range m.values {
		out = append(out, v)
	}
	return out
}

type globeTestEndpoints struct{ adapter.EndpointManager }

func (globeTestEndpoints) Get(string) (adapter.Endpoint, bool) { return nil, false }

func globeTestTLS(t *testing.T, ip string, pool *x509.CertPool) *httptest.Server {
	t.Helper()
	key, err := ecdsa.GenerateKey(elliptic.P256(), rand.Reader)
	if err != nil {
		t.Fatal(err)
	}
	template := &x509.Certificate{SerialNumber: big.NewInt(time.Now().UnixNano()), Subject: pkix.Name{CommonName: "globe test"}, DNSNames: []string{"api.ipify.org", "www.cloudflare.com"}, NotBefore: time.Now().Add(-time.Hour), NotAfter: time.Now().Add(time.Hour), KeyUsage: x509.KeyUsageDigitalSignature, ExtKeyUsage: []x509.ExtKeyUsage{x509.ExtKeyUsageServerAuth}, BasicConstraintsValid: true}
	der, err := x509.CreateCertificate(rand.Reader, template, template, &key.PublicKey, key)
	if err != nil {
		t.Fatal(err)
	}
	cert, err := x509.ParseCertificate(der)
	if err != nil {
		t.Fatal(err)
	}
	pool.AddCert(cert)
	server := httptest.NewUnstartedServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		if r.Host != "api.ipify.org" {
			t.Errorf("unexpected service %q", r.Host)
		}
		json.NewEncoder(w).Encode(map[string]string{"ip": ip})
	}))
	server.TLS = &tls.Config{Certificates: []tls.Certificate{{Certificate: [][]byte{der}, PrivateKey: key}}}
	server.StartTLS()
	t.Cleanup(server.Close)
	return server
}
func TestGlobePublicIPs(t *testing.T) {
	for _, raw := range []string{"127.0.0.1", "10.0.0.1", "100.64.0.1", "198.18.0.1", "203.0.113.1", "::1", "2001:db8::1", "invalid", "node.example"} {
		if publicGlobeIP(raw) != "" {
			t.Errorf("accepted nonpublic %s", raw)
		}
	}
	for _, raw := range []string{"8.8.8.8", "2606:4700:4700::1111"} {
		if publicGlobeIP(raw) != raw {
			t.Errorf("rejected %s", raw)
		}
	}
	for _, raw := range []string{`{"ip":"8.8.8.8"}`, "fl=123\nip=8.8.8.8\nts=42", "8.8.8.8"} {
		if parseGlobeIP([]byte(raw)) != "8.8.8.8" {
			t.Fatal(raw)
		}
	}
}
func TestGlobeVerifiedTLSAndOutboundIsolation(t *testing.T) {
	pool := x509.NewCertPool()
	local := globeTestTLS(t, "1.1.1.1", pool)
	remote := globeTestTLS(t, "8.8.8.8", pool)
	direct := &globeTestOutbound{name: "direct", kind: C.TypeDirect, address: local.Listener.Addr().String()}
	proxy := &globeTestOutbound{name: "node-a", kind: "socks", address: remote.Listener.Addr().String()}
	ctx := service.ContextWith[adapter.CertificateStore](context.Background(), globeTestRoots{pool: pool})
	s := &Server{ctx: ctx, outbound: globeTestManager{values: map[string]adapter.Outbound{"direct": direct, "node-a": proxy}}, endpoint: globeTestEndpoints{}, globe: newGlobeCache()}
	handler := authentication("test-secret")(globeEgress(s))
	request := func(auth string) map[string]json.RawMessage {
		req := httptest.NewRequest("GET", "/globe-egress?tag=node-a&network=wifi", nil)
		req.Header.Set("Authorization", auth)
		w := httptest.NewRecorder()
		handler.ServeHTTP(w, req)
		if auth != "Bearer test-secret" {
			if w.Code != 401 {
				t.Fatal(w.Code)
			}
			return nil
		}
		if w.Code != 200 {
			t.Fatal(w.Code, w.Body.String())
		}
		var out map[string]json.RawMessage
		if err := json.Unmarshal(w.Body.Bytes(), &out); err != nil {
			t.Fatal(err)
		}
		return out
	}
	request("wrong")
	if direct.calls.Load() != 0 || proxy.calls.Load() != 0 {
		t.Fatal("unauthenticated probe")
	}
	deadline := time.Now().Add(2 * time.Second)
	for {
		out := request("Bearer test-secret")
		var self globeIP
		var exits map[string]globeIP
		json.Unmarshal(out["self"], &self)
		json.Unmarshal(out["exits"], &exits)
		if !self.Pending && !exits["node-a"].Pending {
			if self.IP != "1.1.1.1" || exits["node-a"].IP != "8.8.8.8" {
				t.Fatal(self, exits)
			}
			break
		}
		if time.Now().After(deadline) {
			t.Fatal("probes did not finish")
		}
		time.Sleep(5 * time.Millisecond)
	}
	for range 5 {
		request("Bearer test-secret")
	}
	if direct.calls.Load() != 1 || proxy.calls.Load() != 1 {
		t.Fatal("cache duplicate probes", direct.calls.Load(), proxy.calls.Load())
	}
	// A certificate outside the configured trust pool must never be accepted.
	badCtx := service.ContextWith[adapter.CertificateStore](context.Background(), globeTestRoots{pool: x509.NewCertPool()})
	if ip, err := probeGlobeIP(badCtx, proxy); err == nil || ip != "" {
		t.Fatal("untrusted TLS accepted", ip)
	}
}
func TestGlobeSingleFlightAndFailures(t *testing.T) {
	c := newGlobeCache()
	done := make(chan struct{})
	var calls atomic.Int32
	probe := func(context.Context) (string, error) { calls.Add(1); <-done; return "8.8.8.8", nil }
	for range 20 {
		if !c.lookup(context.Background(), "wifi/node", probe).Pending {
			t.Fatal("expected pending")
		}
	}
	deadline := time.Now().Add(time.Second)
	for calls.Load() != 1 && time.Now().Before(deadline) {
		time.Sleep(time.Millisecond)
	}
	if calls.Load() != 1 {
		t.Fatal(calls.Load())
	}
	close(done)
	for c.lookup(context.Background(), "wifi/node", probe).Pending && time.Now().Before(deadline) {
		time.Sleep(time.Millisecond)
	}
	if c.lookup(context.Background(), "wifi/node", probe).IP != "8.8.8.8" {
		t.Fatal("missing cached IP")
	}
	c.mu.Lock()
	c.values["wifi/node"] = globeIP{IP: "8.8.8.8", expires: time.Now().Add(-time.Second)}
	c.mu.Unlock()
	c.lookup(context.Background(), "wifi/node", func(context.Context) (string, error) { return "", errors.New("down") })
	for c.lookup(context.Background(), "wifi/node", probe).Pending && time.Now().Before(deadline) {
		time.Sleep(time.Millisecond)
	}
	if c.lookup(context.Background(), "wifi/node", probe).IP != "" {
		t.Fatal("failure retained stale exit")
	}
	// Probe concurrency is bounded even if many exits are requested at once.
	blocker := make(chan struct{})
	busy := newGlobeCache()
	var running, max atomic.Int32
	wait := func(context.Context) (string, error) {
		n := running.Add(1)
		for {
			old := max.Load()
			if n <= old || max.CompareAndSwap(old, n) {
				break
			}
		}
		<-blocker
		running.Add(-1)
		return "8.8.8.8", nil
	}
	for _, key := range []string{"a", "b", "c", "d", "e"} {
		busy.lookup(context.Background(), key, wait)
	}
	deadline = time.Now().Add(time.Second)
	for running.Load() < 3 && time.Now().Before(deadline) {
		time.Sleep(time.Millisecond)
	}
	if max.Load() != 3 {
		t.Fatal("concurrency", max.Load())
	}
	close(blocker)
}
