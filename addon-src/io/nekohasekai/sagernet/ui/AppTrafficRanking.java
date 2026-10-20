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

