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

import android.app.Dialog;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.*;
import java.util.ArrayList;
import java.util.List;

/** Three templates retain existing controls and their callbacks, not copies of values. */
public final class DialogTemplates {
    public enum Kind { SELECT, INPUT, CONFIRM }
    private static LinearLayout mainColumn(View view) {
        if(view instanceof LinearLayout && ((LinearLayout)view).getOrientation()==LinearLayout.VERTICAL)return (LinearLayout)view;
        if(view instanceof ViewGroup && ((ViewGroup)view).getChildCount()==1)return mainColumn(((ViewGroup)view).getChildAt(0));
        return null;
    }
    private static boolean blocked(View view) {
        if(DrawerAppearance.isManagedList(view)||view instanceof android.widget.AbsListView||view instanceof RadioGroup)return true;
        if(view instanceof ViewGroup){ViewGroup g=(ViewGroup)view;for(int i=0;i<g.getChildCount();i++)if(blocked(g.getChildAt(i)))return true;}
        return false;
    }
    private static int edits(View view) {
        int count=view instanceof EditText?1:0;
        if(view instanceof ViewGroup){ViewGroup g=(ViewGroup)view;for(int i=0;i<g.getChildCount();i++)count+=edits(g.getChildAt(i));}return count;
    }
    private static boolean scrolling(View view) {
        if(view instanceof ScrollView)return true;
        if(view instanceof ViewGroup){ViewGroup g=(ViewGroup)view;for(int i=0;i<g.getChildCount();i++)if(scrolling(g.getChildAt(i)))return true;}return false;
    }
    private static boolean hasScrollingChoices(View view) {
        if(view instanceof ScrollView)return countChoices(view)>0;
        if(view instanceof ViewGroup){ViewGroup group=(ViewGroup)view;for(int i=0;i<group.getChildCount();i++)if(hasScrollingChoices(group.getChildAt(i)))return true;}
        return false;
    }
    private static int countChoices(View view) {
        int count=actionLike(view)?1:0;
        if(view instanceof ViewGroup){ViewGroup group=(ViewGroup)view;for(int i=0;i<group.getChildCount();i++)count+=countChoices(group.getChildAt(i));}return count;
    }
    private static boolean actionLike(View view) {
        if(!view.isClickable()||view instanceof EditText||view instanceof CompoundButton)return false;
        if(view instanceof TextView)return true;
        return view instanceof FrameLayout && ((ViewGroup)view).getChildCount()==1 && ((ViewGroup)view).getChildAt(0) instanceof TextView;
    }
    private static List<View> footer(View view) {
        List<View> result=new ArrayList<>();
        if(actionLike(view))result.add(view);
        else if(view instanceof LinearLayout && ((LinearLayout)view).getOrientation()==LinearLayout.HORIZONTAL) {
            ViewGroup group=(ViewGroup)view;
            for(int i=0;i<group.getChildCount();i++){View child=group.getChildAt(i);if(!actionLike(child))return new ArrayList<>();result.add(child);}
        }
        return result;
    }
    public static boolean ownsWindow(Window window) {
        if(window==null)return false;View content=window.findViewById(android.R.id.content);
        return content instanceof ViewGroup && ((ViewGroup)content).getChildCount()==1 && UiComponents.owns(((ViewGroup)content).getChildAt(0));
    }
    public static boolean adoptWindow(Window window) {
        if(window==null)return false;
        if(ownsWindow(window)){UiComponents.refresh(window.findViewById(android.R.id.content));return true;}
        View content=window.findViewById(android.R.id.content);
        if(content==null)return false;
        if(blocked(content))return adoptNative(window);
        LinearLayout column=mainColumn(content);
        if(column==null||column.getChildCount()==0)return adoptNative(window);
        boolean groups=true;
        for(int i=0;i<column.getChildCount();i++)if(!(column.getChildAt(i) instanceof JJGlassCapsule)||!column.getChildAt(i).isClickable())groups=false;
        if(groups)return adopt(window,Kind.SELECT,"切换分组",true);
        int trailing=0;
        for(int i=column.getChildCount()-1;i>0&&actionLike(column.getChildAt(i));i--)trailing++;
        if(trailing>=3 && column.getChildAt(0) instanceof TextView && !column.getChildAt(0).isClickable())return adoptStacked(window,column,trailing);
        List<View> actions=footer(column.getChildAt(column.getChildCount()-1));
        if(actions.isEmpty()||actions.size()>2)return adoptNative(window);
        for(int i=0;i<column.getChildCount()-1;i++)if(actionLike(column.getChildAt(i)))return false;
        TextView title=column.getChildAt(0) instanceof TextView && !(column.getChildAt(0) instanceof EditText)?(TextView)column.getChildAt(0):null;
        if(title==null||title.isClickable())return false;
        int fields=edits(column);
        Kind kind=hasScrollingChoices(column)?Kind.SELECT:fields>0?Kind.INPUT:Kind.CONFIRM;
        return adopt(window,kind,title.getText(),false);
    }
    private static boolean adoptStacked(Window window,LinearLayout previous,int count) {
        Context c=previous.getContext();int split=previous.getChildCount()-count;
        List<View> items=new ArrayList<>();for(int i=0;i<previous.getChildCount();i++)items.add(previous.getChildAt(i));
        FrameLayout surface=UiComponents.surface(c);LinearLayout column=UiComponents.column(c);
        surface.addView(column,new FrameLayout.LayoutParams(-1,-2));
        for(int i=0;i<items.size();i++) {
            View item=items.get(i);detach(item);
            if(i>=split) {
                if(i==items.size()-1) {
                    LinearLayout bar=UiComponents.actions(c);UiComponents.addAction(bar,item);
                    LinearLayout.LayoutParams lp=new LinearLayout.LayoutParams(-1,-2);lp.topMargin=UiComponents.dp(c,16);column.addView(bar,lp);
                } else {
                    UiComponents.action(item);LinearLayout.LayoutParams lp=new LinearLayout.LayoutParams(-1,UiComponents.dp(c,48));lp.topMargin=UiComponents.dp(c,8);column.addView(item,lp);
                }
            } else {
                styleBody(item,false);item.setPaddingRelative(0,0,0,0);
                if(item instanceof TextView){TextView label=(TextView)item;label.setGravity(android.view.Gravity.START|android.view.Gravity.CENTER_VERTICAL);if(i==0){label.setTextSize(18);label.setTypeface(android.graphics.Typeface.DEFAULT,android.graphics.Typeface.BOLD);}}
                LinearLayout.LayoutParams lp=new LinearLayout.LayoutParams(-1,-2);if(i>0)lp.topMargin=UiComponents.dp(c,12);column.addView(item,lp);
            }
        }
        setContent(window,surface);window.setBackgroundDrawable(new ColorDrawable(Color.TRANSPARENT));window.setWindowAnimations(android.R.style.Animation_Dialog);return true;
    }
    private static final class BoundChoices extends BaseAdapter {
        private final ListAdapter original;
        BoundChoices(ListAdapter original){this.original=original;original.registerDataSetObserver(new android.database.DataSetObserver(){public void onChanged(){notifyDataSetChanged();}public void onInvalidated(){notifyDataSetInvalidated();}});}
        public int getCount(){return original.getCount();}
        public Object getItem(int position){return original.getItem(position);}
        public long getItemId(int position){return original.getItemId(position);}
        public boolean hasStableIds(){return original.hasStableIds();}
        public int getItemViewType(int position){return original.getItemViewType(position);}
        public int getViewTypeCount(){return original.getViewTypeCount();}
        public boolean areAllItemsEnabled(){return original.areAllItemsEnabled();}
        public boolean isEnabled(int position){return original.isEnabled(position);}
        public View getView(int position,View reused,ViewGroup parent){View row=original.getView(position,reused,parent);UiComponents.choice(row);return row;}
    }
    private static TextView nativeTitle(View view) {
        if(view instanceof TextView)try{if("alertTitle".equals(view.getResources().getResourceEntryName(view.getId())))return (TextView)view;}catch(Exception ignored){}
        if(view instanceof ViewGroup){ViewGroup group=(ViewGroup)view;for(int i=0;i<group.getChildCount();i++){TextView found=nativeTitle(group.getChildAt(i));if(found!=null)return found;}}return null;
    }
    private static boolean adoptNative(Window window) {
        View content=window.findViewById(android.R.id.content);if(content==null)return false;Context context=content.getContext();
        List<View> actions=new ArrayList<>();
        for(int id:new int[]{android.R.id.button2,android.R.id.button3,android.R.id.button1}){View button=window.findViewById(id);if(button!=null&&button.getVisibility()==View.VISIBLE)actions.add(button);}
        if(actions.isEmpty())return false;
        View root=window.findViewById(android.R.id.content);TextView title=nativeTitle(root);if(title==null)return false;
        View body=window.findViewById(android.R.id.custom);
        if(!(body instanceof ViewGroup)||((ViewGroup)body).getChildCount()==0)body=window.findViewById(android.R.id.list);
        if(body==null)body=window.findViewById(android.R.id.message);
        if(body==null)return false;
        if(body instanceof ListView){
            ListView list=(ListView)body;ListAdapter original=list.getAdapter();
            if(original!=null&&!(original instanceof BoundChoices)&&list.getHeaderViewsCount()==0){
                android.util.SparseBooleanArray checked=list.getCheckedItemPositions();checked=checked==null?null:checked.clone();
                int position=list.getFirstVisiblePosition();View first=list.getChildAt(0);int top=first==null?0:first.getTop();
                list.setAdapter(new BoundChoices(original));
                if(checked!=null)for(int i=0;i<checked.size();i++)list.setItemChecked(checked.keyAt(i),checked.valueAt(i));
                list.setSelectionFromTop(position,top);DrawerAppearance.managedList(list);
            }
        }
        FrameLayout surface=UiComponents.surface(context);LinearLayout column=UiComponents.column(context);surface.addView(column,new FrameLayout.LayoutParams(-1,-2));
        column.addView(UiComponents.title(context,title.getText()),new LinearLayout.LayoutParams(-1,-2));
        detach(body);styleBody(body,body instanceof ListView);LinearLayout.LayoutParams bp=new LinearLayout.LayoutParams(-1,body instanceof ListView?maxBody(context):-2);bp.topMargin=UiComponents.dp(context,12);column.addView(body,bp);
        LinearLayout bar=UiComponents.actions(context);for(View action:actions){detach(action);UiComponents.addAction(bar,action);}LinearLayout.LayoutParams ap=new LinearLayout.LayoutParams(-1,-2);ap.topMargin=UiComponents.dp(context,16);column.addView(bar,ap);
        setContent(window,surface);window.setBackgroundDrawable(new ColorDrawable(Color.TRANSPARENT));window.setWindowAnimations(android.R.style.Animation_Dialog);UiComponents.refresh(surface);return true;
    }
    private static void setContent(Window window,View root) {
        Dialog dialog=dialogFor(window);
        if(dialog!=null)dialog.setContentView(root);else window.setContentView(root);
    }
    private static Dialog dialogFor(Window window) {
        Object callback=window.getCallback();
        for(int i=0;i<8&&callback!=null;i++){
            if(callback instanceof Dialog)return (Dialog)callback;
            try{Object next=callback.getClass().getMethod("getWrapped").invoke(callback);if(next==callback)break;callback=next;}catch(Exception ignored){break;}
        }
        return null;
    }
    private static void detach(View view){if(view.getParent() instanceof ViewGroup)((ViewGroup)view.getParent()).removeView(view);}
    private static boolean adopt(Window window,Kind kind,CharSequence heading,boolean groups) {
        final Dialog dialog=groups?dialogFor(window):null;if(groups&&dialog==null)return false;
        View old=window.findViewById(android.R.id.content);LinearLayout previous=mainColumn(old);
        if(previous==null)return false;
        Context context=previous.getContext();
        List<View> items=new ArrayList<>();for(int i=0;i<previous.getChildCount();i++)items.add(previous.getChildAt(i));
        List<View> actions=groups?new ArrayList<>():footer(items.get(items.size()-1));
        View oldFooter=groups?null:items.remove(items.size()-1);
        if(!groups&&!items.isEmpty()&&items.get(0) instanceof TextView)items.remove(0);
        FrameLayout surface=UiComponents.surface(context);LinearLayout column=UiComponents.column(context);
        surface.addView(column,new FrameLayout.LayoutParams(-1,-2));
        column.addView(UiComponents.title(context,heading),new LinearLayout.LayoutParams(-1,-2));
        LinearLayout body=new LinearLayout(context);body.setOrientation(LinearLayout.VERTICAL);
        for(View item:items){detach(item);styleBody(item,kind==Kind.SELECT);LinearLayout.LayoutParams lp=new LinearLayout.LayoutParams(-1,-2);lp.topMargin=UiComponents.dp(context,groups?UiComponents.GAP:12);if(item instanceof ScrollView){int height=item.getLayoutParams()==null?0:item.getLayoutParams().height;lp.height=height>0?Math.min(height,maxBody(context)):maxBody(context);}body.addView(item,lp);}
        if(groups){ScrollView scroll=new ScrollView(context);scroll.setFillViewport(false);scroll.addView(body,new FrameLayout.LayoutParams(-1,-2));column.addView(scroll,new LinearLayout.LayoutParams(-1,Math.min(maxBody(context),Math.max(UiComponents.dp(context,56),SubscriptionCards.estimatedHeight(context,items)))));}
        else column.addView(body,new LinearLayout.LayoutParams(-1,-2));
        LinearLayout bar=UiComponents.actions(context);
        if(groups){TextView cancel=new TextView(context);cancel.setText(android.R.string.cancel);cancel.setOnClickListener(v->dialog.dismiss());actions.add(cancel);}
        for(View action:actions){detach(action);UiComponents.addAction(bar,action);}
        LinearLayout.LayoutParams footerParams=new LinearLayout.LayoutParams(-1,-2);footerParams.topMargin=UiComponents.dp(context,16);column.addView(bar,footerParams);
        setContent(window,surface);window.setBackgroundDrawable(new ColorDrawable(Color.TRANSPARENT));
        window.setWindowAnimations(android.R.style.Animation_Dialog);
        window.setSoftInputMode(WindowManager.LayoutParams.SOFT_INPUT_ADJUST_RESIZE|WindowManager.LayoutParams.SOFT_INPUT_STATE_ALWAYS_HIDDEN);
        UiComponents.refresh(surface);
        return true;
    }
    private static int maxBody(Context c){int screen=c.getResources().getDisplayMetrics().heightPixels;return Math.max(UiComponents.dp(c,96),Math.min((int)(screen*.55f),screen-UiComponents.dp(c,220)));}
    private static void styleBody(View view,boolean selection) {
        if(DrawerAppearance.isManagedList(view))return;
        if(view instanceof EditText){UiComponents.field((EditText)view);return;}
        if(selection && actionLike(view)){UiComponents.choice(view);return;}
        if(view instanceof TextView)UiComponents.text((TextView)view);
        if(view instanceof ViewGroup){ViewGroup g=(ViewGroup)view;for(int i=0;i<g.getChildCount();i++)styleBody(g.getChildAt(i),selection);}
    }
}

