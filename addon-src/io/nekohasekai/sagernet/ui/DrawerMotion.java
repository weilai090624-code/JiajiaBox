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

/** One easing curve for drawer geometry, opacity and navigation. */
public final class DrawerMotion {
 private DrawerMotion(){}
 public static final class Track {
   private final float start,target;
   public Track(float start,float target){this.start=start;this.target=target;}
  public float value(float fraction){
   if(fraction<=0)return start;if(fraction>=1)return target;
   return at(AppMotion.ease(fraction));
  }
  /** Reuse one eased fraction across all tracks in the same animation frame. */
  public float at(float eased){
   if(eased<=0)return start;if(eased>=1)return target;
   return start+(target-start)*eased;
  }
 }
  public static final class Ease implements android.view.animation.Interpolator {
   public float getInterpolation(float input){return AppMotion.ease(input);}
 }
}

