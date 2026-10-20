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

