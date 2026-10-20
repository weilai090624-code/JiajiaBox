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

