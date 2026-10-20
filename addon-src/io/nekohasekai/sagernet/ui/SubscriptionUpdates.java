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
import android.os.*;
import android.widget.Toast;
import java.util.*;
public final class SubscriptionUpdates {
 static Context app()throws Exception{return (Context)Class.forName("io.nekohasekai.sagernet.ktx.UtilsKt").getMethod("getApp").invoke(null);}
 static final Map<Long,Map<Long,String>> before=new java.util.concurrent.ConcurrentHashMap<>();
 static Object call(Object o,String name,Class<?>[] types,Object... args)throws Exception{return o.getClass().getMethod(name,types).invoke(o,args);}
 static Object dao(String name)throws Exception{Object cp=Class.forName("io.nekohasekai.sagernet.database.SagerDatabase").getField("Companion").get(null);return call(cp,name,new Class<?>[0]);}
 static String identity(Object node){try{String link=(String)call(node,"toStdLink",new Class<?>[]{boolean.class},false);if(link==null||link.isEmpty())return null;int hash=link.indexOf('#');return hash<0?link:link.substring(0,hash);}catch(Exception e){return null;}}
 public static void begin(Object group){try{long id=((Number)call(group,"getId",new Class<?>[0])).longValue();Map<Long,String> old=new HashMap<>();for(Object node:(List<?>)call(dao("getProxyDao"),"getByGroup",new Class<?>[]{long.class},id)){String key=identity(node);if(key!=null)old.put(((Number)call(node,"getId",new Class<?>[0])).longValue(),key);}if(before.size()>64)before.clear();before.put(id,old);}catch(Exception e){android.util.Log.e("SubscriptionUpdates","Cannot snapshot node references",e);}}
 static void append(Map<String,List<Long>> map,String key,long id){List<Long> values=map.get(key);if(values==null){values=new ArrayList<>();map.put(key,values);}values.add(id);}
 static void preserve(Context c,long groupId,List<?> rules,Object rulesDao)throws Exception{
  Map<Long,String> old=before.remove(groupId);if(old==null)return;Object proxies=dao("getProxyDao");Map<String,List<Long>> oldKeys=new HashMap<>(),newKeys=new HashMap<>();
  for(Map.Entry<Long,String> e:old.entrySet())append(oldKeys,e.getValue(),e.getKey());
  for(Object node:(List<?>)call(proxies,"getByGroup",new Class<?>[]{long.class},groupId)){String key=identity(node);if(key!=null)append(newKeys,key,((Number)call(node,"getId",new Class<?>[0])).longValue());}
  android.content.SharedPreferences pins=c.getSharedPreferences("node-pins",0);android.content.SharedPreferences.Editor edit=pins.edit();
  for(Map.Entry<Long,String> e:old.entrySet()){
   long previous=e.getKey();List<Long> next=newKeys.get(e.getValue());
   if(next==null||next.size()!=1||oldKeys.get(e.getValue()).size()!=1||call(proxies,"getById",new Class<?>[]{long.class},previous)!=null)continue;
   long replacement=next.get(0);if(pins.getBoolean("node-"+previous,false))edit.putBoolean("node-"+replacement,true).remove("node-"+previous);
   for(Object rule:rules)if(RoutingFallback.internal((String)call(rule,"getName",new Class<?>[0]))&&((Number)call(rule,"getOutbound",new Class<?>[0])).longValue()==previous){call(rule,"setOutbound",new Class<?>[]{long.class},replacement);call(rulesDao,"updateRule",new Class<?>[]{rule.getClass()},rule);}
  }
  edit.apply();
 }
 public static String summary(Context c,long id){return c.getSharedPreferences("subscription-summary",0).getString("group-"+id,"");}
 public static String counts(int added,int updated,int deleted){return "新增 "+added+" · 修改 "+updated+" · 删除 "+deleted;}
 public static void success(Object group,List<?> added,Map<?,?> updated,List<?> deleted,boolean byUser){
  try{
   Context c=app();long id=((Number)group.getClass().getMethod("getId").invoke(group)).longValue();String result=counts(added.size(),updated.size(),deleted.size());
   // Existing updater retains IDs for matching nodes, preserving pin and routing references.
   Object companion=Class.forName("io.nekohasekai.sagernet.database.SagerDatabase").getField("Companion").get(null);
   Object dao=companion.getClass().getMethod("getRulesDao").invoke(companion);List<?> rules=(List<?>)dao.getClass().getMethod("allRules").invoke(dao);
   preserve(c,id,rules,dao);
   int before=active(rules);RoutingFallback.sanitize(rules);int disabled=before-active(rules);
   if(disabled>0)result+=" · 已关闭失效分流 "+disabled+" 项";
   c.getSharedPreferences("subscription-summary",0).edit().putString("group-"+id,result).putLong("time-"+id,System.currentTimeMillis()).apply();
   final String message="订阅更新完成："+result;
   if(byUser)new Handler(Looper.getMainLooper()).post(()->Toast.makeText(c,message,Toast.LENGTH_LONG).show());
  }catch(Exception e){android.util.Log.e("SubscriptionUpdates","Cannot record subscription update summary",e);}
 }
 static int active(List<?> rules)throws Exception{int n=0;for(Object r:rules)if(RoutingFallback.internal((String)r.getClass().getMethod("getName").invoke(r))&&(Boolean)r.getClass().getMethod("getEnabled").invoke(r))n++;return n;}
}

