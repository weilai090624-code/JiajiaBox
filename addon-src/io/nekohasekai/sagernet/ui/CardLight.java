/* Copyright (c) 2026 weilai090624-code. MIT license; see LICENSE. */
package io.nekohasekai.sagernet.ui;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.PixelFormat;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.view.View;
import java.util.WeakHashMap;

/** A short static top light. No timers, extra child views, bitmaps or per-frame allocation. */
public final class CardLight extends Drawable {
    private static final int TAG=0x7f0a0f81;
    private static final WeakHashMap<View,CardLight> lights=new WeakHashMap<>();
    private final Paint paint=new Paint(Paint.ANTI_ALIAS_FLAG);
    private final RectF area=new RectF();
    private float radius,height,shaderTop=Float.NaN,shaderHeight;
    private int color;
    private boolean overlay;
    private CardLight(View view){configure(view);}
    private void configure(View view){
        float nextHeight=14*view.getResources().getDisplayMetrics().density;
        int nextColor=ThemePalette.dark(view.getContext())?0x24ffffff:0x20e9a9c0;
        if(height!=nextHeight||color!=nextColor){height=nextHeight;color=nextColor;shaderTop=Float.NaN;invalidateSelf();}
    }
    private static CardLight light(View view){
        Object tag=view.getTag(TAG);if(tag instanceof CardLight)return (CardLight)tag;
        CardLight light=new CardLight(view);view.setTag(TAG,light);lights.put(view,light);return light;
    }
    public static void bind(View view,float radiusDp){
        // Capsules draw their light inside their real morph bounds, below child content.
        if(view instanceof JJGlassCapsule)return;
        CardLight light=light(view);light.configure(view);
        light.radius=radiusDp*view.getResources().getDisplayMetrics().density;
        light.setBounds(0,0,view.getWidth(),view.getHeight());
        if(!light.overlay){
            light.overlay=true;view.getOverlay().add(light);
            view.addOnLayoutChangeListener((v,l,t,r,b,ol,ot,or,ob)->light.setBounds(0,0,r-l,b-t));
        }
    }
    public static void drawNative(View view,Canvas canvas,RectF bounds,float radius){
        light(view).render(canvas,bounds,radius);
    }
    public static void refreshAll(){
        for(View view:lights.keySet().toArray(new View[0])){CardLight light=lights.get(view);if(light!=null){light.configure(view);view.invalidate();}}
    }
    private void render(Canvas canvas,RectF bounds,float radius){
        if(bounds.width()<=0||bounds.height()<=0)return;
        float reach=Math.min(height,bounds.height());
        if(shaderTop!=bounds.top||shaderHeight!=reach){
            shaderTop=bounds.top;shaderHeight=reach;
            paint.setShader(new LinearGradient(0,bounds.top,0,bounds.top+reach,color,color&0x00ffffff,Shader.TileMode.CLAMP));
        }
        int save=canvas.save();canvas.clipRect(bounds.left,bounds.top,bounds.right,bounds.top+reach);
        canvas.drawRoundRect(bounds,radius,radius,paint);canvas.restoreToCount(save);
    }
    @Override public void draw(Canvas canvas){area.set(getBounds());render(canvas,area,radius);}
    @Override public void setAlpha(int alpha){paint.setAlpha(alpha);invalidateSelf();}
    @Override public void setColorFilter(ColorFilter filter){paint.setColorFilter(filter);invalidateSelf();}
    @Override public int getOpacity(){return PixelFormat.TRANSLUCENT;}
}
