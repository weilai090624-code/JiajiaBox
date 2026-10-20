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

import android.content.Context;
import android.util.AtomicFile;
import android.util.Log;
import io.nekohasekai.sagernet.aidl.SpeedDisplayData;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileOutputStream;

public final class LifetimeTraffic {
    private static Object session;
    private static long previousUpload;
    private static long previousDownload;

    private static final java.util.concurrent.ScheduledExecutorService worker =
        java.util.concurrent.Executors.newSingleThreadScheduledExecutor();
    private static long serviceTotal;
    private static boolean initialized;
    private static boolean dirty;
    private static boolean writePending;
    private static volatile long cachedTotal;
    private static final java.util.concurrent.atomic.AtomicBoolean reading = new java.util.concurrent.atomic.AtomicBoolean();
    private static volatile long lastRead;

    // UI reads never open a file or acquire the writer lock. The service runs in :bg.
    public static long cachedRead(Context context) {
        long now = android.os.SystemClock.uptimeMillis();
        if ((lastRead == 0 || now - lastRead >= 1000) && reading.compareAndSet(false, true)) {
            final Context app = context.getApplicationContext();
            worker.execute(() -> {
                try {
                    // Do not use AtomicFile.openRead here: another process owns writes.
                    try (DataInputStream input = new DataInputStream(
                            new java.io.FileInputStream(new File(app.getNoBackupFilesDir(), "jj-lifetime-proxy-traffic.bin")))) {
                        cachedTotal = Math.max(cachedTotal, Math.max(0, input.readLong()));
                    } catch (java.io.FileNotFoundException ignored) {
                    } catch (Exception exception) {
                        Log.e("LifetimeTraffic", "Cannot refresh cumulative proxy traffic", exception);
                    }
                    lastRead = android.os.SystemClock.uptimeMillis();
                } finally { reading.set(false); }
            });
        }
        return cachedTotal;
    }

    public static synchronized void record(Context context, Object source, SpeedDisplayData stats) {
        if (!initialized) {
            serviceTotal = read(context);
            initialized = true;
        }
        long upload = Math.max(0, stats.getTxTotal());
        long download = Math.max(0, stats.getRxTotal());
        if (session != source) {
            previousUpload = 0;
            previousDownload = 0;
            session = source;
        }
        long increment = add(upload >= previousUpload ? upload - previousUpload : upload,
            download >= previousDownload ? download - previousDownload : download);
        previousUpload = upload;
        previousDownload = download;
        if (increment == 0) return;
        serviceTotal = add(serviceTotal, increment);
        dirty = true;
        if (!writePending) {
            writePending = true;
            final Context app = context.getApplicationContext();
            worker.schedule(() -> {
                synchronized (LifetimeTraffic.class) { writePending = false; }
                flush(app);
            }, 5, java.util.concurrent.TimeUnit.SECONDS);
        }
    }

    // Called at service stop as well as by the background writer.
    public static synchronized void flush(Context context) {
        if (!initialized || !dirty) return;
        AtomicFile file = file(context);
        FileOutputStream stream = null;
        try {
            stream = file.startWrite();
            DataOutputStream output = new DataOutputStream(stream);
            output.writeLong(serviceTotal);
            output.flush();
            file.finishWrite(stream);
            dirty = false;
        } catch (Exception exception) {
            if (stream != null) file.failWrite(stream);
            Log.e("LifetimeTraffic", "Cannot save cumulative proxy traffic", exception);
        }
    }

    public static synchronized long read(Context context) {
        try (DataInputStream input = new DataInputStream(file(context).openRead())) {
            return Math.max(0, input.readLong());
        } catch (java.io.FileNotFoundException exception) {
            return 0;
        } catch (Exception exception) {
            Log.e("LifetimeTraffic", "Cannot read cumulative proxy traffic", exception);
            return 0;
        }
    }

    private static AtomicFile file(Context context) {
        return new AtomicFile(new File(context.getNoBackupFilesDir(), "jj-lifetime-proxy-traffic.bin"));
    }

    private static long add(long first, long second) {
        return Long.MAX_VALUE - first < second ? Long.MAX_VALUE : first + second;
    }
}

