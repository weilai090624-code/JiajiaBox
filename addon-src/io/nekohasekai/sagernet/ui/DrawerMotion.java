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

/** Critically damped motion with exact resting endpoints, measured in seconds. */
public final class DrawerMotion {
 private DrawerMotion(){}
 public static final class Track {
  private final float start,target,a,b,omega,duration,error,endVelocity;
  public Track(float start,float target,float velocity,float duration,float omega){
   this.start=start;this.target=target;this.a=start-target;this.b=velocity+omega*a;
   this.omega=omega;this.duration=duration;
   float decay=(float)Math.exp(-omega*duration);
   error=(a+b*duration)*decay;
   endVelocity=(b-omega*(a+b*duration))*decay;
  }
  public float value(float fraction){
   if(fraction<=0)return start;if(fraction>=1)return target;
   float u=fraction,t=u*duration,e=(float)Math.exp(-omega*t);
   float settle=u*u*u*(10+u*(-15+6*u));
   float tangent=u*u*u*(-4+u*(7-3*u));
   return target+(a+b*t)*e-error*settle-endVelocity*duration*tangent;
  }
  public float velocity(float fraction){
   if(fraction>=1)return 0;
   float u=Math.max(0,fraction),t=u*duration,e=(float)Math.exp(-omega*t);
   float settle=30*u*u*(1-u)*(1-u);
   float tangent=u*u*(-12+u*(28-15*u));
   return (b-omega*(a+b*t))*e-error*settle/duration-endVelocity*tangent;
  }
 }
 public static final class Ease implements android.animation.TimeInterpolator {
  private final Track track=new Track(0,1,0,.36f,18f);
  public float getInterpolation(float input){return track.value(input);}
 }
}

