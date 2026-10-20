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
import java.io.*;
import java.net.*;
import java.security.*;
import java.util.concurrent.atomic.AtomicBoolean;

/** Streaming transfer; version-specific partial files may be resumed safely after verification. */
public final class UpdateTransfer {
 public interface Progress { void update(long bytes,long total); }
 public static final class Cancelled extends IOException { Cancelled(){super("下载已暂停");} }
 public static void download(URL url,Proxy proxy,File part,long expected,String sha,AtomicBoolean cancel,Progress progress)throws Exception {
  if(expected<=0||expected>256L*1024*1024||!sha.matches("[a-f0-9]{64}"))throw new IOException("更新信息无效");
  if(part.length()>expected&&!part.delete())throw new IOException("无法清理旧下载");
  if(part.length()==expected){if(valid(part,sha))return;part.delete();}
  long offset=part.length();HttpURLConnection c=(HttpURLConnection)url.openConnection(proxy);
  try{
   c.setInstanceFollowRedirects(false);c.setConnectTimeout(15000);c.setReadTimeout(20000);c.setUseCaches(false);
   c.setRequestProperty("Accept-Encoding","identity");c.setRequestProperty("User-Agent","JiajiaBox-CloudUpdate/1");
   if(offset>0)c.setRequestProperty("Range","bytes="+offset+"-");
   int status=c.getResponseCode();
   if(status==200)offset=0;
   else if(status==206){
    String range=c.getHeaderField("Content-Range");
    if(offset==0||!("bytes "+offset+"-"+(expected-1)+"/"+expected).equals(range))throw new IOException("服务器返回了错误的续传范围");
   }else throw new IOException("下载服务 HTTP "+status);
   String rawLength=c.getHeaderField("Content-Length");long length=rawLength==null?-1:Long.parseLong(rawLength);if(length>=0&&length!=expected-offset)throw new IOException("安装包长度不匹配");
   long received=offset;progress.update(received,expected);
   try(InputStream input=c.getInputStream();OutputStream output=new FileOutputStream(part,offset>0)){
    byte[] buffer=new byte[65536];int n;
    while(true){if(cancel.get())throw new Cancelled();n=input.read(buffer);if(n<0)break;if(n>expected-received)throw new IOException("安装包长度超出预期");output.write(buffer,0,n);received+=n;progress.update(received,expected);}
   }
   if(received!=expected)throw new IOException("下载中断，可重试续传");
   if(!valid(part,sha)){part.delete();throw new IOException("安装包校验失败，请重新下载");}
  }finally{c.disconnect();}
 }
 public static boolean valid(File file,String sha)throws Exception {
  MessageDigest hash=MessageDigest.getInstance("SHA-256");
  try(InputStream in=new FileInputStream(file)){byte[] b=new byte[65536];int n;while((n=in.read(b))!=-1)hash.update(b,0,n);}
  StringBuilder result=new StringBuilder();for(byte b:hash.digest())result.append(String.format(java.util.Locale.ROOT,"%02x",b&255));return result.toString().equals(sha);
 }
 public static boolean newer(long installed,long available){return available>installed;}
 private UpdateTransfer(){}
}

