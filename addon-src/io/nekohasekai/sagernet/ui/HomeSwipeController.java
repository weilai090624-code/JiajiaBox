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
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.DecelerateInterpolator;

public final class HomeSwipeController {
    public interface Host {
        boolean canSwipe(boolean toBlank);
        View[] prepareSwipe(boolean toBlank);
        void finishSwipe(boolean toBlank, boolean completed);
    }

    private static int movingControllers;
    private boolean motionRegistered;
    public static boolean isMoving(){return movingControllers>0;}
    private void beginMotion(){if(!motionRegistered){motionRegistered=true;movingControllers++;}}
    private void endMotion(){if(motionRegistered){motionRegistered=false;movingControllers--;}}
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
        endMotion();
        eligible = false;
        active = false;
        settling = false;
        if (outgoing != null) outgoing.setTranslationX(0);
        if (incoming != null) incoming.setTranslationX(0);
        if (outgoing != null && incoming != null) host.finishSwipe(toBlank, false);
        outgoing = null;
        incoming = null;
    }

    public int onTouch(MotionEvent event) {
        int action = event.getActionMasked();
        if (settling) return 1;
        if (action == MotionEvent.ACTION_DOWN) {
            if(active)reset();
            active = false;
            distance = 0;
            toBlank = host.canSwipe(true);
            eligible = (toBlank || host.canSwipe(false))
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
                View[] views = host.prepareSwipe(toBlank);
                if (views == null || views[0] == null || views[1] == null) {
                    eligible = false;
                    return 0;
                }
                outgoing = views[0];
                incoming = views[1];
                width = Math.max(outgoing.getWidth(), activity.getWindow().getDecorView().getWidth());
                if (width <= 0) {
                    host.finishSwipe(toBlank, false);
                    outgoing = null;incoming = null;
                    eligible = false;
                    return 0;
                }
                beginMotion();
                active = true;
                apply(Math.min(Math.abs(dx), width));
                return 2;
            }
            float delta = event.getX() - startX;
            apply(Math.max(0, Math.min(width, toBlank ? -delta : delta)));
            return 1;
        }
        if (active && (action == MotionEvent.ACTION_UP || action == MotionEvent.ACTION_CANCEL
                || action == MotionEvent.ACTION_POINTER_DOWN)) {
            settle(action == MotionEvent.ACTION_UP && distance > width * 0.12f);
            return 1;
        }
        if (action == MotionEvent.ACTION_UP || action == MotionEvent.ACTION_CANCEL
                || action == MotionEvent.ACTION_POINTER_DOWN) eligible = false;
        return 0;
    }

    public void backToHome() {
        if (settling || active || !host.canSwipe(false)) return;
        View[] views = host.prepareSwipe(false);
        if (views == null || views[0] == null || views[1] == null) return;
        toBlank = false;
        outgoing = views[0];
        incoming = views[1];
        width = Math.max(outgoing.getWidth(), activity.getWindow().getDecorView().getWidth());
        if (width <= 0) {
            host.finishSwipe(false, false);
            outgoing = null;incoming = null;
            return;
        }
        beginMotion();
        active = true;
        apply(0);
        settle(true);
    }

    private void apply(float progress) {
        distance = progress;
        outgoing.setTranslationX(toBlank ? -progress : progress);
        incoming.setTranslationX(toBlank ? width - progress : progress - width);
    }

    private void settle(boolean completed) {
        settling = true;
        float start = distance;
        float end = completed ? width : 0;
        animator = ValueAnimator.ofFloat(start, end);
        animator.setDuration(Math.max(110, Math.round(260 * Math.abs(end - start) / width)));
        animator.setInterpolator(new DecelerateInterpolator(1.5f));
        animator.addUpdateListener(animation -> apply((Float) animation.getAnimatedValue()));
        animator.addListener(new AnimatorListenerAdapter() {
            @Override public void onAnimationEnd(Animator animation) {
                outgoing.setTranslationX(0);
                incoming.setTranslationX(0);
                endMotion();
                host.finishSwipe(toBlank, completed);
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

