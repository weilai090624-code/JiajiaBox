.class public final Lio/nekohasekai/sagernet/bg/ProxyService;
.super Landroid/app/Service;
.source "ProxyService.kt"

# interfaces
.implements Lio/nekohasekai/sagernet/bg/BaseService$Interface;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProxyService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProxyService.kt\nio/nekohasekai/sagernet/bg/ProxyService\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,28:1\n1#2:29\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\nH\u0016J\u0008\u0010\u001b\u001a\u00020\u001cH\u0017J\u0012\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0016J\"\u0010!\u001a\u00020\"2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 2\u0006\u0010#\u001a\u00020\"2\u0006\u0010$\u001a\u00020\"H\u0016R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u00020\n8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR \u0010\u0010\u001a\u0008\u0018\u00010\u0011R\u00020\u0012X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\nX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u000c\"\u0004\u0008\u0019\u0010\u001a\u00a8\u0006%"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/bg/ProxyService;",
        "Landroid/app/Service;",
        "Lio/nekohasekai/sagernet/bg/BaseService$Interface;",
        "<init>",
        "()V",
        "data",
        "Lio/nekohasekai/sagernet/bg/BaseService$Data;",
        "getData",
        "()Lio/nekohasekai/sagernet/bg/BaseService$Data;",
        "tag",
        "",
        "getTag",
        "()Ljava/lang/String;",
        "createNotification",
        "Lio/nekohasekai/sagernet/bg/ServiceNotification;",
        "profileName",
        "wakeLock",
        "Landroid/os/PowerManager$WakeLock;",
        "Landroid/os/PowerManager;",
        "getWakeLock",
        "()Landroid/os/PowerManager$WakeLock;",
        "setWakeLock",
        "(Landroid/os/PowerManager$WakeLock;)V",
        "upstreamInterfaceName",
        "getUpstreamInterfaceName",
        "setUpstreamInterfaceName",
        "(Ljava/lang/String;)V",
        "acquireWakeLock",
        "",
        "onBind",
        "Landroid/os/IBinder;",
        "intent",
        "Landroid/content/Intent;",
        "onStartCommand",
        "",
        "flags",
        "startId",
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
.field private final data:Lio/nekohasekai/sagernet/bg/BaseService$Data;

.field private upstreamInterfaceName:Ljava/lang/String;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 10
    new-instance v0, Lio/nekohasekai/sagernet/bg/BaseService$Data;

    move-object v1, p0

    check-cast v1, Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    invoke-direct {v0, v1}, Lio/nekohasekai/sagernet/bg/BaseService$Data;-><init>(Lio/nekohasekai/sagernet/bg/BaseService$Interface;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/bg/ProxyService;->data:Lio/nekohasekai/sagernet/bg/BaseService$Data;

    .line 9
    return-void
.end method


# virtual methods
.method public acquireWakeLock()V
    .locals 3

    .line 20
    sget-object v0, Lio/nekohasekai/sagernet/SagerNet;->Companion:Lio/nekohasekai/sagernet/SagerNet$Companion;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/SagerNet$Companion;->getPower()Landroid/os/PowerManager;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "sagernet:proxy"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 21
    nop

    .line 29
    move-object v1, v0

    .local v1, "$this$acquireWakeLock_u24lambda_u240":Landroid/os/PowerManager$WakeLock;
    const/4 v2, 0x0

    .line 21
    .local v2, "$i$a$-apply-ProxyService$acquireWakeLock$1":I
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 20
    .end local v1    # "$this$acquireWakeLock_u24lambda_u240":Landroid/os/PowerManager$WakeLock;
    .end local v2    # "$i$a$-apply-ProxyService$acquireWakeLock$1":I
    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/bg/ProxyService;->setWakeLock(Landroid/os/PowerManager$WakeLock;)V

    .line 22
    return-void
.end method

.method public canReloadSelector()Z
    .locals 1

    .line 9
    invoke-static {p0}, Lio/nekohasekai/sagernet/bg/BaseService$Interface$DefaultImpls;->canReloadSelector(Lio/nekohasekai/sagernet/bg/BaseService$Interface;)Z

    move-result v0

    return v0
.end method

.method public createNotification(Ljava/lang/String;)Lio/nekohasekai/sagernet/bg/ServiceNotification;
    .locals 4
    .param p1, "profileName"    # Ljava/lang/String;

    const-string v0, "profileName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v0, Lio/nekohasekai/sagernet/bg/ServiceNotification;

    move-object v1, p0

    check-cast v1, Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    const-string v2, "service-proxy"

    const/4 v3, 0x1

    invoke-direct {v0, v1, p1, v2, v3}, Lio/nekohasekai/sagernet/bg/ServiceNotification;-><init>(Lio/nekohasekai/sagernet/bg/BaseService$Interface;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getData()Lio/nekohasekai/sagernet/bg/BaseService$Data;
    .locals 1

    .line 10
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/ProxyService;->data:Lio/nekohasekai/sagernet/bg/BaseService$Data;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 11
    const-string v0, "SagerNetProxyService"

    return-object v0
.end method

.method public getUpstreamInterfaceName()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/ProxyService;->upstreamInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method public getWakeLock()Landroid/os/PowerManager$WakeLock;
    .locals 1

    .line 15
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/ProxyService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method public killProcesses()V
    .locals 0

    .line 9
    invoke-static {p0}, Lio/nekohasekai/sagernet/bg/BaseService$Interface$DefaultImpls;->killProcesses(Lio/nekohasekai/sagernet/bg/BaseService$Interface;)V

    return-void
.end method

.method public lateInit(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 9
    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/bg/BaseService$Interface$DefaultImpls;->lateInit(Lio/nekohasekai/sagernet/bg/BaseService$Interface;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/bg/BaseService$Interface$DefaultImpls;->onBind(Lio/nekohasekai/sagernet/bg/BaseService$Interface;Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 26
    invoke-static {p0, p1, p2, p3}, Lio/nekohasekai/sagernet/bg/BaseService$Interface$DefaultImpls;->onStartCommand(Lio/nekohasekai/sagernet/bg/BaseService$Interface;Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method public persistStats()V
    .locals 0

    .line 9
    invoke-static {p0}, Lio/nekohasekai/sagernet/bg/BaseService$Interface$DefaultImpls;->persistStats(Lio/nekohasekai/sagernet/bg/BaseService$Interface;)V

    return-void
.end method

.method public preInit(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 9
    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/bg/BaseService$Interface$DefaultImpls;->preInit(Lio/nekohasekai/sagernet/bg/BaseService$Interface;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public reload()V
    .locals 0

    .line 9
    invoke-static {p0}, Lio/nekohasekai/sagernet/bg/BaseService$Interface$DefaultImpls;->reload(Lio/nekohasekai/sagernet/bg/BaseService$Interface;)V

    return-void
.end method

.method public setUpstreamInterfaceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;

    .line 16
    iput-object p1, p0, Lio/nekohasekai/sagernet/bg/ProxyService;->upstreamInterfaceName:Ljava/lang/String;

    return-void
.end method

.method public setWakeLock(Landroid/os/PowerManager$WakeLock;)V
    .locals 0
    .param p1, "<set-?>"    # Landroid/os/PowerManager$WakeLock;

    .line 15
    iput-object p1, p0, Lio/nekohasekai/sagernet/bg/ProxyService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public startProcesses(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 9
    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/bg/BaseService$Interface$DefaultImpls;->startProcesses(Lio/nekohasekai/sagernet/bg/BaseService$Interface;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public startRunner()V
    .locals 0

    .line 9
    invoke-static {p0}, Lio/nekohasekai/sagernet/bg/BaseService$Interface$DefaultImpls;->startRunner(Lio/nekohasekai/sagernet/bg/BaseService$Interface;)V

    return-void
.end method

.method public stopRunner(ZLjava/lang/String;)V
    .locals 0
    .param p1, "restart"    # Z
    .param p2, "msg"    # Ljava/lang/String;

    .line 9
    invoke-static {p0, p1, p2}, Lio/nekohasekai/sagernet/bg/BaseService$Interface$DefaultImpls;->stopRunner(Lio/nekohasekai/sagernet/bg/BaseService$Interface;ZLjava/lang/String;)V

    return-void
.end method
