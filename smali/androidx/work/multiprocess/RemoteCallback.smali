.class public Landroidx/work/multiprocess/RemoteCallback;
.super Landroidx/work/multiprocess/IWorkManagerImplCallback$Stub;
.source "RemoteCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/multiprocess/RemoteCallback$DeathRecipient;
    }
.end annotation


# instance fields
.field private mBinder:Landroid/os/IBinder;

.field private final mFuture:Landroidx/work/impl/utils/futures/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/work/impl/utils/futures/SettableFuture<",
            "[B>;"
        }
    .end annotation
.end field

.field private final mRecipient:Landroid/os/IBinder$DeathRecipient;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Landroidx/work/multiprocess/IWorkManagerImplCallback$Stub;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/work/multiprocess/RemoteCallback;->mBinder:Landroid/os/IBinder;

    .line 50
    invoke-static {}, Landroidx/work/impl/utils/futures/SettableFuture;->create()Landroidx/work/impl/utils/futures/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/multiprocess/RemoteCallback;->mFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    .line 51
    new-instance v0, Landroidx/work/multiprocess/RemoteCallback$DeathRecipient;

    invoke-direct {v0, p0}, Landroidx/work/multiprocess/RemoteCallback$DeathRecipient;-><init>(Landroidx/work/multiprocess/RemoteCallback;)V

    iput-object v0, p0, Landroidx/work/multiprocess/RemoteCallback;->mRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 52
    return-void
.end method

.method private onFailure(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 89
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteCallback;->mFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-virtual {v0, p1}, Landroidx/work/impl/utils/futures/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 90
    invoke-direct {p0}, Landroidx/work/multiprocess/RemoteCallback;->unlinkToDeath()V

    .line 91
    invoke-virtual {p0}, Landroidx/work/multiprocess/RemoteCallback;->onRequestCompleted()V

    .line 92
    return-void
.end method

.method private unlinkToDeath()V
    .registers 4

    .line 95
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteCallback;->mBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_e

    .line 97
    :try_start_4
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteCallback;->mBinder:Landroid/os/IBinder;

    iget-object v1, p0, Landroidx/work/multiprocess/RemoteCallback;->mRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_c
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_c} :catch_d

    .line 103
    goto :goto_e

    .line 98
    :catch_d
    move-exception v0

    .line 105
    :cond_e
    :goto_e
    return-void
.end method


# virtual methods
.method public getFuture()Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "[B>;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteCallback;->mFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    return-object v0
.end method

.method public onFailure(Ljava/lang/String;)V
    .registers 3
    .param p1, "error"    # Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroidx/work/multiprocess/RemoteCallback;->onFailure(Ljava/lang/Throwable;)V

    .line 78
    return-void
.end method

.method protected onRequestCompleted()V
    .registers 1

    .line 86
    return-void
.end method

.method public onSuccess([B)V
    .registers 3
    .param p1, "result"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteCallback;->mFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-virtual {v0, p1}, Landroidx/work/impl/utils/futures/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 71
    invoke-direct {p0}, Landroidx/work/multiprocess/RemoteCallback;->unlinkToDeath()V

    .line 72
    invoke-virtual {p0}, Landroidx/work/multiprocess/RemoteCallback;->onRequestCompleted()V

    .line 73
    return-void
.end method

.method public setBinder(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 60
    iput-object p1, p0, Landroidx/work/multiprocess/RemoteCallback;->mBinder:Landroid/os/IBinder;

    .line 62
    :try_start_2
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteCallback;->mBinder:Landroid/os/IBinder;

    iget-object v1, p0, Landroidx/work/multiprocess/RemoteCallback;->mRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_a} :catch_b

    .line 65
    goto :goto_f

    .line 63
    :catch_b
    move-exception v0

    .line 64
    .local v0, "exception":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroidx/work/multiprocess/RemoteCallback;->onFailure(Ljava/lang/Throwable;)V

    .line 66
    .end local v0    # "exception":Landroid/os/RemoteException;
    :goto_f
    return-void
.end method
