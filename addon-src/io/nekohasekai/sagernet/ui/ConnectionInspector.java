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
import android.content.*;
import android.os.*;
import android.view.*;
import android.widget.*;
import android.text.*;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import org.json.*;
import java.io.*;
import java.net.*;
import java.util.*;
import java.util.concurrent.*;

/** Authenticated loopback snapshots from the core, without TLS interception. */
public final class ConnectionInspector {
 static final ExecutorService WORKER=Executors.newSingleThreadExecutor(r->new Thread(r,"connection-inspector"));
 static Context app()throws Exception{return (Context)Class.forName("io.nekohasekai.sagernet.ktx.UtilsKt").getMethod("getApp").invoke(null);}
 static SharedPreferences prefs(Context c){return c.getSharedPreferences("connection-inspector",0);}
 public static void configure(JSONObject root){
  JSONArray in=root.optJSONArray("inbounds");boolean tun=false;for(int i=0;in!=null&&i<in.length();i++)tun|="tun".equals(in.optJSONObject(i)==null?"":in.optJSONObject(i).optString("type"));if(tun)prepare(root);
 }
 private static void prepare(JSONObject root){
  try{
   Context c=app();SharedPreferences pref=prefs(c);JSONObject exp=root.optJSONObject("experimental");if(exp==null){exp=new JSONObject();root.put("experimental",exp);}
   JSONObject api=exp.optJSONObject("clash_api");
   if(api==null||api.optString("external_controller").isEmpty()){
    api=api==null?new JSONObject():api;int port;
    try(ServerSocket socket=new ServerSocket(0,1,InetAddress.getByName("127.0.0.1"))){port=socket.getLocalPort();}
    api.put("external_controller","127.0.0.1:"+port).put("secret",UUID.randomUUID().toString());exp.put("clash_api",api);
   }
   String address=api.optString("external_controller");
   if(!address.startsWith("127.0.0.1:")){pref.edit().remove("address").apply();return;}
   JSONObject types=new JSONObject();JSONArray out=root.optJSONArray("outbounds");for(int i=0;out!=null&&i<out.length();i++){JSONObject o=out.getJSONObject(i);types.put(o.optString("tag"),o.optString("type"));}
   if(!pref.edit().putString("address",address).putString("secret",api.optString("secret")).putString("types",types.toString()).commit())throw new IOException("Cannot save inspector endpoint");
  }catch(Exception e){android.util.Log.e("ConnectionInspector","Cannot prepare local connection inspector",e);}
 }
 public static void install(Object fragment){
  try{
   Context c=(Context)fragment.getClass().getMethod("requireContext").invoke(fragment);Object screen=fragment.getClass().getMethod("getPreferenceScreen").invoke(fragment);
   Class<?> group=Class.forName("androidx.preference.PreferenceGroup"),rowClass=Class.forName("androidx.preference.Preference");
   if(group.getMethod("findPreference",CharSequence.class).invoke(screen,"connectionInspector")!=null)return;
   Object row=rowClass.getConstructor(Context.class).newInstance(c);rowClass.getMethod("setKey",String.class).invoke(row,"connectionInspector");rowClass.getMethod("setTitle",CharSequence.class).invoke(row,"连接详情");rowClass.getMethod("setSummary",CharSequence.class).invoke(row,"查看应用、目标、命中规则和实际出口");rowClass.getMethod("setOrder",int.class).invoke(row,Integer.MAX_VALUE-2);rowClass.getMethod("setPersistent",boolean.class).invoke(row,false);
   Class<?> listener=Class.forName("androidx.preference.Preference$OnPreferenceClickListener");Object click=java.lang.reflect.Proxy.newProxyInstance(listener.getClassLoader(),new Class<?>[]{listener},(proxy,m,args)->{if("onPreferenceClick".equals(m.getName())){show(c);return true;}if("hashCode".equals(m.getName()))return System.identityHashCode(proxy);if("equals".equals(m.getName()))return proxy==args[0];return "ConnectionInspector";});
   rowClass.getMethod("setOnPreferenceClickListener",listener).invoke(row,click);group.getMethod("addPreference",rowClass).invoke(screen,row);
  }catch(Exception e){android.util.Log.e("ConnectionInspector","Cannot install connection details",e);}
 }
 // Only the actual service instance publishes this file. SharedPreferences are cached per process.
 public static String publishRuntime(String config){
  try{JSONObject root=new JSONObject(config);prepare(root);JSONObject api=root.getJSONObject("experimental").getJSONObject("clash_api");
   JSONObject endpoint=new JSONObject().put("address",api.optString("external_controller")).put("secret",api.optString("secret"));
   JSONObject types=new JSONObject();JSONArray out=root.optJSONArray("outbounds");for(int i=0;out!=null&&i<out.length();i++){JSONObject o=out.getJSONObject(i);types.put(o.optString("tag"),o.optString("type"));}endpoint.put("types",types);
   File target=endpointFile(app()),temporary=new File(target.getPath()+".tmp");
   synchronized(ConnectionInspector.class){try(FileOutputStream stream=new FileOutputStream(temporary)){stream.write(endpoint.toString().getBytes("UTF-8"));stream.getFD().sync();}if(!temporary.renameTo(target))throw new IOException("Cannot publish connection endpoint");}
   return root.toString();
  }catch(Exception e){android.util.Log.e("ConnectionInspector","Cannot publish runtime endpoint",e);return config;}
 }
 static File endpointFile(Context c){return new File(c.getFilesDir(),"connection-inspector-runtime.json");}
 static JSONObject endpoint(Context c)throws Exception{
  File file=endpointFile(c);if(!file.isFile())throw new IOException("请断开后重新连接代理，以启用连接详情");
  try(InputStream input=new FileInputStream(file);ByteArrayOutputStream out=new ByteArrayOutputStream()){byte[] buffer=new byte[4096];int n;while((n=input.read(buffer))!=-1){if(out.size()+n>1024*1024)throw new IOException("连接接口信息异常");out.write(buffer,0,n);}return new JSONObject(out.toString("UTF-8"));}
 }
 static JSONObject currentTypes(Context c)throws Exception{JSONObject types=endpoint(c).optJSONObject("types");return types==null?new JSONObject():types;}
 static JSONObject snapshot(Context c)throws Exception{return request(c,"/connections");}
 static JSONObject request(Context c,String path)throws Exception{
  JSONObject p=endpoint(c);String address=p.optString("address");if(address.isEmpty())throw new IOException("请先重新连接代理，以启用连接详情");
  HttpURLConnection connection=(HttpURLConnection)new URL("http://"+address+path).openConnection(java.net.Proxy.NO_PROXY);connection.setUseCaches(false);connection.setConnectTimeout(1800);connection.setReadTimeout(1800);connection.setRequestProperty("Authorization","Bearer "+p.optString("secret"));connection.setInstanceFollowRedirects(false);
  try{if(connection.getResponseCode()!=200)throw new IOException("内核连接信息暂不可用");try(InputStream input=connection.getInputStream();ByteArrayOutputStream out=new ByteArrayOutputStream()){byte[] buffer=new byte[8192];int n;while((n=input.read(buffer))!=-1){if(out.size()+n>4*1024*1024)throw new IOException("连接数据过多，请稍后重试");out.write(buffer,0,n);}return new JSONObject(out.toString("UTF-8"));}}
  finally{connection.disconnect();}
 }
 public static String kind(JSONObject connection,JSONObject types){JSONArray chains=connection.optJSONArray("chains");boolean direct=false;for(int i=0;chains!=null&&i<chains.length();i++){String type=types.optString(chains.optString(i));if("direct".equals(type))direct=true;else if(!type.isEmpty()&&!"selector".equals(type)&&!"urltest".equals(type))return "代理";}return direct?"直连":"未知出口";}
 public static boolean matches(JSONObject row,JSONObject types,int filter,String query){String kind=kind(row,types);if(filter==1&&!("final".equals(row.optString("rule"))&&"代理".equals(kind)))return false;if(filter==2&&!"代理".equals(kind))return false;if(filter==3&&!"直连".equals(kind))return false;return query.isEmpty()||row.toString().toLowerCase(Locale.ROOT).contains(query.toLowerCase(Locale.ROOT));}
 public static String detail(JSONObject row,JSONObject types){JSONObject m=row.optJSONObject("metadata");if(m==null)m=new JSONObject();String host=m.optString("host");String rule=row.optString("rule");return "应用："+m.optString("processPath","未识别")+"\n域名："+(host.isEmpty()?"未获取到域名":host)+"\n目标："+m.optString("destinationIP")+":"+m.optString("destinationPort")+"\n协议："+m.optString("network")+"\n分流："+kind(row,types)+"\n命中规则："+("final".equals(rule)?"默认路由（未命中特定路由规则）":rule)+"\n出口链："+row.optString("chains")+"\n上传："+row.optLong("upload")+" B\n下载："+row.optLong("download")+" B";}
 static JSONArray ordered(JSONArray source){List<JSONObject> values=new ArrayList<>();for(int i=0;source!=null&&i<source.length();i++){JSONObject row=source.optJSONObject(i);if(row!=null)values.add(row);}Collections.sort(values,(a,b)->{int time=b.optString("start").compareTo(a.optString("start"));return time!=0?time:a.optString("id").compareTo(b.optString("id"));});JSONArray out=new JSONArray();for(JSONObject value:values)out.put(value);return out;}
 public static void show(Context c){new Panel(c).open();}
 public static void showDetail(Context c,JSONObject row,JSONObject types){new LiveDetail(c,row,types).open();}
 static final class LiveDetail {
  final Context c;final Dialog dialog;final TextView info;final Handler main=new Handler(Looper.getMainLooper());
  final String id;JSONObject row,types;boolean closed,loading,ended;
  final Runnable tick=()->{refresh();};
  LiveDetail(Context context,JSONObject initial,JSONObject initialTypes){
   c=context;row=initial;types=initialTypes;id=row.optString("id");dialog=new Dialog(c);
   LinearLayout content=UiComponents.column(c);UiComponents.panel(content);content.addView(UiComponents.title(c,"连接详情"));
   info=new TextView(c);info.setTextIsSelectable(true);UiComponents.text(info);render("每 2 秒刷新");
   ScrollView scroll=new ScrollView(c);scroll.addView(info);content.addView(scroll,new LinearLayout.LayoutParams(-1,UiComponents.dp(c,300)));
   TextView close=new TextView(c);close.setText("关闭");close.setOnClickListener(v->dialog.dismiss());UiComponents.action(close);content.addView(close);
   dialog.setContentView(content);dialog.setOnDismissListener(d->{closed=true;main.removeCallbacks(tick);});
  }
  void open(){dialog.show();if(dialog.getWindow()!=null){dialog.getWindow().setBackgroundDrawable(new ColorDrawable(Color.TRANSPARENT));dialog.getWindow().setLayout((int)(c.getResources().getDisplayMetrics().widthPixels*.9),-2);}main.post(tick);}
  void render(String state){info.setText(detail(row,types)+"\n\n"+state);}
  void refresh(){
   if(closed||ended||loading)return;loading=true;
   WORKER.execute(()->{
    JSONObject found=null,map=null;String error=null;
    try{JSONArray connections=snapshot(c.getApplicationContext()).optJSONArray("connections");
     if(connections==null)throw new IOException("连接列表暂不可用");
     for(int i=0;i<connections.length();i++){JSONObject candidate=connections.optJSONObject(i);if(candidate!=null&&!id.isEmpty()&&id.equals(candidate.optString("id"))){found=candidate;break;}}
     if(id.isEmpty())throw new IOException("连接标识缺失，无法实时更新");
     map=currentTypes(c);
    }catch(Exception e){error=e instanceof ConnectException?"代理未运行或正在重连":e instanceof SocketTimeoutException?"读取连接信息超时":e.getMessage();if(error==null)error="读取连接信息失败";}
    final JSONObject latest=found,latestTypes=map;final String failure=error;
    main.post(()->{loading=false;if(closed)return;
     if(failure!=null)render(failure+"，稍后重试（保留上次数据）");
     else if(latest==null){ended=true;render("连接已结束 · 以上为最后一次采样数据");}
     else{row=latest;types=latestTypes;render("每 2 秒刷新 · "+new java.text.SimpleDateFormat("HH:mm:ss",Locale.getDefault()).format(new Date())+" 更新");}
     if(!ended)main.postDelayed(tick,2000);
    });
   });
  }
 }
 static final class Panel {
  final Context c;final Dialog dialog;final Handler main=new Handler(Looper.getMainLooper());final LinearLayout column,list;final TextView status;final EditText search;final Spinner filter;boolean closed,loading;JSONArray data=new JSONArray();JSONObject types=new JSONObject();final Map<String,String> labels=new HashMap<>();
  final Runnable tick=()->{refresh();if(!closed)main.postDelayed(this.tick,2000);};
  Panel(Context c){this.c=c;dialog=new Dialog(c);column=UiComponents.column(c);UiComponents.panel(column);column.addView(UiComponents.title(c,"连接详情"));
   search=new EditText(c);search.setSingleLine(true);search.setHint("搜索域名、应用或包名");UiComponents.field(search);column.addView(search,new LinearLayout.LayoutParams(-1,-2));
   filter=new Spinner(c);ArrayAdapter<String> adapter=new ArrayAdapter<String>(c,android.R.layout.simple_spinner_dropdown_item,new String[]{"全部连接","默认代理","代理","直连"}){
    public View getView(int position,View reused,ViewGroup parent){View row=super.getView(position,reused,parent);if(row instanceof TextView)UiComponents.text((TextView)row);return row;}
    public View getDropDownView(int position,View reused,ViewGroup parent){View row=super.getDropDownView(position,reused,parent);row.setBackgroundColor(ThemePalette.surface(c));if(row instanceof TextView)UiComponents.text((TextView)row);return row;}
   };filter.setAdapter(adapter);column.addView(filter);
   status=new TextView(c);UiComponents.text(status);column.addView(status);
   ScrollView scroll=new ScrollView(c);list=new LinearLayout(c);list.setOrientation(LinearLayout.VERTICAL);scroll.addView(list);column.addView(scroll,new LinearLayout.LayoutParams(-1,0,1));
   TextView close=new TextView(c);close.setText("关闭");close.setOnClickListener(v->dialog.dismiss());UiComponents.action(close);column.addView(close);
   search.addTextChangedListener(new TextWatcher(){public void beforeTextChanged(CharSequence s,int start,int count,int after){}public void onTextChanged(CharSequence s,int start,int before,int count){render();}public void afterTextChanged(Editable e){}});
   filter.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener(){public void onItemSelected(AdapterView<?> a,View v,int p,long id){render();}public void onNothingSelected(AdapterView<?> a){}});
   dialog.setOnDismissListener(d->{closed=true;main.removeCallbacks(tick);});
  }
  void open(){dialog.setContentView(column);dialog.show();Window w=dialog.getWindow();if(w!=null){w.setBackgroundDrawable(new ColorDrawable(Color.TRANSPARENT));w.setLayout((int)(c.getResources().getDisplayMetrics().widthPixels*.94),(int)(c.getResources().getDisplayMetrics().heightPixels*.82));}main.post(tick);}
  void refresh(){if(closed||loading)return;loading=true;WORKER.execute(()->{JSONArray result=null;JSONObject map=null;String error=null;Map<String,String> names=new HashMap<>(labels);try{result=snapshot(c).optJSONArray("connections");map=currentTypes(c);
    for(int i=0;result!=null&&i<result.length();i++){JSONObject m=result.getJSONObject(i).optJSONObject("metadata");if(m==null)continue;String pkg=m.optString("processPath");if(!names.containsKey(pkg)){String name=pkg;try{String key=pkg.split(" ",2)[0];name=c.getPackageManager().getApplicationLabel(c.getPackageManager().getApplicationInfo(key,0)).toString();}catch(Exception ignored){}names.put(pkg,name);}}
   }catch(Exception e){error=e instanceof ConnectException?"代理未运行或正在重连":e instanceof SocketTimeoutException?"读取连接信息超时，请稍后重试":e.getMessage();}final JSONArray rows=result;final JSONObject t=map;final String err=error;main.post(()->{loading=false;if(closed)return;if(err!=null){data=new JSONArray();list.removeAllViews();status.setText(err);return;}data=ordered(rows);types=t;if(labels.size()>256)labels.clear();labels.putAll(names);render();});});}
  void render(){if(closed)return;list.removeAllViews();String query=search.getText().toString().trim();int selected=filter.getSelectedItemPosition(),matched=0;
   for(int i=0;i<data.length();i++){JSONObject row=data.optJSONObject(i);if(row==null||!matches(row,types,selected,""))continue;JSONObject appMeta=row.optJSONObject("metadata");String appName=appMeta==null?"":labels.get(appMeta.optString("processPath"));if(!query.isEmpty()&&!matches(row,types,0,query)&&(appName==null||!appName.toLowerCase(Locale.ROOT).contains(query.toLowerCase(Locale.ROOT))))continue;matched++;if(matched>150)continue;JSONObject metadata=row.optJSONObject("metadata");if(metadata==null)continue;String host=metadata.optString("host");if(host.isEmpty())host=metadata.optString("destinationIP");String pkg=metadata.optString("processPath","未识别");String rule=row.optString("rule");String name=labels.get(pkg);if(name==null)name=pkg;String title=name+"\n"+host+":"+metadata.optString("destinationPort")+"\n"+kind(row,types)+" · "+("final".equals(rule)?"默认路由":rule)+"\n出口 "+row.optString("chains");
    TextView item=new TextView(c);item.setText(title);item.setTextSize(12);item.setClickable(true);UiComponents.choice(item);item.setOnClickListener(v->details(row));LinearLayout.LayoutParams lp=new LinearLayout.LayoutParams(-1,-2);lp.topMargin=UiComponents.dp(c,8);list.addView(item,lp);
   }
   status.setText("当前连接 "+data.length()+" · 匹配 "+matched+(matched>150?"（显示前150条）":"")+"\n每2秒刷新；短连接可能未被采样");
  }
  void details(JSONObject row){showDetail(c,row,types);}

 }
}

