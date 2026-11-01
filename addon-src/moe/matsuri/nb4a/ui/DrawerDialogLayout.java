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

