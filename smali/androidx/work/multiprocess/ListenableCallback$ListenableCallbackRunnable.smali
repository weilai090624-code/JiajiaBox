.class public Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;
.super Ljava/lang/Object;
.source "ListenableCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/multiprocess/ListenableCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListenableCallbackRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCallback:Landroidx/work/multiprocess/ListenableCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/work/multiprocess/ListenableCallback<",
            "TI;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    const-string v0, "ListenableCallbackRbl"

    invoke-static {v0}, Landroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/work/multiprocess/ListenableCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/multiprocess/ListenableCallback<",
            "TI;>;)V"
        }
    .end annotation

    .line 76
    .local p0, "this":Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;, "Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable<TI;>;"
    .local p1, "callback":Landroidx/work/multiprocess/ListenableCallback;, "Landroidx/work/multiprocess/ListenableCallback<TI;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;->mCallback:Landroidx/work/multiprocess/ListenableCallback;

    .line 78
    return-void
.end method

.method public static reportFailure(Landroidx/work/multiprocess/IWorkManagerImplCallback;Ljava/lang/Throwable;)V
    .locals 4
    .param p0, "callback"    # Landroidx/work/multiprocess/IWorkManagerImplCallback;
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 110
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroidx/work/multiprocess/IWorkManagerImplCallback;->onFailure(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "exception":Landroid/os/RemoteException;
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v1

    sget-object v2, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;->TAG:Ljava/lang/String;

    const-string v3, "Unable to notify failures in operation"

    invoke-virtual {v1, v2, v3, v0}, Landroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    .end local v0    # "exception":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static reportSuccess(Landroidx/work/multiprocess/IWorkManagerImplCallback;[B)V
    .locals 4
    .param p0, "callback"    # Landroidx/work/multiprocess/IWorkManagerImplCallback;
    .param p1, "response"    # [B

    .line 97
    :try_start_0
    invoke-interface {p0, p1}, Landroidx/work/multiprocess/IWorkManagerImplCallback;->onSuccess([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "exception":Landroid/os/RemoteException;
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v1

    sget-object v2, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;->TAG:Ljava/lang/String;

    const-string v3, "Unable to notify successful operation"

    invoke-virtual {v1, v2, v3, v0}, Landroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    .end local v0    # "exception":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 83
    .local p0, "this":Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;, "Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable<TI;>;"
    :try_start_0
    iget-object v0, p0, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;->mCallback:Landroidx/work/multiprocess/ListenableCallback;

    iget-object v0, v0, Landroidx/work/multiprocess/ListenableCallback;->mFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    .line 84
    .local v0, "result":Ljava/lang/Object;, "TI;"
    iget-object v1, p0, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;->mCallback:Landroidx/work/multiprocess/ListenableCallback;

    iget-object v1, v1, Landroidx/work/multiprocess/ListenableCallback;->mCallback:Landroidx/work/multiprocess/IWorkManagerImplCallback;

    iget-object v2, p0, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;->mCallback:Landroidx/work/multiprocess/ListenableCallback;

    invoke-virtual {v2, v0}, Landroidx/work/multiprocess/ListenableCallback;->toByteArray(Ljava/lang/Object;)[B

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;->reportSuccess(Landroidx/work/multiprocess/IWorkManagerImplCallback;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    .end local v0    # "result":Ljava/lang/Object;, "TI;"
    goto :goto_0

    .line 85
    :catchall_0
    move-exception v0

    .line 86
    .local v0, "throwable":Ljava/lang/Throwable;
    iget-object v1, p0, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;->mCallback:Landroidx/work/multiprocess/ListenableCallback;

    iget-object v1, v1, Landroidx/work/multiprocess/ListenableCallback;->mCallback:Landroidx/work/multiprocess/IWorkManagerImplCallback;

    invoke-static {v1, v0}, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;->reportFailure(Landroidx/work/multiprocess/IWorkManagerImplCallback;Ljava/lang/Throwable;)V

    .line 88
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
