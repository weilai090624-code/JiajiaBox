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
      },
      {
        "tag": "public-doh",
        "address": "https://doh.pub/dns-query",
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
    ],
    "final": "public-doh"
  }
}
```

要点：

- **必须同时有 `outbounds` 和 `dns`**。客户端的订阅 DNS 提取要求正文里存在
  `outbounds`，单独的 `dns` 对象不会被应用。
- `dns.servers` 不能为空。
- **私有 DoH 通常只解析入口域名，对 `example.com`、`google.com` 等普通域名会返回
  NXDOMAIN。因此必须再提供一个公共递归 DNS（如 `doh.pub` / `dns.alidns.com`），
  并用 `dns.final` 指向它；否则节点可能连上，但所有其它域名都解析失败。**
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

**强烈建议显式填写**，指向 `dns.servers` 里的一个公共递归 DNS（如 `public-doh`），
用来处理入口域名以外的所有查询。

不要把它指向只解析入口域名的私有 DoH，否则普通域名会全部 NXDOMAIN。

496 起按 FlClash/Clash 的方式处理：

- **有 `dns.rules` 但没有 `final`**：客户端把应用自己的 `dns-direct`
  （默认 `https://223.5.5.5/dns-query`，直连）作为默认 DNS，只把规则里
  列出的入口域名交给私有 DoH。等价于 Clash 的 `nameserver` +
  `proxy-server-nameserver-policy`。
- **没有 `dns.rules`**：仍然把 `dns.servers[0]` 当作 `final`（486 行为）。

即便如此，仍建议显式写 `final`，这样同一份 JSON 在其它 sing-box 客户端上
也能正常工作。

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
      },
      {
        "tag": "public-doh",
        "type": "https",
        "server": "doh.pub",
        "server_port": 443,
        "path": "/dns-query",
        "detour": "direct",
        "domain_resolver": "dns-direct"
      }
    ],
    "rules": [
      {
        "domain_regex": ["^entry-[0-9a-f]+\\.d770\\.org$"],
        "server": "private-doh"
      }
    ],
    "final": "public-doh"
  }
}
```

- `type: "https"` + `server` + `path` 是新式写法。
- `domain_resolver` 是新式字段，替代旧式 `address_resolver`。
- 同样必须提供公共递归 DNS 并设置 `final`，不能只放私有 DoH。
- JiajiaBox 当前选项模型使用旧式 `address`，建议对 `JiajiaBox/Android/0.0.5` 返回旧式格式；对其他 sing-box 客户端可按版本返回新式格式。

### 客户端如何解析节点域名（498 起）

sing-box 1.12+ 解析出站服务器域名时使用的是 **dial field 的 `domain_resolver`**，
而不是 `dns.rules`。如果客户端只在 `dns.rules` 里把入口域名指向私有 DoH，
节点拨号仍可能走默认 DNS，导致 `NXDOMAIN` 或解析到错误地址。

JiajiaBox 498 起按内核原生模型生成配置：

- `route.default_domain_resolver` 指向应用的 `dns-direct`（公共直连 DoH）；
- 每个代理出站的 `domain_resolver`：
  - 命中订阅 `dns.rules` 的入口域名 → 对应的私有 DoH server；
  - 其它域名 → `dns-direct`；
- `dns.final` 仍然只影响应用发起的普通 DNS 查询。

因此机场侧不需要新增字段，只要保证：

1. `dns.rules` 中的入口域名写得准确（`domain` / `domain_suffix` / `domain_regex`）；
2. 规则里的 `server` 与 `dns.servers[].tag` 一致；
3. 私有 DoH 的 `address_resolver` 指向 `dns-direct`，避免用自己解析自己。

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
print('final', d.get('dns',{}).get('final'))
PY
```

`final` 应指向公共递归 DNS；如果没有输出，请按第 3 节补上。

### 6.3 客户端验证

1. 安装 495 或更高版本；订阅必须显式写 `final` 指向公共 DNS（省略时会把
   `dns.servers[0]` 当作默认 DNS）。
2. 更新/重新导入订阅。
3. 节点应使用私有 DoH 解析入口域名并连接。
4. 如果节点导入成功但普通网页打不开，先检查 `dns.final` 是否指向公共递归 DNS，
   再检查 `outbounds` 是否存在、`dns.servers` 是否为空、`address_resolver`/`detour` 是否合法。

## 7. 常见问题

| 现象 | 可能原因 | 处理 |
| --- | --- | --- |
| 应用不应用订阅 DNS | 正文没有 `outbounds`，或 `dns.servers` 为空 | 补 `outbounds`，至少一个 server |
| 报 DNS 解析器不存在 | `address_resolver` 写了 `dns-local` 或不存在的 tag | 改成 `dns-direct` 或本对象里的 server tag |
| 报出站不存在 | `detour` 写了不存在的 tag | 改成 `bypass` / `direct` / `proxy` |
| 私有 DoH 解析失败 | DoH 域名被代理循环解析，或 URL/token 错误 | `detour: bypass` + `address_resolver: dns-direct`；核对 URL |
| 节点能连但网页全部打不开 / 连通性测试全失败 | 没有提供公共递归 DNS，或缺 `dns.final`；只解析入口域名的私有 DoH 被当成了全局默认 | 增加公共 DoH，并设置 `"final": "public-doh"`；详见第 3 节 |
| `final` 指向私有 DoH 后普通域名 NXDOMAIN | 私有 DoH 不是递归解析器 | `final` 必须指向 `doh.pub` / `dns.alidns.com` 等公共递归 DNS |
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
- 487 修复：订阅 `dns` 省略 `final` 时，不再把 `dns.servers[0]` 强制设为全局默认，而是保留应用自身的默认 DNS。
- 488 修复：延迟/URL 测试使用的临时配置也会应用订阅 DNS（此前测试路径完全跳过订阅 DNS，只解析入口域名的机场会全部测试失败）。
- 489 修复：`dns-remote` 改为通过代理连接（默认 `https://dns.google/dns-query` 直连在国内会超时，导致“测试正常但实际不可用”）。
- 490 修复：`DnsIpRouting` 的 `resolve` 动作优先使用 `dns-direct`（默认 `https://223.5.5.5/dns-query`，直连稳定），不再把普通域名解析绑定到经节点的 `dns-remote`。
- 491 修复：订阅 DNS 同时写入应用文件目录。VPN 内核在 `:bg` 进程，SharedPreferences 跨进程缓存导致实际连接配置拿不到订阅 DNS，而测试进程能拿到。
- 492 修复：订阅 DNS 文件增加 `_latest` 兜底，并在主进程启动时把 SharedPreferences 里的 DNS 自动迁移到文件，避免分组 id 不一致或未重新更新订阅时 VPN 仍读不到。
- 493 修复：`SubscriptionDnsFile.read` 再增加直接读取 `shared_prefs/subscription_dns.xml` 的兜底（按 groupId 匹配，找不到时取第一条有效记录），并输出 `SubDnsFile read id=… src=…` 日志，彻底绕开 SharedPreferences 的进程缓存与迁移时序。
- 494：把 `SubDnsFile` 日志直接写入 `cache/diagnostic.log`（诊断工具只采集该文件与内核日志，普通 `Log.i` 不会进诊断包），内容带构建号，便于确认实际运行的版本与 DNS 来源。关于页面的版本串包含构建号（如 `0.0.5 beta 494`）。
- 495：回退 487 的 `final` 逻辑、489 的 `dns-remote` 走代理、490 的 `resolve` 优先级，恢复 486 的全局 DNS 行为——这些改动影响了其它使用私有 DNS 的机场。保留 488 的测试 DNS、491–493 的跨进程精确 groupId 文件与 prefs XML 兜底、494 的诊断日志。
- 496：按 FlClash/Clash 的 `nameserver` + `proxy-server-nameserver-policy` 语义，订阅有 `rules` 但无 `final` 时把默认 DNS 设为应用的 `dns-direct`（直连公共 DoH），入口域名仍走私有 DoH；不影响没有 `rules` 的订阅。
- 497：修复 496 引入的字节码校验问题（496 用 v7/v8 做临时寄存器，与非 final 分支的寄存器类型在汇合点冲突，导致 `SubscriptionDns` 校验失败、所有配置构建失败）。改用 `SubscriptionDnsFile.splitFinal()` 辅助方法，并把结果放在 v3（所有路径都是 String），逻辑不变。
- 498：按 sing-box 1.12+ 原生模型补全节点域名解析：`NativeCoreConfig` 生成 `route.default_domain_resolver`（`dns-direct`），并按订阅 `dns.rules` 给每个代理出站的 dial field 写入 `domain_resolver`（入口域名 → 私有 DoH，其它 → `dns-direct`）；同时为 DoH server 自身补 bootstrap resolver。`dns.rules` 不再承担节点拨号的唯一解析路径。
- 499：修复 497 遗留的 final 分支反向问题（`if-nez` 写反，导致“有 rules、无 final”时仍把私有 DoH 设为全局 `final`）；恢复 490 的 resolve 排序（`dns-direct` 优先），避免目标域名解析被 `fixResolves` 改到私有分裂 DNS 上；订阅 DNS tag 与规则 tag 前后缀不一致时自动兼容，并写入 `[DomainResolver] v499` 诊断行。
- 500：VPN 配置在 `:bg` 进程里可能读不到按 groupId 暂存的订阅 DNS（diagnostic80 中 VPN 配置只有 5 个应用 DNS server、10 条应用规则）。`NativeCoreConfig` 增加内容回退：若配置里没有 `subscription-dns-` server，则扫描 `files/subscription_dns/`，选择规则能覆盖当前出站域名的暂存记录并合并；出站已有 `domain_resolver` 时，订阅规则命中入口域名也会覆盖。新增 `[DomainResolver] v500 staged file=… matched=…` 诊断行。
