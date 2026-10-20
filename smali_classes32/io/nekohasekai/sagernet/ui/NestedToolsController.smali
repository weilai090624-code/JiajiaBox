.class public final Lio/nekohasekai/sagernet/ui/NestedToolsController;
.super Ljava/lang/Object;
.source "NestedToolsController.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static back(Landroid/app/Activity;)Z
    .registers 1

    .line 6
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->back(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public static dismiss(Landroid/app/Activity;)V
    .registers 1

    .line 7
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->dismiss(Landroid/app/Activity;)V

    return-void
.end method

.method public static open(Landroid/app/Activity;)Z
    .registers 3

    .line 5
    const-string v0, "\u5de5\u5177"

    const-string v1, "io.nekohasekai.sagernet.ui.ToolsFragment"

    invoke-static {p0, v0, v1}, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->open(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
