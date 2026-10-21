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

import java.util.LinkedHashMap;
import java.util.Map;

/** Main-thread state machine, independent of Android so cancellation can be tested. */
final class MotionWorkQueue {
    private final Map<Object,Runnable> pending=new LinkedHashMap<>();
    private final Runnable ready;
    private int leases;
    private boolean drawerMoving,disposed;

    MotionWorkQueue(Runnable ready){this.ready=ready;}

    final class Lease {
        private boolean released;
        void close(){
            if(released)return;
            released=true;
            if(disposed)return;
            leases--;
            signal();
        }
    }

    Lease begin(){if(!disposed)leases++;return new Lease();}
    boolean isMoving(){return !disposed&&(drawerMoving||leases>0);}
    void drawerMoving(boolean moving){
        if(disposed||drawerMoving==moving)return;
        drawerMoving=moving;
        signal();
    }
    boolean defer(Object owner,Runnable update){
        if(disposed)return false;
        if(!isMoving()){pending.remove(owner);return false;}
        pending.put(owner,update);
        return true;
    }
    void cancel(Object owner){pending.remove(owner);}
    boolean hasReadyWork(){return !disposed&&!isMoving()&&!pending.isEmpty();}
    void drainOne(){
        if(!hasReadyWork())return;
        Map.Entry<Object,Runnable> next=pending.entrySet().iterator().next();
        Runnable task=next.getValue();
        pending.remove(next.getKey());
        try{task.run();}finally{signal();}
    }
    void dispose(){disposed=true;pending.clear();leases=0;drawerMoving=false;}
    private void signal(){if(hasReadyWork())ready.run();}
}
