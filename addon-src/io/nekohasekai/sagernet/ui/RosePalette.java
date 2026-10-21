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
import android.content.res.ColorStateList;
import android.view.*;
import android.widget.*;
import java.util.*;
import moe.matsuri.nb4a.ui.LocalAppearanceSettings;

/** Light-only rose accents; neutral body text and semantic status colors stay independent. */
public final class RosePalette {
 public static final int BACKGROUND=0xffffffff,CONTROL=0xffffffff,BORDER=0xffece9ed,ACCENT=0xffb74771,SELECTED=0xfffcf0f5,TEXT=0xff292b2f;
 private static final WeakHashMap<View,android.graphics.drawable.Drawable> backdrops=new WeakHashMap<>();
 private static final WeakHashMap<View,Boolean> backdropModes=new WeakHashMap<>(),brandModes=new WeakHashMap<>();
 private static final WeakHashMap<View,State> states=new WeakHashMap<>();
 private static final WeakHashMap<Activity,Boolean> activities=new WeakHashMap<>();
 private static class State {boolean light;ColorStateList button,text,link,image,progress,indeterminate,thumb,track;int highlight;}
 public static int accent(Context c){return LocalAppearanceSettings.dark(c)?0xffffffff:ACCENT;}
 public static int capsuleSurface(Context c){return LocalAppearanceSettings.dark(c)?0xff292b2f:0xffffffff;}
 public static int nodeFill(boolean dark,boolean selected){return dark?(selected?0xff3b3039:0xff303137):selected?SELECTED:0xfff8f7f9;}
 public static int nodeBorder(boolean dark,boolean selected){return selected?(dark?0xff6c4d5d:0xffe8c2d2):0;}
 private static ColorStateList controls(boolean track){return new ColorStateList(new int[][]{new int[]{-android.R.attr.state_enabled},new int[]{android.R.attr.state_checked},new int[]{android.R.attr.state_selected},new int[0]},new int[]{0xffe4d3db,track?0xffefd9e2:ACCENT,ACCENT,track?0xffeeecef:0xffaaa5ad});}
 public static void install(Activity activity){
  if(activities.containsKey(activity))return;activities.put(activity,true);
  View root=activity.getWindow().getDecorView();Watcher watch=new Watcher(root);root.getViewTreeObserver().addOnGlobalLayoutListener(watch);root.addOnAttachStateChangeListener(watch);watch.schedule();
 }
 /** Layout callbacks only enqueue one pass, never walk a live animation hierarchy. */
 private static final class Watcher implements ViewTreeObserver.OnGlobalLayoutListener,View.OnAttachStateChangeListener,Runnable {
  final View root;boolean posted;long last;
  Watcher(View root){this.root=root;}
  public void onGlobalLayout(){schedule();}
  void schedule(){if(!posted){posted=true;root.postDelayed(this,120);}}
  public void run(){
   posted=false;if(!root.isAttachedToWindow())return;
   if(DrawerWorkGate.defer(root,this)){posted=true;return;}
   long now=android.os.SystemClock.uptimeMillis();
   if(last!=0&&now-last<500){posted=true;root.postDelayed(this,500-(now-last));return;}
   last=now;boolean light=!LocalAppearanceSettings.dark(root.getContext());
   backdrop(root.findViewById(android.R.id.content));walk(root,light,false);
  }
  public void onViewAttachedToWindow(View view){schedule();}
  public void onViewDetachedFromWindow(View view){root.removeCallbacks(this);DrawerWorkGate.cancel(root);posted=false;}
 }
 public static void prepareForDisplay(View root){
  if(root==null)return;prepare(root);if(root.getTag(0x7f0a0f7b)!=null)return;
  ViewTreeObserver.OnPreDrawListener ready=new ViewTreeObserver.OnPreDrawListener(){public boolean onPreDraw(){ViewTreeObserver observer=root.getViewTreeObserver();if(observer.isAlive())observer.removeOnPreDrawListener(this);root.setTag(0x7f0a0f7b,null);prepare(root);return true;}};
  root.setTag(0x7f0a0f7b,ready);root.getViewTreeObserver().addOnPreDrawListener(ready);
 }
 public static void prepare(View root){if(root==null)return;boolean light=!LocalAppearanceSettings.dark(root.getContext());prepare(root,light,false);}
 private static void prepare(View view,boolean light,boolean toolbarParent){boolean toolbar=!toolbarParent&&view.getClass().getSimpleName().equals("JJGlassToolbar");if(toolbar)brand(view,light);if(!toolbar&&!toolbarParent){State saved=states.get(view);if(saved!=null)saved.light=!light;widget(view,light);}if(view instanceof ViewGroup){ViewGroup group=(ViewGroup)view;for(int i=0;i<group.getChildCount();i++)prepare(group.getChildAt(i),light,toolbar||toolbarParent);}}
 private static void walk(View v,boolean light,boolean toolbarParent){
  boolean toolbar=!toolbarParent&&v.getClass().getSimpleName().equals("JJGlassToolbar");
  if(toolbar)brand(v,light);
  if(!toolbar&&!toolbarParent)widget(v,light);
  if(v instanceof ViewGroup){ViewGroup g=(ViewGroup)v;for(int i=0;i<g.getChildCount();i++)walk(g.getChildAt(i),light,toolbarParent||toolbar);}
 }
 public static void widget(View v){
  boolean light=!LocalAppearanceSettings.dark(v.getContext());brand(v,light);if(toolbarAction(v))return;State saved=states.get(v);if(saved!=null)saved.light=!light;widget(v,light);
 }
 private static void widget(View v,boolean light){
  State s=states.get(v);
  if(s==null){if(!light)return;s=new State();states.put(v,s);
   if(v instanceof CompoundButton)s.button=((CompoundButton)v).getButtonTintList();
   if(v instanceof TextView){s.link=((TextView)v).getLinkTextColors();s.highlight=((TextView)v).getHighlightColor();if(v instanceof Button&&!(v instanceof CompoundButton))s.text=((TextView)v).getTextColors();}
   if(v instanceof ImageButton)s.image=((ImageButton)v).getImageTintList();
   if(v instanceof ProgressBar){s.progress=((ProgressBar)v).getProgressTintList();s.indeterminate=((ProgressBar)v).getIndeterminateTintList();}
   if(v instanceof SeekBar)s.thumb=((SeekBar)v).getThumbTintList();
   try{if(v.getClass().getSimpleName().contains("Switch")){s.thumb=(ColorStateList)v.getClass().getMethod("getThumbTintList").invoke(v);s.track=(ColorStateList)v.getClass().getMethod("getTrackTintList").invoke(v);}}catch(ReflectiveOperationException ignored){}
  }else if(s.light==light)return;
  s.light=light;
  if(v instanceof CompoundButton)((CompoundButton)v).setButtonTintList(light?controls(false):UiComponents.owns(v)?ColorStateList.valueOf(0xffffffff):s.button);
  if(v instanceof TextView){TextView text=(TextView)v;text.setLinkTextColor(light?ColorStateList.valueOf(ACCENT):s.link);text.setHighlightColor(light?0x40d76a90:s.highlight);if(s.text!=null)text.setTextColor(light?ColorStateList.valueOf(ACCENT):UiComponents.owns(v)?ColorStateList.valueOf(0xffffffff):s.text);}
  if(v instanceof ImageButton)((ImageButton)v).setImageTintList(light?ColorStateList.valueOf(ACCENT):s.image);
  if(v instanceof ProgressBar){ProgressBar bar=(ProgressBar)v;bar.setProgressTintList(light?ColorStateList.valueOf(ACCENT):s.progress);bar.setIndeterminateTintList(light?ColorStateList.valueOf(ACCENT):s.indeterminate);}
  if(v instanceof SeekBar)((SeekBar)v).setThumbTintList(light?ColorStateList.valueOf(ACCENT):s.thumb);
  try{if(v.getClass().getSimpleName().contains("Switch")){v.getClass().getMethod("setThumbTintList",ColorStateList.class).invoke(v,light?controls(false):s.thumb);v.getClass().getMethod("setTrackTintList",ColorStateList.class).invoke(v,light?controls(true):s.track);}}catch(ReflectiveOperationException ignored){}
 }
 public static void backdrop(View root){
  if(root==null)return;boolean dark=LocalAppearanceSettings.dark(root.getContext());
  if(Boolean.valueOf(dark).equals(backdropModes.get(root))&&root.getBackground()==backdrops.get(root))return;
  android.graphics.drawable.Drawable background=dark?new android.graphics.drawable.ColorDrawable(0xff292b2f):new android.graphics.drawable.GradientDrawable(android.graphics.drawable.GradientDrawable.Orientation.TL_BR,new int[]{0xffffffff,0xffffffff,0xfffff4f8});
  root.setBackground(background);backdrops.put(root,background);backdropModes.put(root,dark);FullScreenBackdrop.sceneChanged(root);
 }
 private static void brand(View v,boolean light){
  if(!v.getClass().getSimpleName().equals("JJGlassToolbar"))return;
  try{
   CharSequence title=(CharSequence)v.getClass().getMethod("getTitle").invoke(v);
   if(title==null||!(title.toString().equals("JiajiaBox")||title.toString().equals("JiajiaBox.")))return;
   if(title instanceof android.text.Spanned&&Boolean.valueOf(light).equals(brandModes.get(v)))return;
   v.getClass().getMethod("setTitle",CharSequence.class).invoke(v,brandTitle(light));brandModes.put(v,light);
  }catch(ReflectiveOperationException ignored){}
 }
 public static CharSequence brandTitle(boolean light){
   android.text.SpannableString name=new android.text.SpannableString("JiajiaBox.");
   name.setSpan(new android.text.style.ForegroundColorSpan(light?0xff292b2f:0xffffffff),0,9,android.text.Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
   name.setSpan(new android.text.style.ForegroundColorSpan(0xffd76a90),9,10,android.text.Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
   name.setSpan(new android.text.style.StyleSpan(android.graphics.Typeface.BOLD),0,10,android.text.Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
   return name;
 }
 private static boolean toolbarAction(View view){
  View current=view;
  while(current!=null){if(current.getClass().getSimpleName().equals("JJGlassToolbar"))return true;ViewParent parent=current.getParent();current=parent instanceof View?(View)parent:null;}
  return false;
 }
 private RosePalette(){}
}

