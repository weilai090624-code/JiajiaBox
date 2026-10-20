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
import android.graphics.*;
import android.view.*;
import android.widget.*;
import java.text.SimpleDateFormat;
import java.util.*;
public final class SubscriptionCards {
 private static final java.util.WeakHashMap<View,Boolean> meters=new java.util.WeakHashMap<>();
 public static void refreshAll(){for(View v:meters.keySet().toArray(new View[0]))v.invalidate();}
 static Object call(Object o,String method)throws Exception{return o.getClass().getMethod(method).invoke(o);}
 static TextView text(Context c,String value,int size){TextView t=new TextView(c);t.setText(value);t.setTextSize(size);UiComponents.text(t);return t;}
 public static void decorate(ViewGroup pill,Object group){
  try{
   Context c=pill.getContext();Object bean=call(group,"getSubscription");
   String title=String.valueOf(call(group,"displayName"));
   if(pill.getChildCount()>0&&pill.getChildAt(0) instanceof TextView)title=((TextView)pill.getChildAt(0)).getText().toString();
   pill.removeAllViews();LinearLayout column=new LinearLayout(c);column.setOrientation(LinearLayout.VERTICAL);
   int pad=UiComponents.dp(c,14);column.setPadding(pad,UiComponents.dp(c,10),pad,UiComponents.dp(c,10));
   TextView name=text(c,title,15);name.setTypeface(Typeface.create("sans-serif-medium",Typeface.NORMAL));name.setMaxLines(1);name.setEllipsize(android.text.TextUtils.TruncateAt.END);column.addView(name,new LinearLayout.LayoutParams(-1,-2));
   if(bean==null){column.addView(text(c,"本地分组",11));pill.setMinimumHeight(UiComponents.dp(c,58));}
   else{
    SubscriptionInfo info=SubscriptionInfo.from(bean);long now=System.currentTimeMillis()/1000;
    String traffic=info.remaining>=0?"剩余流量 "+SubscriptionInfo.formatBytes(info.remaining)+(info.total>0?" / "+SubscriptionInfo.formatBytes(info.total):""):"剩余流量 · 订阅未提供额度";
    addMeter(column,traffic,info.trafficRatio());
    String when="不限时";
    if(info.expiry>0){long seconds=info.expiry-now;long days=seconds<=0?0:1+(seconds-1)/86400;
     String date=new SimpleDateFormat("yyyy-MM-dd",Locale.getDefault()).format(new Date(info.expiry>Long.MAX_VALUE/1000?Long.MAX_VALUE:info.expiry*1000));
     when="到期 "+date+(seconds<=0?" · 已到期":" · 余 "+days+" 天")+"";
    }
    addMeter(column,when,info.timeRatio(now));
    String summary=SubscriptionUpdates.summary(c,((Number)call(group,"getId")).longValue());
    if(!summary.isEmpty()){TextView update=text(c,"更新："+summary,10);update.setMaxLines(1);update.setEllipsize(android.text.TextUtils.TruncateAt.END);column.addView(update,new LinearLayout.LayoutParams(-1,-2));}
    pill.setMinimumHeight(UiComponents.dp(c,104));
   }
   pill.setPadding(0,0,0,0);
   pill.addView(column,new android.widget.FrameLayout.LayoutParams(-1,-2));
   ViewGroup.LayoutParams lp=pill.getLayoutParams();if(lp!=null){lp.height=-2;pill.setLayoutParams(lp);}
  }catch(Exception e){android.util.Log.e("SubscriptionCards","Cannot show subscription information",e);}
 }
 private static void addMeter(LinearLayout column,String label,double ratio){
  Context c=column.getContext();TextView t=text(c,label,11);UiComponents.secondary(t);t.setMaxLines(2);LinearLayout.LayoutParams lp=new LinearLayout.LayoutParams(-1,-2);lp.topMargin=UiComponents.dp(c,4);column.addView(t,lp);
  Meter meter=new Meter(c,ratio);meter.setContentDescription(label);LinearLayout.LayoutParams mp=new LinearLayout.LayoutParams(-1,UiComponents.dp(c,2));mp.topMargin=UiComponents.dp(c,2);column.addView(meter,mp);
 }
 public static void show(Object fragment,java.util.List<?> groups){
  try{
   if(groups.isEmpty()||!(Boolean)call(fragment,"isAdded"))return;
   Context c=(Context)call(fragment,"requireContext");android.app.Dialog dialog=new android.app.Dialog(c);
   LinearLayout column=UiComponents.column(c);UiComponents.panel(column);column.addView(UiComponents.title(c,"切换分组"));
   LinearLayout list=new LinearLayout(c);list.setOrientation(LinearLayout.VERTICAL);
   Object store=Class.forName("io.nekohasekai.sagernet.database.DataStore").getField("INSTANCE").get(null);
   long selected=((Number)call(store,"getSelectedGroup")).longValue();
   int estimated=0;
   for(Object group:groups){
    long id=((Number)call(group,"getId")).longValue();FrameLayout card=new FrameLayout(c);card.setSelected(id==selected);UiComponents.choice(card);card.setPadding(0,0,0,0);card.setClipToOutline(true);
    TextView initial=text(c,(id==selected?"✓ ":"")+call(group,"displayName"),15);card.addView(initial);decorate(card,group);
    card.setClickable(true);card.setFocusable(true);card.setOnClickListener(v->{dialog.dismiss();try{store.getClass().getMethod("setSelectedGroup",long.class).invoke(store,id);fragment.getClass().getMethod("refreshList").invoke(fragment);}catch(Exception e){android.util.Log.e("SubscriptionCards","Cannot switch group",e);}});
    card.setOnLongClickListener(v->{dialog.dismiss();try{java.lang.reflect.Method method=fragment.getClass().getDeclaredMethod("confirmDeleteGroup",group.getClass());method.setAccessible(true);method.invoke(fragment,group);}catch(Exception e){android.util.Log.e("SubscriptionCards","Cannot confirm group deletion",e);}return true;});
    LinearLayout.LayoutParams lp=new LinearLayout.LayoutParams(-1,-2);lp.topMargin=UiComponents.dp(c,8);list.addView(card,lp);estimated+=card.getMinimumHeight()+lp.topMargin;
   }
   ScrollView scroll=new ScrollView(c);scroll.setFillViewport(false);scroll.addView(list,new FrameLayout.LayoutParams(-1,-2));
   int height=Math.min((int)(c.getResources().getDisplayMetrics().heightPixels*.55f),estimated);column.addView(scroll,new LinearLayout.LayoutParams(-1,height));
   TextView scale=text(c,"时间进度条以剩余30天为刻度",10);UiComponents.secondary(scale);LinearLayout.LayoutParams note=new LinearLayout.LayoutParams(-1,-2);note.topMargin=UiComponents.dp(c,8);column.addView(scale,note);
   LinearLayout footer=UiComponents.actions(c);TextView cancel=text(c,"取消",15);cancel.setOnClickListener(v->dialog.dismiss());UiComponents.addAction(footer,cancel);LinearLayout.LayoutParams fp=new LinearLayout.LayoutParams(-1,-2);fp.topMargin=UiComponents.dp(c,12);column.addView(footer,fp);
   dialog.setContentView(column);dialog.show();if(dialog.getWindow()!=null){dialog.getWindow().setBackgroundDrawable(new android.graphics.drawable.ColorDrawable(android.graphics.Color.TRANSPARENT));dialog.getWindow().setLayout(Math.min(UiComponents.dp(c,420),(int)(c.getResources().getDisplayMetrics().widthPixels*.9f)),-2);}
  }catch(Exception e){android.util.Log.e("SubscriptionCards","Cannot open group switcher",e);}
 }
 public static int estimatedHeight(Context c,java.util.List<android.view.View> items){int total=0;for(View v:items)total+=Math.max(UiComponents.dp(c,60),v.getMinimumHeight())+UiComponents.dp(c,8);return total;}
 private static final class Meter extends View{
  final Paint paint=new Paint(Paint.ANTI_ALIAS_FLAG);final double ratio;
  Meter(Context c,double ratio){super(c);this.ratio=ratio;meters.put(this,Boolean.TRUE);}
  protected void onDraw(Canvas canvas){super.onDraw(canvas);float radius=getHeight()/2f;paint.setColor(ThemePalette.accent(getContext()));paint.setAlpha(16);canvas.drawRoundRect(0,0,getWidth(),getHeight(),radius,radius,paint);if(ratio>=0){paint.setAlpha(135);canvas.drawRoundRect(0,0,(float)(getWidth()*ratio),getHeight(),radius,radius,paint);}}
 }
}

