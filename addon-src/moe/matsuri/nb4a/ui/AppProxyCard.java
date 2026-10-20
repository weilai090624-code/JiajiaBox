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

package moe.matsuri.nb4a.ui;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.text.Editable;
import android.text.TextWatcher;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.Switch;
import android.widget.TextView;
import io.nekohasekai.sagernet.database.DataStore;
import io.nekohasekai.sagernet.ui.JJGlassCapsule;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.Executors;
import java.util.concurrent.ExecutorService;

public final class AppProxyCard {
    private static final String PERMISSION = "com.android.permission.GET_INSTALLED_APPS";
    private final Activity activity;
    private final Dialog dialog;
    private final ListView list;
    private final TextView status;
    private final EditText search;
    private final Switch system;
    private final List<ApplicationInfo> apps = new ArrayList<>();
    private final List<ApplicationInfo> visible = new ArrayList<>();
    private final AppProxySelection selected;
    private final java.util.Map<String, String> labels = new java.util.HashMap<>();
    private final java.util.Map<String, Long> ids = new java.util.HashMap<>();
    private long nextId = 1;
    private final android.widget.BaseAdapter adapter = new android.widget.BaseAdapter() {
        public int getCount() { return visible.size(); }
        public Object getItem(int position) { return visible.get(position); }
        public long getItemId(int position) {
            String name = visible.get(position).packageName;
            Long id = ids.get(name);
            if (id == null) { id = nextId++; ids.put(name, id); }
            return id;
        }
        public boolean hasStableIds() { return true; }
        public android.view.View getView(int position, android.view.View recycled, android.view.ViewGroup parent) {
            AppProxyRow row = recycled instanceof AppProxyRow
                ? (AppProxyRow) recycled : new AppProxyRow(activity);
            ApplicationInfo app = visible.get(position);
            String label = labels.get(app.packageName);
            row.bind(label == null ? app.packageName : label, app.packageName, selected.contains(app.packageName));
            return row;
        }
    };
    private final ExecutorService worker = Executors.newSingleThreadExecutor();
    private boolean loading;

    public static void open(Context context) {
        while (context instanceof ContextWrapper && !(context instanceof Activity)) {
            Context next = ((ContextWrapper) context).getBaseContext();
            if (next == context) return;
            context = next;
        }
        if (context instanceof Activity) new AppProxyCard((Activity) context);
    }

    private AppProxyCard(Activity activity) {
        this.activity = activity;
        dialog = new Dialog(activity);
        float density = activity.getResources().getDisplayMetrics().density;
        int padding = Math.round(16 * density);
        selected = new AppProxySelection(DataStore.INSTANCE.getIndividual());
        LinearLayout content = new LinearLayout(activity);
        content.setOrientation(1);
        content.setPadding(padding, padding, padding, padding);
        TextView title = new TextView(activity);
        title.setText("分应用代理");
        title.setTextSize(18);
        title.setTextColor(Color.WHITE);
        content.addView(title);
        RadioGroup modes = new RadioGroup(activity);
        String[] names = {"关闭", "仅代理选中应用", "绕过选中应用"};
        for (int index = 0; index < names.length; index++) {
            RadioButton mode = new RadioButton(activity);
            mode.setId(index + 1);
            mode.setText(names[index]);
            mode.setTextColor(Color.WHITE);
            modes.addView(mode);
        }
        modes.check(!DataStore.INSTANCE.getProxyApps() ? 1 : DataStore.INSTANCE.getBypass() ? 3 : 2);
        modes.setOnCheckedChangeListener((group, checked) -> {
            DataStore.INSTANCE.setProxyApps(checked != 1);
            if (checked != 1) DataStore.INSTANCE.setBypass(checked == 3);
            DataStore.INSTANCE.setDirty(true);
        });
        content.addView(modes);
        search = new EditText(activity);
        search.setSingleLine(true);
        search.setTextColor(Color.WHITE);
        search.setHintTextColor(0xffB8B8C0);
        search.setHint("搜索应用名称或包名");
        content.addView(search);
        system = new Switch(activity);
        system.setText("显示系统应用");
        system.setTextColor(Color.WHITE);
        system.setOnCheckedChangeListener((button, checked) -> filter());
        content.addView(system);
        status = new TextView(activity);
        status.setTextColor(0xffB8B8C0);
        content.addView(status);
        list = new ListView(activity);
        list.setChoiceMode(ListView.CHOICE_MODE_MULTIPLE);
        list.setItemsCanFocus(false);
        io.nekohasekai.sagernet.ui.DrawerAppearance.managedList(list);
        list.setAdapter(adapter);
        content.addView(list, new LinearLayout.LayoutParams(-1, Math.round(230 * density)));
        list.setOnItemClickListener((parent, view, position, id) -> {
            Object packageTag = view.getTag();
            if (!(packageTag instanceof String)) return;
            selected.toggle((String) packageTag);
            DataStore.INSTANCE.setIndividual(selected.saved());
            DataStore.INSTANCE.setDirty(true);
            syncChecks();
        });
        search.addTextChangedListener(new TextWatcher() {
            public void beforeTextChanged(CharSequence text, int start, int count, int after) {}
            public void onTextChanged(CharSequence text, int start, int before, int count) { filter(); }
            public void afterTextChanged(Editable text) {}
        });
        LinearLayout actions = new LinearLayout(activity);
        TextView permission = action("授权 / 刷新", padding);
        permission.setOnClickListener(view -> {
            if (activity.checkSelfPermission(PERMISSION) != PackageManager.PERMISSION_GRANTED) {
                activity.startActivity(new Intent(Settings.ACTION_APPLICATION_DETAILS_SETTINGS, Uri.parse("package:" + activity.getPackageName())));
            } else load();
        });
        TextView clear = action("清空", padding);
        clear.setOnClickListener(view -> {
            selected.clear();
            DataStore.INSTANCE.setIndividual("");
            DataStore.INSTANCE.setDirty(true);
            filter();
        });
        TextView close = action("完成", padding);
        close.setOnClickListener(view -> dialog.dismiss());
        actions.addView(permission);
        actions.addView(clear);
        actions.addView(close);
        content.addView(actions);
        JJGlassCapsule capsule = new JJGlassCapsule(activity);
        capsule.setCornerRadiusDp(22);
        capsule.setFrostVeil(0.7f);
        capsule.setFrostVeilColor(0);
        capsule.addView(content);
        dialog.setContentView(capsule);
        dialog.getWindow().setBackgroundDrawable(new ColorDrawable(Color.TRANSPARENT));
        dialog.getWindow().addFlags(2);
        dialog.getWindow().setDimAmount(0.22f);
        DrawerDialogLayout.apply(dialog.getWindow(), activity);
        dialog.setOnDismissListener(value -> worker.shutdownNow());
        dialog.show();
        capsule.getViewTreeObserver().addOnWindowFocusChangeListener(focused -> {
            if (focused && dialog.isShowing()) load();
        });
        load();
        try {
            android.content.pm.PermissionInfo info = activity.getPackageManager().getPermissionInfo(PERMISSION, 0);
            if ((info.protectionLevel & android.content.pm.PermissionInfo.PROTECTION_MASK_BASE) == android.content.pm.PermissionInfo.PROTECTION_DANGEROUS
                && activity.checkSelfPermission(PERMISSION) != PackageManager.PERMISSION_GRANTED) {
                activity.requestPermissions(new String[] {PERMISSION}, 7194);
            }
        } catch (PackageManager.NameNotFoundException ignored) {}
    }

    private TextView action(String label, int padding) {
        TextView button = new TextView(activity);
        button.setText(label);
        button.setTextColor(Color.WHITE);
        button.setPadding(padding / 2, padding, padding / 2, padding);
        return button;
    }

    private void load() {
        if (loading || worker.isShutdown()) return;
        loading = true;
        status.setText("正在读取应用列表…");
        worker.execute(() -> {
            List<ApplicationInfo> result = new ArrayList<>();
            java.util.Map<String, String> names = new java.util.HashMap<>();
            String error = null;
            try {
                result.addAll(activity.getPackageManager().getInstalledApplications(0));
                for (ApplicationInfo app : result) names.put(app.packageName, String.valueOf(app.loadLabel(activity.getPackageManager())));
                result.sort((first, second) -> names.get(first.packageName).compareToIgnoreCase(names.get(second.packageName)));
            } catch (Exception exception) { error = "无法读取应用列表，请授权后刷新"; }
            final String failure = error;
            new Handler(Looper.getMainLooper()).post(() -> {
                loading = false;
                if (!dialog.isShowing()) return;
                apps.clear();
                apps.addAll(result);
                labels.clear(); labels.putAll(names);
                java.util.Map<String, Integer> appUids = new java.util.HashMap<>();
                for (ApplicationInfo app : apps) appUids.put(app.packageName, app.uid);
                selected.applications(appUids);
                filter();
                if (failure != null || apps.size() <= 1) status.setText(failure != null ? failure : "读取应用列表受限，请点授权 / 刷新并开启应用列表权限");
            });
        });
    }

    private void filter() {
        visible.clear();

        String query = search.getText().toString().trim().toLowerCase(Locale.ROOT);
        for (ApplicationInfo app : apps) {
            if (!system.isChecked() && (app.flags & ApplicationInfo.FLAG_SYSTEM) != 0 && !selected.contains(app.packageName)) continue;
            String label = labels.get(app.packageName);
            if (label == null) label = app.packageName;
            if (!query.isEmpty() && !(label + " " + app.packageName).toLowerCase(Locale.ROOT).contains(query)) continue;
            visible.add(app);

        }
        list.clearChoices();
        adapter.notifyDataSetChanged();
        syncChecks();
    }

    private void syncChecks() {
        for (int index = 0; index < visible.size(); index++) {
            boolean checked = selected.contains(visible.get(index).packageName);
            if (list.isItemChecked(index) != checked) list.setItemChecked(index, checked);
        }
        status.setText("应用 " + visible.size() + " 个 · 已选 " + selected.size() + " 个");
    }
}

