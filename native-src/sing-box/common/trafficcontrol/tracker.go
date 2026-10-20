package trafficcontrol

import (
	"context"
	"net"
	"sync/atomic"
	"time"

	"github.com/sagernet/sing-box/adapter"
	"github.com/sagernet/sing-tun"
	"github.com/sagernet/sing/common"
	"github.com/sagernet/sing/common/bufio"
	N "github.com/sagernet/sing/common/network"

	"github.com/gofrs/uuid/v5"
)

type TrackerMetadata struct {
	ID           uuid.UUID
	Metadata     adapter.InboundContext
	CreatedAt    time.Time
	ClosedAt     time.Time
	Upload       *atomic.Int64
	Download     *atomic.Int64
	Chain        []string
	Rule         adapter.Rule
	Outbound     string
	OutboundType string
	appRecorder  *AppTrafficRecorder
}

type Tracker interface {
	Metadata() *TrackerMetadata
	Close() error
}

func (m *Manager) RoutedConnection(ctx context.Context, conn net.Conn, metadata adapter.InboundContext, matchedRule adapter.Rule, matchOutbound adapter.Outbound) net.Conn {
	upload := new(atomic.Int64)
	download := new(atomic.Int64)
	trackerMetadata := m.newTrackerMetadata(metadata, matchedRule, matchOutbound, upload, download)
	tracker := &connTracker{
		ExtendedConn: bufio.NewCounterConn(conn, []N.CountFunc{func(n int64) { upload.Add(n); trackerMetadata.appRecorder.Add(n, 0) }}, []N.CountFunc{func(n int64) { download.Add(n); trackerMetadata.appRecorder.Add(0, n) }}),
		metadata:     trackerMetadata,
		manager:      m,
	}
	m.join(tracker)
	return tracker
}

func (m *Manager) RoutedPacketConnection(ctx context.Context, conn N.PacketConn, metadata adapter.InboundContext, matchedRule adapter.Rule, matchOutbound adapter.Outbound) N.PacketConn {
	upload := new(atomic.Int64)
	download := new(atomic.Int64)
	trackerMetadata := m.newTrackerMetadata(metadata, matchedRule, matchOutbound, upload, download)
	tracker := &packetConnTracker{
		PacketConn: bufio.NewCounterPacketConn(conn, []N.CountFunc{func(n int64) { upload.Add(n); trackerMetadata.appRecorder.Add(n, 0) }}, []N.CountFunc{func(n int64) { download.Add(n); trackerMetadata.appRecorder.Add(0, n) }}),
		metadata:   trackerMetadata,
		manager:    m,
	}
	m.join(tracker)
	return tracker
}

func (m *Manager) RoutedFlow(ctx context.Context, metadata adapter.InboundContext, matchedRule adapter.Rule, matchOutbound adapter.Outbound) tun.FlowTracker {
	return &flowTracker{
		metadata: m.newTrackerMetadata(metadata, matchedRule, matchOutbound, new(atomic.Int64), new(atomic.Int64)),
		manager:  m,
	}
}

func (m *Manager) newTrackerMetadata(metadata adapter.InboundContext, matchedRule adapter.Rule, matchOutbound adapter.Outbound, upload *atomic.Int64, download *atomic.Int64) TrackerMetadata {
	id, _ := uuid.NewV4()
	var (
		chain        []string
		next         string
		outbound     string
		outboundType string
	)
	if matchOutbound != nil {
		next = matchOutbound.Tag()
	} else {
		next = m.outbound.Default().Tag()
	}
	for {
		detour, loaded := m.outbound.Outbound(next)
		if !loaded {
			break
		}
		chain = append(chain, next)
		outbound = detour.Tag()
		outboundType = detour.Type()
		outboundGroup, isGroup := detour.(adapter.OutboundGroup)
		if !isGroup {
			break
		}
		next = outboundGroup.Now()
	}
	var recorder *AppTrafficRecorder
	if outboundType != "" && outboundType != "direct" && outboundType != "block" && outboundType != "dns" {
		name := ""
		if metadata.ProcessInfo != nil && len(metadata.ProcessInfo.AndroidPackageNames) > 0 {
			name = metadata.ProcessInfo.AndroidPackageNames[0]
		}
		recorder = NewAppTrafficRecorder(name)
	}
	return TrackerMetadata{
		appRecorder:  recorder,
		ID:           id,
		Metadata:     metadata,
		CreatedAt:    time.Now(),
		Upload:       upload,
		Download:     download,
		Chain:        common.Reverse(chain),
		Rule:         matchedRule,
		Outbound:     outbound,
		OutboundType: outboundType,
	}
}

type connTracker struct {
	N.ExtendedConn
	metadata TrackerMetadata
	manager  *Manager
}

func (t *connTracker) Metadata() *TrackerMetadata {
	return &t.metadata
}

func (t *connTracker) Close() error {
	t.manager.leave(t)
	return t.ExtendedConn.Close()
}

func (t *connTracker) Upstream() any {
	return t.ExtendedConn
}

func (t *connTracker) ReaderReplaceable() bool {
	return true
}

func (t *connTracker) WriterReplaceable() bool {
	return true
}

var (
	_ Tracker         = (*flowTracker)(nil)
	_ tun.FlowTracker = (*flowTracker)(nil)
)

type flowTracker struct {
	metadata TrackerMetadata
	manager  *Manager
	handle   tun.FlowHandle
}

func (t *flowTracker) Metadata() *TrackerMetadata {
	return &t.metadata
}

func (t *flowTracker) AttachFlow(handle tun.FlowHandle) {
	t.handle = handle
	t.manager.join(t)
}

func (t *flowTracker) CountForward(n int) {
	t.metadata.Upload.Add(int64(n))
	t.metadata.appRecorder.Add(int64(n), 0)
}

func (t *flowTracker) CountReverse(n int) {
	t.metadata.Download.Add(int64(n))
	t.metadata.appRecorder.Add(0, int64(n))
}

func (t *flowTracker) FlowEstablished() {
}

func (t *flowTracker) CloseFlow(reason tun.FlowCloseReason) {
	t.manager.leave(t)
}

func (t *flowTracker) Close() error {
	handle := t.handle
	if handle != nil {
		handle.CloseFlow()
	} else {
		t.manager.leave(t)
	}
	return nil
}

type packetConnTracker struct {
	N.PacketConn
	metadata TrackerMetadata
	manager  *Manager
}

func (t *packetConnTracker) Metadata() *TrackerMetadata {
	return &t.metadata
}

func (t *packetConnTracker) Close() error {
	t.manager.leave(t)
	return t.PacketConn.Close()
}

func (t *packetConnTracker) Upstream() any {
	return t.PacketConn
}

func (t *packetConnTracker) ReaderReplaceable() bool {
	return true
}

func (t *packetConnTracker) WriterReplaceable() bool {
	return true
}

func trackerRecord(metadata adapter.InboundContext, outboundType string, upload, download int64) {
	if outboundType == "direct" || outboundType == "block" || outboundType == "dns" {
		return
	}
	name := ""
	if metadata.ProcessInfo != nil && len(metadata.ProcessInfo.AndroidPackageNames) > 0 {
		name = metadata.ProcessInfo.AndroidPackageNames[0]
	}
	RecordAppTraffic(name, upload, download)
}
