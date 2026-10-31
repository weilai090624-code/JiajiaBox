.class public final Landroidx/core/os/CancellationSignal;
.super Ljava/lang/Object;
.source "CancellationSignal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/os/CancellationSignal$OnCancelListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mCancelInProgress:Z

.field private mCancellationSignalObj:Ljava/lang/Object;

.field private mIsCanceled:Z

.field private mOnCancelListener:Landroidx/core/os/CancellationSignal$OnCancelListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method private waitForCancelFinishedLocked()V
    .registers 2

    .line 155
    nop

    :goto_1
    iget-boolean v0, p0, Landroidx/core/os/CancellationSignal;->mCancelInProgress:Z

    if-eqz v0, :cond_b

    .line 157
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9

    .line 160
    :goto_8
    goto :goto_1

    .line 158
    :catch_9
    move-exception v0

    goto :goto_8

    .line 162
    :cond_b
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 5

    .line 74
    monitor-enter p0

    .line 75
    :try_start_1
    iget-boolean v0, p0, Landroidx/core/os/CancellationSignal;->mIsCanceled:Z

    if-eqz v0, :cond_7

    .line 76
    monitor-exit p0

    return-void

    .line 78
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/core/os/CancellationSignal;->mIsCanceled:Z

    .line 79
    iput-boolean v0, p0, Landroidx/core/os/CancellationSignal;->mCancelInProgress:Z

    .line 80
    iget-object v0, p0, Landroidx/core/os/CancellationSignal;->mOnCancelListener:Landroidx/core/os/CancellationSignal$OnCancelListener;

    .line 81
    .local v0, "listener":Landroidx/core/os/CancellationSignal$OnCancelListener;
    iget-object v1, p0, Landroidx/core/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;

    .line 82
    .local v1, "obj":Ljava/lang/Object;
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_3a

    .line 85
    const/4 v2, 0x0

    if-eqz v0, :cond_1a

    .line 86
    :try_start_14
    invoke-interface {v0}, Landroidx/core/os/CancellationSignal$OnCancelListener;->onCancel()V

    goto :goto_1a

    .line 92
    :catchall_18
    move-exception v3

    goto :goto_23

    .line 88
    :cond_1a
    :goto_1a
    if-eqz v1, :cond_2e

    .line 89
    move-object v3, v1

    check-cast v3, Landroid/os/CancellationSignal;

    invoke-virtual {v3}, Landroid/os/CancellationSignal;->cancel()V
    :try_end_22
    .catchall {:try_start_14 .. :try_end_22} :catchall_18

    goto :goto_2e

    .line 92
    :goto_23
    monitor-enter p0

    .line 93
    :try_start_24
    iput-boolean v2, p0, Landroidx/core/os/CancellationSignal;->mCancelInProgress:Z

    .line 94
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 95
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_24 .. :try_end_2a} :catchall_2b

    .line 96
    throw v3

    .line 95
    :catchall_2b
    move-exception v2

    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v2

    .line 92
    :cond_2e
    :goto_2e
    monitor-enter p0

    .line 93
    :try_start_2f
    iput-boolean v2, p0, Landroidx/core/os/CancellationSignal;->mCancelInProgress:Z

    .line 94
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 95
    monitor-exit p0

    .line 96
    nop

    .line 97
    return-void

    .line 95
    :catchall_37
    move-exception v2

    monitor-exit p0
    :try_end_39
    .catchall {:try_start_2f .. :try_end_39} :catchall_37

    throw v2

    .line 82
    .end local v0    # "listener":Landroidx/core/os/CancellationSignal$OnCancelListener;
    .end local v1    # "obj":Ljava/lang/Object;
    :catchall_3a
    move-exception v0

    :try_start_3b
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v0
.end method

.method public getCancellationSignalObject()Ljava/lang/Object;
    .registers 2

    .line 143
    monitor-enter p0

    .line 144
    :try_start_1
    iget-object v0, p0, Landroidx/core/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;

    if-nez v0, :cond_17

    .line 145
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Landroidx/core/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;

    .line 146
    iget-boolean v0, p0, Landroidx/core/os/CancellationSignal;->mIsCanceled:Z

    if-eqz v0, :cond_17

    .line 147
    iget-object v0, p0, Landroidx/core/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;

    check-cast v0, Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 150
    :cond_17
    iget-object v0, p0, Landroidx/core/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;

    monitor-exit p0

    return-object v0

    .line 151
    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public isCanceled()Z
    .registers 2

    .line 51
    monitor-enter p0

    .line 52
    :try_start_1
    iget-boolean v0, p0, Landroidx/core/os/CancellationSignal;->mIsCanceled:Z

    monitor-exit p0

    return v0

    .line 53
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public setOnCancelListener(Landroidx/core/os/CancellationSignal$OnCancelListener;)V
    .registers 3
    .param p1, "listener"    # Landroidx/core/os/CancellationSignal$OnCancelListener;

    .line 116
    monitor-enter p0

    .line 117
    :try_start_1
    invoke-direct {p0}, Landroidx/core/os/CancellationSignal;->waitForCancelFinishedLocked()V

    .line 119
    iget-object v0, p0, Landroidx/core/os/CancellationSignal;->mOnCancelListener:Landroidx/core/os/CancellationSignal$OnCancelListener;

    if-ne v0, p1, :cond_a

    .line 120
    monitor-exit p0

    return-void

    .line 122
    :cond_a
    iput-object p1, p0, Landroidx/core/os/CancellationSignal;->mOnCancelListener:Landroidx/core/os/CancellationSignal$OnCancelListener;

    .line 123
    iget-boolean v0, p0, Landroidx/core/os/CancellationSignal;->mIsCanceled:Z

    if-eqz v0, :cond_18

    if-nez p1, :cond_13

    goto :goto_18

    .line 126
    :cond_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_1a

    .line 127
    invoke-interface {p1}, Landroidx/core/os/CancellationSignal$OnCancelListener;->onCancel()V

    .line 128
    return-void

    .line 124
    :cond_18
    :goto_18
    :try_start_18
    monitor-exit p0

    return-void

    .line 126
    :catchall_1a
    move-exception v0

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public throwIfCanceled()V
    .registers 2

    .line 62
    invoke-virtual {p0}, Landroidx/core/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 65
    return-void

    .line 63
    :cond_7
    new-instance v0, Landroidx/core/os/OperationCanceledException;

    invoke-direct {v0}, Landroidx/core/os/OperationCanceledException;-><init>()V

    throw v0
.end method
