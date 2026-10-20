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

import android.content.Context;
import android.content.res.ColorStateList;
import android.text.TextUtils;
import android.view.Gravity;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Checkable;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.TextView;
import io.nekohasekai.sagernet.ui.DrawerAppearance;

/** A recycled application row whose checkbox never contributes to text padding. */
public final class AppProxyRow extends LinearLayout implements Checkable {
    private final TextView name;
    private final TextView packageName;
    private final CheckBox check;

    public AppProxyRow(Context context) {
        super(context);
        float density = getResources().getDisplayMetrics().density;
        setOrientation(HORIZONTAL);
        setGravity(Gravity.CENTER_VERTICAL);
        setPaddingRelative(Math.round(12 * density), Math.round(8 * density), Math.round(8 * density), Math.round(8 * density));
        setMinimumHeight(Math.round(68 * density));
        setFocusable(false);
        setClickable(false);
        LinearLayout text = new LinearLayout(context);
        text.setOrientation(VERTICAL);
        name = new TextView(context);
        name.setTextSize(14);
        name.setSingleLine(true);
        name.setEllipsize(TextUtils.TruncateAt.END);
        packageName = new TextView(context);
        packageName.setTextSize(11);
        packageName.setSingleLine(true);
        packageName.setEllipsize(TextUtils.TruncateAt.END);
        text.addView(name, new LinearLayout.LayoutParams(-1, -2));
        LinearLayout.LayoutParams subtitle = new LinearLayout.LayoutParams(-1, -2);
        subtitle.topMargin = Math.round(3 * density);
        text.addView(packageName, subtitle);
        addView(text, new LinearLayout.LayoutParams(0, -2, 1));
        check = new CheckBox(context);
        check.setFocusable(false);
        check.setFocusableInTouchMode(false);
        check.setClickable(false);
        check.setImportantForAccessibility(View.IMPORTANT_FOR_ACCESSIBILITY_NO);
        addView(check, new LinearLayout.LayoutParams(-2, -2));
        DrawerAppearance.choiceRow(this);
        check.setButtonTintList(ColorStateList.valueOf(name.getCurrentTextColor()));
    }

    public void bind(String label, String id, boolean checked) {
        name.setText(label);
        packageName.setText(id);
        setTag(id);
        setContentDescription(label + ", " + id);
        setChecked(checked);
    }

    @Override public boolean isChecked() { return check.isChecked(); }
    @Override public void setChecked(boolean checked) { check.setChecked(checked); }
    @Override public void toggle() { setChecked(!isChecked()); }
    @Override public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo info) {
        super.onInitializeAccessibilityNodeInfo(info);
        info.setCheckable(true);
        info.setChecked(isChecked());
    }
}

