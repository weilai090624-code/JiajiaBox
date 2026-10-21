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
import android.app.Dialog;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.view.Gravity;
import android.view.View;
import android.view.Window;
import android.widget.*;
import java.io.*;
import java.util.concurrent.*;

/** Offline legal documents and upstream acknowledgements in the existing About page. */
public final class AboutLegal {
 private static final ExecutorService IO=Executors.newSingleThreadExecutor(r->{Thread t=new Thread(r,"about-licenses");t.setDaemon(true);return t;});
 private static final Handler MAIN=new Handler(Looper.getMainLooper());
 private static final java.util.Map<String,String> CACHE=new ConcurrentHashMap<>();
 private static int dp(Activity a,float n){return UiComponents.dp(a,n);}
 private static TextView text(Activity a,String value,int size,boolean secondary){TextView t=new TextView(a);t.setText(value);t.setTextSize(size);t.setIncludeFontPadding(false);t.setLineSpacing(dp(a,3),1);if(secondary)UiComponents.secondary(t);else UiComponents.text(t);return t;}
 private static LinearLayout card(Activity a,LinearLayout parent,String title){LinearLayout c=new LinearLayout(a);c.setOrientation(LinearLayout.VERTICAL);c.setPadding(dp(a,16),dp(a,16),dp(a,16),dp(a,16));UiComponents.panel(c);TextView h=text(a,title,16,false);h.setTypeface(Typeface.create("sans-serif-medium",Typeface.NORMAL));c.addView(h,new LinearLayout.LayoutParams(-1,-2));LinearLayout.LayoutParams p=new LinearLayout.LayoutParams(-1,-2);p.topMargin=dp(a,12);parent.addView(c,p);return c;}
 private static void paragraph(Activity a,LinearLayout parent,String value){TextView t=text(a,value,12,true);t.setTextIsSelectable(true);LinearLayout.LayoutParams p=new LinearLayout.LayoutParams(-1,-2);p.topMargin=dp(a,10);parent.addView(t,p);}
 private static void button(Activity a,LinearLayout parent,String title,Runnable action){TextView t=text(a,title,14,false);UiComponents.action(t);t.setSingleLine(false);t.setGravity(Gravity.START|Gravity.CENTER_VERTICAL);t.setPadding(dp(a,14),dp(a,10),dp(a,14),dp(a,10));t.setOnClickListener(v->action.run());LinearLayout.LayoutParams p=new LinearLayout.LayoutParams(-1,-2);p.topMargin=dp(a,8);parent.addView(t,p);}
 private static void link(Activity a,LinearLayout parent,String name,String role,String url){button(a,parent,name+"  ↗",()->{try{a.startActivity(new Intent(Intent.ACTION_VIEW,Uri.parse(url)));}catch(android.content.ActivityNotFoundException e){Toast.makeText(a,"没有可打开链接的应用",Toast.LENGTH_SHORT).show();}});paragraph(a,parent,role);}
 public static void append(Activity a,LinearLayout parent){
  LinearLayout project=card(a,parent,"JiajiaBox 开源声明");
  paragraph(a,project,"JiajiaBox 的原创代码与本项目修改部分基于 MIT License 开源，版权所有 © 2026 weilai090624-code。");
  paragraph(a,project,"本声明仅适用于 JiajiaBox 的原创代码与修改内容；随应用分发的上游组件仍受其各自许可证约束，原作者、版权和许可条件继续有效。");
  button(a,project,"MIT License · 完整条款",()->document(a,"JiajiaBox MIT License","JiajiaBox-MIT-LICENSE.txt"));
  LinearLayout thanks=card(a,parent,"开源鸣谢");
  link(a,thanks,"sing-box","代理核心 · nekohasekai 与贡献者 · GPL-3.0-or-later","https://github.com/SagerNet/sing-box");
  link(a,thanks,"libneko","NekoBox Go 基础库 · GPL-3.0-or-later（具体条件以其上游 LICENSE 为准）","https://github.com/MatsuriDayo/libneko");
  link(a,thanks,"libcore","SagerNet 网络与核心桥接 · GPL-3.0-or-later","https://github.com/SagerNet/SagerNet");
  link(a,thanks,"SagerNet","Android 客户端与核心桥接的上游基础","https://github.com/SagerNet/SagerNet");
  link(a,thanks,"shadowsocks-android","Android GUI 上游贡献","https://github.com/shadowsocks/shadowsocks-android");
  link(a,thanks,"Yacd-meta","内置 Web Dashboard 上游","https://github.com/MetaCubeX/Yacd-meta");
  link(a,thanks,"Solar System Scope","地球昼夜及云层贴图 · INOVE · CC BY 4.0（已转换格式与缩小云图）","https://www.solarsystemscope.com/textures/");
  button(a,thanks,"CC BY 4.0 · 地球贴图完整许可",()->document(a,"Creative Commons Attribution 4.0","CC-BY-4.0.txt"));
  button(a,thanks,"全球连接地球 · 实现与数据说明",()->document(a,"全球连接地球","Global-Globe-NOTICE.txt"));
  LinearLayout legal=card(a,parent,"许可证与版权");
  paragraph(a,legal,"JiajiaBox 基于 NekoBox for Android / SagerNet 修改，并使用 sing-box、libcore 与 libneko 等上游组件。JiajiaBox 原创代码适用 MIT License；sing-box 与 libcore 的相关部分适用 GPL-3.0-or-later，libneko 的具体条件以其上游发布为准。");
  paragraph(a,legal,"Copyright © 2026 weilai090624-code（JiajiaBox 原创代码与修改）\nCopyright © 2023–2024 MatsuriDayo & NekoBox Authors\nCopyright © 2021 nekohasekai（SagerNet / libcore）\nCopyright © 2022 nekohasekai（sing-box）\n原始声明和完整条款可在下方离线阅读。");
  paragraph(a,legal,"再分发时请同时保留 JiajiaBox 的 MIT 声明和各上游组件的版权、许可证及通知文件。本软件不提供任何担保；具体条件以对应许可证全文为准。");
  button(a,legal,"GNU GPL v3 · 完整条款",()->document(a,"GNU GPL v3","GPL-3.0.txt"));
  button(a,legal,"上游版权与许可声明",()->document(a,"上游版权与许可声明","UPSTREAM-NOTICES.txt"));
  button(a,legal,"上游作者与贡献者",()->document(a,"上游作者与贡献者","AUTHORS.txt"));
  button(a,legal,"JiajiaBox 修改与分发说明",()->document(a,"JiajiaBox 修改与分发说明","JiajiaBox-NOTICE.txt"));
  LinearLayout source=card(a,parent,"源码与版本关系");
  paragraph(a,source,"上游项目链接用于溯源，不能代替包含本软件修改的对应源码。分发 GPL 覆盖的可执行版本时，还需提供相应源码和必要构建脚本。");
  paragraph(a,source,"本版本对应源码发布地址： https://github.com/weilai090624-code/JiajiaBox");
  paragraph(a,source,"本软件为独立修改版本，非 NekoBox、SagerNet 或 sing-box 官方发行版，不表示上游认可或背书。");
 }
 private static void document(Activity a,String title,String asset){
  if(a.isFinishing()||a.isDestroyed())return;
  Dialog d=new Dialog(a);LinearLayout column=UiComponents.column(a);UiComponents.panel(column);column.addView(UiComponents.title(a,title));
  ScrollView scroll=new ScrollView(a);scroll.setFillViewport(false);TextView body=text(a,"正在读取…",14,false);body.setTextIsSelectable(true);body.setPadding(0,dp(a,12),0,dp(a,12));scroll.addView(body,new FrameLayout.LayoutParams(-1,-2));column.addView(scroll,new LinearLayout.LayoutParams(-1,0,1));
  LinearLayout footer=UiComponents.actions(a);TextView close=text(a,"关闭",14,false);close.setOnClickListener(v->d.dismiss());UiComponents.addAction(footer,close);column.addView(footer,new LinearLayout.LayoutParams(-1,-2));d.setContentView(column);d.show();Window w=d.getWindow();if(w!=null){w.setBackgroundDrawable(new ColorDrawable(Color.TRANSPARENT));w.setLayout(Math.min(dp(a,560),(int)(a.getResources().getDisplayMetrics().widthPixels*.92f)),Math.min(dp(a,720),(int)(a.getResources().getDisplayMetrics().heightPixels*.84f)));}
  String cached=CACHE.get(asset);if(cached!=null){body.setText(cached);return;}
  IO.execute(()->{String result;try(InputStream input=a.getApplicationContext().getAssets().open("licenses/"+asset);Reader reader=new InputStreamReader(input,"UTF-8")){StringBuilder out=new StringBuilder();char[] buffer=new char[4096];int count;while((count=reader.read(buffer))!=-1)out.append(buffer,0,count);result=out.toString();CACHE.put(asset,result);}catch(IOException error){result="无法读取本地许可证文档。请重新安装完整安装包。";android.util.Log.e("AboutLegal","Cannot read bundled license",error);}final String value=result;MAIN.post(()->{if(d.isShowing()&&!a.isFinishing()&&!a.isDestroyed())body.setText(value);});});
 }
 private AboutLegal(){}
}

