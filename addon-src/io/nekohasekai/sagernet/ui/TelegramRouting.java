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

public final class TelegramRouting {
    public static final String RULE_NAME = "佳嘉 · Telegram 统一分流";
    private static final String[] DOMAINS = {
        "telegram.org", "telegram.me", "telegram.dog", "t.me", "tx.me",
        "tdesktop.com", "telegra.ph", "graph.org", "telesco.pe", "tg.dev",
        "telegram-cdn.org", "cdn-telegram.org", "usercontent.dev", "comments.app"
    };
    private static final String[] NETWORKS = {
        "91.108.4.0/22", "91.108.8.0/22", "91.108.12.0/22", "91.108.16.0/22",
        "91.108.20.0/22", "91.108.56.0/22", "149.154.160.0/20", "185.76.151.0/24",
        "2001:b28:f23c::/48", "2001:b28:f23d::/48", "2001:b28:f23f::/48", "2001:67c:4e8::/48"
    };

    private static boolean isTelegramRule(JSONObject rule) {
        JSONArray domains = rule.optJSONArray("domain_suffix");
        boolean telegram = false;
        boolean shortLink = false;
        if (domains != null) {
            for (int index = 0; index < domains.length(); index++) {
                telegram |= "telegram.org".equals(domains.optString(index));
                shortLink |= "t.me".equals(domains.optString(index));
            }
        }
        if (telegram && shortLink) return true;
        JSONArray children = rule.optJSONArray("rules");
        if ("logical".equals(rule.optString("type")) && "or".equals(rule.optString("mode")) && children != null) {
            for (int index = 0; index < children.length(); index++) {
                if (isTelegramRule(children.optJSONObject(index))) return true;
            }
        }
        return false;
    }
    public static String domains() {
        StringBuilder result = new StringBuilder();
        for (String domain : DOMAINS) {
            if (result.length() > 0) result.append("\n");
            result.append("domain:").append(domain);
        }
        return result.toString();
    }

    public static String apply(String config) throws Exception {
        Object companion = Class.forName("io.nekohasekai.sagernet.database.SagerDatabase").getField("Companion").get(null);
        Object dao = companion.getClass().getMethod("getRulesDao").invoke(companion);
        java.util.List<?> saved = (java.util.List<?>) dao.getClass().getMethod("allRules").invoke(dao);
        boolean enabled = false;
        for (Object rule : saved) {
            if (RULE_NAME.equals(rule.getClass().getMethod("getName").invoke(rule))
                && (Boolean) rule.getClass().getMethod("getEnabled").invoke(rule)) enabled = true;
        }
        if (!enabled) return config;
        return applyRules(config);
    }

    public static String applyRules(String config) throws Exception {
        JSONObject root = new JSONObject(config);
        JSONObject route = root.getJSONObject("route");
        JSONArray rules = route.getJSONArray("rules");
        int selected = -1;
        String target = "";
        for (int index = 0; index < rules.length(); index++) {
            JSONObject rule = rules.getJSONObject(index);
            if (isTelegramRule(rule)) { selected = index; target = rule.optString("outbound"); break; }
        }
        if (selected < 0) throw new IllegalStateException("Telegram 分流未进入运行配置");
        boolean exists = false;
        JSONArray outbounds = root.getJSONArray("outbounds");
        for (int index = 0; index < outbounds.length(); index++) exists |= target.equals(outbounds.getJSONObject(index).optString("tag"));
        if (target.isEmpty() || !exists) throw new IllegalStateException("Telegram 分流节点不存在");
        JSONObject telegram = new JSONObject().put("type", "logical").put("mode", "or")
            .put("rules", new JSONArray().put(new JSONObject().put("domain_suffix", new JSONArray(DOMAINS)))
                .put(new JSONObject().put("ip_cidr", new JSONArray(NETWORKS))))
            .put("action", "route").put("outbound", target);
        JSONArray ordered = new JSONArray();
        int preparation = 0;
        while (preparation < rules.length()) {
            String action = rules.getJSONObject(preparation).optString("action");
            if (!"sniff".equals(action) && !"hijack-dns".equals(action)) break;
            ordered.put(rules.get(preparation++));
        }
        ordered.put(telegram);
        for (int index = preparation; index < rules.length(); index++) if (index != selected) ordered.put(rules.get(index));
        route.put("rules", ordered);
        return root.toString();
    }
}

