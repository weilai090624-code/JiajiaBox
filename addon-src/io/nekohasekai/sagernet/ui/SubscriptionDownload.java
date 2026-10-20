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

import io.nekohasekai.sagernet.database.DataStore;
import io.nekohasekai.sagernet.database.SubscriptionBean;
import libcore.HTTPRequest;
import libcore.HTTPResponse;
import libcore.StringBox;
import java.io.*;
import java.net.*;
import java.nio.charset.StandardCharsets;
import java.security.GeneralSecurityException;
import java.security.cert.X509Certificate;
import java.util.*;
import java.util.zip.GZIPInputStream;
import javax.net.ssl.*;

/** Subscription-only system download path; parsing remains in RawUpdater. */
public final class SubscriptionDownload {
 private static final String DEFAULT_UA="NekoBox/Android/0.0.2 (Prefer ClashMeta Format)";
 private static final int MAX_BYTES=64*1024*1024;
 private SubscriptionDownload(){}
 public static HTTPResponse execute(HTTPRequest original,SubscriptionBean subscription)throws Exception {
  DataStore store=DataStore.INSTANCE;
  boolean connected=store.getServiceState()!=null&&store.getServiceState().getConnected();
  Proxy route=connected?new Proxy(Proxy.Type.SOCKS,new InetSocketAddress("127.0.0.1",store.getMixedPort())):Proxy.NO_PROXY;
  try{return fetch(subscription,store.getAllowInsecureOnRequest(),"1.3".equals(store.getAppTLSVersion()),route);}
  catch(Exception error){throw new IOException((connected?"代理更新订阅失败：":"直连更新订阅失败：")+describe(error),error);}
 }
 private static String describe(Exception error){
  if(error instanceof UnknownHostException)return "域名解析失败";
  if(error instanceof SocketTimeoutException)return "网络连接或读取超时";
  if(error instanceof SSLException)return "TLS 或证书验证失败";
  String message=error.getMessage();return message==null?error.getClass().getSimpleName():message;
 }
 static HTTPResponse direct(SubscriptionBean subscription,boolean insecure,boolean tls13)throws Exception {
  return fetch(subscription,insecure,tls13,Proxy.NO_PROXY);
 }
 private static HTTPResponse fetch(SubscriptionBean subscription,boolean insecure,boolean tls13,Proxy route)throws Exception {
  URL url=new URL(subscription.link);
  String ua=subscription.customUserAgent;
  if(ua==null||ua.trim().isEmpty())ua=DEFAULT_UA;
  SSLSocketFactory sockets=new Protocols(socketFactory(insecure),tls13);
  String auth=basicAuth(url);
  long deadline=System.nanoTime()+30_000_000_000L;
  for(int redirects=0;redirects<=10;redirects++){
   if(!"http".equalsIgnoreCase(url.getProtocol())&&!"https".equalsIgnoreCase(url.getProtocol()))throw new IOException("订阅地址必须是 HTTP 或 HTTPS");
   HttpURLConnection connection=(HttpURLConnection)url.openConnection(route);
   try{
    connection.setConnectTimeout(Math.min(10000,remaining(deadline)));connection.setReadTimeout(Math.min(15000,remaining(deadline)));
    connection.setUseCaches(false);connection.setInstanceFollowRedirects(false);connection.setRequestMethod("GET");
    connection.setRequestProperty("User-Agent",ua);connection.setRequestProperty("Accept-Encoding","gzip");
    if(auth!=null)connection.setRequestProperty("Authorization",auth);
    if(connection instanceof HttpsURLConnection){HttpsURLConnection https=(HttpsURLConnection)connection;https.setSSLSocketFactory(sockets);if(insecure)https.setHostnameVerifier((host,session)->true);}
    int status=connection.getResponseCode();
    if(status==301||status==302||status==303||status==307||status==308){
     String location=connection.getHeaderField("Location");
     if(location==null||location.isEmpty())throw new IOException("HTTP "+status+"：重定向缺少地址");
     if(redirects==10)throw new IOException("订阅重定向次数过多");
     URL next=new URL(url,location);
     if(!sameOrigin(url,next))auth=null;
     url=next;continue;
    }
    if(status!=200)throw new IOException("HTTP "+status);
    Map<String,String> headers=new TreeMap<>(String.CASE_INSENSITIVE_ORDER);
    for(Map.Entry<String,List<String>> entry:connection.getHeaderFields().entrySet())if(entry.getKey()!=null&&entry.getValue()!=null&&!entry.getValue().isEmpty())headers.put(entry.getKey(),entry.getValue().get(0));
    try(InputStream raw=connection.getInputStream();InputStream input="gzip".equalsIgnoreCase(connection.getContentEncoding())?new GZIPInputStream(raw):raw;ByteArrayOutputStream bytes=new ByteArrayOutputStream()){
     byte[] buffer=new byte[16384];int count;
     while(true){connection.setReadTimeout(Math.min(15000,remaining(deadline)));count=input.read(buffer);if(count<0)break;if(count>MAX_BYTES-bytes.size())throw new IOException("订阅内容超过 64 MiB");bytes.write(buffer,0,count);}
     return new Response(bytes.toByteArray(),headers);
    }
   }finally{connection.disconnect();}
  }
  throw new IOException("订阅重定向次数过多");
 }
 private static int remaining(long deadline)throws SocketTimeoutException {
  long nanos=deadline-System.nanoTime();if(nanos<=0||Thread.currentThread().isInterrupted())throw new SocketTimeoutException("订阅下载超时或已中断");return (int)Math.max(1,nanos/1_000_000L);
 }
 private static boolean sameOrigin(URL first,URL second){return first.getProtocol().equalsIgnoreCase(second.getProtocol())&&first.getHost().equalsIgnoreCase(second.getHost())&&port(first)==port(second);}
 private static int port(URL url){return url.getPort()<0?url.getDefaultPort():url.getPort();}
 private static String basicAuth(URL url)throws Exception {
  if(url.getUserInfo()==null)return null;
  String credentials=URLDecoder.decode(url.getUserInfo().replace("+","%2B"),"UTF-8");
  return "Basic "+android.util.Base64.encodeToString(credentials.getBytes(StandardCharsets.UTF_8),android.util.Base64.NO_WRAP);
 }
 private static SSLSocketFactory socketFactory(boolean insecure)throws GeneralSecurityException {
  if(!insecure)return HttpsURLConnection.getDefaultSSLSocketFactory();
  SSLContext context=SSLContext.getInstance("TLS");
  context.init(null,new TrustManager[]{new X509TrustManager(){public X509Certificate[] getAcceptedIssuers(){return new X509Certificate[0];}public void checkClientTrusted(X509Certificate[] chain,String auth){}public void checkServerTrusted(X509Certificate[] chain,String auth){}}},null);
  return context.getSocketFactory();
 }
 private static final class Protocols extends SSLSocketFactory {
  private final SSLSocketFactory delegate;private final boolean tls13;
  Protocols(SSLSocketFactory delegate,boolean tls13){this.delegate=delegate;this.tls13=tls13;}
  private Socket configure(Socket socket)throws IOException {
   if(socket instanceof SSLSocket){SSLSocket tls=(SSLSocket)socket;List<String> protocols=new ArrayList<>();for(String protocol:tls.getSupportedProtocols())if("TLSv1.3".equals(protocol)||(!tls13&&"TLSv1.2".equals(protocol)))protocols.add(protocol);if(protocols.isEmpty()){socket.close();throw new SSLException("当前系统不支持所选 TLS 版本");}tls.setEnabledProtocols(protocols.toArray(new String[0]));}return socket;
  }
  public String[] getDefaultCipherSuites(){return delegate.getDefaultCipherSuites();}
  public String[] getSupportedCipherSuites(){return delegate.getSupportedCipherSuites();}
  public Socket createSocket()throws IOException{return configure(delegate.createSocket());}
  public Socket createSocket(Socket s,String h,int p,boolean close)throws IOException{return configure(delegate.createSocket(s,h,p,close));}
  public Socket createSocket(String h,int p)throws IOException{return configure(delegate.createSocket(h,p));}
  public Socket createSocket(String h,int p,InetAddress local,int lp)throws IOException{return configure(delegate.createSocket(h,p,local,lp));}
  public Socket createSocket(InetAddress h,int p)throws IOException{return configure(delegate.createSocket(h,p));}
  public Socket createSocket(InetAddress h,int p,InetAddress local,int lp)throws IOException{return configure(delegate.createSocket(h,p,local,lp));}
 }
 private static final class Response implements HTTPResponse {
  private final byte[] content;private final Map<String,String> headers;
  Response(byte[] content,Map<String,String> headers){this.content=content;this.headers=headers;}
  private static StringBox box(String value){StringBox box=new StringBox();box.setValue(value==null?"":value);return box;}
  public byte[] getContent(){return content;}
  public StringBox getContentString(){return box(new String(content,StandardCharsets.UTF_8));}
  public StringBox getHeader(String key){return box(headers.get(key));}
  public void writeTo(String path)throws IOException{try(OutputStream output=new FileOutputStream(path)){output.write(content);}}
 }
}

