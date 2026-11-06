# MX 接入的应用侧补丁位置

以下补丁均位于 apktool 反编译工作区；最终打包版本对应 JiajiaBox 529 的
smali（`classes10.dex` / `classes32.dex` 等）。这里给出补丁点，便于审阅。

## 1. VpnService —— 应用自身排除出 VPN

文件：`smali_classes10/io/nekohasekai/sagernet/bg/VpnService.smali`
方法：`startVpn(String, String)`

在 `getPackageName()` 之后、建立 TUN 之前：

```smali
invoke-virtual {v4, v6}, Landroid/net/VpnService$Builder;->addDisallowedApplication(Ljava/lang/String;)Landroid/net/VpnService$Builder;
```

作用：让伴生核心连节点的 socket 不走本应用自己的 TUN，避免回环。

## 2. SubscriptionDns —— 挂载 MX 出站改写

文件：`smali_classes37/io/nekohasekai/sagernet/ui/SubscriptionDns.smali`
方法：`apply(String, Object)`

在方法开头调用：

```smali
invoke-static {v0, v1}, Lio/nekohasekai/sagernet/ui/MundoCore;->applyToConfig(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
move-result-object p0
```

作用：配置生成时把选中 MX 节点的 `proxy` 出站改写为本地 SOCKS。

## 3. V2RayFmtKt —— 导入时记住原始 mx 链接

文件：`smali_classes4/io/nekohasekai/sagernet/fmt/v2ray/V2RayFmtKt.smali`

解析 `mx://` / `jatp://` 后调用：

```smali
invoke-static {v7, v0}, Lio/nekohasekai/sagernet/ui/MundoCore;->remember(Ljava/lang/String;Ljava/lang/Object;)V
```

作用：把 `host:port → mx://...` 写入 `shared_prefs/mundo-links.xml`，供配置生成时查表。

## 4. ProxyEntity.displayType —— 显示 MX

文件：`smali_classes8/io/nekohasekai/sagernet/database/ProxyEntity.smali`
方法：`displayType()`

在 VLESS 分支前调用：

```smali
invoke-static {p0}, Lio/nekohasekai/sagernet/ui/MundoCore;->isMXBean(Ljava/lang/Object;)Z
```

命中时返回字符串 `"MX"`。

## 5. SagerNet.onCreate —— 不再在主进程预热

文件：`smali_classes10/io/nekohasekai/sagernet/SagerNet.smali`

已删除此前插入的：

```smali
invoke-static {}, Lio/nekohasekai/sagernet/ui/MundoCore;->prewarm()V
```

原因：主进程会被 Android 冻结，冻结后端口仍在但核心不转发；核心改由 `:bg`
VPN 服务进程启动。

## 6. MundoCore / MundoEnsure / MundoProbe

见本目录 `smali/` 与同名 `.java` 文件。529 的核心行为：

- `MundoEnsure`：按节点选择空闲端口，停旧核并轮询旧端口关闭，启动新核；
- `MundoProbe`：独立线程探测 127.0.0.1 端口，规避主线程网络限制；
- `MundoCore`：链接映射、`buildSingle`/`streamSettings`、`applyToConfig`、`remember`。
