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
import android.app.Activity;
import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import java.util.Map;
import java.util.WeakHashMap;

public final class HomeSwipeController {
    // Activity.dispatchTouchEvent runs before child listeners. Decide ownership at DOWN,
    // before the global page-swipe recognizer can send CANCEL to an interactive globe.
    private static final Map<View,Rect> exclusiveTouches=new WeakHashMap<>();
    public static void exclusiveTouch(View view,boolean enabled){if(enabled)exclusiveTouches.put(view,new Rect());else exclusiveTouches.remove(view);}
    private static boolean childOwnsGesture(View root,float x,float y){
        for(Map.Entry<View,Rect> entry:exclusiveTouches.entrySet()){
            View child=entry.getKey();Rect area=entry.getValue();
            if(child.getRootView()==root&&child.isShown()&&child.getGlobalVisibleRect(area)&&area.contains((int)x,(int)y))return true;
        }
        return false;
    }
    public interface Host {
        boolean canSwipe(boolean toBlank);
        View[] prepareSwipe(boolean toBlank);
        void finishSwipe(boolean toBlank, boolean completed);
    }

    private static int movingControllers;
    private boolean motionRegistered;
    private DrawerWorkGate.Lease motionLease;
    private DrawerLayers.Lease outgoingLayer,incomingLayer;
    private boolean layerRetry;
    private final Runnable cacheAfterLayout=()->{layerRetry=false;if(this.active)cachePages(false);};
    private void cachePages(boolean retry){
        if(outgoingLayer==null)outgoingLayer=DrawerLayers.acquire(outgoing);
        if(incomingLayer==null)incomingLayer=DrawerLayers.acquire(incoming);
        if(retry&&!layerRetry&&(outgoingLayer==null||incomingLayer==null)){
            layerRetry=true;activity.getWindow().getDecorView().postOnAnimation(cacheAfterLayout);
        }
    }
    private View[] prepare(boolean direction){
        beginMotion();
        try{
            View[] views=host.prepareSwipe(direction);
            if(views==null||views.length<2||views[0]==null||views[1]==null){endMotion();return null;}
            return views;
        }catch(RuntimeException|Error failure){endMotion();throw failure;}
    }
    public static boolean isMoving(){return movingControllers>0;}
    private void beginMotion(){if(!motionRegistered){motionRegistered=true;movingControllers++;motionLease=DrawerWorkGate.begin(activity.getWindow().getDecorView());}}
    private void endMotion(){
        activity.getWindow().getDecorView().removeCallbacks(cacheAfterLayout);layerRetry=false;
        if(outgoingLayer!=null){outgoingLayer.close();outgoingLayer=null;}
        if(incomingLayer!=null){incomingLayer.close();incomingLayer=null;}
        if(motionRegistered){motionRegistered=false;movingControllers--;if(motionLease!=null){motionLease.close();motionLease=null;}}}
    private final Activity activity;
    private final Host host;
    private final float touchSlop;
    private float startX;
    private float startY;
    private float distance;
    private float width;
    private View outgoing;
    private View incoming;
    private ValueAnimator animator;
    private boolean eligible;
    private boolean active;
    private boolean settling;
    private boolean toBlank;
    private boolean takeover,settleDestination;
    private float takeoverDistance;

    public HomeSwipeController(Activity activity, Host host) {
        this.activity = activity;
        this.host = host;
        touchSlop = ViewConfiguration.get(activity).getScaledTouchSlop();
    }

    public void reset() {
        if (animator != null) {
            animator.removeAllListeners();
            animator.removeAllUpdateListeners();
            animator.cancel();
            animator = null;
        }
        eligible = false;
        active = false;
        settling = false;
        if (outgoing != null) outgoing.setTranslationX(0);
        if (incoming != null) incoming.setTranslationX(0);
        try{if (outgoing != null && incoming != null) host.finishSwipe(toBlank, false);}finally{endMotion();}
        outgoing = null;
        incoming = null;
    }

    public int onTouch(MotionEvent event) {
        int action = event.getActionMasked();
        if(settling){
            if(action!=MotionEvent.ACTION_DOWN)return 1;
            stopAnimator();settling=false;active=true;eligible=true;takeover=true;takeoverDistance=distance;
            startX=event.getX()+(toBlank?distance:-distance);startY=event.getY();
            return 1;
        }
        if (action == MotionEvent.ACTION_DOWN) {
            if(active)reset();
            active = false;
            distance = 0;takeover=false;
            toBlank = host.canSwipe(true);
            eligible = (toBlank || host.canSwipe(false))
                && !childOwnsGesture(activity.getWindow().getDecorView(),event.getX(),event.getY())
                && event.getX() > 32 * activity.getResources().getDisplayMetrics().density
                && event.getX() < activity.getWindow().getDecorView().getWidth()
                    - 24 * activity.getResources().getDisplayMetrics().density;
            startX = event.getX();
            startY = event.getY();
            return 0;
        }
        if (!eligible && !active) return 0;
        if (action == MotionEvent.ACTION_MOVE) {
            float dx = event.getX() - startX;
            float dy = event.getY() - startY;
            if (!active) {
                if (Math.abs(dy) > touchSlop && Math.abs(dy) > Math.abs(dx)) {
                    eligible = false;
                    return 0;
                }
                if (Math.abs(dx) < touchSlop || Math.abs(dx) < Math.abs(dy) * 1.3f) return 0;
                if (toBlank ? dx >= 0 : dx <= 0) {
                    eligible = false;
                    return 0;
                }
                View[] views = prepare(toBlank);
                if (views == null || views[0] == null || views[1] == null) {
                    eligible = false;
                    return 0;
                }
                outgoing = views[0];
                incoming = views[1];
                width = Math.max(outgoing.getWidth(), activity.getWindow().getDecorView().getWidth());
                if (width <= 0) {
                    host.finishSwipe(toBlank, false);endMotion();
                    outgoing = null;incoming = null;
                    eligible = false;
                    return 0;
                }
                beginMotion();
                active = true;
                cachePages(true);
                apply(Math.min(Math.abs(dx), width));
                return 2;
            }
            float delta = event.getX() - startX;
            apply(Math.max(0, Math.min(width, toBlank ? -delta : delta)));
            return 1;
        }
        if (active && (action == MotionEvent.ACTION_UP || action == MotionEvent.ACTION_CANCEL
                || action == MotionEvent.ACTION_POINTER_DOWN)) {
            boolean completed=distance>width*.12f;
            if(takeover)completed=Math.abs(distance-takeoverDistance)>touchSlop?distance>takeoverDistance:settleDestination;
            settle(action==MotionEvent.ACTION_UP&&completed);
            return 1;
        }
        if (action == MotionEvent.ACTION_UP || action == MotionEvent.ACTION_CANCEL
                || action == MotionEvent.ACTION_POINTER_DOWN) eligible = false;
        return 0;
    }

    public void backToHome() {
        if(settling||active){settle(!toBlank);return;}
        if(!host.canSwipe(false))return;
        View[] views = prepare(false);
        if (views == null || views[0] == null || views[1] == null) return;
        toBlank = false;
        outgoing = views[0];
        incoming = views[1];
        width = Math.max(outgoing.getWidth(), activity.getWindow().getDecorView().getWidth());
        if (width <= 0) {
            host.finishSwipe(false, false);endMotion();
            outgoing = null;incoming = null;
            return;
        }
        beginMotion();
        active = true;
        cachePages(true);
        apply(0);
        settle(true);
    }

    private void apply(float progress) {
        if(distance==progress&&outgoing.getTranslationX()==(toBlank?-progress:progress)&&incoming.getTranslationX()==(toBlank?width-progress:progress-width))return;
        distance = progress;
        outgoing.setTranslationX(toBlank ? -progress : progress);
        incoming.setTranslationX(toBlank ? width - progress : progress - width);
    }

    private void stopAnimator(){
        if(animator!=null){animator.removeAllListeners();animator.removeAllUpdateListeners();animator.cancel();animator=null;}
    }
    private void settle(boolean completed) {
        stopAnimator();settleDestination=completed;
        settling = true;
        float start = distance;
        float end = completed ? width : 0;
        animator = ValueAnimator.ofFloat(start, end);
        animator.setDuration(Math.max(165, Math.round(540 * Math.abs(end - start) / width)));
        animator.setInterpolator(AppMotion.CURVE);
        animator.addUpdateListener(animation -> apply((Float) animation.getAnimatedValue()));
        animator.addListener(new AnimatorListenerAdapter() {
            @Override public void onAnimationEnd(Animator animation) {
                if(animator!=animation)return;
                outgoing.setTranslationX(0);
                incoming.setTranslationX(0);
                try{host.finishSwipe(toBlank, completed);}finally{endMotion();}
                animator = null;
                active = false;
                eligible = false;
                settling = false;
                outgoing = null;
                incoming = null;
            }
        });
        animator.start();
    }
}

