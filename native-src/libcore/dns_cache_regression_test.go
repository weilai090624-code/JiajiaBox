package libcore

import (
	"bytes"
	"github.com/sagernet/sing-box/option"
	"os"
	"path/filepath"
	"strings"
	"testing"
)

func TestPredefinedDNSCacheCompatibility(t *testing.T) {
	for _, name := range []string{"legacy-input", "modern-input", "legacy-java", "modern-java"} {
		t.Run(name, func(t *testing.T) {
			data, err := os.ReadFile(filepath.Join("../../build/rebuilt-dns-fix-244/fixtures", name+".json"))
			if err != nil {
				t.Fatal(err)
			}
			ctx := testConfigContext()
			if name == "modern-input" {
				var raw option.Options
				err = raw.UnmarshalJSONContext(ctx, data)
				if err == nil || !strings.Contains(err.Error(), `unknown field "disable_cache"`) {
					t.Fatalf("did not reproduce original failure: %v", err)
				}
				t.Logf("reproduced: %v", err)
			}
			opts, err := decodeClientConfig(ctx, string(data))
			if err != nil {
				t.Fatal(err)
			}
			if strings.HasSuffix(name, "-java") && !bytes.Equal(opts.RawMessage, data) {
				t.Fatal("Java output required fallback conversion")
			}
			rules := opts.DNS.Rules
			if len(rules) != 4 {
				t.Fatalf("rule order/count changed: %d", len(rules))
			}
			if !rules[0].DefaultOptions.RouteOptions.DisableCache || rules[0].DefaultOptions.RouteOptions.RewriteTTL == nil {
				t.Fatal("upstream cache options lost")
			}
			if rules[2].DefaultOptions.Action != "predefined" {
				t.Fatal("block action changed")
			}
			box, err := NewSingBoxInstance(string(data), nil)
			if err != nil {
				t.Fatal(err)
			}
			if err = box.Start(); err != nil {
				box.Close()
				t.Fatal(err)
			}
			box.Close()
		})
	}
}
