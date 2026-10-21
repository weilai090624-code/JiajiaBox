package io.nekohasekai.sagernet.ui;

import java.text.DateFormat;
import java.util.*;
import org.json.*;

/** Local diagnostics only: raw IPs in this report never enter the WebView. */
public final class GlobeQueryStatus {
    private GlobeQueryStatus(){}
    public static String error(String code){
        if(code.startsWith("http_"))return "HTTP "+code.substring(5);
        switch(code){
            case "dns":return "DNS 解析失败";
            case "tls":return "证书验证失败";
            case "timeout":return "查询超时";
            case "connection_closed":return "连接被中断";
            case "rate_limited":return "接口限流，等待重试";
            case "invalid_response":return "响应不是有效 JSON";
            case "invalid_location":return "IP 或地区响应不匹配";
            case "controller_timeout":return "读取内核超时";
            case "controller_error":return "内核接口不可用，请重连";
            case "core_mismatch":return "请重连加载新内核";
            case "":return "未定位";
            default:return "网络连接失败";
        }
    }
    private static List<JSONObject> records(JSONObject locations){
        List<JSONObject> records=new ArrayList<>();JSONObject self=locations.optJSONObject("self");if(self!=null)records.add(self);
        for(String group:new String[]{"exits","targets"}){JSONObject values=locations.optJSONObject(group);if(values==null)continue;Iterator<String> keys=values.keys();while(keys.hasNext()){JSONObject value=values.optJSONObject(keys.next());if(value!=null)records.add(value);}}
        return records;
    }
    public static String summary(JSONObject locations){
        if(!locations.optString("client_error").isEmpty())return error(locations.optString("client_error"));
        if(locations.optInt("api_version")!=2)return error("core_mismatch");
        boolean pending=false,stale=false,known=false;String firstError="";
        for(JSONObject value:records(locations)){pending|=value.optBoolean("pending");stale|=value.optBoolean("stale");known|="ip.sb".equals(value.optString("source"));if(firstError.isEmpty())firstError=value.optString("error");}
        if(stale)return "保留上次结果";
        if(!firstError.isEmpty())return pending?"部分失败，点此查看":error(firstError);
        return pending?"查询中":known?"在线":"等待定位";
    }
    private static void append(StringBuilder out,String label,JSONObject value){
        out.append('\n').append(label).append('：');
        if(value==null){out.append("未取得结果\n");return;}
        String ip=value.optString("ip");out.append(ip.isEmpty()?"公网 IP 尚未取得":ip).append('\n');
        String country=value.optString("country_code");if(!country.isEmpty())out.append("地区：").append(GlobeCountries.name(country,Locale.getDefault())).append('\n');
        String failure=value.optString("error");
        if(!failure.isEmpty())out.append("失败原因：").append(error(failure)).append('\n');
        if(value.optBoolean("pending"))out.append("状态：排队或查询中\n");
        if(value.optBoolean("stale"))out.append("状态：上次在线结果，当前刷新未成功\n");
        long checked=value.optLong("checked_at");if(checked>0)out.append("上次成功：").append(DateFormat.getDateTimeInstance().format(new Date(checked))).append('\n');
    }
    public static String report(JSONObject locations){
        StringBuilder out=new StringBuilder("本地测试版 308\n查询服务：IP.SB\n状态：").append(summary(locations)).append('\n');
        if(locations.optInt("api_version")!=2)out.append("安装后请断开并重新连接代理，以加载对应内核。\n");
        append(out,"本机",locations.optJSONObject("self"));
        JSONObject exits=locations.optJSONObject("exits");if(exits!=null){Iterator<String> keys=exits.keys();int index=0;while(keys.hasNext()&&index<32)append(out,"出口 "+(++index),exits.optJSONObject(keys.next()));}
        JSONObject targets=locations.optJSONObject("targets");if(targets!=null){Iterator<String> keys=targets.keys();int index=0;while(keys.hasNext()&&index++<32){String ip=keys.next();append(out,"请求目标 "+ip,targets.optJSONObject(ip));}if(targets.length()>32)out.append("另有 ").append(targets.length()-32).append(" 个请求 IP\n");}
        return out.append("\n本机／出口约 30 秒刷新；目标结果复用 60 秒。新 IP 按接口限制逐步查询。此报告仅在本机显示。").toString();
    }
}
