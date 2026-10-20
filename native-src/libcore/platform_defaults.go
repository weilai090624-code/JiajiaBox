package libcore

import (
	"context"
	"github.com/sagernet/sing-box/adapter"
	"github.com/sagernet/sing-box/dns"
	"github.com/sagernet/sing-box/option"
	tun "github.com/sagernet/sing-tun"
	"github.com/sagernet/sing/common/logger"
	"net/netip"
	"os"
)

type platformDefaults struct{}

func (s *platformDefaults) Initialize(networkManager adapter.NetworkManager) error {
	return nil
}

func (s *platformDefaults) UsePlatformAutoDetectInterfaceControl() bool {
	return true
}

func (s *platformDefaults) AutoDetectInterfaceControl(fd int) error {
	return nil
}

func (s *platformDefaults) UsePlatformInterface() bool {
	return false
}

func (s *platformDefaults) OpenInterface(options *tun.Options, platformOptions option.TunPlatformOptions) (tun.Tun, error) {
	return nil, os.ErrInvalid
}

func (s *platformDefaults) ProcessPlatformOptions(options option.TunPlatformOptions) error {
	return nil
}

func (s *platformDefaults) UsePlatformDefaultInterfaceMonitor() bool {
	return true
}

func (s *platformDefaults) CreateDefaultInterfaceMonitor(logger logger.Logger) tun.DefaultInterfaceMonitor {
	return (*interfaceMonitorStub)(nil)
}

func (s *platformDefaults) UsePlatformNetworkInterfaces() bool {
	return false
}

func (s *platformDefaults) NetworkInterfaces() ([]adapter.NetworkInterface, error) {
	return nil, os.ErrInvalid
}

func (s *platformDefaults) UnderNetworkExtension() bool {
	return false
}

func (s *platformDefaults) NetworkExtensionIncludeAllNetworks() bool {
	return false
}

func (s *platformDefaults) ClearDNSCache() {
}

func (s *platformDefaults) RequestPermissionForWIFIState() error {
	return nil
}

func (s *platformDefaults) UsePlatformWIFIMonitor() bool {
	return false
}

func (s *platformDefaults) ReadWIFIState(ctx context.Context) adapter.WIFIState {
	return adapter.WIFIState{}
}

func (s *platformDefaults) UsePlatformConnectionOwnerFinder() bool {
	return false
}

func (s *platformDefaults) FindConnectionOwner(request *adapter.FindConnectionOwnerRequest) (*adapter.ConnectionOwner, error) {
	return nil, os.ErrInvalid
}

func (s *platformDefaults) UsePlatformNotification() bool {
	return false
}

func (s *platformDefaults) SendNotification(notification *adapter.Notification) error {
	return nil
}

func (s *platformDefaults) CancelNotification(identifier string, typeID int32) error {
	return nil
}

func (s *platformDefaults) MyInterfaceAddress() []netip.Addr {
	return nil
}

func (s *platformDefaults) UsePlatformNeighborResolver() bool {
	return false
}

func (s *platformDefaults) StartNeighborMonitor(listener adapter.NeighborUpdateListener) error {
	return os.ErrInvalid
}

func (s *platformDefaults) CloseNeighborMonitor(listener adapter.NeighborUpdateListener) error {
	return nil
}

func (s *platformDefaults) UsePlatformShell() bool {
	return false
}

func (s *platformDefaults) CheckPlatformShell() error {
	return nil
}

func (s *platformDefaults) OpenShellSession(user *adapter.PlatformUser, command string, env []string, term string, rows int32, cols int32) (adapter.ShellSession, error) {
	return nil, os.ErrInvalid
}

func (s *platformDefaults) LookupSFTPServer() (string, error) {
	return "", os.ErrInvalid
}

func (s *platformDefaults) ReadSystemSSHHostKey() ([]byte, error) {
	return nil, os.ErrInvalid
}

func (s *platformDefaults) TailscaleHostname() string {
	return ""
}

func (s *platformDefaults) UsePlatformBridge() bool {
	return false
}

func (s *platformDefaults) CreateBridge(options adapter.BridgeOptions) (adapter.BridgeSession, error) {
	return nil, os.ErrInvalid
}

func (s *platformDefaults) LookupUser(username string) (*adapter.PlatformUser, error) {
	return nil, os.ErrInvalid
}

func (s *platformDefaults) UsePlatformLocalDNSTransport() bool {
	return false
}

func (s *platformDefaults) LocalDNSTransport() dns.TransportConstructorFunc[option.LocalDNSServerOptions] {
	return nil
}
