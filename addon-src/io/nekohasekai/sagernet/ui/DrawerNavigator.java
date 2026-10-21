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
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;

import android.widget.FrameLayout;
import android.widget.LinearLayout;
import java.util.WeakHashMap;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.concurrent.ConcurrentHashMap;

public final class DrawerNavigator {
 private static final int HOST=0x7f0a01e2;
 private static volatile FragmentApi fragmentApi;
 /** Only immutable metadata is preloaded. Fragment construction and view work stay on the UI thread. */
 private static final class FragmentApi {
  final Method manager,setArguments,getView,begin,add,remove,commit;
  final ConcurrentHashMap<String,Constructor<?>> constructors=new ConcurrentHashMap<>();
  FragmentApi()throws ReflectiveOperationException{
   ClassLoader loader=DrawerNavigator.class.getClassLoader();
   Class<?> fragment=Class.forName("androidx.fragment.app.Fragment",false,loader);
   Class<?> transactions=Class.forName("androidx.fragment.app.FragmentTransaction",false,loader);
   manager=Class.forName("androidx.fragment.app.FragmentActivity",false,loader).getMethod("getSupportFragmentManager");
   setArguments=fragment.getMethod("setArguments",Bundle.class);getView=fragment.getMethod("getView");
   begin=Class.forName("androidx.fragment.app.FragmentManager",false,loader).getMethod("beginTransaction");
   add=transactions.getMethod("add",int.class,fragment);remove=transactions.getMethod("remove",fragment);
   commit=transactions.getMethod("commitNowAllowingStateLoss");
  }
  Constructor<?> constructor(String name)throws ReflectiveOperationException{
   Constructor<?> found=constructors.get(name);if(found!=null)return found;
   Constructor<?> created=Class.forName(name,false,DrawerNavigator.class.getClassLoader()).getConstructor();
   Constructor<?> previous=constructors.putIfAbsent(name,created);return previous==null?created:previous;
  }
 }
 private static FragmentApi api()throws ReflectiveOperationException{
  FragmentApi found=fragmentApi;if(found!=null)return found;
  synchronized(DrawerNavigator.class){if(fragmentApi==null)fragmentApi=new FragmentApi();return fragmentApi;}
 }
 static void preload()throws ReflectiveOperationException{api().constructor("io.nekohasekai.sagernet.ui.ToolsFragment");}
 private static final class Page implements View.OnAttachStateChangeListener {
  FrameLayout host;View parent;LinearLayout view;Object manager,fragment;
  DrawerWorkGate.Lease motion;Runnable pendingStart;ViewTreeObserver observer;ViewTreeObserver.OnPreDrawListener ready;
  DrawerLayers.Lease parentLayer,pageLayer;
  void releaseMotion(){
   if(parentLayer!=null){parentLayer.close();parentLayer=null;}
   if(pageLayer!=null){pageLayer.close();pageLayer=null;}
   if(motion!=null){motion.close();motion=null;}
  }
  public void onViewAttachedToWindow(View view){}
  public void onViewDetachedFromWindow(View view){cancelPending(this);releaseMotion();}
 }
 private static final class State { final DrawerHistory<Page,SparseArray<Parcelable>> history=new DrawerHistory<>(); }
 private static final WeakHashMap<Activity,State> states=new WeakHashMap<>();
 private static State state(Activity activity){State state=states.get(activity);if(state==null){state=new State();states.put(activity,state);}return state;}
 public static void rootReady(Activity activity,int id){
  State state=state(activity);state.history.root(id);
  View view=activity.findViewById(HOST);
  if(!(view instanceof FrameLayout))return;
  FrameLayout host=(FrameLayout)view;
  SparseArray<Parcelable> saved=state.history.snapshot();
  View expected=host.getChildCount()>0?host.getChildAt(0):null;
  if(saved!=null&&expected!=null)host.post(()->{if(state.history.root()==id&&host.getChildCount()>0&&host.getChildAt(0)==expected){expected.restoreHierarchyState(saved);restoreIndependent(expected,saved);}});
 }
 public static void captureRoot(Activity activity){
  State state=states.get(activity);if(state==null)return;
  View view=activity.findViewById(HOST);if(!(view instanceof FrameLayout))return;
  FrameLayout host=(FrameLayout)view;if(host.getChildCount()==0)return;
  SparseArray<Parcelable> saved=new SparseArray<>();View root=host.getChildAt(0);root.saveHierarchyState(saved);saveIndependent(root,saved);state.history.remember(saved);
 }
 private static void saveIndependent(View root,SparseArray<Parcelable> saved){
  if(root instanceof ViewGroup){ViewGroup group=(ViewGroup)root;for(int i=0;i<group.getChildCount();i++){View child=group.getChildAt(i);if(!child.isSaveFromParentEnabled())child.saveHierarchyState(saved);saveIndependent(child,saved);}}
 }
 private static void restoreIndependent(View root,SparseArray<Parcelable> saved){
  if(root instanceof ViewGroup){ViewGroup group=(ViewGroup)root;for(int i=0;i<group.getChildCount();i++){View child=group.getChildAt(i);if(!child.isSaveFromParentEnabled())child.restoreHierarchyState(saved);restoreIndependent(child,saved);}}
 }
 public static boolean open(Activity activity,String title,String className){
  View candidate=activity.findViewById(HOST);
  if(!(candidate instanceof FrameLayout)||!candidate.isShown())return false;
  FrameLayout host=(FrameLayout)candidate;if(host.getChildCount()==0)return false;
  State state=state(activity);if(!state.history.begin())return true;
  Page page=new Page();page.host=host;Page previous=state.history.current();page.parent=previous==null?host.getChildAt(0):previous.view;
  LinearLayout column=new LinearLayout(activity);page.view=column;column.setOrientation(LinearLayout.VERTICAL);
  int pad=UiComponents.dp(activity,10);column.setPadding(pad,pad,pad,pad);column.setClickable(true);
  column.setBackgroundColor(JJGlassToolbar.matteColor(activity));
  LinearLayout header=UiComponents.header(activity,title,()->back(activity));
  // This header already has a compact text back control. Keep its existing callback.
  column.addView(header,new LinearLayout.LayoutParams(-1,-2));
  DrawerDesign.nestedHeader(header);
  FrameLayout container=new FrameLayout(activity);container.setId(View.generateViewId());column.addView(container,new LinearLayout.LayoutParams(-1,0,1));
  host.addView(column,new FrameLayout.LayoutParams(-1,-1));state.history.push(page);
  page.motion=DrawerWorkGate.begin(host);column.addOnAttachStateChangeListener(page);
  try {
   FragmentApi api=api();page.manager=api.manager.invoke(activity);
   page.fragment=api.constructor(className).newInstance();
   Bundle args=new Bundle();args.putBoolean("glass_drawer_page",true);api.setArguments.invoke(page.fragment,args);
   Object transaction=api.begin.invoke(page.manager);
   api.add.invoke(transaction,container.getId(),page.fragment);api.commit.invoke(transaction);
   View content=(View)api.getView.invoke(page.fragment);
   if(content!=null){View toolbar=content.findViewById(0x7f0a02ba);if(toolbar!=null)toolbar.setVisibility(View.GONE);content.setPadding(0,0,0,0);DrawerAppearance.settingsPage(content);RosePalette.prepareForDisplay(content);}
   startAfterLayout(activity,state,page);return true;
  }catch(Exception exception){android.util.Log.e("DrawerNavigator","Cannot open drawer child",exception);state.history.pop();remove(page);state.history.complete();return false;}
 }
 public static boolean back(Activity activity){
  State state=states.get(activity);if(state==null||state.history.depth()==0)return false;
  if(!state.history.begin())return true;
  transition(activity,state,state.history.current(),false);return true;
 }
 private static void startAfterLayout(Activity activity,State state,Page page){
  float direction=page.view.getLayoutDirection()==View.LAYOUT_DIRECTION_RTL?-1:1;
  page.view.setAlpha(0);page.view.setTranslationX(UiComponents.dp(activity,22)*direction);
  page.pendingStart=()->{
   page.pendingStart=null;
   if(state.history.current()!=page||!page.view.isAttachedToWindow()){page.releaseMotion();return;}
   transition(activity,state,page,true);
  };
  page.ready=()->{
   if(page.observer!=null&&page.observer.isAlive())page.observer.removeOnPreDrawListener(page.ready);
   page.observer=null;page.ready=null;
   if(page.pendingStart!=null)page.view.postOnAnimation(page.pendingStart);
   return true;
  };
  page.observer=page.view.getViewTreeObserver();page.observer.addOnPreDrawListener(page.ready);
 }
 private static void cancelPending(Page page){
  if(page.observer!=null&&page.observer.isAlive()&&page.ready!=null)page.observer.removeOnPreDrawListener(page.ready);
  page.observer=null;page.ready=null;
  if(page.pendingStart!=null){page.view.removeCallbacks(page.pendingStart);page.pendingStart=null;}
 }
 private static void transition(Activity activity,State state,Page page,boolean forward){
  if(page.motion==null)page.motion=DrawerWorkGate.begin(page.host);
  float distance=UiComponents.dp(activity,22);
   float parallax=UiComponents.dp(activity,7);long duration=540;
  float direction=page.view.getLayoutDirection()==View.LAYOUT_DIRECTION_RTL?-1:1;distance*=direction;parallax*=direction;
  page.parent.animate().withEndAction(null).cancel();page.view.animate().withEndAction(null).cancel();
  page.parentLayer=DrawerLayers.acquire(page.parent);page.pageLayer=DrawerLayers.acquire(page.view);
  if(forward){page.view.setAlpha(0);page.view.setTranslationX(distance);page.parent.animate().alpha(1).translationX(-parallax).setDuration(duration).setInterpolator(new DrawerMotion.Ease()).start();
   page.view.animate().alpha(1).translationX(0).setDuration(duration).setInterpolator(new DrawerMotion.Ease()).withEndAction(()->{if(state.history.current()!=page){page.releaseMotion();return;}page.parent.setVisibility(View.GONE);reset(page.parent);state.history.complete();page.releaseMotion();}).start();
  }else{page.parent.setVisibility(View.VISIBLE);page.parent.setAlpha(1);page.parent.setTranslationX(-parallax);page.parent.animate().alpha(1).translationX(0).setDuration(duration).setInterpolator(new DrawerMotion.Ease()).start();
   page.view.animate().alpha(0).translationX(distance).setDuration(duration).setInterpolator(new DrawerMotion.Ease()).withEndAction(()->{if(state.history.current()!=page)return;state.history.pop();remove(page);state.history.complete();}).start();}
 }
 private static void reset(View view){view.setAlpha(1);view.setTranslationX(0);}
 private static void remove(Page page){
  cancelPending(page);page.view.removeOnAttachStateChangeListener(page);
  page.view.animate().withEndAction(null).cancel();page.parent.animate().withEndAction(null).cancel();page.parent.setVisibility(View.VISIBLE);reset(page.parent);
  if(page.fragment!=null&&page.manager!=null)try{FragmentApi api=api();Object tx=api.begin.invoke(page.manager);api.remove.invoke(tx,page.fragment);api.commit.invoke(tx);}catch(Exception e){android.util.Log.e("DrawerNavigator","Cannot remove child",e);}
  page.host.removeView(page.view);
  page.releaseMotion();
 }
 public static void dismiss(Activity activity){State state=states.get(activity);if(state==null)return;Page page;while((page=state.history.pop())!=null)remove(page);state.history.complete();}
 public static void destroy(Activity activity){dismiss(activity);states.remove(activity);}
}

