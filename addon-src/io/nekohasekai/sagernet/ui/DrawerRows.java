/* Copyright (c) 2026 weilai090624-code. MIT license; see LICENSE. */
package io.nekohasekai.sagernet.ui;

import android.os.SystemClock;
import android.view.View;
import java.util.List;

/** Publish expensive rule rows in small frame batches after drawer motion settles. */
public final class DrawerRows implements Runnable {
    public interface Renderer { void render(List<?> rows); }
    private final View owner;
    private final List<?> rows;
    private final Renderer renderer;
    private int next;
    private DrawerRows(View owner,List<?> rows,Renderer renderer){this.owner=owner;this.rows=rows;this.renderer=renderer;}
    public static boolean post(View dispatcher,View owner,List<?> rows,Renderer renderer){
        return DrawerWorkGate.post(dispatcher,owner,new DrawerRows(owner,rows,renderer));
    }
    @Override public void run(){
        if(!owner.isAttachedToWindow()||DrawerWorkGate.defer(owner,this))return;
        if(rows.isEmpty()){renderer.render(rows);return;}
        long until=SystemClock.uptimeMillis()+4;
        while(next<rows.size()){
            renderer.render(rows.subList(next,next+1));next++;
            if(SystemClock.uptimeMillis()>=until)break;
        }
        if(next<rows.size())owner.postOnAnimation(this);
    }
}
