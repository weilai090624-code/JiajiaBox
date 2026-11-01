# JiajiaBox
JiajiaBox起源于一个高中生发现代理客户端五花八门却没有一款真正适合小白的代理客户端。没法满足所有人的需求与喜好，尽可能做最简单、最容易上手、最不需要折腾的代理客户端，尽可能把易上手做到极致。继承了NekoBox的极简风格与极强的兼容性，它是真正的真•开袋即食、开箱即用。它有什么优点？默认开启多源补全的 CNIP、CN 域名分流而非分应用分流，根据 IP、域名直接分流，绝大多数场景无需再做国内外分流，真正做到了开袋即食，后续也会做出更多的功能或分流的优化或扩展。有任何问题或建议请随时反馈
网站： jiajiabox.linjiajia.top

## 最新版本

当前源码与成品对应 `0.0.5 beta`，内部版本号 `455`，包名 `com.linjiajia.top`，架构 `arm64-v8a`。

- 成品：`release/JiajiaBox-0.0.5-beta-455-no-mx.apk`
- SHA-256：`0e77b9810791bb5ea0d1a0ced64af52cb97581c7765556e9d167ab6fc683f831`
- 基线：451 回退包（449 稳定内容）
- 保留 Nowhere 客户端出站：支持 NW3 TCP/TLS 与 UDP/QUIC（含 Morph）。
- 保留内置分流：`gvt1-cn.com` / `gvt1.com`（Google Play 下载重定向与 CDN）在 CN 直连规则之前强制走主代理。
- 链接导入与订阅拉取同时兼容 `nowhere://` 和 `newhere://`。
- 节点类型标签：`nowhere` / `newhere` 按 `net` 显示 `newhere·tcp` 或 `newhere·udp`，其他自定义 sing-box 类型保持原标签。
- 已移除 MX 协议：`mx://`、`jatp://`、`mc1`、`mundordp`、`xhttp(jatp)` 桥接、Mundoproxy 伴侣内核与 `:mundo` 进程。
- 去除对 MX 协议的实验性接入，暂不对 MX 协议适配。
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
```

插件/外部内核：

```text
Naive
Mieru
Trojan-Go
Neko 插件协议
```

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

说明：SSR、Snell 等未在主解析器/内核中确认，需第三方插件或手动配置。

完整的传输层、DNS、链接模板与订阅模板清单见 [PROTOCOLS.md](PROTOCOLS.md)。

## 源码结构

- `smali*`、`res/`、`assets/`、`AndroidManifest.xml`、`apktool.yml`：与 455 APK 对应的完整解包源码。
- `native-src/`：sing-box、libcore、libneko 与 JNI 绑定源码，包含 Nowhere NW3。
- `nowhere/`：Nowhere 链接导入、测试与打包脚本，以及实现说明。
- `addon-src/`：项目附加 Java 源码。
- `release/`：对应版本的 APK 与校验文件。

本仓库是 apktool 解包后的 Android 工程，不是完整的原始 Gradle 工程；重新打包使用 apktool，签名使用 apksigner。签名私钥不随仓库上传。

## 稳定回退包

如果需要回退到移除 MX 之前的稳定版本，可使用基于 449 的回退包：

- 版本：`451`（versionCode 451）
- APK：`release/JiajiaBox-0.0.5-beta-451-rollback-449.apk`
- SHA-256：`c2e64852fb94d885e058873ae90e6135860e7d9643100613f8239b7eef6d2404`
- 内容：448 的原生 Go MX + 449 的 gvt1 规则；不包含 450 的 `:mundo` 伴侣内核桥接。
