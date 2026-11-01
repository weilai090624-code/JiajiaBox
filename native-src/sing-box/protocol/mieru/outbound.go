package mieru

import (
	"context"
	"net"
	"strings"

	"github.com/enfein/mieru/v3/apis/client"
	apicommon "github.com/enfein/mieru/v3/apis/common"
	"github.com/enfein/mieru/v3/pkg/appctl/appctlpb"
	"github.com/sagernet/sing-box/adapter"
	"github.com/sagernet/sing-box/adapter/outbound"
	"github.com/sagernet/sing-box/common/dialer"
	C "github.com/sagernet/sing-box/constant"
	"github.com/sagernet/sing-box/log"
	"github.com/sagernet/sing-box/option"
	"github.com/sagernet/sing/common"
	E "github.com/sagernet/sing/common/exceptions"
	M "github.com/sagernet/sing/common/metadata"
	N "github.com/sagernet/sing/common/network"
	"google.golang.org/protobuf/proto"
)

func RegisterOutbound(registry *outbound.Registry) {
	outbound.Register[option.MieruOutboundOptions](registry, C.TypeMieru, NewOutbound)
}

type Outbound struct {
	outbound.Adapter
	logger log.ContextLogger
	client client.Client
}

type mieruDialer struct {
	dialer N.Dialer
}

func (d *mieruDialer) DialContext(ctx context.Context, network string, address string) (net.Conn, error) {
	return d.dialer.DialContext(ctx, N.NetworkTCP, M.ParseSocksaddr(address))
}

type mieruPacketDialer struct {
	dialer N.Dialer
}

func (d *mieruPacketDialer) ListenPacket(ctx context.Context, network string, laddr string, raddr string) (net.PacketConn, error) {
	return d.dialer.ListenPacket(ctx, M.ParseSocksaddr(raddr))
}

func NewOutbound(ctx context.Context, router adapter.Router, logger log.ContextLogger, tag string, options option.MieruOutboundOptions) (adapter.Outbound, error) {
	if options.Username == "" || options.Password == "" {
		return nil, E.New("mieru: missing username or password")
	}
	outboundDialer, err := dialer.New(ctx, options.DialerOptions, options.ServerIsDomain())
	if err != nil {
		return nil, err
	}
	profile := &appctlpb.ClientProfile{
		ProfileName: proto.String(tag),
		User: &appctlpb.User{
			Name:     proto.String(options.Username),
			Password: proto.String(options.Password),
		},
		Mtu: proto.Int32(options.MTU),
	}
	if profile.GetMtu() <= 0 {
		profile.Mtu = proto.Int32(1400)
	}
	switch strings.ToUpper(options.Protocol) {
	case "", "TCP":
		profile.Servers = []*appctlpb.ServerEndpoint{{
			IpAddress:    proto.String(options.Server),
			PortBindings: []*appctlpb.PortBinding{{Port: proto.Int32(int32(options.ServerPort)), Protocol: appctlpb.TransportProtocol_TCP.Enum()}},
		}}
		if net.ParseIP(options.Server) == nil {
			profile.Servers[0].IpAddress = nil
			profile.Servers[0].DomainName = proto.String(options.Server)
		}
	case "UDP":
		profile.Servers = []*appctlpb.ServerEndpoint{{
			IpAddress:    proto.String(options.Server),
			PortBindings: []*appctlpb.PortBinding{{Port: proto.Int32(int32(options.ServerPort)), Protocol: appctlpb.TransportProtocol_UDP.Enum()}},
		}}
		if net.ParseIP(options.Server) == nil {
			profile.Servers[0].IpAddress = nil
			profile.Servers[0].DomainName = proto.String(options.Server)
		}
	default:
		return nil, E.New("mieru: unsupported transport protocol: ", options.Protocol)
	}
	if options.Multiplexing != "" {
		level, ok := appctlpb.MultiplexingLevel_value["MULTIPLEXING_"+strings.ToUpper(options.Multiplexing)]
		if !ok {
			return nil, E.New("mieru: unknown multiplexing level: ", options.Multiplexing)
		}
		profile.Multiplexing = &appctlpb.MultiplexingConfig{Level: appctlpb.MultiplexingLevel(level).Enum()}
	}
	switch strings.ToUpper(options.HandshakeMode) {
	case "", "DEFAULT":
	case "STANDARD":
		profile.HandshakeMode = appctlpb.HandshakeMode_HANDSHAKE_STANDARD.Enum()
	case "NO_WAIT":
		profile.HandshakeMode = appctlpb.HandshakeMode_HANDSHAKE_NO_WAIT.Enum()
	default:
		return nil, E.New("mieru: unknown handshake mode: ", options.HandshakeMode)
	}
	mieruClient := client.NewClient()
	err = mieruClient.Store(&client.ClientConfig{
		Profile:      profile,
		Dialer:       &mieruDialer{dialer: outboundDialer},
		PacketDialer: &mieruPacketDialer{dialer: outboundDialer},
	})
	if err != nil {
		return nil, E.Cause(err, "mieru: store client config")
	}
	if err = mieruClient.Start(); err != nil {
		return nil, E.Cause(err, "mieru: start client")
	}
	instance := &Outbound{
		Adapter: outbound.NewAdapterWithDialerOptions(C.TypeMieru, tag, options.Network.Build(), options.DialerOptions),
		logger:  logger,
		client:  mieruClient,
	}
	return instance, nil
}

func (h *Outbound) DialContext(ctx context.Context, network string, destination M.Socksaddr) (net.Conn, error) {
	ctx, metadata := adapter.ExtendContext(ctx)
	metadata.Outbound = h.Tag()
	metadata.Destination = destination
	conn, err := h.client.DialContext(ctx, destination)
	if err != nil {
		return nil, err
	}
	switch N.NetworkName(network) {
	case N.NetworkTCP:
		return conn, nil
	case N.NetworkUDP:
		return apicommon.NewPacketOverStreamTunnel(conn), nil
	default:
		common.Close(conn)
		return nil, E.Extend(N.ErrUnknownNetwork, network)
	}
}

func (h *Outbound) ListenPacket(ctx context.Context, destination M.Socksaddr) (net.PacketConn, error) {
	ctx, metadata := adapter.ExtendContext(ctx)
	metadata.Outbound = h.Tag()
	metadata.Destination = destination
	conn, err := h.client.DialContext(ctx, destination)
	if err != nil {
		return nil, err
	}
	return apicommon.NewPacketOverStreamTunnel(conn), nil
}

func (h *Outbound) Start(stage adapter.StartStage, scope *adapter.Scope) error {
	if stage != adapter.StartStateInitialize {
		return nil
	}
	scope.Add(func() error {
		return h.client.Stop()
	})
	return nil
}
