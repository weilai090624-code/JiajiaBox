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

/**
 * Forces Google Play's gvt1 redirect/download domains through the main proxy.
 *
 * The default CN split routes these domains direct. The redirector returns
 * r1---sn-*.gvt1-cn.com URLs, so both the redirector and the download hosts
 * must be matched. This rule is inserted before the CN direct rules.
 */
public final class BuiltinDomainRouting {
    private static final String[] DOMAINS = {
        "gvt1-cn.com",
        "gvt1.com"
    };

    public static String applyRuntime(String config) {
        try {
            return apply(config);
        } catch (Exception error) {
            return config;
        }
    }

    public static String apply(String config) throws Exception {
        JSONObject root = new JSONObject(config);
        JSONObject route = root.optJSONObject("route");
        if (route == null) return config;
        JSONArray rules = route.optJSONArray("rules");
        JSONArray outbounds = root.optJSONArray("outbounds");
        if (rules == null || outbounds == null) return config;
        String target = proxyTag(root, outbounds);
        if (target.isEmpty()) return config;
        for (int index = 0; index < rules.length(); index++) {
            JSONObject rule = rules.getJSONObject(index);
            if (target.equals(rule.optString("outbound")) && containsAll(rule)) return config;
        }
        JSONArray suffixes = new JSONArray();
        for (String domain : DOMAINS) suffixes.put(domain);
        JSONObject injection = new JSONObject()
            .put("domain_suffix", suffixes)
            .put("outbound", target);
        JSONArray ordered = new JSONArray();
        int insertAt = 0;
        while (insertAt < rules.length()) {
            String action = rules.getJSONObject(insertAt).optString("action");
            if (!"sniff".equals(action) && !"hijack-dns".equals(action)) break;
            ordered.put(rules.get(insertAt++));
        }
        ordered.put(injection);
        for (int index = insertAt; index < rules.length(); index++) {
            ordered.put(rules.get(index));
        }
        route.put("rules", ordered);
        return root.toString();
    }

    private static String proxyTag(JSONObject root, JSONArray outbounds) throws Exception {
        for (int index = 0; index < outbounds.length(); index++) {
            JSONObject outbound = outbounds.getJSONObject(index);
            if ("proxy".equals(outbound.optString("tag"))) return "proxy";
        }
        String finalTag = root.getJSONObject("route").optString("final");
        if (finalTag.isEmpty()) return "";
        for (int index = 0; index < outbounds.length(); index++) {
            JSONObject outbound = outbounds.getJSONObject(index);
            if (!finalTag.equals(outbound.optString("tag"))) continue;
            String type = outbound.optString("type");
            if (!"direct".equals(type) && !"block".equals(type)) return finalTag;
        }
        return "";
    }

    private static boolean containsAll(JSONObject rule) {
        JSONArray suffixes = rule.optJSONArray("domain_suffix");
        if (suffixes == null) return false;
        for (String domain : DOMAINS) {
            boolean found = false;
            for (int index = 0; index < suffixes.length(); index++) {
                if (domain.equals(suffixes.optString(index))) {
                    found = true;
                    break;
                }
            }
            if (!found) return false;
        }
        return true;
    }
}
