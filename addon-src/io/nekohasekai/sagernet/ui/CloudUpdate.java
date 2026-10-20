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

import android.app.*;
import android.content.*;
import android.content.pm.*;
import android.net.Uri;
import android.os.*;
import android.provider.Settings;
import android.widget.*;
import androidx.core.content.FileProvider;
import io.nekohasekai.sagernet.database.DataStore;
import java.io.*;
import java.lang.ref.WeakReference;
import java.net.*;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.util.*;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.*;

/** Optional startup update, tied to the existing release publishing service. */
public final class CloudUpdate {
 private static final String BASE="https://jiajiabox.linjiajia.top";
 private static final Handler MAIN=new Handler(Looper.getMainLooper());
 private static WeakReference<Activity> owner=new WeakReference<>(null);
 private static boolean registered,checked,resumed,prompted,downloading,waitingPermission;
 private static Release pending;
 private static File pendingInstall;
 private static String pendingError;
 private static boolean wasPaused;
 private static Dialog shown;
 private static ProgressBar progressBar;
 private static TextView progressText;
 private static final AtomicBoolean cancel=new AtomicBoolean();
 private static class Release {long code,size;String name,notes,sha;URL url;}
 public static void onCreate(Activity activity){
  owner=new WeakReference<>(activity);
  if(!registered){registered=true;activity.getApplication().registerActivityLifecycleCallbacks(new Application.ActivityLifecycleCallbacks(){
   public void onActivityCreated(Activity a,Bundle b){}
   public void onActivityStarted(Activity a){}
   public void onActivityResumed(Activity a){if(isMain(a)){owner=new WeakReference<>(a);resumed=true;MAIN.post(CloudUpdate::deliver);}}
   public void onActivityPaused(Activity a){if(owner.get()==a)resumed=false;}
   public void onActivityStopped(Activity a){}
   public void onActivitySaveInstanceState(Activity a,Bundle b){}
   public void onActivityDestroyed(Activity a){if(owner.get()==a){owner.clear();resumed=false;if(shown!=null){shown.dismiss();shown=null;}progressBar=null;progressText=null;}}
  });}
  if(checked)return;checked=true;
  final Context app=activity.getApplicationContext();
  MAIN.postDelayed(()->new Thread(()->{
   try{Release release=check(app);if(release!=null)MAIN.post(()->{pending=release;deliver();});}
   catch(Exception e){android.util.Log.w("CloudUpdate","Startup check unavailable: "+e.getClass().getSimpleName());}
  },"JiajiaBox-update-check").start(),1800);
 }
 private static boolean isMain(Activity a){return a.getClass().getName().equals("io.nekohasekai.sagernet.ui.MainActivity");}
 private static Activity activity(){Activity a=owner.get();return resumed&&a!=null&&!a.isFinishing()&&!a.isDestroyed()?a:null;}
 private static Proxy route(){DataStore s=DataStore.INSTANCE;return s.getServiceState()!=null&&s.getServiceState().getConnected()?new Proxy(Proxy.Type.SOCKS,new InetSocketAddress("127.0.0.1",s.getMixedPort())):Proxy.NO_PROXY;}
 private static long version(PackageInfo p){return Build.VERSION.SDK_INT>=28?p.getLongVersionCode():p.versionCode;}
 private static Release check(Context app)throws Exception {
  HttpURLConnection c=(HttpURLConnection)new URL(BASE+"/api/releases").openConnection(route());
  try{
   c.setConnectTimeout(12000);c.setReadTimeout(12000);c.setUseCaches(false);c.setInstanceFollowRedirects(false);c.setRequestProperty("User-Agent","JiajiaBox-CloudUpdate/1");c.setRequestProperty("Accept-Encoding","identity");
   if(c.getResponseCode()!=200)throw new IOException("更新服务不可用");
   ByteArrayOutputStream out=new ByteArrayOutputStream();
   try(InputStream in=c.getInputStream()){byte[] b=new byte[4096];int n;while((n=in.read(b))!=-1){if(out.size()+n>1024*1024)throw new IOException("更新信息过大");out.write(b,0,n);}}
   JSONObject json=new JSONObject(new String(out.toByteArray(),StandardCharsets.UTF_8));JSONObject r=json.optJSONObject("active");if(r==null)return null;
   Release release=new Release();release.code=r.getLong("version_code");
   if(!UpdateTransfer.newer(version(app.getPackageManager().getPackageInfo(app.getPackageName(),0)),release.code))return null;
   if(r.optInt("min_sdk",21)>Build.VERSION.SDK_INT)return null;
   JSONArray abis=r.optJSONArray("abis");boolean compatible=abis==null||abis.length()==0;
   if(abis!=null)for(int i=0;i<abis.length();i++)for(String abi:Build.SUPPORTED_ABIS)if(abi.equals(abis.getString(i)))compatible=true;
   if(!compatible)return null;
   release.size=r.getLong("size");release.sha=r.getString("sha256");release.name=r.getString("version_name");release.notes=r.optString("notes","");
   String path=r.getString("download_url");if(!path.matches("/downloads/releases/[a-f0-9]{24}\\.apk"))throw new IOException("更新地址无效");
   if(release.size<=0||release.size>256L*1024*1024||!release.sha.matches("[a-f0-9]{64}"))throw new IOException("更新信息无效");
   release.url=new URL(BASE+path);return release;
  }finally{c.disconnect();}
 }
 private static void deliver(){
  Activity a=activity();if(a==null)return;
  if(downloading){if(shown==null)showProgress(a);return;}
  if(pendingError!=null){String text=pendingError;pendingError=null;message(a,wasPaused?"下载已暂停":"更新下载未完成",text+"\n再次点击继续可重试或续传。",()->start(pending));return;}
  if(pendingInstall!=null){
   if(waitingPermission){waitingPermission=false;if(Build.VERSION.SDK_INT>=26&&!a.getPackageManager().canRequestPackageInstalls()){message(a,"允许安装更新","尚未允许安装此来源的应用。授权后可继续安装，安装包已保留。",()->install(a));return;}}
   install(a);return;
  }
  if(pending==null||prompted)return;prompted=true;Release r=pending;
  try{
   long current=version(a.getPackageManager().getPackageInfo(a.getPackageName(),0));
   String notes=r.notes.isEmpty()?"体验优化与问题修复。":r.notes.substring(0,Math.min(6000,r.notes.length()));
   AlertDialog dialog=new AlertDialog.Builder(a).setTitle("发现新版本").setMessage(r.name+"\n内部版本："+current+" → "+r.code+"\n安装包："+String.format(Locale.CHINA,"%.1f MB",r.size/1048576.0)+"\n\n"+notes).setNegativeButton("稍后",(d,w)->{}).setPositiveButton("立即更新",(d,w)->start(r)).create();style(dialog);
  }catch(Exception e){android.util.Log.w("CloudUpdate","Cannot show update",e);}
 }
 private static void style(AlertDialog dialog){dialog.setCancelable(false);dialog.setCanceledOnTouchOutside(false);shown=dialog;dialog.show();try{DialogTemplates.adoptWindow(dialog.getWindow());}catch(Exception e){android.util.Log.w("CloudUpdate","Cannot apply dialog style",e);} }
 private static void message(Activity a,String title,String text,Runnable retry){
  AlertDialog.Builder b=new AlertDialog.Builder(a).setTitle(title).setMessage(text).setNegativeButton("稍后",(d,w)->{});if(retry!=null)b.setPositiveButton("继续",(d,w)->retry.run());style(b.create());
 }
 private static void start(Release r){
  Activity a=activity();if(a==null||downloading)return;downloading=true;cancel.set(false);
  showProgress(a);
  final Context app=a.getApplicationContext();
  new Thread(()->{
   File file=null;
   try{
    File dir=new File(app.getCacheDir(),"cloud-updates");if(!dir.isDirectory()&&!dir.mkdirs())throw new IOException("无法创建下载目录");
    String key=r.code+"-"+r.sha;File part=new File(dir,key+".part");File apk=new File(dir,key+".apk");
    File[] old=dir.listFiles();if(old!=null)for(File f:old)if(!f.getName().startsWith(key+"."))f.delete();
    final long[] last={0};
    if(!apk.isFile()||!UpdateTransfer.valid(apk,r.sha)){
     UpdateTransfer.download(r.url,route(),part,r.size,r.sha,cancel,(bytes,total)->{long time=SystemClock.elapsedRealtime();if(time-last[0]<200&&bytes!=total)return;last[0]=time;MAIN.post(()->{if(progressBar!=null){progressBar.setProgress((int)(bytes*100/total));progressText.setText(String.format(Locale.CHINA,"%.1f / %.1f MB",bytes/1048576.0,total/1048576.0));}});});
     if(apk.exists())apk.delete();if(!part.renameTo(apk))throw new IOException("无法保存安装包");
    }
    verify(app,apk,r);file=apk;
   }catch(Exception e){final String error=e.getMessage()==null?"网络异常，请稍后重试。":e.getMessage();MAIN.post(()->{finishProgress();pendingError=error;wasPaused=e instanceof UpdateTransfer.Cancelled;deliver();});return;}
   final File ready=file;MAIN.post(()->{finishProgress();pendingInstall=ready;deliver();});
  },"JiajiaBox-update-download").start();
 }
 private static void showProgress(Activity a){
  LinearLayout content=new LinearLayout(a);content.setOrientation(1);int pad=(int)(24*a.getResources().getDisplayMetrics().density);content.setPadding(pad,pad,pad,pad);
  progressText=new TextView(a);progressText.setText("准备下载…");progressText.setTextColor(ThemePalette.text(a));content.addView(progressText);
  progressBar=new ProgressBar(a,null,android.R.attr.progressBarStyleHorizontal);progressBar.setMax(100);content.addView(progressBar,new LinearLayout.LayoutParams(-1,-2));
  AlertDialog dialog=new AlertDialog.Builder(a).setTitle("正在更新 JiajiaBox").setView(content).setNegativeButton("暂停",(d,w)->cancel.set(true)).create();dialog.setCanceledOnTouchOutside(false);dialog.setOnCancelListener(d->cancel.set(true));style(dialog);
 }
 private static void finishProgress(){downloading=false;if(shown!=null){shown.dismiss();shown=null;}progressBar=null;progressText=null;}
 private static void verify(Context app,File file,Release r)throws Exception {
  if(file.length()!=r.size||!UpdateTransfer.valid(file,r.sha)){file.delete();throw new IOException("安装包校验失败");}
  PackageManager pm=app.getPackageManager();PackageInfo archive=pm.getPackageArchiveInfo(file.getAbsolutePath(),PackageManager.GET_SIGNATURES);PackageInfo current=pm.getPackageInfo(app.getPackageName(),PackageManager.GET_SIGNATURES);
  if(archive==null||!app.getPackageName().equals(archive.packageName)||version(archive)!=r.code||!UpdateTransfer.newer(version(current),version(archive))||!signatures(current.signatures).equals(signatures(archive.signatures))){file.delete();throw new IOException("安装包包名、版本或签名不匹配，已取消安装");}
 }
 private static Set<String> signatures(Signature[] values)throws Exception {if(values==null||values.length==0)throw new IOException("缺少签名");Set<String> result=new HashSet<>();for(Signature s:values){byte[] hash=MessageDigest.getInstance("SHA-256").digest(s.toByteArray());result.add(android.util.Base64.encodeToString(hash,android.util.Base64.NO_WRAP));}return result;}
 private static void install(Activity a){
  File apk=pendingInstall;if(apk==null)return;
  try{
   if(Build.VERSION.SDK_INT>=26&&!a.getPackageManager().canRequestPackageInstalls()){waitingPermission=true;a.startActivity(new Intent(Settings.ACTION_MANAGE_UNKNOWN_APP_SOURCES,Uri.parse("package:"+a.getPackageName())));return;}
   Uri uri=FileProvider.getUriForFile(a,a.getPackageName()+".cache",apk);Intent intent=new Intent(Intent.ACTION_VIEW).setDataAndType(uri,"application/vnd.android.package-archive").addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION);a.startActivity(intent);pendingInstall=null;
  }catch(Exception e){pendingInstall=null;message(a,"无法打开安装界面","请稍后重试，或从官网下载安装。",()->{pendingInstall=apk;install(a);});}
 }
 private CloudUpdate(){}
}

