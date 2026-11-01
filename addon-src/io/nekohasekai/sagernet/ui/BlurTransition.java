/*
 * Copyright (c) 2026 weilai090624-code
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 */

package io.nekohasekai.sagernet.ui;
/** Reversible, time-based easing shared by native and bitmap backdrops. */
final class BlurTransition {
 private float value,start,target;private long since;private float duration;
 float step(boolean visible){
  long now=android.os.SystemClock.uptimeMillis();update(now);float next=visible?1f:0f;
   if(next!=target){start=value;target=next;since=now;duration=Math.max(1f,420f*Math.abs(target-start));}
  return value;
 }
  private void update(long now){if(value==target)return;float t=Math.min(1f,Math.max(0f,(now-since)/duration));value=start+(target-start)*AppMotion.ease(t);if(t==1f)value=target;}
 boolean running(){return value!=target;}
 void reset(){value=start=target=0f;}
}

