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

/** Validate built-in split routes before the config builder resolves their nodes. */
public final class RoutingFallback {
    private static Object call(Object target,String name,Class<?>[] types,Object... args) throws Exception {
        return target.getClass().getMethod(name,types).invoke(target,args);
    }
    private static Object dao(String name) throws Exception {
        Object c=Class.forName("io.nekohasekai.sagernet.database.SagerDatabase").getField("Companion").get(null);
        return call(c,name,new Class<?>[0]);
    }
    public static boolean internal(String name) {
        return "佳嘉 · 主流 AI 聚合分流".equals(name) || "佳嘉 · Telegram 统一分流".equals(name);
    }
    public static List<?> sanitize(List<?> rules) {
        try {
            Object proxies=dao("getProxyDao"), saved=dao("getRulesDao");
            List<Object> result=new ArrayList<>();
            for(Object rule:rules) {
                String name=(String)call(rule,"getName",new Class<?>[0]);
                if(internal(name) && (Boolean)call(rule,"getEnabled",new Class<?>[0])) {
                    long id=(Long)call(rule,"getOutbound",new Class<?>[0]);
                    // Built-in split selectors must refer to a concrete, existing node.
                    if(id<=0 || call(proxies,"getById",new Class<?>[]{long.class},id)==null) {
                        call(rule,"setEnabled",new Class<?>[]{boolean.class},false);
                        call(saved,"updateRule",new Class<?>[]{rule.getClass()},rule);
                        android.util.Log.w("RoutingFallback", name+": selected node missing; disabled split route, ordinary routing applies");
                        continue;
                    }
                }
                result.add(rule);
            }
            return result;
        } catch(Exception e) { throw new IllegalStateException("无法检查单独分流节点",e); }
    }
    public static void sanitizeSaved() {
        try { sanitize((List<?>)call(dao("getRulesDao"),"allRules",new Class<?>[0])); }
        catch(Exception e) { throw new IllegalStateException("无法检查单独分流节点",e); }
    }
}

