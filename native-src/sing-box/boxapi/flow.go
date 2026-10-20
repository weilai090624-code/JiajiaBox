package boxapi

import (
	"context"
	"github.com/sagernet/sing-box/adapter"
	tun "github.com/sagernet/sing-tun"
	"sync/atomic"
)

type statsFlow struct{ upload, download []*atomic.Int64 }

func (f *statsFlow) AttachFlow(tun.FlowHandle) {}
func (f *statsFlow) CountForward(n int) {
	for _, c := range f.upload {
		c.Add(int64(n))
	}
}
func (f *statsFlow) CountReverse(n int) {
	for _, c := range f.download {
		c.Add(int64(n))
	}
}
func (f *statsFlow) FlowEstablished()              {}
func (f *statsFlow) CloseFlow(tun.FlowCloseReason) {}
func (s *SbStatsService) RoutedFlow(ctx context.Context, metadata adapter.InboundContext, rule adapter.Rule, outbound adapter.Outbound) tun.FlowTracker {
	f := &statsFlow{}
	s.access.Lock()
	defer s.access.Unlock()
	tags := map[string]string{"inbound": metadata.Inbound, "user": metadata.User}
	if outbound != nil {
		tags["outbound"] = outbound.Tag()
	}
	for kind, tag := range tags {
		enabled := s.inbounds[tag]
		if kind == "user" {
			enabled = s.users[tag]
		}
		if kind == "outbound" {
			enabled = s.outbounds[tag]
		}
		if tag != "" && enabled {
			f.upload = append(f.upload, s.loadOrCreateCounter(kind+">>>"+tag+">>>traffic>>>uplink"))
			f.download = append(f.download, s.loadOrCreateCounter(kind+">>>"+tag+">>>traffic>>>downlink"))
		}
	}
	return f
}
