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
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.text.TextUtils;
import android.os.Handler;
import android.os.Looper;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONArray;
import org.json.JSONObject;

/** Bundled 3D globe with native, rate-limited IP.SB lookups. Never gives the WebView credentials or raw IPs. */
public final class GlobalGlobeCard extends LinearLayout {
    private static final ExecutorService WORKER=Executors.newSingleThreadExecutor(task->{Thread thread=new Thread(task,"globe-regions");thread.setDaemon(true);return thread;});
    private static String cachedHtml;
    private final Handler main=new Handler(Looper.getMainLooper());
    private final Rect visible=new Rect();
    private final TextView caption,footer;
    private final List<CountryRow> countryRows=new ArrayList<>(),exitRows=new ArrayList<>();
    private final LinearLayout legend,exitLegend;
    private final TextView emptyCountries,selfLocation,exitLocation;
    private final ScrollView countryScroll;
    private final FrameLayout body;
    private WebView web;
    private ViewTreeObserver observer;
    private boolean live,loading,loaded,themeApplied,lastDark,webFailed,autoRotate=true;
    private int epoch;
    private String html,lastState;
    private JSONArray countries=new JSONArray(),nodes=new JSONArray(),links=new JSONArray();
    private final Runnable changed=this::reconcile;
    private final ViewTreeObserver.OnScrollChangedListener scrolled=this::reconcile;
    private final ViewTreeObserver.OnGlobalLayoutListener laidOut=this::reconcile;
    private final Runnable tick=()->{if(!live)return;reconcile();if(live){request();main.postDelayed(this.tick,2000);}};

    public GlobalGlobeCard(Context context){
        super(context);setOrientation(VERTICAL);setPadding(dp(16),dp(14),dp(16),dp(14));UiComponents.routingCard(this);setClipToOutline(true);
        LinearLayout header=new LinearLayout(context);header.setGravity(Gravity.CENTER_VERTICAL);
        TextView title=text("全球连接",14,true);caption=text("暂停自转 · 双指缩放",10,false);UiComponents.secondary(caption);
        caption.setContentDescription("切换地球自转，双击地球可重置视角");caption.setOnClickListener(view->{autoRotate=!autoRotate;caption.setText(autoRotate?"暂停自转 · 双指缩放":"恢复自转 · 双指缩放");sendState();});
        header.addView(title,new LayoutParams(0,dp(22),1));header.addView(caption,new LayoutParams(-2,dp(22)));addView(header,new LayoutParams(-1,dp(22)));
        LinearLayout content=new LinearLayout(context);content.setGravity(Gravity.CENTER_VERTICAL);LayoutParams contentParams=new LayoutParams(-1,0,1);contentParams.topMargin=dp(6);addView(content,contentParams);
        body=new FrameLayout(context);content.addView(body,new LayoutParams(0,-1,1));
        legend=new LinearLayout(context);legend.setOrientation(VERTICAL);legend.setGravity(Gravity.TOP);
        countryScroll=new CountryScroll(context);countryScroll.setVerticalScrollBarEnabled(false);countryScroll.setFillViewport(true);countryScroll.setNestedScrollingEnabled(true);countryScroll.addView(legend,new FrameLayout.LayoutParams(-1,-2));
        LayoutParams legendParams=new LayoutParams(dp(104),-1);legendParams.setMarginStart(dp(6));content.addView(countryScroll,legendParams);
        selfLocation=text("本机：定位中",10,false);UiComponents.secondary(selfLocation);legend.addView(selfLocation,new LayoutParams(-1,dp(21)));
        exitLocation=text("出口：等待连接",10,false);UiComponents.secondary(exitLocation);legend.addView(exitLocation,new LayoutParams(-1,dp(21)));
        exitLegend=new LinearLayout(context);exitLegend.setOrientation(VERTICAL);legend.addView(exitLegend,new LayoutParams(-1,-2));
        selfLocation.setEllipsize(TextUtils.TruncateAt.END);exitLocation.setEllipsize(TextUtils.TruncateAt.END);
        selfLocation.setOnClickListener(v->{if(web!=null&&loaded&&live)web.evaluateJavascript("window.Globe&&Globe.focusNode('self')",null);});
        TextView destinations=text("请求国家／地区",9,false);UiComponents.secondary(destinations);legend.addView(destinations,new LayoutParams(-1,dp(20)));
        emptyCountries=text("连接后显示\n国家／地区",10,false);emptyCountries.setSingleLine(false);emptyCountries.setGravity(Gravity.CENTER);UiComponents.secondary(emptyCountries);legend.addView(emptyCountries,new LayoutParams(-1,dp(80)));
        footer=text("当前 0",9,false);UiComponents.secondary(footer);footer.setGravity(Gravity.CENTER_VERTICAL);addView(footer,new LayoutParams(-1,dp(14)));
    }
    private TextView text(String value,int size,boolean bold){TextView text=new TextView(getContext());text.setText(value);text.setTextSize(size);text.setSingleLine(true);text.setIncludeFontPadding(false);if(bold)text.setTypeface(Typeface.create("sans-serif-medium",Typeface.NORMAL));UiComponents.text(text);return text;}
    private int dp(float value){return UiComponents.dp(getContext(),value);}
    public void refreshAppearance(){
        if(caption==null)return;boolean dark=ThemePalette.dark(getContext());
        if(themeApplied&&lastDark==dark)return;themeApplied=true;lastDark=dark;UiComponents.refresh(this);sendState();
    }
    private boolean available(){return isAttachedToWindow()&&isShown()&&getWindowVisibility()==VISIBLE&&body.getHeight()>0&&body.getGlobalVisibleRect(visible)&&visible.height()>dp(20)&&!DrawerWorkGate.isMoving(this);}
    private void reconcile(){
        if(main==null||body==null||caption==null)return;
        boolean next=available();refreshAppearance();if(next==live)return;
        live=next;main.removeCallbacks(tick);
        if(live){if(web!=null)web.onResume();sendState();request();main.postDelayed(tick,2000);}
        else{epoch++;sendState();if(web!=null)web.onPause();}
    }
    @Override protected void onAttachedToWindow(){
        super.onAttachedToWindow();HomeSwipeController.exclusiveTouch(countryScroll,true);DrawerWorkGate.observe(this,changed);observer=getViewTreeObserver();observer.addOnScrollChangedListener(scrolled);observer.addOnGlobalLayoutListener(laidOut);post(changed);
    }
    @Override protected void onDetachedFromWindow(){
        DrawerWorkGate.unobserve(this);DrawerWorkGate.cancel(this);main.removeCallbacks(tick);main.removeCallbacks(changed);epoch++;live=false;
        HomeSwipeController.exclusiveTouch(countryScroll,false);
        if(observer!=null&&observer.isAlive()){observer.removeOnScrollChangedListener(scrolled);observer.removeOnGlobalLayoutListener(laidOut);}observer=null;
        if(web!=null){HomeSwipeController.exclusiveTouch(web,false);loaded=false;web.stopLoading();web.onPause();body.removeView(web);web.destroy();web=null;lastState=null;}
        super.onDetachedFromWindow();
    }
    @Override protected void onVisibilityChanged(View view,int visibility){super.onVisibilityChanged(view,visibility);reconcile();}
    @Override protected void onWindowVisibilityChanged(int visibility){super.onWindowVisibilityChanged(visibility);reconcile();}
    private static byte[] asset(Context context,String name,int maximum)throws Exception{
        try(InputStream input=context.getAssets().open(name);ByteArrayOutputStream output=new ByteArrayOutputStream()){
            byte[] buffer=new byte[8192];int count;while((count=input.read(buffer))!=-1){if(output.size()+count>maximum)throw new java.io.IOException("Globe asset too large");output.write(buffer,0,count);}return output.toByteArray();
        }
    }
    private void request(){
        if(!live||loading)return;if(DrawerWorkGate.defer(this,changed))return;loading=true;
        int generation=epoch;Context context=getContext().getApplicationContext();
        WORKER.execute(()->{
            JSONObject graph=new JSONObject();String problem=null;
            try{
                if(cachedHtml==null){
                    String document=new String(asset(context,"globe/index.html",256*1024),StandardCharsets.UTF_8);
                    String[] files={"daymap","nightmap","clouds"},tokens={"DAY","NIGHT","CLOUDS"};
                    for(int i=0;i<files.length;i++){
                        String data=android.util.Base64.encodeToString(asset(context,"globe/earth-"+files[i]+".webp",1024*1024),android.util.Base64.NO_WRAP);
                        document=document.replace("@@EARTH_"+tokens[i]+"@@","data:image/webp;base64,"+data);
                    }
                    cachedHtml=document;
                }
                JSONArray connections=ConnectionInspector.snapshot(context).optJSONArray("connections");
                JSONObject types=ConnectionInspector.currentTypes(context);java.util.Set<String> tags=new java.util.TreeSet<>();
                java.util.Map<String,Integer> targetCounts=new java.util.HashMap<>();
                for(int i=0;connections!=null&&i<connections.length();i++){
                    JSONObject row=connections.optJSONObject(i);if(row==null)continue;
                    JSONObject metadata=row.optJSONObject("metadata");String target=metadata==null?"":metadata.optString("destinationIP");
                    if(!target.isEmpty())targetCounts.put(target,targetCounts.containsKey(target)?targetCounts.get(target)+1:1);
                    String tag=GlobeTopology.tag(row,types),type=GlobeTopology.type(row,types);
                    if(!tag.isEmpty()&&!"direct".equals(type)&&!"block".equals(type)&&!"dns".equals(type))tags.add(tag);
                }
                StringBuilder path=new StringBuilder("/globe-egress?network=").append(java.net.URLEncoder.encode(networkKey(context),"UTF-8"));
                int included=0;for(String tag:tags)if(included++<128)path.append("&tag=").append(java.net.URLEncoder.encode(tag,"UTF-8"));
                java.util.List<String> targets=new java.util.ArrayList<>(targetCounts.keySet());
                java.util.Collections.sort(targets,(a,b)->{int order=Integer.compare(targetCounts.get(b),targetCounts.get(a));return order!=0?order:a.compareTo(b);});
                included=0;for(String ip:targets)if(included++<256)path.append("&ip=").append(java.net.URLEncoder.encode(ip,"UTF-8"));
                JSONObject locations;try{locations=ConnectionInspector.request(context,path.toString());}catch(Exception e){locations=new JSONObject();}
                graph=GlobeTopology.build(connections,types,locations);
            }catch(Exception failure){problem="连接后显示分布 · 可拖动预览";}
            final JSONObject snapshot=graph;final String status=problem,document=cachedHtml;
            main.post(()->{
                loading=false;if(generation!=epoch||!available())return;
                DrawerWorkGate.publish(this,()->{
                    if(generation!=epoch||!available())return;
                    countries=snapshot.optJSONArray("countries");if(countries==null)countries=new JSONArray();
                    nodes=snapshot.optJSONArray("nodes");if(nodes==null)nodes=new JSONArray();links=snapshot.optJSONArray("links");if(links==null)links=new JSONArray();html=document;if(web==null&&!webFailed&&html!=null)createWeb();renderCountries();
                    String own=snapshot.optString("selfCountry");
                    setText(selfLocation,"本机："+(own.isEmpty()?(snapshot.optBoolean("selfPending")?"查询中":"未定位"):GlobeCountries.name(own,Locale.getDefault())));
                    selfLocation.setContentDescription("本机公网位置，IP.SB 在线查询，"+(own.isEmpty()?"未定位":GlobeCountries.name(own,Locale.getDefault())));
                    if(snapshot.optInt("total")>0&&countries.length()==0)setText(emptyCountries,snapshot.optBoolean("pending")?"ip.sb 查询中":"ip.sb 未定位");
                    setText(exitLocation,"出口："+snapshot.optInt("exitCount")+" 个"+(snapshot.optBoolean("pending")?" · 查询中":""));
                    setText(footer,status!=null?status.split("[，,·]",2)[0].trim():"当前 "+snapshot.optInt("total"));sendState();
                });
            });
        });
    }
    private static String networkKey(Context context){
        try{
            android.net.ConnectivityManager manager=(android.net.ConnectivityManager)context.getSystemService(Context.CONNECTIVITY_SERVICE);
            java.util.List<String> values=new ArrayList<>();
            for(android.net.Network network:manager.getAllNetworks()){
                android.net.NetworkCapabilities cap=manager.getNetworkCapabilities(network);
                if(cap!=null&&cap.hasCapability(android.net.NetworkCapabilities.NET_CAPABILITY_INTERNET)&&!cap.hasTransport(android.net.NetworkCapabilities.TRANSPORT_VPN))values.add(network.toString());
            }
            Collections.sort(values);return values.toString();
        }catch(Exception ignored){return "network";}
    }
    private void createWeb(){
        try{
            web=new WebView(getContext());web.setBackgroundColor(Color.TRANSPARENT);web.setContentDescription("写实昼夜地球与大气辉光：拖动旋转、双指缩放，点击右侧已连接国家或地区切换视角");HomeSwipeController.exclusiveTouch(web,true);
            WebSettings settings=web.getSettings();settings.setJavaScriptEnabled(true);settings.setAllowFileAccess(false);settings.setAllowContentAccess(false);settings.setBlockNetworkLoads(true);settings.setDomStorageEnabled(false);settings.setSupportZoom(false);settings.setMixedContentMode(WebSettings.MIXED_CONTENT_NEVER_ALLOW);settings.setCacheMode(WebSettings.LOAD_NO_CACHE);
            web.setVerticalScrollBarEnabled(false);web.setHorizontalScrollBarEnabled(false);web.setOverScrollMode(OVER_SCROLL_NEVER);
            web.setWebViewClient(new WebViewClient(){
                @Override public boolean shouldOverrideUrlLoading(WebView view,String url){return true;}
                @Override public boolean shouldOverrideUrlLoading(WebView view,WebResourceRequest request){return true;}
                @Override public WebResourceResponse shouldInterceptRequest(WebView view,String url){return resource(url);}
                @Override public WebResourceResponse shouldInterceptRequest(WebView view,WebResourceRequest request){return resource(request.getUrl().toString());}
                private WebResourceResponse resource(String url){return url!=null&&url.startsWith("data:image/webp;base64,")?null:blocked();}
                private WebResourceResponse blocked(){return new WebResourceResponse("text/plain","UTF-8",new ByteArrayInputStream(new byte[0]));}
                @Override public void onPageFinished(WebView view,String url){if(web==view){loaded=true;lastState=null;sendState();if(!live)view.onPause();}}
            });
            web.setOnTouchListener(new View.OnTouchListener(){boolean rotate;
                public boolean onTouch(View view,MotionEvent event){
                    int action=event.getActionMasked();ViewParent parent=view.getParent();
                    if(action==MotionEvent.ACTION_DOWN)rotate=true;
                    if(action==MotionEvent.ACTION_POINTER_DOWN)rotate=true;
                    if(parent!=null)parent.requestDisallowInterceptTouchEvent(rotate&&action!=MotionEvent.ACTION_UP&&action!=MotionEvent.ACTION_CANCEL);
                    if(!live)return true;return false;
                }
            });
            body.addView(web,new FrameLayout.LayoutParams(-1,-1));web.loadDataWithBaseURL("https://globe.jiajiabox.invalid/",html,"text/html","UTF-8",null);
        }catch(RuntimeException|LinkageError failure){
            webFailed=true;if(web!=null){HomeSwipeController.exclusiveTouch(web,false);body.removeView(web);web.destroy();web=null;}TextView fallback=text("当前系统无法加载 3D 地球",11,false);UiComponents.secondary(fallback);fallback.setGravity(Gravity.CENTER);body.addView(fallback,new FrameLayout.LayoutParams(-1,-1));android.util.Log.w("GlobalGlobeCard","WebView unavailable",failure);
        }
    }
    private void sendState(){
        if(web==null||!loaded)return;
        try{JSONObject state=new JSONObject().put("dark",ThemePalette.dark(getContext())).put("paused",!live).put("autoRotate",autoRotate).put("countries",countries).put("nodes",nodes).put("links",links);String json=state.toString();if(json.equals(lastState))return;lastState=json;web.evaluateJavascript("window.Globe&&Globe.setState("+json+")",null);}catch(org.json.JSONException ignored){}
    }
    private static void setText(TextView view,String value){if(!value.contentEquals(view.getText()))view.setText(value);}
    private void renderCountries(){
        java.util.List<JSONObject> exits=new ArrayList<>();for(int i=0;i<nodes.length();i++){JSONObject node=nodes.optJSONObject(i);if(node!=null&&"exit".equals(node.optString("role")))exits.add(node);}
        while(exitRows.size()>exits.size())exitLegend.removeView(exitRows.remove(exitRows.size()-1));
        for(int i=0;i<exits.size();i++){if(i==exitRows.size()){CountryRow row=new CountryRow(true);exitRows.add(row);exitLegend.addView(row,new LayoutParams(-1,dp(22)));}exitRows.get(i).bind(exits.get(i));}
        emptyCountries.setVisibility(countries.length()==0?VISIBLE:GONE);
        while(countryRows.size()>countries.length()){CountryRow row=countryRows.remove(countryRows.size()-1);legend.removeView(row);}
        for(int i=0;i<countries.length();i++){
            if(i==countryRows.size()){CountryRow row=new CountryRow();countryRows.add(row);legend.addView(row,new LayoutParams(-1,dp(22*Math.max(1,getResources().getConfiguration().fontScale))));}
            countryRows.get(i).bind(countries.optJSONObject(i));
        }
    }
    private final class CountryRow extends LinearLayout {
        final TextView name,number;final boolean exit;String code;
        CountryRow(){this(false);}
        CountryRow(boolean isExit){super(GlobalGlobeCard.this.getContext());exit=isExit;setGravity(Gravity.CENTER_VERTICAL);name=text("",10,false);name.setEllipsize(TextUtils.TruncateAt.END);UiComponents.secondary(name);number=text("",10,true);UiComponents.text(number);addView(name,new LayoutParams(0,-2,1));addView(number,new LayoutParams(-2,-2));setPadding(0,0,dp(3),0);setOnClickListener(view->{if(web!=null&&loaded&&live)web.evaluateJavascript("window.Globe&&Globe."+(exit?"focusNode":"focusCountry")+"("+JSONObject.quote(code)+")",null);});}
        void bind(JSONObject value){code=value.optString(exit?"id":"code");String country=value.optString("code"),label=value.optString("name",GlobeCountries.name(country,Locale.getDefault()));if(exit)label="出口·"+label;setText(name,label);setText(number,String.valueOf(value.optInt("count")));setContentDescription(label+"，"+value.optInt("count")+" 个连接"+(exit?"，复用 "+value.optInt("members")+" 个节点":"")+"，点击切换地球视角");}
    }
    private static final class CountryScroll extends ScrollView {
        float x,y;CountryScroll(Context context){super(context);}
        @Override public boolean dispatchTouchEvent(MotionEvent event){int action=event.getActionMasked();ViewParent parent=getParent();if(action==MotionEvent.ACTION_DOWN){x=event.getX();y=event.getY();if(parent!=null)parent.requestDisallowInterceptTouchEvent(true);}else if(action==MotionEvent.ACTION_MOVE){if(parent!=null)parent.requestDisallowInterceptTouchEvent(Math.abs(event.getY()-y)>=Math.abs(event.getX()-x)&&canScrollVertically(event.getY()>y?-1:1));}else if(action==MotionEvent.ACTION_UP||action==MotionEvent.ACTION_CANCEL){if(parent!=null)parent.requestDisallowInterceptTouchEvent(false);}return super.dispatchTouchEvent(event);}
    }
}
