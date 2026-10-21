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

import java.io.IOException;
import java.net.InetAddress;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;

/** Small, read-only decoder for the already bundled sing-geoip MMDB country strings.
 * No DNS queries, city coordinates, external API or newly downloaded database.
 * Only used by the globe worker. Country-to-continent placement is approximate.
 */
public final class ContinentGeoIp {
    private final byte[] data;
    private final int nodes,bits,treeBytes,ipVersion,dataBase;
    private final Map<String,String> cache=new LinkedHashMap<String,String>(256,.75f,true){
        protected boolean removeEldestEntry(Map.Entry<String,String> entry){return size()>4096;}
    };
    private static final String[] COUNTRIES={
        "AE AF AM AZ BD BH BN BT CN CY GE HK ID IL IN IQ IR JO JP KG KH KP KR KW KZ LA LB LK MM MN MO MV MY NP OM PH PK PS QA SA SG SY TH TJ TL TM TR TW UZ VN YE",
        "AD AL AT AX BA BE BG BY CH CZ DE DK EE ES FI FO FR GB GG GI GR HR HU IE IM IS IT JE LI LT LU LV MC MD ME MK MT NL NO PL PT RO RS RU SE SI SJ SK SM UA VA XK",
        "AO BF BI BJ BW CD CF CG CI CM CV DJ DZ EG EH ER ET GA GH GM GN GQ GW IO KE KM LR LS LY MA MG ML MR MU MW MZ NA NE NG RE RW SC SD SH SL SN SO SS ST SZ TD TF TG TN TZ UG YT ZA ZM ZW",
        "AG AI AW BB BL BM BQ BS BZ CA CR CU CW DM DO GD GL GP GT HN HT JM KN KY LC MF MQ MS MX NI PA PM PR SV SX TC TT US VC VG VI",
        "AR BO BR CL CO EC FK GF GY PE PY SR UY VE",
        "AS AU CC CK CX FJ FM GU HM KI MH MP NC NF NR NU NZ PF PG PN PW SB TK TO TV UM VU WF WS"
    };
    public ContinentGeoIp(byte[] bytes)throws IOException {
        data=bytes;
        byte[] marker={(byte)0xab,(byte)0xcd,(byte)0xef,'M','a','x','M','i','n','d','.','c','o','m'};
        int start=-1;
        outer:for(int i=data.length-marker.length;i>=Math.max(0,data.length-131072);i--){
            for(int j=0;j<marker.length;j++)if(data[i+j]!=marker[j])continue outer;
            start=i+marker.length;break;
        }
        if(start<0)throw new IOException("GeoIP metadata missing");
        Cursor cursor=new Cursor(start,0);
        Object metadata=decode(cursor,0);
        if(!(metadata instanceof Map))throw new IOException("Invalid GeoIP metadata");
        Map<?,?> fields=(Map<?,?>)metadata;
        if(!"sing-geoip".equals(fields.get("database_type")))throw new IOException("Unsupported GeoIP database");
        nodes=number(fields,"node_count");bits=number(fields,"record_size");ipVersion=number(fields,"ip_version");
        if(nodes<=0||(bits!=24&&bits!=28&&bits!=32)||(ipVersion!=4&&ipVersion!=6))throw new IOException("Invalid GeoIP tree");
        long length=(long)nodes*bits/4;
        if(length+16>=start||length>Integer.MAX_VALUE)throw new IOException("Invalid GeoIP size");
        treeBytes=(int)length;dataBase=treeBytes+16;
    }
    private static int number(Map<?,?> fields,String key)throws IOException {
        Object value=fields.get(key);if(!(value instanceof Number))throw new IOException("Missing GeoIP field: "+key);
        return ((Number)value).intValue();
    }
    public static int continent(String country){
        String value=country.toUpperCase(Locale.ROOT);
        if(value.length()!=2)return -1;
        for(int i=0;i<COUNTRIES.length;i++)if((" "+COUNTRIES[i]+" ").contains(" "+value+" "))return i;
        return -1;
    }
    public int locate(String literal){return continent(country(literal));}
    /** Preserve the country code; continent outlines do not constrain data precision. */
    public String country(String literal){
        String known=cache.get(literal);if(known!=null)return known;
        String result="";
        try{
            byte[] ip=literal(literal);
            if(ip!=null){
                int node=0;
                if(ip.length==4&&ipVersion==6)for(int i=0;i<96&&node<nodes;i++)node=child(node,0);
                if(!(ip.length==16&&ipVersion==4)){
                    for(int i=0;i<ip.length*8&&node<nodes;i++)node=child(node,(ip[i/8]>>(7-i%8))&1);
                    if(node>nodes){Object value=decode(new Cursor(treeBytes+node-nodes,dataBase),0);if(value instanceof String){String code=((String)value).toUpperCase(Locale.ROOT);if(code.matches("[A-Z]{2}"))result=code;}}
                }
            }
        }catch(IOException|IllegalArgumentException ignored){}
        cache.put(literal,result);return result;
    }
    private int child(int node,int right)throws IOException {
        int offset=node*(bits/4);
        if(bits==24)return (int)unsigned(offset+right*3,3);
        if(bits==32){long value=unsigned(offset+right*4,4);if(value>Integer.MAX_VALUE)throw new IOException("GeoIP pointer overflow");return (int)value;}
        int high=(data[offset+3]>>(right==0?4:0))&15;
        return (high<<24)|(int)unsigned(offset+(right==0?0:4),3);
    }
    private static byte[] literal(String text)throws IOException {
        if(text==null||text.isEmpty()||text.length()>45)return null;
        for(int i=0;i<text.length();i++)if("0123456789abcdefABCDEF:.".indexOf(text.charAt(i))<0)return null;
        if(text.indexOf(':')<0){
            String[] parts=text.split("\\.",-1);if(parts.length!=4)return null;
            for(String part:parts)if(part.isEmpty()||part.length()>3||Integer.parseInt(part)>255)return null;
        }
        InetAddress address=InetAddress.getByName(text); // Validated IP literals only; never a hostname.
        if(address.isAnyLocalAddress()||address.isLoopbackAddress()||address.isLinkLocalAddress()||address.isSiteLocalAddress()||address.isMulticastAddress())return null;
        byte[] bytes=address.getAddress();
        if(bytes.length==16&&(bytes[0]&0xfe)==0xfc)return null;
        if(bytes.length==4&&(bytes[0]&255)==198&&((bytes[1]&255)==18||(bytes[1]&255)==19))return null;
        return bytes;
    }
    private long unsigned(int position,int length)throws IOException {
        if(position<0||length<0||position>data.length-length)throw new IOException("GeoIP offset outside file");
        long value=0;for(int i=0;i<length;i++)value=(value<<8)|(data[position+i]&255);return value;
    }
    private static final class Cursor {int at;final int base;Cursor(int at,int base){this.at=at;this.base=base;}}
    private Object decode(Cursor cursor,int depth)throws IOException {
        if(depth>32)throw new IOException("GeoIP value nesting limit");
        int control=(int)unsigned(cursor.at++,1),type=control>>>5,size=control&31;
        if(type==1){
            int count=((control>>>3)&3)+1;
            long target=unsigned(cursor.at,count);cursor.at+=count;
            if(count<4){target|=(long)(control&7)<<(count*8);if(count==2)target+=2048;if(count==3)target+=526336;}
            target+=cursor.base;if(target>Integer.MAX_VALUE)throw new IOException("GeoIP data pointer overflow");
            return decode(new Cursor((int)target,cursor.base),depth+1);
        }
        if(type==0)type=(int)unsigned(cursor.at++,1)+7;
        if(size>=29){int count=size-28;size=(size==29?29:size==30?285:65821)+(int)unsigned(cursor.at,count);cursor.at+=count;}
        if(size<0||size>1048576)throw new IOException("GeoIP value too large");
        if(type==7){
            if(size>1024)throw new IOException("GeoIP map too large");
            Map<Object,Object> map=new HashMap<>();for(int i=0;i<size;i++){Object key=decode(cursor,depth+1);Object value=decode(cursor,depth+1);map.put(key,value);}return map;
        }
        if(type==11){if(size>1024)throw new IOException("GeoIP array too large");for(int i=0;i<size;i++)decode(cursor,depth+1);return null;}
        if(type==14)return size!=0;
        if(cursor.at<0||cursor.at>data.length-size)throw new IOException("Truncated GeoIP value");
        int position=cursor.at;cursor.at+=size;
        if(type==2)return new String(data,position,size,StandardCharsets.UTF_8);
        if(type==5||type==6||type==8||type==9){if(size>8)throw new IOException("GeoIP number too large");return unsigned(position,size);}
        return null;
    }
}
