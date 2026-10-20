package libcore

import (
	"context"
	"encoding/json"
	mdns "github.com/miekg/dns"
	"github.com/sagernet/sing-box/adapter"
	"github.com/sagernet/sing-box/dns/transport/fakeip"
	"github.com/sagernet/sing-box/experimental/cachefile"
	"github.com/sagernet/sing-box/log"
	"github.com/sagernet/sing-box/option"
	"github.com/sagernet/sing/service"
	"net"
	"net/netip"
	"os"
	"path/filepath"
	"strconv"
	"testing"
)

func TestFakeIPCachePolicy(t *testing.T) {
	for _, name := range []string{"no-dns", "ordinary-dns", "fakeip", "transient", "existing-cache"} {
		t.Run(name, func(t *testing.T) {
			raw := `{}`
			if name == "ordinary-dns" {
				raw = `{"dns":{"servers":[{"type":"udp","tag":"dns","server":"1.1.1.1"}]}}`
			}
			if name == "fakeip" || name == "existing-cache" {
				raw = `{"dns":{"servers":[{"type":"fakeip","tag":"fake","inet4_range":"198.18.0.0/15"}]},"experimental":{"cache_file":{"enabled":false,"path":"custom.db","cache_id":"keep-me","store_dns":true}}}`
			}
			if name == "fakeip" || name == "transient" {
				raw = `{"dns":{"servers":[{"type":"fakeip","tag":"fake","inet4_range":"198.18.0.0/15"}]}}`
			}
			if name == "fakeip" {
				var root map[string]any
				json.Unmarshal([]byte(raw), &root)
				root["inbounds"] = []any{map[string]any{"type": "tun", "address": []string{"172.19.0.1/30"}}}
				encoded, _ := json.Marshal(root)
				raw = string(encoded)
			}
			var opts option.Options
			if err := opts.UnmarshalJSONContext(testConfigContext(), []byte(raw)); err != nil {
				t.Fatal(err)
			}
			active := ensureFakeIPCache(&opts)
			if name == "no-dns" || name == "ordinary-dns" || name == "transient" {
				if active || opts.Experimental != nil {
					t.Fatal("changed non-FakeIP configuration")
				}
				return
			}
			c := opts.Experimental.CacheFile
			if !active || !c.Enabled || !c.StoreFakeIP {
				t.Fatal("FakeIP persistence missing")
			}
			if name == "existing-cache" {
				if c.Path != "custom.db" || c.CacheID != "keep-me" || !c.StoreDNS {
					t.Fatal("existing cache options changed")
				}
			} else if c.Path != "jiajia-cache.db" || c.StoreDNS {
				t.Fatal("wrong mapping cache defaults")
			}
			before, _ := json.Marshal(c)
			ensureFakeIPCache(&opts)
			after, _ := json.Marshal(c)
			if string(before) != string(after) {
				t.Fatal("not idempotent")
			}
		})
	}
}

func TestFakeIPStoreSurvivesRestart(t *testing.T) {
	path := filepath.Join(t.TempDir(), "mapping.db")
	v4, v6 := netip.MustParsePrefix("198.18.0.0/15"), netip.MustParsePrefix("fc00::/18")
	start := func(persist bool) (*fakeip.Store, *adapter.Scope) {
		ctx := service.ContextWithDefaultRegistry(context.Background())
		scope := adapter.NewScope(context.Background(), log.NewNOPFactory().Logger())
		if persist {
			c := cachefile.New(ctx, log.NewNOPFactory().Logger(), option.CacheFileOptions{Enabled: true, Path: path, StoreFakeIP: true})
			service.MustRegister[adapter.CacheFile](ctx, c)
			if err := c.Start(adapter.StartStateInitialize, scope); err != nil {
				t.Fatal(err)
			}
		}
		store := fakeip.NewStore(ctx, log.NewNOPFactory().Logger(), v4, v6)
		if err := store.Start(); err != nil {
			t.Fatal(err)
		}
		scope.Add(store.Close)
		return store, scope
	}
	old, scope := start(false)
	lost, _ := old.Create("old.test", false)
	scope.Close()
	old, scope = start(false)
	if _, ok := old.Lookup(lost); ok {
		t.Fatal("memory store unexpectedly survived restart")
	}
	scope.Close()
	first, scope := start(true)
	a4, err := first.Create("chatgpt.com", false)
	if err != nil {
		t.Fatal(err)
	}
	a6, err := first.Create("chatgpt.com", true)
	if err != nil {
		t.Fatal(err)
	}
	scope.Close()
	second, scope := start(true)
	defer scope.Close()
	for _, address := range []netip.Addr{a4, a6} {
		name, ok := second.Lookup(address)
		if !ok || name != "chatgpt.com" {
			t.Fatalf("mapping lost for %v: %q %v", address, name, ok)
		}
	}
	same, _ := second.Create("chatgpt.com", false)
	next, _ := second.Create("another.test", false)
	if same != a4 || next == a4 {
		t.Fatal("allocation reused or changed an existing FakeIP")
	}
	t.Log("old memory-only map lost at restart; persistent IPv4/IPv6 maps recovered without address collision")
}

func TestCoreEnablesFakeIPCacheOnRestart(t *testing.T) {
	// Exercise the production NewSingBoxInstance policy, without changing process cwd.
	// A supplied cache path is preserved and isolates the test from live app data.
	path := filepath.Join(t.TempDir(), "core-cache.db")
	socket, err := net.ListenPacket("udp", "127.0.0.1:0")
	if err != nil {
		t.Fatal(err)
	}
	port := socket.LocalAddr().(*net.UDPAddr).Port
	socket.Close()
	root := map[string]any{"dns": map[string]any{"servers": []any{map[string]any{"type": "fakeip", "tag": "fake", "inet4_range": "198.18.0.0/15"}}, "final": "fake"}, "inbounds": []any{map[string]any{"type": "direct", "tag": "dns-in", "listen": "127.0.0.1", "listen_port": port, "network": "udp", "override_address": "1.1.1.1", "override_port": 53}}, "outbounds": []any{map[string]any{"type": "direct", "tag": "direct"}}, "route": map[string]any{"rules": []any{map[string]any{"inbound": []string{"dns-in"}, "action": "hijack-dns"}}}, "experimental": map[string]any{"cache_file": map[string]any{"path": path}}, "log": map[string]any{"disabled": true}}
	dnsOptions := root["dns"].(map[string]any)
	dnsOptions["servers"] = append(dnsOptions["servers"].([]any), map[string]any{"type": "udp", "tag": "real", "server": "127.0.0.1", "server_port": 9})
	dnsOptions["final"] = "real"
	dnsOptions["rules"] = []any{map[string]any{"domain_suffix": []string{"chatgpt.com"}, "server": "fake"}}
	raw, _ := json.Marshal(root)
	lookup := func() string {
		q := new(mdns.Msg)
		q.SetQuestion("chatgpt.com.", mdns.TypeA)
		reply, _, err := new(mdns.Client).Exchange(q, net.JoinHostPort("127.0.0.1", strconv.Itoa(port)))
		if err != nil {
			t.Fatal(err)
		}
		if len(reply.Answer) != 1 {
			t.Fatal(reply)
		}
		return reply.Answer[0].(*mdns.A).A.String()
	}
	b, err := NewSingBoxInstance(string(raw), nil)
	if err != nil {
		t.Fatal(err)
	}
	if err = b.Start(); err != nil {
		b.Close()
		t.Fatal(err)
	}
	first := lookup()
	b.Close()
	if _, err = os.Stat(path); err != nil {
		t.Fatal("mapping cache was not created", err)
	}
	b, err = NewSingBoxInstance(string(raw), nil)
	if err != nil {
		t.Fatal(err)
	}
	defer b.Close()
	if err = b.Start(); err != nil {
		t.Fatal(err)
	}
	second := lookup()
	if first != second {
		t.Fatalf("FakeIP changed across production restart: %s -> %s", first, second)
	}
}
