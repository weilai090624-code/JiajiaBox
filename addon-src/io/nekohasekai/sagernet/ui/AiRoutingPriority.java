/*
 * Copyright (c) 2026 weilai090624-code
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
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

