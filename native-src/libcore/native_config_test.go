package libcore

import (
	"bytes"
	"context"
	box "github.com/sagernet/sing-box"
	"github.com/sagernet/sing-box/adapter/certificate"
	"github.com/sagernet/sing-box/option"
	"os"
	"path/filepath"
	"testing"
)

func testConfigContext() context.Context {
	return box.Context(context.Background(), nekoboxAndroidInboundRegistry(), nekoboxAndroidOutboundRegistry(), nekoboxAndroidEndpointRegistry(), nekoboxAndroidDNSTransportRegistry(nil), nekoboxAndroidServiceRegistry(), certificate.NewRegistry())
}
func TestJavaGeneratedConfigNativeDecode(t *testing.T) {
	paths, err := filepath.Glob("../../build/rebuilt-performance-241/native-fixtures/*.json")
	if err != nil || len(paths) < 4 {
		t.Fatalf("missing generated fixtures: %v", err)
	}
	for _, path := range paths {
		data, err := os.ReadFile(path)
		if err != nil {
			t.Fatal(err)
		}
		options, err := decodeClientConfig(testConfigContext(), string(data))
		if err != nil {
			t.Fatalf("%s: %v", path, err)
		}
		if !bytes.Equal(options.RawMessage, data) {
			t.Fatalf("%s unexpectedly used legacy converter", path)
		}
		b, err := NewSingBoxInstance(string(data), nil)
		if err != nil {
			t.Fatalf("%s: %v", path, err)
		}
		b.Close()
	}
}
func benchmarkNativeConfig(b *testing.B, compat bool) {
	data, err := os.ReadFile("../../build/rebuilt-performance-241/native-fixtures/large-rules.json")
	if err != nil {
		b.Fatal(err)
	}
	raw := string(data)
	ctx := testConfigContext()
	b.ReportAllocs()
	b.ResetTimer()
	for i := 0; i < b.N; i++ {
		if compat {
			modern, err := upgradeClientConfig(raw)
			if err != nil {
				b.Fatal(err)
			}
			var o option.Options
			if err = o.UnmarshalJSONContext(ctx, []byte(modern)); err != nil {
				b.Fatal(err)
			}
		} else {
			if _, err := decodeClientConfig(ctx, raw); err != nil {
				b.Fatal(err)
			}
		}
	}
}
func BenchmarkConfigNative(b *testing.B)        { benchmarkNativeConfig(b, false) }
func BenchmarkConfigCompatibility(b *testing.B) { benchmarkNativeConfig(b, true) }
