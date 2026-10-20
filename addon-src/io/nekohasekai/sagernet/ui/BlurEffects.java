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

