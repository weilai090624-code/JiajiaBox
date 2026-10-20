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
import org.json.JSONArray;
import org.json.JSONObject;
import java.util.*;

/** Applies only to generated profiles, after existing AI and Telegram priorities. */
public final class DnsIpRouting {
    public static final String KEY="dnsIpRouting";
    public static String applyRuntime(String config) {
        try {
            Class<?> type=Class.forName("io.nekohasekai.sagernet.database.DataStore");
            Object store=type.getMethod("getConfigurationStore").invoke(type.getField("INSTANCE").get(null));
            boolean enabled=(Boolean)store.getClass().getMethod("getBoolean",String.class,boolean.class).invoke(store,KEY,true);
            return applyGenerated(config,enabled);
        } catch(Exception error){throw new IllegalStateException("DNS/IP 分流配置生成失败",error);}
    }
    public static void install(Object fragment) {
        try {
            Context context=(Context)fragment.getClass().getMethod("requireContext").invoke(fragment);
            Object screen=fragment.getClass().getMethod("getPreferenceScreen").invoke(fragment);
            Class<?> group=Class.forName("androidx.preference.PreferenceGroup"), preference=Class.forName("androidx.preference.Preference");
            if(group.getMethod("findPreference",CharSequence.class).invoke(screen,KEY)!=null)return;
            Object legacy=group.getMethod("findPreference",CharSequence.class).invoke(screen,"resolveDestination");
            if(legacy!=null)preference.getMethod("setSummary",CharSequence.class).invoke(legacy,"启用 DNS 解析后按 IP 分流时，由新流程决定解析时机；关闭新功能后恢复此设置");
            Object category=screen;int count=(Integer)group.getMethod("getPreferenceCount").invoke(screen);
            for(int i=0;i<count;i++){Object child=group.getMethod("getPreference",int.class).invoke(screen,i);if(group.isInstance(child)&&group.getMethod("findPreference",CharSequence.class).invoke(child,"bypassLan")!=null){category=child;break;}}
            Object row=Class.forName("androidx.preference.SwitchPreference").getConstructor(Context.class).newInstance(context);
            preference.getMethod("setKey",String.class).invoke(row,KEY);
            preference.getMethod("setTitle",CharSequence.class).invoke(row,"DNS 解析后按 IP 分流");
            preference.getMethod("setSummary",CharSequence.class).invoke(row,"明确规则优先；未命中时解析真实 IP，按 IP 规则直连或代理。保留中国 IP 直连开关；修改后重新连接生效。仅用于普通节点配置");
            preference.getMethod("setDefaultValue",Object.class).invoke(row,Boolean.TRUE);
            group.getMethod("addPreference",preference).invoke(category,row);
        }catch(Exception error){android.util.Log.e("DnsIpRouting","Cannot install DNS/IP routing preference",error);}
    }
    private static boolean only(JSONObject rule,String... keys) {
        Set<String> allowed=new HashSet<>(Arrays.asList(keys));Iterator<String> names=rule.keys();
        while(names.hasNext())if(!allowed.contains(names.next()))return false;return true;
    }
    private static List<String> strings(Object value) {
        List<String> result=new ArrayList<>();if(value instanceof String)result.add((String)value);
        if(value instanceof JSONArray){JSONArray a=(JSONArray)value;for(int i=0;i<a.length();i++)result.add(a.optString(i));}return result;
    }
    private static boolean realServer(JSONObject server) {
        String address=server.optString("address"),type=server.optString("type");
        return !"fakeip".equals(type)&&!"fakeip".equals(address)&&!address.startsWith("rcode://");
    }
    private static JSONObject resolver(JSONObject root) throws Exception {
        JSONObject dns=root.optJSONObject("dns");if(dns==null)return null;
        JSONArray servers=dns.optJSONArray("servers");if(servers==null)return null;
        JSONObject best=null;int score=-1;
        for(int i=0;i<servers.length();i++){
            JSONObject server=servers.getJSONObject(i);String tag=server.optString("tag");
            if(tag.isEmpty()||!realServer(server))continue;
            int rank="dns-remote".equals(tag)?4:tag.equals(dns.optString("final"))?3:"dns-direct".equals(tag)?2:1;
            if(rank>score){best=server;score=rank;}
        }
        if(best==null)return null;
        JSONObject rule=new JSONObject().put("action","resolve").put("server",best.getString("tag"));
        String strategy=best.optString("strategy",dns.optString("strategy"));
        if(!strategy.isEmpty()&&!"as_is".equals(strategy))rule.put("strategy",strategy);
        return rule;
    }
    private static int countryFallback(JSONObject rule,Set<String> direct) {
        if(!direct.contains(rule.optString("outbound"))||!only(rule,"action","outbound","rule_set"))return 0;
        String action=rule.optString("action");if(!action.isEmpty()&&!"route".equals(action))return 0;
        List<String> tags=strings(rule.opt("rule_set"));if(tags.isEmpty())return 0;
        boolean domain=true,ip=true;
        for(String tag:tags){domain&="geosite:cn".equals(tag);ip&="cn-ip-v4".equals(tag)||"cn-ip-v6".equals(tag)||"geoip:cn".equals(tag);}
        return domain?1:ip?2:0;
    }
    private static boolean destinationIp(JSONObject rule,Map<String,JSONObject> sets,Set<String> visiting) {
        if(rule.has("ip_cidr")||rule.optBoolean("ip_is_private")||rule.has("geoip"))return true;
        if(!rule.optBoolean("rule_set_ip_cidr_match_source")&&!rule.optBoolean("rule_set_ipcidr_match_source")){
            for(String tag:strings(rule.opt("rule_set"))){
                if(tag.startsWith("geosite:"))continue;
                if(tag.startsWith("geoip:")||tag.startsWith("cn-ip-"))return true;
                JSONObject set=sets.get(tag);if(set!=null&&visiting.add(tag)){
                    JSONArray nested=set.optJSONArray("rules");
                    if(nested==null)return true; // External sets may contain destination IP predicates.
                    for(int i=0;i<nested.length();i++)if(destinationIp(nested.optJSONObject(i),sets,visiting))return true;
                    visiting.remove(tag);
                }
            }
        }
        JSONArray nested=rule.optJSONArray("rules");if(nested!=null)for(int i=0;i<nested.length();i++)if(destinationIp(nested.optJSONObject(i),sets,visiting))return true;
        return false;
    }
    private static boolean catchAll(JSONObject rule) {
        String action=rule.optString("action");return (rule.has("outbound")||"reject".equals(action))&&only(rule,"action","outbound","method","no_drop");
    }
    public static String apply(String config) throws Exception {
        JSONObject root=new JSONObject(config);
        return applyRoot(root)?root.toString():config;
    }
    public static String applyGenerated(String config,boolean enabled) throws Exception {
        JSONObject root=new JSONObject(config);if(enabled)applyRoot(root);NativeCoreConfig.applyRoot(root);return root.toString();
    }
    static boolean applyRoot(JSONObject root) throws Exception {
        JSONObject route=root.optJSONObject("route");if(route==null)return false;
        JSONArray rules=route.optJSONArray("rules"),outbounds=root.optJSONArray("outbounds");if(rules==null||outbounds==null)return false;
        JSONObject resolve=resolver(root);if(resolve==null)throw new IllegalStateException("按 IP 分流需要至少一个真实 DNS 服务器");
        Set<String> direct=new HashSet<>();for(int i=0;i<outbounds.length();i++){JSONObject out=outbounds.getJSONObject(i);if("direct".equals(out.optString("type")))direct.add(out.optString("tag"));}
        List<JSONObject> explicit=new ArrayList<>(),domains=new ArrayList<>(),ips=new ArrayList<>();
        for(int i=0;i<rules.length();i++){
            JSONObject rule=rules.getJSONObject(i);
            if("resolve".equals(rule.optString("action"))&&only(rule,"action","server","strategy")&&Arrays.asList("dns-remote","dns-direct",resolve.optString("server")).contains(rule.optString("server")))continue;
            int kind=countryFallback(rule,direct);if(kind==1)domains.add(rule);else if(kind==2)ips.add(rule);else explicit.add(rule);
        }
        int insert=explicit.size();for(int i=0;i<explicit.size();i++)if(catchAll(explicit.get(i))){insert=i;break;}
        explicit.addAll(insert,domains);explicit.addAll(insert+domains.size(),ips);
        Map<String,JSONObject> sets=new HashMap<>();JSONArray definitions=route.optJSONArray("rule_set");
        if(definitions!=null)for(int i=0;i<definitions.length();i++){JSONObject set=definitions.getJSONObject(i);sets.put(set.optString("tag"),set);}
        int firstIp=-1;for(int i=0;i<explicit.size();i++)if(destinationIp(explicit.get(i),sets,new HashSet<>())){firstIp=i;break;}
        if(firstIp<0)return false; // No destination-IP rules: no added lookups or changes.
        explicit.add(firstIp,resolve);
        JSONArray ordered=new JSONArray();for(JSONObject rule:explicit)ordered.put(rule);route.put("rules",ordered);
        JSONArray inbounds=root.optJSONArray("inbounds");if(inbounds!=null)for(int i=0;i<inbounds.length();i++){
            JSONObject inbound=inbounds.getJSONObject(i);String type=inbound.optString("type");
            if("tun".equals(type)||"mixed".equals(type))inbound.remove("domain_strategy");
        }
        return true;
    }
}

