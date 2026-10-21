"""Check the real native outline owner with controlled Android platform doubles."""
import subprocess
import tempfile
import unittest
from pathlib import Path
from test_popup_backdrop import ROOT, STUBS

HARNESS = """
package io.nekohasekai.sagernet.ui;
import android.view.*;import android.graphics.*;
public class DrawerOutlineTest {
 static void check(boolean ok,String message){if(!ok)throw new AssertionError(message);}
 public static void main(String[] args){
  JJGlassCapsule view=new JJGlassCapsule();view.attach();ViewOutlineProvider original=new ViewOutlineProvider(){public void getOutline(View v,Outline o){o.setEmpty();}};
  view.setOutlineProvider(original);view.setClipToOutline(false);
  DrawerOutline.Scope scope=DrawerOutline.acquire(view);check(scope!=null&&view.getClipToOutline(),"native rounded clipping enabled");
  Canvas canvas=new Canvas(null);check(DrawerOutline.nativeClip(view,canvas),"hardware canvas uses render-node clip");
  canvas.hardware=false;check(!DrawerOutline.nativeClip(view,canvas),"bitmap capture keeps legacy path clipping");canvas.hardware=true;
  Outline outline=new Outline();view.clip=new Rect(15,24,300,550);view.radius=22;
  scope.getOutline(view,outline);check(outline.bounds.left==15&&outline.bounds.top==24&&outline.bounds.right==300&&outline.bounds.bottom==550&&outline.radius==22,"exact morph rectangle and radius");
  view.radius=-1;scope.getOutline(view,outline);check(outline.radius==view.getHeight()*.5f,"automatic radius matches capsule");
  view.clip=null;scope.getOutline(view,outline);check(outline.bounds.right==view.getWidth()&&outline.bounds.bottom==view.getHeight(),"full viewport reset");
  int dirty=view.outlineChanges;DrawerOutline.changed(view);check(view.outlineChanges==dirty+1,"clip changes invalidate only the native outline property");
  check(DrawerOutline.acquire(view)==null,"do not replace an active scope");
  view.setClipToOutline(false);check(!DrawerOutline.nativeClip(view,canvas),"external clip changes must preserve fallback");view.setClipToOutline(true);
  scope.close();scope.close();check(view.getOutlineProvider()==original&&!view.getClipToOutline()&&view.listeners.isEmpty(),"close restores previous outline, clipping and listeners");
  check(!DrawerOutline.nativeClip(view,canvas),"legacy clipping restored after close");
  view.setClipToOutline(true);scope=DrawerOutline.acquire(view);view.detach();scope.close();check(view.getOutlineProvider()==original&&view.getClipToOutline(),"interruption restores originally enabled clipping");
  view.accelerated=false;check(DrawerOutline.acquire(view)==null,"software window keeps original drawing");
  System.out.println("PASS: real outline scope: hardware/software canvas, exact bounds/radius, reset, duplicate scope, cancellation and original clip restoration");
 }
}
"""


class DrawerOutlineTest(unittest.TestCase):
    def test_outline_lifecycle_and_geometry(self):
        stubs = dict(STUBS)
        stubs["android/util/DisplayMetrics.java"] = "package android.util; public class DisplayMetrics { public float density=1; }"
        stubs["android/content/res/Resources.java"] = stubs["android/content/res/Resources.java"].replace("public class Resources {", "public class Resources { public android.util.DisplayMetrics getDisplayMetrics(){return new android.util.DisplayMetrics();}")
        stubs["android/graphics/Rect.java"] = """
package android.graphics;
public class Rect { public int left,top,right,bottom; public Rect(int l,int t,int r,int b){left=l;top=t;right=r;bottom=b;} public Rect(Rect r){this(r.left,r.top,r.right,r.bottom);} }
"""
        stubs["android/graphics/Outline.java"] = """
package android.graphics;
public class Outline { public Rect bounds; public float radius; public void setEmpty(){bounds=null;} public void setRoundRect(int l,int t,int r,int b,float rad){bounds=new Rect(l,t,r,b);radius=rad;} public void setRoundRect(Rect r,float rad){bounds=new Rect(r);radius=rad;} }
"""
        stubs["android/view/ViewOutlineProvider.java"] = "package android.view; public abstract class ViewOutlineProvider { public abstract void getOutline(View view,android.graphics.Outline outline); }"
        stubs["android/graphics/Canvas.java"] = stubs["android/graphics/Canvas.java"].replace("public class Canvas {", "public class Canvas { public boolean hardware=true; public boolean isHardwareAccelerated(){return hardware;}")
        stubs["android/view/View.java"] = stubs["android/view/View.java"].replace("public class View {", """public class View {
 public boolean accelerated=true; public int outlineChanges; private boolean clipped; private ViewOutlineProvider provider;
 public android.content.res.Resources getResources(){return getContext().getResources();} public boolean isHardwareAccelerated(){return accelerated;}
 public void invalidateOutline(){outlineChanges++;} public boolean getClipToOutline(){return clipped;} public void setClipToOutline(boolean value){clipped=value;}
 public ViewOutlineProvider getOutlineProvider(){return provider;} public void setOutlineProvider(ViewOutlineProvider value){provider=value;}
""")
        stubs["io/nekohasekai/sagernet/ui/JJGlassCapsule.java"] = """
package io.nekohasekai.sagernet.ui;
public class JJGlassCapsule extends android.view.View {
 public android.graphics.Rect clip; public float radius=22; public JJGlassCapsule(){super(new android.content.Context());}
 public android.graphics.Rect getMorphClipForBackdrop(){return clip;} public float getCornerRadiusDp(){return radius;}
}
"""
        with tempfile.TemporaryDirectory(prefix="jj-outline-test-") as temp:
            folder = Path(temp)
            for name, code in stubs.items():
                p = folder / name
                p.parent.mkdir(parents=True, exist_ok=True)
                p.write_text(code)
            (folder / "io/nekohasekai/sagernet/ui/DrawerOutlineTest.java").write_text(HARNESS)
            cmd = ["javac", "--release", "8", "-d", str(folder / "classes"), *map(str, folder.rglob("*.java")), str(ROOT / "addon-src/io/nekohasekai/sagernet/ui/DrawerOutline.java")]
            result = subprocess.run(cmd, capture_output=True, text=True)
            self.assertEqual(result.returncode, 0, result.stdout + result.stderr)
            result = subprocess.run(["java", "-cp", str(folder / "classes"), "io.nekohasekai.sagernet.ui.DrawerOutlineTest"], capture_output=True, text=True)
            self.assertEqual(result.returncode, 0, result.stdout + result.stderr)
            print(result.stdout.strip())


if __name__ == "__main__":
    unittest.main()
