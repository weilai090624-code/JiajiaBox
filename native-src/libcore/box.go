package libcore

import (
	"context"
	"errors"
	"fmt"
	"io"
	"libcore/device"
	"log"
	"runtime"
	"runtime/debug"
	"strings"
	"sync"
	"sync/atomic"

	"github.com/matsuridayo/libneko/protect_server"
	"github.com/matsuridayo/libneko/speedtest"
	"github.com/sagernet/sing-box/adapter"
	"github.com/sagernet/sing-box/adapter/certificate"
	"github.com/sagernet/sing-box/boxapi"
	"github.com/sagernet/sing-box/protocol/group"

	box "github.com/sagernet/sing-box"

	"github.com/sagernet/sing-box/common/dialer"
	"github.com/sagernet/sing-box/constant"
	"github.com/sagernet/sing-box/option"
	"github.com/sagernet/sing/service"
	"github.com/sagernet/sing/service/pause"
)

func init() {
	dialer.DoNotSelectInterface = true
}

var mainInstance *BoxInstance
var mainInstanceMu sync.RWMutex

func currentMainInstance() *BoxInstance {
	mainInstanceMu.RLock()
	defer mainInstanceMu.RUnlock()
	return mainInstance
}

func VersionBox() string {
	version := []string{
		"sing-box: " + constant.Version,
		runtime.Version() + "@" + runtime.GOOS + "/" + runtime.GOARCH,
	}

	var tags string
	debugInfo, loaded := debug.ReadBuildInfo()
	if loaded {
		for _, setting := range debugInfo.Settings {
			switch setting.Key {
			case "-tags":
				tags = setting.Value
			}
		}
	}

	if tags != "" {
		version = append(version, tags)
	}

	return strings.Join(version, "\n")
}

func ResetAllConnections(system bool) {
	recordCoreDiagnostic("reset connections requested: system=%t", system)
	b := currentMainInstance()
	if b == nil {
		return
	}
	b.access.Lock()
	defer b.access.Unlock()
	if b.state != 1 {
		return
	}
	if b.pauseManager != nil {
		b.pauseManager.NetworkWake()
	}
	if system {
		b.Box.Network().ResetNetwork(context.Background())
	} else {
		b.Box.Router().ResetNetwork()
	}
}

type BoxInstance struct {
	access sync.Mutex

	*box.Box
	cancel   context.CancelFunc
	state    int
	sleeping atomic.Bool

	v2api        *boxapi.SbV2rayServer
	selector     *group.Selector
	pauseManager pause.Manager
}

func NewSingBoxInstance(config string, localTransport LocalDNSTransport) (b *BoxInstance, err error) {
	defer device.DeferPanicToError("NewSingBoxInstance", func(err_ error) { err = err_ })

	// create box context
	ctx, cancel := context.WithCancel(context.Background())
	ctx = box.Context(ctx,
		nekoboxAndroidInboundRegistry(), nekoboxAndroidOutboundRegistry(), nekoboxAndroidEndpointRegistry(),
		nekoboxAndroidDNSTransportRegistry(localTransport), nekoboxAndroidServiceRegistry(), certificate.NewRegistry(),
	)
	ctx = service.ContextWithDefaultRegistry(ctx)
	platform := &boxPlatformInterfaceWrapper{}
	service.MustRegister[adapter.PlatformInterface](ctx, platform)

	diagnosticRecording()
	recordCoreDiagnostic("core create: version=%s", constant.Version)
	options, err := decodeClientConfig(ctx, config)
	if err != nil {
		cancel()
		recordCoreDiagnostic("decode config failed: %v", err)
		return nil, fmt.Errorf("decode config: %w", err)
	}

	if ensureFakeIPCache(&options) {
		recordCoreDiagnostic("FakeIP mapping persistence enabled; DNS response-cache policy unchanged")
	}
	platform.myTunAddresses = tunSourceAddresses(options.Inbounds)
	platformWriter := boxPlatformLogWriter
	// Recording explicitly requests connection/DNS logs even if ordinary logging is disabled.
	if diagnosticRecording() {
		if options.Log == nil {
			options.Log = &option.LogOptions{}
		}
		if options.Log.Disabled {
			// Keep normal logging silent during and after a diagnostic session.
			platformWriter = &boxPlatformLogWriterWrapper{diagnosticOnly: true}
			options.Log.Output = "/dev/null"
			options.Log.Level = "panic"
		}
		options.Log.Disabled = false
		recordCoreDiagnostic("diagnostic kernel logging enabled")
	}

	// create box
	instance, err := box.New(box.Options{
		Options:           options,
		Context:           ctx,
		PlatformLogWriter: platformWriter,
	})
	if err != nil {
		cancel()
		recordCoreDiagnostic("create service failed: %v", err)
		return nil, fmt.Errorf("create service: %v", err)
	}

	b = &BoxInstance{
		Box:          instance,
		cancel:       cancel,
		pauseManager: service.FromContext[pause.Manager](ctx),
	}

	// selector
	if proxy, ok := b.Outbound().Outbound("proxy"); ok {
		if selector, ok := proxy.(*group.Selector); ok {
			b.selector = selector
		}
	}

	return b, nil
}

func (b *BoxInstance) Start() (err error) {
	recordCoreDiagnostic("core start requested")
	b.access.Lock()
	defer b.access.Unlock()

	defer device.DeferPanicToError("box.Start", func(err_ error) { err = err_ })

	if b.state == 0 {
		b.state = 1
		return b.Box.Start()
	}
	return errors.New("already started")
}

func (b *BoxInstance) Close() (err error) {
	recordCoreDiagnostic("core close requested")
	b.access.Lock()
	defer b.access.Unlock()

	defer device.DeferPanicToError("box.Close", func(err_ error) { err = err_ })

	// no double close
	if b.state == 2 {
		return nil
	}
	b.state = 2

	// clear main instance
	mainInstanceMu.Lock()
	if mainInstance == b {
		mainInstance = nil
		goServeProtect(false)
	}
	mainInstanceMu.Unlock()

	// close box
	if b.cancel != nil {
		b.cancel()
	}
	if b.Box != nil {
		b.Box.Close()
	}

	return nil
}

func (b *BoxInstance) Sleep() {
	b.access.Lock()
	defer b.access.Unlock()
	if b.state != 1 || b.sleeping.Swap(true) {
		return
	}
	recordCoreDiagnostic("core sleep")
	if b.pauseManager != nil {
		b.pauseManager.DevicePause()
	}
}
func (b *BoxInstance) Wake() {
	b.access.Lock()
	defer b.access.Unlock()
	if b.state != 1 || !b.sleeping.Swap(false) {
		return
	}
	recordCoreDiagnostic("core wake; refreshing network pools")
	if b.pauseManager != nil {
		b.pauseManager.DeviceWake()
		b.pauseManager.NetworkWake()
	}
	// Resume only once per actual sleep transition. Reset stale DNS/HTTP pools
	// without terminating established proxy sessions or changing user's reset switch.
	b.Box.Router().ResetNetwork()
}
func (b *BoxInstance) SetAsMain() {
	b.access.Lock()
	defer b.access.Unlock()
	if b.state == 2 {
		return
	}
	mainInstanceMu.Lock()
	defer mainInstanceMu.Unlock()
	mainInstance = b
	goServeProtect(true)
}

func (b *BoxInstance) SetV2rayStats(outbounds string) {
	b.access.Lock()
	defer b.access.Unlock()
	if b.v2api != nil {
		log.Println("duplicate call of SetV2rayStats")
		return
	}
	b.v2api = boxapi.NewSbV2rayServer(option.V2RayStatsServiceOptions{
		Enabled:   true,
		Outbounds: strings.Split(outbounds, "\n"),
	})
	b.Box.Router().AppendTracker(b.v2api.StatsService())
}

func (b *BoxInstance) QueryStats(tag, direct string) int64 {
	if b.v2api == nil {
		return 0
	}
	return b.v2api.QueryStats(fmt.Sprintf("outbound>>>%s>>>traffic>>>%s", tag, direct))
}

func (b *BoxInstance) SelectOutbound(tag string) bool {
	if b.selector != nil {
		return b.selector.SelectOutbound(tag)
	}
	return false
}

func UrlTest(i *BoxInstance, link string, timeout int32) (latency int32, err error) {
	defer device.DeferPanicToError("box.UrlTest", func(err_ error) { err = err_ })
	var connectionTracker adapter.ConnectionTracker
	// test i
	if i != nil {
		if i.v2api != nil {
			connectionTracker = i.v2api.StatsService()
		}
		return speedtest.UrlTest(boxapi.CreateProxyHttpClient(i.Box, connectionTracker), link, timeout, speedtest.UrlTestStandard_RTT)
	}
	// test direct
	main := currentMainInstance()
	if main == nil {
		return speedtest.UrlTest(boxapi.CreateProxyHttpClient(nil, nil), link, timeout, speedtest.UrlTestStandard_RTT)
	}
	// test mainInstance
	if main.v2api != nil {
		connectionTracker = main.v2api.StatsService()
	}
	return speedtest.UrlTest(boxapi.CreateProxyHttpClient(main.Box, connectionTracker), link, timeout, speedtest.UrlTestStandard_RTT)
}

var protectCloser io.Closer

func goServeProtect(start bool) {
	if protectCloser != nil {
		protectCloser.Close()
		protectCloser = nil
	}
	if start {
		protectCloser = protect_server.ServeProtect("protect_path", false, 0, func(fd int) {
			intfBox.AutoDetectInterfaceControl(int32(fd))
		})
	}
}
