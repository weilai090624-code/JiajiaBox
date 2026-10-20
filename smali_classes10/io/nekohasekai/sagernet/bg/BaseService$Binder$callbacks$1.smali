.class public final Lio/nekohasekai/sagernet/bg/BaseService$Binder$callbacks$1;
.super Landroid/os/RemoteCallbackList;
.source "BaseService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/bg/BaseService$Binder;-><init>(Lio/nekohasekai/sagernet/bg/BaseService$Data;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/RemoteCallbackList<",
        "Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u001c\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "io/nekohasekai/sagernet/bg/BaseService$Binder$callbacks$1",
        "Landroid/os/RemoteCallbackList;",
        "Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;",
        "onCallbackDied",
        "",
        "callback",
        "cookie",
        "",
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
.method constructor <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCallbackDied(Landroid/os/IInterface;Ljava/lang/Object;)V
    .locals 1
    .param p1, "p0"    # Landroid/os/IInterface;
    .param p2, "p1"    # Ljava/lang/Object;

    .line 94
    move-object v0, p1

    check-cast v0, Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;

    invoke-virtual {p0, v0, p2}, Lio/nekohasekai/sagernet/bg/BaseService$Binder$callbacks$1;->onCallbackDied(Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public onCallbackDied(Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;Ljava/lang/Object;)V
    .locals 1
    .param p1, "callback"    # Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;
    .param p2, "cookie"    # Ljava/lang/Object;

    .line 96
    move-object v0, p1

    check-cast v0, Landroid/os/IInterface;

    invoke-super {p0, v0, p2}, Landroid/os/RemoteCallbackList;->onCallbackDied(Landroid/os/IInterface;Ljava/lang/Object;)V

    .line 97
    return-void
.end method
