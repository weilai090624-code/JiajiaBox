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
import java.util.IdentityHashMap;
import java.util.Map;

/** Window-owned motion tokens and latest-only publications. All calls are on the UI thread. */
public final class DrawerWorkGate {
    private static final int TAG=0x7f0a0f7d;
    private DrawerWorkGate(){}

    public static final class Lease {
        private final MotionWorkQueue.Lease lease;
        private final State state;
        private Lease(State state,MotionWorkQueue.Lease lease){this.state=state;this.lease=lease;}
        public void close(){lease.close();state.movementChanged();}
    }

    private static final class State implements Runnable,View.OnAttachStateChangeListener {
        final View root;
        final MotionWorkQueue queue=new MotionWorkQueue(this::schedule);
        final Map<View,Runnable> observers=new IdentityHashMap<>();
        boolean posted,moving;
        State(View root){this.root=root;root.addOnAttachStateChangeListener(this);}
        void movementChanged(){
            boolean next=queue.isMoving();if(next==moving)return;moving=next;
            for(Runnable observer:observers.values().toArray(new Runnable[0]))observer.run();
        }
        void schedule(){
            if(!posted&&root.isAttachedToWindow()&&queue.hasReadyWork()){
                posted=true;root.postOnAnimation(this);
            }
        }
        @Override public void run(){posted=false;queue.drainOne();}
        @Override public void onViewAttachedToWindow(View view){schedule();}
        @Override public void onViewDetachedFromWindow(View view){
            root.removeCallbacks(this);posted=false;queue.dispose();observers.clear();
            root.removeOnAttachStateChangeListener(this);
            if(root.getTag(TAG)==this)root.setTag(TAG,null);
        }
    }

    private static State state(View owner,boolean create){
        if(owner==null)return null;
        View root=owner.getRootView();Object value=root.getTag(TAG);
        if(value instanceof State)return (State)value;
        if(!create)return null;
        State result=new State(root);root.setTag(TAG,result);return result;
    }
    public static Lease begin(View owner){State state=state(owner,true);Lease lease=new Lease(state,state.queue.begin());state.movementChanged();return lease;}
    public static void drawerMoving(View owner,boolean moving){
        State state=state(owner,moving);if(state!=null){state.queue.drawerMoving(moving);state.movementChanged();}
    }
    public static boolean isMoving(View owner){State state=state(owner,false);return state!=null&&state.queue.isMoving();}
    public static boolean defer(View owner,Runnable latest){
        State state=state(owner,false);return state!=null&&state.queue.defer(owner,latest);
    }
    public static void publish(View owner,Runnable latest){if(!defer(owner,latest))latest.run();}
    /** Async row builders must not mutate an expanding drawer or a page already removed. */
    public static boolean post(View dispatcher,View owner,Runnable latest){
        return dispatcher.post(()->{
            if(!owner.isAttachedToWindow())return;
            publish(owner,()->{if(owner.isAttachedToWindow())latest.run();});
        });
    }
    public static void cancel(View owner){State state=state(owner,false);if(state!=null)state.queue.cancel(owner);}
    /** Visibility clients subscribe once; no drawer per-frame listener or polling. */
    public static void observe(View owner,Runnable changed){state(owner,true).observers.put(owner,changed);}
    public static void unobserve(View owner){State state=state(owner,false);if(state!=null)state.observers.remove(owner);}
}
