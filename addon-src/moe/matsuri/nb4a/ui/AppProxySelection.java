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

package moe.matsuri.nb4a.ui;

import java.util.*;

public final class AppProxySelection {
    private final Set<String> selected = new HashSet<>();
    private final Map<String, Integer> uids = new HashMap<>();
    public AppProxySelection(String saved) {
        if (saved != null) selected.addAll(Arrays.asList(saved.split("\n")));
        selected.remove("");
    }
    public void applications(Map<String, Integer> values) { uids.clear(); uids.putAll(values); }
    public boolean contains(String name) { return selected.contains(name); }
    public int size() { return selected.size(); }
    public void clear() { selected.clear(); }
    public void toggle(String name) {
        boolean checked = !selected.contains(name);
        Integer uid = uids.get(name);
        for (Map.Entry<String, Integer> entry : uids.entrySet()) {
            if (entry.getKey().equals(name) || (uid != null && uid.equals(entry.getValue()))) {
                if (checked) selected.add(entry.getKey()); else selected.remove(entry.getKey());
            }
        }
    }
    public String saved() {
        StringBuilder value = new StringBuilder();
        for (String name : new TreeSet<>(selected)) {
            if (value.length() > 0) value.append('\n');
            value.append(name);
        }
        return value.toString();
    }
}

