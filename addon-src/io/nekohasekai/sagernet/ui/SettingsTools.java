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

import android.content.Context;
import android.view.View;
import android.view.Menu;
import android.view.MenuItem;

public final class SettingsTools {
    public static void hideTopLevel(View view) {
        if (view == null) return;
        try {
            Menu menu = (Menu) view.getClass().getMethod("getMenu").invoke(view);
            MenuItem item = menu.findItem(0x7f0a01e8);
            if (item != null) item.setVisible(false);
        } catch (NoSuchMethodException ignored) {
            // Custom drawer entries are filtered in MainActivity's constructor.
        } catch (Exception exception) {
            android.util.Log.e("SettingsTools", "Cannot hide tools menu entry", exception);
        }
    }

    public static void install(Object fragment) {
        DnsIpRouting.install(fragment);
        try {
            Context context = (Context) fragment.getClass().getMethod("requireContext").invoke(fragment);
            Object screen = fragment.getClass().getMethod("getPreferenceScreen").invoke(fragment);
            Class<?> group = Class.forName("androidx.preference.PreferenceGroup");
            if (group.getMethod("findPreference", CharSequence.class).invoke(screen, "settingsTools") != null) return;
            Class<?> preference = Class.forName("androidx.preference.Preference");
            Object row = preference.getConstructor(Context.class).newInstance(context);
            preference.getMethod("setKey", String.class).invoke(row, "settingsTools");
            preference.getMethod("setTitle", CharSequence.class).invoke(row, "工具");
            preference.getMethod("setOrder", int.class).invoke(row, Integer.MAX_VALUE - 1);
            preference.getMethod("setPersistent", boolean.class).invoke(row, false);
            Class<?> listener = Class.forName("androidx.preference.Preference$OnPreferenceClickListener");
            Object click = java.lang.reflect.Proxy.newProxyInstance(listener.getClassLoader(), new Class<?>[]{listener}, (proxy, method, args) -> {
                if ("onPreferenceClick".equals(method.getName())) {
                    Object activity = fragment.getClass().getMethod("requireActivity").invoke(fragment);
                    activity.getClass().getMethod("openSettingsTools").invoke(activity);
                    return true;
                }
                if ("hashCode".equals(method.getName())) return System.identityHashCode(proxy);
                if ("equals".equals(method.getName())) return proxy == args[0];
                return "SettingsToolsClick";
            });
            preference.getMethod("setOnPreferenceClickListener", listener).invoke(row, click);
            group.getMethod("addPreference", preference).invoke(screen, row);
        } catch (Exception exception) {
            android.util.Log.e("SettingsTools", "Cannot add tools settings entry", exception);
        }
    }
}

