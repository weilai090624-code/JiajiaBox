package io.nekohasekai.sagernet.ui;

import java.net.URI;
import java.net.URLDecoder;
import java.util.ArrayList;
import org.json.JSONObject;

/** Converts Nowhere v3 and Trojan-Go share URLs into the app's custom outbound bean. */
public final class NowhereImport {
 public static boolean add(String link, ArrayList<Object> output) {
  if (link.startsWith("trojan-go://")) return addTrojanGo(link, output);
  if (link.startsWith("mieru://")) return addMieru(link, output);
  if (!link.startsWith("nowhere://") && !link.startsWith("newhere://")) return false;
  return addNowhere(link, output);
 }

 private static boolean addNowhere(String link, ArrayList<Object> output) {
  try {
   URI uri = new URI(link);
   String host = uri.getHost();
   String key = uri.getRawUserInfo();
   int port = uri.getPort();
   if (host == null || port < 1 || port > 65535 || key == null || !key.matches("[0-9a-f]{32}")) return false;
   String net = "tcp";
   boolean morph = true;
   boolean seenNet = false, seenMorph = false;
   String query = uri.getRawQuery();
   if (query != null) for (String entry : query.split("&")) {
    String[] pair = entry.split("=", 2);
    String name = URLDecoder.decode(pair[0], "UTF-8");
    String value = URLDecoder.decode(pair.length == 2 ? pair[1] : "", "UTF-8");
    if (name.equals("net") && !seenNet) { seenNet = true; if (!value.equals("tcp") && !value.equals("udp")) return false; net = value; }
    if (name.equals("morph") && !seenMorph) { seenMorph = true; if (!value.equals("0") && !value.equals("1")) return false; morph = value.equals("1"); }
   }
   JSONObject config = new JSONObject();
   config.put("type", "nowhere"); config.put("server", host); config.put("server_port", port);
   config.put("password", key); config.put("net", net); config.put("morph", morph);
   JSONObject tls = new JSONObject(); tls.put("enabled", true); tls.put("server_name", host); config.put("tls", tls);
   return addBean(config.toString(), uri, host, output);
  } catch (Exception e) { return false; }
 }

 private static boolean addMieru(String link, ArrayList<Object> output) {
  try {
   URI uri = new URI(link);
   String host = uri.getHost();
   int port = uri.getPort();
   String userInfo = uri.getRawUserInfo();
   if (host == null || port < 1 || port > 65535 || userInfo == null || userInfo.isEmpty()) return false;
   String username = userInfo;
   String password = "";
   int colon = userInfo.indexOf(':');
   if (colon >= 0) { username = userInfo.substring(0, colon); password = userInfo.substring(colon + 1); }
   username = URLDecoder.decode(username, "UTF-8");
   password = URLDecoder.decode(password, "UTF-8");
   String protocol = "TCP";
   String mtu = "1400";
   String multiplexing = "";
   String handshake = "";
   String query = uri.getRawQuery();
   if (query != null) for (String entry : query.split("&")) {
    String[] pair = entry.split("=", 2);
    String name = URLDecoder.decode(pair[0], "UTF-8");
    String value = URLDecoder.decode(pair.length == 2 ? pair[1] : "", "UTF-8");
    if (name.equals("protocol") && !value.isEmpty()) protocol = value;
    else if (name.equals("mtu") && !value.isEmpty()) mtu = value;
    else if (name.equals("multiplexing")) multiplexing = value;
    else if (name.equals("handshake") || name.equals("handshake_mode")) handshake = value;
    else if (name.equals("password")) password = value;
   }
   if (password.isEmpty()) return false;
   JSONObject config = new JSONObject();
   config.put("type", "mieru"); config.put("server", host); config.put("server_port", port);
   config.put("username", username); config.put("password", password);
   config.put("protocol", protocol); config.put("mtu", Integer.parseInt(mtu));
   if (!multiplexing.isEmpty()) config.put("multiplexing", multiplexing);
   if (!handshake.isEmpty()) config.put("handshake_mode", handshake);
   return addBean(config.toString(), uri, host, output);
  } catch (Exception e) { return false; }
 }

 private static boolean addTrojanGo(String link, ArrayList<Object> output) {
  try {
   URI uri = new URI(link);
   String host = uri.getHost();
   String password = uri.getRawUserInfo();
   int port = uri.getPort();
   if (host == null || port < 1 || port > 65535 || password == null || password.isEmpty()) return false;
   password = URLDecoder.decode(password, "UTF-8");
   String type = "tcp";
   String sni = "";
   String wsHost = "";
   String path = "";
   String serviceName = "";
   boolean allowInsecure = false;
   String query = uri.getRawQuery();
   if (query != null) for (String entry : query.split("&")) {
    String[] pair = entry.split("=", 2);
    String name = URLDecoder.decode(pair[0], "UTF-8");
    String value = URLDecoder.decode(pair.length == 2 ? pair[1] : "", "UTF-8");
    if (name.equals("type") && !value.isEmpty()) type = value;
    else if (name.equals("sni") || name.equals("peer")) sni = value;
    else if (name.equals("host")) wsHost = value;
    else if (name.equals("path")) path = value;
    else if (name.equals("serviceName")) serviceName = value;
    else if (name.equals("allowInsecure")) allowInsecure = value.equals("1") || value.equalsIgnoreCase("true");
   }
   if (sni.isEmpty()) sni = host;
   JSONObject config = new JSONObject();
   config.put("type", "trojan"); config.put("server", host); config.put("server_port", port); config.put("password", password);
   JSONObject tls = new JSONObject();
   tls.put("enabled", true); tls.put("server_name", sni);
   if (allowInsecure) tls.put("insecure", true);
   config.put("tls", tls);
   if (type.equals("ws")) {
    JSONObject transport = new JSONObject(); transport.put("type", "ws");
    if (!path.isEmpty()) transport.put("path", path);
    if (!wsHost.isEmpty()) { JSONObject headers = new JSONObject(); headers.put("Host", wsHost); transport.put("headers", headers); }
    config.put("transport", transport);
   } else if (type.equals("grpc")) {
    JSONObject transport = new JSONObject(); transport.put("type", "grpc");
    transport.put("service_name", serviceName.isEmpty() ? (path.isEmpty() ? "MService" : path) : serviceName);
    config.put("transport", transport);
   }
   return addBean(config.toString(), uri, host, output);
  } catch (Exception e) { return false; }
 }

 private static boolean addBean(String config, URI uri, String fallbackName, ArrayList<Object> output) throws Exception {
  Class<?> clazz = Class.forName("moe.matsuri.nb4a.proxy.config.ConfigBean");
  Object bean = clazz.getConstructor().newInstance();
  clazz.getMethod("initializeDefaultValues").invoke(bean);
  clazz.getField("type").set(bean, Integer.valueOf(1));
  clazz.getField("config").set(bean, config);
  String name = uri.getRawFragment();
  clazz.getField("name").set(bean, name == null ? fallbackName : URLDecoder.decode(name.replace("+", "%2B"), "UTF-8"));
  output.add(bean);
  return true;
 }
}
