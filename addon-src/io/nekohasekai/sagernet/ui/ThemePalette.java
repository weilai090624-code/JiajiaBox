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
import android.content.res.ColorStateList;

/** One palette for custom controls; theme mode is resolved at paint time. */
public final class ThemePalette {
    public static boolean dark(Context c) { return JJGlassToolbar.matteTextColor(c) == 0xffffffff; }
    public static int text(Context c) { return JJGlassToolbar.matteTextColor(c); }
    public static int surface(Context c) { return JJGlassToolbar.matteColor(c); }
    public static int control(Context c) { return dark(c) ? 0xff303137 : 0xffffffff; }
    public static int border(Context c) { return dark(c) ? 0xff3d3e46 : 0xffeae7eb; }
    public static int secondary(Context c) { return dark(c) ? 0xffb0acb5 : 0xff78737d; }
    public static int ripple(Context c) { return dark(c) ? 0x24ffffff : 0x24d76a90; }
    public static int accent(Context c) { return dark(c) ? 0xffe0a4bc : 0xffb74771; }
    public static int selected(Context c) { return dark(c) ? 0xff393039 : 0xfffcf0f5; }
    public static int selectedBorder(Context c) { return dark(c) ? 0xff6c4d5d : 0xffe8c2d2; }
    public static int inset(Context c) { return dark(c) ? 0xff24252b : 0xfff8f6f8; }
    public static final int CARD_RADIUS=22, PANEL_RADIUS=26, CELL_RADIUS=16;
    public static ColorStateList textStates(Context c) {
        int fg=text(c);
        return new ColorStateList(new int[][]{new int[]{-android.R.attr.state_enabled},new int[0]},
            new int[]{(fg & 0x00ffffff) | 0x66000000,fg});
    }
}

