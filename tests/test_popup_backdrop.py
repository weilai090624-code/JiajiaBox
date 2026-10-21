"""Run the actual popup binding/transition code with a deterministic window lifecycle.

No Android device state is changed. These small platform doubles exercise dialogs
that bypass UiComponents, nested dialogs, repeated show, and bitmap fallback.
"""
import subprocess
import tempfile
import unittest
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
STUBS = {
    "android/content/Context.java": """
package android.content;
public class Context { public android.content.res.Resources getResources(){return new android.content.res.Resources();} public String getPackageName(){return "test";} }
""",
    "android/content/ContextWrapper.java": """
package android.content;
public class ContextWrapper extends Context { private Context base; public ContextWrapper(Context base){this.base=base;} public Context getBaseContext(){return base;} }
""",
    "android/content/res/Resources.java": """
package android.content.res;
public class Resources { public int getIdentifier(String name,String type,String pkg){return 123;} }
""",
    "android/app/Activity.java": """
package android.app;
public class Activity extends android.content.ContextWrapper { public android.view.Window window; public Activity(){super(new android.content.Context());} public android.view.Window getWindow(){return window;} }
""",
    "android/app/Dialog.java": """
package android.app;
public class Dialog { private android.view.Window window; private boolean showing; private android.content.Context context;
 public Dialog(android.view.Window window){this(window,window==null?new android.content.Context():window.getContext());}
 public Dialog(android.view.Window window,android.content.Context context){this.window=window;this.context=context;} public android.view.Window getWindow(){return window;}
 public android.content.Context getContext(){return context;}
 public void show(){if(!showing){showing=true;if(window!=null)window.getDecorView().attach();}}
 public void dismiss(){if(showing){showing=false;if(window!=null)window.getDecorView().detach();}}
}
""",
    "android/os/Build.java": """
package android.os;
public class Build { public static class VERSION { public static int SDK_INT=31; } }
""",
    "android/os/SystemClock.java": """
package android.os;
public class SystemClock { public static long now; public static long uptimeMillis(){return now;} }
""",
    "android/util/Log.java": """
package android.util;
public class Log { public static int w(String tag,String message,Throwable error){throw new AssertionError(message,error);} }
""",
    "android/view/View.java": """
package android.view;
import java.util.*;
public class View {
 public interface OnAttachStateChangeListener { void onViewAttachedToWindow(View view); void onViewDetachedFromWindow(View view); }
 public static final int IMPORTANT_FOR_ACCESSIBILITY_NO=2;
 private android.content.Context context; private Map<Integer,Object> tags=new HashMap<>();
 public List<OnAttachStateChangeListener> listeners=new ArrayList<>();
 private boolean attached; private float alpha=1; private int width=320,height=640;
 private ViewTreeObserver observer=new ViewTreeObserver();
 public View(android.content.Context context){this.context=context;} public android.content.Context getContext(){return context;}
 public Object getTag(int key){return tags.get(key);} public void setTag(int key,Object value){tags.put(key,value);}
 public void addOnAttachStateChangeListener(OnAttachStateChangeListener l){listeners.add(l);} public void removeOnAttachStateChangeListener(OnAttachStateChangeListener l){listeners.remove(l);}
 public void attach(){attached=true;for(OnAttachStateChangeListener l:new ArrayList<>(listeners))l.onViewAttachedToWindow(this);}
 public void detach(){attached=false;for(OnAttachStateChangeListener l:new ArrayList<>(listeners))l.onViewDetachedFromWindow(this);}
 public boolean isAttachedToWindow(){return attached;} public View getRootView(){return this;}
 public boolean post(Runnable r){r.run();return true;} public void postInvalidateOnAnimation(){} public void invalidate(){}
 public ViewPropertyAnimator animate(){return new ViewPropertyAnimator();} public void startAnimation(android.view.animation.Animation a){}
 public ViewTreeObserver getViewTreeObserver(){return observer;} public void setImportantForAccessibility(int value){}
 public void setAlpha(float value){alpha=value;} public float getAlpha(){return alpha;}
 public int getWidth(){return width;} public int getHeight(){return height;}
 public void layout(int l,int t,int r,int b){width=r-l;height=b-t;} public void draw(android.graphics.Canvas c){} protected void onDraw(android.graphics.Canvas c){}
}
""",
    "android/view/ViewGroup.java": """
package android.view;
public class ViewGroup extends View { private ViewGroupOverlay overlay=new ViewGroupOverlay(); public ViewGroup(android.content.Context c){super(c);} public ViewGroupOverlay getOverlay(){return overlay;} }
""",
    "android/view/ViewGroupOverlay.java": """
package android.view;
public class ViewGroupOverlay { public java.util.Set<View> views=new java.util.HashSet<>(); public void add(View view){views.add(view);} public void remove(View view){views.remove(view);} }
""",
    "android/view/ViewTreeObserver.java": """
package android.view;
public class ViewTreeObserver {
 public interface OnPreDrawListener { boolean onPreDraw(); }
 public java.util.List<OnPreDrawListener> listeners=new java.util.ArrayList<>();
 public boolean isAlive(){return true;} public void addOnPreDrawListener(OnPreDrawListener l){listeners.add(l);} public void removeOnPreDrawListener(OnPreDrawListener l){listeners.remove(l);}
 public void frame(){for(OnPreDrawListener l:new java.util.ArrayList<>(listeners))l.onPreDraw();}
}
""",
    "android/view/ViewPropertyAnimator.java": """
package android.view;
public class ViewPropertyAnimator { public ViewPropertyAnimator setInterpolator(android.animation.TimeInterpolator i){return this;} public void cancel(){} }
""",
    "android/view/WindowManager.java": """
package android.view;
public class WindowManager { public static class LayoutParams { public int windowAnimations; } }
""",
    "android/view/Window.java": """
package android.view;
public class Window { private View decor; private WindowManager.LayoutParams attrs=new WindowManager.LayoutParams();
 public Window(View decor){this.decor=decor;} public View getDecorView(){return decor;} public android.content.Context getContext(){return decor.getContext();}
 public WindowManager.LayoutParams getAttributes(){return attrs;} public void setWindowAnimations(int id){attrs.windowAnimations=id;}
}
""",
    "android/animation/TimeInterpolator.java": "package android.animation; public interface TimeInterpolator { float getInterpolation(float value); }",
    "android/animation/Animator.java": "package android.animation; public class Animator { public void setInterpolator(TimeInterpolator i){} }",
    "android/animation/AnimatorSet.java": "package android.animation; public class AnimatorSet extends Animator { public java.util.List<Animator> getChildAnimations(){return new java.util.ArrayList<>();} }",
    "android/view/animation/Interpolator.java": "package android.view.animation; public interface Interpolator extends android.animation.TimeInterpolator {}",
    "android/view/animation/Animation.java": "package android.view.animation; public class Animation { public void setInterpolator(Interpolator i){} }",
    "android/view/animation/AnimationSet.java": "package android.view.animation; public class AnimationSet extends Animation { public java.util.List<Animation> getAnimations(){return new java.util.ArrayList<>();} }",
    "android/widget/Scroller.java": "package android.widget; public class Scroller { public int duration; public void startScroll(int x,int y,int dx,int dy,int time){duration=time;} }",
    "android/widget/OverScroller.java": "package android.widget; public class OverScroller extends Scroller {}",
    "android/graphics/Paint.java": "package android.graphics; public class Paint { public static final int ANTI_ALIAS_FLAG=1,FILTER_BITMAP_FLAG=2; public Paint(int flags){} }",
    "android/graphics/Bitmap.java": """
package android.graphics;
public class Bitmap { public enum Config { ARGB_8888 } public boolean recycled; public static Bitmap createBitmap(int w,int h,Config c){return new Bitmap();} public void recycle(){recycled=true;} }
""",
    "android/graphics/Rect.java": "package android.graphics; public class Rect { public Rect(int l,int t,int r,int b){} }",
    "android/graphics/Canvas.java": "package android.graphics; public class Canvas { public Canvas(Bitmap b){} public void scale(float x,float y){} public void drawBitmap(Bitmap b,Rect src,Rect dst,Paint p){} public void drawColor(int c){} }",
    "io/nekohasekai/sagernet/ui/FullScreenBackdrop.java": """
package io.nekohasekai.sagernet.ui;
public class FullScreenBackdrop { static int captures; static void blur(android.graphics.Bitmap b,int radius){captures++;} static void refreshNative(android.view.ViewGroup root){} }
""",
    "io/nekohasekai/sagernet/ui/BlurEffects.java": """
package io.nekohasekai.sagernet.ui;
public class BlurEffects { static final int STEPS=48; static int last=-1; static int level(float f){return Math.round(Math.max(0,Math.min(1,f))*STEPS);} static void apply(android.view.View view,int level){last=level;} }
""",
}

HARNESS = """
package io.nekohasekai.sagernet.ui;
import android.app.*;
import android.view.*;
public class PopupLifecycleTest {
 static void check(boolean value,String message){if(!value)throw new AssertionError(message);}
 static PopupBackdrop.Layer layer(View root){return (PopupBackdrop.Layer)root.getTag(0x7f0a0f51);}
 static void frame(View root,long now){android.os.SystemClock.now=now;root.getViewTreeObserver().frame();}
 // Real decor contexts need not wrap an Activity, unlike the dialog's own context.
 static Dialog dialog(Activity host){return new Dialog(new Window(new ViewGroup(new android.content.Context())),new android.content.ContextWrapper(host));}
 public static void main(String[] args){
  Activity host=new Activity();ViewGroup root=new ViewGroup(host);host.window=new Window(root);root.attach();
  Dialog first=dialog(host);AppMotion.show(first);
  check(layer(root)!=null&&layer(root).users==1,"plain three-action dialog must acquire blur without a styled surface");
  AppMotion.show(first);check(layer(root).users==1,"repeated show must bind only once");
  frame(root,0);frame(root,210);check(BlurEffects.last==Math.round(AppMotion.ease(.5f)*48),"fade must use selected curve and 420ms duration");
  frame(root,420);check(BlurEffects.last==48,"visible popup reaches full blur");
  Dialog second=dialog(host);AppMotion.show(second);check(layer(root).users==2,"nested popup retains shared blur");
  first.dismiss();frame(root,500);check(layer(root).users==1&&BlurEffects.last==48,"closing one popup must not clear another's blur");
  second.dismiss();frame(root,920);
  check(layer(root)==null&&BlurEffects.last==0,"last dismissal clears native blur");
  check(root.listeners.isEmpty()&&root.getViewTreeObserver().listeners.isEmpty(),"listeners must be removed after dismissal");
  AppMotion.show(first);frame(root,1340);check(layer(root)!=null&&layer(root).users==1,"same window can reopen");
  root.detach();check(layer(root)==null&&BlurEffects.last==0,"activity teardown clears active blur");first.dismiss();root.attach();
  android.os.Build.VERSION.SDK_INT=30;Dialog bitmap=dialog(host);AppMotion.show(bitmap);
  check(layer(root)!=null&&!layer(root).nativeBlur&&FullScreenBackdrop.captures==1,"pre-31 uses captured bitmap fallback");
  check(root.getOverlay().views.size()==1,"bitmap overlay is installed");
  frame(root,1550);check(Math.abs(layer(root).getAlpha()-AppMotion.ease(.5f))<1e-6,"bitmap opacity follows same curve");
  frame(root,1760);android.graphics.Bitmap image=layer(root).image;bitmap.dismiss();frame(root,2180);
  check(layer(root)==null&&root.getOverlay().views.isEmpty()&&image.recycled,"bitmap dismissal releases image and overlay");
  check(root.listeners.isEmpty()&&root.getViewTreeObserver().listeners.isEmpty(),"fallback cleanup removes listeners");
  android.widget.OverScroller drag=new android.widget.OverScroller();AppMotion.settle(drag,1,2,3,4,400);check(drag.duration==600,"drawer settling slows 1.5x");
  android.widget.Scroller pager=new android.widget.Scroller();AppMotion.settle(pager,1,2,3,4,300);check(pager.duration==450,"pager settling slows 1.5x");
  check(AppMotion.settleDuration(0)==0&&AppMotion.settleDuration(Integer.MAX_VALUE)==Integer.MAX_VALUE,"duration bounds");
  AppMotion.show(new Dialog(null));
  System.out.println("PASS: actual dialog hook, repeated/nested show, native/bitmap fades, reopening, teardown, cleanup, and slower scrollers");
 }
}
"""


class PopupBackdropTest(unittest.TestCase):
    def test_real_binding_and_lifecycle(self):
        with tempfile.TemporaryDirectory(prefix="jj-popup-test-") as temp:
            folder = Path(temp)
            for name, source in STUBS.items():
                path = folder / name
                path.parent.mkdir(parents=True, exist_ok=True)
                path.write_text(source)
            harness = folder / "io/nekohasekai/sagernet/ui/PopupLifecycleTest.java"
            harness.write_text(HARNESS)
            real_sources = ROOT / "addon-src/io/nekohasekai/sagernet/ui"
            sources = list(folder.rglob("*.java")) + [real_sources / (name + ".java") for name in ("AppMotion", "PopupBackdrop", "BlurTransition")]
            compiled = subprocess.run(["javac", "--release", "8", "-d", str(folder / "classes"), *map(str, sources)], capture_output=True, text=True)
            self.assertEqual(compiled.returncode, 0, compiled.stdout + compiled.stderr)
            result = subprocess.run(["java", "-cp", str(folder / "classes"), "io.nekohasekai.sagernet.ui.PopupLifecycleTest"], capture_output=True, text=True)
            self.assertEqual(result.returncode, 0, result.stdout + result.stderr)
            print(result.stdout.strip())


if __name__ == "__main__":
    unittest.main()
