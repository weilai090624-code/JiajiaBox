# JiajiaBox
JiajiaBox起源于一个高中生发现代理客户端五花八门却没有一款真正适合小白的代理客户端。没法满足所有人的需求与喜好，尽可能做最简单、最容易上手、最不需要折腾的代理客户端，尽可能把易上手做到极致。继承了NekoBox的极简风格与极强的兼容性，它是真正的真•开袋即食、开箱即用。它有什么优点？默认开启多源补全的 CNIP、CN 域名分流而非分应用分流，根据 IP、域名直接分流，绝大多数场景无需再做国内外分流，真正做到了开袋即食，后续也会做出更多的功能或分流的优化或扩展。有任何问题或建议请随时反馈
网站： jiajiabox.linjiajia.top

## 最新版本

当前源码与成品对应 `0.0.5 beta`，内部版本号 `470`，包名 `com.linjiajia.top`，架构 `arm64-v8a`。

- 成品：[JiajiaBox-0.0.5-beta-470-smooth-dialog.apk](https://github.com/weilai090624-code/JiajiaBox/releases/tag/v0.0.5-beta.470)（GitHub Releases 附件）
- SHA-256：`0b58dafe3c2591f4f2a124bfc04c915da717435501a9147d229caf858af36b6e`
- 更新应用图标与启动 Logo。
- 台湾地区节点优先按名称中的地区信息判定，支持台湾地名、运营商及 `TW` / `Taiwan` / `Taipei` / `ROC` / `TWN` 等写法；节点名中的旗帜同步显示为台湾旗帜。
- “关于”页显示内部版本号，本版为 `0.0.5 beta 470`。
- AI 分流、Telegram 分流、节点测速、IP 质量四个入口的弹窗统一使用同一套形变动画，展开与关闭保持一致。
- 协议与内核未改动，与 457 相同（含 Nowhere、Trojan-Go、Mieru）。
- 保留内置分流：`gvt1-cn.com` / `gvt1.com`（Google Play 下载重定向与 CDN）在 CN 直连规则之前强制走主代理。
- 已移除 MX 协议，暂不适配。
- 内核版本：`1.14.3-Jiajia-7`。

完整的协议与模板格式清单见 [PROTOCOLS.md](PROTOCOLS.md)。

## 支持的协议

内置代理：

```text
VLESS
VMess
Trojan
Shadowsocks（SS）
SOCKS
SOCKS4
SOCKS4A
SOCKS5
HTTP
AnyTLS
ShadowTLS
SSH
Tor
Hysteria
Hysteria2（hy2）
TUIC
WireGuard
Nowhere
Trojan-Go
Mieru
```

说明：
- Trojan-Go 支持 TLS / WS / GRPC；不支持 trojan-go 特有的 smux、Shadowsocks 加密、plugin。
- Mieru 链接格式：`mieru://username:password@host:port?protocol=TCP&mtu=1400&multiplexing=low&handshake=standard#name`。

分组/辅助：

```text
Direct
Block
DNS
Selector
URLTest
```

入站：

```text
TUN
Redirect
TProxy
SOCKS
HTTP
Mixed
Direct
```

导入方式：

```text
YAML（Clash / Clash Meta）
JSON（sing-box / 单协议 / 自定义配置）
纯文本（每行一个节点链接）
Base64 / URL-safe Base64（链接列表）
单节点信息（分享链接或手动填写）
订阅 URL（http / https）
```

完整的传输层、DNS、链接模板与订阅模板清单见 [PROTOCOLS.md](PROTOCOLS.md)。

## 源码结构

- `smali*`、`res/`、`assets/`、`AndroidManifest.xml`、`apktool.yml`：与当前发布版 APK 对应的完整解包源码。
- `native-src/`：sing-box、libcore、libneko 与 JNI 绑定源码，包含 Nowhere NW3。
- `nowhere/`：Nowhere 链接导入、测试与打包脚本，以及实现说明。
- `addon-src/`：项目附加 Java 源码。
- `release/`：对应版本的 APK 与校验文件。


## 构建与合规

- 构建说明：[BUILDING.md](BUILDING.md)
- 修改说明：[MODIFICATIONS.md](MODIFICATIONS.md)
- 第三方组件与许可证：[THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md)
- 许可证全文：[LICENSE](LICENSE)


## 许可证

JiajiaBox 原创代码及本项目修改部分采用 GNU General Public License v3.0（GPL-3.0）发布，完整条款见 [LICENSE](LICENSE)。随项目分发的上游组件（sing-box、libcore、libneko、Mieru 等）仍适用其各自许可证；详见 `assets/licenses/`。

这个项目和我一样带着许多偏执
