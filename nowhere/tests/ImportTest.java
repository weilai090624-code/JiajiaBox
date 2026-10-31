import java.util.ArrayList;
import io.nekohasekai.sagernet.ui.NowhereImport;
import moe.matsuri.nb4a.proxy.config.ConfigBean;
public class ImportTest {
 public static void main(String[] args) {
  String key="0123456789abcdef0123456789abcdef";
  ArrayList<Object> out=new ArrayList<>();
  if(!NowhereImport.add("nowhere://"+key+"@example.org:3002?net=udp&morph=1#JP%20Node",out)) throw new AssertionError();
  ConfigBean b=(ConfigBean)out.get(0);
  if(!b.name.equals("JP Node") || b.type!=1 || !b.config.contains("net=udp") || !b.config.contains("morph=true") || !b.config.contains("server=example.org")) throw new AssertionError();
  if(!NowhereImport.add("nowhere://"+key+"@example.org:3005?net=tcp&morph=0",out)) throw new AssertionError();
  if(!((ConfigBean)out.get(1)).config.contains("morph=false")) throw new AssertionError();
  if(NowhereImport.add("nowhere://bad@example.org:123?net=udp",out) || NowhereImport.add("nowhere://"+key+"@example.org:123?net=bad",out) || NowhereImport.add("vless://anything",out)) throw new AssertionError();
  System.out.println("PASS: TCP/UDP, Morph, names and invalid links");
 }
}
