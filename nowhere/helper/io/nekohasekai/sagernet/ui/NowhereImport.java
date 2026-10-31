package io.nekohasekai.sagernet.ui;

import java.net.URI;
import java.net.URLDecoder;
import java.util.ArrayList;
import org.json.JSONObject;

/** Converts a Nowhere v3 share URL into the app's existing custom outbound bean. */
public final class NowhereImport {
 public static boolean add(String link, ArrayList<Object> output) {
  if (!link.startsWith("nowhere://") && !link.startsWith("newhere://")) return false;
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
   Class<?> clazz = Class.forName("moe.matsuri.nb4a.proxy.config.ConfigBean");
   Object bean = clazz.getConstructor().newInstance();
   clazz.getMethod("initializeDefaultValues").invoke(bean);
   clazz.getField("type").set(bean, Integer.valueOf(1));
   clazz.getField("config").set(bean, config.toString());
   String name = uri.getRawFragment();
   clazz.getField("name").set(bean, name == null ? host : URLDecoder.decode(name.replace("+", "%2B"), "UTF-8"));
   output.add(bean);
   return true;
  } catch (Exception e) { return false; }
 }
}
