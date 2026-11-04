package io.nekohasekai.sagernet.ui;

import org.json.JSONArray;
import org.json.JSONObject;

import java.net.URLDecoder;

/**
 * Reads an optional Subscription-Dns response header and stages it through the
 * existing SubscriptionDns pipeline. No extra network request is made.
 *
 * Accepted header values (raw, not URL-encoded preferred):
 *   {"servers":[...],"rules":[...]}
 * or a full {"dns":{...},"outbounds":[...]} object.
 */
public final class SubscriptionDnsHeader {
    private SubscriptionDnsHeader() {
    }

    public static void stage(Object group, String header) {
        try {
            if (group == null || header == null) {
                return;
            }
            String text = header.trim();
            if (text.isEmpty()) {
                return;
            }
            if (text.charAt(0) != '{') {
                text = URLDecoder.decode(text, "UTF-8").trim();
            }
            if (text.isEmpty() || text.charAt(0) != '{') {
                return;
            }
            JSONObject parsed = new JSONObject(text);
            JSONObject root;
            if (parsed.has("dns")) {
                root = parsed;
                if (!root.has("outbounds") && !root.has("proxies")) {
                    root.put("outbounds", new JSONArray());
                }
            } else {
                root = new JSONObject();
                root.put("dns", parsed);
                root.put("outbounds", new JSONArray());
            }
            Class.forName("io.nekohasekai.sagernet.ui.SubscriptionDns")
                    .getMethod("stage", Object.class, String.class)
                    .invoke(null, group, root.toString());
        } catch (Throwable ignored) {
        }
    }
}
