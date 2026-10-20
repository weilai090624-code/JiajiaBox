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
import android.content.Context;
import android.content.ContextWrapper;
import android.graphics.Rect;
import android.view.Gravity;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;

public final class DrawerDialogLayout {
    public static void apply(Window window, Context context) {
        if (window == null) return;
        io.nekohasekai.sagernet.ui.DrawerAppearance.settingsWindow(window);
        Context current = context;
        while (current instanceof ContextWrapper && !(current instanceof Activity)) {
            Context next = ((ContextWrapper) current).getBaseContext();
            if (next == current) break;
            current = next;
        }
        int width = (int) (context.getResources().getDisplayMetrics().widthPixels * 0.94f);
        if (current instanceof Activity) {
            Activity activity = (Activity) current;
            View host = activity.findViewById(0x7f0a01e2);
            Rect bounds = new Rect();
            if (host != null && host.isShown() && host.getGlobalVisibleRect(bounds) && bounds.width() > 0) {
                int margin = Math.round(16 * context.getResources().getDisplayMetrics().density);
                width = Math.max(1, bounds.width() - margin * 2);
                Rect frame = new Rect();
                activity.getWindow().getDecorView().getWindowVisibleDisplayFrame(frame);
                WindowManager.LayoutParams attributes = window.getAttributes();
                attributes.gravity = Gravity.CENTER_VERTICAL | Gravity.LEFT;
                attributes.x = bounds.left + (bounds.width() - width) / 2 - frame.left;
                attributes.y = bounds.centerY() - frame.centerY();
                window.setAttributes(attributes);
            }
        }
        window.setLayout(width, -2);
    }
}

