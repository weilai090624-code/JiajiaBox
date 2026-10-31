package bundle

import (
	"context"
	"net"

	"github.com/sagernet/sing-box/protocol/nowhere/core/nw2/wire"
)

var _ func(*CarrierBundle, context.Context, wire.Target) (net.PacketConn, error) = (*CarrierBundle).OpenUDP
var _ func(*CarrierBundle, context.Context, wire.Target, []byte) (net.Conn, error) = (*CarrierBundle).OpenTCPWithPayload
var _ func(*CarrierBundle, context.Context, wire.Target, uint8) (net.Conn, error) = (*CarrierBundle).OpenTCPWithHops
var _ func(*CarrierBundle, context.Context, wire.Target, uint8) (net.PacketConn, error) = (*CarrierBundle).OpenUDPWithHops
