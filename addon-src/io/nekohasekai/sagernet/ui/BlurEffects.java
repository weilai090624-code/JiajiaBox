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

import android.view.View;

/** UI-thread-only, bounded cache shared by drawer and popup blur. */
final class BlurEffects {
 static final int STEPS=48;
 static int level(float strength){return Math.round(Math.max(0f,Math.min(1f,strength))*STEPS);}
 static void apply(View view,int level){Api31.apply(view,level);}
 private static final class Api31 {
  private static float density;
  private static android.graphics.RenderEffect[] effects=new android.graphics.RenderEffect[STEPS+1];
  static void apply(View view,int level){
   float current=view.getResources().getDisplayMetrics().density;
   if(current!=density){density=current;effects=new android.graphics.RenderEffect[STEPS+1];}
   if(level==0){view.setRenderEffect(null);return;}
   android.graphics.RenderEffect effect=effects[level];
   if(effect==null){float radius=18f*density*level/STEPS;effect=android.graphics.RenderEffect.createBlurEffect(radius,radius,android.graphics.Shader.TileMode.CLAMP);effects[level]=effect;}
   view.setRenderEffect(effect);
  }
 }
}

