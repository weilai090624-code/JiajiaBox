/*
 * Copyright (c) 2026 weilai090624-code
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 */

package io.nekohasekai.sagernet.ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Rect;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import kotlin.jvm.functions.Function0;

/** Fixed-layout content with an animated material viewport. No frame requests layout. */
public final class DrawerMorph {
    private static final int STATE_TAG=0x7f0a0f48;
    private static final long OPEN_MS=630,CLOSE_MS=480;
    private static State state(View view){Object value=view.getTag(STATE_TAG);return value instanceof State?(State)value:null;}

    public static ValueAnimator start(JJGlassCapsule capsule,ViewGroup overlay,View page,View menu,
                                      Rect target,Rect menuBounds,boolean expanding,Function0<?> onEnd){
        State previous=state(capsule);
        Rect from;
        float pageAlpha=expanding&&menu!=null?0f:1f;
        int menuWidth=menu==null?ViewGroup.LayoutParams.MATCH_PARENT:menu.getLayoutParams().width;
        Rect layout;
        if(previous!=null){
            from=new Rect(previous.current);pageAlpha=previous.page.getAlpha();menuWidth=previous.menuWidth;
            layout=new Rect(previous.layout);previous.stop(false);
        }else{
            ViewGroup.MarginLayoutParams lp=(ViewGroup.MarginLayoutParams)capsule.getLayoutParams();
            int width=lp.width>0?lp.width:capsule.getWidth(),height=lp.height>0?lp.height:capsule.getHeight();
            from=new Rect(lp.leftMargin,lp.topMargin,lp.leftMargin+width,lp.topMargin+height);
            layout=new Rect(from);
        }
        layout.union(target);
        State next=new State(capsule,overlay,page,menu,from,new Rect(target),layout,new Rect(menuBounds),
                             expanding,pageAlpha,menuWidth,onEnd,previous);
        capsule.setTag(STATE_TAG,next);
        try{next.prepare();}catch(RuntimeException error){next.stop(true);throw error;}
        return next.animator;
    }

    /** For an immediate dismissal or activity teardown; no obsolete completion is invoked. */
    public static void reset(JJGlassCapsule capsule){State current=state(capsule);if(current!=null)current.stop(true);}

    private static final class State implements ViewTreeObserver.OnPreDrawListener,View.OnAttachStateChangeListener {
        final JJGlassCapsule capsule;
        final ViewGroup overlay;
        final View page,menu;
        final Rect from,target,layout,menuBounds,current,clip=new Rect();
        final boolean expanding;
        final float startPageAlpha;
        final DrawerMotion.Track left,top,right,bottom,opacity,pageOffset,menuOffset;
        float fraction;
        final int menuWidth;
        final Function0<?> onEnd;
        final ValueAnimator animator=ValueAnimator.ofFloat(0f,1f);
        final View shield;
        ViewTreeObserver observer;
        DrawerWorkGate.Lease motionLease;
        DrawerLayers.Lease pageLayer,menuLayer;
        DrawerOutline.Scope outline;
        boolean stopped,finished;
        State(JJGlassCapsule capsule,ViewGroup overlay,View page,View menu,Rect from,Rect target,Rect layout,
              Rect menuBounds,boolean expanding,float pageAlpha,int menuWidth,Function0<?> onEnd,State previous){
            this.capsule=capsule;this.overlay=overlay;this.page=page;this.menu=menu;this.from=from;this.target=target;
            this.layout=layout;this.menuBounds=menuBounds;this.expanding=expanding;this.startPageAlpha=pageAlpha;
            this.menuWidth=menuWidth;this.onEnd=onEnd;current=new Rect(from);
            shield=new View(capsule.getContext());shield.setClickable(true);
            long base=expanding?OPEN_MS:CLOSE_MS;
            long duration=previous==null?base:Math.max(140,Math.round(base*(float)Math.sqrt(Math.abs((expanding?1f:0f)-pageAlpha))));
            float old=previous==null?0:previous.fraction;
            left=new DrawerMotion.Track(from.left,target.left);
            top=new DrawerMotion.Track(from.top,target.top);
            right=new DrawerMotion.Track(from.right,target.right);
            bottom=new DrawerMotion.Track(from.bottom,target.bottom);
            opacity=new DrawerMotion.Track(pageAlpha,expanding?1:0);
            float density=capsule.getContext().getResources().getDisplayMetrics().density;
            pageOffset=new DrawerMotion.Track(previous==null?(expanding?10*density:0):previous.pageOffset.value(old),expanding?0:6*density);
            menuOffset=new DrawerMotion.Track(previous==null?(expanding?0:-4*density):previous.menuOffset.value(old),expanding?-4*density:0);
            // Track.value applies the curve once; this animator is only its elapsed-time clock.
            animator.setDuration(duration);animator.setInterpolator(new LinearInterpolator());
            animator.addUpdateListener(value->{if(!stopped)frame((Float)value.getAnimatedValue());});
            animator.addListener(new AnimatorListenerAdapter(){
                @Override public void onAnimationCancel(Animator value){stop(false);}
                @Override public void onAnimationEnd(Animator value){if(!stopped)finish();}
            });
        }
        void prepare(){
            motionLease=DrawerWorkGate.begin(capsule);
            outline=DrawerOutline.acquire(capsule);
            RosePalette.prepareForDisplay(page);if(menu!=null)RosePalette.prepareForDisplay(menu);
            page.animate().withEndAction(null).cancel();page.setVisibility(View.VISIBLE);
            if(menu!=null){menu.animate().withEndAction(null).cancel();menu.setVisibility(View.VISIBLE);
                ViewGroup.LayoutParams lp=menu.getLayoutParams();int width=Math.max(1,menuBounds.width()-capsule.getPaddingLeft()-capsule.getPaddingRight());
                if(lp.width!=width){lp.width=width;menu.setLayoutParams(lp);}}
            FrameLayout.LayoutParams lp=(FrameLayout.LayoutParams)capsule.getLayoutParams();
            lp.gravity=Gravity.TOP|Gravity.LEFT;
            lp.leftMargin=layout.left;lp.topMargin=layout.top;lp.rightMargin=lp.bottomMargin=0;
            setPhysicalMargins(lp,layout.left,layout.top,capsule);lp.width=layout.width();lp.height=layout.height();
            capsule.setLayoutParams(lp);
            overlay.addView(shield,new FrameLayout.LayoutParams(-1,-1));
            capsule.addOnAttachStateChangeListener(this);frame(0f);
            observer=capsule.getViewTreeObserver();observer.addOnPreDrawListener(this);
        }
        @Override public boolean onPreDraw(){
            removePreDraw();
            if(stopped||state(capsule)!=this)return true;
            // Wait until the destination hierarchy has been measured at its full size.
            pageLayer=DrawerLayers.acquire(page);menuLayer=DrawerLayers.acquire(menu);
            animator.start();return true;
        }
        void removePreDraw(){if(observer!=null&&observer.isAlive())observer.removeOnPreDrawListener(this);observer=null;}
        void frame(float progress){
            fraction=progress;
            float eased=AppMotion.ease(progress);
            current.set(Math.round(left.at(eased)),Math.round(top.at(eased)),
                        Math.round(right.at(eased)),Math.round(bottom.at(eased)));
            clip.set(current);clip.offset(-layout.left,-layout.top);capsule.setMorphClip(clip);
            float x=current.left-layout.left,y=current.top-layout.top;
            page.setTranslationX(x);page.setTranslationY(y+pageOffset.at(eased));
            float alpha=Math.max(0f,Math.min(1f,opacity.at(eased)));page.setAlpha(alpha);
            if(menu!=null){menu.setTranslationX(x);menu.setTranslationY(y+menuOffset.at(eased));menu.setAlpha(1f-alpha);}
        }

        void finish(){
            if(finished||stopped)return;finished=true;frame(1f);
            removePreDraw();capsule.removeOnAttachStateChangeListener(this);overlay.removeView(shield);
            capsule.setTag(STATE_TAG,null);capsule.setMorphClip(null);
            resetTransform(page);if(menu!=null){restoreMenuWidth();resetTransform(menu);}
            FrameLayout.LayoutParams lp=(FrameLayout.LayoutParams)capsule.getLayoutParams();
            setPhysicalMargins(lp,target.left,target.top,capsule);
            lp.width=target.width();lp.height=target.height();capsule.setLayoutParams(lp);
            page.setVisibility(expanding?View.VISIBLE:View.GONE);if(menu!=null)menu.setVisibility(expanding?View.GONE:View.VISIBLE);
            // Activity completion may reparent the capsule; all listeners and clips are gone first.
            try{if(onEnd!=null)onEnd.invoke();}finally{releaseMotion();}
        }
        void stop(boolean reset){
            if(finished)return;
            if(!stopped){stopped=true;removePreDraw();capsule.removeOnAttachStateChangeListener(this);
                overlay.removeView(shield);animator.cancel();releaseMotion();}
            if(reset){capsule.setTag(STATE_TAG,null);capsule.setMorphClip(null);resetTransform(page);
                if(menu!=null){restoreMenuWidth();resetTransform(menu);}}
            // Keep current geometry/compositing for an immediate reverse transition.
        }
        void restoreMenuWidth(){ViewGroup.LayoutParams lp=menu.getLayoutParams();if(lp.width!=menuWidth){lp.width=menuWidth;menu.setLayoutParams(lp);}}
        void releaseMotion(){
            if(outline!=null){outline.close();outline=null;}
            if(pageLayer!=null){pageLayer.close();pageLayer=null;}
            if(menuLayer!=null){menuLayer.close();menuLayer=null;}
            if(motionLease!=null){motionLease.close();motionLease=null;}
        }
        @Override public void onViewAttachedToWindow(View view){}
        @Override public void onViewDetachedFromWindow(View view){stop(true);}
    }
    private static void setPhysicalMargins(FrameLayout.LayoutParams lp,int left,int top,View view){
        lp.leftMargin=left;lp.topMargin=top;lp.rightMargin=lp.bottomMargin=0;
        boolean rtl=view.getLayoutDirection()==View.LAYOUT_DIRECTION_RTL;
        lp.setMarginStart(rtl?0:left);lp.setMarginEnd(rtl?left:0);
    }
    private static void resetTransform(View view){view.setAlpha(1f);view.setTranslationX(0);view.setTranslationY(0);}
    private static int lerp(int from,int to,float fraction){return Math.round(from+(to-from)*fraction);}
}

