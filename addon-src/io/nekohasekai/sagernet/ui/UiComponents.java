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
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.*;
import java.util.WeakHashMap;

/** Shared geometry is assigned once. Theme updates only change paint and text. */
public final class UiComponents {
    public static final int PANEL_RADIUS = ThemePalette.PANEL_RADIUS, CELL_RADIUS = ThemePalette.CELL_RADIUS;
    public static final int ACTION_HEIGHT = 48, ACTION_MIN_WIDTH = 88, GAP = 8, CONTENT_PAD = 20;
    public static final int TRANSITION_MS = 220;
    private enum Role { SURFACE, TITLE, TEXT, SECONDARY, FIELD, ACTION, CHOICE, ROUTING }
    private static final class Style {
        final Role role;
        final GradientDrawable background;
        android.graphics.drawable.Drawable installed;
        Style(Role role, GradientDrawable background) { this.role = role; this.background = background; }
    }
    private static final WeakHashMap<View, Style> styles = new WeakHashMap<>();
    public static int dp(Context c, float value) { return Math.round(value * c.getResources().getDisplayMetrics().density); }
    public static boolean owns(View view) { return styles.containsKey(view); }
    /** Bind neutral text created by the original drawer builders, including late rule rows. */
    public static void legacyText(TextView view, String color) {
        int original=android.graphics.Color.parseColor(color);
        int red=android.graphics.Color.red(original),green=android.graphics.Color.green(original),blue=android.graphics.Color.blue(original);
        int high=Math.max(red,Math.max(green,blue)),low=Math.min(red,Math.min(green,blue));
        if(high-low<=24) {
            if(low>=230)text(view);else secondary(view);
        } else view.setTextColor(original);
    }
    private static void register(View view, Role role, boolean background) {
        GradientDrawable shape = background ? new GradientDrawable() : null;
        styles.put(view, new Style(role, shape));
        if (shape != null) {
            int start=view.getPaddingStart(), top=view.getPaddingTop(), end=view.getPaddingEnd(), bottom=view.getPaddingBottom();
            view.setBackgroundTintList(null);
            view.setBackground((role==Role.ACTION || role==Role.CHOICE || role==Role.ROUTING)
                ? new android.graphics.drawable.RippleDrawable(android.content.res.ColorStateList.valueOf(ThemePalette.ripple(view.getContext())),shape,null) : shape);
            styles.get(view).installed=view.getBackground();
            view.setPaddingRelative(start,top,end,bottom);
        }
        if(role==Role.SURFACE||role==Role.ROUTING||role==Role.CHOICE)CardLight.bind(view,role==Role.ROUTING?ThemePalette.CARD_RADIUS:role==Role.SURFACE?PANEL_RADIUS:CELL_RADIUS);
        paint(view);
        if(role==Role.SURFACE)PopupBackdrop.bind(view);
    }
    public static void panel(View view) { if(!owns(view))register(view,Role.SURFACE,true);else paint(view); }
    public static void routingCard(View view) {
        if(!owns(view)) register(view,Role.ROUTING,true); else paint(view);
        if(view instanceof ViewGroup) {
            ViewGroup group=(ViewGroup)view;
            for(int i=0;i<group.getChildCount();i++) {
                View child=group.getChildAt(i);
                if(child instanceof TextView) { if(!owns(child))text((TextView)child);else paint(child); }
            }
        }
    }
    public static FrameLayout surface(Context c) {
        FrameLayout view = new FrameLayout(c);
        register(view, Role.SURFACE, true);
        view.setClipToOutline(true);
        return view;
    }
    public static LinearLayout column(Context c) {
        LinearLayout view = new LinearLayout(c);
        view.setOrientation(LinearLayout.VERTICAL);
        view.setPadding(dp(c, CONTENT_PAD),dp(c,CONTENT_PAD),dp(c,CONTENT_PAD),dp(c,16));
        return view;
    }
    public static TextView title(Context c, CharSequence text) {
        TextView view=new TextView(c);view.setText(text);view.setTextSize(20);
        view.setTypeface(Typeface.create("sans-serif-medium", Typeface.NORMAL));
        view.setIncludeFontPadding(false);view.setLetterSpacing(-.015f);
        view.setGravity(Gravity.CENTER_VERTICAL);view.setMinHeight(dp(c,32));
        register(view,Role.TITLE,false);return view;
    }
    public static void text(TextView view) { register(view,Role.TEXT,false); }
    public static void secondary(TextView view) { register(view,Role.SECONDARY,false); }
    public static void field(EditText view) {
        if (owns(view)) return;
        Context c=view.getContext();
        view.setPaddingRelative(dp(c,16),dp(c,13),dp(c,16),dp(c,13));
        view.setMinimumHeight(dp(c,ACTION_HEIGHT));
        register(view,Role.FIELD,true);
    }
    public static void action(View view) {
        if (owns(view)) return;
        Context c=view.getContext();
        view.setMinimumWidth(dp(c,ACTION_MIN_WIDTH));view.setMinimumHeight(dp(c,ACTION_HEIGHT));
        if (view instanceof TextView) {
            TextView label=(TextView)view;label.setGravity(Gravity.CENTER);label.setIncludeFontPadding(false);
            label.setTextSize(14);label.setTypeface(Typeface.create("sans-serif-medium",Typeface.NORMAL));label.setPaddingRelative(dp(c,16),0,dp(c,16),0);
        } else if (view instanceof ViewGroup) {
            ViewGroup group=(ViewGroup)view;
            for(int i=0;i<group.getChildCount();i++) {
                View child=group.getChildAt(i);
                if(child instanceof TextView) {
                    TextView label=(TextView)child;label.setGravity(Gravity.CENTER);
                    label.setIncludeFontPadding(false);label.setTextSize(15);
                    label.setPaddingRelative(dp(c,16),0,dp(c,16),0);
                    label.setMinimumWidth(dp(c,ACTION_MIN_WIDTH));
                    if(view instanceof FrameLayout)child.setLayoutParams(new FrameLayout.LayoutParams(-2,dp(c,ACTION_HEIGHT),Gravity.CENTER));
                    else child.setLayoutParams(new LinearLayout.LayoutParams(-2,dp(c,ACTION_HEIGHT)));
                    text(label);
                }
            }
        }
        if(view instanceof JJGlassCapsule) {
            styles.put(view,new Style(Role.ACTION,null));
            ((JJGlassCapsule)view).setCornerRadiusDp(CELL_RADIUS);
        } else register(view,Role.ACTION,true);
        paint(view);
    }
    /** Borderless text action used by compact dialog footers. */
    public static void plainAction(TextView view) {
        Context c=view.getContext();
        styles.remove(view);
        view.setBackgroundTintList(null);view.setBackground(null);
        view.setMinimumWidth(0);view.setMinimumHeight(dp(c,ACTION_HEIGHT));
        view.setGravity(Gravity.CENTER);view.setIncludeFontPadding(false);
        view.setTextSize(14);view.setTypeface(Typeface.create("sans-serif-medium",Typeface.NORMAL));
        view.setPaddingRelative(dp(c,12),0,dp(c,12),0);
        register(view,Role.ACTION,false);
    }
    public static void choice(View view) {
        if(owns(view)){paint(view);return;}
        Context c=view.getContext();view.setMinimumHeight(dp(c,ACTION_HEIGHT));
        if(view instanceof JJGlassCapsule) {
            styles.put(view,new Style(Role.CHOICE,null));
            ((JJGlassCapsule)view).setCornerRadiusDp(CELL_RADIUS);
            ViewGroup group=(ViewGroup)view;
            for(int i=0;i<group.getChildCount();i++) {
                View child=group.getChildAt(i);
                if(child instanceof TextView) {
                    TextView label=(TextView)child;label.setGravity(Gravity.CENTER_VERTICAL);
                    label.setPaddingRelative(dp(c,14),dp(c,12),dp(c,14),dp(c,12));
                    child.setLayoutParams(new FrameLayout.LayoutParams(-1,-2));text(label);
                }
            }
            view.setLayoutParams(new LinearLayout.LayoutParams(-1,-2));
        } else {
            register(view,Role.CHOICE,true);
            view.setPaddingRelative(dp(c,14),dp(c,12),dp(c,14),dp(c,12));
            if(view instanceof TextView)((TextView)view).setGravity(Gravity.CENTER_VERTICAL);
        }
        paint(view);
    }
    public static LinearLayout actions(Context c) {
        LinearLayout bar=new LinearLayout(c);bar.setOrientation(LinearLayout.HORIZONTAL);bar.setGravity(Gravity.END|Gravity.CENTER_VERTICAL);
        return bar;
    }
    public static void addAction(LinearLayout bar, View action) {
        action(action);
        LinearLayout.LayoutParams params=new LinearLayout.LayoutParams(-2,dp(bar.getContext(),ACTION_HEIGHT));
        if(bar.getChildCount()>0)params.setMarginStart(dp(bar.getContext(),GAP));
        bar.addView(action,params);
    }
    public static LinearLayout header(Context c,String title,Runnable back) {
        LinearLayout header=new LinearLayout(c);header.setGravity(Gravity.CENTER_VERTICAL);
        TextView arrow=new TextView(c);arrow.setText("‹");arrow.setTextSize(30);arrow.setGravity(Gravity.CENTER);
        arrow.setContentDescription("返回上一页");arrow.setOnClickListener(v->back.run());text(arrow);
        header.addView(arrow,new LinearLayout.LayoutParams(dp(c,48),dp(c,48)));
        TextView label=title(c,title);header.addView(label,new LinearLayout.LayoutParams(0,dp(c,48),1));
        return header;
    }
    public static void drawerHeader(ViewGroup header) {
        header.setMinimumHeight(dp(header.getContext(),48));
        for(int i=0;i<header.getChildCount();i++) {
            View child=header.getChildAt(i);
            if(child.isClickable())action(child);
            else if(child instanceof TextView){((TextView)child).setGravity(Gravity.CENTER_VERTICAL);text((TextView)child);}
            ViewGroup.LayoutParams params=child.getLayoutParams();
            if(params!=null){params.height=dp(header.getContext(),48);child.setLayoutParams(params);}
        }
        if(header.getChildCount()>0)header.getChildAt(0).setContentDescription("返回菜单");
    }
    public static void refreshAll() { for(View view:styles.keySet().toArray(new View[0]))paint(view); }
    public static void refresh(View root) {
        paint(root);
        if(root instanceof ViewGroup) {ViewGroup g=(ViewGroup)root;for(int i=0;i<g.getChildCount();i++)refresh(g.getChildAt(i));}
    }
    private static void paint(View view) {
        Style style=styles.get(view);if(style==null)return;
        int foreground=ThemePalette.text(view.getContext());boolean dark=foreground==0xffffffff;
        int border=ThemePalette.border(view.getContext());
        if(style.background!=null) {
            if(view.getBackground()!=style.installed) {
                int start=view.getPaddingStart(),top=view.getPaddingTop(),end=view.getPaddingEnd(),bottom=view.getPaddingBottom();
                view.setBackground(style.installed);
                view.setPaddingRelative(start,top,end,bottom);
            }
            view.setBackgroundTintList(null);
            // Tint application may mutate a RippleDrawable and replace its child drawable.
            // Paint the attached child, rather than the original, possibly detached shape.
            GradientDrawable active=style.background;
            if(view.getBackground() instanceof android.graphics.drawable.RippleDrawable) {
                android.graphics.drawable.RippleDrawable ripple=(android.graphics.drawable.RippleDrawable)view.getBackground();
                ripple.setColor(android.content.res.ColorStateList.valueOf(ThemePalette.ripple(view.getContext())));
                if(ripple.getNumberOfLayers()>0 && ripple.getDrawable(0) instanceof GradientDrawable)
                    active=(GradientDrawable)ripple.getDrawable(0);
            } else if(view.getBackground() instanceof GradientDrawable) active=(GradientDrawable)view.getBackground();
            boolean selected=style.role==Role.CHOICE && view.isSelected();
            active.setColor(selected?ThemePalette.selected(view.getContext()):(style.role==Role.FIELD||style.role==Role.ACTION)?ThemePalette.inset(view.getContext()):ThemePalette.control(view.getContext()));
            if(selected)border=ThemePalette.selectedBorder(view.getContext());
            active.setCornerRadius(dp(view.getContext(),style.role==Role.SURFACE?PANEL_RADIUS:style.role==Role.ROUTING?ThemePalette.CARD_RADIUS:CELL_RADIUS));
            boolean outlined=style.role==Role.FIELD || selected || (style.role==Role.ROUTING && !dark);
            active.setStroke(outlined?Math.max(1,dp(view.getContext(),1)):0,border);
        }
        if(view instanceof JJGlassCapsule) {
            JJGlassCapsule capsule=(JJGlassCapsule)view;capsule.disableLiveBackdrop();capsule.setOpaqueVeil(true);
            capsule.setBorderColor(border);capsule.setBorderWidthDp(1);
        }
        if(view instanceof TextView) {
            TextView label=(TextView)view;
            label.setTextColor(style.role==Role.SECONDARY?android.content.res.ColorStateList.valueOf(ThemePalette.secondary(view.getContext())):style.role==Role.ACTION?android.content.res.ColorStateList.valueOf(ThemePalette.accent(view.getContext())):ThemePalette.textStates(view.getContext()));
            label.setHintTextColor(ThemePalette.secondary(view.getContext()));
        }
    }
}

