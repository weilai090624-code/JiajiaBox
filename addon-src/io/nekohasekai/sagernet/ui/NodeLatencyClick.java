package io.nekohasekai.sagernet.ui;

import android.view.View;
import android.widget.Toast;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

/** 点节点行尾的延迟数字，单独测这一个节点。 */
public final class NodeLatencyClick implements View.OnClickListener {
    private final Object fragment;
    private final Object proxy;

    public NodeLatencyClick(Object fragment, Object proxy) {
        this.fragment = fragment;
        this.proxy = proxy;
    }

    private static long groupIdOf(Object proxy) {
        try {
            Object value = proxy.getClass().getMethod("getGroupId").invoke(proxy);
            if (value instanceof Number) return ((Number) value).longValue();
        } catch (Throwable ignored) {
        }
        return 0L;
    }

    @Override
    public void onClick(View view) {
        if (fragment == null || proxy == null) return;
        try {
            List<Object> single = new ArrayList<>(1);
            single.add(proxy);
            Method test = null;
            for (Method candidate : fragment.getClass().getDeclaredMethods()) {
                if (!"access$speedTest".equals(candidate.getName())) continue;
                Class<?>[] types = candidate.getParameterTypes();
                if (types.length == 3 && List.class.isAssignableFrom(types[1]) && types[2] == long.class) {
                    test = candidate;
                    break;
                }
            }
            if (test == null) throw new NoSuchMethodException("access$speedTest");
            test.setAccessible(true);
            test.invoke(null, fragment, single, groupIdOf(proxy));
        } catch (Throwable error) {
            try {
                Toast.makeText(view.getContext(), "单节点测速不可用", Toast.LENGTH_SHORT).show();
            } catch (Throwable ignored) {
            }
        }
    }
}
