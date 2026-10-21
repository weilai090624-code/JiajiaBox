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

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.*;
import java.util.WeakHashMap;

/** Shared theme binding for tool tabs, their fragments and standalone NAT results. */
public final class ToolPageAppearance {
    private static final WeakHashMap<View,Boolean> roots=new WeakHashMap<>();
    public static void install(Activity activity) {
        View root=activity.findViewById(android.R.id.content);
        if(root==null)return;
        install(root);
    }
    public static void install(View root) {
        if(root==null)return;
        roots.put(root,Boolean.TRUE);apply(root);
    }
    public static void network(View root) {
        if(root instanceof ViewGroup){ViewGroup group=(ViewGroup)root;for(int i=0;i<group.getChildCount();i++){View child=group.getChildAt(i);if(child instanceof ViewGroup)UiComponents.panel(child);}}
        install(root);
    }
    public static void refreshAll(){for(View root:roots.keySet().toArray(new View[0]))apply(root);}
    private static boolean materialCard(View view) {
        Class<?> type=view.getClass();
        while(type!=null){if(type.getName().equals("com.google.android.material.card.MaterialCardView"))return true;type=type.getSuperclass();}return false;
    }
    private static void call(View view,String method,Class<?> type,Object value) {
        try{view.getClass().getMethod(method,type).invoke(view,value);}catch(ReflectiveOperationException ignored){}
    }
    private static void apply(View root) {
        RosePalette.backdrop(root);
        visit(root);
    }
    private static void visit(View view) {
        int foreground=RosePalette.accent(view.getContext());
        if(view.getClass().getName().equals("com.google.android.material.tabs.TabLayout")) {
            try{view.getClass().getMethod("setTabTextColors",int.class,int.class).invoke(view,foreground,foreground);}catch(ReflectiveOperationException ignored){}
            call(view,"setSelectedTabIndicatorColor",int.class,foreground);
        }
        if(materialCard(view)) {
            CardLight.bind(view,UiComponents.PANEL_RADIUS);
            boolean dark=ThemePalette.text(view.getContext())==0xffffffff;
            call(view,"setCardBackgroundColor",int.class,ThemePalette.control(view.getContext()));
            call(view,"setStrokeColor",int.class,ThemePalette.border(view.getContext()));
            call(view,"setStrokeWidth",int.class,Math.max(1,UiComponents.dp(view.getContext(),1)));
            call(view,"setRadius",float.class,(float)UiComponents.dp(view.getContext(),UiComponents.PANEL_RADIUS));
            call(view,"setCardElevation",float.class,0f);
            call(view,"setMaxCardElevation",float.class,0f);
        } else if(view instanceof EditText)UiComponents.field((EditText)view);
        else if(view instanceof CompoundButton){
            UiComponents.text((TextView)view);
            ((CompoundButton)view).setButtonTintList(android.content.res.ColorStateList.valueOf(foreground));
        }
        else if(view instanceof Button){
            UiComponents.action(view);ViewGroup.LayoutParams lp=view.getLayoutParams();
            if(lp!=null){lp.height=UiComponents.dp(view.getContext(),48);view.setLayoutParams(lp);}
        } else if(view instanceof TextView)UiComponents.text((TextView)view);
        if(view instanceof ViewGroup){ViewGroup group=(ViewGroup)view;for(int i=0;i<group.getChildCount();i++)visit(group.getChildAt(i));}
    }
}

