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
import android.graphics.*;
import android.graphics.drawable.*;
import android.view.*;
import android.widget.*;
import java.util.*;

/** Drawer-only presentation; existing navigation views retain their click callbacks. */
public final class DrawerDesign {
 private static final int MENU_TAG=0x7f0a0f78,ROW_TAG=0x7f0a0f79,HEADER_TAG=0x7f0a0f7a;
 private static final int ROSE=0xffb74771;
 static int dp(Context c,float n){return Math.round(n*c.getResources().getDisplayMetrics().density);}
 static boolean dark(Context c){return ThemePalette.dark(c);}
 static int ink(Context c){return ThemePalette.text(c);}
 static int muted(Context c){return ThemePalette.secondary(c);}
 static int accent(Context c){return ThemePalette.accent(c);}
 static GradientDrawable shape(Context c,int color,int radius){GradientDrawable d=new GradientDrawable();d.setColor(color);d.setCornerRadius(dp(c,radius));return d;}
 static TextView label(Context c,CharSequence text,int size,boolean bold){TextView v=new TextView(c);v.setText(text);v.setTextSize(size);v.setTextColor(ink(c));v.setIncludeFontPadding(false);v.setTypeface(Typeface.DEFAULT,bold?Typeface.BOLD:Typeface.NORMAL);return v;}
 static void surface(View v,boolean selected){Context c=v.getContext();boolean d=dark(c);GradientDrawable fill=shape(c,selected?ThemePalette.selected(c):Color.TRANSPARENT,17);if(selected)fill.setStroke(dp(c,1),ThemePalette.selectedBorder(c));v.setBackground(new RippleDrawable(ColorStateList.valueOf(d?0x20ffffff:0x18b74771),fill,shape(c,Color.WHITE,17)));}
 public static void install(Activity activity,JJGlassCapsule panel,LinearLayout column,Map<?,?> nav,int current){
  if(panel.getTag(MENU_TAG)!=null)return;
  Menu menu=new Menu(panel,column);panel.setTag(MENU_TAG,menu);
  List<FrameLayout> original=new ArrayList<>();for(int i=0;i<column.getChildCount();i++)if(column.getChildAt(i) instanceof FrameLayout)original.add((FrameLayout)column.getChildAt(i));
  column.removeAllViews();column.setPadding(dp(activity,12),dp(activity,14),dp(activity,12),dp(activity,10));
  menu.header=new LinearLayout(activity);menu.header.setOrientation(LinearLayout.VERTICAL);menu.header.setPadding(dp(activity,14),dp(activity,12),dp(activity,10),dp(activity,22));
  menu.brand=label(activity,RosePalette.brandTitle(!dark(activity)),26,true);menu.brand.setLetterSpacing(-.025f);menu.header.addView(menu.brand,new LinearLayout.LayoutParams(-1,-2));
  menu.tagline=label(activity,"简单连接，自在上网",12,false);LinearLayout.LayoutParams tagline=new LinearLayout.LayoutParams(-1,-2);tagline.topMargin=dp(activity,9);menu.header.addView(menu.tagline,tagline);column.addView(menu.header,new LinearLayout.LayoutParams(-1,-2));
  MenuScroll scroll=new MenuScroll(activity);scroll.setFillViewport(false);scroll.setVerticalScrollBarEnabled(false);scroll.setOverScrollMode(View.OVER_SCROLL_NEVER);scroll.setClipToPadding(false);
  menu.list=new LinearLayout(activity);menu.list.setOrientation(LinearLayout.VERTICAL);scroll.addView(menu.list,new FrameLayout.LayoutParams(-1,-2));column.addView(scroll,new LinearLayout.LayoutParams(-1,-2));
  for(int i=0;i<original.size();i++){
   FrameLayout row=original.get(i);if(row.getChildCount()==0||!(row.getChildAt(0) instanceof TextView))continue;
   TextView primary=(TextView)row.getChildAt(0);String title=primary.getText().toString();int kind=kind(title);for(Map.Entry<?,?> entry:nav.entrySet())if(entry.getValue()==row&&entry.getKey() instanceof Number){int id=((Number)entry.getKey()).intValue();kind=id==0x7f0a01e3?0:id==0x7f0a01e6?1:id==0x7f0a01e7?2:id==0x7f0a01e9?3:5;}
   if(i==0||i==3){TextView section=label(activity,i==0?"连接与分流":"偏好与更多",10,false);section.setLetterSpacing(.08f);section.setPadding(dp(activity,14),dp(activity,i==0?3:17),0,dp(activity,9));menu.sections.add(section);menu.list.addView(section,new LinearLayout.LayoutParams(-1,-2));}
   row.removeAllViews();Row body=new Row(activity,primary,kind);row.setTag(ROW_TAG,body);row.addView(body,new FrameLayout.LayoutParams(-1,-1));row.setPadding(0,0,0,0);row.setMinimumWidth(0);
   LinearLayout.LayoutParams rp=new LinearLayout.LayoutParams(-1,Math.max(dp(activity,66),dp(activity,58*activity.getResources().getConfiguration().fontScale)));rp.bottomMargin=dp(activity,3);menu.list.addView(row,rp);
   row.setOnTouchListener((v,e)->{int action=e.getActionMasked();if(action==MotionEvent.ACTION_DOWN)v.animate().scaleX(.985f).scaleY(.985f).setDuration(90).start();else if(action==MotionEvent.ACTION_UP||action==MotionEvent.ACTION_CANCEL)v.animate().scaleX(1).scaleY(1).setDuration(180).setInterpolator(new DrawerMotion.Ease()).start();return false;});
   menu.rows.add(row);
  }
  menu.footer=label(activity,"基于 NekoBox · 为简单而生",10,false);menu.footer.setGravity(Gravity.CENTER);menu.footer.setPadding(0,dp(activity,16),0,dp(activity,5));column.addView(menu.footer,new LinearLayout.LayoutParams(-1,-2));
  select(nav,current);refresh(panel);
 }
 public static void select(Map<?,?> nav,int current){for(Map.Entry<?,?> entry:nav.entrySet())if(entry.getValue() instanceof View){View row=(View)entry.getValue();boolean selected=entry.getKey() instanceof Number&&((Number)entry.getKey()).intValue()==current;row.setSelected(selected);Object content=row.getTag(ROW_TAG);if(content instanceof Row)((Row)content).paint(selected);}}
 static void refreshTree(View view){if(view instanceof ViewGroup){ViewGroup group=(ViewGroup)view;for(int i=0;i<group.getChildCount();i++)refreshTree(group.getChildAt(i));}refresh(view);}
 static void nestedHeader(LinearLayout header){Context c=header.getContext();if(header.getChildCount()<2)return;View back=header.getChildAt(0);View title=header.getChildAt(1);if(back instanceof TextView)((TextView)back).setTextSize(android.util.TypedValue.COMPLEX_UNIT_DIP,28);header.setPadding(0,dp(c,4),0,dp(c,16));action(back);if(title instanceof TextView){TextView t=(TextView)title;t.setTextSize(21);t.setIncludeFontPadding(false);t.setMinHeight(dp(c,48));t.setLayoutParams(new LinearLayout.LayoutParams(0,-2,1));t.setTextColor(ink(c));t.setSingleLine(true);t.setEllipsize(android.text.TextUtils.TruncateAt.END);header.setTag(HEADER_TAG,new Heading(back,t,null,null));}}
 static void heading(ViewGroup root,View back,TextView title,TextView subtitle,ViewGroup actions){root.setTag(HEADER_TAG,new Heading(back,title,subtitle,actions));refresh(root);}
 private static final class Heading{final View back;final TextView title,subtitle;final ViewGroup actions;Heading(View b,TextView t,TextView s,ViewGroup a){back=b;title=t;subtitle=s;actions=a;}}
 static void action(View view){Context c=view.getContext();GradientDrawable fill=shape(c,ThemePalette.inset(c),14);view.setBackground(new RippleDrawable(ColorStateList.valueOf(dark(c)?0x20ffffff:0x18b74771),fill,shape(c,Color.WHITE,14)));}
 public static void refresh(View panel){Object heading=panel.getTag(HEADER_TAG);if(heading instanceof Heading){Heading h=(Heading)heading;Context c=panel.getContext();h.title.setTextColor(ink(c));if(h.subtitle!=null)h.subtitle.setTextColor(muted(c));action(h.back);if(h.actions!=null)for(int i=0;i<h.actions.getChildCount();i++)action(h.actions.getChildAt(i));}Object tag=panel.getTag(MENU_TAG);if(!(tag instanceof Menu))return;Menu m=(Menu)tag;Context c=panel.getContext();
  if(panel instanceof JJGlassCapsule){JJGlassCapsule capsule=(JJGlassCapsule)panel;capsule.setCornerRadiusDp(ThemePalette.PANEL_RADIUS);capsule.setBorderWidthDp(.7f);capsule.setBorderColor(ThemePalette.border(c));}
  m.brand.setText(RosePalette.brandTitle(!dark(c)));m.tagline.setTextColor(muted(c));m.footer.setTextColor(muted(c));for(TextView s:m.sections)s.setTextColor(muted(c));
  for(FrameLayout row:m.rows){Object body=row.getTag(ROW_TAG);if(body instanceof Row)((Row)body).paint(row.isSelected());}
 }
 /** Retained for binary compatibility; the 288 call site is unreachable. */
 public static boolean warmMenuLayer(View panel){
  Object tag=panel.getTag(MENU_TAG);if(!(tag instanceof Menu))return false;
  View column=((Menu)tag).column;
  if(!column.isAttachedToWindow()||!column.isHardwareAccelerated()||column.getWidth()<=0||column.getHeight()<=0)return false;
  try{if(column.getLayerType()!=View.LAYER_TYPE_HARDWARE)column.setLayerType(View.LAYER_TYPE_HARDWARE,null);column.buildLayer();return true;}
  catch(RuntimeException|OutOfMemoryError error){column.setLayerType(View.LAYER_TYPE_NONE,null);android.util.Log.w("DrawerDesign","Menu GPU prewarm unavailable",error);return false;}
 }
 /** No work is attached to DrawerLayout's per-frame listener. */
 public static void slide(View drawer,float progress){}
 private static int kind(String title){String lower=title.toLowerCase(java.util.Locale.ROOT);if(lower.equals("home"))return 0;if(lower.equals("route"))return 1;if(lower.equals("settings"))return 2;if(lower.equals("tools"))return 3;if(title.contains("首页"))return 0;if(title.contains("路由"))return 1;if(title.contains("设置"))return 2;if(title.contains("工具"))return 3;if(title.contains("模式"))return 4;return 5;}
 private static String subtitle(int kind){return new String[]{"节点与连接","规则与分流","连接偏好","诊断与实用功能","亮色与暗色","版本与项目"}[kind];}
 private static final class Menu {final View panel;final LinearLayout column;LinearLayout header,list;TextView brand,tagline,footer;final List<TextView> sections=new ArrayList<>();final List<FrameLayout> rows=new ArrayList<>();Menu(View p,LinearLayout c){panel=p;column=c;}}
 private static final class MenuScroll extends ScrollView {
  final Rect visible=new Rect();MenuScroll(Context c){super(c);}
  protected void onMeasure(int w,int h){getWindowVisibleDisplayFrame(visible);int screen=visible.height()>0?visible.height():getResources().getDisplayMetrics().heightPixels;int max=Math.max(dp(getContext(),100),screen-dp(getContext(),96+82*Math.max(1,getResources().getConfiguration().fontScale)));super.onMeasure(w,MeasureSpec.makeMeasureSpec(Math.min(max,MeasureSpec.getMode(h)==MeasureSpec.UNSPECIFIED?max:MeasureSpec.getSize(h)),MeasureSpec.AT_MOST));}
 }
 private static final class Row extends LinearLayout {
  final TextView primary,secondary;final Glyph icon,arrow;final int kind;
  Row(Context c,TextView title,int kind){super(c);this.kind=kind;setGravity(Gravity.CENTER_VERTICAL);setPadding(dp(c,13),0,dp(c,11),0);setImportantForAccessibility(View.IMPORTANT_FOR_ACCESSIBILITY_NO);icon=new Glyph(c,kind);addView(icon,new LayoutParams(dp(c,24),dp(c,24)));
   LinearLayout words=new LinearLayout(c);words.setOrientation(VERTICAL);words.setGravity(Gravity.CENTER_VERTICAL);LayoutParams wp=new LayoutParams(0,-1,1);wp.setMarginStart(dp(c,14));addView(words,wp);
   primary=title;primary.setGravity(Gravity.START|Gravity.CENTER_VERTICAL);primary.setTextSize(15);primary.setTypeface(Typeface.DEFAULT,Typeface.NORMAL);primary.setPadding(0,0,0,0);primary.setMinimumWidth(0);words.addView(primary,new LayoutParams(-1,-2));
   secondary=label(c,subtitle(kind),11,false);LayoutParams sp=new LayoutParams(-1,-2);sp.topMargin=dp(c,4);words.addView(secondary,sp);arrow=new Glyph(c,6);LayoutParams ap=new LayoutParams(dp(c,12),dp(c,16));ap.setMarginStart(dp(c,6));addView(arrow,ap);
  }
  void paint(boolean selected){Context c=getContext();surface((View)getParent(),selected);primary.setTextColor(selected?accent(c):ink(c));primary.setTypeface(Typeface.create(selected?"sans-serif-medium":"sans-serif",Typeface.NORMAL));secondary.setTextColor(muted(c));icon.color=selected?accent(c):muted(c);icon.invalidate();arrow.color=selected?accent(c):muted(c);arrow.setAlpha(selected?1:.45f);arrow.invalidate();}
 }
 static final class Glyph extends View {
  final Paint pen=new Paint(Paint.ANTI_ALIAS_FLAG);final Path path=new Path();final int kind;int color;
  Glyph(Context c,int kind){super(c);this.kind=kind;color=muted(c);setImportantForAccessibility(View.IMPORTANT_FOR_ACCESSIBILITY_NO);pen.setStyle(Paint.Style.STROKE);pen.setStrokeWidth(1.55f);pen.setStrokeCap(Paint.Cap.ROUND);pen.setStrokeJoin(Paint.Join.ROUND);}
  protected void onDraw(Canvas canvas){super.onDraw(canvas);int save=canvas.save();canvas.scale(getWidth()/24f,getHeight()/24f);pen.setColor(color);path.reset();
   switch(kind){
    case 0:path.moveTo(3,10);path.lineTo(12,3);path.lineTo(21,10);path.moveTo(5,9);path.lineTo(5,20);path.lineTo(10,20);path.lineTo(10,14);path.lineTo(14,14);path.lineTo(14,20);path.lineTo(19,20);path.lineTo(19,9);canvas.drawPath(path,pen);break;
    case 1:canvas.drawCircle(6,5,2,pen);canvas.drawCircle(18,19,2,pen);path.moveTo(6,7);path.lineTo(6,14);path.quadTo(6,19,11,19);path.lineTo(16,19);path.moveTo(11,5);path.lineTo(20,5);path.moveTo(17,2);path.lineTo(20,5);path.lineTo(17,8);canvas.drawPath(path,pen);break;
    case 2:for(int i=0;i<3;i++){float y=5+7*i,cx=i==1?8:16;canvas.drawLine(3,y,cx-2,y,pen);canvas.drawLine(cx+2,y,21,y,pen);canvas.drawCircle(cx,y,2,pen);}break;
    case 3:canvas.drawRoundRect(3,3,10,10,2,2,pen);canvas.drawRoundRect(14,3,21,10,2,2,pen);canvas.drawRoundRect(3,14,10,21,2,2,pen);canvas.drawRoundRect(14,14,21,21,2,2,pen);break;
    case 4:canvas.drawCircle(12,12,5,pen);for(int i=0;i<8;i++){double a=i*Math.PI/4;canvas.drawLine(12+(float)Math.cos(a)*8,12+(float)Math.sin(a)*8,12+(float)Math.cos(a)*10,12+(float)Math.sin(a)*10,pen);}break;
    case 5:canvas.drawCircle(12,12,9,pen);canvas.drawLine(12,11,12,17,pen);canvas.drawPoint(12,7,pen);break;
    default:path.moveTo(8,5);path.lineTo(15,12);path.lineTo(8,19);canvas.drawPath(path,pen);
   }canvas.restoreToCount(save);
  }
 }
 private DrawerDesign(){}
}

