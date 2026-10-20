package libcore

import (
	"context"
	"encoding/json"
	"errors"
	"fmt"
	"libcore/procfs"
	"log"
	"net/netip"
	"strings"
	"syscall"

	"github.com/matsuridayo/libneko/neko_log"
	"github.com/sagernet/sing-box/adapter"

	sblog "github.com/sagernet/sing-box/log"
	"github.com/sagernet/sing-box/option"
	tun "github.com/sagernet/sing-tun"
	E "github.com/sagernet/sing/common/exceptions"
	"github.com/sagernet/sing/common/logger"
	N "github.com/sagernet/sing/common/network"
)

type boxPlatformInterfaceWrapper struct {
	platformDefaults
	myTunAddresses []netip.Addr
}

// The router must recognize TUN source addresses as local before asking Android
// for their owner. Keep this list immutable and scoped to one core instance.
func (w *boxPlatformInterfaceWrapper) MyInterfaceAddress() []netip.Addr { return w.myTunAddresses }
func tunSourceAddresses(inbounds []option.Inbound) []netip.Addr {
	var addresses []netip.Addr
	seen := map[netip.Addr]bool{}
	for _, inbound := range inbounds {
		tunOptions, ok := inbound.Options.(*option.TunInboundOptions)
		if !ok {
			continue
		}
		for _, prefix := range tunOptions.Address {
			address := prefix.Addr().Unmap()
			if address.IsValid() && !seen[address] {
				addresses = append(addresses, address)
				seen[address] = true
			}
		}
	}
	return addresses
}

func (w *boxPlatformInterfaceWrapper) ReadWIFIState(ctx context.Context) adapter.WIFIState {
	if intfBox == nil {
		return adapter.WIFIState{}
	}
	state := strings.SplitN(intfBox.WIFIState(), ",", 2)
	if len(state) < 2 {
		return adapter.WIFIState{SSID: state[0]}
	}
	return adapter.WIFIState{
		SSID:  state[0],
		BSSID: state[1],
	}
}

func (w *boxPlatformInterfaceWrapper) Initialize(n adapter.NetworkManager) error {
	return nil
}

func (w *boxPlatformInterfaceWrapper) UsePlatformAutoDetectInterfaceControl() bool {
	return true
}

func (w *boxPlatformInterfaceWrapper) AutoDetectInterfaceControl(fd int) error {
	// call protect_path
	if !isBgProcess {
		_ = sendFdToProtect(fd, "protect_path")
		return nil
	}
	// bg process call VPNService
	return intfBox.AutoDetectInterfaceControl(int32(fd))
}

func (w *boxPlatformInterfaceWrapper) OpenInterface(options *tun.Options, platformOptions option.TunPlatformOptions) (tun.Tun, error) {
	if len(options.IncludeUID) > 0 || len(options.ExcludeUID) > 0 {
		return nil, E.New("android: unsupported uid options")
	}
	if len(options.IncludeAndroidUser) > 0 {
		return nil, E.New("android: unsupported android_user option")
	}
	a, _ := json.Marshal(options)
	b, _ := json.Marshal(platformOptions)
	tunFd, err := intfBox.OpenTun(string(a), string(b))
	if err != nil {
		return nil, fmt.Errorf("intfBox.OpenTun: %v", err)
	}
	// Do you want to close it?
	tunFd, err = syscall.Dup(tunFd)
	if err != nil {
		return nil, fmt.Errorf("syscall.Dup: %v", err)
	}
	//
	options.FileDescriptor = int(tunFd)
	return tun.New(*options)
}

func (w *boxPlatformInterfaceWrapper) CloseTun() error {
	return nil
}

func (w *boxPlatformInterfaceWrapper) UsePlatformDefaultInterfaceMonitor() bool {
	return true
}

func (w *boxPlatformInterfaceWrapper) CreateDefaultInterfaceMonitor(l logger.Logger) tun.DefaultInterfaceMonitor {
	return &interfaceMonitorStub{}
}

func (w *boxPlatformInterfaceWrapper) UsePlatformInterfaceGetter() bool {
	return false
}

func (w *boxPlatformInterfaceWrapper) Interfaces() ([]adapter.NetworkInterface, error) {
	return nil, errors.New("wtf")
}

func (w *boxPlatformInterfaceWrapper) IncludeAllNetworks() bool {
	return false
}

func (w *boxPlatformInterfaceWrapper) SendNotification(notification *adapter.Notification) error {
	return nil
}

func (s *boxPlatformInterfaceWrapper) SystemCertificates() []string {
	return nil
}

// Android not using

func (w *boxPlatformInterfaceWrapper) UnderNetworkExtension() bool {
	return false
}

func (w *boxPlatformInterfaceWrapper) ClearDNSCache() {
}

// process.Searcher

func (w *boxPlatformInterfaceWrapper) FindProcessInfo(ctx context.Context, network string, source netip.AddrPort, destination netip.AddrPort) (*adapter.ConnectionOwner, error) {
	var uid int32
	if useProcfs {
		uid = procfs.ResolveSocketByProcSearch(network, source, destination)
		if uid == -1 {
			return nil, E.New("procfs: not found")
		}
	} else {
		var ipProtocol int32
		switch N.NetworkName(network) {
		case N.NetworkTCP:
			ipProtocol = syscall.IPPROTO_TCP
		case N.NetworkUDP:
			ipProtocol = syscall.IPPROTO_UDP
		default:
			return nil, E.New("unknown network: ", network)
		}
		var err error
		uid, err = intfBox.FindConnectionOwner(ipProtocol, source.Addr().String(), int32(source.Port()), destination.Addr().String(), int32(destination.Port()))
		if err != nil {
			return nil, err
		}
	}
	packageName, _ := intfBox.PackageNameByUid(uid)
	return &adapter.ConnectionOwner{UserId: uid, AndroidPackageNames: []string{packageName}}, nil
}

// io.Writer

var disableSingBoxLog = false

func (w *boxPlatformInterfaceWrapper) Write(p []byte) (n int, err error) {
	// use neko_log
	if !disableSingBoxLog {
		log.Print(string(p))
	}
	return len(p), nil
}

// 日志

type boxPlatformLogWriterWrapper struct {
	diagnosticOnly bool
}

var boxPlatformLogWriter sblog.PlatformWriter = &boxPlatformLogWriterWrapper{}

func (w *boxPlatformLogWriterWrapper) DisableColors() bool { return true }

func (w *boxPlatformLogWriterWrapper) WriteMessage(level uint8, message string) {
	recordCoreDiagnostic("%s", message)
	if w.diagnosticOnly {
		return
	}
	if !strings.HasSuffix(message, "\n") {
		message += "\n"
	}
	neko_log.LogWriter.Write([]byte(message))
}

func (w *boxPlatformInterfaceWrapper) UsePlatformInterface() bool             { return true }
func (w *boxPlatformInterfaceWrapper) UsePlatformConnectionOwnerFinder() bool { return true }
func (w *boxPlatformInterfaceWrapper) FindConnectionOwner(r *adapter.FindConnectionOwnerRequest) (*adapter.ConnectionOwner, error) {
	info, err := w.FindProcessInfo(context.Background(), N.NetworkName(func() string {
		if r.IpProtocol == syscall.IPPROTO_TCP {
			return "tcp"
		}
		return "udp"
	}()), netip.AddrPortFrom(netip.MustParseAddr(r.SourceAddress), uint16(r.SourcePort)), netip.AddrPortFrom(netip.MustParseAddr(r.DestinationAddress), uint16(r.DestinationPort)))
	if err != nil {
		return nil, err
	}
	return info, nil
}
