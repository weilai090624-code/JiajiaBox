# JiajiaBox
JiajiaBox起源于一个高中生发现代理客户端五花八门却没有一款真正适合小白的代理客户端。没法满足所有人的需求与喜好，尽可能做最简单、最容易上手、最不需要折腾的代理客户端，尽可能把易上手做到极致。继承了NekoBox的极简风格与极强的兼容性，它是真正的真•开袋即食、开箱即用。它有什么优点？默认开启多源补全的 CNIP、CN 域名分流而非分应用分流，根据 IP、域名直接分流，绝大多数场景无需再做国内外分流，真正做到了开袋即食，后续也会做出更多的功能或分流的优化或扩展。有任何问题或建议请随时反馈
网站： jiajiabox.linjiajia.top

## 最新版本

当前源码与成品对应 `0.0.5 beta`，内部版本号 `531`，包名 `com.linjiajia.top`，架构 `arm64-v8a`。

- 成品：[JiajiaBox-0.0.5-beta-531-mx-nowhere.apk](https://github.com/weilai090624-code/JiajiaBox/releases/tag/v0.0.5-beta.531)（GitHub Releases 附件）
- SHA-256：`3be1ae16c59c5c5186cbbcc872070e750b447add28df4dc116201e56022365b3`
- Nowhere 协议显示名修正为 `nowhere·udp` / `nowhere·tcp`；旧的 `newhere://` 链接仍作为兼容别名接受。
- 新增 MX 协议支持：Mundo 伴生核心（mc1 / mundordp / jatp），`libmundoproxy.so` / `libtun2socks.so` 经作者同意（2026-11-06）原样分发；详见 [MUNDO-INTEGRATION.md](MUNDO-INTEGRATION.md)。
- 订阅适配：所有订阅拉取统一使用 `JiajiaBox/Android/0.0.5`；私有 DoH 使用标准 sing-box JSON 的 `dns.servers` / `dns.rules` 下发，客户端现有 `SubscriptionDns` 直接应用，说明见 [SUBSCRIPTION-SINGBOX.md](SUBSCRIPTION-SINGBOX.md)。
- 版本检查：打开应用后约 300ms 直接检查更新，不依赖节点连接；更新弹窗新增“跳过此版本”。
- 安全加固：发行包关闭 `debuggable`；默认禁止明文 HTTP，仅放行 `localhost` 与 `127.0.0.1`，保留 Clash API / Yacd。
- 线程池收敛：9 个界面类各自创建的单线程池合并为进程级 4 线程共享池，静态常驻线程从 9 个降到 4 个。
- 共享快照轮询：`ConnectionSnapshotCache` 窗口调整为 2 秒，连接卡与地球卡共享同一份 `/connections` 数据；`/globe-egress` 按 4 秒复用结果。
- 安装兼容：差分打包默认关闭 APK v4 签名旁车文件，避免部分 OEM 安装器把 `.idsig` 误判为签名错误。
- “关于”页显示内部版本号，本版为 `0.0.5 beta 531`。
- 保留应用图标与启动动画、台湾地区节点旗帜、延迟颜色阈值、Clash API / Yacd、VLESS Encryption（`mlkem768x25519plus`）等既有改动。
- 保留 Nowhere、Trojan-Go、Mieru 与内置 `gvt1` 分流；xhttp 仍不在支持范围。
- MX 协议通过可选的 Mundo 伴生核心接入；Mundo 作者已同意（2026-11-06）原样分发两个 `.so`，见 [MUNDO-PERMISSION.md](MUNDO-PERMISSION.md) 与 [MUNDO-INTEGRATION.md](MUNDO-INTEGRATION.md)。
- 内核版本：`1.14.3-Jiajia-7`。

完整的协议与模板格式清单见 [PROTOCOLS.md](PROTOCOLS.md)。

## MX 协议与 Mundo 伴生核心

JiajiaBox 的 MX 支持不是把 MX 私有传输重写进 sing-box，而是：

1. 用官方闭源 `libmundoproxy.so` + `libtun2socks.so` 启动一个本地 SOCKS 伴生核心；
2. sing-box 只把选中的 MX 节点出站指向该 SOCKS，TUN、路由、DNS 仍由 sing-box 负责；
3. 应用自身被排除出 VPN，避免伴生核连节点的流量被自己的 TUN 抓走形成回环。

许可证边界：

- `MundoCore` / `MundoProbe` / `MundoEnsure` 与相关 smali 补丁是 JiajiaBox 原创，GPL-3.0；
- `libmundoproxy.so` / `libtun2socks.so` 是 Mundo 的闭源组件，**不是 GPL-3.0**，原样使用；
- Mundo 作者已同意（2026-11-06）在公开 APK 中原样打包并分发这两个 `.so`；它们仍不属于 GPL-3.0，详见 [MUNDO-PERMISSION.md](MUNDO-PERMISSION.md)；
- 接入方式参考了 GPL-3.0 的 [FlClash-FOSS](https://github.com/Mundo-Connect/FlClash-FOSS)。

详见 [MUNDO-INTEGRATION.md](MUNDO-INTEGRATION.md)、[MUNDO-PERMISSION.md](MUNDO-PERMISSION.md)、[MUNDO-PERMISSION-REQUEST.md](MUNDO-PERMISSION-REQUEST.md) 和 `assets/licenses/Mundo-NOTICE.txt`。

JiajiaBox 不限制用户使用 Mundo 官方客户端：订阅中的 MX 节点可以导出/导入到官方客户端使用。如果 JiajiaBox 提供订阅链接，只应包含 Mundo 的协议（MX），不混入其他协议。

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

MX / Mundo 伴生核心：

```text
MX（mc1 / mundordp / jatp）
```

说明：MX 不是内置 Go 出站，而是可选的 Mundo 闭源伴生核心（详见上文“MX 协议与 Mundo 伴生核心”）。

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
- `release/`：早期随源码提交的历史 APK 与校验文件；457 及以后版本只作为 GitHub Releases 附件发布，不提交 APK 到 git。


## 构建与合规

- 构建说明：[BUILDING.md](BUILDING.md)
- 修改说明：[MODIFICATIONS.md](MODIFICATIONS.md)
- 第三方组件与许可证：[THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md)
- 许可证全文：[LICENSE](LICENSE)


## 许可证

JiajiaBox 原创代码及本项目修改部分采用 GNU General Public License v3.0（GPL-3.0）发布，完整条款见 [LICENSE](LICENSE)。随项目分发的上游组件（sing-box、libcore、libneko、Mieru 等）仍适用其各自许可证；详见 `assets/licenses/`。

这个项目和我一样带着许多偏执
