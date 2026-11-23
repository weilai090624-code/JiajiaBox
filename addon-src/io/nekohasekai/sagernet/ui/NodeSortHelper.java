package io.nekohasekai.sagernet.ui;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/** 节点列表排序：订阅默认（按 id）与延迟升序之间切换。 */
public final class NodeSortHelper {
    private static final String PREFS = "jj_node_sort";
    private static final String KEY = "by_latency";
    private static boolean byLatency = false;
    private static boolean initialized = false;

    public static boolean byLatency() { return byLatency; }

    /** 只在首次读盘；之后由 toggle 控制，避免列表刷新时把刚改的状态覆盖回去。 */
    private static void ensureLoaded(android.content.Context context) {
        if (initialized || context == null) return;
        initialized = true;
        load(context);
    }

    private static void load(android.content.Context context) {
        if (context == null) return;
        try {
            byLatency = context.getSharedPreferences(PREFS, android.content.Context.MODE_PRIVATE)
                .getBoolean(KEY, false);
        } catch (Throwable ignored) {
        }
    }

    private static void save(android.content.Context context) {
        if (context == null) return;
        try {
            context.getSharedPreferences(PREFS, android.content.Context.MODE_PRIVATE)
                .edit().putBoolean(KEY, byLatency).apply();
        } catch (Throwable ignored) {
        }
    }

    public static String label() { return byLatency ? "延迟排序" : "订阅顺序"; }

    /** 抽屉行的完整标题，创建时即反映已保存的选择。 */
    public static String title(android.content.Context context) {
        ensureLoaded(context);
        return "节点排序 · " + label();
    }

    private static Object field(Object target, String name) {
        Class<?> type = target.getClass();
        while (type != null) {
            try {
                Field found = type.getDeclaredField(name);
                found.setAccessible(true);
                return found.get(target);
            } catch (NoSuchFieldException ignored) {
                type = type.getSuperclass();
            } catch (Throwable ignored) {
                return null;
            }
        }
        return null;
    }

    private static long idOf(Object proxy) {
        try {
            Object value = proxy.getClass().getMethod("getId").invoke(proxy);
            if (value instanceof Number) return ((Number) value).longValue();
        } catch (Throwable ignored) {
        }
        return Long.MAX_VALUE;
    }

    private static int pingOf(Object proxy) {
        try {
            Object value = proxy.getClass().getMethod("getPing").invoke(proxy);
            if (value instanceof Number) return ((Number) value).intValue();
        } catch (Throwable ignored) {
        }
        return -1;
    }

    /** 切换排序方式并立即应用；返回切换后的状态。 */
    public static boolean toggle(Object adapter) {
        byLatency = !byLatency;
        applyTo(adapter);
        return byLatency;
    }

    @SuppressWarnings({"unchecked", "rawtypes"})
    public static boolean applyTo(Object adapter) {
        if (adapter == null) return false;
        try {
            Method getList = adapter.getClass().getMethod("getList");
            Object current = getList.invoke(adapter);
            if (!(current instanceof List)) return false;
            List<Object> sorted = new ArrayList<>((List<Object>) current);
            if (byLatency) {
                Collections.sort(sorted, new Comparator() {
                    @Override
                    public int compare(Object left, Object right) {
                        int lp = pingOf(left);
                        int rp = pingOf(right);
                        boolean lv = lp > 0;
                        boolean rv = rp > 0;
                        if (lv != rv) return lv ? -1 : 1;
                        if (lv && lp != rp) return Integer.compare(lp, rp);
                        return Long.compare(idOf(left), idOf(right));
                    }
                });
            } else {
                Collections.sort(sorted, new Comparator() {
                    @Override
                    public int compare(Object left, Object right) {
                        return Long.compare(idOf(left), idOf(right));
                    }
                });
            }
            adapter.getClass().getMethod("submit", List.class).invoke(adapter, sorted);
            return true;
        } catch (Throwable ignored) {
            return false;
        }
    }

    /** 从 Activity 的视图树里找节点列表的 adapter，绕开 FragmentManager。 */
    public static Object findAdapter(android.app.Activity activity) {
        if (activity == null) return null;
        try {
            android.view.Window window = activity.getWindow();
            if (window == null) return null;
            return search(window.getDecorView());
        } catch (Throwable ignored) {
            return null;
        }
    }

    private static Object search(Object view) {
        if (view == null) return null;
        try {
            Object adapter = view.getClass().getMethod("getAdapter").invoke(view);
            if (adapter != null && adapter.getClass().getSimpleName().contains("NodeAdapter")) {
                return adapter;
            }
        } catch (Throwable ignored) {
        }
        if (!(view instanceof android.view.ViewGroup)) return null;
        android.view.ViewGroup group = (android.view.ViewGroup) view;
        for (int index = 0; index < group.getChildCount(); index++) {
            Object found = search(group.getChildAt(index));
            if (found != null) return found;
        }
        return null;
    }

    /** 节点列表每次刷新时调用：按当前排序方式重排。 */
    @SuppressWarnings({"unchecked", "rawtypes"})
    public static java.util.List sortList(android.content.Context context, java.util.List input) {
        if (input == null) return input;
        ensureLoaded(context);
        try {
            java.util.List<Object> result = new ArrayList<>(input);
            if (byLatency) {
                Collections.sort(result, LATENCY);
            } else {
                Collections.sort(result, BY_ID);
            }
            return result;
        } catch (Throwable ignored) {
            return input;
        }
    }

    private static final Comparator<Object> BY_ID = new Comparator() {
        @Override
        public int compare(Object left, Object right) {
            return Long.compare(idOf(left), idOf(right));
        }
    };

    private static final Comparator<Object> LATENCY = new Comparator() {
        @Override
        public int compare(Object left, Object right) {
            int lp = pingOf(left);
            int rp = pingOf(right);
            boolean lv = lp > 0;
            boolean rv = rp > 0;
            if (lv != rv) return lv ? -1 : 1;
            if (lv && lp != rp) return Integer.compare(lp, rp);
            return Long.compare(idOf(left), idOf(right));
        }
    };

    /** 界面初始化后应用上次的排序选择。 */
    public static void restore(android.app.Activity activity) {
        if (activity == null) return;
        load(activity);
        Object adapter = findAdapter(activity);
        if (adapter != null) applyTo(adapter);
    }

    /** 从抽屉里点一下：切换排序并刷新列表；返回是否真的应用了。 */
    public static boolean toggleFromActivity(android.app.Activity activity) {
        load(activity);
        Object adapter = findAdapter(activity);
        if (adapter == null) return false;
        byLatency = !byLatency;
        if (applyTo(adapter)) {
            save(activity);
            return true;
        }
        byLatency = !byLatency;
        return false;
    }
}
