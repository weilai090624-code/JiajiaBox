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
            row(column,"编辑",()->{d.dismiss();edit(fragment,node,c);});
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
    private static void edit(Object fragment,Object node,Context c) {
        try {
            Object bean=call(node,"requireBean",new Class<?>[0]);
            Dialog d=new Dialog(c);LinearLayout column=column(c,"编辑节点");

            EditText name=field(c,column,"备注名",str(getField(bean,"name")));
            EditText address=field(c,column,"服务器地址",str(getField(bean,"serverAddress")));
            EditText port=field(c,column,"端口",str(getField(bean,"serverPort")));
            EditText password=hasField(bean,"password")?field(c,column,"密码",str(getField(bean,"password"))):null;

            LinearLayout actions=UiComponents.actions(c);
            TextView cancel=new TextView(c);cancel.setText("取消");UiComponents.addAction(actions,cancel);
            cancel.setOnClickListener(v->d.dismiss());
            TextView save=new TextView(c);save.setText("保存");UiComponents.addAction(actions,save);
            save.setOnClickListener(v->{
                try {
                    String host=address.getText().toString().trim();
                    if(host.isEmpty())throw new IllegalStateException("服务器地址不能为空");
                    int portValue;
                    try{portValue=Integer.parseInt(port.getText().toString().trim());}
                    catch(NumberFormatException nfe){throw new IllegalStateException("端口必须是数字");}
                    if(portValue<1||portValue>65535)throw new IllegalStateException("端口超出范围");
                    setField(bean,"name",name.getText().toString().trim());
                    setField(bean,"serverAddress",host);
                    setField(bean,"serverPort",Integer.valueOf(portValue));
                    if(password!=null)setField(bean,"password",password.getText().toString());
                    call(node,"putBean",new Class<?>[]{Class.forName("io.nekohasekai.sagernet.fmt.AbstractBean")},bean);
                    saveNode(node);
                    call(fragment,"refreshList",new Class<?>[0]);
                    d.dismiss();
                    Toast.makeText(c,"已保存 · 端口 "+lastSavedPort,Toast.LENGTH_SHORT).show();
                } catch(Exception e){
                    String reason=e instanceof IllegalStateException?e.getMessage():(e.getCause()!=null?e.getCause().getMessage():e.getMessage());
                    Toast.makeText(c,"保存失败"+(reason==null?"":"："+reason),Toast.LENGTH_LONG).show();
                    android.util.Log.e("NodeActions","Save node failed",e);
                }
            });
            column.addView(actions);
            open(d,column);
        } catch(Exception e){
            String reason=e.getCause()!=null?e.getCause().getMessage():e.getMessage();
            Toast.makeText(c,"无法编辑此节点"+(reason==null?"":"："+reason),Toast.LENGTH_LONG).show();
            android.util.Log.e("NodeActions","Edit failed",e);
        }
    }
    private static Object getField(Object bean,String name) throws Exception {
        Class<?> type=bean.getClass();
        while(type!=null){try{return type.getField(name).get(bean);}catch(NoSuchFieldException ignored){type=type.getSuperclass();}}
        return null;
    }
    private static boolean hasField(Object bean,String name) {
        Class<?> type=bean.getClass();
        while(type!=null){try{type.getField(name);return true;}catch(NoSuchFieldException ignored){type=type.getSuperclass();}}
        return false;
    }
    private static void setField(Object bean,String name,Object value) throws Exception {
        Class<?> type=bean.getClass();
        while(type!=null){try{type.getField(name).set(bean,value);return;}catch(NoSuchFieldException ignored){type=type.getSuperclass();}}
        throw new IllegalStateException("字段不可写："+name);
    }
    private static String str(Object value) {return value==null?"":String.valueOf(value);}
    private static EditText field(Context c,LinearLayout column,String label,String value) {
        TextView caption=new TextView(c);caption.setText(label);UiComponents.secondary(caption);
        LinearLayout.LayoutParams clp=new LinearLayout.LayoutParams(-1,-2);clp.topMargin=UiComponents.dp(c,10);column.addView(caption,clp);
        EditText input=new EditText(c);input.setSingleLine(true);input.setText(value);UiComponents.field(input);
        LinearLayout.LayoutParams ilp=new LinearLayout.LayoutParams(-1,-2);ilp.topMargin=UiComponents.dp(c,4);column.addView(input,ilp);
        return input;
    }
    private static void saveNode(Object node) throws Exception {
        Class<?> database=Class.forName("io.nekohasekai.sagernet.database.SagerDatabase");
        Object companion=database.getField("Companion").get(null);
        Object dao=call(companion,"getProxyDao",new Class<?>[0]);
        java.lang.reflect.Method single=null,batch=null,array=null;
        for(java.lang.reflect.Method m:dao.getClass().getMethods()){
            if(!"updateProxy".equals(m.getName())||m.getParameterCount()!=1)continue;
            Class<?> param=m.getParameterTypes()[0];
            if(param==List.class)batch=m;
            else if(param.isArray())array=m;
            else single=m;
        }
        if(single!=null){single.setAccessible(true);single.invoke(dao,node);}
        else if(batch!=null){batch.setAccessible(true);batch.invoke(dao,Collections.singletonList(node));}
        else if(array!=null){
            Object holder=java.lang.reflect.Array.newInstance(array.getParameterTypes()[0].getComponentType(),1);
            java.lang.reflect.Array.set(holder,0,node);
            array.setAccessible(true);array.invoke(dao,holder);
        }
        else throw new IllegalStateException("找不到可用的节点更新接口");
        notifyUpdate(node);
        Object reloaded=call(dao,"getById",new Class<?>[]{long.class},id(node));
        if(reloaded==null)throw new IllegalStateException("保存后未能读回节点");
        Object savedBean=call(reloaded,"requireBean",new Class<?>[0]);
        Object savedPort=getField(savedBean,"serverPort");
        if(savedPort==null)throw new IllegalStateException("数据库里端口为空");
        lastSavedPort=String.valueOf(savedPort);
    }
    private static String lastSavedPort="";
    // ProfileManager.updateProfile 内部同样是 dao.updateProxy + 遍历监听者通知；这里补上通知那段
    private static void notifyUpdate(Object node) {
        try {
            Class<?> pm=Class.forName("io.nekohasekai.sagernet.database.ProfileManager");
            Object manager=pm.getField("INSTANCE").get(null);
            Class<?> entity=Class.forName("io.nekohasekai.sagernet.database.ProxyEntity");
            Class<?> cont=Class.forName("kotlin.coroutines.Continuation");
            Method up=pm.getMethod("updateProfile",entity,cont);
            up.setAccessible(true);
            up.invoke(manager,node,null);
        } catch(Throwable ignored) {
            // 协程挂起会抛异常，但 dao.updateProxy 已在前面完成
        }
    }
    private static void methodSet(Method m,boolean accessible) {try{m.setAccessible(accessible);}catch(Exception ignored){}}
    private static void openSettings(Context c,Object node) {
        try {
            Intent intent=(Intent)call(node,"settingIntent",new Class<?>[]{Context.class,boolean.class},c,Boolean.FALSE);
            if(intent==null)throw new IllegalStateException("该节点没有可编辑的设置页");
            c.startActivity(intent);
        } catch(Exception e){
            String reason=e.getCause()!=null?e.getCause().getMessage():e.getMessage();
            Toast.makeText(c,"无法打开编辑页面"+(reason==null?"":"："+reason),Toast.LENGTH_LONG).show();
            android.util.Log.e("NodeActions","Open settings failed",e);
        }
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

