/* Copyright (c) 2026 weilai090624-code. MIT license; see LICENSE. */
package io.nekohasekai.sagernet.ui;

import android.view.View;

/** Cache static child content while its parent moves or clips it. Never cache the morphing shell. */
public final class DrawerLayers {
    private static final int BIND_TAG=0x7f0a0f7e,LEASE_TAG=0x7f0a0f7f;
    private DrawerLayers(){}

    public static final class Lease implements View.OnAttachStateChangeListener {
        private View view;
        private int users=1;
        private Lease(View view){this.view=view;}
        public void close(){if(view!=null&&--users==0)release();}
        private void release(){
            View owner=view;if(owner==null)return;view=null;
            owner.removeOnAttachStateChangeListener(this);
            if(owner.getTag(LEASE_TAG)==this){
                owner.setTag(LEASE_TAG,null);
                if(owner.getLayerType()==View.LAYER_TYPE_HARDWARE)owner.setLayerType(View.LAYER_TYPE_NONE,null);
            }
        }
        public void onViewAttachedToWindow(View view){}
        public void onViewDetachedFromWindow(View view){release();}
    }

    public static Lease acquire(View view){
        if(view==null||!view.isAttachedToWindow()||!view.isHardwareAccelerated()||view.getWidth()<=0||view.getHeight()<=0)return null;
        Object active=view.getTag(LEASE_TAG);
        if(active instanceof Lease){Lease lease=(Lease)active;lease.users++;return lease;}
        // Leave layers owned by the framework or by another component untouched.
        if(view.getLayerType()!=View.LAYER_TYPE_NONE)return null;
        Lease lease=new Lease(view);
        try{
            view.setLayerType(View.LAYER_TYPE_HARDWARE,null);
            view.setTag(LEASE_TAG,lease);view.addOnAttachStateChangeListener(lease);
            return lease;
        }catch(RuntimeException error){
            lease.release();android.util.Log.w("DrawerLayers","Optional layer unavailable",error);return null;
        }
    }

    /** Observe state changes once; no work is added to the drawer's per-frame callback. */
    public static void bind(View view){
        if(view.getTag(BIND_TAG)!=null)return;
        Binding binding=new Binding(view);view.setTag(BIND_TAG,binding);view.addOnAttachStateChangeListener(binding);
        if(view.isAttachedToWindow())binding.onViewAttachedToWindow(view);
    }
    private static final class Binding implements View.OnAttachStateChangeListener,Runnable {
        final View view;Lease lease;boolean pending;
        final Runnable afterLayout=()->{pending=false;update(false);};
        Binding(View view){this.view=view;}
        public void onViewAttachedToWindow(View view){DrawerWorkGate.observe(view,this);run();}
        public void onViewDetachedFromWindow(View view){DrawerWorkGate.unobserve(view);clear();}
        public void run(){update(true);}
        void update(boolean retry){
            if(DrawerWorkGate.isMoving(view)&&view.isShown()){
                if(lease==null)lease=acquire(view);
            }else if(!DrawerWorkGate.isMoving(view))clear();
            // DrawerLayout may announce SETTLING before making a closed drawer visible.
            // Retry once after layout, never poll for the duration of the animation.
            if(retry&&lease==null&&!pending&&DrawerWorkGate.isMoving(view)&&view.isHardwareAccelerated()){
                pending=true;view.postOnAnimation(afterLayout);
            }
        }
        void clear(){view.removeCallbacks(afterLayout);pending=false;if(lease!=null){lease.close();lease=null;}}
    }
}
