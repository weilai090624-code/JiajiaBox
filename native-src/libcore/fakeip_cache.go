package libcore

import (
	C "github.com/sagernet/sing-box/constant"
	"github.com/sagernet/sing-box/option"
)

// Apps retain synthetic DNS answers after a VPN reconnect. Their address/domain
// map must survive the core instance as well. Ordinary DNS response caching is
// left unchanged; only FakeIP mappings are persisted in the private working dir.
func ensureFakeIPCache(options *option.Options) bool {
	if options.DNS == nil {
		return false
	}
	active := false
	for _, server := range options.DNS.Servers {
		if server.Type == C.DNSTypeFakeIP {
			active = true
			break
		}
	}
	if !active {
		return false
	}
	// Node speed tests can start several independent, TUN-less cores. Do not
	// make those transient cores contend for the VPN's shared mapping database.
	hasTUN := false
	for _, inbound := range options.Inbounds {
		if inbound.Type == C.TypeTun {
			hasTUN = true
			break
		}
	}
	if !hasTUN && (options.Experimental == nil || options.Experimental.CacheFile == nil) {
		return false
	}
	if options.Experimental == nil {
		options.Experimental = &option.ExperimentalOptions{}
	}
	if options.Experimental.CacheFile == nil {
		options.Experimental.CacheFile = &option.CacheFileOptions{Path: "jiajia-cache.db"}
	}
	options.Experimental.CacheFile.Enabled = true
	options.Experimental.CacheFile.StoreFakeIP = true
	return true
}
