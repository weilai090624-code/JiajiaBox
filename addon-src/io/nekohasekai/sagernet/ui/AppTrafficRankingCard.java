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
import android.content.pm.ApplicationInfo;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.text.format.Formatter;
import android.view.Gravity;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.io.*;
import java.util.*;
import java.util.concurrent.*;
import java.util.concurrent.atomic.AtomicBoolean;

/** A compact Top 5 view; all file/package reads happen off the UI thread. */
public final class AppTrafficRankingCard extends LinearLayout {
    private static final ExecutorService WORKER=Executors.newSingleThreadExecutor(r->new Thread(r,"app-traffic-ranking"));
    private static final long REFRESH_MS=2000;
    private final Handler main=new Handler(Looper.getMainLooper());
    private final AtomicBoolean loading=new AtomicBoolean();
    private final GradientDrawable surface=new GradientDrawable();
    private int themeColor=0x01234567;
    private final TextView title,caption,empty;
    private final LinearLayout list;
    private final Row[] rows=new Row[5];
    private final Map<String,Display> displays=new HashMap<>();
    private List<AppTrafficRanking.Entry> cached=Collections.emptyList();
    private long lastModified=-1,lastLength=-1;
    private int epoch;
    private boolean hasData;
    private Runnable publication;
    private final Runnable tick=()->{if(!active())return;request();main.postDelayed(this.tick,REFRESH_MS);};

    public AppTrafficRankingCard(Context context){
        super(context);setOrientation(VERTICAL);setId(0x7f0a0169);surface.setCornerRadius(dp(ThemePalette.CARD_RADIUS));setBackground(surface);setPadding(dp(16),dp(14),dp(16),dp(14));
        LinearLayout header=new LinearLayout(context);header.setGravity(Gravity.CENTER_VERTICAL);
        title=text("应用流量排行",14,true);caption=text("累计代理 · TOP 5",10,false);caption.setGravity(Gravity.RIGHT|Gravity.CENTER_VERTICAL);
        header.addView(title,new LayoutParams(0,headerHeight(),1));header.addView(caption,new LayoutParams(-2,headerHeight()));addView(header,new LayoutParams(-1,headerHeight()));
        list=new LinearLayout(context);list.setOrientation(VERTICAL);LayoutParams lp=new LayoutParams(-1,-2);lp.topMargin=dp(6);addView(list,lp);
        for(int i=0;i<rows.length;i++){rows[i]=new Row(context,i+1);list.addView(rows[i],new LayoutParams(-1,rowHeight()));rows[i].setVisibility(GONE);}
        empty=text("正在读取应用流量…",13,false);empty.setSingleLine(false);empty.setGravity(Gravity.CENTER);list.addView(empty,new LayoutParams(-1,5*rowHeight()));
        applyTheme();
    }
    public int preferredHeight(){return dp(34)+headerHeight()+5*rowHeight();}
    private int headerHeight(){return dp(22*Math.max(1,getResources().getConfiguration().fontScale));}
    private int rowHeight(){return dp(32*Math.max(1,getResources().getConfiguration().fontScale));}
    private boolean active(){return isAttachedToWindow()&&isShown()&&getWindowVisibility()==VISIBLE;}
    private void reconcile(){
        if(main==null||tick==null)return;main.removeCallbacks(tick);
        if(active()){applyTheme();request();main.postDelayed(tick,REFRESH_MS);}else{epoch++;cancelPublication();}
    }
    private void cancelPublication(){DrawerWorkGate.cancel(this);if(publication!=null){publication=null;loading.set(false);}}
    @Override protected void onAttachedToWindow(){super.onAttachedToWindow();reconcile();}
    @Override protected void onDetachedFromWindow(){main.removeCallbacks(tick);epoch++;cancelPublication();super.onDetachedFromWindow();}
    @Override protected void onVisibilityChanged(View view,int visibility){super.onVisibilityChanged(view,visibility);reconcile();}
    @Override protected void onWindowVisibilityChanged(int visibility){super.onWindowVisibilityChanged(visibility);reconcile();}
    private void request(){
        if(!active()||loading.get())return;
        if(DrawerWorkGate.defer(this,this::request)||!loading.compareAndSet(false,true))return;
        final int generation=epoch;final Context app=getContext().getApplicationContext();
        WORKER.execute(()->{
            List<AppTrafficRanking.Entry> data=cached;String failure=null;
            try{
                File file=new File(app.getNoBackupFilesDir(),"proxy-app-traffic.json");
                long modified=file.lastModified(),length=file.length();
                if(!file.isFile()){data=Collections.emptyList();lastModified=-1;lastLength=-1;}
                else if(modified!=lastModified||length!=lastLength){
                    try(InputStream input=new FileInputStream(file);ByteArrayOutputStream bytes=new ByteArrayOutputStream()){
                        byte[] buffer=new byte[8192];int n;while((n=input.read(buffer))!=-1)bytes.write(buffer,0,n);
                        data=AppTrafficRanking.topFive(bytes.toString("UTF-8"));
                    }
                    lastModified=modified;lastLength=length;
                }
                cached=data;
                if(displays.size()>32)displays.clear();
                for(AppTrafficRanking.Entry e:data)if(!displays.containsKey(e.packageName)){
                    String label=e.packageName;Drawable icon=null;
                    try{ApplicationInfo info=app.getPackageManager().getApplicationInfo(e.packageName,0);label=app.getPackageManager().getApplicationLabel(info).toString();icon=app.getPackageManager().getApplicationIcon(info);}catch(Exception ignored){}
                    if("unknown".equals(e.packageName))label="未识别应用";
                    displays.put(e.packageName,new Display(label,icon));
                }
            }catch(Exception error){failure="暂时无法读取流量统计";}
            final List<AppTrafficRanking.Entry> result=data;final String error=failure;
            // Freeze the background cache for UI publication; the next refresh
            // can update its own map without racing the view's reads.
            final Map<String,Display> names=new HashMap<>(displays);
            main.post(()->{
                if(generation!=epoch||!active()){loading.set(false);return;}
                publication=()->{
                    if(generation!=epoch||!active()){publication=null;loading.set(false);return;}
                    publication=null;loading.set(false);render(result,names,error);
                };
                DrawerWorkGate.publish(this,publication);
            });
        });
    }
    private void render(List<AppTrafficRanking.Entry> entries,Map<String,Display> names,String error){
        applyTheme();
        if(error!=null){setText(caption,"累计代理 · 未更新");if(!hasData)setText(empty,error);return;}
        setText(caption,"累计代理 · TOP 5");hasData=!entries.isEmpty();empty.setVisibility(hasData?GONE:VISIBLE);setText(empty,"暂无应用流量记录\n连接代理后自动统计");
        long largest=entries.isEmpty()?1:entries.get(0).total;
        for(int i=0;i<rows.length;i++){
            Row row=rows[i];if(i>=entries.size()){row.setVisibility(GONE);continue;}
            AppTrafficRanking.Entry e=entries.get(i);Display display=names.get(e.packageName);String name=display==null?e.packageName:display.label;
            String amount=Formatter.formatShortFileSize(getContext(),e.total);
            setText(row.name,name);setText(row.amount,amount);row.icon.setIcon(display==null?null:display.icon);float ratio=(float)((double)e.total/largest);if(row.bar.ratio!=ratio){row.bar.ratio=ratio;row.bar.invalidate();}
            row.setContentDescription("第"+(i+1)+"名，"+name+"，累计代理流量"+amount);row.setVisibility(VISIBLE);
        }
    }
    private void applyTheme(){
        if(title==null)return;int primary=JJGlassToolbar.matteTextColor(getContext());
        if(themeColor==primary)return;
        {themeColor=primary;boolean dark=primary==0xffffffff;surface.setColor(ThemePalette.control(getContext()));surface.setStroke(Math.max(1,dp(1)),ThemePalette.border(getContext()));}
        title.setTextColor(primary);caption.setTextColor(ThemePalette.secondary(getContext()));empty.setTextColor(ThemePalette.secondary(getContext()));
        for(Row row:rows)if(row!=null){row.name.setTextColor(primary);row.amount.setTextColor(primary);row.rank.setTextColor(ThemePalette.secondary(getContext()));row.bar.color=ThemePalette.accent(getContext());row.bar.invalidate();}
    }
    private static void setText(TextView view,String value){if(!value.contentEquals(view.getText()))view.setText(value);}
    private TextView text(String value,float size,boolean bold){TextView v=new TextView(getContext());v.setText(value);v.setTextSize(size);v.setSingleLine(true);v.setEllipsize(TextUtils.TruncateAt.END);v.setGravity(Gravity.CENTER_VERTICAL);v.setIncludeFontPadding(false);if(bold)v.setTypeface(Typeface.create("sans-serif-medium",Typeface.NORMAL));return v;}
    private int dp(float value){return Math.round(value*getResources().getDisplayMetrics().density);}
    private static final class Display{final String label;final Drawable icon;Display(String name,Drawable drawable){label=name;icon=drawable;}}
    private final class Row extends LinearLayout{
        final TextView rank,name,amount;final Icon icon;final Bar bar;
        Row(Context context,int index){
            super(context);setGravity(Gravity.CENTER_VERTICAL);setImportantForAccessibility(IMPORTANT_FOR_ACCESSIBILITY_YES);
            rank=text(String.valueOf(index),11,true);addView(rank,new LayoutParams(dp(16),-1));icon=new Icon(context);LayoutParams ip=new LayoutParams(dp(20),dp(20));ip.rightMargin=dp(8);addView(icon,ip);
            LinearLayout body=new LinearLayout(context);body.setOrientation(VERTICAL);body.setGravity(Gravity.CENTER_VERTICAL);name=text("",12,false);body.addView(name,new LayoutParams(-1,-2));bar=new Bar(context);LayoutParams bp=new LayoutParams(-1,dp(2));bp.topMargin=dp(2);body.addView(bar,bp);addView(body,new LayoutParams(0,-1,1));
            amount=text("",12,true);amount.setFontFeatureSettings("tnum");amount.setGravity(Gravity.RIGHT|Gravity.CENTER_VERTICAL);LayoutParams ap=new LayoutParams(-2,-1);ap.leftMargin=dp(12);addView(amount,ap);
            for(View child:new View[]{rank,icon,body,name,bar,amount})child.setImportantForAccessibility(IMPORTANT_FOR_ACCESSIBILITY_NO);
        }
    }
    private final class Icon extends View{
        Drawable drawable;final Paint paint=new Paint(Paint.ANTI_ALIAS_FLAG);
        Icon(Context c){super(c);}void setIcon(Drawable d){if(drawable!=d){drawable=d;invalidate();}}
        @Override protected void onDraw(Canvas canvas){super.onDraw(canvas);if(drawable!=null){drawable.setBounds(0,0,getWidth(),getHeight());drawable.draw(canvas);}else{paint.setColor(JJGlassToolbar.matteTextColor(getContext()));paint.setAlpha(35);canvas.drawCircle(getWidth()/2f,getHeight()/2f,getWidth()/2f,paint);}}
    }
    private static final class Bar extends View{
        final Paint paint=new Paint(Paint.ANTI_ALIAS_FLAG);float ratio;int color;
        Bar(Context c){super(c);}
        @Override protected void onDraw(Canvas canvas){super.onDraw(canvas);paint.setColor(color);paint.setAlpha(16);canvas.drawRoundRect(0,0,getWidth(),getHeight(),getHeight()/2f,getHeight()/2f,paint);paint.setAlpha(100);canvas.drawRoundRect(0,0,getWidth()*ratio,getHeight(),getHeight()/2f,getHeight()/2f,paint);}
    }
}

