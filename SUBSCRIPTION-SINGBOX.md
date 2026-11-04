# 订阅私有 DoH 适配（sing-box JSON）

本说明面向订阅服务提供方（机场）。私有 DoH 不需要客户端自定义响应头，也不需要
新增私有协议；标准做法是让订阅直接返回 **sing-box JSON**，把私有 DoH 放进
`dns.servers` 和 `dns.rules`。

客户端的 `RawUpdater` 本来就支持带 `outbounds` 的 sing-box JSON 订阅，
`SubscriptionDns` 本来就支持从正文的 `dns` 字段读取并应用 DNS。
484 的 `Subscription-Dns` 和 485 的 `Subscription-DoH` 自定义头均已废弃。

## 1. 按 User-Agent 返回对应格式

订阅拉取统一使用：

```text
JiajiaBox/Android/0.0.5
```

建议机场按 UA 分格式，并返回 `Vary: User-Agent`：

| 客户端类型 | 返回格式 | 私有 DoH 承载 |
| --- | --- | --- |
| JiajiaBox / NekoBox / 支持 sing-box JSON 的客户端 | sing-box JSON | 正文 `dns.servers` + `dns.rules` |
| Clash Meta / Clash Verge 等 | Clash YAML | `proxy-server-nameserver-policy` |
| 只支持 base64 v2ray 的客户端 | base64 v2ray | 没有按域名指定 DNS 的能力；只能给 IP 端点或不支持 |

同一个订阅可以同时提供多种格式，不需要为 JiajiaBox 单独维护节点列表。

## 2. 最小完整示例

下面是 JiajiaBox 当前内核可直接使用的旧式 sing-box DNS 格式。`outbounds` 里的
节点字段请按实际协议填写，这里只示意结构。

```json
{
  "outbounds": [
    {
      "type": "vless",
      "tag": "hk-1",
      "server": "entry-11111111111111111111111111111111.d770.org",
      "server_port": 443,
      "uuid": "00000000-0000-0000-0000-000000000000",
      "flow": "xtls-rprx-vision",
      "tls": {
        "enabled": true,
        "server_name": "www.example.com",
        "reality": {
          "enabled": true,
          "public_key": "<reality-public-key>",
          "short_id": "<reality-short-id>"
        }
      }
    }
  ],
  "dns": {
    "servers": [
      {
        "tag": "private-doh",
        "address": "https://r7.d770.org/api/v1/private-dns/<token>/dns-query",
        "detour": "bypass",
        "address_resolver": "dns-direct"
      }
    ],
    "rules": [
      {
        "domain": [
          "entry-11111111111111111111111111111111.d770.org",
          "entry-22222222222222222222222222222222.d770.org"
        ],
        "server": "private-doh"
      }
    ]
  }
}
```

要点：

- **必须同时有 `outbounds` 和 `dns`**。客户端的订阅 DNS 提取要求正文里存在
  `outbounds`，单独的 `dns` 对象不会被应用。
- `dns.servers` 不能为空。
- `server` 可以是域名，客户端会用 `address_resolver` 解析它。
- 入口域名很多时，可以用 `domain_suffix` 或 `domain_regex` 代替逐条 `domain`。

## 3. `dns` 字段说明

### `dns.servers[]`

| 字段 | 说明 |
| --- | --- |
| `tag` | DNS 服务器唯一标识；客户端合并时会自动加 `subscription-dns-` 前缀 |
| `address` | 私有 DoH 完整 URL；JiajiaBox 当前内核使用这个旧式字段 |
| `detour` | 解析该 DoH 时使用的出站：`bypass`（推荐）、`direct` 或 `proxy` |
| `address_resolver` | 解析 DoH 域名用的 DNS 服务器：`dns-direct`（推荐）或同一 `dns` 对象中的另一个 server tag |
| `strategy` | 可选，如 `prefer_ipv4` / `prefer_ipv6` / `ipv4_only` / `ipv6_only` |

注意：

- `address_resolver` 不要写 `dns-local`，客户端只接受 `dns-direct` 或本 DNS 对象里的 server tag。
- `detour` 不要写不存在的出站 tag；`bypass` 最稳。
- 不要在 DNS 对象里加 `disabled` 等额外字段。

### `dns.rules[]`

| 字段 | 说明 |
| --- | --- |
| `domain` | 精确域名列表 |
| `domain_suffix` | 域名后缀列表，适合 `*.d770.org` 这类规则 |
| `domain_regex` | 正则列表；不要把反斜杠写错 |
| `server` | 对应 `dns.servers[].tag` |

规则按顺序匹配。入口域名的规则要尽量具体，避免被其他捕获所有域名的规则抢先。
客户端会把订阅里的规则合并进自己的 DNS 规则集；如果应用内另有自定义 DNS 规则，
以应用实际合并结果为准。

### `dns.final`

可选。一般不需要写；让应用自己的默认 DNS 处理其他域名即可。

## 4. 新版 sing-box 1.12+ 的写法

较新的 sing-box 推荐：

```json
{
  "dns": {
    "servers": [
      {
        "tag": "private-doh",
        "type": "https",
        "server": "r7.d770.org",
        "server_port": 443,
        "path": "/api/v1/private-dns/<token>/dns-query",
        "detour": "direct",
        "domain_resolver": "dns-direct"
      }
    ],
    "rules": [
      {
        "domain_regex": ["^entry-[0-9a-f]+\\.d770\\.org$"],
        "server": "private-doh"
      }
    ]
  }
}
```

- `type: "https"` + `server` + `path` 是新式写法。
- `domain_resolver` 是新式字段，替代旧式 `address_resolver`。
- JiajiaBox 当前选项模型使用旧式 `address`，建议对 `JiajiaBox/Android/0.0.5` 返回旧式格式；对其他 sing-box 客户端可按版本返回新式格式。

## 5. 从 Clash 格式迁移

Clash 格式里通常已经有：

```yaml
proxy-server-nameserver-policy:
  "entry-11111111111111111111111111111111.d770.org":
  - "https://r7.d770.org/api/v1/private-dns/<token>/dns-query"
  "entry-22222222222222222222222222222222.d770.org":
  - "https://r7.d770.org/api/v1/private-dns/<token>/dns-query"
```

转换规则：

- 每个唯一的 DoH URL 生成一个 `dns.servers[]` 条目。
- 每个域名生成 `dns.rules[]` 的匹配项；同一个 URL 的多个域名可以放在同一个 `domain` 数组里。
- 如果所有入口域名都有相同后缀，可以用 `domain_suffix` 或 `domain_regex` 压缩规则。

## 6. 验证

### 6.1 检查响应格式

```bash
curl -sS -A 'JiajiaBox/Android/0.0.5' '<订阅地址>' -o /tmp/sub.json
python3 -c 'import json;d=json.load(open("/tmp/sub.json"));print(len(d.get("outbounds",[])), len(d.get("dns",{}).get("servers",[])))'
```

第二个数字应大于 0；第一个数字应等于节点数。

### 6.2 检查 DNS 规则

```bash
python3 - <<'PY'
import json
d=json.load(open('/tmp/sub.json'))
for s in d.get('dns',{}).get('servers',[]):
    print('server', s.get('tag'), s.get('address'))
for r in d.get('dns',{}).get('rules',[]):
    print('rule', r.get('server'), r.get('domain') or r.get('domain_suffix') or r.get('domain_regex'))
PY
```

### 6.3 客户端验证

1. 安装 486 或更高版本。
2. 更新/重新导入订阅。
3. 节点应使用私有 DoH 解析入口域名并连接。
4. 如果节点导入成功但域名解析失败，先检查 `outbounds` 是否存在、`dns.servers` 是否为空、`address_resolver`/`detour` 是否合法。

## 7. 常见问题

| 现象 | 可能原因 | 处理 |
| --- | --- | --- |
| 应用不应用订阅 DNS | 正文没有 `outbounds`，或 `dns.servers` 为空 | 补 `outbounds`，至少一个 server |
| 报 DNS 解析器不存在 | `address_resolver` 写了 `dns-local` 或不存在的 tag | 改成 `dns-direct` 或本对象里的 server tag |
| 报出站不存在 | `detour` 写了不存在的 tag | 改成 `bypass` / `direct` / `proxy` |
| 私有 DoH 解析失败 | DoH 域名被代理循环解析，或 URL/token 错误 | `detour: bypass` + `address_resolver: dns-direct`；核对 URL |
| 规则不生效 | 域名匹配写错，或被更早的规则/应用自定义规则覆盖 | 用精确 `domain` 或正确 `domain_suffix`；检查应用内 DNS 设置 |
| JSON 被拒绝 | DNS 对象里有额外字段，或 JSON 不合法 | 只保留 `servers`/`rules`（可选 `final`/`strategy` 等），去掉 `disabled` |
| 其他客户端不认 | 客户端只支持 base64 v2ray | 按 UA 返回对应格式；只支持 base64 的客户端没有按域名 DNS 能力 |

## 8. 安全

- 私有 DoH 的 URL/token 与订阅绑定，不要在日志或公开页面泄露。
- 使用 HTTPS 的 DoH 地址。
- 不要把 token 放进 `outbounds` 的 tag 或节点名。

## 9. 历史说明

- 484 的 `Subscription-Dns` 自定义响应头已废弃。
- 485 的 `Subscription-DoH` 自定义响应头未发布，已移除。
- 486 起只依赖标准 sing-box JSON 的 `dns` 字段；Clash 客户端继续使用 Clash 自己的私有 DNS 字段。
