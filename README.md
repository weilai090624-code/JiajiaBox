# JiajiaBox
JiajiaBox起源于一个高中生发现代理客户端五花八门却没有一款真正适合小白的代理客户端。没法满足所有人的需求与喜好，尽可能做最简单、最容易上手、最不需要折腾的代理客户端，尽可能把易上手做到极致。继承了NekoBox的极简风格与极强的兼容性，它是真正的真•开袋即食、开箱即用。它有什么优点？默认开启多源补全的 CNIP、CN 域名分流而非分应用分流，根据 IP、域名直接分流，绝大多数场景无需再做国内外分流，真正做到了开袋即食，后续也会做出更多的功能或分流的优化或扩展。有任何问题或建议请随时反馈
网站： jiajiabox.linjiajia.top

## 最新版本

当前源码与成品对应 `0.0.5 beta`，内部版本号 `447`，包名 `com.linjiajia.top`，架构 `arm64-v8a`。

- 成品：`release/JiajiaBox-0.0.5-beta-447-nowhere-tcpfix.apk`
- SHA-256：`96daa0fc110fd5cee8bac2741b796ff50fd82548fc7f911f284e6f04a0ec0f76`
- 新增 Nowhere 客户端出站：支持 NW3 TCP/TLS 与 UDP/QUIC（含 Morph）。
- 链接导入与订阅拉取同时兼容 `nowhere://` 和 `newhere://`。
- 节点类型标签：`nowhere` / `newhere` 按 `net` 显示 `newhere·tcp` 或 `newhere·udp`，其他自定义 sing-box 类型保持原标签。
- 修正 446 中 TCP/UDP 标签显示颠倒的问题。
- 内核版本：`1.14.3-Jiajia-7`。

## 源码结构

- `smali*`、`res/`、`assets/`、`AndroidManifest.xml`、`apktool.yml`：与 447 APK 对应的完整解包源码。
- `native-src/`：sing-box、libcore、libneko 与 JNI 绑定源码，包含 Nowhere NW3。
- `nowhere/`：Nowhere 导入、测试与打包脚本，以及实现说明。
- `addon-src/`：项目附加 Java 源码。
- `release/`：对应版本的 APK 与校验文件。

本仓库是 apktool 解包后的 Android 工程，不是完整的原始 Gradle 工程；重新打包使用 apktool，签名使用 apksigner。签名私钥不随仓库上传。
