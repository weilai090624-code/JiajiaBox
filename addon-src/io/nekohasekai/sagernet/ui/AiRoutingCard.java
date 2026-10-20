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

import android.app.Dialog;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.GradientDrawable;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.Gravity;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.ScrollView;
import android.widget.EditText;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.view.ViewGroup;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public final class AiRoutingCard extends LinearLayout {
    private final String RULE_NAME;
    private final String title;
    private final boolean telegram;
    private static final ExecutorService WORKER = Executors.newSingleThreadExecutor();
    private final String ALL_DOMAINS;

    private final Handler main = new Handler(Looper.getMainLooper());

    public AiRoutingCard(Context context) {
        this(context, false);
    }

    public AiRoutingCard(Context context, boolean telegram) {
        super(context);
        this.telegram = telegram;
        RULE_NAME = telegram ? TelegramRouting.RULE_NAME : "佳嘉 · 主流 AI 聚合分流";
        title = telegram ? "Telegram分流" : "AI分流";
        ALL_DOMAINS = telegram ? TelegramRouting.domains() : AiRoutingDomains.rules();
        setId(0x7f0a0169);
        setOrientation(VERTICAL);
        setGravity(Gravity.CENTER);
        setBackgroundResource(0x7f08008d);
        int padding = Math.round(14 * getResources().getDisplayMetrics().density);
        setPadding(padding, padding, padding, padding);
        setGravity(Gravity.CENTER_VERTICAL);
        LinearLayout heading=new LinearLayout(context);heading.setGravity(Gravity.CENTER_VERTICAL);
        TextView name=new TextView(context);name.setText(telegram?"Telegram":"AI 分流");name.setTextSize(14);name.setTypeface(Typeface.create("sans-serif-medium",Typeface.NORMAL));name.setSingleLine(true);name.setEllipsize(android.text.TextUtils.TruncateAt.END);name.setIncludeFontPadding(false);UiComponents.text(name);
        heading.addView(name,new LayoutParams(0,-2,1));
        TextView arrow=new TextView(context);arrow.setText("↗");arrow.setTextSize(17);UiComponents.secondary(arrow);heading.addView(arrow,new LayoutParams(-2,-2));addView(heading,new LayoutParams(-1,-2));
        TextView description=new TextView(context);description.setText(telegram?"消息与通话分流":"为 AI 独立选择节点");description.setTextSize(10);description.setSingleLine(true);description.setEllipsize(android.text.TextUtils.TruncateAt.END);description.setIncludeFontPadding(false);UiComponents.secondary(description);LayoutParams detail=new LayoutParams(-1,-2);detail.topMargin=UiComponents.dp(context,9);addView(description,detail);
        setClickable(true);
        setFocusable(true);
        setOnClickListener(view -> choose());
        refresh();
    }

    private TextView addText(String content, int size, boolean primary) {
        TextView text = new TextView(getContext());
        text.setId(primary ? 0x7f0a0167 : 0x7f0a016a);
        text.setText(content);
        text.setTextSize(size);
        text.setTextColor(primary ? 0xff141416 : 0xff8a8a92);
        text.setGravity(Gravity.CENTER);
        text.setPadding(0, 5, 0, 5);
        addView(text, new LayoutParams(-1, -2));
        return text;
    }

    private static Object dao(String method) throws Exception {
        Object companion = Class.forName("io.nekohasekai.sagernet.database.SagerDatabase").getField("Companion").get(null);
        return companion.getClass().getMethod(method).invoke(companion);
    }

    private static Object call(Object target, String name, Class<?>[] types, Object... values) throws Exception {
        Method method = target.getClass().getMethod(name, types);
        return method.invoke(target, values);
    }

    private Object rule(Object rulesDao) throws Exception {
        for (Object candidate : (List<?>) call(rulesDao, "allRules", new Class<?>[0])) {
            if (RULE_NAME.equals(call(candidate, "getName", new Class<?>[0]))) return candidate;
        }
        return null;
    }

    public static List<?> visibleRules(List<?> rules) {
        List<Object> visible = new ArrayList<>();
        for (Object candidate : rules) {
            try {
                String name = (String) call(candidate, "getName", new Class<?>[0]);
                if ("佳嘉 · 主流 AI 聚合分流".equals(name) || TelegramRouting.RULE_NAME.equals(name)) continue;
            } catch (Exception error) {
                throw new IllegalStateException("Cannot filter internal AI rule", error);
            }
            visible.add(candidate);
        }
        return visible;
    }

    private void refresh() {
        WORKER.execute(() -> {
            try {
                Object current = rule(dao("getRulesDao"));
                if (current != null && (Boolean) call(current, "getEnabled", new Class<?>[0])) {
                    if (!ALL_DOMAINS.equals(call(current, "getDomains", new Class<?>[0]))) {
                        call(current, "setDomains", new Class<?>[]{String.class}, ALL_DOMAINS);
                        call(dao("getRulesDao"), "updateRule", new Class<?>[]{current.getClass()}, current);
                    }
                }
            } catch (Exception error) {
                android.util.Log.e("AiRoutingCard", "Cannot refresh AI routing rule", error);
            }
        });
    }

    @Override protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        refresh();
    }

    private void choose() {
        WORKER.execute(() -> {
            try {
                List<?> proxies = (List<?>) call(dao("getProxyDao"), "getAll", new Class<?>[0]);
                List<Long> ids = new ArrayList<>();
                List<String> labels = new ArrayList<>();
                Object current = rule(dao("getRulesDao"));
                long selectedId = current != null && (Boolean) call(current, "getEnabled", new Class<?>[0])
                    ? (Long) call(current, "getOutbound", new Class<?>[0]) : 0L;
                ids.add(0L);
                labels.add((selectedId == 0 ? "✓ " : "") + "关闭" + title);
                for (Object proxy : proxies) {
                    ids.add((Long) call(proxy, "getId", new Class<?>[0]));
                    long id = ids.get(ids.size() - 1);
                    labels.add((id == selectedId ? "✓ " : "") + call(proxy, "displayName", new Class<?>[0]));
                }
                main.post(() -> {
                    if (!isAttachedToWindow()) return;
                    showNodeDialog(ids, labels);
                });
            } catch (Exception error) {
                main.post(() -> Toast.makeText(getContext(), "无法读取节点列表", Toast.LENGTH_LONG).show());
            }
        });
    }

    private void save(long proxyId) {
        WORKER.execute(() -> {
            try {
                Object rulesDao = dao("getRulesDao");
                if (proxyId > 0 && call(dao("getProxyDao"), "getById", new Class<?>[]{long.class}, proxyId) == null) {
                    throw new IllegalStateException("Selected proxy no longer exists");
                }
                Object current = rule(rulesDao);
                boolean create = current == null;
                if (create && proxyId == 0) {
                    refresh();
                    return;
                }
                if (create) current = Class.forName("io.nekohasekai.sagernet.database.RuleEntity").getConstructor().newInstance();
                call(current, "setName", new Class<?>[]{String.class}, RULE_NAME);
                call(current, "setDomains", new Class<?>[]{String.class}, ALL_DOMAINS);
                call(current, "setOutbound", new Class<?>[]{long.class}, proxyId);
                call(current, "setEnabled", new Class<?>[]{boolean.class}, proxyId > 0);
                long firstOrder = 0;
                for (Object existing : (List<?>) call(rulesDao, "allRules", new Class<?>[0])) {
                    if (!RULE_NAME.equals(call(existing, "getName", new Class<?>[0]))) {
                        firstOrder = Math.min(firstOrder, (Long) call(existing, "getUserOrder", new Class<?>[0]));
                    }
                }
                call(current, "setUserOrder", new Class<?>[]{long.class}, firstOrder == Long.MIN_VALUE ? firstOrder : firstOrder - 1);
                Class<?> ruleType = Class.forName("io.nekohasekai.sagernet.database.RuleEntity");
                call(rulesDao, create ? "createRule" : "updateRule", new Class<?>[]{ruleType}, current);
                main.post(() -> {
                    refresh();
                    Toast.makeText(getContext(), "已保存，重新连接代理后生效", Toast.LENGTH_LONG).show();
                });
            } catch (Exception error) {
                android.util.Log.e("AiRoutingCard", "Cannot save AI routing rule", error);
                main.post(() -> Toast.makeText(getContext(), "保存失败，原分流配置未替换", Toast.LENGTH_LONG).show());
            }
        });
    }

    private void showNodeDialog(List<Long> ids, List<String> labels) {
        try {
            Context context = getContext();
            float density = getResources().getDisplayMetrics().density;
            Dialog dialog = new Dialog(context);
            ViewGroup capsule = (ViewGroup) Class.forName("io.nekohasekai.sagernet.ui.JJGlassCapsule")
                .getConstructor(Context.class).newInstance(context);
            call(capsule, "setCornerRadiusDp", new Class<?>[]{float.class}, 22f);
            call(capsule, "setFrostVeil", new Class<?>[]{float.class}, 0.7f);
            call(capsule, "setFrostVeilColor", new Class<?>[]{int.class}, 0);
            LinearLayout column = new LinearLayout(context);
            column.setOrientation(VERTICAL);
            int padding = Math.round(22 * density);
            column.setPadding(padding, padding, padding, padding);
            TextView title = new TextView(context);
            title.setText(this.title);
            title.setTextColor(Color.WHITE);
            title.setTextSize(18);
            title.setTypeface(Typeface.DEFAULT_BOLD);
            column.addView(title);
            EditText search = new EditText(context);
            search.setSingleLine(true);
            search.setTextColor(Color.WHITE);
            search.setHintTextColor(0xffB8B8C0);
            search.setHint("搜索节点名称");
            column.addView(search);
            TextView status = new TextView(context);
            status.setTextColor(0xffB8B8C0);
            status.setText("节点 " + (labels.size() - 1) + " 个");
            column.addView(status);
            LinearLayout options = new LinearLayout(context);
            options.setOrientation(VERTICAL);
            List<TextView> rows = new ArrayList<>();
            for (int index = 0; index < labels.size(); index++) {
                long id = ids.get(index);
                TextView option = new TextView(context);
                option.setText(labels.get(index));
                option.setSelected(labels.get(index).startsWith("✓ "));
                option.setTextColor(0xfff0f0f3);
                option.setTextSize(15);
                option.setGravity(Gravity.CENTER_VERTICAL);
                option.setPadding(Math.round(12 * density), Math.round(12 * density), Math.round(12 * density), Math.round(12 * density));
                option.setMinHeight(Math.round(48 * density));
                GradientDrawable background = new GradientDrawable();
                background.setColor(0x20000000);
                background.setCornerRadius(12 * density);
                option.setBackground(background);
                LayoutParams parameters = new LayoutParams(-1, -2);
                parameters.topMargin = Math.round(8 * density);
                options.addView(option, parameters);
                rows.add(option);
                option.setOnClickListener(view -> { save(id); dialog.dismiss(); });
            }
            ScrollView scroll = new ScrollView(context);
            scroll.addView(options);
            int height = Math.min(Math.round(labels.size() * 64 * density), (int) (getResources().getDisplayMetrics().heightPixels * 0.55f));
            column.addView(scroll, new LayoutParams(-1, height));
            search.addTextChangedListener(new TextWatcher() {
                public void beforeTextChanged(CharSequence text, int start, int count, int after) {}
                public void onTextChanged(CharSequence text, int start, int before, int count) {
                    String query = text.toString().trim().toLowerCase(Locale.ROOT);
                    int visible = 0;
                    for (int index = 0; index < rows.size(); index++) {
                        boolean matches = index == 0 || labels.get(index).toLowerCase(Locale.ROOT).contains(query);
                        rows.get(index).setVisibility(matches ? View.VISIBLE : View.GONE);
                        if (index > 0 && matches) visible++;
                    }
                    status.setText(visible == 0 ? "没有匹配的节点" : "节点 " + visible + " 个");
                }
                public void afterTextChanged(Editable text) {}
            });
            TextView cancel = new TextView(context);
            cancel.setText("取消");
            cancel.setTextSize(15);
            cancel.setTextColor(0xffc2c2cb);
            cancel.setGravity(Gravity.CENTER);
            cancel.setIncludeFontPadding(false);
            cancel.setPadding(Math.round(16 * density), 0, Math.round(16 * density), 0);
            cancel.setMinWidth(Math.round(88 * density));
            cancel.setOnClickListener(view -> dialog.dismiss());
            LayoutParams cancelParameters = new LayoutParams(-2, Math.round(44 * density));
            cancelParameters.gravity = Gravity.END;
            cancelParameters.topMargin = Math.round(12 * density);
            column.addView(cancel, cancelParameters);
            capsule.addView(column, new ViewGroup.LayoutParams(-1, -2));
            dialog.setContentView(capsule);
            dialog.getWindow().setBackgroundDrawable(new ColorDrawable(Color.TRANSPARENT));
            Class.forName("moe.matsuri.nb4a.ui.DrawerDialogLayout")
                .getMethod("apply", android.view.Window.class, Context.class).invoke(null, dialog.getWindow(), context);
            dialog.show();
        } catch (Exception error) {
            android.util.Log.e("AiRoutingCard", "Cannot show glass node selector", error);
            Toast.makeText(getContext(), "无法打开节点选择器", Toast.LENGTH_LONG).show();
        }
    }
}

