"""Exercise real drawer texture leases without installing or launching an APK."""
import subprocess
import tempfile
import unittest
from pathlib import Path
from test_popup_backdrop import STUBS, ROOT

HARNESS = """
package io.nekohasekai.sagernet.ui;
import android.view.View;
public class DrawerLayersTest {
 static void check(boolean value,String message){if(!value)throw new AssertionError(message);}
 static View view(){View v=new View(new android.content.Context());v.attach();return v;}
 public static void main(String[] args){
  View v=view();DrawerLayers.Lease first=DrawerLayers.acquire(v),second=DrawerLayers.acquire(v);
  check(first!=null&&first==second&&v.getLayerType()==2,"overlapping transitions share one texture");
  first.close();check(v.getLayerType()==2,"one lease cannot evict another's texture");
  second.close();second.close();check(v.getLayerType()==0&&v.listeners.isEmpty(),"final release restores layer and listener state");
  v=view();v.setLayerType(1,null);check(DrawerLayers.acquire(v)==null&&v.getLayerType()==1,"preserve software layers");
  v.setLayerType(2,null);check(DrawerLayers.acquire(v)==null&&v.getLayerType()==2,"preserve external hardware layers");
  v=view();DrawerLayers.Lease active=DrawerLayers.acquire(v);v.detach();active.close();check(v.getLayerType()==0&&v.listeners.isEmpty(),"detach releases an interrupted transition");
  v=view();v.accelerated=false;check(DrawerLayers.acquire(v)==null&&v.getLayerType()==0,"software rendering fallback");
  v=view();v.layout(0,0,0,0);check(DrawerLayers.acquire(v)==null,"unmeasured views do not allocate textures");
  check(DrawerLayers.acquire(null)==null,"optional absent menu");
  v=view();DrawerLayers.bind(v);DrawerLayers.bind(v);check(DrawerWorkGate.observers.size()==1,"menu observes motion only once");
  DrawerWorkGate.moving(true);int changes=v.layerChanges;check(v.getLayerType()==2,"first-level movement acquires cache");
  for(int i=0;i<100;i++)DrawerWorkGate.moving(true);
  check(v.layerChanges==changes,"steady motion never rebuilds a layer");
  DrawerWorkGate.moving(false);check(v.getLayerType()==0,"idle releases menu cache");
  DrawerWorkGate.moving(true);v.detach();check(v.getLayerType()==0&&DrawerWorkGate.observers.isEmpty(),"detach removes gate observer and layer");
  v.attach();check(v.getLayerType()==2&&DrawerWorkGate.observers.size()==1,"reattach during motion safely reacquires");
  DrawerWorkGate.moving(false);v.detach();
  v=view();v.shown=false;DrawerLayers.bind(v);DrawerWorkGate.moving(true);
  check(v.getLayerType()==0&&v.posted.size()==1,"closed drawer schedules just one visibility retry");
  v.shown=true;v.runPosted();check(v.getLayerType()==2&&v.posted.isEmpty(),"first opening acquires after becoming visible");
  DrawerWorkGate.moving(false);v.shown=false;DrawerWorkGate.moving(true);DrawerWorkGate.moving(false);
  check(v.posted.isEmpty()&&v.getLayerType()==0,"cancellation removes pending visibility retry");v.detach();
  System.out.println("PASS: real drawer layers: overlapping transitions, external layers, idle/detach cleanup, repeated binding, reattach, software and unmeasured fallback");
 }
}
"""


class DrawerLayersTest(unittest.TestCase):
    def test_texture_lifecycle(self):
        stubs = dict(STUBS)
        stubs["android/view/View.java"] = stubs["android/view/View.java"].replace(
            "public class View {", """public class View {
 public boolean accelerated=true,shown=true; public int layerChanges; private int layer;
 public java.util.List<Runnable> posted=new java.util.ArrayList<>();
 public void postOnAnimation(Runnable r){posted.add(r);} public boolean removeCallbacks(Runnable r){return posted.remove(r);}
 public void runPosted(){java.util.List<Runnable> batch=new java.util.ArrayList<>(posted);posted.clear();for(Runnable r:batch)r.run();}
 public boolean isHardwareAccelerated(){return accelerated;} public boolean isShown(){return isAttachedToWindow()&&shown;}
 public int getLayerType(){return layer;} public void setLayerType(int type,android.graphics.Paint paint){layer=type;layerChanges++;}
 public static final int LAYER_TYPE_NONE=0,LAYER_TYPE_SOFTWARE=1,LAYER_TYPE_HARDWARE=2;
""")
        stubs["io/nekohasekai/sagernet/ui/DrawerWorkGate.java"] = """
package io.nekohasekai.sagernet.ui;
import android.view.View; import java.util.*;
public class DrawerWorkGate {
 static boolean active; static Map<View,Runnable> observers=new IdentityHashMap<>();
 static void observe(View view,Runnable callback){observers.put(view,callback);} static void unobserve(View view){observers.remove(view);}
 static boolean isMoving(View view){return active;}
 static void moving(boolean value){active=value;for(Runnable r:new ArrayList<>(observers.values()))r.run();}
}
"""
        with tempfile.TemporaryDirectory(prefix="jj-drawer-layer-") as temp:
            folder = Path(temp)
            for name, source in stubs.items():
                path = folder / name
                path.parent.mkdir(parents=True, exist_ok=True)
                path.write_text(source)
            (folder / "io/nekohasekai/sagernet/ui/DrawerLayersTest.java").write_text(HARNESS)
            source = ROOT / "addon-src/io/nekohasekai/sagernet/ui/DrawerLayers.java"
            compiled = subprocess.run(["javac", "--release", "8", "-d", str(folder / "classes"), *map(str, folder.rglob("*.java")), str(source)], capture_output=True, text=True)
            self.assertEqual(compiled.returncode, 0, compiled.stdout + compiled.stderr)
            result = subprocess.run(["java", "-cp", str(folder / "classes"), "io.nekohasekai.sagernet.ui.DrawerLayersTest"], capture_output=True, text=True)
            self.assertEqual(result.returncode, 0, result.stdout + result.stderr)
            print(result.stdout.strip())


if __name__ == "__main__":
    unittest.main()
