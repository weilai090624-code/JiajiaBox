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

