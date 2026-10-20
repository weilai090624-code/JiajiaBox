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

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.view.View;
import android.widget.*;
import java.util.*;
import java.lang.reflect.Method;

/** Long press opens actions; only the second, explicit confirmation performs work. */
public final class NodeActions {
    private static Object call(Object o,String name,Class<?>[] types,Object... args) throws Exception {
        Method m=o.getClass().getMethod(name,types);return m.invoke(o,args);
    }
    private static Context app() throws Exception { return (Context)Class.forName("io.nekohasekai.sagernet.ktx.UtilsKt").getMethod("getApp").invoke(null); }
    private static SharedPreferences preferences(Context c) {return c.getSharedPreferences("node-pins",Context.MODE_PRIVATE);}
    private static long id(Object node) throws Exception {return (Long)call(node,"getId",new Class<?>[0]);}
    private static String key(Object node) throws Exception {return "node-"+id(node);}
    public static CharSequence subtitle(Object node,CharSequence type) {
        try { return preferences(app()).getBoolean(key(node),false) ? "已置顶 · "+type : type; }
        catch(Exception e){android.util.Log.e("NodeActions","Cannot read pin badge",e);return type;}
    }
    public static List<?> sort(List<?> nodes) {
        try {
            SharedPreferences prefs=preferences(app());
            List<Object> result=new ArrayList<>(nodes);
            // Stable sort preserves the existing order within pinned and ordinary nodes.
            Collections.sort(result,(a,b)->{
                try {return Boolean.compare(prefs.getBoolean(key(b),false),prefs.getBoolean(key(a),false));}
                catch(Exception e){throw new IllegalStateException(e);}
            });
            return result;
        } catch(Exception e){android.util.Log.e("NodeActions","Cannot sort pinned nodes",e);return nodes;}
    }
    public static void show(Object fragment,Object node) {
        try {
            Context c=(Context)call(fragment,"requireContext",new Class<?>[0]);
            String name=(String)call(node,"displayName",new Class<?>[0]);
            boolean pinned=preferences(c).getBoolean(key(node),false);
            Dialog d=new Dialog(c);LinearLayout column=column(c,name);
            row(column,pinned?"取消置顶":"置顶",()->{
                d.dismiss();confirm(c,pinned?"取消置顶":"置顶",name,()->pin(fragment,node,c,!pinned));
            });
            row(column,"导出",()->{d.dismiss();confirm(c,"导出", "导出“"+name+"”的节点链接并选择分享方式？",()->export(c,node));});
            row(column,"删除",()->{d.dismiss();deleteConfirm(fragment,node);});
            row(column,"取消",d::dismiss);open(d,column);
        } catch(Exception e){android.util.Log.e("NodeActions","Cannot show node actions",e);}
    }
    private static LinearLayout column(Context c,String title) {
        LinearLayout column=UiComponents.column(c);UiComponents.panel(column);
        column.addView(UiComponents.title(c,title));return column;
    }
    private static void row(LinearLayout column,String label,Runnable action) {
        TextView text=new TextView(column.getContext());text.setText(label);text.setClickable(true);text.setFocusable(true);
        UiComponents.choice(text);text.setOnClickListener(v->action.run());
        LinearLayout.LayoutParams lp=new LinearLayout.LayoutParams(-1,-2);lp.topMargin=UiComponents.dp(column.getContext(),8);column.addView(text,lp);
    }
    private static void open(Dialog d,LinearLayout content) {
        d.setContentView(content);d.show();
        if(d.getWindow()!=null) {
            d.getWindow().setBackgroundDrawable(new ColorDrawable(Color.TRANSPARENT));
            int width=Math.min(UiComponents.dp(content.getContext(),420),content.getResources().getDisplayMetrics().widthPixels-UiComponents.dp(content.getContext(),40));
            d.getWindow().setLayout(Math.max(UiComponents.dp(content.getContext(),200),width),-2);
        }
    }
    private static void confirm(Context c,String action,String message,Runnable yes) {
        Dialog d=new Dialog(c);LinearLayout column=column(c,"确认"+action);
        TextView body=new TextView(c);body.setText(message);body.setPadding(0,UiComponents.dp(c,12),0,UiComponents.dp(c,12));UiComponents.text(body);column.addView(body);
        LinearLayout actions=UiComponents.actions(c);TextView cancel=new TextView(c);cancel.setText("取消");cancel.setOnClickListener(v->d.dismiss());UiComponents.addAction(actions,cancel);
        TextView ok=new TextView(c);ok.setText(action);ok.setOnClickListener(v->{d.dismiss();yes.run();});UiComponents.addAction(actions,ok);column.addView(actions);open(d,column);
    }
    private static void deleteConfirm(Object fragment,Object node) {
        try {
            Method m=fragment.getClass().getDeclaredMethod("confirmDeleteNode",node.getClass());m.setAccessible(true);m.invoke(fragment,node);
        } catch(Exception e){android.util.Log.e("NodeActions","Cannot confirm node deletion",e);}
    }
    private static void pin(Object fragment,Object node,Context c,boolean pin) {
        try {
            if(!preferences(c).edit().putBoolean(key(node),pin).commit())throw new IllegalStateException("无法保存置顶状态");
            call(fragment,"refreshList",new Class<?>[0]);
            Toast.makeText(c,pin?"已置顶":"已取消置顶",Toast.LENGTH_SHORT).show();
        } catch(Exception e){Toast.makeText(c,"置顶操作失败",Toast.LENGTH_LONG).show();android.util.Log.e("NodeActions","Pin failed",e);}
    }
    private static void export(Context c,Object node) {
        try {
            String link=(String)call(node,"toStdLink",new Class<?>[]{boolean.class},false);
            if(link==null||link.trim().isEmpty())throw new IllegalStateException("节点不支持链接导出");
            Intent share=new Intent(Intent.ACTION_SEND);share.setType("text/plain");share.putExtra(Intent.EXTRA_TEXT,link);
            share.putExtra(Intent.EXTRA_SUBJECT,(String)call(node,"displayName",new Class<?>[0]));
            c.startActivity(Intent.createChooser(share,"导出节点"));
        } catch(Exception e){Toast.makeText(c,"无法导出此节点",Toast.LENGTH_LONG).show();android.util.Log.e("NodeActions","Export failed",e);}
    }
}

