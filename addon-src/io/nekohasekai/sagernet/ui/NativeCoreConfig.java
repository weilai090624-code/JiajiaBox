/*
 * Copyright (c) 2026 weilai090624-code
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 */

package io.nekohasekai.sagernet.ui;

import org.json.JSONArray;
import org.json.JSONObject;
import java.io.*;
import java.net.URI;
import java.net.URL;
import java.security.MessageDigest;
import java.util.*;
import javax.net.ssl.HttpsURLConnection;

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
        injectDomainResolvers(route,dns,modernOut,endpoints);
        JSONArray rules=route.optJSONArray("rules");rewriteRoutes(rules,dnsTags);if(rules!=null)append(prefix,rules);route.put("rules",prefix);
        if(dns!=null){JSONArray servers=dns.optJSONArray("servers");for(int i=0;servers!=null&&i<servers.length();i++){JSONObject s=servers.getJSONObject(i);if(emptyDirect.contains(s.optString("detour")))s.remove("detour");}}
        ConnectionInspector.configure(root);
        try{externalizeRules(route);}catch(IOException|SecurityException error){android.util.Log.w("NativeCoreConfig","Using inline rules because caching is unavailable",error);}
    }
    /** True for IPv4/IPv6 literals, which never need a domain resolver. */
    private static boolean isIpAddress(String host) {
        if(host==null||host.isEmpty())return false;
        if(host.indexOf(':')>=0)return true;
        String[] parts=host.split("\\.");if(parts.length!=4)return false;
        for(String part:parts){
            try{int value=Integer.parseInt(part);if(value<0||value>255)return false;}
            catch(NumberFormatException error){return false;}
        }
        return true;
    }
    private static String serverHost(JSONObject object,String key) {
        if(object==null)return "";
        String host=object.optString(key);
        if(host.startsWith("[")){int end=host.indexOf(']');if(end>0)host=host.substring(1,end);}
        return isIpAddress(host)?"":host;
    }
    private static boolean domainMatches(JSONObject rule,String host) {
        if(rule==null||host.isEmpty())return false;
        String lower=host.toLowerCase(Locale.ROOT);
        JSONArray list=rule.optJSONArray("domain");
        if(list!=null)for(int i=0;i<list.length();i++)if(lower.equals(list.optString(i).toLowerCase(Locale.ROOT)))return true;
        list=rule.optJSONArray("domain_suffix");
        if(list!=null)for(int i=0;i<list.length();i++){
            String suffix=list.optString(i).toLowerCase(Locale.ROOT);
            if(suffix.startsWith("."))suffix=suffix.substring(1);
            if(!suffix.isEmpty()&&(lower.equals(suffix)||lower.endsWith("."+suffix)))return true;
        }
        list=rule.optJSONArray("domain_keyword");
        if(list!=null)for(int i=0;i<list.length();i++)if(lower.contains(list.optString(i).toLowerCase(Locale.ROOT)))return true;
        list=rule.optJSONArray("domain_regex");
        if(list!=null)for(int i=0;i<list.length();i++){
            try{if(host.matches(list.optString(i)))return true;}catch(RuntimeException ignored){}
        }
        if("logical".equals(rule.optString("type"))){
            JSONArray nested=rule.optJSONArray("rules");if(nested==null||nested.length()==0)return false;
            boolean and="and".equals(rule.optString("mode"));
            for(int i=0;i<nested.length();i++){
                boolean matched=domainMatches(nested.optJSONObject(i),host);
                if(and){if(!matched)return false;}else if(matched)return true;
            }
            return and;
        }
        return false;
    }
    /**
     * Resolve a rule's server tag against the merged server list. Subscription
     * merges may prefix tags on one side only, so accept both spellings and
     * return the tag that actually exists.
     */
    private static String lookupServerTag(Map<String,JSONObject> servers,String tag) {
        if(tag.isEmpty())return "";
        if(servers.containsKey(tag))return tag;
        if(tag.startsWith("subscription-dns-")){
            String bare=tag.substring("subscription-dns-".length());
            if(servers.containsKey(bare))return bare;
        }
        String prefixed="subscription-dns-"+tag;
        if(servers.containsKey(prefixed))return prefixed;
        return "";
    }
    /**
     * First rule that names a usable resolver for this host. Subscription rules
     * win over the generator's pinned direct rule, which is inserted at index 0
     * for proxy-server bootstrap and would otherwise shadow the private DoH.
     */
    private static String matchedServer(JSONArray rules,String host,Map<String,JSONObject> servers) {
        String preferred=matchedServerPass(rules,host,servers,true);
        return preferred.isEmpty()?matchedServerPass(rules,host,servers,false):preferred;
    }
    private static String matchedServerPass(JSONArray rules,String host,Map<String,JSONObject> servers,boolean subscriptionOnly) {
        if(rules==null)return "";
        for(int i=0;i<rules.length();i++){
            JSONObject rule=rules.optJSONObject(i);if(rule==null||!domainMatches(rule,host))continue;
            String tag=lookupServerTag(servers,rule.optString("server"));if(tag.isEmpty())continue;
            if(subscriptionOnly&&!tag.startsWith("subscription-dns-"))continue;
            JSONObject server=servers.get(tag);
            String type=server==null?"":server.optString("type");
            if("fakeip".equals(type)||"predefined".equals(type))continue;
            return tag;
        }
        return "";
    }
    /**
     * The generator prepends a "resolve proxy server domains directly" rule and
     * an "any outbound" fallback before the subscription DNS rules. sing-box
     * evaluates DNS rules in order, so move subscription-tagged rules in front
     * of those pinned rules; otherwise entry domains never reach the private DoH.
     */
    private static void prioritizeSubscriptionRules(JSONObject dns,Map<String,JSONObject> servers)throws Exception {
        JSONArray rules=dns.optJSONArray("rules");if(rules==null||rules.length()==0)return;
        JSONArray first=new JSONArray(),rest=new JSONArray();
        for(int i=0;i<rules.length();i++){
            JSONObject rule=rules.optJSONObject(i);
            if(rule==null)continue;
            String tag=lookupServerTag(servers,rule.optString("server"));
            if(!tag.isEmpty()&&tag.startsWith("subscription-dns-"))first.put(rule);else rest.put(rule);
        }
        if(first.length()==0)return;
        append(first,rest);dns.put("rules",first);
        record("v502 rules prioritized sub="+first.length()+" total="+rules.length());
    }
    /**
     * Bootstrap resolver for core-internal dialing. Must not be the proxied
     * dns-remote server, otherwise resolving a proxy endpoint recurses through
     * the proxy it is about to open.
     */
    private static String defaultResolver(Map<String,JSONObject> servers) {
        JSONObject direct=servers.get("dns-direct");
        if(direct!=null&&!"fakeip".equals(direct.optString("type"))&&!"predefined".equals(direct.optString("type")))return "dns-direct";
        for(JSONObject server:servers.values()){
            String tag=server.optString("tag"),type=server.optString("type");
            if("fakeip".equals(type)||"predefined".equals(type)||"dns-remote".equals(tag))continue;
            String host=server.optString("server");
            if(!host.isEmpty()&&isIpAddress(host))return tag;
        }
        return "";
    }
    private static String alternateResolver(Map<String,JSONObject> servers,String exclude) {
        for(JSONObject server:servers.values()){
            String tag=server.optString("tag");if(tag.equals(exclude))continue;
            String type=server.optString("type");
            if("fakeip".equals(type)||"predefined".equals(type))continue;
            String host=server.optString("server");
            if(!host.isEmpty()&&isIpAddress(host))return tag;
        }
        return "";
    }
    private static boolean hasSubscriptionServers(JSONObject dns) {
        JSONArray servers=dns.optJSONArray("servers");if(servers==null)return false;
        for(int i=0;i<servers.length();i++){
            JSONObject server=servers.optJSONObject(i);
            if(server!=null&&server.optString("tag").startsWith("subscription-dns-"))return true;
        }
        return false;
    }
    private static String readText(File file) {
        try{
            long length=file.length();if(length<=0||length>1024*1024)return null;
            FileInputStream input=new FileInputStream(file);
            try{
                byte[] data=new byte[(int)length];int offset=0;
                while(offset<data.length){
                    int count=input.read(data,offset,data.length-offset);
                    if(count<0)break;offset+=count;
                }
                return new String(data,0,offset,"UTF-8");
            }finally{input.close();}
        }catch(Throwable ignored){return null;}
    }
    private static String matchedRuleTag(JSONArray rules,String host) {
        if(rules==null)return null;
        for(int i=0;i<rules.length();i++){
            JSONObject rule=rules.optJSONObject(i);
            if(rule==null||!domainMatches(rule,host))continue;
            String server=rule.optString("server");
            if(!server.isEmpty())return server;
        }
        return null;
    }
    private static String xmlUnescape(String value) {
        return value.replace("&lt;","<").replace("&gt;",">").replace("&quot;","\"")
                .replace("&apos;","'").replace("&#39;","'").replace("&#10;","\n").replace("&amp;","&");
    }
    /** Number of outbound server domains covered by this staged DNS record. */
    private static int stagedScore(JSONObject staged,JSONArray outbounds) {
        JSONArray rules=staged.optJSONArray("rules");if(rules==null)return -1;
        int score=0;
        if(outbounds!=null)for(int i=0;i<outbounds.length();i++){
            JSONObject out=outbounds.optJSONObject(i);if(out==null)continue;
            String host=serverHost(out,"server");
            if(!host.isEmpty()&&matchedRuleTag(rules,host)!=null)score++;
        }
        return score;
    }
    private static JSONObject stagedDns(String text) {
        try{
            JSONObject staged=new JSONObject(text);
            JSONObject nested=staged.optJSONObject("dns");
            return nested!=null?nested:staged;
        }catch(Exception ignored){return null;}
    }
    /**
     * The VPN core runs in a separate process and may fail to read the staged
     * subscription DNS by group id. Recover it by content: pick the staged
     * record whose rules cover this config's outbound server domains. This
     * cannot mix subscriptions, unlike a "latest" fallback.
     */
    private static JSONObject loadStagedDns(JSONArray outbounds) {
        try{
            android.content.Context app=(android.content.Context)Class.forName("io.nekohasekai.sagernet.ktx.UtilsKt").getMethod("getApp").invoke(null);
            File dir=new File(app.getFilesDir(),"subscription_dns");
            File[] files=dir.listFiles();
            record("v501 scan dir="+dir.getAbsolutePath()+" exists="+dir.exists()+" files="+(files==null?-1:files.length));
            JSONObject best=null;int bestScore=0;String bestName="";
            if(files!=null)for(File file:files){
                if(file==null||!file.isFile())continue;
                String text=readText(file);
                if(text==null){record("v501 file "+file.getName()+" unreadable");continue;}
                JSONObject staged=stagedDns(text);
                if(staged==null){record("v501 file "+file.getName()+" bad json");continue;}
                JSONArray rules=staged.optJSONArray("rules");
                int score=stagedScore(staged,outbounds);
                record("v501 file "+file.getName()+" bytes="+text.length()+" rules="+(rules==null?0:rules.length())+" matched="+score);
                if(score>bestScore){best=staged;bestScore=score;bestName="file:"+file.getName();}
            }
            // SharedPreferences are written by the UI process; read the XML directly
            // so a stale per-process cache in :bg cannot hide the staged DNS.
            File xml=new File(app.getFilesDir().getParentFile(),"shared_prefs/subscription_dns.xml");
            if(xml.isFile()){
                String text=readText(xml);
                if(text==null){record("v501 prefs unreadable "+xml.getAbsolutePath());}
                else{
                    java.util.regex.Matcher matches=java.util.regex.Pattern
                            .compile("<string name=\"([^\"]+)\">(.*?)</string>",java.util.regex.Pattern.DOTALL)
                            .matcher(text);
                    int entries=0;
                    while(matches.find()){
                        String name=matches.group(1);
                        JSONObject staged=stagedDns(xmlUnescape(matches.group(2)));
                        if(staged==null)continue;
                        JSONArray rules=staged.optJSONArray("rules");
                        if(rules==null||rules.length()==0)continue;
                        entries++;
                        int score=stagedScore(staged,outbounds);
                        record("v501 prefs "+name+" rules="+rules.length()+" matched="+score);
                        if(score>bestScore){best=staged;bestScore=score;bestName="prefs:"+name;}
                    }
                    record("v501 prefs entries="+entries);
                }
            }else{
                record("v501 prefs missing "+xml.getAbsolutePath());
            }
            if(best!=null)record("v500 staged source="+bestName+" matched="+bestScore);
            else record("v501 staged none");
            return best;
        }catch(Throwable error){
            record("v501 scan error "+error);
            return null;
        }
    }
    static void mergeStagedDns(JSONObject dns,JSONObject staged)throws Exception {
        if(dns==null||staged==null)return;
        JSONArray servers=staged.optJSONArray("servers");if(servers==null||servers.length()==0)return;
        JSONArray target=dns.optJSONArray("servers");if(target==null){target=new JSONArray();dns.put("servers",target);}
        java.util.Set<String> bare=new java.util.HashSet<>();
        JSONArray added=new JSONArray();
        for(int i=0;i<servers.length();i++){
            JSONObject server=servers.optJSONObject(i);if(server==null)continue;
            String tag=server.optString("tag");if(tag.isEmpty())continue;
            JSONObject copy=new JSONObject(server.toString());
            String prefixed=tag.startsWith("subscription-dns-")?tag:"subscription-dns-"+tag;
            copy.put("tag",prefixed);bare.add(tag);added.put(copy);target.put(copy);
        }
        for(int i=0;i<added.length();i++){
            JSONObject copy=added.optJSONObject(i);
            String resolver=copy.optString("address_resolver");
            if(!resolver.isEmpty()&&bare.contains(resolver))copy.put("address_resolver","subscription-dns-"+resolver);
        }
        JSONArray rules=staged.optJSONArray("rules");
        if(rules!=null&&rules.length()>0){
            JSONArray targetRules=dns.optJSONArray("rules");if(targetRules==null){targetRules=new JSONArray();dns.put("rules",targetRules);}
            for(int i=0;i<rules.length();i++){
                JSONObject rule=rules.optJSONObject(i);if(rule==null)continue;
                JSONObject copy=new JSONObject(rule.toString());
                String server=copy.optString("server");
                if(bare.contains(server))copy.put("server","subscription-dns-"+server);
                targetRules.put(copy);
            }
        }
    }
    private static final Object dohLock = new Object();
    private static final Map<String,List<String>> dohCache = new HashMap<>();
    private static final Map<String,Long> dohExpiry = new HashMap<>();
    private static final String HOSTS_TAG = "subscription-dns-hosts";
    private static final String HOSTS_PREFS = "subscription_hosts";
    private static final long HOSTS_TTL_MS = 10*60*1000L;
    /**
     * Pin the node's entry domain to a locally cached A record.
     * Test configs spawn a new core per node, so each test otherwise pays a new
     * DoH TLS handshake. VPN builds run in :bg and cannot rely on the live DoH
     * either; reuse the cache written by tests instead. The hosts tag keeps the
     * subscription-dns- prefix so rule prioritisation and matchedServer() pick
     * it ahead of the private DoH.
     */
    public static String applyDnsPin(String config,boolean enabled) {
        if(!enabled||config==null||config.isEmpty())return config;
        try{
            JSONObject root=new JSONObject(config);
            JSONObject dns=root.optJSONObject("dns");
            JSONArray outbounds=root.optJSONArray("outbounds");
            if(dns==null||outbounds==null)return config;
            JSONObject target=null;String host="";
            for(int i=0;i<outbounds.length();i++){
                JSONObject out=outbounds.optJSONObject(i);if(out==null)continue;
                String type=out.optString("type");
                if("direct".equals(type)||"block".equals(type)||"dns".equals(type)||"selector".equals(type)||"urltest".equals(type))continue;
                String candidate=serverHost(out,"server");
                if(!candidate.isEmpty()){target=out;host=candidate;break;}
            }
            if(target==null)return config;
            android.content.Context app=(android.content.Context)Class.forName("io.nekohasekai.sagernet.ktx.UtilsKt").getMethod("getApp").invoke(null);
            String[] ips=cachedIps(app,host);
            if(ips.length==0){
                JSONObject staged=loadStagedDns(outbounds);
                if(staged!=null){
                    String ruleTag=matchedRuleTag(staged.optJSONArray("rules"),host);
                    String doh=ruleTag==null?null:dohAddress(staged.optJSONArray("servers"),ruleTag);
                    if(doh!=null){
                        ips=resolveCached(host,doh);
                        if(ips.length>0)persistIps(app,host,ips);
                    }
                }
            }
            if(ips.length==0)return config;
            injectHosts(dns,target,host,ips);
            record("v506 pin "+host+" ip="+ips[0]+" n="+ips.length);
            return root.toString();
        }catch(Throwable error){
            record("v506 pin error "+error);
            return config;
        }
    }
    private static String[] cachedIps(android.content.Context app,String host) {
        synchronized(dohLock){
            Long expiry=dohExpiry.get(host);
            if(expiry!=null&&expiry.longValue()>System.currentTimeMillis()){
                List<String> cached=dohCache.get(host);
                if(cached!=null&&!cached.isEmpty())return cached.toArray(new String[0]);
            }
        }
        String stored=readPrefsValue(app,HOSTS_PREFS,host);
        if(stored==null)return new String[0];
        int split=stored.lastIndexOf(';');
        if(split<=0)return new String[0];
        try{
            long expiry=Long.parseLong(stored.substring(split+1));
            if(expiry<=System.currentTimeMillis())return new String[0];
            String address=stored.substring(0,split);
            if(address.isEmpty())return new String[0];
            synchronized(dohLock){
                dohCache.put(host,new ArrayList<>(Collections.singletonList(address)));
                dohExpiry.put(host,Long.valueOf(expiry));
            }
            return new String[]{address};
        }catch(NumberFormatException ignored){
            return new String[0];
        }
    }
    private static void persistIps(android.content.Context app,String host,String[] ips) {
        try{
            long expiry=System.currentTimeMillis()+HOSTS_TTL_MS;
            Object prefs=app.getClass().getMethod("getSharedPreferences",String.class,int.class).invoke(app,HOSTS_PREFS,Integer.valueOf(0));
            Object editor=prefs.getClass().getMethod("edit").invoke(prefs);
            editor.getClass().getMethod("putString",String.class,String.class).invoke(editor,host,ips[0]+";"+expiry);
            editor.getClass().getMethod("commit").invoke(editor);
            synchronized(dohLock){
                dohCache.put(host,new ArrayList<>(Arrays.asList(ips)));
                dohExpiry.put(host,Long.valueOf(expiry));
            }
        }catch(Throwable ignored){}
    }
    private static String readPrefsValue(android.content.Context app,String name,String key) {
        try{
            File xml=new File(app.getFilesDir().getParentFile(),"shared_prefs/"+name+".xml");
            String text=readText(xml);if(text==null)return null;
            java.util.regex.Matcher matcher=java.util.regex.Pattern
                    .compile("<string name=\""+java.util.regex.Pattern.quote(key)+"\">(.*?)</string>",java.util.regex.Pattern.DOTALL)
                    .matcher(text);
            if(matcher.find())return xmlUnescape(matcher.group(1));
        }catch(Throwable ignored){}
        return null;
    }
    private static void injectHosts(JSONObject dns,JSONObject target,String host,String[] ips)throws Exception {
        JSONArray servers=dns.optJSONArray("servers");
        if(servers==null){servers=new JSONArray();dns.put("servers",servers);}
        JSONArray addresses=new JSONArray();for(String ip:ips)addresses.put(ip);
        JSONObject predefined=new JSONObject();predefined.put(host,addresses);
        servers.put(new JSONObject().put("type","hosts").put("tag",HOSTS_TAG).put("predefined",predefined));
        JSONArray rules=dns.optJSONArray("rules"),ordered=new JSONArray();
        ordered.put(new JSONObject().put("domain",new JSONArray().put(host)).put("server",HOSTS_TAG));
        if(rules!=null)for(int i=0;i<rules.length();i++){JSONObject rule=rules.optJSONObject(i);if(rule!=null)ordered.put(rule);}
        dns.put("rules",ordered);
        target.put("domain_resolver",new JSONObject().put("server",HOSTS_TAG));
    }
    private static String dohAddress(JSONArray servers,String ruleTag) {
        if(servers==null||ruleTag==null)return null;
        String prefix="subscription-dns-";
        String bare=ruleTag.startsWith(prefix)?ruleTag.substring(prefix.length()):ruleTag;
        for(int i=0;i<servers.length();i++){
            JSONObject server=servers.optJSONObject(i);if(server==null)continue;
            String tag=server.optString("tag");
            String tagBare=tag.startsWith(prefix)?tag.substring(prefix.length()):tag;
            if(ruleTag.equals(tag)||bare.equals(tagBare)){
                String address=server.optString("address");
                if(address.startsWith("https://")||address.startsWith("http://"))return address;
            }
        }
        return null;
    }
    private static String[] resolveCached(String host,String doh) {
        synchronized(dohLock){
            Long expiry=dohExpiry.get(host);
            if(expiry!=null&&expiry.longValue()>System.currentTimeMillis()){
                List<String> cached=dohCache.get(host);
                if(cached!=null&&!cached.isEmpty())return cached.toArray(new String[0]);
            }
            for(int attempt=0;attempt<2;attempt++){
                List<String> ips=resolveViaDoh(host,doh);
                if(!ips.isEmpty()){
                    dohCache.put(host,ips);
                    dohExpiry.put(host,Long.valueOf(System.currentTimeMillis()+25000L));
                    return ips.toArray(new String[0]);
                }
            }
            record("v505 doh failed "+host+" via "+doh);
            return new String[0];
        }
    }
    private static List<String> resolveViaDoh(String host,String doh) {
        HttpsURLConnection connection=null;
        try{
            byte[] query=dnsQuery(host);
            connection=(HttpsURLConnection)new URL(doh).openConnection();
            connection.setConnectTimeout(4000);
            connection.setReadTimeout(5000);
            connection.setRequestMethod("POST");
            connection.setDoOutput(true);
            connection.setRequestProperty("Content-Type","application/dns-message");
            connection.setRequestProperty("Accept","application/dns-message");
            connection.setRequestProperty("User-Agent","sing-box/1.14.3");
            OutputStream output=connection.getOutputStream();
            try{output.write(query);}finally{output.close();}
            if(connection.getResponseCode()!=200)return new ArrayList<>();
            InputStream input=connection.getInputStream();
            ByteArrayOutputStream buffer=new ByteArrayOutputStream();
            try{
                byte[] chunk=new byte[512];int count;
                while((count=input.read(chunk))!=-1)buffer.write(chunk,0,count);
            }finally{input.close();}
            return parseA(buffer.toByteArray());
        }catch(Throwable ignored){
            return new ArrayList<>();
        }finally{
            if(connection!=null)connection.disconnect();
        }
    }
    private static byte[] dnsQuery(String host)throws Exception {
        ByteArrayOutputStream out=new ByteArrayOutputStream();
        int id=(int)(System.nanoTime()&0xffff);
        out.write((id>>8)&255);out.write(id&255);
        out.write(1);out.write(0);
        out.write(0);out.write(1);
        for(int i=0;i<6;i++)out.write(0);
        for(String label:host.split("\\.")){
            byte[] bytes=label.getBytes("UTF-8");
            if(bytes.length==0||bytes.length>63)throw new IllegalArgumentException("bad label");
            out.write(bytes.length);out.write(bytes);
        }
        out.write(0);
        out.write(0);out.write(1);
        out.write(0);out.write(1);
        return out.toByteArray();
    }
    static List<String> parseA(byte[] data) {
        List<String> result=new ArrayList<>();
        try{
            if(data==null||data.length<12)return result;
            int questions=((data[4]&255)<<8)|(data[5]&255);
            int answers=((data[6]&255)<<8)|(data[7]&255);
            int[] pos={12};
            for(int i=0;i<questions;i++){skipDnsName(data,pos);pos[0]+=4;}
            for(int i=0;i<answers;i++){
                skipDnsName(data,pos);
                if(pos[0]+10>data.length)break;
                int type=((data[pos[0]]&255)<<8)|(data[pos[0]+1]&255);
                int length=((data[pos[0]+8]&255)<<8)|(data[pos[0]+9]&255);
                pos[0]+=10;
                if(type==1&&length==4&&pos[0]+4<=data.length){
                    result.add((data[pos[0]]&255)+"."+(data[pos[0]+1]&255)+"."+(data[pos[0]+2]&255)+"."+(data[pos[0]+3]&255));
                }
                pos[0]+=length;
            }
        }catch(Throwable ignored){}
        return result;
    }
    private static void skipDnsName(byte[] data,int[] pos) {
        while(pos[0]<data.length){
            int length=data[pos[0]]&255;
            if(length==0){pos[0]++;return;}
            if((length&0xC0)==0xC0){pos[0]+=2;return;}
            pos[0]+=1+length;
        }
    }
    /**
     * sing-box 1.12+ resolves outbound server domains with domain_resolver, not
     * with DNS rules. Keep dns.final for application queries and give each
     * dial field its own resolver: entry domains use the subscription's private
     * DoH, everything else uses the direct bootstrap DNS.
     */
    private static void injectDomainResolvers(JSONObject route,JSONObject dns,JSONArray outbounds,JSONArray endpoints)throws Exception {
        if(dns==null){record("v501 dns=null");return;}
        JSONArray initial=dns.optJSONArray("servers");
        record("v501 dns servers="+(initial==null?0:initial.length())+" hasSub="+hasSubscriptionServers(dns));
        if(!hasSubscriptionServers(dns)){
            JSONObject staged=loadStagedDns(outbounds);
            if(staged!=null){
                mergeStagedDns(dns,staged);
                JSONArray merged=dns.optJSONArray("servers");
                record("v501 merged servers="+(merged==null?0:merged.length())+" hasSub="+hasSubscriptionServers(dns));
            }
        }
        JSONArray serverList=dns.optJSONArray("servers");if(serverList==null)return;
        Map<String,JSONObject> servers=new LinkedHashMap<>();
        for(int i=0;i<serverList.length();i++){
            JSONObject server=serverList.optJSONObject(i);
            if(server!=null&&!server.optString("tag").isEmpty())servers.put(server.optString("tag"),server);
        }
        if(servers.isEmpty())return;
        prioritizeSubscriptionRules(dns,servers);
        String defaultTag=defaultResolver(servers);
        if(!defaultTag.isEmpty()&&!route.has("default_domain_resolver"))route.put("default_domain_resolver",new JSONObject().put("server",defaultTag));
        JSONArray rules=dns.optJSONArray("rules");
        StringBuilder sample=new StringBuilder();
        if(outbounds!=null)for(int i=0;i<outbounds.length();i++){
            JSONObject out=outbounds.optJSONObject(i);
            if(out==null||out.has("domain_resolver"))continue;
            String type=out.optString("type");
            if("direct".equals(type)||"block".equals(type)||"dns".equals(type)||"selector".equals(type)||"urltest".equals(type))continue;
            String host=serverHost(out,"server");if(host.isEmpty())continue;
            String matched=matchedServer(rules,host,servers);
            String tag=matched;if(tag.isEmpty())tag=defaultTag;
            JSONObject existing=out.optJSONObject("domain_resolver");
            if(!tag.isEmpty()&&(existing==null||(!matched.isEmpty()&&!matched.equals(existing.optString("server")))))
                out.put("domain_resolver",new JSONObject().put("server",tag));
            if(sample.length()<360&&(host.startsWith("entry-")||!matched.isEmpty()))
                sample.append(host).append("->").append(tag).append(matched.isEmpty()?"(default) ": " ");
        }
        if(endpoints!=null)for(int i=0;i<endpoints.length();i++){
            JSONObject endpoint=endpoints.optJSONObject(i);
            if(endpoint==null||endpoint.has("domain_resolver"))continue;
            String host="";JSONArray peers=endpoint.optJSONArray("peers");
            if(peers!=null)for(int j=0;j<peers.length();j++){
                host=serverHost(peers.optJSONObject(j),"address");if(!host.isEmpty())break;
            }
            if(host.isEmpty())continue;
            String tag=matchedServer(rules,host,servers);if(tag.isEmpty())tag=defaultTag;
            if(!tag.isEmpty())endpoint.put("domain_resolver",new JSONObject().put("server",tag));
        }
        for(JSONObject server:servers.values()){
            if(server.has("domain_resolver"))continue;
            String type=server.optString("type");
            if(!("https".equals(type)||"tls".equals(type)||"quic".equals(type)||"h3".equals(type)||"tcp".equals(type)||"udp".equals(type)))continue;
            String host=serverHost(server,"server");if(host.isEmpty())continue;
            String tag=defaultTag;
            if(tag.isEmpty()||tag.equals(server.optString("tag")))tag=alternateResolver(servers,server.optString("tag"));
            if(!tag.isEmpty())server.put("domain_resolver",new JSONObject().put("server",tag));
        }
        record("v501 default="+defaultTag+" rules="+(rules==null?0:rules.length())+" servers="+servers.size()+" "+sample);
    }
    /** Best-effort line for the in-app diagnostic file (android.util.Log is not captured there). */
    private static void record(String message) {
        try{
            android.content.Context app=(android.content.Context)Class.forName("io.nekohasekai.sagernet.ktx.UtilsKt").getMethod("getApp").invoke(null);
            File cache=app.getCacheDir();
            if(!new File(cache,"diagnostic-recording").exists())return;
            FileOutputStream stream=new FileOutputStream(new File(cache,"diagnostic.log"),true);
            try{stream.write((System.currentTimeMillis()+" [DomainResolver] "+message+"\n").getBytes("UTF-8"));}
            finally{stream.close();}
        }catch(Throwable ignored){}
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

