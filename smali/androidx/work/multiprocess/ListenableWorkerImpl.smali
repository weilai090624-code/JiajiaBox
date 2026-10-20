.class public Landroidx/work/multiprocess/ListenableWorkerImpl;
.super Landroidx/work/multiprocess/IListenableWorkerImpl$Stub;
.source "ListenableWorkerImpl.java"


# static fields
.field static final TAG:Ljava/lang/String;

.field static sEMPTY:[B

.field static final sLock:Ljava/lang/Object;


# instance fields
.field final mConfiguration:Landroidx/work/Configuration;

.field final mContext:Landroid/content/Context;

.field final mForegroundUpdater:Landroidx/work/ForegroundUpdater;

.field final mFutureMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/work/ListenableWorker$Result;",
            ">;>;"
        }
    .end annotation
.end field

.field final mProgressUpdater:Landroidx/work/ProgressUpdater;

.field final mTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    const-string v0, "ListenableWorkerImpl"

    invoke-static {v0}, Landroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/multiprocess/ListenableWorkerImpl;->TAG:Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Landroidx/work/multiprocess/ListenableWorkerImpl;->sEMPTY:[B

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/work/multiprocess/ListenableWorkerImpl;->sLock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 73
    invoke-direct {p0}, Landroidx/work/multiprocess/IListenableWorkerImpl$Stub;-><init>()V

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/multiprocess/ListenableWorkerImpl;->mContext:Landroid/content/Context;

    .line 75
    invoke-static {p1}, Landroidx/work/multiprocess/RemoteWorkManagerInfo;->getInstance(Landroid/content/Context;)Landroidx/work/multiprocess/RemoteWorkManagerInfo;

    move-result-object v0

    .line 76
    .local v0, "remoteInfo":Landroidx/work/multiprocess/RemoteWorkManagerInfo;
    invoke-virtual {v0}, Landroidx/work/multiprocess/RemoteWorkManagerInfo;->getConfiguration()Landroidx/work/Configuration;

    move-result-object v1

    iput-object v1, p0, Landroidx/work/multiprocess/ListenableWorkerImpl;->mConfiguration:Landroidx/work/Configuration;

    .line 77
    invoke-virtual {v0}, Landroidx/work/multiprocess/RemoteWorkManagerInfo;->getTaskExecutor()Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    move-result-object v1

    iput-object v1, p0, Landroidx/work/multiprocess/ListenableWorkerImpl;->mTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 78
    invoke-virtual {v0}, Landroidx/work/multiprocess/RemoteWorkManagerInfo;->getProgressUpdater()Landroidx/work/ProgressUpdater;

    move-result-object v1

    iput-object v1, p0, Landroidx/work/multiprocess/ListenableWorkerImpl;->mProgressUpdater:Landroidx/work/ProgressUpdater;

    .line 79
    invoke-virtual {v0}, Landroidx/work/multiprocess/RemoteWorkManagerInfo;->getForegroundUpdater()Landroidx/work/ForegroundUpdater;

    move-result-object v1

    iput-object v1, p0, Landroidx/work/multiprocess/ListenableWorkerImpl;->mForegroundUpdater:Landroidx/work/ForegroundUpdater;

    .line 80
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/work/multiprocess/ListenableWorkerImpl;->mFutureMap:Ljava/util/Map;

    .line 81
    return-void
.end method

.method private executeWorkRequest(Ljava/lang/String;Ljava/lang/String;Landroidx/work/WorkerParameters;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "workerClassName"    # Ljava/lang/String;
    .param p3, "workerParameters"    # Landroidx/work/WorkerParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroidx/work/WorkerParameters;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/work/ListenableWorker$Result;",
            ">;"
        }
    .end annotation

    .line 174
    invoke-static {}, Landroidx/work/impl/utils/futures/SettableFuture;->create()Landroidx/work/impl/utils/futures/SettableFuture;

    move-result-object v0

    .line 175
    .local v0, "future":Landroidx/work/impl/utils/futures/SettableFuture;, "Landroidx/work/impl/utils/futures/SettableFuture<Landroidx/work/ListenableWorker$Result;>;"
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v1

    sget-object v2, Landroidx/work/multiprocess/ListenableWorkerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tracking execution of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    sget-object v1, Landroidx/work/multiprocess/ListenableWorkerImpl;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 178
    :try_start_0
    iget-object v2, p0, Landroidx/work/multiprocess/ListenableWorkerImpl;->mFutureMap:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    iget-object v1, p0, Landroidx/work/multiprocess/ListenableWorkerImpl;->mTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    invoke-interface {v1}, Landroidx/work/impl/utils/taskexecutor/TaskExecutor;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroidx/work/multiprocess/ListenableWorkerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p2, p3, v0}, Landroidx/work/multiprocess/ListenableWorkerImpl$$ExternalSyntheticLambda0;-><init>(Landroidx/work/multiprocess/ListenableWorkerImpl;Ljava/lang/String;Landroidx/work/WorkerParameters;Landroidx/work/impl/utils/futures/SettableFuture;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 207
    return-object v0

    .line 179
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method


# virtual methods
.method public interrupt([BLandroidx/work/multiprocess/IWorkManagerImplCallback;)V
    .locals 6
    .param p1, "request"    # [B
    .param p2, "callback"    # Landroidx/work/multiprocess/IWorkManagerImplCallback;

    .line 141
    :try_start_0
    sget-object v0, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 142
    invoke-static {p1, v0}, Landroidx/work/multiprocess/parcelable/ParcelConverters;->unmarshall([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;

    .line 143
    .local v0, "parcelableWorkerParameters":Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;
    invoke-virtual {v0}, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;->getId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "id":Ljava/lang/String;
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v2

    sget-object v3, Landroidx/work/multiprocess/ListenableWorkerImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Interrupting work with id ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    sget-object v2, Landroidx/work/multiprocess/ListenableWorkerImpl;->sLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 148
    :try_start_1
    iget-object v3, p0, Landroidx/work/multiprocess/ListenableWorkerImpl;->mFutureMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 149
    .local v3, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/work/ListenableWorker$Result;>;"
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    if-eqz v3, :cond_0

    .line 151
    :try_start_2
    iget-object v2, p0, Landroidx/work/multiprocess/ListenableWorkerImpl;->mTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    invoke-interface {v2}, Landroidx/work/impl/utils/taskexecutor/TaskExecutor;->getSerialTaskExecutor()Landroidx/work/impl/utils/taskexecutor/SerialExecutor;

    move-result-object v2

    new-instance v4, Landroidx/work/multiprocess/ListenableWorkerImpl$2;

    invoke-direct {v4, p0, v3, p2}, Landroidx/work/multiprocess/ListenableWorkerImpl$2;-><init>(Landroidx/work/multiprocess/ListenableWorkerImpl;Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/work/multiprocess/IWorkManagerImplCallback;)V

    .line 152
    invoke-interface {v2, v4}, Landroidx/work/impl/utils/taskexecutor/SerialExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 161
    :cond_0
    sget-object v2, Landroidx/work/multiprocess/ListenableWorkerImpl;->sEMPTY:[B

    invoke-static {p2, v2}, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;->reportSuccess(Landroidx/work/multiprocess/IWorkManagerImplCallback;[B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 165
    .end local v0    # "parcelableWorkerParameters":Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;
    .end local v1    # "id":Ljava/lang/String;
    .end local v3    # "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/work/ListenableWorker$Result;>;"
    :goto_0
    goto :goto_1

    .line 149
    .restart local v0    # "parcelableWorkerParameters":Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;
    .restart local v1    # "id":Ljava/lang/String;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p1    # "request":[B
    .end local p2    # "callback":Landroidx/work/multiprocess/IWorkManagerImplCallback;
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 163
    .end local v0    # "parcelableWorkerParameters":Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;
    .end local v1    # "id":Ljava/lang/String;
    .restart local p1    # "request":[B
    .restart local p2    # "callback":Landroidx/work/multiprocess/IWorkManagerImplCallback;
    :catchall_1
    move-exception v0

    .line 164
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-static {p2, v0}, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;->reportFailure(Landroidx/work/multiprocess/IWorkManagerImplCallback;Ljava/lang/Throwable;)V

    .line 166
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method

.method synthetic lambda$executeWorkRequest$0$androidx-work-multiprocess-ListenableWorkerImpl(Ljava/lang/String;Landroidx/work/WorkerParameters;Landroidx/work/impl/utils/futures/SettableFuture;)V
    .locals 4
    .param p1, "workerClassName"    # Ljava/lang/String;
    .param p2, "workerParameters"    # Landroidx/work/WorkerParameters;
    .param p3, "future"    # Landroidx/work/impl/utils/futures/SettableFuture;

    .line 182
    :try_start_0
    iget-object v0, p0, Landroidx/work/multiprocess/ListenableWorkerImpl;->mConfiguration:Landroidx/work/Configuration;

    invoke-virtual {v0}, Landroidx/work/Configuration;->getWorkerFactory()Landroidx/work/WorkerFactory;

    move-result-object v0

    iget-object v1, p0, Landroidx/work/multiprocess/ListenableWorkerImpl;->mContext:Landroid/content/Context;

    .line 183
    invoke-virtual {v0, v1, p1, p2}, Landroidx/work/WorkerFactory;->createWorkerWithDefaultFallback(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Landroidx/work/ListenableWorker;

    move-result-object v0

    .line 185
    .local v0, "worker":Landroidx/work/ListenableWorker;
    if-nez v0, :cond_0

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to create an instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, "message":Ljava/lang/String;
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v2

    sget-object v3, Landroidx/work/multiprocess/ListenableWorkerImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Landroidx/work/impl/utils/futures/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 189
    return-void

    .line 192
    .end local v1    # "message":Ljava/lang/String;
    :cond_0
    instance-of v1, v0, Landroidx/work/multiprocess/RemoteListenableWorker;

    if-nez v1, :cond_1

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not extend "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Landroidx/work/multiprocess/RemoteListenableWorker;

    .line 194
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 195
    .restart local v1    # "message":Ljava/lang/String;
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v2

    sget-object v3, Landroidx/work/multiprocess/ListenableWorkerImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Landroidx/work/impl/utils/futures/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 197
    return-void

    .line 200
    .end local v1    # "message":Ljava/lang/String;
    :cond_1
    move-object v1, v0

    check-cast v1, Landroidx/work/multiprocess/RemoteListenableWorker;

    .line 201
    .local v1, "remoteListenableWorker":Landroidx/work/multiprocess/RemoteListenableWorker;
    invoke-virtual {v1}, Landroidx/work/multiprocess/RemoteListenableWorker;->startRemoteWork()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroidx/work/impl/utils/futures/SettableFuture;->setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    nop

    .end local v0    # "worker":Landroidx/work/ListenableWorker;
    .end local v1    # "remoteListenableWorker":Landroidx/work/multiprocess/RemoteListenableWorker;
    goto :goto_0

    .line 202
    :catchall_0
    move-exception v0

    .line 203
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-virtual {p3, v0}, Landroidx/work/impl/utils/futures/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 205
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public startWork([BLandroidx/work/multiprocess/IWorkManagerImplCallback;)V
    .locals 9
    .param p1, "request"    # [B
    .param p2, "callback"    # Landroidx/work/multiprocess/IWorkManagerImplCallback;

    .line 88
    :try_start_0
    sget-object v0, Landroidx/work/multiprocess/parcelable/ParcelableRemoteWorkRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 89
    invoke-static {p1, v0}, Landroidx/work/multiprocess/parcelable/ParcelConverters;->unmarshall([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/multiprocess/parcelable/ParcelableRemoteWorkRequest;

    .line 91
    .local v0, "parcelableRemoteWorkRequest":Landroidx/work/multiprocess/parcelable/ParcelableRemoteWorkRequest;
    nop

    .line 92
    invoke-virtual {v0}, Landroidx/work/multiprocess/parcelable/ParcelableRemoteWorkRequest;->getParcelableWorkerParameters()Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;

    move-result-object v1

    .line 94
    .local v1, "parcelableWorkerParameters":Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;
    iget-object v2, p0, Landroidx/work/multiprocess/ListenableWorkerImpl;->mConfiguration:Landroidx/work/Configuration;

    iget-object v3, p0, Landroidx/work/multiprocess/ListenableWorkerImpl;->mTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    iget-object v4, p0, Landroidx/work/multiprocess/ListenableWorkerImpl;->mProgressUpdater:Landroidx/work/ProgressUpdater;

    iget-object v5, p0, Landroidx/work/multiprocess/ListenableWorkerImpl;->mForegroundUpdater:Landroidx/work/ForegroundUpdater;

    .line 95
    invoke-virtual {v1, v2, v3, v4, v5}, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;->toWorkerParameters(Landroidx/work/Configuration;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;Landroidx/work/ProgressUpdater;Landroidx/work/ForegroundUpdater;)Landroidx/work/WorkerParameters;

    move-result-object v2

    .line 102
    .local v2, "workerParameters":Landroidx/work/WorkerParameters;
    invoke-virtual {v2}, Landroidx/work/WorkerParameters;->getId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 103
    .local v3, "id":Ljava/lang/String;
    invoke-virtual {v0}, Landroidx/work/multiprocess/parcelable/ParcelableRemoteWorkRequest;->getWorkerClassName()Ljava/lang/String;

    move-result-object v4

    .line 105
    .local v4, "workerClassName":Ljava/lang/String;
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v5

    sget-object v6, Landroidx/work/multiprocess/ListenableWorkerImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Executing work request ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    nop

    .line 109
    invoke-direct {p0, v3, v4, v2}, Landroidx/work/multiprocess/ListenableWorkerImpl;->executeWorkRequest(Ljava/lang/String;Ljava/lang/String;Landroidx/work/WorkerParameters;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v5

    .line 111
    .local v5, "futureResult":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/work/ListenableWorker$Result;>;"
    new-instance v6, Landroidx/work/multiprocess/ListenableWorkerImpl$1;

    invoke-direct {v6, p0, v5, p2, v3}, Landroidx/work/multiprocess/ListenableWorkerImpl$1;-><init>(Landroidx/work/multiprocess/ListenableWorkerImpl;Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/work/multiprocess/IWorkManagerImplCallback;Ljava/lang/String;)V

    iget-object v7, p0, Landroidx/work/multiprocess/ListenableWorkerImpl;->mTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 130
    invoke-interface {v7}, Landroidx/work/impl/utils/taskexecutor/TaskExecutor;->getSerialTaskExecutor()Landroidx/work/impl/utils/taskexecutor/SerialExecutor;

    move-result-object v7

    .line 111
    invoke-interface {v5, v6, v7}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    .end local v0    # "parcelableRemoteWorkRequest":Landroidx/work/multiprocess/parcelable/ParcelableRemoteWorkRequest;
    .end local v1    # "parcelableWorkerParameters":Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;
    .end local v2    # "workerParameters":Landroidx/work/WorkerParameters;
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "workerClassName":Ljava/lang/String;
    .end local v5    # "futureResult":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/work/ListenableWorker$Result;>;"
    goto :goto_0

    .line 131
    :catchall_0
    move-exception v0

    .line 132
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-static {p2, v0}, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;->reportFailure(Landroidx/work/multiprocess/IWorkManagerImplCallback;Ljava/lang/Throwable;)V

    .line 134
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
