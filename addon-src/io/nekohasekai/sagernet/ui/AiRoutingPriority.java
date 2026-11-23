/*
 * Copyright (c) 2026 weilai090624-code
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 */

package io.nekohasekai.sagernet.ui;

import org.json.JSONArray;
import org.json.JSONObject;

public final class AiRoutingPriority {
    public static String apply(String config) {
        try {
            JSONObject root = new JSONObject(config);
            JSONObject route = root.optJSONObject("route");
            if (route == null) return config;
            JSONArray rules = route.optJSONArray("rules");
            JSONArray outbounds = root.optJSONArray("outbounds");
            if (rules == null || outbounds == null) return config;
            int selected = -1;
            for (int index = 0; index < rules.length(); index++) {
                JSONObject rule = rules.getJSONObject(index);
                JSONArray suffixes = rule.optJSONArray("domain_suffix");
                boolean gemini = false;
                boolean claude = false;
                if (suffixes == null) continue;
                for (int domain = 0; domain < suffixes.length(); domain++) {
                    gemini |= "gemini.google.com".equals(suffixes.optString(domain));
                    claude |= "claude.ai".equals(suffixes.optString(domain));
                }
                if (gemini && claude) {
                    String target = rule.optString("outbound");
                    boolean exists = false;
                    for (int outbound = 0; outbound < outbounds.length(); outbound++) {
                        exists |= target.equals(outbounds.getJSONObject(outbound).optString("tag"));
                    }
                    if (target.isEmpty() || !exists) throw new IllegalStateException("AI outbound missing: " + target);
                    selected = index;
                    break;
                }
            }
            if (selected < 0) return config;
            JSONArray ordered = new JSONArray();
            int insertAt = 0;
            while (insertAt < rules.length()) {
                String action = rules.getJSONObject(insertAt).optString("action");
                if (!"sniff".equals(action) && !"hijack-dns".equals(action)) break;
                ordered.put(rules.get(insertAt++));
            }
            boolean hasSniff = false;
            for (int index = 0; index < ordered.length(); index++) {
                JSONObject preparation = ordered.getJSONObject(index);
                hasSniff |= "sniff".equals(preparation.optString("action"))
                    && preparation.length() == 1;
            }
            if (!hasSniff) ordered.put(new JSONObject().put("action", "sniff"));
            JSONObject aiRule = rules.getJSONObject(selected);
            JSONArray domains = new JSONArray();
            JSONArray exact = new JSONArray();
            JSONArray regex = new JSONArray();
            for (String entry : AiRoutingDomains.rules().split("\n")) {
                if (entry.startsWith("domain:")) domains.put(entry.substring(7));
                else if (entry.startsWith("full:")) exact.put(entry.substring(5));
                else if (entry.startsWith("regexp:")) regex.put(entry.substring(7));
                else throw new IllegalStateException("Unsupported AI rule: " + entry);
            }
            aiRule.put("domain_suffix", domains);
            aiRule.put("domain", exact);
            aiRule.put("domain_regex", regex);
            ordered.put(aiRule);
            for (int index = insertAt; index < rules.length(); index++) {
                if (index != selected) ordered.put(rules.get(index));
            }
            route.put("rules", ordered);
            return root.toString();
        } catch (Exception error) {
            throw new IllegalStateException("Cannot prioritize AI routing", error);
        }
    }

    public static String applyRuntime(String config) {
        try {
            RoutingFallback.sanitizeSaved();
            config = TelegramRouting.apply(config);
            config = forceXThroughProxy(config);
            config = routeDnsThroughProxy(config);
            Class<?> database = Class.forName("io.nekohasekai.sagernet.database.SagerDatabase");
            Object companion = database.getField("Companion").get(null);
            Object dao = companion.getClass().getMethod("getRulesDao").invoke(companion);
            java.util.List<?> saved = (java.util.List<?>) dao.getClass().getMethod("allRules").invoke(dao);
            Object active = null;
            for (Object rule : saved) {
                if ("佳嘉 · 主流 AI 聚合分流".equals(rule.getClass().getMethod("getName").invoke(rule))
                    && (Boolean) rule.getClass().getMethod("getEnabled").invoke(rule)) {
                    if (active != null) throw new IllegalStateException("存在重复 AI 分流规则，请删除重复规则");
                    active = rule;
                }
            }
            if (active == null) {
                record("AI routing disabled: using ordinary routing; OpenAI/Codex traffic is not pinned to an AI outbound");
                return config;
            }
            String result = apply(config);
            JSONObject root = new JSONObject(result);
            JSONArray rules = root.getJSONObject("route").getJSONArray("rules");
            String target = "";
            for (int index = 0; index < rules.length(); index++) {
                JSONObject rule = rules.getJSONObject(index);
                JSONArray domains = rule.optJSONArray("domain_suffix");
                if (domains == null) continue;
                boolean gemini = false;
                boolean claude = false;
                for (int domain = 0; domain < domains.length(); domain++) {
                    gemini |= "gemini.google.com".equals(domains.optString(domain));
                    claude |= "claude.ai".equals(domains.optString(domain));
                }
                if (gemini && claude) target = rule.optString("outbound");
            }
            if (target.isEmpty()) throw new IllegalStateException("AI 分流未进入运行配置；完整自定义配置或配置覆盖可能绕过了规则生成");
            long proxyId = (Long) active.getClass().getMethod("getOutbound").invoke(active);
            String message = "AI routing enabled: profile=" + proxyId + " outbound=" + target
                + " sniff=enabled; domain rules require visible DNS or TLS/HTTP/QUIC host";
            android.util.Log.i("AiRouting", message);
            record(message);
            return result;
        } catch (Exception error) {
            record("AI routing failed: " + error);
            throw new IllegalStateException("AI 分流配置检查失败: " + error.getMessage(), error);
        }
    }


    /** X（Twitter）整包强制走代理：排在所有规则最前面，避免被 CNIP 或域名规则抢走。 */
    private static String forceXThroughProxy(String config) {
        try {
            JSONObject root = new JSONObject(config);
            JSONObject route = root.getJSONObject("route");
            JSONArray rules = route.getJSONArray("rules");
            JSONObject forced = new JSONObject();
            JSONArray packages = new JSONArray();
            packages.put("com.twitter.android");
            packages.put("com.x.android");
            packages.put("ai.x.grok");
            forced.put("package_name", packages);
            forced.put("outbound", "proxy");
            // 插到 DNS 劫持规则之后：否则 X 的 DNS 查询也会被包名规则抓走，域名解析不出来。
            int insertAt = 0;
            for (int index = 0; index < rules.length(); index++) {
                JSONObject candidate = rules.getJSONObject(index);
                if ("hijack-dns".equals(candidate.optString("action"))) { insertAt = index + 1; break; }
                JSONArray ports = candidate.optJSONArray("port");
                if (ports != null) {
                    boolean hasDns = false;
                    for (int port = 0; port < ports.length(); port++) if (ports.optInt(port) == 53) hasDns = true;
                    if (hasDns) { insertAt = index + 1; break; }
                }
            }
            JSONArray next = new JSONArray();
            for (int index = 0; index < insertAt; index++) next.put(rules.getJSONObject(index));
            next.put(forced);
            for (int index = insertAt; index < rules.length(); index++) next.put(rules.getJSONObject(index));
            route.put("rules", next);
            // DNS 也要接管：走 fake-ip 让节点自己解析，否则会被 geosite:cn 解析成国内 IP。
            JSONObject dns = root.optJSONObject("dns");
            if (dns != null) {
                JSONArray dnsRules = dns.optJSONArray("rules");
                if (dnsRules != null) {
                    JSONObject fake = new JSONObject();
                    JSONArray domains = new JSONArray();
                    for (String suffix : new String[]{"x.ai", "grok.com", "x.com", "twitter.com", "twimg.com", "t.co"}) {
                        domains.put(suffix);
                    }
                    fake.put("domain_suffix", domains);
                    fake.put("server", "dns-fake");
                    JSONArray merged = new JSONArray();
                    merged.put(fake);
                    for (int index = 0; index < dnsRules.length(); index++) merged.put(dnsRules.getJSONObject(index));
                    dns.put("rules", merged);
                }
            }
            return root.toString();
        } catch (Exception error) {
            record("X force-proxy rule skipped: " + error);
            return config;
        }
    }


    /** 国内域名走直连解析，其余一律交给节点解析，避免国内 DNS 返回污染结果。 */
    private static String routeDnsThroughProxy(String config) {
        try {
            JSONObject root = new JSONObject(config);
            JSONObject dns = root.optJSONObject("dns");
            if (dns == null) return config;
            JSONArray servers = dns.optJSONArray("servers");
            if (servers == null) { servers = new JSONArray(); dns.put("servers", servers); }
            boolean hasRemote = false;
            for (int index = 0; index < servers.length(); index++) {
                if ("dns-proxy".equals(servers.getJSONObject(index).optString("tag"))) { hasRemote = true; break; }
            }
            if (!hasRemote) {
                JSONObject remote = new JSONObject();
                remote.put("tag", "dns-proxy");
                remote.put("address", "https://1.1.1.1/dns-query");
                remote.put("address_resolver", "dns-direct");
                remote.put("detour", "proxy");
                servers.put(remote);
            }
            // sing-box 的 DNS 配置只有 final，写 default 会触发 unknown field 解析失败。
            dns.put("final", "dns-proxy");
            // 连接建立时的 resolve 也必须走远程，否则仍会用国内 DNS 解析出污染 IP。
            // 所有指向 dns-direct 的解析动作都要改：sing-box 的 resolve 不终止，后匹配的会覆盖前一次结果。
            JSONArray routeRules = root.getJSONObject("route").getJSONArray("rules");
            for (int index = 0; index < routeRules.length(); index++) {
                JSONObject rule = routeRules.getJSONObject(index);
                String action = rule.optString("action", rule.optString("type", ""));
                if ("resolve".equals(action) || "dns-direct".equals(rule.optString("server"))) {
                    rule.put("server", "dns-proxy");
                }
            }
            return root.toString();
        } catch (Exception error) {
            record("DNS strategy skipped: " + error);
            return config;
        }
    }

    private static void record(String message) {
        try {
            android.content.Context context = (android.content.Context) Class.forName("io.nekohasekai.sagernet.ktx.UtilsKt")
                .getMethod("getApp").invoke(null);
            java.io.File directory = context.getCacheDir();
            if (!new java.io.File(directory, "diagnostic-recording").exists()) return;
            try (java.io.FileOutputStream stream = new java.io.FileOutputStream(new java.io.File(directory, "diagnostic.log"), true)) {
                stream.write((System.currentTimeMillis() + " [AiRouting] " + message + "\n").getBytes("UTF-8"));
            }
        } catch (Exception error) {
            android.util.Log.e("AiRouting", "Cannot record AI routing status", error);
        }
    }
}

