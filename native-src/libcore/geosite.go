package libcore

import (
	"fmt"
	"path/filepath"

	geosites "github.com/sagernet/sing-box/common/geosite"
	C "github.com/sagernet/sing-box/constant"
	"github.com/sagernet/sing-box/nekoutils"
	"github.com/sagernet/sing-box/option"
)

type geosite struct {
	geositeReader *geosites.Reader
}

func (g *geosite) Open(path string) error {
	geositeReader, _, err := geosites.Open(path)
	g.geositeReader = geositeReader
	return err
}

func (g *geosite) Rules(code string) ([]option.HeadlessRule, error) {
	sourceSet, err := g.geositeReader.Read(code)
	if err != nil {
		return nil, fmt.Errorf("failed to read geosite code %s :%w", code, err)
	}

	var headlessRule option.DefaultHeadlessRule

	defaultRule := geosites.Compile(sourceSet)

	headlessRule.Domain = defaultRule.Domain
	headlessRule.DomainSuffix = defaultRule.DomainSuffix
	headlessRule.DomainKeyword = defaultRule.DomainKeyword
	headlessRule.DomainRegex = defaultRule.DomainRegex

	return []option.HeadlessRule{
		{
			Type:           C.RuleTypeDefault,
			DefaultOptions: headlessRule,
		},
	}, nil
}

func init() {
	nekoutils.GetGeoSiteHeadlessRules = func(name string) ([]option.HeadlessRule, error) {
		g := new(geosite)
		candidates := []string{
			filepath.Join(externalAssetsPath, "geosite.db"),
			filepath.Join(internalAssetsPath, "geosite.db"),
			"geosite.db",
		}
		var lastErr error
		opened := false
		for _, path := range candidates {
			if err := g.Open(path); err == nil {
				opened = true
				break
			} else {
				lastErr = err
			}
		}
		if !opened {
			return nil, lastErr
		}
		return g.Rules(name)
	}
}
