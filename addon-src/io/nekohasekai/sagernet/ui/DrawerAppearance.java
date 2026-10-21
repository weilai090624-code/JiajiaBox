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
import android.widget.TextView;
import android.widget.ImageView;
import android.graphics.drawable.GradientDrawable;
import java.util.WeakHashMap;

public final class DrawerAppearance {
    private static final WeakHashMap<View, Boolean> managedLists = new WeakHashMap<>();
    private static final WeakHashMap<View, Boolean> panels = new WeakHashMap<>();
    private static final WeakHashMap<View, Boolean> pages = new WeakHashMap<>();
    private static final WeakHashMap<View, Boolean> pills = new WeakHashMap<>();

    private static final WeakHashMap<View, Surface> surfaces = new WeakHashMap<>();
    private static final class Surface extends GradientDrawable {
        int fill,border; float density;
        Surface(int fill,int border,float density){update(fill,border,density);}
        void update(int nextFill,int nextBorder,float nextDensity){
            if(fill!=nextFill){setColor(nextFill);fill=nextFill;}
            if(border!=nextBorder||density!=nextDensity){setStroke(Math.max(1,Math.round(nextDensity)),nextBorder);border=nextBorder;}
            if(density!=nextDensity){setCornerRadius(18*nextDensity);density=nextDensity;}
        }
    }
    private static final class Palette {
        final int text,border,secondary,control;
        Palette(android.content.Context context){
            text=ThemePalette.text(context);boolean dark=text==0xffffffff;
            border=dark?0xff3d3e46:0xffeae7eb;secondary=dark?0xffb0acb5:0xff78737d;control=dark?0xff303137:0xffffffff;
        }
    }
    public static void install(View panel) {
        panels.put(panel, Boolean.TRUE);
        if (panel instanceof JJGlassCapsule) {
            JJGlassCapsule capsule = (JJGlassCapsule) panel;
            capsule.disableLiveBackdrop();
            capsule.setOpaqueVeil(true);
        }
        tint(panel);
    }

    public static void pill(View view) {
        pills.put(view, Boolean.TRUE);
        tint(view);
        view.post(() -> tint(view));
    }

    public static boolean isManagedList(View list) { return managedLists.containsKey(list); }

    public static void managedList(View list) { managedLists.put(list, Boolean.TRUE); }

    public static void choiceRow(View row) {
        pills.put(row, Boolean.TRUE);
        tint(row);
    }

    public static void label(View view) { tint(view); }

    public static void preference(View view) {
        CardLight.bind(view,18);
        normalizePreferenceGeometry(view);
        clearNestedPreferenceBackgrounds(view, view);
        pills.put(view, Boolean.TRUE);
        tint(view, new Palette(view.getContext()));
    }

    private static void normalizePreferenceGeometry(View view) {
        float density = view.getResources().getDisplayMetrics().density;
        int horizontal = Math.round(12 * density), gap = Math.round(4 * density);
        ViewGroup.LayoutParams params = view.getLayoutParams();
        if (params instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams margin = (ViewGroup.MarginLayoutParams) params;
            if(margin.width!=ViewGroup.LayoutParams.MATCH_PARENT||margin.leftMargin!=horizontal||margin.rightMargin!=horizontal
                    ||margin.getMarginStart()!=horizontal||margin.getMarginEnd()!=horizontal||margin.topMargin!=gap||margin.bottomMargin!=gap){
                margin.width=ViewGroup.LayoutParams.MATCH_PARENT;margin.leftMargin=margin.rightMargin=horizontal;
                margin.setMarginStart(horizontal);margin.setMarginEnd(horizontal);margin.topMargin=margin.bottomMargin=gap;
                view.setLayoutParams(margin);
            }
        }
        padding(view,Math.round(14*density),horizontal,Math.round(14*density),horizontal);
        if(view.getMinimumHeight()!=Math.round(56*density))view.setMinimumHeight(Math.round(56*density));
        if (view instanceof android.widget.FrameLayout) {
            ViewGroup group = (ViewGroup) view;
            for (int i = 0; i < group.getChildCount(); i++) {
                View child = group.getChildAt(i);
                if (!(child instanceof ViewGroup) || child.findViewById(android.R.id.title) == null) continue;
                ViewGroup.LayoutParams cp = child.getLayoutParams();
                if (cp instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams margin = (ViewGroup.MarginLayoutParams) cp;
                    if(margin.leftMargin!=0||margin.rightMargin!=0||margin.topMargin!=0||margin.bottomMargin!=0||margin.getMarginStart()!=0||margin.getMarginEnd()!=0){
                        margin.leftMargin=margin.rightMargin=margin.topMargin=margin.bottomMargin=0;
                        margin.setMarginStart(0);margin.setMarginEnd(0);child.setLayoutParams(margin);
                    }
                }
                padding(child,0,0,0,0);
                if(child.getMinimumHeight()!=0)child.setMinimumHeight(0);
            }
        }
    }

    private static void padding(View view,int start,int top,int end,int bottom){
        if(view.getPaddingStart()!=start||view.getPaddingTop()!=top||view.getPaddingEnd()!=end||view.getPaddingBottom()!=bottom)view.setPaddingRelative(start,top,end,bottom);
    }
    private static void replaceBackground(View view, android.graphics.drawable.Drawable background) {
        if(view.getBackground()==background)return;
        int start = view.getPaddingStart(), end = view.getPaddingEnd();
        int top = view.getPaddingTop(), bottom = view.getPaddingBottom();
        int minWidth = view.getMinimumWidth(), minHeight = view.getMinimumHeight();
        view.setBackground(background);
        padding(view,start,top,end,bottom);
        if(view.getMinimumWidth()!=minWidth)view.setMinimumWidth(minWidth);
        if(view.getMinimumHeight()!=minHeight)view.setMinimumHeight(minHeight);
    }

    private static void clearNestedPreferenceBackgrounds(View view, View root) {
        if (view != root && view instanceof ViewGroup && view.findViewById(android.R.id.title) != null) {
            if(view.getBackgroundTintList()!=null)view.setBackgroundTintList(null);
            replaceBackground(view, null);
        }
        if (view instanceof ViewGroup) {
            ViewGroup group = (ViewGroup) view;
            for (int i = 0; i < group.getChildCount(); i++) clearNestedPreferenceBackgrounds(group.getChildAt(i), root);
        }
    }

    public static void settingsPage(View root) {
        pages.put(root, Boolean.TRUE);
        replaceBackground(root, new android.graphics.drawable.ColorDrawable(JJGlassToolbar.matteColor(root.getContext())));
        tint(root);
    }

    public static void homeDialog(android.app.Dialog dialog) {
        android.view.Window window = dialog.getWindow();
        if (window == null) return;
        if (DialogTemplates.adoptWindow(window)) return;
        View content = window.findViewById(android.R.id.content);
        if (content != null) outlineCapsules(content);
        settingsWindow(window);
    }

    private static void outlineCapsules(View view) {
        if (view instanceof JJGlassCapsule) pill(view);
        if (view instanceof ViewGroup) {
            ViewGroup group = (ViewGroup) view;
            for (int i = 0; i < group.getChildCount(); i++) outlineCapsules(group.getChildAt(i));
        }
    }

    public static void settingsWindow(android.view.Window window) {
        if (window == null) return;
        if (DialogTemplates.adoptWindow(window)) return;
        View content = window.findViewById(android.R.id.content);
        if (content == null) return;
        if (!hasCapsule(content)) {
            window.setBackgroundDrawable(new android.graphics.drawable.ColorDrawable(android.graphics.Color.TRANSPARENT));
            GradientDrawable surface = new GradientDrawable();
            surface.setColor(JJGlassToolbar.matteColor(content.getContext()));
            surface.setCornerRadius(22 * content.getResources().getDisplayMetrics().density);
            replaceBackground(content, surface);
            clearDialogPanels(content, content);
        }
        styleControls(content);
        content.post(() -> styleControls(content));
    }

    private static boolean hasCapsule(View view) {
        if (view instanceof JJGlassCapsule) return true;
        if (view instanceof ViewGroup) {
            ViewGroup group = (ViewGroup) view;
            for (int i = 0; i < group.getChildCount(); i++) if (hasCapsule(group.getChildAt(i))) return true;
        }
        return false;
    }

    private static void clearDialogPanels(View view, View root) {
        if (view != root && view instanceof ViewGroup && !(view instanceof android.widget.AbsListView)) {
            if(view.getBackgroundTintList()!=null)view.setBackgroundTintList(null);
            replaceBackground(view, null);
        }
        if (view instanceof ViewGroup) {
            ViewGroup group = (ViewGroup) view;
            for (int i = 0; i < group.getChildCount(); i++) clearDialogPanels(group.getChildAt(i), root);
        }
    }

    private static void styleControls(View view) {
        if (managedLists.containsKey(view)) return;
        if (view instanceof JJGlassCapsule) install(view);
        else if (view instanceof android.widget.EditText || view instanceof android.widget.CheckedTextView
                || ((view instanceof TextView || view instanceof ImageView) && view.isClickable())) {
            if (!(view instanceof android.widget.CompoundButton)) pills.put(view, Boolean.TRUE);
        }
        if (view instanceof android.widget.AbsListView) {
            ((ViewGroup) view).setOnHierarchyChangeListener(new ViewGroup.OnHierarchyChangeListener() {
                public void onChildViewAdded(View parent, View child) {
                    child.post(() -> { if (child.getParent() == parent) styleControls(child); });
                }
                public void onChildViewRemoved(View parent, View child) {}
            });
        }
        if (view instanceof ViewGroup) {
            ViewGroup group = (ViewGroup) view;
            for (int i = 0; i < group.getChildCount(); i++) styleControls(group.getChildAt(i));
        }
        tint(view);
    }

    public static void refreshAll() {
        CardLight.refreshAll();
        UiComponents.refreshAll();
        SubscriptionCards.refreshAll();
        ToolPageAppearance.refreshAll();
        for (View view : pages.keySet().toArray(new View[0])) settingsPage(view);
        for (View view : pills.keySet().toArray(new View[0])) tint(view);
        for (View view : panels.keySet().toArray(new View[0])) tint(view);
    }

    private static void tint(View view) {tint(view,null);}
    private static void tint(View view,Palette palette) {
        if (view instanceof TrafficDashboardView) {
            ((TrafficDashboardView) view).refreshAppearance();
            return;
        }
        if (managedLists.containsKey(view)) return;
        if (UiComponents.owns(view)) { UiComponents.refresh(view); DrawerDesign.refreshTree(view); return; }
        int text = palette==null?ThemePalette.text(view.getContext()):palette.text;
        boolean dark = text == 0xffffffff;
        int border = palette==null?ThemePalette.border(view.getContext()):palette.border;
        if (pills.containsKey(view) && view instanceof JJGlassCapsule) {
            JJGlassCapsule capsule = (JJGlassCapsule) view;
            capsule.disableLiveBackdrop();
            capsule.setOpaqueVeil(true);
            capsule.setBorderColor(border);
            capsule.setBorderWidthDp(1f);
        } else if (pills.containsKey(view)) {
            if(view.getBackgroundTintList()!=null)view.setBackgroundTintList(null);
            int fill=palette==null?ThemePalette.control(view.getContext()):palette.control;
            float density=view.getResources().getDisplayMetrics().density;
            Surface background=surfaces.get(view);
            if(background==null){background=new Surface(fill,border,density);surfaces.put(view,background);}
            else background.update(fill,border,density);
            replaceBackground(view, background);
        }
        if (view instanceof TextView) {
            TextView label = (TextView) view;
            if(label.getTextColors().isStateful()||label.getCurrentTextColor()!=text)label.setTextColor(text);
            int secondary=palette==null?ThemePalette.secondary(view.getContext()):palette.secondary;
            if(label.getHintTextColors()==null||label.getHintTextColors().isStateful()||label.getCurrentHintTextColor()!=secondary)label.setHintTextColor(secondary);
        }
        if (view instanceof ImageView) ((ImageView) view).setColorFilter(text);
        if (view instanceof ViewGroup) {
            ViewGroup group = (ViewGroup) view;
            for (int i = 0; i < group.getChildCount(); i++) tint(group.getChildAt(i),palette);
        }
        DrawerDesign.refresh(view);
        if(palette==null)view.invalidate();
    }
}

