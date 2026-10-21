/* Copyright (c) 2026 weilai090624-code. MIT license; see LICENSE. */
package io.nekohasekai.sagernet.ui;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.TimeInterpolator;
import android.app.Dialog;
import android.content.Context;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.Window;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.Interpolator;

/** Application motion: cubic-bezier(0.16, 1, 0.3, 1), with slower settling. */
public final class AppMotion {
    private AppMotion() {}
    public static final Interpolator CURVE = new Curve();

    private static double parameter(float progress) {
        double low = 0, high = 1, t = progress;
        for (int i = 0; i < 12; i++) {
            double x = ((0.58 * t - 0.06) * t + 0.48) * t;
            double error = x - progress;
            if (Math.abs(error) < 1e-8) break;
            if (error > 0) high = t; else low = t;
            double next = t - error / ((1.74 * t - 0.12) * t + 0.48);
            t = next > low && next < high ? next : (low + high) * 0.5;
        }
        return t;
    }

    public static float ease(float progress) {
        if (!(progress > 0)) return 0;
        if (progress >= 1) return 1;
        double remaining = 1 - parameter(progress);
        return (float) (1 - remaining * remaining * remaining);
    }

    public static final class Curve implements Interpolator {
        @Override public float getInterpolation(float progress) { return ease(progress); }
    }

    public static ViewPropertyAnimator animate(View view) {
        return view.animate().setInterpolator(CURVE);
    }

    public static ViewPropertyAnimator interpolate(ViewPropertyAnimator animator, TimeInterpolator ignored) {
        return animator.setInterpolator(CURVE);
    }

    public static void interpolate(Animator animator, TimeInterpolator ignored) {
        animator.setInterpolator(CURVE);
    }

    public static void interpolate(Animation animation, Interpolator ignored) {
        animation.setInterpolator(CURVE);
    }

    public static void prepare(Animator animator) {
        animator.setInterpolator(CURVE);
        if (animator instanceof AnimatorSet)
            for (Animator child : ((AnimatorSet) animator).getChildAnimations()) prepare(child);
    }

    public static Animation prepare(Animation animation) {
        animation.setInterpolator(CURVE);
        if (animation instanceof AnimationSet)
            for (Animation child : ((AnimationSet) animation).getAnimations()) prepare(child);
        return animation;
    }

    public static void start(View view, Animation animation) {
        view.startAnimation(prepare(animation));
    }

    public static int settleDuration(int duration) {
        return (int) Math.min(Integer.MAX_VALUE, Math.max(0L, Math.round(duration * 1.5d)));
    }

    public static void settle(android.widget.OverScroller scroller, int x, int y, int dx, int dy, int duration) {
        scroller.startScroll(x, y, dx, dy, settleDuration(duration));
    }

    public static void settle(android.widget.Scroller scroller, int x, int y, int dx, int dy, int duration) {
        scroller.startScroll(x, y, dx, dy, settleDuration(duration));
    }

    public static int dialogAnimations(Context context) {
        return context.getResources().getIdentifier("Animation.AppCompat.Dialog", "style", context.getPackageName());
    }

    public static void show(Dialog dialog) {
        Window window = dialog.getWindow();
        if (window != null) {
            // Legacy dialogs with three footer actions can bypass UiComponents.surface.
            // Bind the window itself so those dialogs get the same attach/detach blur.
            PopupBackdrop.bind(window.getDecorView(), dialog.getContext());
            int animations = window.getAttributes().windowAnimations;
            if (animations == 0 || (animations >>> 24) == 1)
                window.setWindowAnimations(dialogAnimations(window.getContext()));
        }
        dialog.show();
    }
}
