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

