package libcore

import (
	"encoding/json"
	"fmt"
	"github.com/matsuridayo/libneko/neko_log"
	"io"
	"net"
	"net/http"
	"os"
	"os/signal"
	"path/filepath"
	"strings"
	"testing"
)

func TestLegacyConfigCreatesBox(t *testing.T) {
	if err := neko_log.SetupLog(1024*1024, filepath.Join(t.TempDir(), "core.log")); err != nil {
		t.Fatal(err)
	}
	configs := []string{
		`{"dns":{"servers":[{"tag":"local","address":"local"},{"tag":"remote","address":"https://1.1.1.1/dns-query","detour":"proxy","strategy":"ipv4_only"},{"tag":"fake","address":"fakeip"},{"tag":"deny","address":"rcode://success"}],"fakeip":{"enabled":true,"inet4_range":"198.18.0.0/15","inet6_range":"fc00::/18"},"rules":[{"domain_suffix":["ads.test"],"server":"deny"}],"final":"remote"},"inbounds":[{"type":"mixed","tag":"mixed","listen":"127.0.0.1","listen_port":0,"sniff":true}],"outbounds":[{"type":"direct","tag":"direct"},{"type":"socks","tag":"proxy","server":"127.0.0.1","server_port":9},{"type":"dns","tag":"dns-out"}],"route":{"rules":[{"protocol":"dns","outbound":"dns-out"}],"final":"proxy"}}`,
		`{"dns":{"servers":[{"type":"udp","tag":"dns","server":"1.1.1.1"}]},"outbounds":[{"type":"direct","tag":"direct"}],"route":{"final":"direct"}}`,
	}
	for i, c := range configs {
		s, err := upgradeClientConfig(c)
		if err != nil {
			t.Fatal(err)
		}
		t.Log(s)
		b, err := NewSingBoxInstance(s, nil)
		if err != nil {
			t.Fatalf("config %d: %v", i, err)
		}
		if err = b.Start(); err != nil {
			t.Fatalf("start %d: %v", i, err)
		}
		b.Close()
	}
}
func TestUpgradePreservesRulesAndIdempotence(t *testing.T) {
	raw, err := os.ReadFile("testdata/dns-ip.json")
	if err != nil {
		t.Fatal(err)
	}
	a, err := upgradeClientConfig(string(raw))
	if err != nil {
		t.Fatal(err)
	}
	b, err := upgradeClientConfig(a)
	if err != nil {
		t.Fatal(err)
	}
	if a != b {
		t.Fatalf("upgrade is not idempotent\n%s\n%s", a, b)
	}
	var before, after map[string]any
	json.Unmarshal(raw, &before)
	json.Unmarshal([]byte(a), &after)
	x, _ := json.Marshal(before["route"])
	y, _ := json.Marshal(after["route"])
	if string(x) != string(y) {
		t.Fatalf("explicit routes changed")
	}
	if strings.Contains(a, `"address":"fakeip"`) {
		t.Fatal("legacy server retained")
	}
}

func TestNetworkRunner(t *testing.T) {
	p := os.Getenv("JIAJIA_TEST_CONFIG")
	if p == "" {
		t.Skip("network runner")
	}
	if err := neko_log.SetupLog(1024*1024, filepath.Join(t.TempDir(), "core.log")); err != nil {
		t.Fatal(err)
	}
	content, err := os.ReadFile(p)
	if err != nil {
		t.Fatal(err)
	}
	b, err := NewSingBoxInstance(string(content), nil)
	if err != nil {
		t.Fatal(err)
	}
	if err = b.Start(); err != nil {
		t.Fatal(err)
	}
	defer b.Close()
	ch := make(chan os.Signal, 1)
	signal.Notify(ch, os.Interrupt)
	defer signal.Stop(ch)
	<-ch
}

func TestLegacyTunAndWireGuardDecode(t *testing.T) {
	for _, config := range []string{
		`{"dns":{"servers":[{"tag":"dns","address":"local"}]},"inbounds":[{"type":"tun","tag":"tun-in","inet4_address":["172.19.0.1/28"],"inet6_address":["fdfe:dcba:9876::1/126"],"sniff":true,"domain_strategy":"prefer_ipv4","endpoint_independent_nat":true,"stack":"gvisor"}],"outbounds":[{"tag":"direct","type":"direct"}],"route":{"final":"direct"}}`,
		`{"outbounds":[{"type":"wireguard","tag":"wg","local_address":["10.0.0.2/32"],"private_key":"AQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQE=","server":"127.0.0.1","server_port":51820,"peer_public_key":"AgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgI=","reserved":[1,2,3],"mtu":1408},{"type":"direct","tag":"direct"}],"route":{"final":"direct"}}`,
	} {
		b, err := NewSingBoxInstance(config, nil)
		if err != nil {
			t.Fatal(err)
		}
		b.Close()
	}
}

func TestClientClashAPI(t *testing.T) {
	if err := neko_log.SetupLog(1024*1024, filepath.Join(t.TempDir(), "api.log")); err != nil {
		t.Fatal(err)
	}
	l, err := net.Listen("tcp", "127.0.0.1:0")
	if err != nil {
		t.Fatal(err)
	}
	address := l.Addr().String()
	l.Close()
	config := fmt.Sprintf(`{"outbounds":[{"type":"direct","tag":"direct"}],"experimental":{"clash_api":{"external_controller":%q,"secret":"test-secret"}}}`, address)
	b, err := NewSingBoxInstance(config, nil)
	if err != nil {
		t.Fatal(err)
	}
	if err = b.Start(); err != nil {
		t.Fatal(err)
	}
	defer b.Close()
	for _, path := range []string{"/version", "/app-traffic"} {
		req, _ := http.NewRequest("GET", "http://"+address+path, nil)
		req.Header.Set("Authorization", "Bearer test-secret")
		res, err := http.DefaultClient.Do(req)
		if err != nil {
			t.Fatal(err)
		}
		body, _ := io.ReadAll(res.Body)
		res.Body.Close()
		if res.StatusCode != 200 || !json.Valid(body) {
			t.Fatalf("%s: %d %s", path, res.StatusCode, body)
		}
		if path == "/version" && !strings.Contains(string(body), "1.14.3-Jiajia-7") {
			t.Fatalf("version: %s", body)
		}
	}
	res, err := http.Get("http://" + address + "/app-traffic")
	if err != nil {
		t.Fatal(err)
	}
	res.Body.Close()
	if res.StatusCode != http.StatusUnauthorized {
		t.Fatal("missing authentication")
	}
}
