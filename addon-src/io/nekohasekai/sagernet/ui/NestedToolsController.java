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
import android.app.Activity;
/** Compatibility entry points; all drawer children use the same navigator. */
public final class NestedToolsController {
 public static boolean open(Activity activity){return DrawerNavigator.open(activity,"工具","io.nekohasekai.sagernet.ui.ToolsFragment");}
 public static boolean back(Activity activity){return DrawerNavigator.back(activity);}
 public static void dismiss(Activity activity){DrawerNavigator.dismiss(activity);}
}

