package io.nekohasekai.sagernet.ui;

import android.content.Context;
import android.content.DialogInterface;

/** Remembers the one version code the user chose to skip. */
public final class CloudUpdateSkip {
    private static final String PREFS = "cloud-update";
    private static final String KEY = "skip_version";

    private CloudUpdateSkip() {
    }

    public static long get(Context context) {
        if (context == null) {
            return 0L;
        }
        return context.getSharedPreferences(PREFS, Context.MODE_PRIVATE).getLong(KEY, 0L);
    }

    public static void set(Context context, long code) {
        if (context == null) {
            return;
        }
        context.getSharedPreferences(PREFS, Context.MODE_PRIVATE)
                .edit()
                .putLong(KEY, code)
                .apply();
    }

    public static final class Listener implements DialogInterface.OnClickListener {
        private final Context context;
        private final long code;

        public Listener(Context context, long code) {
            this.context = context;
            this.code = code;
        }

        @Override
        public void onClick(DialogInterface dialog, int which) {
            set(context, code);
            if (dialog != null) {
                dialog.dismiss();
            }
        }
    }
}
