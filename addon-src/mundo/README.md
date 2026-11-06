# MX 伴生核心接入源码

本目录包含 JiajiaBox 为 MX 协议编写的**应用侧**代码，全部按 GPL-3.0 发布。

- `MundoProbe.java` / `MundoEnsure.java`：Java 源文件（与 smali 版本等价）；
- `smali/MundoCore.smali`、`smali/MundoProbe.smali`、`smali/MundoEnsure.smali`：
  实际打包进 `classes32.dex` 的 smali 源（权威版本）；
- `MundoCore` 负责链接映射、配置生成和伴生核心生命周期；
- `MundoEnsure` 负责选择端口、启动/切换核心；
- `MundoProbe` 在独立线程探测端口。

不在本目录、也不属于 GPL-3.0：

- `libmundoproxy.so`
- `libtun2socks.so`

这两个库由 Mundo 提供，运行时 `dlopen` 原样加载；分发状态与哈希见
`MUNDO-INTEGRATION.md` 与 `assets/licenses/Mundo-NOTICE.txt`。

其他相关改动（均记录在 `MUNDO-INTEGRATION.md`）：

- `VpnService.startVpn()`：`addDisallowedApplication(packageName)`，把本应用排除出 VPN；
- `SubscriptionDns.apply()`：在合并订阅 DNS 前后调用 `MundoCore.applyToConfig`；
- `ProxyEntity.displayType()`：MX 节点显示为 MX；
- `V2RayFmtKt`：导入 `mx://` / `jatp://` 时调用 `MundoCore.remember`。
## 已修改文件的完整 smali

`smali/app/` 下是 529 实际打包的完整文件（不是片段），便于逐行审阅：

- `VpnService.smali` —— `addDisallowedApplication` 自排除；
- `SagerNet.smali` —— 已移除主进程 `prewarm` 调用；
- `SubscriptionDns.smali` —— `apply` 开头挂载 `applyToConfig`；
- `V2RayFmtKt.smali` —— `mx://` / `jatp://` 导入时调用 `remember`；
- `ProxyEntity.smali` —— `displayType()` 返回 MX。

这些文件仍属 GPL-3.0；其中调用的 `libmundoproxy.so` / `libtun2socks.so`
不在此目录，也不属于 GPL-3.0。

