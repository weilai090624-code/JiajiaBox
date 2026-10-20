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
import android.content.Context;
import android.content.ContextWrapper;
import android.graphics.*;
import android.view.*;

/** A dialog stays in its own window; its Activity's complete decor is blurred underneath. */
public final class PopupBackdrop implements View.OnAttachStateChangeListener {
 private static final int BIND_TAG=0x7f0a0f50,ROOT_TAG=0x7f0a0f51;
 private final View surface;private Layer layer;
 private PopupBackdrop(View view){surface=view;}
 public static void bind(View view){
  if(view.getTag(BIND_TAG)!=null)return;PopupBackdrop binding=new PopupBackdrop(view);view.setTag(BIND_TAG,binding);view.addOnAttachStateChangeListener(binding);
  if(view.isAttachedToWindow())binding.onViewAttachedToWindow(view);
 }
 private static Activity activity(Context c){
  while(c instanceof ContextWrapper&&!(c instanceof Activity)){Context next=((ContextWrapper)c).getBaseContext();if(next==c)break;c=next;}return c instanceof Activity?(Activity)c:null;
 }
 public void onViewAttachedToWindow(View view){view.post(()->{
  if(!surface.isAttachedToWindow()||layer!=null)return;Activity activity=activity(surface.getContext());if(activity==null)return;
  View candidate=activity.getWindow().getDecorView();if(!(candidate instanceof ViewGroup)||surface.getRootView()==candidate)return;
  ViewGroup root=(ViewGroup)candidate;Object existing=root.getTag(ROOT_TAG);Layer value=existing instanceof Layer?(Layer)existing:new Layer(root);
  if(value.acquire()){layer=value;root.setTag(ROOT_TAG,value);}
 });}
 public void onViewDetachedFromWindow(View view){if(layer!=null){Layer previous=layer;layer=null;previous.release();}}
 static final class Layer extends View implements ViewTreeObserver.OnPreDrawListener,View.OnAttachStateChangeListener {
  final BlurTransition transition=new BlurTransition();
  final ViewGroup root;final Paint paint=new Paint(Paint.ANTI_ALIAS_FLAG|Paint.FILTER_BITMAP_FLAG);Bitmap image;int users,width,height;int strength=-1;boolean installed,nativeBlur,watching;
  Layer(ViewGroup root){super(root.getContext());this.root=root;setImportantForAccessibility(IMPORTANT_FOR_ACCESSIBILITY_NO);}
  boolean acquire(){if(!watching){
   nativeBlur=android.os.Build.VERSION.SDK_INT>=31;
   if(!nativeBlur){if(!capture())return false;root.getOverlay().add(this);installed=true;setAlpha(0f);}
   root.getViewTreeObserver().addOnPreDrawListener(this);root.addOnAttachStateChangeListener(this);watching=true;
  }users++;root.setTag(ROOT_TAG,this);transition.step(true);root.postInvalidateOnAnimation();return true;}
  void release(){if(users>0)users--;if(users==0){transition.step(false);root.postInvalidateOnAnimation();}}
  boolean capture(){
   int w=root.getWidth(),h=root.getHeight();if(w<=0||h<=0)return false;Bitmap next=null;
   try{int sw=Math.max(1,(w+7)/8),sh=Math.max(1,(h+7)/8);next=Bitmap.createBitmap(sw,sh,Bitmap.Config.ARGB_8888);Canvas canvas=new Canvas(next);canvas.scale(sw/(float)w,sh/(float)h);
    if(installed)root.getOverlay().remove(this);try{root.draw(canvas);}finally{if(installed)root.getOverlay().add(this);}
    FullScreenBackdrop.blur(next,3);if(image!=null)image.recycle();image=next;next=null;width=w;height=h;layout(0,0,w,h);invalidate();return true;
   }catch(RuntimeException|OutOfMemoryError e){android.util.Log.w("PopupBackdrop","Cannot capture popup background",e);return false;}finally{if(next!=null)next.recycle();}
  }
  protected void onDraw(Canvas canvas){if(image!=null){canvas.drawBitmap(image,null,new Rect(0,0,width,height),paint);canvas.drawColor(0x10000000);}}
  public boolean onPreDraw(){
   float progress=transition.step(users>0);
   if(users==0&&progress==0f){clear();return true;}
   if(nativeBlur){
    int level=BlurEffects.level(progress);
    if(level!=strength){BlurEffects.apply(root,level);strength=level;FullScreenBackdrop.refreshNative(root);}
   }
   else{if(width!=root.getWidth()||height!=root.getHeight())capture();setAlpha(progress);}
   if(transition.running())root.postInvalidateOnAnimation();return true;
  }
  void clear(){users=0;transition.reset();animate().cancel();if(root.getViewTreeObserver().isAlive())root.getViewTreeObserver().removeOnPreDrawListener(this);if(nativeBlur){if(strength>0)BlurEffects.apply(root,0);nativeBlur=false;strength=-1;}if(watching){root.removeOnAttachStateChangeListener(this);watching=false;}if(installed){root.getOverlay().remove(this);installed=false;root.removeOnAttachStateChangeListener(this);if(root.getViewTreeObserver().isAlive())root.getViewTreeObserver().removeOnPreDrawListener(this);}if(root.getTag(ROOT_TAG)==this){root.setTag(ROOT_TAG,null);if(android.os.Build.VERSION.SDK_INT>=31)FullScreenBackdrop.refreshNative(root);}if(image!=null){image.recycle();image=null;}}
  public void onViewAttachedToWindow(View view){}
  public void onViewDetachedFromWindow(View view){clear();}
 }
 static float nativeStrength(ViewGroup root){
  Object owner=root.getTag(ROOT_TAG);
  if(!(owner instanceof Layer))return 0f;Layer layer=(Layer)owner;
  return layer.nativeBlur&&layer.strength>0?layer.strength/(float)BlurEffects.STEPS:0f;
 }
}

