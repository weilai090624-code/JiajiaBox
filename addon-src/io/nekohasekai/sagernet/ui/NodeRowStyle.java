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

import android.graphics.Typeface;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

/** Assign geometry once per holder; binding and theme colors keep their existing owners. */
public final class NodeRowStyle {
    private NodeRowStyle() {}

    public static void install(View row) {
        TextView name=row.findViewById(0x7f0a0167);
        TextView subtitle=row.findViewById(0x7f0a016a);
        TextView ping=row.findViewById(0x7f0a0168);
        TextView emblem=row.findViewById(0x7f0a0166);
        if(name==null || subtitle==null || ping==null || emblem==null)return;
        row.setPaddingRelative(dp(row,16),dp(row,12),dp(row,16),dp(row,12));
        row.setMinimumHeight(dp(row,78));
        ViewGroup.LayoutParams params=row.getLayoutParams();
        if(params!=null){
            params.height=ViewGroup.LayoutParams.WRAP_CONTENT;
            if(params instanceof ViewGroup.MarginLayoutParams){
                ViewGroup.MarginLayoutParams margins=(ViewGroup.MarginLayoutParams)params;
                margins.topMargin=dp(row,4);margins.bottomMargin=dp(row,4);
            }
            row.setLayoutParams(params);
        }
        name.setTextSize(15);name.setIncludeFontPadding(false);
        name.setTypeface(Typeface.create("sans-serif-medium",Typeface.NORMAL));
        name.setMaxLines(2);name.setEllipsize(TextUtils.TruncateAt.END);
        subtitle.setTextSize(11);subtitle.setIncludeFontPadding(false);
        subtitle.setTypeface(Typeface.create("sans-serif",Typeface.NORMAL));
        ping.setTextSize(12);ping.setIncludeFontPadding(false);
        ping.setFontFeatureSettings("tnum");ping.setMinWidth(dp(row,52));
        ViewGroup.LayoutParams emblemParams=emblem.getLayoutParams();
        emblemParams.width=dp(row,34);emblemParams.height=dp(row,34);
        emblem.setLayoutParams(emblemParams);emblem.setTextSize(15);
    }

    private static int dp(View view,float value){return UiComponents.dp(view.getContext(),value);}
}
