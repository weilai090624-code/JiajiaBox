# MX 协议与 Mundo 伴生核心接入说明

本文件用于向 Mundo 作者说明 JiajiaBox 如何使用其闭源核心，以及哪些部分属于
GPL-3.0、哪些不属于。对应许可申请见 [MUNDO-PERMISSION-REQUEST.md](MUNDO-PERMISSION-REQUEST.md)。

## 1. 架构

```text
Android App (com.linjiajia.top)
├─ sing-box（GPL-3.0，JiajiaBox 修改版）
│  ├─ TUN / 路由 / DNS / 其他协议出站
│  └─ MX 节点的 proxy 出站 → SOCKS 127.0.0.1:<port>
│
└─ 伴生核心（Mundo，闭源）
   ├─ libtun2socks.so   JNI 桥（MundoTunnel）
   └─ libmundoproxy.so  Mundo Proxy 1.0.0
        └─ 监听 127.0.0.1:<port>，按 mx:// 参数连接节点
```

- `MundoCore` 在构建配置时把选中 MX 节点的 `proxy` 出站改写为本地 SOCKS；
- `MundoEnsure` 负责启动/切换核心：选择端口、`startService(config, -1)`、等待端口就绪；
- `MundoProbe` 在独立线程探测端口，避免 Android 主线程网络限制；
- `VpnService.startVpn()` 将本应用自身排除出 VPN，防止伴生核心连节点的流量
  被自己的 TUN 捕获形成回环；
- 未修改 `libmundoproxy.so` / `libtun2socks.so` 的任何字节。

## 2. 组件与哈希

| 文件 | 版本/架构 | SHA-256 | 许可证 |
| --- | --- | --- | --- |
| libmundoproxy.so | 1.0.0 / arm64-v8a | `52836a67ed26e53fa4facac330da66ba4068aeccf0c03a7cc95ea34e0900c6f3` | Mundo 闭源，非 GPL |
| libtun2socks.so | JNI 桥 / arm64-v8a | `195c2d25ecb604f2a0fb8084c15b6b1f0cb3dfd527d40069dcdb3d097ee38398` | Mundo 闭源，非 GPL |

## 3. 代码归属

**JiajiaBox 原创、GPL-3.0：**

- `addon-src/mundo/MundoProbe.java`
- `addon-src/mundo/MundoEnsure.java`
- `MundoCore`（伴生核心管理、链接映射、配置生成）
- smali 补丁：`SubscriptionDns.apply` 挂载、`VpnService.startVpn` 自排除、
  `ProxyEntity.displayType` 的 MX 标签、`V2RayFmtKt` 的 `remember` 等
- 本文档与相关构建脚本

**Mundo 专有、不属于 GPL-3.0：**

- `libmundoproxy.so`
- `libtun2socks.so`
- `com.purecheat.ipc.MundoTunnel` 的 native 实现

**GPL-3.0 参考：**

- [FlClash-FOSS](https://github.com/Mundo-Connect/FlClash-FOSS)：参考其
  `lib/mundo/mundo_profile.dart` 的配置字段与 `android/core/src/main/cpp/core.cpp`
  的 `dlopen` 接入方式；未复制其闭源核心，也未把其代码静态链接进本应用。

## 4. 分发状态

- Mundo 作者已于 2026-11-06 同意 JiajiaBox 在公开 APK 中原样打包并分发
  这两个 `.so`（微信确认，记录见 [MUNDO-PERMISSION.md](MUNDO-PERMISSION.md)）；
- 作者未指定固定署名格式；本项目保留 `Mundo-NOTICE.txt` 与 `THIRD_PARTY_NOTICES.md`；
- 该同意不改变版权归属，也不使 `.so` 适用 GPL-3.0；
- 作者建议：如提供订阅链接，只下发 MX 协议；告知用户可下载 Mundo 官方客户端导入，
  不封端、不限制；
- 如作者未来撤回同意，改用“用户自行提供 `.so` / 从已安装的 Mundo 导入”的方式。

## 5. 如何核对

```bash
sha256sum libmundoproxy.so libtun2socks.so
# 应与第 2 节一致
```

APK 内的库位于 `lib/arm64-v8a/`；JiajiaBox 未对其做任何重打包或修改。

## 6. 联系

- 项目：https://github.com/weilai090624-code/JiajiaBox
- 许可与声明：`assets/licenses/Mundo-NOTICE.txt`、`THIRD_PARTY_NOTICES.md`
