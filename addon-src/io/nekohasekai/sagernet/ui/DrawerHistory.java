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
import java.util.*;
/** Android-free state model used by drawer navigation and its regression tests. */
public final class DrawerHistory<P,S> {
 private final Deque<P> pages=new ArrayDeque<>();
 private final Map<Integer,S> snapshots=new HashMap<>();
 private boolean transitioning;
 private int root;
 public void root(int id){root=id;}
 public int root(){return root;}
 public void remember(S state){if(root!=0)snapshots.put(root,state);}
 public S snapshot(){return snapshots.get(root);}
 public int depth(){return pages.size();}
 public P current(){return pages.peekLast();}
 public boolean begin(){if(transitioning)return false;transitioning=true;return true;}
 public void complete(){transitioning=false;}
 public boolean transitioning(){return transitioning;}
 public void push(P page){pages.addLast(page);}
 public P pop(){return pages.pollLast();}
 public void resetPages(){pages.clear();transitioning=false;}
}

