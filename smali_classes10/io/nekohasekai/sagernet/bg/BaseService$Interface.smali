.class public interface abstract Lio/nekohasekai/sagernet/bg/BaseService$Interface;
.super Ljava/lang/Object;
.source "BaseService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/bg/BaseService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Interface"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/bg/BaseService$Interface$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0007H&J\u0012\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\u000e\u0010\u0015\u001a\u00020\u0012H\u0096@\u00a2\u0006\u0002\u0010\u0016J\u0008\u0010\u0017\u001a\u00020\u0012H\u0016J\u0008\u0010\u0018\u001a\u00020\u0012H\u0016J\u001e\u0010\u0019\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u00142\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0007H\u0016J\u0008\u0010\u001c\u001a\u00020\u0012H\u0016J\u000e\u0010!\u001a\u00020\u0012H\u0096@\u00a2\u0006\u0002\u0010\u0016J\u0008\u0010)\u001a\u00020\u0012H&J\u000e\u0010*\u001a\u00020\u0012H\u0096@\u00a2\u0006\u0002\u0010\u0016J\"\u0010+\u001a\u00020,2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010-\u001a\u00020,2\u0006\u0010.\u001a\u00020,H\u0016R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u001a\u0010\u001d\u001a\u0004\u0018\u00010\u0007X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001e\u0010\t\"\u0004\u0008\u001f\u0010 R\u001e\u0010\"\u001a\u0008\u0018\u00010#R\u00020$X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(\u00a8\u0006/"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/bg/BaseService$Interface;",
        "",
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
        "onBind",
        "Landroid/os/IBinder;",
        "intent",
        "Landroid/content/Intent;",
        "reload",
        "",
        "canReloadSelector",
        "",
        "startProcesses",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "startRunner",
        "killProcesses",
        "stopRunner",
        "restart",
        "msg",
        "persistStats",
        "upstreamInterfaceName",
        "getUpstreamInterfaceName",
        "setUpstreamInterfaceName",
        "(Ljava/lang/String;)V",
        "preInit",
        "wakeLock",
        "Landroid/os/PowerManager$WakeLock;",
        "Landroid/os/PowerManager;",
        "getWakeLock",
        "()Landroid/os/PowerManager$WakeLock;",
        "setWakeLock",
        "(Landroid/os/PowerManager$WakeLock;)V",
        "acquireWakeLock",
        "lateInit",
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


# virtual methods
.method public abstract acquireWakeLock()V
.end method

.method public abstract canReloadSelector()Z
.end method

.method public abstract createNotification(Ljava/lang/String;)Lio/nekohasekai/sagernet/bg/ServiceNotification;
.end method

.method public abstract getData()Lio/nekohasekai/sagernet/bg/BaseService$Data;
.end method

.method public abstract getTag()Ljava/lang/String;
.end method

.method public abstract getUpstreamInterfaceName()Ljava/lang/String;
.end method

.method public abstract getWakeLock()Landroid/os/PowerManager$WakeLock;
.end method

.method public abstract killProcesses()V
.end method

.method public abstract lateInit(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
.end method

.method public abstract onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end method

.method public abstract onStartCommand(Landroid/content/Intent;II)I
.end method

.method public abstract persistStats()V
.end method

.method public abstract preInit(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
.end method

.method public abstract reload()V
.end method

.method public abstract setUpstreamInterfaceName(Ljava/lang/String;)V
.end method

.method public abstract setWakeLock(Landroid/os/PowerManager$WakeLock;)V
.end method

.method public abstract startProcesses(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
.end method

.method public abstract startRunner()V
.end method

.method public abstract stopRunner(ZLjava/lang/String;)V
.end method
