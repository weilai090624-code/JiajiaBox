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
/** Reversible, time-based easing shared by native and bitmap backdrops. */
final class BlurTransition {
 private float value,start,target;private long since;private float duration;
 float step(boolean visible){
  long now=android.os.SystemClock.uptimeMillis();update(now);float next=visible?1f:0f;
  if(next!=target){start=value;target=next;since=now;duration=Math.max(1f,240f*Math.abs(target-start));}
  return value;
 }
 private void update(long now){if(value==target)return;float t=Math.min(1f,Math.max(0f,(now-since)/duration));value=start+(target-start)*(t*t*(3f-2f*t));if(t==1f)value=target;}
 boolean running(){return value!=target;}
 void reset(){value=start=target=0f;}
}

