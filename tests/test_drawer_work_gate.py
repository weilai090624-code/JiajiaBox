"""Exercise actual UI publication gating with controlled attachment and frame callbacks."""
import subprocess
import tempfile
import unittest
from pathlib import Path
from test_popup_backdrop import ROOT, STUBS

HARNESS = """
package io.nekohasekai.sagernet.ui;
import android.view.View;
public class GatePublicationTest {
 static void check(boolean ok,String message){if(!ok)throw new AssertionError(message);}
 public static void main(String[] args){
  View root=new View(new android.content.Context()),page=new View(new android.content.Context());root.attach();page.root=root;page.attach();int[] applied={0};
  DrawerWorkGate.Lease lease=DrawerWorkGate.begin(root);
  DrawerWorkGate.post(root,page,()->applied[0]=1);
  check(applied[0]==0&&root.frames.isEmpty(),"route rows wait during morph");
  DrawerWorkGate.post(root,page,()->applied[0]=2);
  lease.close();check(applied[0]==0&&root.frames.size()==1,"release schedules one frame rather than running bulk work in completion");
  root.frame();check(applied[0]==2,"latest route result wins");
  lease=DrawerWorkGate.begin(root);DrawerWorkGate.post(root,page,()->applied[0]=3);page.detach();lease.close();root.frame();
  check(applied[0]==2,"discard publication for a removed route page");
  page.attach();DrawerWorkGate.post(root,page,()->applied[0]=4);check(applied[0]==4,"idle route publication is immediate after dispatch");
  java.util.List<Integer> rows=java.util.Arrays.asList(1,2,3,4,5);java.util.List<Integer> output=new java.util.ArrayList<>();
  lease=DrawerWorkGate.begin(root);
  DrawerRows.post(root,page,rows,part->{for(Object value:part)output.add((Integer)value);android.os.SystemClock.now+=4;});
  check(output.isEmpty(),"row batches wait for animation");lease.close();root.frame();
  check(output.equals(java.util.Arrays.asList(1))&&page.frames.size()==1,"time budget limits first batch");
  lease=DrawerWorkGate.begin(root);page.frame();check(output.size()==1,"a new transition pauses remaining row batches");
  lease.close();root.frame();while(!page.frames.isEmpty())page.frame();check(output.equals(rows),"all rows eventually render in original order");
  int[] empty={0};DrawerRows.post(root,page,java.util.Collections.emptyList(),part->{check(part.isEmpty(),"empty model preserved");empty[0]++;});
  check(empty[0]==1,"empty-state renderer runs once");
  output.clear();DrawerRows.post(root,page,rows,part->{output.add((Integer)part.get(0));android.os.SystemClock.now+=4;});
  page.detach();page.frame();check(output.size()==1,"removed page cancels remaining batches");page.attach();
  lease=DrawerWorkGate.begin(root);DrawerWorkGate.post(root,page,()->applied[0]=5);root.detach();lease.close();root.frame();
  check(applied[0]==4&&root.frames.isEmpty(),"window teardown cancels pending work");
  System.out.println("PASS: real route gate and row batches: morph deferral, latest-only result, time budget, order, empty state, mid-batch pause, stale page and teardown cancellation");
 }
}
"""


class DrawerWorkGateTest(unittest.TestCase):
    def test_actual_publication_queue(self):
        stubs = dict(STUBS)
        stubs["android/view/View.java"] = stubs["android/view/View.java"].replace("public class View {", """public class View {
 public View root=this; public java.util.List<Runnable> frames=new java.util.ArrayList<>();
 public void postOnAnimation(Runnable r){frames.add(r);} public boolean removeCallbacks(Runnable r){return frames.remove(r);}
 public void frame(){java.util.List<Runnable> batch=new java.util.ArrayList<>(frames);frames.clear();for(Runnable r:batch)r.run();}
""").replace("public View getRootView(){return this;}", "public View getRootView(){return root;}")
        with tempfile.TemporaryDirectory(prefix="jj-route-gate-") as temp:
            folder = Path(temp)
            for name, code in stubs.items():
                p = folder / name
                p.parent.mkdir(parents=True, exist_ok=True)
                p.write_text(code)
            (folder / "io/nekohasekai/sagernet/ui/GatePublicationTest.java").write_text(HARNESS)
            sources = [ROOT / "addon-src/io/nekohasekai/sagernet/ui" / (name + ".java") for name in ["DrawerWorkGate", "MotionWorkQueue", "DrawerRows"]]
            cmd = ["javac", "--release", "8", "-d", str(folder / "classes"), *map(str, folder.rglob("*.java")), *map(str, sources)]
            result = subprocess.run(cmd, capture_output=True, text=True)
            self.assertEqual(result.returncode, 0, result.stdout + result.stderr)
            result = subprocess.run(["java", "-cp", str(folder / "classes"), "io.nekohasekai.sagernet.ui.GatePublicationTest"], capture_output=True, text=True)
            self.assertEqual(result.returncode, 0, result.stdout + result.stderr)
            print(result.stdout.strip())


if __name__ == "__main__":
    unittest.main()
