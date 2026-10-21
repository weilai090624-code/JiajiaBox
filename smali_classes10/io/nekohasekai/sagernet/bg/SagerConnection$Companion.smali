.class public final Lio/nekohasekai/sagernet/bg/SagerConnection$Companion;
.super Ljava/lang/Object;
.source "SagerConnection.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/bg/SagerConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0019\u0010\u0004\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R\u000e\u0010\u0008\u001a\u00020\tX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\tX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\tX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\tX\u0086T\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/bg/SagerConnection$Companion;",
        "",
        "<init>",
        "()V",
        "serviceClass",
        "Ljava/lang/Class;",
        "getServiceClass",
        "()Ljava/lang/Class;",
        "CONNECTION_ID_SHORTCUT",
        "",
        "CONNECTION_ID_TILE",
        "CONNECTION_ID_MAIN_ACTIVITY_FOREGROUND",
        "CONNECTION_ID_MAIN_ACTIVITY_BACKGROUND",
        "CONNECTION_ID_RESTART_BG",
        "restartingApp",
        "",
        "getRestartingApp",
        "()Z",
        "setRestartingApp",
        "(Z)V",
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


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lio/nekohasekai/sagernet/bg/SagerConnection$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getRestartingApp()Z
    .registers 2

    .line 37
    # getter for: Lio/nekohasekai/sagernet/bg/SagerConnection;->restartingApp:Z
    invoke-static {}, Lio/nekohasekai/sagernet/bg/SagerConnection;->access$getRestartingApp$cp()Z

    move-result v0

    return v0
.end method

.method public final getServiceClass()Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 29
    nop

    .line 25
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getServiceMode()Ljava/lang/String;

    move-result-object v0

    .line 26
    const-string v1, "proxy"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-class v0, Lio/nekohasekai/sagernet/bg/ProxyService;

    goto :goto_1c

    .line 27
    :cond_12
    const-string v1, "vpn"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-class v0, Lio/nekohasekai/sagernet/bg/VpnService;

    .line 29
    :goto_1c
    return-object v0

    .line 28
    :cond_1d
    new-instance v0, Ljava/lang/UnknownError;

    invoke-direct {v0}, Ljava/lang/UnknownError;-><init>()V

    throw v0
.end method

.method public final setRestartingApp(Z)V
    .registers 2
    .param p1, "<set-?>"    # Z

    .line 37
    invoke-static {p1}, Lio/nekohasekai/sagernet/bg/SagerConnection;->access$setRestartingApp$cp(Z)V

    return-void
.end method
