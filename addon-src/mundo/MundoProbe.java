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
 *
 * MX companion-core integration. The proprietary Mundo libraries are not
 * part of this work and are not licensed under the GPL. See
 * MUNDO-INTEGRATION.md and assets/licenses/Mundo-NOTICE.txt.
 */
package io.nekohasekai.sagernet.ui;

import android.os.Looper;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.HashSet;
import java.util.Set;

public final class MundoProbe implements Runnable {
    private static final Set<Integer> SEEN = new HashSet<Integer>();
    private final int port;
    private volatile boolean ok;
    private volatile Throwable err;

    private MundoProbe(int port) { this.port = port; }

    public void run() {
        Socket s = new Socket();
        try {
            s.connect(new InetSocketAddress("127.0.0.1", port), 400);
            ok = true;
        } catch (Throwable t) {
            err = t;
        } finally {
            try { s.close(); } catch (Throwable ignored) {}
        }
    }

    public static boolean open(int port) {
        Thread cur = Thread.currentThread();
        boolean first;
        synchronized (SEEN) { first = SEEN.add(Integer.valueOf(port)); }
        if (first) {
            boolean main = Looper.myLooper() == Looper.getMainLooper();
            MundoCore.diag("probe port=" + port + " thread=" + cur.getName() + " main=" + main);
        }
        MundoProbe p = new MundoProbe(port);
        Thread t = new Thread(p, "MundoProbe");
        t.setDaemon(true);
        t.start();
        try { t.join(700L); } catch (InterruptedException ignored) {}
        if (first && !p.ok && p.err != null) {
            MundoCore.diag("probe port=" + port + " failed " + p.err);
        }
        return p.ok;
    }
}
