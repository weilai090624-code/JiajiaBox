package option

// MieruOutboundOptions configures a native Mieru client outbound.
type MieruOutboundOptions struct {
	DialerOptions
	ServerOptions
	Username       string      `json:"username"`
	Password       string      `json:"password"`
	Protocol       string      `json:"protocol,omitempty"` // TCP or UDP
	MTU            int32       `json:"mtu,omitempty"`
	Multiplexing   string      `json:"multiplexing,omitempty"`
	HandshakeMode  string      `json:"handshake_mode,omitempty"`
	Network        NetworkList `json:"network,omitempty"`
}
