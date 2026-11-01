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
 */

package io.nekohasekai.sagernet.ui;
import android.app.Activity;
/** Compatibility entry points; all drawer children use the same navigator. */
public final class NestedToolsController {
 public static boolean open(Activity activity){return DrawerNavigator.open(activity,"工具","io.nekohasekai.sagernet.ui.ToolsFragment");}
 public static boolean back(Activity activity){return DrawerNavigator.back(activity);}
 public static void dismiss(Activity activity){DrawerNavigator.dismiss(activity);}
}

