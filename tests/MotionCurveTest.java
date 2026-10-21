import io.nekohasekai.sagernet.ui.AppMotion;
import io.nekohasekai.sagernet.ui.DrawerMotion;

/** Numerical reference and interruption checks for the user-selected motion curve. */
public final class MotionCurveTest {
    private static double reference(double input) {
        double low=0,high=1;
        for(int i=0;i<60;i++) {
            double t=(low+high)/2,rest=1-t;
            double x=3*rest*rest*t*.16+3*rest*t*t*.3+t*t*t;
            if(x<input)low=t;else high=t;
        }
        double t=(low+high)/2,rest=1-t;
        return 3*rest*rest*t+3*rest*t*t+t*t*t;
    }
    private static void close(double actual,double expected,String label) {
        if(Math.abs(actual-expected)>2e-6)throw new AssertionError(label+": "+actual+" != "+expected);
    }
    public static void main(String[] args) throws Exception {
        float previous=0;
        DrawerMotion.Track forward=new DrawerMotion.Track(-120.5f,87.25f);
        DrawerMotion.Track backward=new DrawerMotion.Track(87.25f,-120.5f);
        DrawerMotion.Ease drawer=new DrawerMotion.Ease();
        for(int i=0;i<=2000;i++) {
            float t=i/2000f,value=AppMotion.ease(t);
            close(value,reference(t),"cubic reference at "+t);
            close(drawer.getInterpolation(t),value,"drawer curve");
            close(AppMotion.CURVE.getInterpolation(t),value,"platform curve");
            if(value<previous||value<0||value>1)throw new AssertionError("curve overshot or reversed");
            close((forward.value(t)+120.5)/207.75,reference(t),"geometry curve");
            close((87.25-backward.value(t))/207.75,reference(t),"reverse geometry curve");
            close(forward.at(value),forward.value(t),"shared eased forward track");
            close(backward.at(value),backward.value(t),"shared eased reverse track");
            previous=value;
        }
        float interrupted=forward.value(.23f);
        DrawerMotion.Track reversed=new DrawerMotion.Track(interrupted,-120.5f);
        close(reversed.value(0),interrupted,"interruption continuity");
        close(reversed.value(1),-120.5,"exact reverse endpoint");
        close(AppMotion.ease(-1),0,"negative clamp");
        close(AppMotion.ease(Float.NaN),0,"invalid clamp");
        close(AppMotion.ease(2),1,"upper clamp");
        Class<?> morph=Class.forName("io.nekohasekai.sagernet.ui.DrawerMorph");
        java.lang.reflect.Field open=morph.getDeclaredField("OPEN_MS"),close=morph.getDeclaredField("CLOSE_MS");
        open.setAccessible(true);close.setAccessible(true);
        if(open.getLong(null)!=630||close.getLong(null)!=480)throw new AssertionError("drawer timing preset");
        System.out.println("PASS: 2001 cubic reference samples, monotonic bounds, shared curve, drawer geometry and interruption endpoints");
        System.out.println("PASS: packaged drawer timings: open 630 ms, close 480 ms");
    }
}
