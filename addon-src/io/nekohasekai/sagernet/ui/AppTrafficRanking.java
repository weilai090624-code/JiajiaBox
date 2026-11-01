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
import org.json.*;

/** The core's persisted rows contain cumulative proxied upload/download bytes. */
public final class AppTrafficRanking {
    public static final class Entry {
        public final String packageName;
        public final long upload,download,total;
        Entry(String name,long up,long down){packageName=name;upload=up;download=down;total=add(up,down);}
    }
    private static long add(long a,long b){return Long.MAX_VALUE-a<b?Long.MAX_VALUE:a+b;}
    public static List<Entry> topFive(String json)throws JSONException {
        JSONArray data=new JSONArray(json);Map<String,long[]> merged=new HashMap<>();
        for(int i=0;i<data.length();i++){
            JSONObject row=data.optJSONObject(i);if(row==null)continue;
            String name=row.optString("package","").trim();if(name.isEmpty())name="unknown";
            long up=Math.max(0,row.optLong("upload",0)),down=Math.max(0,row.optLong("download",0));
            long[] counts=merged.get(name);if(counts==null){counts=new long[2];merged.put(name,counts);}counts[0]=add(counts[0],up);counts[1]=add(counts[1],down);
        }
        List<Entry> entries=new ArrayList<>();for(Map.Entry<String,long[]> row:merged.entrySet()){
            Entry e=new Entry(row.getKey(),row.getValue()[0],row.getValue()[1]);if(e.total>0)entries.add(e);
        }
        Collections.sort(entries,(a,b)->{int order=Long.compare(b.total,a.total);return order!=0?order:a.packageName.compareTo(b.packageName);});
        return Collections.unmodifiableList(new ArrayList<>(entries.subList(0,Math.min(5,entries.size()))));
    }
}

