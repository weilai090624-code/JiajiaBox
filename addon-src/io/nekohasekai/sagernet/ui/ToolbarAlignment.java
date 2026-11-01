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

import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.TextView;

public final class ToolbarAlignment {
    public static void align(ViewGroup toolbar) {
        ImageButton navigation = null;
        TextView title = null;
        for (int index = 0; index < toolbar.getChildCount(); index++) {
            View child = toolbar.getChildAt(index);
            if (child instanceof ImageButton && child.getVisibility() == View.VISIBLE) navigation = (ImageButton) child;
            if (child instanceof TextView && child.getVisibility() == View.VISIBLE) title = (TextView) child;
        }
        if (navigation != null && title != null) {
            navigation.setTranslationY((title.getTop() + title.getBottom()
                - navigation.getTop() - navigation.getBottom()) / 2f);
        }
    }
}

