package rule

import (
	"bytes"
	"crypto/sha256"
	"os"
	"path/filepath"

	"github.com/sagernet/sing-box/common/srs"
	C "github.com/sagernet/sing-box/constant"
	"github.com/sagernet/sing-box/option"
	"github.com/sagernet/sing/common/json"
)

// Source files remain authoritative and watched. The cache contains their hash
// plus a compiled SRS representation. Corruption, read-only storage or an
// unsupported binary rule never prevents using the original source.
func readCachedRuleSource(content []byte, path string) (option.PlainRuleSetCompat, error) {
	cachePath := path + ".jiajia-1.14.3-v5.cache"
	hash := sha256.Sum256(content)
	if len(content) >= 4096 {
		if cached, err := os.ReadFile(cachePath); err == nil && len(cached) > len(hash) && bytes.Equal(hash[:], cached[:len(hash)]) {
			if rules, err := srs.Read(bytes.NewReader(cached[len(hash):]), false); err == nil {
				return rules, nil
			}
		}
	}
	rules, err := json.UnmarshalExtended[option.PlainRuleSetCompat](content)
	if err != nil || len(content) < 4096 {
		return rules, err
	}
	plain, err := rules.Upgrade()
	if err != nil {
		return rules, err
	}
	var binary bytes.Buffer
	if err = srs.Write(&binary, plain, C.RuleSetVersionCurrent); err != nil {
		return rules, nil
	}
	tmp, err := os.CreateTemp(filepath.Dir(path), ".jiajia-rules-*.tmp")
	if err != nil {
		return rules, nil
	}
	name := tmp.Name()
	defer os.Remove(name)
	if _, err = tmp.Write(hash[:]); err == nil {
		_, err = tmp.Write(binary.Bytes())
	}
	closeErr := tmp.Close()
	if err == nil && closeErr == nil {
		_ = os.Rename(name, cachePath)
	}
	return rules, nil
}
