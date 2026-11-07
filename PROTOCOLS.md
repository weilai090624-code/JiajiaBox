# JiajiaBox 535 支持的协议与模板格式

当前成品：`JiajiaBox-0.0.5-beta-535-globe-nocn.apk`（含 MX / Mundo 伴生核心、Trojan-Go / Mieru / VLESS Encryption）。

> MX 协议通过可选的 Mundo 伴生核心接入；`libmundoproxy.so` / `libtun2socks.so` 为闭源组件，Mundo 作者已同意（2026-11-06）原样分发，详见 [MUNDO-PERMISSION.md](MUNDO-PERMISSION.md) 与 [MUNDO-INTEGRATION.md](MUNDO-INTEGRATION.md)。

## 一、内置代理协议

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

## 一（补充）、MX / Mundo 伴生核心

```text
MX（mc1 / mundordp / jatp）
```

- MX 通过可选的 Mundo 闭源伴生核心接入：`libmundoproxy.so` + `libtun2socks.so`；
- sing-box 只把选中的 MX 节点出站指向伴生核心的本地 SOCKS；
- 两个 `.so` 不属于 GPL-3.0，经作者同意（2026-11-06）原样分发；
- 详见 [MUNDO-INTEGRATION.md](MUNDO-INTEGRATION.md) 与 [MUNDO-PERMISSION.md](MUNDO-PERMISSION.md)。

## 二、分组 / 辅助出站

```text
Direct（直连）
Block（拦截）
DNS
Selector（手动选择）
URLTest（自动选择）
```

## 三、入站

```text
TUN
Redirect
TProxy
SOCKS
HTTP
Mixed
Direct
```

## 四、传输层

```text
TCP
WebSocket（WS）
gRPC
HTTP
HTTPUpgrade
QUIC
```

## 五、TLS 相关

```text
TLS
Reality
ECH
uTLS
```

## 六、DNS 传输

```text
TCP
UDP
TLS
HTTPS
QUIC
HTTP/3
Hosts
FakeIP
Local
```

## 七、支持的导入方式

```text
YAML（Clash / Clash Meta）
JSON（sing-box / 单协议 / 自定义配置）
纯文本（每行一个节点链接）
Base64 / URL-safe Base64（链接列表）
单节点信息（分享链接或手动填写）
订阅 URL（http / https）
sn://subscription
clash://install-config
WireGuard .conf
```

## 八、单节点分享链接模板

```text
vmess://
vless://
trojan://
trojan-go://
mieru://
ss://
socks://
socks4://
socks4a://
socks5://
http://
https://
hysteria://
hysteria2://
hy2://
tuic://
anytls://
nowhere://
sn://subscription?...
clash://install-config?url=...
```

> 旧拼写 `newhere://` 仍作为兼容别名接受，但新链接请使用 `nowhere://`。

## 九、订阅模板

```text
纯文本链接列表
Base64 / URL-safe Base64 链接列表
Clash / Clash Meta YAML 订阅
sing-box JSON 订阅
sn://subscription?...
clash://install-config?url=...
```

## 十、导出模板

```text
单节点：对应协议分享链接
组/订阅：sn://subscription?...（Kryo + zlib + Base64URL）
```

## 十一、已移除（455 不再支持）

```text
mx://
jatp://
mc1
mundordp
xhttp（jatp）
Mundoproxy 伴侣内核（libmundoproxy.so / libtun2socks.so）
:mundo 进程
```
