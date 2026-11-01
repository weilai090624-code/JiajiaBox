# JiajiaBox 455 支持的协议与模板格式

当前成品：`JiajiaBox-0.0.5-beta-455-no-mx.apk`（基于 451 回退包，已移除 MX）。

> 去除对 MX 协议的实验性接入，暂不对 MX 协议适配。

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
```

## 二、插件 / 外部内核协议

```text
Trojan-Go
Mieru
Naive
```

说明：这些协议依赖对应插件，主 `libcore` 未内置注册；插件协议通过 `NekoBean` 封装。

## 三、分组 / 辅助出站

```text
Direct（直连）
Block（拦截）
DNS
Selector（手动选择）
URLTest（自动选择）
```

## 四、入站

```text
TUN
Redirect
TProxy
SOCKS
HTTP
Mixed
Direct
```

## 五、传输层

```text
TCP
WebSocket（WS）
gRPC
HTTP
HTTPUpgrade
QUIC
```

## 六、TLS 相关

```text
TLS
Reality
ECH
uTLS
```

## 七、DNS 传输

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

## 八、支持的导入方式

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

## 九、单节点分享链接模板

```text
vmess://
vless://
trojan://
trojan-go://
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
newhere://
sn://subscription?...
clash://install-config?url=...
```

## 十、订阅模板

```text
纯文本链接列表
Base64 / URL-safe Base64 链接列表
Clash / Clash Meta YAML 订阅
sing-box JSON 订阅
sn://subscription?...
clash://install-config?url=...
```

## 十一、导出模板

```text
单节点：对应协议分享链接
组/订阅：sn://subscription?...（Kryo + zlib + Base64URL）
```

## 十二、不支持 / 未内置

```text
SSR
Snell
```

说明：内置 `libcore` 未注册，应用也没有对应插件入口或链接解析，455 不支持。

## 十三、已移除（455 不再支持）

```text
mx://
jatp://
mc1
mundordp
xhttp（jatp）
Mundoproxy 伴侣内核（libmundoproxy.so / libtun2socks.so）
:mundo 进程
```
