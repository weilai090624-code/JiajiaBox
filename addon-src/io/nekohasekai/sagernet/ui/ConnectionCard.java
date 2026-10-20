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
import android.os.*;
import android.text.TextUtils;
import android.view.*;
import android.widget.*;
import org.json.*;
import java.util.*;
import java.util.concurrent.atomic.AtomicBoolean;

/** Recycled visible rows; snapshot indexing runs entirely on the worker. */
public final class ConnectionCard extends LinearLayout {
 private final Handler main=new Handler(Looper.getMainLooper());
 private final AtomicBoolean loading=new AtomicBoolean();
 private final TextView title,caption,empty;
 private final ListView list;
 private final Rows adapter=new Rows();
 private ConnectionRows data;
 private JSONObject types=new JSONObject();
 private Map<String,String> labels=Collections.emptyMap();
 private int filter,epoch;
 private String error="连接后显示实时连接";
 private Runnable publication;
 private final String[] filters={"全部","默认代理","代理","直连"};
 private final Runnable tick=()->{if(!active())return;request();main.postDelayed(this.tick,2000);};
 public ConnectionCard(Context c){
  super(c);setOrientation(VERTICAL);UiComponents.routingCard(this);setPadding(dp(16),dp(14),dp(16),dp(14));
  LinearLayout header=new LinearLayout(c);header.setGravity(Gravity.CENTER_VERTICAL);
  title=text("连接详情",14,true);caption=text("全部 · 0 ▾",10,false);caption.setGravity(Gravity.RIGHT|Gravity.CENTER_VERTICAL);UiComponents.secondary(caption);caption.setContentDescription("切换连接筛选");caption.setOnClickListener(v->{filter=(filter+1)%filters.length;render();});
  header.addView(title,new LayoutParams(0,headerHeight(),1));header.addView(caption,new LayoutParams(-2,headerHeight()));addView(header,new LayoutParams(-1,headerHeight()));
  FrameLayout body=new FrameLayout(c);LayoutParams bp=new LayoutParams(-1,0,1);bp.topMargin=dp(6);addView(body,bp);
  list=new LocalList(c);list.setDivider(null);list.setDividerHeight(0);list.setCacheColorHint(0);list.setAdapter(adapter);body.addView(list,new FrameLayout.LayoutParams(-1,-1));
  empty=text(error,12,false);empty.setSingleLine(false);empty.setGravity(Gravity.CENTER);UiComponents.secondary(empty);body.addView(empty,new FrameLayout.LayoutParams(-1,-1));list.setEmptyView(empty);
 }
 private TextView text(String value,int size,boolean bold){TextView t=new TextView(getContext());t.setText(value);t.setTextSize(size);t.setSingleLine(true);t.setEllipsize(TextUtils.TruncateAt.END);t.setIncludeFontPadding(false);if(bold)t.setTypeface(Typeface.create("sans-serif-medium",Typeface.NORMAL));UiComponents.text(t);return t;}
 private int dp(float n){return UiComponents.dp(getContext(),n);}
 private int headerHeight(){return dp(22*Math.max(1,getResources().getConfiguration().fontScale));}
 public int preferredHeight(){return dp(26)+headerHeight()+5*dp(28*Math.max(1,getResources().getConfiguration().fontScale));}
 private boolean active(){return isAttachedToWindow()&&isShown()&&getWindowVisibility()==VISIBLE;}
 private void reconcile(){
  if(main==null||tick==null)return;main.removeCallbacks(tick);
  if(!active()){epoch++;cancelPublication();return;}
  UiComponents.refresh(this);request();main.postDelayed(tick,2000);
 }
 private void cancelPublication(){if(publication!=null){main.removeCallbacks(publication);publication=null;loading.set(false);}}
 protected void onAttachedToWindow(){super.onAttachedToWindow();reconcile();}
 protected void onDetachedFromWindow(){main.removeCallbacks(tick);epoch++;cancelPublication();super.onDetachedFromWindow();}
 protected void onVisibilityChanged(View v,int value){super.onVisibilityChanged(v,value);reconcile();}
 protected void onWindowVisibilityChanged(int value){super.onWindowVisibilityChanged(value);reconcile();}
 private void request(){
  if(!active()||HomeSwipeController.isMoving()||FullScreenBackdrop.isTransitioning(this)||!loading.compareAndSet(false,true))return;
  final int generation=epoch;final Context c=getContext().getApplicationContext();final Map<String,String> resolved=new HashMap<>(labels);
  ConnectionInspector.WORKER.execute(()->{
   ConnectionRows result=null;JSONObject map=null;String failure=null;
   try{
    JSONArray source=ConnectionInspector.snapshot(c).optJSONArray("connections");map=ConnectionInspector.currentTypes(c);result=new ConnectionRows(source,map);
    // Only resolve labels that one of the bounded pages can display.
    Set<String> needed=new HashSet<>();for(List<JSONObject> page:result.pages)for(JSONObject row:page){JSONObject m=row.optJSONObject("metadata");if(m!=null)needed.add(m.optString("processPath"));}
    resolved.keySet().retainAll(needed);
    for(String pkg:needed)if(!resolved.containsKey(pkg)){
     String name=pkg;try{String key=pkg.split(" ",2)[0];name=c.getPackageManager().getApplicationLabel(c.getPackageManager().getApplicationInfo(key,0)).toString();}catch(Exception ignored){}resolved.put(pkg,name);
    }
   }catch(Exception e){failure=e instanceof java.net.ConnectException?"代理未运行或正在重连":e instanceof java.net.SocketTimeoutException?"读取连接信息超时":e.getMessage();}
   final ConnectionRows resultRows=result;final JSONObject resultTypes=map;final String problem=failure;
   main.post(()->{
    if(generation!=epoch||!active()){loading.set(false);return;}
    publication=new Runnable(){public void run(){
     if(generation!=epoch||!active()){publication=null;loading.set(false);return;}
     if(HomeSwipeController.isMoving()||FullScreenBackdrop.isTransitioning(ConnectionCard.this)){main.postDelayed(this,80);return;}
     publication=null;loading.set(false);data=resultRows;types=resultTypes==null?new JSONObject():resultTypes;labels=resolved;error=problem;render();
    }};publication.run();
   });
  });
 }
 private void render(){
  int count=data==null?0:data.counts[filter];set(caption,filters[filter]+" · "+count+(count>ConnectionRows.LIMIT?"（前150）":"")+" ▾");
  set(empty,error!=null?error:"暂无匹配的当前连接");adapter.notifyDataSetChanged();
 }
 private final class Rows extends BaseAdapter {
  public int getCount(){return data==null?0:data.pages[filter].size();}
  public JSONObject getItem(int position){return data.pages[filter].get(position);}
  public long getItemId(int position){return position;}
  public View getView(int position,View recycled,ViewGroup parent){Row row=recycled instanceof Row?(Row)recycled:new Row();row.bind(getItem(position));return row;}
 }
 private final class Row extends LinearLayout {
  final TextView app,host,route;JSONObject value;
  Row(){super(ConnectionCard.this.getContext());setOrientation(VERTICAL);setPadding(0,dp(5),0,dp(5));app=text("",12,true);host=text("",11,false);route=text("",10,false);UiComponents.secondary(route);addView(app);addView(host);addView(route);setClickable(true);setFocusable(true);setOnClickListener(v->{if(value!=null)ConnectionInspector.showDetail(getContext(),value,types);});}
  void bind(JSONObject row){value=row;JSONObject m=row.optJSONObject("metadata");if(m==null)m=new JSONObject();String pkg=m.optString("processPath","未识别应用"),name=labels.get(pkg);if(name==null||name.isEmpty())name=pkg;String destination=m.optString("host");if(destination.isEmpty())destination=m.optString("destinationIP");String rule=row.optString("rule");set(app,name);set(host,destination+":"+m.optString("destinationPort"));set(route,ConnectionInspector.kind(row,types)+" · "+("final".equals(rule)?"默认路由":rule));}
 }
 private static void set(TextView view,String value){if(!value.contentEquals(view.getText()))view.setText(value);}
 private static final class LocalList extends ListView {
  float x,y;LocalList(Context c){super(c);setNestedScrollingEnabled(true);}
  public boolean dispatchTouchEvent(MotionEvent e){int action=e.getActionMasked();ViewParent parent=getParent();if(action==MotionEvent.ACTION_DOWN){x=e.getX();y=e.getY();if(parent!=null)parent.requestDisallowInterceptTouchEvent(true);}else if(action==MotionEvent.ACTION_MOVE){if(parent!=null)parent.requestDisallowInterceptTouchEvent(Math.abs(e.getY()-y)>=Math.abs(e.getX()-x)&&canScrollVertically(e.getY()>y?-1:1));}else if(action==MotionEvent.ACTION_UP||action==MotionEvent.ACTION_CANCEL){if(parent!=null)parent.requestDisallowInterceptTouchEvent(false);}return super.dispatchTouchEvent(e);}
 }
}

