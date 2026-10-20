package libcore

import (
	box "github.com/sagernet/sing-box"
	"github.com/sagernet/sing-box/adapter"
	"github.com/sagernet/sing-box/option"
	M "github.com/sagernet/sing/common/metadata"
	"github.com/sagernet/sing/service"
	"net/netip"
	"testing"
)

type youtubeOwnerPlatform struct {
	calls                       int
	protocol                    int32
	source, destination         string
	sourcePort, destinationPort int32
}

func (p *youtubeOwnerPlatform) AutoDetectInterfaceControl(int32) error { return nil }
func (p *youtubeOwnerPlatform) OpenTun(string, string) (int, error)    { return 0, nil }
func (p *youtubeOwnerPlatform) UseProcFS() bool                        { return false }
func (p *youtubeOwnerPlatform) FindConnectionOwner(protocol int32, source string, sourcePort int32, destination string, destinationPort int32) (int32, error) {
	p.calls++
	p.protocol = protocol
	p.source = source
	p.destination = destination
	p.sourcePort = sourcePort
	p.destinationPort = destinationPort
	return 10999, nil
}
func (p *youtubeOwnerPlatform) PackageNameByUid(uid int32) (string, error) {
	return "com.google.android.youtube", nil
}
func (p *youtubeOwnerPlatform) UIDByPackageName(string) (int32, error) { return 10999, nil }
func (p *youtubeOwnerPlatform) WIFIState() string                      { return "" }

func TestTUNSourceAddressExtraction(t *testing.T) {
	raw := `{"inbounds":[{"type":"tun","tag":"a","address":["172.19.0.1/30","fdfe:dcba:9876::1/126"]},{"type":"mixed","tag":"b"},{"type":"tun","tag":"c","address":["172.19.0.1/30","10.0.0.1/30"]}]}`
	var opts option.Options
	if err := opts.UnmarshalJSONContext(testConfigContext(), []byte(raw)); err != nil {
		t.Fatal(err)
	}
	got := tunSourceAddresses(opts.Inbounds)
	want := []netip.Addr{netip.MustParseAddr("172.19.0.1"), netip.MustParseAddr("fdfe:dcba:9876::1"), netip.MustParseAddr("10.0.0.1")}
	if len(got) != len(want) {
		t.Fatal(got)
	}
	for i := range want {
		if got[i] != want[i] {
			t.Fatal(got)
		}
	}
	if tunSourceAddresses(nil) != nil {
		t.Fatal("no tun has addresses")
	}
	a, b := &boxPlatformInterfaceWrapper{myTunAddresses: got}, &boxPlatformInterfaceWrapper{}
	if len(a.MyInterfaceAddress()) != 3 || len(b.MyInterfaceAddress()) != 0 {
		t.Fatal("instances share addresses")
	}
}

func TestYouTubeTUNOwnerLookupTCPAndQUIC(t *testing.T) {
	oldPlatform, oldProcfs := intfBox, useProcfs
	defer func() { intfBox = oldPlatform; useProcfs = oldProcfs }()
	useProcfs = false
	for _, source := range []string{"172.19.0.1", "fdfe:dcba:9876::1"} {
		for _, network := range []string{"tcp", "udp"} {
			for _, fixed := range []bool{false, true} {
				name := source + "/" + network
				if fixed {
					name += "/fixed"
				} else {
					name += "/old"
				}
				t.Run(name, func(t *testing.T) {
					owner := &youtubeOwnerPlatform{}
					intfBox = owner
					platform := &boxPlatformInterfaceWrapper{}
					if fixed {
						platform.myTunAddresses = []netip.Addr{netip.MustParseAddr(source)}
					}
					ctx := service.ContextWithDefaultRegistry(testConfigContext())
					service.MustRegister[adapter.PlatformInterface](ctx, platform)
					raw := `{"log":{"disabled":true},"outbounds":[{"type":"direct","tag":"direct"}],"route":{"find_process":true,"rules":[{"package_name":["com.google.android.youtube"],"action":"reject"}]}}`
					var opts option.Options
					if err := opts.UnmarshalJSONContext(ctx, []byte(raw)); err != nil {
						t.Fatal(err)
					}
					b, err := box.New(box.Options{Options: opts, Context: ctx})
					if err != nil {
						t.Fatal(err)
					}
					defer b.Close()
					if err = b.Start(); err != nil {
						t.Fatal(err)
					}
					metadata := adapter.InboundContext{Inbound: "tun-in", InboundType: "tun", Network: network, Source: M.SocksaddrFrom(netip.MustParseAddr(source), 54321), Destination: M.SocksaddrFrom(netip.MustParseAddr("198.18.0.7"), 443)}
					result := b.Router().PreMatch(metadata, nil)
					if !fixed {
						if owner.calls != 0 {
							t.Fatal("old path unexpectedly queried owner")
						}
						t.Log("reproduced owner lookup skipped for TUN source")
						return
					}
					if owner.calls != 1 || result.Action != adapter.PreMatchReject {
						t.Fatalf("YouTube package was not resolved: calls=%d action=%v", owner.calls, result.Action)
					}
					wantProtocol := int32(6)
					if network == "udp" {
						wantProtocol = 17
					}
					if owner.protocol != wantProtocol || owner.source != source || owner.destination != "198.18.0.7" || owner.sourcePort != 54321 || owner.destinationPort != 443 {
						t.Fatalf("wrong socket ownership query: %+v", owner)
					}
					t.Log("TUN source recognized, socket UID mapped to com.google.android.youtube, package rule matched")
				})
			}
		}
	}
}
