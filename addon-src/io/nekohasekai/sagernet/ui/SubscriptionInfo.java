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
import java.util.*;
/** Server quota metadata, independent from the device's local traffic counter. */
public final class SubscriptionInfo {
 public static String formatBytes(long bytes){
  if(bytes<0)return "—";String[] units={"B","KiB","MiB","GiB","TiB","PiB","EiB"};
  double value=bytes;int unit=0;while(value>=1024&&unit<units.length-1){value/=1024;unit++;}
  java.text.DecimalFormat decimal=new java.text.DecimalFormat(unit==0?"0":"0.##",java.text.DecimalFormatSymbols.getInstance(Locale.ROOT));return decimal.format(value)+" "+units[unit];
 }
 public long used=-1,total=-1,remaining=-1,expiry=-1;
 public static long number(Object bean,String field){try{Object n=bean.getClass().getField(field).get(bean);return n instanceof Number?((Number)n).longValue():-1;}catch(Exception e){return -1;}}
 public static long add(long a,long b){return a<0||b<0?-1:a>Long.MAX_VALUE-b?Long.MAX_VALUE:a+b;}
 public static SubscriptionInfo parse(String header,long used,long remaining,long expiry){
  SubscriptionInfo v=new SubscriptionInfo();v.used=used;v.remaining=remaining;v.total=add(used,remaining);v.expiry=expiry;
  Map<String,Long> values=new HashMap<>();
  if(header!=null)for(String entry:header.split(";")){String[] p=entry.trim().split("=",2);if(p.length==2)try{long n=Long.parseLong(p[1].trim());if(n>=0)values.put(p[0].trim().toLowerCase(Locale.ROOT),n);}catch(NumberFormatException ignored){}}
  if(values.containsKey("upload")&&values.containsKey("download"))v.used=add(values.get("upload"),values.get("download"));
  if(values.containsKey("total")){v.total=values.get("total");v.remaining=v.total>0&&v.used>=0?Math.max(0,v.total-v.used):-1;}
  if(values.containsKey("expire"))v.expiry=values.get("expire");
  if(v.total<=0)v.remaining=-1;
  return v;
 }
 public static SubscriptionInfo from(Object bean){String h=null;try{h=(String)bean.getClass().getField("subscriptionUserinfo").get(bean);}catch(Exception ignored){}return parse(h,number(bean,"bytesUsed"),number(bean,"bytesRemaining"),number(bean,"expiryDate"));}
 public double trafficRatio(){return total>0&&remaining>=0?Math.max(0,Math.min(1,(double)remaining/total)):-1;}
 public double timeRatio(long now){return expiry>0?Math.max(0,Math.min(1,(double)(expiry-now)/(30*86400))):-1;}
}

