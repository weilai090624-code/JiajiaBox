/*
 * Copyright (c) 2026 weilai090624-code
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
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
