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

