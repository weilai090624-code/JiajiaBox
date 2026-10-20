.class public final Lio/nekohasekai/sagernet/bg/TileService;
.super Landroid/service/quicksettings/TileService;
.source "TileService.kt"

# interfaces
.implements Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/bg/TileService$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J$\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0016J\u0010\u0010\u001c\u001a\u00020\u00162\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J\u0010\u0010\u001f\u001a\u00020\u00162\u0006\u0010 \u001a\u00020!H\u0016J\u0008\u0010\"\u001a\u00020\u0016H\u0016J\u0008\u0010#\u001a\u00020\u0016H\u0016J\u0008\u0010$\u001a\u00020\u0016H\u0016J\u001a\u0010%\u001a\u00020\u00162\u0006\u0010&\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0002J\u0008\u0010\'\u001a\u00020\u0016H\u0002R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008R\u001b\u0010\u000b\u001a\u00020\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\n\u001a\u0004\u0008\u000c\u0010\u0008R\u001b\u0010\u000e\u001a\u00020\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\n\u001a\u0004\u0008\u000f\u0010\u0008R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "Lio/nekohasekai/sagernet/bg/TileService;",
        "Landroid/service/quicksettings/TileService;",
        "Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;",
        "<init>",
        "()V",
        "iconIdle",
        "Landroid/graphics/drawable/Icon;",
        "getIconIdle",
        "()Landroid/graphics/drawable/Icon;",
        "iconIdle$delegate",
        "Lkotlin/Lazy;",
        "iconBusy",
        "getIconBusy",
        "iconBusy$delegate",
        "iconConnected",
        "getIconConnected",
        "iconConnected$delegate",
        "tapPending",
        "",
        "connection",
        "Lio/nekohasekai/sagernet/bg/SagerConnection;",
        "stateChanged",
        "",
        "state",
        "Lio/nekohasekai/sagernet/bg/BaseService$State;",
        "profileName",
        "",
        "msg",
        "onServiceConnected",
        "service",
        "Lio/nekohasekai/sagernet/aidl/ISagerNetService;",
        "cbSelectorUpdate",
        "id",
        "",
        "onStartListening",
        "onStopListening",
        "onClick",
        "updateTile",
        "serviceState",
        "toggle",
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

.field private final iconBusy$delegate:Lkotlin/Lazy;

.field private final iconConnected$delegate:Lkotlin/Lazy;

.field private final iconIdle$delegate:Lkotlin/Lazy;

.field private tapPending:Z


# direct methods
.method public static synthetic $r8$lambda$6LfGVfM7RPRhy_DZ9J8SakmZm0k(Lio/nekohasekai/sagernet/bg/TileService;)Landroid/graphics/drawable/Icon;
    .locals 0

    invoke-static {p0}, Lio/nekohasekai/sagernet/bg/TileService;->iconIdle_delegate$lambda$0(Lio/nekohasekai/sagernet/bg/TileService;)Landroid/graphics/drawable/Icon;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$KLnyoqwC7VxFhrJohPSMYU77kCo(Lio/nekohasekai/sagernet/bg/TileService;)V
    .locals 0

    invoke-direct {p0}, Lio/nekohasekai/sagernet/bg/TileService;->toggle()V

    return-void
.end method

.method public static synthetic $r8$lambda$poIh4pm2so8-lJmIQU_SBHrB79k(Lio/nekohasekai/sagernet/bg/TileService;)Landroid/graphics/drawable/Icon;
    .locals 0

    invoke-static {p0}, Lio/nekohasekai/sagernet/bg/TileService;->iconConnected_delegate$lambda$2(Lio/nekohasekai/sagernet/bg/TileService;)Landroid/graphics/drawable/Icon;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$uuMhVfk9F3tp32xZr0FImiMREtA(Lio/nekohasekai/sagernet/bg/TileService;)Landroid/graphics/drawable/Icon;
    .locals 0

    invoke-static {p0}, Lio/nekohasekai/sagernet/bg/TileService;->iconBusy_delegate$lambda$1(Lio/nekohasekai/sagernet/bg/TileService;)Landroid/graphics/drawable/Icon;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 5

    .line 13
    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    .line 14
    new-instance v0, Lio/nekohasekai/sagernet/bg/TileService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lio/nekohasekai/sagernet/bg/TileService$$ExternalSyntheticLambda1;-><init>(Lio/nekohasekai/sagernet/bg/TileService;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/bg/TileService;->iconIdle$delegate:Lkotlin/Lazy;

    .line 15
    new-instance v0, Lio/nekohasekai/sagernet/bg/TileService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lio/nekohasekai/sagernet/bg/TileService$$ExternalSyntheticLambda2;-><init>(Lio/nekohasekai/sagernet/bg/TileService;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/bg/TileService;->iconBusy$delegate:Lkotlin/Lazy;

    .line 16
    new-instance v0, Lio/nekohasekai/sagernet/bg/TileService$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lio/nekohasekai/sagernet/bg/TileService$$ExternalSyntheticLambda3;-><init>(Lio/nekohasekai/sagernet/bg/TileService;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/bg/TileService;->iconConnected$delegate:Lkotlin/Lazy;

    .line 21
    new-instance v0, Lio/nekohasekai/sagernet/bg/SagerConnection;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lio/nekohasekai/sagernet/bg/SagerConnection;-><init>(IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/bg/TileService;->connection:Lio/nekohasekai/sagernet/bg/SagerConnection;

    .line 12
    return-void
.end method

.method private final getIconBusy()Landroid/graphics/drawable/Icon;
    .locals 1

    .line 15
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/TileService;->iconBusy$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method private final getIconConnected()Landroid/graphics/drawable/Icon;
    .locals 1

    .line 16
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/TileService;->iconConnected$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method private final getIconIdle()Landroid/graphics/drawable/Icon;
    .locals 1

    .line 14
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/TileService;->iconIdle$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method private static final iconBusy_delegate$lambda$1(Lio/nekohasekai/sagernet/bg/TileService;)Landroid/graphics/drawable/Icon;
    .locals 2
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/bg/TileService;

    .line 15
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f08010f

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0
.end method

.method private static final iconConnected_delegate$lambda$2(Lio/nekohasekai/sagernet/bg/TileService;)Landroid/graphics/drawable/Icon;
    .locals 2
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/bg/TileService;

    .line 17
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f08010e

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0
.end method

.method private static final iconIdle_delegate$lambda$0(Lio/nekohasekai/sagernet/bg/TileService;)Landroid/graphics/drawable/Icon;
    .locals 2
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/bg/TileService;

    .line 14
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f080112

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0
.end method

.method private final toggle()V
    .locals 4

    .line 84
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/TileService;->connection:Lio/nekohasekai/sagernet/bg/SagerConnection;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/bg/SagerConnection;->getService()Lio/nekohasekai/sagernet/aidl/ISagerNetService;

    move-result-object v0

    .line 85
    .local v0, "service":Lio/nekohasekai/sagernet/aidl/ISagerNetService;
    if-nez v0, :cond_0

    .line 86
    nop

    .line 85
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/nekohasekai/sagernet/bg/TileService;->tapPending:Z

    goto :goto_1

    .line 86
    :cond_0
    invoke-static {}, Lio/nekohasekai/sagernet/bg/BaseService$State;->values()[Lio/nekohasekai/sagernet/bg/BaseService$State;

    move-result-object v1

    invoke-interface {v0}, Lio/nekohasekai/sagernet/aidl/ISagerNetService;->getState()I

    move-result v2

    aget-object v1, v1, v2

    .local v1, "state":Lio/nekohasekai/sagernet/bg/BaseService$State;
    const/4 v2, 0x0

    .line 87
    .local v2, "$i$a$-let-TileService$toggle$1":I
    nop

    .line 88
    invoke-virtual {v1}, Lio/nekohasekai/sagernet/bg/BaseService$State;->getCanStop()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lio/nekohasekai/sagernet/SagerNet;->Companion:Lio/nekohasekai/sagernet/SagerNet$Companion;

    invoke-virtual {v3}, Lio/nekohasekai/sagernet/SagerNet$Companion;->stopService()V

    goto :goto_0

    .line 89
    :cond_1
    sget-object v3, Lio/nekohasekai/sagernet/bg/BaseService$State;->Stopped:Lio/nekohasekai/sagernet/bg/BaseService$State;

    if-ne v1, v3, :cond_2

    sget-object v3, Lio/nekohasekai/sagernet/SagerNet;->Companion:Lio/nekohasekai/sagernet/SagerNet$Companion;

    invoke-virtual {v3}, Lio/nekohasekai/sagernet/SagerNet$Companion;->startService()V

    .line 91
    :cond_2
    :goto_0
    nop

    .line 86
    .end local v1    # "state":Lio/nekohasekai/sagernet/bg/BaseService$State;
    .end local v2    # "$i$a$-let-TileService$toggle$1":I
    nop

    .line 92
    :goto_1
    return-void
.end method

.method private final updateTile(Lio/nekohasekai/sagernet/bg/BaseService$State;Ljava/lang/String;)V
    .locals 4
    .param p1, "serviceState"    # Lio/nekohasekai/sagernet/bg/BaseService$State;
    .param p2, "profileName"    # Ljava/lang/String;

    .line 53
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/bg/TileService;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    if-eqz v0, :cond_1

    .local v0, "$this$updateTile_u24lambda_u243":Landroid/service/quicksettings/Tile;
    const/4 v1, 0x0

    .line 54
    .local v1, "$i$a$-apply-TileService$updateTile$1":I
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V

    .line 55
    sget-object v2, Lio/nekohasekai/sagernet/bg/TileService$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lio/nekohasekai/sagernet/bg/BaseService$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x2

    packed-switch v2, :pswitch_data_0

    new-instance v2, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v2}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v2

    .line 74
    :pswitch_0
    invoke-direct {p0}, Lio/nekohasekai/sagernet/bg/TileService;->getIconIdle()Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/service/quicksettings/Tile;->setIcon(Landroid/graphics/drawable/Icon;)V

    .line 75
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/service/quicksettings/Tile;->setState(I)V

    goto :goto_0

    .line 69
    :pswitch_1
    invoke-direct {p0}, Lio/nekohasekai/sagernet/bg/TileService;->getIconBusy()Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/service/quicksettings/Tile;->setIcon(Landroid/graphics/drawable/Icon;)V

    .line 70
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/service/quicksettings/Tile;->setState(I)V

    goto :goto_0

    .line 63
    :pswitch_2
    invoke-direct {p0}, Lio/nekohasekai/sagernet/bg/TileService;->getIconConnected()Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/service/quicksettings/Tile;->setIcon(Landroid/graphics/drawable/Icon;)V

    .line 64
    move-object v2, p2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V

    .line 65
    invoke-virtual {v0, v3}, Landroid/service/quicksettings/Tile;->setState(I)V

    goto :goto_0

    .line 58
    :pswitch_3
    invoke-direct {p0}, Lio/nekohasekai/sagernet/bg/TileService;->getIconBusy()Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/service/quicksettings/Tile;->setIcon(Landroid/graphics/drawable/Icon;)V

    .line 59
    invoke-virtual {v0, v3}, Landroid/service/quicksettings/Tile;->setState(I)V

    .line 78
    :goto_0
    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_0

    const v2, 0x7f130054

    invoke-virtual {p0, v2}, Lio/nekohasekai/sagernet/bg/TileService;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/CharSequence;

    :cond_0
    invoke-virtual {v0, v2}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V

    .line 79
    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->updateTile()V

    .line 80
    nop

    .line 53
    .end local v0    # "$this$updateTile_u24lambda_u243":Landroid/service/quicksettings/Tile;
    .end local v1    # "$i$a$-apply-TileService$updateTile$1":I
    goto :goto_1

    .line 55
    .restart local v0    # "$this$updateTile_u24lambda_u243":Landroid/service/quicksettings/Tile;
    .restart local v1    # "$i$a$-apply-TileService$updateTile$1":I
    :pswitch_4
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 56
    const-string v3, "serviceState"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 81
    .end local v0    # "$this$updateTile_u24lambda_u243":Landroid/service/quicksettings/Tile;
    .end local v1    # "$i$a$-apply-TileService$updateTile$1":I
    :cond_1
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public cbSelectorUpdate(J)V
    .locals 3
    .param p1, "id"    # J

    .line 34
    sget-object v0, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getProxyDao()Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;->getById(J)Lio/nekohasekai/sagernet/database/ProxyEntity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 35
    .local v0, "profile":Lio/nekohasekai/sagernet/database/ProxyEntity;
    :cond_0
    sget-object v1, Lio/nekohasekai/sagernet/bg/BaseService$State;->Connected:Lio/nekohasekai/sagernet/bg/BaseService$State;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/ProxyEntity;->displayName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lio/nekohasekai/sagernet/bg/TileService;->updateTile(Lio/nekohasekai/sagernet/bg/BaseService$State;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public cbSpeedUpdate(Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;)V
    .locals 0
    .param p1, "stats"    # Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;

    .line 12
    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/bg/SagerConnection$Callback$DefaultImpls;->cbSpeedUpdate(Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;)V

    return-void
.end method

.method public cbTrafficUpdate(Lio/nekohasekai/sagernet/aidl/TrafficData;)V
    .locals 0
    .param p1, "data"    # Lio/nekohasekai/sagernet/aidl/TrafficData;

    .line 12
    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/bg/SagerConnection$Callback$DefaultImpls;->cbTrafficUpdate(Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;Lio/nekohasekai/sagernet/aidl/TrafficData;)V

    return-void
.end method

.method public missingPlugin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "pluginName"    # Ljava/lang/String;

    .line 12
    invoke-static {p0, p1, p2}, Lio/nekohasekai/sagernet/bg/SagerConnection$Callback$DefaultImpls;->missingPlugin(Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onBinderDied()V
    .locals 0

    .line 12
    invoke-static {p0}, Lio/nekohasekai/sagernet/bg/SagerConnection$Callback$DefaultImpls;->onBinderDied(Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;)V

    return-void
.end method

.method public onClick()V
    .locals 1

    .line 49
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/bg/TileService;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lio/nekohasekai/sagernet/bg/TileService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lio/nekohasekai/sagernet/bg/TileService$$ExternalSyntheticLambda0;-><init>(Lio/nekohasekai/sagernet/bg/TileService;)V

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/bg/TileService;->unlockAndRun(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lio/nekohasekai/sagernet/bg/TileService;->toggle()V

    .line 50
    :goto_0
    return-void
.end method

.method public onServiceConnected(Lio/nekohasekai/sagernet/aidl/ISagerNetService;)V
    .locals 2
    .param p1, "service"    # Lio/nekohasekai/sagernet/aidl/ISagerNetService;

    const-string v0, "service"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-static {}, Lio/nekohasekai/sagernet/bg/BaseService$State;->values()[Lio/nekohasekai/sagernet/bg/BaseService$State;

    move-result-object v0

    invoke-interface {p1}, Lio/nekohasekai/sagernet/aidl/ISagerNetService;->getState()I

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {p1}, Lio/nekohasekai/sagernet/aidl/ISagerNetService;->getProfileName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/nekohasekai/sagernet/bg/TileService;->updateTile(Lio/nekohasekai/sagernet/bg/BaseService$State;Ljava/lang/String;)V

    .line 27
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/bg/TileService;->tapPending:Z

    if-eqz v0, :cond_0

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/nekohasekai/sagernet/bg/TileService;->tapPending:Z

    .line 29
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/bg/TileService;->onClick()V

    .line 31
    :cond_0
    return-void
.end method

.method public onServiceDisconnected()V
    .locals 0

    .line 12
    invoke-static {p0}, Lio/nekohasekai/sagernet/bg/SagerConnection$Callback$DefaultImpls;->onServiceDisconnected(Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;)V

    return-void
.end method

.method public onStartListening()V
    .locals 3

    .line 39
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    .line 40
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/TileService;->connection:Lio/nekohasekai/sagernet/bg/SagerConnection;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    move-object v2, p0

    check-cast v2, Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;

    invoke-virtual {v0, v1, v2}, Lio/nekohasekai/sagernet/bg/SagerConnection;->connect(Landroid/content/Context;Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;)V

    .line 41
    return-void
.end method

.method public onStopListening()V
    .locals 2

    .line 44
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/TileService;->connection:Lio/nekohasekai/sagernet/bg/SagerConnection;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/bg/SagerConnection;->disconnect(Landroid/content/Context;)V

    .line 45
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStopListening()V

    .line 46
    return-void
.end method

.method public stateChanged(Lio/nekohasekai/sagernet/bg/BaseService$State;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "state"    # Lio/nekohasekai/sagernet/bg/BaseService$State;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, p1, p2}, Lio/nekohasekai/sagernet/bg/TileService;->updateTile(Lio/nekohasekai/sagernet/bg/BaseService$State;Ljava/lang/String;)V

    return-void
.end method
