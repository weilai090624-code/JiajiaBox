package libcore

import (
	"encoding/base64"
	"encoding/binary"
	"encoding/json"
	"fmt"
	mdns "github.com/miekg/dns"
	"io"
	"net"
	"net/http"
	"net/http/httptest"
	"os"
	"strconv"
	"strings"
	"sync/atomic"
	"testing"
	"time"
)

// The DoH target at 127.0.0.2:1 is unreachable directly. This controlled SOCKS
// server alone maps it to our TLS DNS server, proving the outbound was used.
func TestDNSDefaultOutboundRealHTTPS(t *testing.T) {
	var queries, proxied atomic.Int32
	doh := httptest.NewTLSServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		var data []byte
		var err error
		if r.Method == "GET" {
			data, err = base64.RawURLEncoding.DecodeString(r.URL.Query().Get("dns"))
		} else {
			data, err = io.ReadAll(r.Body)
		}
		if err != nil {
			http.Error(w, err.Error(), 400)
			return
		}
		var q mdns.Msg
		if err = q.Unpack(data); err != nil {
			http.Error(w, err.Error(), 400)
			return
		}
		queries.Add(1)
		reply := new(mdns.Msg)
		reply.SetReply(&q)
		answer, _ := mdns.NewRR(q.Question[0].Name + " 60 IN A 203.0.113.7")
		reply.Answer = []mdns.RR{answer}
		packed, _ := reply.Pack()
		w.Header().Set("Content-Type", "application/dns-message")
		w.Write(packed)
	}))
	defer doh.Close()
	socks, err := net.Listen("tcp", "127.0.0.1:0")
	if err != nil {
		t.Fatal(err)
	}
	defer socks.Close()
	go func() {
		for {
			c, err := socks.Accept()
			if err != nil {
				return
			}
			go func(c net.Conn) {
				defer c.Close()
				c.SetDeadline(time.Now().Add(5 * time.Second))
				head := make([]byte, 2)
				if _, err := io.ReadFull(c, head); err != nil {
					return
				}
				methods := make([]byte, int(head[1]))
				if _, err = io.ReadFull(c, methods); err != nil {
					return
				}
				c.Write([]byte{5, 0})
				request := make([]byte, 4)
				if _, err = io.ReadFull(c, request); err != nil {
					return
				}
				var host string
				switch request[3] {
				case 1:
					b := make([]byte, 4)
					if _, err = io.ReadFull(c, b); err != nil {
						return
					}
					host = net.IP(b).String()
				case 3:
					b := make([]byte, 1)
					if _, err = io.ReadFull(c, b); err != nil {
						return
					}
					name := make([]byte, int(b[0]))
					if _, err = io.ReadFull(c, name); err != nil {
						return
					}
					host = string(name)
				default:
					return
				}
				port := make([]byte, 2)
				if _, err = io.ReadFull(c, port); err != nil {
					return
				}
				if host != "127.0.0.2" || binary.BigEndian.Uint16(port) != 1 {
					return
				}
				upstream, err := net.Dial("tcp", strings.TrimPrefix(doh.URL, "https://"))
				if err != nil {
					return
				}
				defer upstream.Close()
				proxied.Add(1)
				c.Write([]byte{5, 0, 0, 1, 127, 0, 0, 1, 0, 0})
				go io.Copy(upstream, c)
				io.Copy(c, upstream)
			}(c)
		}
	}()
	socksPort := socks.Addr().(*net.TCPAddr).Port
	for _, name := range []string{"legacy", "java", "explicit-direct", "native-direct", "old-broken"} {
		t.Run(name, func(t *testing.T) {
			file := "legacy"
			if name == "java" || name == "native-direct" || name == "old-broken" {
				file = "java"
			}
			data, err := os.ReadFile("../../build/rebuilt-dns-route-246/fixtures/" + file + ".json")
			if err != nil {
				t.Fatal(err)
			}
			var config map[string]any
			if err = json.Unmarshal(data, &config); err != nil {
				t.Fatal(err)
			}
			outs := config["outbounds"].([]any)
			outs[1].(map[string]any)["server_port"] = socksPort
			server := config["dns"].(map[string]any)["servers"].([]any)[0].(map[string]any)
			if name == "explicit-direct" {
				server["address"] = doh.URL + "/dns-query"
				server["detour"] = "bypass"
			}
			if name == "native-direct" {
				delete(server, "detour")
				host, port, _ := net.SplitHostPort(strings.TrimPrefix(doh.URL, "https://"))
				server["server"] = host
				server["server_port"], _ = strconv.Atoi(port)
			}
			if name == "old-broken" {
				delete(server, "detour")
			}
			socket, err := net.ListenPacket("udp", "127.0.0.1:0")
			if err != nil {
				t.Fatal(err)
			}
			dnsPort := socket.LocalAddr().(*net.UDPAddr).Port
			socket.Close()
			config["inbounds"] = []any{map[string]any{"type": "direct", "tag": "dns-in", "listen": "127.0.0.1", "listen_port": dnsPort, "network": "udp", "override_address": "1.1.1.1", "override_port": 53}}
			config["route"].(map[string]any)["rules"] = []any{map[string]any{"inbound": []string{"dns-in"}, "action": "hijack-dns"}}
			config["log"] = map[string]any{"disabled": true}
			raw, _ := json.Marshal(config)
			beforeProxy, beforeQueries := proxied.Load(), queries.Load()
			b, err := NewSingBoxInstance(string(raw), nil)
			if err != nil {
				t.Fatal(err)
			}
			defer b.Close()
			if err = b.Start(); err != nil {
				t.Fatal(err)
			}
			q := new(mdns.Msg)
			q.SetQuestion("probe.test.", mdns.TypeA)
			client := &mdns.Client{Timeout: 2 * time.Second}
			reply, _, err := client.Exchange(q, fmt.Sprintf("127.0.0.1:%d", dnsPort))
			if name == "old-broken" {
				if err == nil && reply.Rcode == mdns.RcodeSuccess && len(reply.Answer) > 0 {
					t.Fatal("broken direct path unexpectedly worked")
				}
				if proxied.Load() != beforeProxy || queries.Load() != beforeQueries {
					t.Fatal("broken path reached controlled proxy")
				}
				t.Log("reproduced failed DNS when legacy detour is omitted")
				return
			}
			if err != nil {
				t.Fatal(err)
			}
			if len(reply.Answer) != 1 || !strings.Contains(reply.Answer[0].String(), "203.0.113.7") {
				t.Fatalf("wrong DNS reply: %v", reply)
			}
			wantProxy := name == "legacy" || name == "java"
			delta := proxied.Load() - beforeProxy
			if (delta > 0) != wantProxy {
				t.Fatalf("wrong egress for %s: proxy requests=%d", name, delta)
			}
			if queries.Load()-beforeQueries != 1 {
				t.Fatal("DoH exchange was not performed")
			}
			t.Logf("DoH query succeeded, proxy requests=%d", delta)
		})
	}
}

func TestLegacyDNSEgressSemantics(t *testing.T) {
	data, err := os.ReadFile("../../build/rebuilt-dns-route-246/fixtures/legacy.json")
	if err != nil {
		t.Fatal(err)
	}
	for _, name := range []string{"final", "explicit", "implicit", "untagged", "typed", "local", "fakeip", "dhcp"} {
		t.Run(name, func(t *testing.T) {
			var root map[string]any
			json.Unmarshal(data, &root)
			route := root["route"].(map[string]any)
			server := root["dns"].(map[string]any)["servers"].([]any)[0].(map[string]any)
			want := "proxy"
			switch name {
			case "explicit":
				server["detour"] = "chosen"
				want = "chosen"
			case "implicit", "untagged":
				delete(route, "final")
				outs := root["outbounds"].([]any)[1:]
				root["outbounds"] = outs
				if name == "untagged" {
					delete(outs[0].(map[string]any), "tag")
					want = "jiajia-dns-default"
				}
			case "typed":
				delete(server, "address")
				server["type"] = "https"
				server["server"] = "127.0.0.2"
				want = ""
			case "local", "fakeip":
				server["address"] = name
				want = ""
			case "dhcp":
				server["address"] = "dhcp://auto"
				want = ""
			}
			raw, _ := json.Marshal(root)
			modern, err := upgradeClientConfig(string(raw))
			if err != nil {
				t.Fatal(err)
			}
			var result map[string]any
			json.Unmarshal([]byte(modern), &result)
			got, _ := result["dns"].(map[string]any)["servers"].([]any)[0].(map[string]any)["detour"].(string)
			if got != want {
				t.Fatalf("detour=%q, want %q", got, want)
			}
			twice, err := upgradeClientConfig(modern)
			if err != nil || twice != modern {
				t.Fatalf("not idempotent: %v", err)
			}
		})
	}
}
