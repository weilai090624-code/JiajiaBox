.class public final Lio/nekohasekai/sagernet/ui/QuickDisableShortcut;
.super Landroid/app/Activity;
.source "QuickDisableShortcut.kt"

# interfaces
.implements Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nQuickDisableShortcut.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QuickDisableShortcut.kt\nio/nekohasekai/sagernet/ui/QuickDisableShortcut\n+ 2 Context.kt\nandroidx/core/content/ContextKt\n*L\n1#1,59:1\n31#2:60\n*S KotlinDebug\n*F\n+ 1 QuickDisableShortcut.kt\nio/nekohasekai/sagernet/ui/QuickDisableShortcut\n*L\n40#1:60\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0012\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0014J\u0010\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\rH\u0016J$\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016J\u0008\u0010\u0014\u001a\u00020\u0008H\u0014R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/ui/QuickDisableShortcut;",
        "Landroid/app/Activity;",
        "Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;",
        "<init>",
        "()V",
        "connection",
        "Lio/nekohasekai/sagernet/bg/SagerConnection;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onServiceConnected",
        "service",
        "Lio/nekohasekai/sagernet/aidl/ISagerNetService;",
        "stateChanged",
        "state",
        "Lio/nekohasekai/sagernet/bg/BaseService$State;",
        "profileName",
        "",
        "msg",
        "onDestroy",
        "app_ossDebug"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final connection:Lio/nekohasekai/sagernet/bg/SagerConnection;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    new-instance v0, Lio/nekohasekai/sagernet/bg/SagerConnection;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Lio/nekohasekai/sagernet/bg/SagerConnection;-><init>(IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/QuickDisableShortcut;->connection:Lio/nekohasekai/sagernet/bg/SagerConnection;

    .line 33
    return-void
.end method


# virtual methods
.method public cbSelectorUpdate(J)V
    .locals 0
    .param p1, "id"    # J

    .line 33
    invoke-static {p0, p1, p2}, Lio/nekohasekai/sagernet/bg/SagerConnection$Callback$DefaultImpls;->cbSelectorUpdate(Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;J)V

    return-void
.end method

.method public cbSpeedUpdate(Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;)V
    .locals 0
    .param p1, "stats"    # Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;

    .line 33
    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/bg/SagerConnection$Callback$DefaultImpls;->cbSpeedUpdate(Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;)V

    return-void
.end method

.method public cbTrafficUpdate(Lio/nekohasekai/sagernet/aidl/TrafficData;)V
    .locals 0
    .param p1, "data"    # Lio/nekohasekai/sagernet/aidl/TrafficData;

    .line 33
    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/bg/SagerConnection$Callback$DefaultImpls;->cbTrafficUpdate(Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;Lio/nekohasekai/sagernet/aidl/TrafficData;)V

    return-void
.end method

.method public missingPlugin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "pluginName"    # Ljava/lang/String;

    .line 33
    invoke-static {p0, p1, p2}, Lio/nekohasekai/sagernet/bg/SagerConnection$Callback$DefaultImpls;->missingPlugin(Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onBinderDied()V
    .locals 0

    .line 33
    invoke-static {p0}, Lio/nekohasekai/sagernet/bg/SagerConnection$Callback$DefaultImpls;->onBinderDied(Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/QuickDisableShortcut;->connection:Lio/nekohasekai/sagernet/bg/SagerConnection;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    move-object v2, p0

    check-cast v2, Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;

    invoke-virtual {v0, v1, v2}, Lio/nekohasekai/sagernet/bg/SagerConnection;->connect(Landroid/content/Context;Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;)V

    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_0

    .line 40
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    .local v0, "$this$getSystemService$iv":Landroid/content/Context;
    const/4 v1, 0x0

    .line 60
    .local v1, "$i$f$getSystemService":I
    const-class v2, Landroid/content/pm/ShortcutManager;

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getSystemService$iv":Landroid/content/Context;
    .end local v1    # "$i$f$getSystemService":I
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroid/content/pm/ShortcutManager;

    .line 40
    const-string v1, "disable"

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutManager;->reportShortcutUsed(Ljava/lang/String;)V

    .line 42
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 55
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/QuickDisableShortcut;->connection:Lio/nekohasekai/sagernet/bg/SagerConnection;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/bg/SagerConnection;->disconnect(Landroid/content/Context;)V

    .line 56
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 57
    return-void
.end method

.method public onServiceConnected(Lio/nekohasekai/sagernet/aidl/ISagerNetService;)V
    .locals 2
    .param p1, "service"    # Lio/nekohasekai/sagernet/aidl/ISagerNetService;

    const-string v0, "service"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-static {}, Lio/nekohasekai/sagernet/bg/BaseService$State;->values()[Lio/nekohasekai/sagernet/bg/BaseService$State;

    move-result-object v0

    invoke-interface {p1}, Lio/nekohasekai/sagernet/aidl/ISagerNetService;->getState()I

    move-result v1

    aget-object v0, v0, v1

    .line 46
    .local v0, "state":Lio/nekohasekai/sagernet/bg/BaseService$State;
    invoke-virtual {v0}, Lio/nekohasekai/sagernet/bg/BaseService$State;->getCanStop()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    sget-object v1, Lio/nekohasekai/sagernet/SagerNet;->Companion:Lio/nekohasekai/sagernet/SagerNet$Companion;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/SagerNet$Companion;->stopService()V

    .line 49
    :cond_0
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/QuickDisableShortcut;->finish()V

    .line 50
    return-void
.end method

.method public onServiceDisconnected()V
    .locals 0

    .line 33
    invoke-static {p0}, Lio/nekohasekai/sagernet/bg/SagerConnection$Callback$DefaultImpls;->onServiceDisconnected(Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;)V

    return-void
.end method

.method public stateChanged(Lio/nekohasekai/sagernet/bg/BaseService$State;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "state"    # Lio/nekohasekai/sagernet/bg/BaseService$State;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    return-void
.end method
