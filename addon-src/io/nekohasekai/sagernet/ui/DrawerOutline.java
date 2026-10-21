/* Copyright (c) 2026 weilai090624-code. MIT license; see LICENSE. */
package io.nekohasekai.sagernet.ui;

import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewOutlineProvider;

/** The morph's rounded viewport is clipped by the render node, independently of child display lists. */
public final class DrawerOutline {
    private static final int TAG=0x7f0a0f80;
    private DrawerOutline(){}

    public static final class Scope extends ViewOutlineProvider implements View.OnAttachStateChangeListener {
        private JJGlassCapsule capsule;
        private final ViewOutlineProvider previous;
        private final boolean clipped;
        Scope(JJGlassCapsule capsule){this.capsule=capsule;previous=capsule.getOutlineProvider();clipped=capsule.getClipToOutline();}
        @Override public void getOutline(View view,Outline outline){
            JJGlassCapsule target=capsule;
            if(target==null){outline.setEmpty();return;}
            Rect clip=target.getMorphClipForBackdrop();
            float dp=target.getCornerRadiusDp(),half=target.getHeight()*.5f;
            float radius=dp<0?half:Math.min(dp*target.getResources().getDisplayMetrics().density,half);
            if(clip==null)outline.setRoundRect(0,0,target.getWidth(),target.getHeight(),radius);
            else outline.setRoundRect(clip,radius);
        }
        public void close(){
            JJGlassCapsule target=capsule;if(target==null)return;capsule=null;
            target.removeOnAttachStateChangeListener(this);
            if(target.getTag(TAG)==this){
                target.setTag(TAG,null);
                target.setClipToOutline(clipped);target.setOutlineProvider(previous);target.invalidateOutline();
            }
        }
        public void onViewAttachedToWindow(View view){}
        public void onViewDetachedFromWindow(View view){close();}
    }

    static Scope acquire(JJGlassCapsule capsule){
        if(!capsule.isHardwareAccelerated()||capsule.getTag(TAG)!=null)return null;
        Scope scope=new Scope(capsule);capsule.setTag(TAG,scope);
        capsule.setOutlineProvider(scope);capsule.setClipToOutline(true);
        capsule.addOnAttachStateChangeListener(scope);capsule.invalidateOutline();return scope;
    }
    public static boolean nativeClip(View view,Canvas canvas){
        Object scope=view.getTag(TAG);
        return canvas.isHardwareAccelerated()&&scope instanceof Scope&&view.getClipToOutline()&&view.getOutlineProvider()==scope;
    }
    public static void changed(View view){if(view.getTag(TAG) instanceof Scope)view.invalidateOutline();}
}
