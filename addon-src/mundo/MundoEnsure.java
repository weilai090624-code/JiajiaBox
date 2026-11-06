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

import java.util.Map;

public final class MundoEnsure {
    private static final int SALT = (int) (System.nanoTime() & 0x3ff);
    private static int currentPort = -1;
    private static String currentKey = null;

    public static int ensure(Map<String, String> entries, String key, int ignoredPort) {
        synchronized (MundoCore.lock()) {
            if (key != null && key.equals(currentKey) && currentPort > 0
                    && MundoCore.portOpenPub(currentPort)) {
                return currentPort;
            }
            int port = 22000 + (Math.abs((key == null ? 0 : key.hashCode()) ^ SALT) % 1000);
            for (int i = 0; i < 1000; i++) {
                if (!MundoCore.portOpenPub(port)) break;
                port++;
                if (port >= 24000) port = 22000;
            }
            String cfg = MundoCore.buildSinglePub(entries, key, port);
            if (cfg == null) {
                MundoCore.diag("ensure build failed key=" + key);
                return -1;
            }
            long start = System.currentTimeMillis();
            if (currentPort > 0) {
                MundoCore.startPub("");
                long deadline = System.currentTimeMillis() + 2000L;
                while (System.currentTimeMillis() < deadline && MundoCore.portOpenPub(currentPort)) {
                    try { Thread.sleep(50L); } catch (InterruptedException e) { break; }
                }
            }
            if (!MundoCore.startPub(cfg)) {
                MundoCore.diag("ensure start failed key=" + key + " port=" + port);
                return -1;
            }
            if (!MundoCore.waitPortPub(port, 8000L)) {
                MundoCore.diag("ensure wait failed key=" + key + " port=" + port);
                return -1;
            }
            currentPort = port;
            currentKey = key;
            MundoCore.diag("ensure key=" + key + " fresh port=" + port
                    + " total_ms=" + (System.currentTimeMillis() - start));
            return port;
        }
    }
}
