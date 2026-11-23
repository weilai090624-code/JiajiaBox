package io.nekohasekai.sagernet.ui;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;

/** 抽屉行背景：纯色 + 圆角 + 描边，供 DrawerDesign.background 使用。 */
public final class SortRowStyle {
    /** 与 DrawerDesign.shape 一致，额外加 1dp 描边。 */
    public static GradientDrawable shape(Context context, int color, int radiusDp) {
        float density = context.getResources().getDisplayMetrics().density;
        GradientDrawable drawable = new GradientDrawable();
        drawable.setColor(color);
        drawable.setCornerRadius(Math.round(radiusDp * density));
        drawable.setStroke(Math.max(1, Math.round(density)), ThemePalette.border(context));
        return drawable;
    }
}
