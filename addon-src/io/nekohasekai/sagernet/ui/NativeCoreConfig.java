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

import org.json.JSONArray;
import org.json.JSONObject;
import java.io.*;
import java.net.URI;
import java.security.MessageDigest;
import java.util.*;

/** Writes the current sing-box format into the already parsed generated config. */
public final class NativeCoreConfig {
    static File ruleCacheDirectory;
    private static JSONArray array(Object v) throws Exception {
        if(v instanceof JSONArray)return (JSONArray)v;
        JSONArray a=new JSONArray();if(v!=null&&v!=JSONObject.NULL)a.put(v);return a;
    }
    private static void move(JSONObject o,String from,String to)throws Exception {if(o.has(from))o.put(to,o.remove(from));}
    private static void append(JSONArray dst,JSONArray src)throws Exception {for(int i=0;i<src.length();i++)dst.put(src.get(i));}
    private static String code(String name) {
        if("success".equals(name))return "NOERROR";if("format_error".equals(name))return "FORMERR";
        if("server_failure".equals(name))return "SERVFAIL";if("name_error".equals(name))return "NXDOMAIN";
        if("not_implemented".equals(name))return "NOTIMP";if("refused".equals(name))return "REFUSED";
        throw new IllegalArgumentException("Unknown DNS rcode: "+name);
    }
    private static void rewriteDns(JSONArray rules,Map<String,String> codes,Map<String,String> strategies)throws Exception {
        if(rules==null)return;
        for(int i=0;i<rules.length();i++){
            JSONObject r=rules.getJSONObject(i);rewriteDns(r.optJSONArray("rules"),codes,strategies);
            String tag=r.optString("server");
            if(codes.containsKey(tag)){r.remove("server");r.put("action","predefined").put("rcode",codes.get(tag));}
            if(strategies.containsKey(tag)&&!r.has("strategy"))r.put("strategy",strategies.get(tag));
            // Predefined replies never query an upstream or enter its response cache.
            // Legacy rcode transports carried route-only options that 1.14 rejects.
            if("predefined".equals(r.optString("action")))
                for(String key:new String[]{"server","strategy","disable_cache","disable_optimistic_cache","rewrite_ttl","client_subnet","remove_client_subnet","timeout","speculative"})r.remove(key);
        }
    }
    private static JSONArray modernDnsRules(JSONArray rules)throws Exception {
        JSONArray result=new JSONArray();if(rules==null)return result;
        for(int i=0;i<rules.length();i++){
            JSONObject r=rules.getJSONObject(i);String strategy=r.optString("strategy");r.remove("strategy");
            if("ipv4_only".equals(strategy)||"ipv6_only".equals(strategy)){
                JSONObject match=new JSONObject();Iterator<String> keys=r.keys();
                while(keys.hasNext()){String key=keys.next();if(!Arrays.asList("server","action","disable_cache","rewrite_ttl","client_subnet").contains(key))match.put(key,r.get(key));}
                JSONObject family=new JSONObject().put("query_type",new JSONArray().put("ipv4_only".equals(strategy)?"AAAA":"A"));
                JSONObject reject=match.length()==0?family:new JSONObject().put("type","logical").put("mode","and").put("rules",new JSONArray().put(match).put(family));
                result.put(reject.put("action","predefined").put("rcode","NOERROR"));
            }
            result.put(r);
        }
        return result;
    }
    private static void rewriteRoutes(JSONArray rules,Set<String> dns)throws Exception {
        if(rules==null)return;
        for(int i=0;i<rules.length();i++){JSONObject r=rules.getJSONObject(i);rewriteRoutes(r.optJSONArray("rules"),dns);if(dns.contains(r.optString("outbound"))){r.remove("outbound");r.put("action","hijack-dns");}}
    }
    private static String legacyDnsOutbound(JSONObject root,JSONObject route)throws Exception {
        String tag=route.optString("final");if(!tag.isEmpty())return tag;
        JSONArray outbounds=root.optJSONArray("outbounds");if(outbounds==null||outbounds.length()==0)return "";
        JSONObject first=outbounds.getJSONObject(0);tag=first.optString("tag");if(!tag.isEmpty())return tag;
        Set<String> used=new HashSet<>();for(int i=0;i<outbounds.length();i++)used.add(outbounds.getJSONObject(i).optString("tag"));
        tag="jiajia-dns-default";for(int i=1;used.contains(tag);i++)tag="jiajia-dns-default-"+i;
        first.put("tag",tag);return tag;
    }
    public static void applyRoot(JSONObject root)throws Exception {
        JSONObject route=root.optJSONObject("route");if(route==null){route=new JSONObject();root.put("route",route);}
        JSONObject dns=root.optJSONObject("dns");Map<String,String> strategies=new HashMap<>(),codes=new HashMap<>();
        if(dns!=null){
            JSONObject fake=dns.optJSONObject("fakeip");dns.remove("fakeip");JSONArray servers=dns.optJSONArray("servers"),modern=new JSONArray();
            if(servers!=null)for(int i=0;i<servers.length();i++){
                JSONObject s=servers.getJSONObject(i);if(!s.optString("type").isEmpty()){modern.put(s);continue;}
                String address=s.getString("address"),tag=s.optString("tag");
                if(address.startsWith("rcode://")){codes.put(tag,code(address.substring(8)));continue;}
                // Legacy network DNS uses the default outbound; typed 1.14 DNS defaults to direct.
                if(!"fakeip".equals(address)&&!"local".equals(address)&&!address.startsWith("dhcp://")&&s.optString("detour").isEmpty()){
                    String outbound=legacyDnsOutbound(root,route);if(!outbound.isEmpty())s.put("detour",outbound);
                }
                if(s.has("strategy"))strategies.put(tag,s.getString("strategy"));s.remove("strategy");s.remove("address");
                if(!s.optString("address_resolver").isEmpty()){JSONObject resolver=new JSONObject().put("server",s.get("address_resolver"));if(s.has("address_strategy"))resolver.put("strategy",s.get("address_strategy"));s.put("domain_resolver",resolver);}
                s.remove("address_resolver");s.remove("address_strategy");move(s,"address_fallback_delay","fallback_delay");
                if("local".equals(address))s.put("type","local");
                else if("fakeip".equals(address)){s.put("type","fakeip");if(fake!=null)for(String key:new String[]{"inet4_range","inet6_range"})if(fake.has(key))s.put(key,fake.get(key));}
                else {
                    String raw=address;if(!raw.contains("://")){if(!raw.startsWith("[")&&raw.indexOf(':')!=raw.lastIndexOf(':'))raw="["+raw+"]";raw="udp://"+raw;}
                    URI uri=new URI(raw);String type=uri.getScheme(),host=uri.getHost();
                    if(host==null)throw new IllegalArgumentException("Invalid DNS address: "+address);
                    if(host.startsWith("[")&&host.endsWith("]"))host=host.substring(1,host.length()-1);
                    s.put("type",type);if("dhcp".equals(type)){if(!"auto".equals(host))s.put("interface",host);}
                    else{s.put("server",host);if(uri.getPort()!=-1)s.put("server_port",uri.getPort());}
                    if(("https".equals(type)||"h3".equals(type))&&uri.getRawPath()!=null&&!uri.getRawPath().isEmpty())s.put("path",uri.getRawPath()+(uri.getRawQuery()==null?"":"?"+uri.getRawQuery()));
                }
                modern.put(s);
            }
            dns.put("servers",modern);rewriteDns(dns.optJSONArray("rules"),codes,strategies);
            String last=dns.optString("final");if(last.isEmpty()&&modern.length()>0)last=modern.getJSONObject(0).optString("tag");
            JSONArray rules=dns.optJSONArray("rules");if(rules==null)rules=new JSONArray();
            if(strategies.containsKey(last)){rules.put(new JSONObject().put("action","route").put("server",last).put("strategy",strategies.get(last)));if(!dns.has("strategy"))dns.put("strategy",strategies.get(last));}
            dns.put("rules",modernDnsRules(rules));
        }
        JSONArray prefix=new JSONArray(),inbounds=root.optJSONArray("inbounds");
        if(inbounds!=null)for(int i=0;i<inbounds.length();i++){
            JSONObject in=inbounds.getJSONObject(i);String tag=in.optString("tag");if(tag.isEmpty()){tag="jiajia-in-"+i;in.put("tag",tag);}JSONArray match=new JSONArray().put(tag);
            if("tun".equals(in.optString("type"))){
                for(String[] pair:new String[][]{{"address","inet4_address","inet6_address"},{"route_address","inet4_route_address","inet6_route_address"},{"route_exclude_address","inet4_route_exclude_address","inet6_route_exclude_address"}}){
                    for(int j=1;j<3;j++)if(in.has(pair[j])){JSONArray values=array(in.opt(pair[0]));append(values,array(in.remove(pair[j])));in.put(pair[0],values);}
                }
                if(in.optBoolean("endpoint_independent_nat"))in.put("udp_mapping","endpoint_independent");in.remove("endpoint_independent_nat");in.remove("gso");
            }
            if(in.optBoolean("sniff")){JSONObject rule=new JSONObject().put("inbound",match).put("action","sniff");if(in.has("sniff_timeout"))rule.put("timeout",in.get("sniff_timeout"));prefix.put(rule);}
            String strategy=in.optString("domain_strategy");if(!strategy.isEmpty()&&!"as_is".equals(strategy))prefix.put(new JSONObject().put("inbound",match).put("action","resolve").put("strategy",strategy));
            if(in.optBoolean("udp_disable_domain_unmapping"))prefix.put(new JSONObject().put("inbound",match).put("action","route-options").put("udp_disable_domain_unmapping",true));
            for(String key:new String[]{"sniff","sniff_timeout","sniff_override_destination","domain_strategy","udp_disable_domain_unmapping"})in.remove(key);
        }
        Set<String> dnsTags=new HashSet<>(),emptyDirect=new HashSet<>();JSONArray outbounds=root.optJSONArray("outbounds"),modernOut=new JSONArray(),endpoints=root.optJSONArray("endpoints");if(endpoints==null)endpoints=new JSONArray();
        if(outbounds!=null)for(int i=0;i<outbounds.length();i++){
            JSONObject out=outbounds.getJSONObject(i);String type=out.optString("type");
            if("dns".equals(type)){dnsTags.add(out.optString("tag"));continue;}
            if("wireguard".equals(type)){
                move(out,"local_address","address");move(out,"system_interface","system");move(out,"interface_name","name");move(out,"peer_public_key","public_key");out.remove("gso");out.remove("network");
                JSONArray peers=out.optJSONArray("peers");if(peers==null||peers.length()==0){JSONObject peer=new JSONObject();for(String key:new String[]{"server","server_port","public_key","pre_shared_key","reserved"})if(out.has(key))peer.put(key,out.remove(key));peer.put("allowed_ips",new JSONArray().put("0.0.0.0/0").put("::/0"));peers=new JSONArray().put(peer);}
                for(int j=0;j<peers.length();j++){JSONObject peer=peers.getJSONObject(j);move(peer,"server","address");move(peer,"server_port","port");}
                out.put("peers",peers);endpoints.put(out);continue;
            }
            if("direct".equals(type)&&out.length()==2)emptyDirect.add(out.optString("tag"));modernOut.put(out);
        }
        root.put("outbounds",modernOut);if(endpoints.length()>0)root.put("endpoints",endpoints);
        JSONArray rules=route.optJSONArray("rules");rewriteRoutes(rules,dnsTags);if(rules!=null)append(prefix,rules);route.put("rules",prefix);
        if(dns!=null){JSONArray servers=dns.optJSONArray("servers");for(int i=0;servers!=null&&i<servers.length();i++){JSONObject s=servers.getJSONObject(i);if(emptyDirect.contains(s.optString("detour")))s.remove("detour");}}
        ConnectionInspector.configure(root);
        try{externalizeRules(route);}catch(IOException|SecurityException error){android.util.Log.w("NativeCoreConfig","Using inline rules because caching is unavailable",error);}
    }
    private static File ruleDirectory() {
        if(ruleCacheDirectory!=null)return ruleCacheDirectory;
        try{android.content.Context app=(android.content.Context)Class.forName("io.nekohasekai.sagernet.ktx.UtilsKt").getMethod("getApp").invoke(null);return new File(app.getNoBackupFilesDir(),"compiled-rules");}catch(Exception ignored){return null;}
    }
    private static boolean contentMatches(File file,byte[] data) {
        if(!file.isFile()||file.length()!=data.length)return false;
        try(FileInputStream input=new FileInputStream(file)){byte[] buffer=new byte[8192];int offset=0,n;while((n=input.read(buffer))!=-1){for(int i=0;i<n;i++)if(buffer[i]!=data[offset+i])return false;offset+=n;}return offset==data.length;}catch(IOException error){return false;}
    }
    private static void externalizeRules(JSONObject route)throws Exception {
        JSONArray sets=route.optJSONArray("rule_set");if(sets==null)return;File directory=null;
        for(int i=0;i<sets.length();i++){
            JSONObject set=sets.getJSONObject(i);JSONArray rules=set.optJSONArray("rules");if(!"inline".equals(set.optString("type"))||rules==null)continue;
            String text=rules.toString();if(text.length()<4096)continue;
            if(directory==null){directory=ruleDirectory();if(directory==null)return;if(!directory.isDirectory()&&!directory.mkdirs())return;}
            byte[] data=new JSONObject().put("version",5).put("rules",rules).toString().getBytes("UTF-8");
            StringBuilder hex=new StringBuilder();for(byte value:MessageDigest.getInstance("SHA-256").digest(data))hex.append(String.format(java.util.Locale.ROOT,"%02x",value&255));
            File source=new File(directory,hex+".json");
            if(!contentMatches(source,data)){
                File temp=File.createTempFile("rules-",".tmp",directory);
                try{try(FileOutputStream stream=new FileOutputStream(temp)){stream.write(data);}if(!temp.renameTo(source)&&!contentMatches(source,data))throw new IOException("Cannot cache rule-set");}finally{temp.delete();}
            }
            set.remove("rules");set.put("type","local").put("format","source").put("path",source.getAbsolutePath());
        }
    }
}

