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
import org.json.*;
import java.util.*;
/** Immutable per-filter page indexes; built on the connection worker. */
final class ConnectionRows {
 static final int LIMIT=150;
 final List<JSONObject>[] pages;
 final int[] counts=new int[4];
 @SuppressWarnings("unchecked") ConnectionRows(JSONArray source,JSONObject types){
  pages=(List<JSONObject>[])new List<?>[4];for(int i=0;i<4;i++)pages[i]=new ArrayList<>();
  JSONArray ordered=ConnectionInspector.ordered(source);
  for(int i=0;i<ordered.length();i++){
   JSONObject row=ordered.optJSONObject(i);if(row==null)continue;
   for(int filter=0;filter<4;filter++)if(ConnectionInspector.matches(row,types,filter,"")){
    counts[filter]++;if(pages[filter].size()<LIMIT)pages[filter].add(row);
   }
  }
  for(int i=0;i<4;i++)pages[i]=Collections.unmodifiableList(pages[i]);
 }
}

