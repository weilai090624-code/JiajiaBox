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

import android.app.Activity;
import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewGroup;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/**
 * Lightweight drawer-motion gate.
 *
 * Build 288 called install before setContentView. Its decor lookup therefore
 * returned no coordinator and the former bitmap backdrop never became live.
 * Keep that rendered result: this class installs no overlay and mutates no
 * animated property. It only removes a transparent host background and lets
 * dynamic dashboard publishers stay quiet while DrawerLayout is moving.
 */
public final class FullScreenBackdrop implements View.OnAttachStateChangeListener {
 private static final int TAG=0x7f0a0f49;
 private static final ExecutorService WORKER=Executors.newSingleThreadExecutor(r->{Thread t=new Thread(r,"drawer-prewarm");t.setDaemon(true);return t;});
 private static final java.util.concurrent.atomic.AtomicBoolean preloaded=new java.util.concurrent.atomic.AtomicBoolean();

 public static void preload(){
  if(!preloaded.compareAndSet(false,true))return;
  WORKER.execute(()->{
   try{
    ClassLoader loader=FullScreenBackdrop.class.getClassLoader();
    for(String name:new String[]{"DrawerDesign","DrawerDesign$Glyph","DrawerMotion","DrawerMorph","DrawerNavigator","ResponsiveDrawerHeader","RosePalette"})
     Class.forName("io.nekohasekai.sagernet.ui."+name,false,loader);
    DrawerNavigator.preload();
    Bitmap tiny=Bitmap.createBitmap(24,24,Bitmap.Config.ARGB_8888);
    try{blur(tiny,2);}finally{tiny.recycle();}
   }catch(Exception|OutOfMemoryError error){android.util.Log.w("FullScreenBackdrop","Optional startup prewarm skipped",error);}
  });
 }

 private final ViewGroup root,content;
 private boolean moving,disposed;

 private FullScreenBackdrop(ViewGroup root,ViewGroup content){this.root=root;this.content=content;}

 public static void install(Activity activity){
  try{
   ViewGroup root=(ViewGroup)activity.getWindow().getDecorView();
   if(root.getTag(TAG)!=null)return;
   Object binding=activity.getClass().getMethod("getBinding").invoke(activity);
   Object panel=binding.getClass().getField("navGlassLight").get(binding);
   Object host=binding.getClass().getField("coordinator").get(binding);
   if(!(panel instanceof JJGlassCapsule)||!(host instanceof ViewGroup))return;
   FullScreenBackdrop controller=new FullScreenBackdrop(root,(ViewGroup)host);
   root.setTag(TAG,controller);
   ViewGroup parent=((JJGlassCapsule)panel).getParent() instanceof ViewGroup?(ViewGroup)((JJGlassCapsule)panel).getParent():null;
   // layout_main gives this host a fully transparent ColorDrawable. Removing
   // it avoids recording/drawing a no-op background without changing pixels.
   if(parent!=null)parent.setBackground(null);
   controller.content.addOnAttachStateChangeListener(controller);
  }catch(Exception error){android.util.Log.e("FullScreenBackdrop","Cannot install drawer motion gate",error);}
 }

 private static FullScreenBackdrop owner(View view){
  if(view==null)return null;
  Object value=view.getRootView().getTag(TAG);
  return value instanceof FullScreenBackdrop?(FullScreenBackdrop)value:null;
 }

 /** DrawerLayout owns all visible movement; there is no secondary frame track. */
 public static void drawerSlide(View drawer,float progress){}

 public static void drawerState(Activity activity,int state){
  DrawerWorkGate.drawerMoving(activity.getWindow().getDecorView(),state!=0);
  FullScreenBackdrop controller=owner(activity.getWindow().getDecorView());
  if(controller!=null)controller.moving=state!=0;
 }

 public static boolean isTransitioning(View view){
  FullScreenBackdrop controller=owner(view);
  return DrawerWorkGate.isMoving(view)||(controller!=null&&controller.moving);
 }

 // The dormant 288 backdrop used these invalidation hooks. There is no cached
 // visual to invalidate now, so keeping them as no-ops preserves the API only.
 public static void sceneChanged(Activity activity){}
 public static void sceneChanged(View view){}
 static void refreshNative(ViewGroup root){}

 @Override public void onViewAttachedToWindow(View view){}
 @Override public void onViewDetachedFromWindow(View view){
  if(disposed)return;disposed=true;
  content.removeOnAttachStateChangeListener(this);
  if(root.getTag(TAG)==this)root.setTag(TAG,null);
 }

 // Shared by PopupBackdrop. Alpha and RGB are averaged together.
 static void blur(Bitmap bitmap,int radius){
  int w=bitmap.getWidth(),h=bitmap.getHeight();int[] src=new int[w*h],dst=new int[w*h];bitmap.getPixels(src,0,w,0,0,w,h);
  for(int pass=0;pass<3;pass++){
   for(int y=0;y<h;y++)for(int x=0;x<w;x++){int a=0,r=0,g=0,b=0;for(int k=-radius;k<=radius;k++){int v=src[y*w+Math.max(0,Math.min(w-1,x+k))];a+=v>>>24;r+=(v>>>16)&255;g+=(v>>>8)&255;b+=v&255;}int n=radius*2+1;dst[y*w+x]=((a/n)<<24)|((r/n)<<16)|((g/n)<<8)|(b/n);}
   for(int y=0;y<h;y++)for(int x=0;x<w;x++){int a=0,r=0,g=0,b=0;for(int k=-radius;k<=radius;k++){int v=dst[Math.max(0,Math.min(h-1,y+k))*w+x];a+=v>>>24;r+=(v>>>16)&255;g+=(v>>>8)&255;b+=v&255;}int n=radius*2+1;src[y*w+x]=((a/n)<<24)|((r/n)<<16)|((g/n)<<8)|(b/n);}
  }
  bitmap.setPixels(src,0,w,0,0,w,h);
 }
}

