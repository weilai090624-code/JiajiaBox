.class final Lcom/google/common/util/concurrent/SequentialExecutor;
.super Ljava/lang/Object;
.source "SequentialExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation runtime Lcom/google/common/util/concurrent/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/SequentialExecutor$QueueWorker;,
        Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final queue:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final worker:Lcom/google/common/util/concurrent/SequentialExecutor$QueueWorker;

.field private workerRunCount:J

.field private workerRunningState:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 53
    const-class v0, Lcom/google/common/util/concurrent/SequentialExecutor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/SequentialExecutor;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->queue:Ljava/util/Deque;

    .line 72
    sget-object v0, Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;->IDLE:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    iput-object v0, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->workerRunningState:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    .line 82
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->workerRunCount:J

    .line 85
    new-instance v0, Lcom/google/common/util/concurrent/SequentialExecutor$QueueWorker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/util/concurrent/SequentialExecutor$QueueWorker;-><init>(Lcom/google/common/util/concurrent/SequentialExecutor;Lcom/google/common/util/concurrent/SequentialExecutor$1;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->worker:Lcom/google/common/util/concurrent/SequentialExecutor$QueueWorker;

    .line 89
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->executor:Ljava/util/concurrent/Executor;

    .line 90
    return-void
.end method

.method static synthetic access$100(Lcom/google/common/util/concurrent/SequentialExecutor;)Ljava/util/Deque;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/util/concurrent/SequentialExecutor;

    .line 52
    iget-object v0, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->queue:Ljava/util/Deque;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/common/util/concurrent/SequentialExecutor;)Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/util/concurrent/SequentialExecutor;

    .line 52
    iget-object v0, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->workerRunningState:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/common/util/concurrent/SequentialExecutor;Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;)Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/util/concurrent/SequentialExecutor;
    .param p1, "x1"    # Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    .line 52
    iput-object p1, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->workerRunningState:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    return-object p1
.end method

.method static synthetic access$308(Lcom/google/common/util/concurrent/SequentialExecutor;)J
    .registers 5
    .param p0, "x0"    # Lcom/google/common/util/concurrent/SequentialExecutor;

    .line 52
    iget-wide v0, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->workerRunCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->workerRunCount:J

    return-wide v0
.end method

.method static synthetic access$400()Ljava/util/logging/Logger;
    .registers 1

    .line 52
    sget-object v0, Lcom/google/common/util/concurrent/SequentialExecutor;->log:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 11
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 100
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->queue:Ljava/util/Deque;

    monitor-enter v0

    .line 106
    :try_start_6
    iget-object v1, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->workerRunningState:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    sget-object v2, Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;->RUNNING:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    if-eq v1, v2, :cond_7b

    iget-object v1, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->workerRunningState:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    sget-object v2, Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;->QUEUED:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    if-ne v1, v2, :cond_13

    goto :goto_7b

    .line 111
    :cond_13
    iget-wide v1, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->workerRunCount:J

    .line 119
    .local v1, "oldRunCount":J
    new-instance v3, Lcom/google/common/util/concurrent/SequentialExecutor$1;

    invoke-direct {v3, p0, p1}, Lcom/google/common/util/concurrent/SequentialExecutor$1;-><init>(Lcom/google/common/util/concurrent/SequentialExecutor;Ljava/lang/Runnable;)V

    .line 131
    .local v3, "submittedTask":Ljava/lang/Runnable;
    iget-object v4, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->queue:Ljava/util/Deque;

    invoke-interface {v4, v3}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 132
    sget-object v4, Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;->QUEUING:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    iput-object v4, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->workerRunningState:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    .line 133
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_6 .. :try_end_24} :catchall_82

    .line 136
    const/4 v0, 0x1

    const/4 v4, 0x0

    :try_start_26
    iget-object v5, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->executor:Ljava/util/concurrent/Executor;

    iget-object v6, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->worker:Lcom/google/common/util/concurrent/SequentialExecutor$QueueWorker;

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2d
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_2d} :catch_54
    .catch Ljava/lang/Error; {:try_start_26 .. :try_end_2d} :catch_52

    .line 149
    nop

    .line 162
    iget-object v5, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->workerRunningState:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    sget-object v6, Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;->QUEUING:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    if-eq v5, v6, :cond_35

    goto :goto_36

    :cond_35
    const/4 v0, 0x0

    :goto_36
    move v5, v0

    .line 163
    .local v5, "alreadyMarkedQueued":Z
    if-eqz v5, :cond_3a

    .line 164
    return-void

    .line 166
    :cond_3a
    iget-object v6, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->queue:Ljava/util/Deque;

    monitor-enter v6

    .line 167
    :try_start_3d
    iget-wide v7, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->workerRunCount:J

    cmp-long v0, v7, v1

    if-nez v0, :cond_4d

    iget-object v0, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->workerRunningState:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    sget-object v4, Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;->QUEUING:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    if-ne v0, v4, :cond_4d

    .line 168
    sget-object v0, Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;->QUEUED:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    iput-object v0, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->workerRunningState:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    .line 170
    :cond_4d
    monitor-exit v6

    .line 171
    return-void

    .line 170
    :catchall_4f
    move-exception v0

    monitor-exit v6
    :try_end_51
    .catchall {:try_start_3d .. :try_end_51} :catchall_4f

    throw v0

    .line 137
    .end local v5    # "alreadyMarkedQueued":Z
    :catch_52
    move-exception v5

    goto :goto_55

    :catch_54
    move-exception v5

    .line 138
    .local v5, "t":Ljava/lang/Throwable;
    :goto_55
    iget-object v6, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->queue:Ljava/util/Deque;

    monitor-enter v6

    .line 139
    :try_start_58
    iget-object v7, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->workerRunningState:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    sget-object v8, Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;->IDLE:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    if-eq v7, v8, :cond_64

    iget-object v7, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->workerRunningState:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    sget-object v8, Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;->QUEUING:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    if-ne v7, v8, :cond_6d

    :cond_64
    iget-object v7, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->queue:Ljava/util/Deque;

    .line 141
    invoke-interface {v7, v3}, Ljava/util/Deque;->removeLastOccurrence(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6d

    goto :goto_6e

    :cond_6d
    const/4 v0, 0x0

    .line 144
    .local v0, "removed":Z
    :goto_6e
    instance-of v4, v5, Ljava/util/concurrent/RejectedExecutionException;

    if-eqz v4, :cond_76

    if-nez v0, :cond_76

    .line 147
    .end local v0    # "removed":Z
    monitor-exit v6

    .line 148
    return-void

    .line 145
    .restart local v0    # "removed":Z
    :cond_76
    nop

    .end local v1    # "oldRunCount":J
    .end local v3    # "submittedTask":Ljava/lang/Runnable;
    .end local p1    # "task":Ljava/lang/Runnable;
    throw v5

    .line 147
    .end local v0    # "removed":Z
    .restart local v1    # "oldRunCount":J
    .restart local v3    # "submittedTask":Ljava/lang/Runnable;
    .restart local p1    # "task":Ljava/lang/Runnable;
    :catchall_78
    move-exception v0

    monitor-exit v6
    :try_end_7a
    .catchall {:try_start_58 .. :try_end_7a} :catchall_78

    throw v0

    .line 107
    .end local v1    # "oldRunCount":J
    .end local v3    # "submittedTask":Ljava/lang/Runnable;
    .end local v5    # "t":Ljava/lang/Throwable;
    :cond_7b
    :goto_7b
    :try_start_7b
    iget-object v1, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->queue:Ljava/util/Deque;

    invoke-interface {v1, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 108
    monitor-exit v0

    return-void

    .line 133
    :catchall_82
    move-exception v1

    monitor-exit v0
    :try_end_84
    .catchall {:try_start_7b .. :try_end_84} :catchall_82

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 265
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->executor:Ljava/util/concurrent/Executor;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x20

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "SequentialExecutor@"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
