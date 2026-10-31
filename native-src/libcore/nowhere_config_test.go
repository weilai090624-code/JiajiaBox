package libcore

import (
 "fmt"
 "testing"
)

func TestNowhereOutboundConfigs(t *testing.T) {
 for _, network := range []string{"tcp", "udp"} {
  t.Run(network, func(t *testing.T) {
   cfg := fmt.Sprintf(`{"outbounds":[{"type":"nowhere","tag":"proxy","server":"example.org","server_port":443,"password":"0123456789abcdef0123456789abcdef","net":%q,"morph":true,"tls":{"enabled":true,"server_name":"example.org"}}],"route":{"final":"proxy"}}`, network)
   if _, err := decodeClientConfig(testConfigContext(), cfg); err != nil { t.Fatalf("decode: %v", err) }
   box, err := NewSingBoxInstance(cfg, nil); if err != nil { t.Fatalf("create: %v", err) }; box.Close()
  })
 }
}
