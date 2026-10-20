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
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;

/** Preserve navigation and move page actions into a wrapping row. */
public final class ResponsiveDrawerHeader {
 public static void bind(ViewGroup header) {
  UiComponents.drawerHeader(header);
  if (!(header instanceof LinearLayout) || header.getChildCount()<2)return;
  LinearLayout column=(LinearLayout)header;Context c=header.getContext();
  View back=column.getChildAt(0);android.widget.TextView title=(android.widget.TextView)column.getChildAt(1);
  java.util.List<View> extra=new java.util.ArrayList<>();for(int i=2;i<column.getChildCount();i++)extra.add(column.getChildAt(i));column.removeAllViews();
  back.setMinimumWidth(UiComponents.dp(c,44));back.setMinimumHeight(UiComponents.dp(c,48));
  if(back instanceof ViewGroup){ViewGroup group=(ViewGroup)back;for(int i=0;i<group.getChildCount();i++)if(group.getChildAt(i) instanceof android.widget.TextView){android.widget.TextView arrow=(android.widget.TextView)group.getChildAt(i);arrow.setText("‹");arrow.setTextSize(android.util.TypedValue.COMPLEX_UNIT_DIP,28);arrow.setMinimumWidth(0);arrow.setPadding(0,0,0,0);arrow.setLayoutParams(new android.widget.FrameLayout.LayoutParams(-1,-1));}}
  back.setContentDescription("返回菜单");
  LinearLayout navigation=new LinearLayout(c);navigation.setGravity(android.view.Gravity.CENTER_VERTICAL);
  navigation.addView(back,new LinearLayout.LayoutParams(UiComponents.dp(c,44),UiComponents.dp(c,48)));
  LinearLayout words=new LinearLayout(c);words.setOrientation(LinearLayout.VERTICAL);words.setGravity(android.view.Gravity.CENTER_VERTICAL);
  title.setTextSize(22);title.setTypeface(android.graphics.Typeface.DEFAULT,android.graphics.Typeface.BOLD);title.setGravity(android.view.Gravity.START);title.setSingleLine(true);title.setEllipsize(android.text.TextUtils.TruncateAt.END);title.setIncludeFontPadding(false);title.setMinimumHeight(0);words.addView(title,new LinearLayout.LayoutParams(-1,-2));
  android.widget.TextView subtitle=DrawerDesign.label(c,description(title.getText().toString()),11,false);subtitle.setSingleLine(true);subtitle.setEllipsize(android.text.TextUtils.TruncateAt.END);LinearLayout.LayoutParams sub=new LinearLayout.LayoutParams(-1,-2);sub.topMargin=UiComponents.dp(c,5);words.addView(subtitle,sub);
  LinearLayout.LayoutParams wp=new LinearLayout.LayoutParams(0,-2,1);wp.setMarginStart(UiComponents.dp(c,14));navigation.addView(words,wp);
  column.setOrientation(LinearLayout.VERTICAL);column.setGravity(android.view.Gravity.START);column.addView(navigation,new LinearLayout.LayoutParams(-1,-2));
  Flow actions=null;if(!extra.isEmpty()){actions=new Flow(c);for(View action:extra)actions.addView(action,new ViewGroup.LayoutParams(-2,-2));LinearLayout.LayoutParams ap=new LinearLayout.LayoutParams(-1,-2);ap.topMargin=UiComponents.dp(c,16);column.addView(actions,ap);}
  column.setPadding(0,UiComponents.dp(c,4),0,UiComponents.dp(c,12));DrawerDesign.heading(column,back,title,subtitle,actions);
 }
 private static String description(String title){if(title.contains("路由"))return "按规则安排每一次连接";if(title.contains("设置"))return "按你的习惯，轻松设置";if(title.contains("工具"))return "常用工具，随手可用";if(title.contains("关于"))return "简单好用，持续打磨";return "JiajiaBox";}

 private static final class Flow extends ViewGroup {
  final int gap;
  Flow(Context c){super(c);gap=UiComponents.dp(c,8);}
  protected void onMeasure(int widthSpec,int heightSpec){
   int width=MeasureSpec.getSize(widthSpec),available=Math.max(0,width-getPaddingLeft()-getPaddingRight());
   int x=0,y=0,line=0;
   for(int i=0;i<getChildCount();i++){
    View child=getChildAt(i);if(child.getVisibility()==GONE)continue;
    child.measure(MeasureSpec.makeMeasureSpec(available,MeasureSpec.AT_MOST),MeasureSpec.makeMeasureSpec(0,MeasureSpec.UNSPECIFIED));
    int w=child.getMeasuredWidth(),h=child.getMeasuredHeight();
    if(x>0&&x+gap+w>available){y+=line+gap;x=0;line=0;}
    if(x>0)x+=gap;x+=w;line=Math.max(line,h);
   }
   setMeasuredDimension(resolveSize(width,widthSpec),resolveSize(y+line+getPaddingTop()+getPaddingBottom(),heightSpec));
  }
  protected void onLayout(boolean changed,int l,int t,int r,int b){
   int available=r-l-getPaddingLeft()-getPaddingRight(),x=0,y=getPaddingTop(),line=0;
   boolean rtl=getLayoutDirection()==LAYOUT_DIRECTION_RTL;
   for(int i=0;i<getChildCount();i++){
    View child=getChildAt(i);if(child.getVisibility()==GONE)continue;
    int w=child.getMeasuredWidth(),h=child.getMeasuredHeight();
    if(x>0&&x+gap+w>available){y+=line+gap;x=0;line=0;}
    if(x>0)x+=gap;int left=rtl?r-l-getPaddingRight()-x-w:getPaddingLeft()+x;
    child.layout(left,y,left+w,y+h);x+=w;line=Math.max(line,h);
   }
  }
 }
}

