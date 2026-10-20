.class public final Lio/nekohasekai/sagernet/QuickToggleShortcut;
.super Landroid/app/Activity;
.source "QuickToggleShortcut.kt"

# interfaces
.implements Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nQuickToggleShortcut.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QuickToggleShortcut.kt\nio/nekohasekai/sagernet/QuickToggleShortcut\n+ 2 Context.kt\nandroidx/core/content/ContextKt\n*L\n1#1,89:1\n31#2:90\n*S KotlinDebug\n*F\n+ 1 QuickToggleShortcut.kt\nio/nekohasekai/sagernet/QuickToggleShortcut\n*L\n58#1:90\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0012\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0014J\u0010\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J$\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016J\u0008\u0010\u0016\u001a\u00020\nH\u0014R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/QuickToggleShortcut;",
        "Landroid/app/Activity;",
        "Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;",
        "<init>",
        "()V",
        "connection",
        "Lio/nekohasekai/sagernet/bg/SagerConnection;",
        "profileId",
        "",
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

.field private profileId:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    new-instance v0, Lio/nekohasekai/sagernet/bg/SagerConnection;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Lio/nekohasekai/sagernet/bg/SagerConnection;-><init>(IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/QuickToggleShortcut;->connection:Lio/nekohasekai/sagernet/bg/SagerConnection;

    .line 40
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lio/nekohasekai/sagernet/QuickToggleShortcut;->profileId:J

    .line 37
    return-void
.end method


# virtual methods
.method public cbSelectorUpdate(J)V
    .locals 0
    .param p1, "id"    # J

    .line 37
    invoke-static {p0, p1, p2}, Lio/nekohasekai/sagernet/bg/SagerConnection$Callback$DefaultImpls;->cbSelectorUpdate(Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;J)V

    return-void
.end method

.method public cbSpeedUpdate(Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;)V
    .locals 0
    .param p1, "stats"    # Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;

    .line 37
    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/bg/SagerConnection$Callback$DefaultImpls;->cbSpeedUpdate(Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;)V

    return-void
.end method

.method public cbTrafficUpdate(Lio/nekohasekai/sagernet/aidl/TrafficData;)V
    .locals 0
    .param p1, "data"    # Lio/nekohasekai/sagernet/aidl/TrafficData;

    .line 37
    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/bg/SagerConnection$Callback$DefaultImpls;->cbTrafficUpdate(Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;Lio/nekohasekai/sagernet/aidl/TrafficData;)V

    return-void
.end method

.method public missingPlugin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "pluginName"    # Ljava/lang/String;

    .line 37
    invoke-static {p0, p1, p2}, Lio/nekohasekai/sagernet/bg/SagerConnection$Callback$DefaultImpls;->missingPlugin(Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onBinderDied()V
    .locals 0

    .line 37
    invoke-static {p0}, Lio/nekohasekai/sagernet/bg/SagerConnection$Callback$DefaultImpls;->onBinderDied(Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/QuickToggleShortcut;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "toggle"

    if-eqz v0, :cond_0

    .line 45
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    .line 46
    new-instance v2, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    new-instance v1, Landroid/content/Intent;

    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    .line 48
    nop

    .line 47
    const-class v4, Lio/nekohasekai/sagernet/QuickToggleShortcut;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 47
    invoke-virtual {v2, v1}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setIntent(Landroid/content/Intent;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object v1

    .line 49
    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    .line 50
    nop

    .line 49
    const v3, 0x7f08010c

    invoke-static {v2, v3}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setIcon(Landroidx/core/graphics/drawable/IconCompat;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object v1

    .line 51
    const v2, 0x7f13023a

    invoke-virtual {p0, v2}, Lio/nekohasekai/sagernet/QuickToggleShortcut;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object v1

    .line 52
    invoke-virtual {v1}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->build()Landroidx/core/content/pm/ShortcutInfoCompat;

    move-result-object v1

    .line 45
    invoke-static {v0, v1}, Landroidx/core/content/pm/ShortcutManagerCompat;->createShortcutResultIntent(Landroid/content/Context;Landroidx/core/content/pm/ShortcutInfoCompat;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lio/nekohasekai/sagernet/QuickToggleShortcut;->setResult(ILandroid/content/Intent;)V

    .line 53
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/QuickToggleShortcut;->finish()V

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/QuickToggleShortcut;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "profile"

    const-wide/16 v3, -0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lio/nekohasekai/sagernet/QuickToggleShortcut;->profileId:J

    .line 56
    iget-object v0, p0, Lio/nekohasekai/sagernet/QuickToggleShortcut;->connection:Lio/nekohasekai/sagernet/bg/SagerConnection;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    move-object v3, p0

    check-cast v3, Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;

    invoke-virtual {v0, v2, v3}, Lio/nekohasekai/sagernet/bg/SagerConnection;->connect(Landroid/content/Context;Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;)V

    .line 57
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x19

    if-lt v0, v2, :cond_2

    .line 58
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    .local v0, "$this$getSystemService$iv":Landroid/content/Context;
    const/4 v2, 0x0

    .line 90
    .local v2, "$i$f$getSystemService":I
    const-class v3, Landroid/content/pm/ShortcutManager;

    invoke-static {v0, v3}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getSystemService$iv":Landroid/content/Context;
    .end local v2    # "$i$f$getSystemService":I
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroid/content/pm/ShortcutManager;

    .line 58
    iget-wide v2, p0, Lio/nekohasekai/sagernet/QuickToggleShortcut;->profileId:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shortcut-profile-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lio/nekohasekai/sagernet/QuickToggleShortcut;->profileId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutManager;->reportShortcutUsed(Ljava/lang/String;)V

    .line 61
    :cond_2
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 85
    iget-object v0, p0, Lio/nekohasekai/sagernet/QuickToggleShortcut;->connection:Lio/nekohasekai/sagernet/bg/SagerConnection;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/bg/SagerConnection;->disconnect(Landroid/content/Context;)V

    .line 86
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 87
    return-void
.end method

.method public onServiceConnected(Lio/nekohasekai/sagernet/aidl/ISagerNetService;)V
    .locals 6
    .param p1, "service"    # Lio/nekohasekai/sagernet/aidl/ISagerNetService;

    const-string v0, "service"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lio/nekohasekai/sagernet/bg/BaseService$State;->values()[Lio/nekohasekai/sagernet/bg/BaseService$State;

    move-result-object v0

    invoke-interface {p1}, Lio/nekohasekai/sagernet/aidl/ISagerNetService;->getState()I

    move-result v1

    aget-object v0, v0, v1

    .line 65
    .local v0, "state":Lio/nekohasekai/sagernet/bg/BaseService$State;
    nop

    .line 66
    invoke-virtual {v0}, Lio/nekohasekai/sagernet/bg/BaseService$State;->getCanStop()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 67
    iget-wide v1, p0, Lio/nekohasekai/sagernet/QuickToggleShortcut;->profileId:J

    sget-object v3, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v3}, Lio/nekohasekai/sagernet/database/DataStore;->getSelectedProxy()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    iget-wide v1, p0, Lio/nekohasekai/sagernet/QuickToggleShortcut;->profileId:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    iget-wide v2, p0, Lio/nekohasekai/sagernet/QuickToggleShortcut;->profileId:J

    invoke-virtual {v1, v2, v3}, Lio/nekohasekai/sagernet/database/DataStore;->setSelectedProxy(J)V

    .line 71
    sget-object v1, Lio/nekohasekai/sagernet/SagerNet;->Companion:Lio/nekohasekai/sagernet/SagerNet$Companion;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/SagerNet$Companion;->reloadService()V

    goto :goto_1

    .line 68
    :cond_1
    :goto_0
    sget-object v1, Lio/nekohasekai/sagernet/SagerNet;->Companion:Lio/nekohasekai/sagernet/SagerNet$Companion;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/SagerNet$Companion;->stopService()V

    goto :goto_1

    .line 74
    :cond_2
    sget-object v1, Lio/nekohasekai/sagernet/bg/BaseService$State;->Stopped:Lio/nekohasekai/sagernet/bg/BaseService$State;

    if-ne v0, v1, :cond_4

    .line 75
    iget-wide v1, p0, Lio/nekohasekai/sagernet/QuickToggleShortcut;->profileId:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_3

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    iget-wide v2, p0, Lio/nekohasekai/sagernet/QuickToggleShortcut;->profileId:J

    invoke-virtual {v1, v2, v3}, Lio/nekohasekai/sagernet/database/DataStore;->setSelectedProxy(J)V

    .line 76
    :cond_3
    sget-object v1, Lio/nekohasekai/sagernet/SagerNet;->Companion:Lio/nekohasekai/sagernet/SagerNet$Companion;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/SagerNet$Companion;->startService()V

    .line 79
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/QuickToggleShortcut;->finish()V

    .line 80
    return-void
.end method

.method public onServiceDisconnected()V
    .locals 0

    .line 37
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

    .line 82
    return-void
.end method
