.class final Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;
.super Lcom/google/common/util/concurrent/AbstractListeningExecutorService;
.source "MoreExecutors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/MoreExecutors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DirectExecutorService"
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;

.field private runningTasks:I

.field private shutdown:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 241
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractListeningExecutorService;-><init>()V

    .line 243
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->lock:Ljava/lang/Object;

    .line 252
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->runningTasks:I

    .line 255
    iput-boolean v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->shutdown:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/MoreExecutors$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/google/common/util/concurrent/MoreExecutors$1;

    .line 241
    invoke-direct {p0}, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;-><init>()V

    return-void
.end method

.method private endTask()V
    .registers 4

    .line 333
    iget-object v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 334
    :try_start_3
    iget v1, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->runningTasks:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->runningTasks:I

    .line 335
    .local v1, "numRunning":I
    if-nez v1, :cond_10

    .line 336
    iget-object v2, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->lock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 338
    .end local v1    # "numRunning":I
    :cond_10
    monitor-exit v0

    .line 339
    return-void

    .line 338
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private startTask()V
    .registers 4

    .line 323
    iget-object v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 324
    :try_start_3
    iget-boolean v1, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->shutdown:Z

    if-nez v1, :cond_f

    .line 327
    iget v1, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->runningTasks:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->runningTasks:I

    .line 328
    monitor-exit v0

    .line 329
    return-void

    .line 325
    :cond_f
    new-instance v1, Ljava/util/concurrent/RejectedExecutionException;

    const-string v2, "Executor already shutdown"

    invoke-direct {v1, v2}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 328
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .registers 11
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 301
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 302
    .local v0, "nanos":J
    iget-object v2, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 304
    :goto_7
    :try_start_7
    iget-boolean v3, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->shutdown:Z

    if-eqz v3, :cond_12

    iget v3, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->runningTasks:I

    if-nez v3, :cond_12

    .line 305
    monitor-exit v2

    const/4 v2, 0x1

    return v2

    .line 306
    :cond_12
    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-gtz v5, :cond_1b

    .line 307
    monitor-exit v2

    const/4 v2, 0x0

    return v2

    .line 309
    :cond_1b
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 310
    .local v3, "now":J
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->lock:Ljava/lang/Object;

    invoke-virtual {v5, v6, v0, v1}, Ljava/util/concurrent/TimeUnit;->timedWait(Ljava/lang/Object;J)V

    .line 311
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    sub-long/2addr v0, v5

    .line 312
    .end local v3    # "now":J
    goto :goto_7

    .line 314
    :catchall_2d
    move-exception v3

    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_2d

    throw v3
.end method

.method public execute(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "command"    # Ljava/lang/Runnable;

    .line 260
    invoke-direct {p0}, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->startTask()V

    .line 262
    :try_start_3
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_b

    .line 264
    invoke-direct {p0}, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->endTask()V

    .line 265
    nop

    .line 266
    return-void

    .line 264
    :catchall_b
    move-exception v0

    invoke-direct {p0}, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->endTask()V

    .line 265
    throw v0
.end method

.method public isShutdown()Z
    .registers 3

    .line 270
    iget-object v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 271
    :try_start_3
    iget-boolean v1, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->shutdown:Z

    monitor-exit v0

    return v1

    .line 272
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public isTerminated()Z
    .registers 3

    .line 294
    iget-object v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 295
    :try_start_3
    iget-boolean v1, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->shutdown:Z

    if-eqz v1, :cond_d

    iget v1, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->runningTasks:I

    if-nez v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    monitor-exit v0

    return v1

    .line 296
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public shutdown()V
    .registers 3

    .line 277
    iget-object v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 278
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->shutdown:Z

    .line 279
    iget v1, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->runningTasks:I

    if-nez v1, :cond_f

    .line 280
    iget-object v1, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 282
    :cond_f
    monitor-exit v0

    .line 283
    return-void

    .line 282
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public shutdownNow()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 288
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->shutdown()V

    .line 289
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
