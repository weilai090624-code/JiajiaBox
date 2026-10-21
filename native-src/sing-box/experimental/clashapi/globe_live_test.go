package clashapi

import (
	"context"
	"net"
	"os"
	"testing"
	"time"

	"github.com/sagernet/sing-box/adapter"
	M "github.com/sagernet/sing/common/metadata"
)

type globeLiveDialer struct{ adapter.Outbound }

func (globeLiveDialer) DialContext(ctx context.Context, network string, address M.Socksaddr) (net.Conn, error) {
	return (&net.Dialer{}).DialContext(ctx, network, address.String())
}

// Opt-in actual HTTPS through the production probe, not an HTTP mock. Never
// logs the caller's IP or coordinates. Set JIAJIA_GLOBE_LIVE_TEST=1 to execute.
func TestGlobeLiveIPSB(t *testing.T) {
	if os.Getenv("JIAJIA_GLOBE_LIVE_TEST") != "1" {
		t.Skip("opt-in network test")
	}
	for _, ip := range []string{"", "1.36.1.1"} {
		ctx, cancel := context.WithTimeout(context.Background(), 25*time.Second)
		result, err := probeGlobeLocation(ctx, globeLiveDialer{}, ip)
		cancel()
		if err != nil {
			t.Errorf("production probe target=%q: %T: %v", ip, err, err)
			continue
		}
		if result.IP == "" || result.CountryCode == "" {
			t.Fatal("missing location")
		}
		if ip != "" && result.CountryCode != "HK" {
			t.Errorf("HK target returned %s", result.CountryCode)
		}
		t.Logf("production probe target=%q: source=%s country=%s", ip, result.Source, result.CountryCode)
		time.Sleep(time.Second)
	}
}
