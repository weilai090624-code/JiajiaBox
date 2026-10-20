package rule

import (
	"bytes"
	"context"
	"fmt"
	"github.com/sagernet/sing-box/adapter"
	"github.com/sagernet/sing-box/option"
	"github.com/sagernet/sing/common/json"
	"os"
	"path/filepath"
	"testing"
)

func cacheFixture() []byte {
	var b bytes.Buffer
	b.WriteString(`{"version":5,"rules":[{"domain_suffix":[`)
	for i := 0; i < 1000; i++ {
		if i > 0 {
			b.WriteByte(',')
		}
		fmt.Fprintf(&b, `"host%d.test"`, i)
	}
	b.WriteString(`]}]}`)
	return b.Bytes()
}
func TestSourceCacheCorruptionAndInvalidation(t *testing.T) {
	path := filepath.Join(t.TempDir(), "rules.json")
	content := cacheFixture()
	first, err := readCachedRuleSource(content, path)
	if err != nil {
		t.Fatal(err)
	}
	again, err := readCachedRuleSource(content, path)
	if err != nil {
		t.Fatal(err)
	}
	a, _ := first.Upgrade()
	b, _ := again.Upgrade()
	for _, set := range []option.PlainRuleSet{a, b} {
		rule, err := NewHeadlessRule(context.Background(), set.Rules[0])
		if err != nil {
			t.Fatal(err)
		}
		if !rule.Match(&adapter.InboundContext{Domain: "host0.test"}) || rule.Match(&adapter.InboundContext{Domain: "foreign.invalid"}) {
			t.Fatal("compiled cache changed rule matching")
		}
	}
	if len(a.Rules) != len(b.Rules) {
		t.Fatal("cache changed rule count")
	}
	cache := path + ".jiajia-1.14.3-v5.cache"
	if _, err = os.Stat(cache); err != nil {
		t.Fatal("compiled cache missing", err)
	}
	os.WriteFile(cache, []byte("corrupt"), 0600)
	if _, err = readCachedRuleSource(content, path); err != nil {
		t.Fatal("corrupt cache prevented source fallback", err)
	}
	changed := bytes.Replace(content, []byte("host0.test"), []byte("new0.test"), 1)
	if _, err = readCachedRuleSource(changed, path); err != nil {
		t.Fatal(err)
	}
	// The changed source hash must replace the cached representation.
	cached, _ := os.ReadFile(cache)
	if len(cached) < 32 {
		t.Fatal("cache not rebuilt")
	}
	if _, err = readCachedRuleSource([]byte(`{"version":5,"rules":broken}`), path); err == nil {
		t.Fatal("invalid source accepted")
	}
}
func BenchmarkRuleSourceJSON(b *testing.B) {
	data := cacheFixture()
	b.ReportAllocs()
	for i := 0; i < b.N; i++ {
		if _, err := json.UnmarshalExtended[option.PlainRuleSetCompat](data); err != nil {
			b.Fatal(err)
		}
	}
}
func BenchmarkRuleSourceCached(b *testing.B) {
	data := cacheFixture()
	path := filepath.Join(b.TempDir(), "rules.json")
	if _, err := readCachedRuleSource(data, path); err != nil {
		b.Fatal(err)
	}
	b.ResetTimer()
	b.ReportAllocs()
	for i := 0; i < b.N; i++ {
		if _, err := readCachedRuleSource(data, path); err != nil {
			b.Fatal(err)
		}
	}
}
