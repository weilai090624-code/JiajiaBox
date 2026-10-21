/*
 * Copyright (c) 2026 weilai090624-code
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 */
package io.nekohasekai.sagernet.ui;

import java.util.*;
import java.security.MessageDigest;
import org.json.*;

/** Builds the globe from online IP.SB results; targets share one point per region. */
public final class GlobeTopology {
    public static String tag(JSONObject row,JSONObject types){
        String value=row.optString("outbound");if(!value.isEmpty())return value;
        JSONArray chain=row.optJSONArray("chains");
        for(int i=0;chain!=null&&i<chain.length();i++){
            value=chain.optString(i);String type=types.optString(value);
            if(!type.isEmpty()&&!"selector".equals(type)&&!"urltest".equals(type))return value;
        }
        return "";
    }
    public static String type(JSONObject row,JSONObject types){String value=row.optString("outboundType");return value.isEmpty()?types.optString(tag(row,types)):value;}
    private static JSONObject point(String id,String role,String country)throws Exception {
        double[] center=GlobeCountries.center(country);if(center==null)return null;
        return new JSONObject().put("id",id).put("role",role).put("code",country).put("lon",center[0]).put("lat",center[1]).put("count",0);
    }
    private static String code(JSONObject location){
        if(location==null||!"ip.sb".equals(location.optString("source"))||location.optString("ip").isEmpty()||!location.optString("error").isEmpty())return "";
        String code=location.optString("country_code").toUpperCase(Locale.ROOT);
        return GlobeCountries.center(code)==null?"":code;
    }
    private static JSONObject locatedPoint(String id,String role,JSONObject location)throws Exception {
        JSONObject value=point(id,role,code(location));if(value==null)return null;
        double lon=location.optDouble("longitude",Double.NaN),lat=location.optDouble("latitude",Double.NaN);
        if(!Double.isNaN(lon)&&!Double.isNaN(lat)&&Math.abs(lon)<=180&&Math.abs(lat)<=90)value.put("lon",lon).put("lat",lat);
        return value.put("source","ip.sb").put("checkedAt",location.optLong("checked_at"));
    }
    private static String exitID(String ip)throws Exception {
        byte[] digest=MessageDigest.getInstance("SHA-256").digest(ip.getBytes("UTF-8"));StringBuilder out=new StringBuilder("exit:");
        for(int i=0;i<16;i++)out.append(String.format(Locale.ROOT,"%02x",digest[i]&255));return out.toString();
    }
    private static void link(Map<String,JSONObject> links,String from,String to,String kind)throws Exception {
        String key=from+"|"+to;JSONObject edge=links.get(key);
        if(edge==null){edge=new JSONObject().put("from",from).put("to",to).put("kind",kind).put("count",0);links.put(key,edge);}
        edge.put("count",edge.optInt("count")+1);
    }
    public static JSONObject build(JSONArray rows,JSONObject types,JSONObject locations)throws Exception {
        if(rows==null)rows=new JSONArray();if(types==null)types=new JSONObject();if(locations==null)locations=new JSONObject();
        JSONObject self=locations.optJSONObject("self"),exitIPs=locations.optJSONObject("exits"),targets=locations.optJSONObject("targets");
        if(self==null)self=new JSONObject();if(exitIPs==null)exitIPs=new JSONObject();if(targets==null)targets=new JSONObject();
        String selfCountry=code(self);JSONObject origin=locatedPoint("self","origin",self);
        Map<String,JSONObject> nodes=new TreeMap<>(),edges=new TreeMap<>();Map<String,Integer> counts=new HashMap<>();
        Map<String,Set<String>> members=new HashMap<>();int missing=0,missingExit=0,direct=0;
        boolean pending=self.optBoolean("pending"),lookupFailed=!self.optString("error").isEmpty();if(origin!=null)nodes.put("self",origin);
        for(int i=0;i<rows.length();i++){
            JSONObject row=rows.optJSONObject(i);if(row==null)continue;JSONObject meta=row.optJSONObject("metadata");
            JSONObject targetLocation=targets.optJSONObject(meta==null?"":meta.optString("destinationIP"));
            if(targetLocation!=null){pending|=targetLocation.optBoolean("pending");lookupFailed|=!targetLocation.optString("error").isEmpty();}
            String target=code(targetLocation);
            String dest="dest:"+target;JSONObject destination=point(dest,"destination",target);
            if(destination==null){missing++;}else{
                counts.put(target,counts.containsKey(target)?counts.get(target)+1:1);
                if(!nodes.containsKey(dest))nodes.put(dest,destination);
                nodes.get(dest).put("count",nodes.get(dest).optInt("count")+1);
            }
            String type=type(row,types),tag=tag(row,types);
            if("direct".equals(type)){
                direct++;if(origin!=null&&destination!=null)link(edges,"self",dest,"direct");continue;
            }
            JSONObject exit=exitIPs.optJSONObject(tag);
            if(exit!=null){pending|=exit.optBoolean("pending");lookupFailed|=!exit.optString("error").isEmpty();}
            String ip=exit==null?"":exit.optString("ip"),code=code(exit);
            if(ip.isEmpty()||code.isEmpty()){missingExit++;continue;}
            String id=exitID(ip);JSONObject node=nodes.get(id);
            if(node==null){node=locatedPoint(id,"exit",exit);nodes.put(id,node);members.put(id,new HashSet<>());}
            node.put("count",node.optInt("count")+1);members.get(id).add(tag);
            if(origin!=null)link(edges,"self",id,"uplink");
            if(destination!=null)link(edges,id,dest,"request");
        }
        for(Map.Entry<String,Set<String>> entry:members.entrySet())nodes.get(entry.getKey()).put("members",entry.getValue().size());
        if(origin!=null)origin.put("count",rows.length());
        List<String> ordered=new ArrayList<>(counts.keySet());Collections.sort(ordered,(a,b)->{int order=Integer.compare(counts.get(b),counts.get(a));return order!=0?order:a.compareTo(b);});
        JSONArray countries=new JSONArray(),points=new JSONArray(),links=new JSONArray();
        for(String code:ordered){double[] center=GlobeCountries.center(code);countries.put(new JSONObject().put("code",code).put("name",GlobeCountries.name(code,Locale.getDefault())).put("count",counts.get(code)).put("lon",center[0]).put("lat",center[1]));}
        for(JSONObject value:nodes.values())points.put(value);for(JSONObject value:edges.values())links.put(value);
        return new JSONObject().put("countries",countries).put("nodes",points).put("links",links).put("total",rows.length()).put("unknown",missing).put("missingExits",missingExit).put("direct",direct).put("selfCountry",selfCountry).put("selfPending",self.optBoolean("pending")).put("exitCount",members.size()).put("pending",pending).put("lookupFailed",lookupFailed).put("provider","ip.sb");
    }
}
