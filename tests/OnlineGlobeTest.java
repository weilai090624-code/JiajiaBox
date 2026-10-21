import io.nekohasekai.sagernet.ui.GlobeCountries;
import io.nekohasekai.sagernet.ui.GlobeTopology;
import io.nekohasekai.sagernet.ui.GlobeQueryStatus;
import java.util.*;
import org.json.*;

/** Run on ART: online results, coordinates, aggregation, and failure behavior. */
public final class OnlineGlobeTest {
 static void check(boolean ok,String message){if(!ok)throw new AssertionError(message);}
 static JSONObject location(String ip,String country,double lon,double lat)throws Exception{
  return new JSONObject().put("ip",ip).put("country_code",country).put("longitude",lon).put("latitude",lat).put("source","ip.sb").put("checked_at",12345);
 }
 static JSONObject row(String outbound,String ip)throws Exception{return new JSONObject().put("outbound",outbound).put("outboundType","direct".equals(outbound)?"direct":"socks").put("metadata",new JSONObject().put("destinationIP",ip));}
 static JSONObject find(JSONArray values,String field,String value)throws Exception{
  for(int i=0;i<values.length();i++)if(value.equals(values.getJSONObject(i).optString(field)))return values.getJSONObject(i);
  throw new AssertionError("missing "+field+"="+value);
 }
 public static void main(String[] args)throws Exception{
  Locale.setDefault(Locale.CHINA);
  JSONObject exits=new JSONObject().put("node-a",location("8.8.8.8","HK",114.1779,22.3829)).put("node-b",location("8.8.8.8","HK",114.1779,22.3829)).put("node-c",location("9.9.9.9","TW",121.53,25.04));
  JSONObject targets=new JSONObject().put("1.36.1.1",location("1.36.1.1","HK",114.1779,22.3829)).put("8.8.8.8",location("8.8.8.8","HK",114.17,22.3)).put("1.160.0.1",location("1.160.0.1","TW",121.53,25.04)).put("223.5.5.5",location("223.5.5.5","CN",121.47,31.23));
  JSONObject locations=new JSONObject().put("provider","ip.sb").put("api_version",2).put("self",location("223.5.5.5","CN",121.47,31.23)).put("exits",exits).put("targets",targets);
  JSONArray rows=new JSONArray().put(row("node-a","1.36.1.1")).put(row("node-a","1.36.1.1")).put(row("node-b","8.8.8.8")).put(row("node-c","1.160.0.1")).put(row("direct","223.5.5.5"));
  JSONObject graph=GlobeTopology.build(rows,new JSONObject(),locations);
  check(graph.getInt("exitCount")==2,"same exit IP must merge nodes");check(graph.getInt("unknown")==0,"all online targets resolved");
  JSONArray countries=graph.getJSONArray("countries"),nodes=graph.getJSONArray("nodes"),links=graph.getJSONArray("links");
  check(countries.length()==3,"CN HK TW remain separate");check(find(countries,"code","HK").getInt("count")==3,"same country combines different target IPs");
  check("香港".equals(find(countries,"code","HK").getString("name"))&&"台湾".equals(find(countries,"code","TW").getString("name")),"short regional names");
  JSONObject self=find(nodes,"id","self");check(self.getDouble("lon")==121.47&&self.getDouble("lat")==31.23,"self uses API coordinates, not fixed CN center");
  int exitsFound=0,requestBranches=0,uplinks=0;boolean merged=false;
  for(int i=0;i<nodes.length();i++){JSONObject n=nodes.getJSONObject(i);if("exit".equals(n.optString("role"))){exitsFound++;if("HK".equals(n.getString("code"))){check(n.getDouble("lon")==114.1779&&n.getDouble("lat")==22.3829,"exit uses online coordinates and country");merged=n.getInt("members")==2;}}}
  for(int i=0;i<links.length();i++){JSONObject edge=links.getJSONObject(i);if("request".equals(edge.getString("kind"))){requestBranches++;if("dest:HK".equals(edge.getString("to")))check(edge.getInt("count")==3,"shared branch connection count");}if("uplink".equals(edge.getString("kind")))uplinks++;}
  check(exitsFound==2&&merged&&uplinks==2&&requestBranches==2,"shared trunk and separate region branches");
  JSONObject hk=find(nodes,"id","dest:HK");check(hk.getDouble("lon")==GlobeCountries.center("HK")[0],"country-grouped destination remains representative");
  String serialized=graph.toString();check(!serialized.contains("8.8.8.8")&&!serialized.contains("223.5.5.5"),"WebView must not receive raw IPs");
  exits.getJSONObject("node-a").put("stale",true).put("error","http_403");
  JSONObject staleGraph=GlobeTopology.build(rows,new JSONObject(),locations);
  check(staleGraph.getInt("exitCount")==2,"temporary failure must retain a marked last online exit");
  boolean staleNode=false;for(int i=0;i<staleGraph.getJSONArray("nodes").length();i++){JSONObject node=staleGraph.getJSONArray("nodes").getJSONObject(i);staleNode|=node.optBoolean("stale");}check(staleNode,"stale coordinates explicitly marked");
  check(GlobeQueryStatus.summary(locations).contains("上次"),"visible stale status");
  check(GlobeQueryStatus.report(locations).contains("HTTP 403"),"HTTP failures visible locally");
  check(GlobeQueryStatus.summary(new JSONObject()).contains("重连"),"old native API explicitly requests restart");
  check(GlobeQueryStatus.summary(new JSONObject().put("client_error","controller_timeout")).contains("读取内核超时"),"controller errors not swallowed");
  exits.getJSONObject("node-a").remove("stale");exits.getJSONObject("node-a").remove("error");
  targets.put("1.36.1.1",new JSONObject().put("pending",true));
  JSONObject pending=GlobeTopology.build(rows,new JSONObject(),locations);check(pending.getBoolean("pending")&&pending.getInt("unknown")==2,"pending target has no fabricated offline country");
  targets.put("1.36.1.1",new JSONObject().put("error","rate_limited"));
  JSONObject failed=GlobeTopology.build(rows,new JSONObject(),locations);check(failed.getBoolean("lookupFailed")&&failed.getInt("unknown")==2,"failed online result remains unlocated");
  JSONObject empty=GlobeTopology.build(rows,new JSONObject(),new JSONObject());check(empty.getJSONArray("nodes").length()==0&&empty.getJSONArray("links").length()==0&&empty.getInt("unknown")==5,"no silent fallback to offline database");
  JSONObject noCoordinates=location("223.5.5.5","CN",999,999);locations.put("self",noCoordinates);
  JSONObject fallback=find(GlobeTopology.build(rows,new JSONObject(),locations).getJSONArray("nodes"),"id","self");check(fallback.getDouble("lon")==104&&fallback.getDouble("lat")==35,"missing/invalid API coordinates use country representative");
  System.out.println("PASS: online country overrides offline assumptions; exact self/exit coordinates; CN/HK/TW split; shared trunks/branches; no raw IP leakage; pending/failure/empty states");
 }
}
