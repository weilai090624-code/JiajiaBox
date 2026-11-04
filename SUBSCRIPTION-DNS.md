# 订阅私有 DNS 适配说明（已废弃）

> **废弃说明：** 484 的 `Subscription-Dns` 自定义头已被标准 sing-box JSON 取代。
> 机场请使用 [SUBSCRIPTION-SINGBOX.md](SUBSCRIPTION-SINGBOX.md)，在订阅 JSON 的
> `dns.servers` / `dns.rules` 里下发私有 DoH，不需要自定义响应头。

本说明面向订阅服务提供方（机场），用于在 `JiajiaBox/Android/0.0.5` 这个
User-Agent 下，把节点入口域名所需的私有 DoH 一并下发给客户端。

客户端从 483 起支持这个响应头；484 及之后的版本继续支持。**不需要额外请求**：
客户端只读取订阅响应本身。

以下内容仅保留为 484 的历史记录。

## 触发条件

订阅请求的 User-Agent 为：

```text
JiajiaBox/Android/0.0.5
```

机场在这个 UA 下继续返回现有订阅正文（base64 v2ray 或 sing-box JSON）即可，
只需要额外加一个响应头。

## 响应头

```text
Subscription-Dns: <JSON>
```

头名大小写不敏感。值推荐使用单行原始 JSON；如果必须 URL 编码，客户端会在值不是以
`{` 开头时先做 URL 解码。

## 值格式

### 格式 A：DNS 对象（推荐）

```json
{
  "servers": [
    {
      "tag": "private",
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
      "server": "private"
    }
  ]
}
```

如果域名都有相同后缀，也可以用更紧凑的正则：

```json
{
  "servers": [
    {
      "tag": "private",
      "address": "https://r7.d770.org/api/v1/private-dns/<token>/dns-query",
      "detour": "bypass",
      "address_resolver": "dns-direct"
    }
  ],
  "rules": [
    {
      "domain_regex": ["^entry-[0-9a-f]+\\.d770\\.org$"],
      "server": "private"
    }
  ]
}
```

### 格式 B：完整 sing-box 片段

```json
{
  "dns": {
    "servers": [ ... ],
    "rules": [ ... ]
  },
  "outbounds": []
}
```

客户端会自动补 `outbounds`（如果缺失），所以格式 A 最省事。

## 字段要求

| 字段 | 要求 |
| --- | --- |
| `servers[].tag` | 唯一即可；客户端会自动加 `subscription-dns-` 前缀 |
| `servers[].address` | 私有 DoH 完整 URL |
| `servers[].detour` | `bypass`（推荐）、`direct` 或 `proxy` |
| `servers[].address_resolver` | `dns-direct`（推荐）或同一 DNS 对象中的另一个 server tag |
| `rules[].domain` / `domain_suffix` / `domain_regex` | 入口域名匹配条件 |
| `rules[].server` | 对应 `servers[].tag` |

注意事项：

- DNS 对象里只放 `servers` 和 `rules`，不要加 `disabled` 等额外字段。
- `address_resolver` 不要写 `dns-local`；用 `dns-direct`。
- 不要在响应头里放换行；用紧凑的单行 JSON。
- 私有 DoH 的 URL 和 token 与订阅绑定，请从现有 Clash 格式的
  `proxy-server-nameserver-policy` 直接生成。
- 头不存在时客户端行为完全不变。

## 客户端行为

- 在订阅更新/重新导入时读取 `Subscription-Dns`。
- 不发送额外请求，不使用 Clash User-Agent。
- 通过现有 `SubscriptionDns` 管线校验、前缀 tag、重写规则、持久化，
  并在生成配置时自动应用。
- 如果订阅正文本身已经是带 `dns` 的 JSON，仍然以正文为准；响应头是可选的补充。

## 验证

机场可以用下面的命令确认响应头存在：

```bash
curl -sS -D - -o /dev/null \
  -A 'JiajiaBox/Android/0.0.5' \
  '<订阅地址>' | grep -i 'subscription-dns'
```

再把头的值交给任意 JSON 解析器校验一次。客户端安装 483 或更高版本后，
更新/重新导入订阅即可生效。
