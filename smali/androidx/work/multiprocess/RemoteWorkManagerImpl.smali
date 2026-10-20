.class public Landroidx/work/multiprocess/RemoteWorkManagerImpl;
.super Landroidx/work/multiprocess/IWorkManagerImpl$Stub;
.source "RemoteWorkManagerImpl.java"


# static fields
.field static sEMPTY:[B


# instance fields
.field private final mWorkManager:Landroidx/work/impl/WorkManagerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->sEMPTY:[B

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 66
    invoke-direct {p0}, Landroidx/work/multiprocess/IWorkManagerImpl$Stub;-><init>()V

    .line 67
    invoke-static {p1}, Landroidx/work/impl/WorkManagerImpl;->getInstance(Landroid/content/Context;)Landroidx/work/impl/WorkManagerImpl;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    .line 68
    return-void
.end method


# virtual methods
.method public cancelAllWork(Landroidx/work/multiprocess/IWorkManagerImplCallback;)V
    .locals 4
    .param p1, "callback"    # Landroidx/work/multiprocess/IWorkManagerImplCallback;

    .line 189
    :try_start_0
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    invoke-virtual {v0}, Landroidx/work/impl/WorkManagerImpl;->cancelAllWork()Landroidx/work/Operation;

    move-result-object v0

    .line 190
    .local v0, "operation":Landroidx/work/Operation;
    iget-object v1, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    invoke-virtual {v1}, Landroidx/work/impl/WorkManagerImpl;->getWorkTaskExecutor()Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    move-result-object v1

    invoke-interface {v1}, Landroidx/work/impl/utils/taskexecutor/TaskExecutor;->getSerialTaskExecutor()Landroidx/work/impl/utils/taskexecutor/SerialExecutor;

    move-result-object v1

    .line 191
    .local v1, "executor":Ljava/util/concurrent/Executor;
    new-instance v2, Landroidx/work/multiprocess/RemoteWorkManagerImpl$6;

    .line 193
    invoke-interface {v0}, Landroidx/work/Operation;->getResult()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    invoke-direct {v2, p0, v1, p1, v3}, Landroidx/work/multiprocess/RemoteWorkManagerImpl$6;-><init>(Landroidx/work/multiprocess/RemoteWorkManagerImpl;Ljava/util/concurrent/Executor;Landroidx/work/multiprocess/IWorkManagerImplCallback;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 200
    .local v2, "listenableCallback":Landroidx/work/multiprocess/ListenableCallback;, "Landroidx/work/multiprocess/ListenableCallback<Landroidx/work/Operation$State$SUCCESS;>;"
    invoke-virtual {v2}, Landroidx/work/multiprocess/ListenableCallback;->dispatchCallbackSafely()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    .end local v0    # "operation":Landroidx/work/Operation;
    .end local v1    # "executor":Ljava/util/concurrent/Executor;
    .end local v2    # "listenableCallback":Landroidx/work/multiprocess/ListenableCallback;, "Landroidx/work/multiprocess/ListenableCallback<Landroidx/work/Operation$State$SUCCESS;>;"
    goto :goto_0

    .line 201
    :catchall_0
    move-exception v0

    .line 202
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-static {p1, v0}, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;->reportFailure(Landroidx/work/multiprocess/IWorkManagerImplCallback;Ljava/lang/Throwable;)V

    .line 204
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public cancelAllWorkByTag(Ljava/lang/String;Landroidx/work/multiprocess/IWorkManagerImplCallback;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "callback"    # Landroidx/work/multiprocess/IWorkManagerImplCallback;

    .line 147
    :try_start_0
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    invoke-virtual {v0, p1}, Landroidx/work/impl/WorkManagerImpl;->cancelAllWorkByTag(Ljava/lang/String;)Landroidx/work/Operation;

    move-result-object v0

    .line 148
    .local v0, "operation":Landroidx/work/Operation;
    iget-object v1, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    invoke-virtual {v1}, Landroidx/work/impl/WorkManagerImpl;->getWorkTaskExecutor()Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    move-result-object v1

    invoke-interface {v1}, Landroidx/work/impl/utils/taskexecutor/TaskExecutor;->getSerialTaskExecutor()Landroidx/work/impl/utils/taskexecutor/SerialExecutor;

    move-result-object v1

    .line 149
    .local v1, "executor":Ljava/util/concurrent/Executor;
    new-instance v2, Landroidx/work/multiprocess/RemoteWorkManagerImpl$4;

    .line 151
    invoke-interface {v0}, Landroidx/work/Operation;->getResult()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    invoke-direct {v2, p0, v1, p2, v3}, Landroidx/work/multiprocess/RemoteWorkManagerImpl$4;-><init>(Landroidx/work/multiprocess/RemoteWorkManagerImpl;Ljava/util/concurrent/Executor;Landroidx/work/multiprocess/IWorkManagerImplCallback;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 158
    .local v2, "listenableCallback":Landroidx/work/multiprocess/ListenableCallback;, "Landroidx/work/multiprocess/ListenableCallback<Landroidx/work/Operation$State$SUCCESS;>;"
    invoke-virtual {v2}, Landroidx/work/multiprocess/ListenableCallback;->dispatchCallbackSafely()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    .end local v0    # "operation":Landroidx/work/Operation;
    .end local v1    # "executor":Ljava/util/concurrent/Executor;
    .end local v2    # "listenableCallback":Landroidx/work/multiprocess/ListenableCallback;, "Landroidx/work/multiprocess/ListenableCallback<Landroidx/work/Operation$State$SUCCESS;>;"
    goto :goto_0

    .line 159
    :catchall_0
    move-exception v0

    .line 160
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-static {p2, v0}, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;->reportFailure(Landroidx/work/multiprocess/IWorkManagerImplCallback;Ljava/lang/Throwable;)V

    .line 162
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public cancelUniqueWork(Ljava/lang/String;Landroidx/work/multiprocess/IWorkManagerImplCallback;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "callback"    # Landroidx/work/multiprocess/IWorkManagerImplCallback;

    .line 169
    :try_start_0
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    invoke-virtual {v0, p1}, Landroidx/work/impl/WorkManagerImpl;->cancelUniqueWork(Ljava/lang/String;)Landroidx/work/Operation;

    move-result-object v0

    .line 170
    .local v0, "operation":Landroidx/work/Operation;
    iget-object v1, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    invoke-virtual {v1}, Landroidx/work/impl/WorkManagerImpl;->getWorkTaskExecutor()Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    move-result-object v1

    invoke-interface {v1}, Landroidx/work/impl/utils/taskexecutor/TaskExecutor;->getSerialTaskExecutor()Landroidx/work/impl/utils/taskexecutor/SerialExecutor;

    move-result-object v1

    .line 171
    .local v1, "executor":Ljava/util/concurrent/Executor;
    new-instance v2, Landroidx/work/multiprocess/RemoteWorkManagerImpl$5;

    .line 173
    invoke-interface {v0}, Landroidx/work/Operation;->getResult()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    invoke-direct {v2, p0, v1, p2, v3}, Landroidx/work/multiprocess/RemoteWorkManagerImpl$5;-><init>(Landroidx/work/multiprocess/RemoteWorkManagerImpl;Ljava/util/concurrent/Executor;Landroidx/work/multiprocess/IWorkManagerImplCallback;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 180
    .local v2, "listenableCallback":Landroidx/work/multiprocess/ListenableCallback;, "Landroidx/work/multiprocess/ListenableCallback<Landroidx/work/Operation$State$SUCCESS;>;"
    invoke-virtual {v2}, Landroidx/work/multiprocess/ListenableCallback;->dispatchCallbackSafely()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    .end local v0    # "operation":Landroidx/work/Operation;
    .end local v1    # "executor":Ljava/util/concurrent/Executor;
    .end local v2    # "listenableCallback":Landroidx/work/multiprocess/ListenableCallback;, "Landroidx/work/multiprocess/ListenableCallback<Landroidx/work/Operation$State$SUCCESS;>;"
    goto :goto_0

    .line 181
    :catchall_0
    move-exception v0

    .line 182
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-static {p2, v0}, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;->reportFailure(Landroidx/work/multiprocess/IWorkManagerImplCallback;Ljava/lang/Throwable;)V

    .line 184
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public cancelWorkById(Ljava/lang/String;Landroidx/work/multiprocess/IWorkManagerImplCallback;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "callback"    # Landroidx/work/multiprocess/IWorkManagerImplCallback;

    .line 125
    :try_start_0
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/work/impl/WorkManagerImpl;->cancelWorkById(Ljava/util/UUID;)Landroidx/work/Operation;

    move-result-object v0

    .line 126
    .local v0, "operation":Landroidx/work/Operation;
    iget-object v1, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    invoke-virtual {v1}, Landroidx/work/impl/WorkManagerImpl;->getWorkTaskExecutor()Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    move-result-object v1

    invoke-interface {v1}, Landroidx/work/impl/utils/taskexecutor/TaskExecutor;->getSerialTaskExecutor()Landroidx/work/impl/utils/taskexecutor/SerialExecutor;

    move-result-object v1

    .line 127
    .local v1, "executor":Ljava/util/concurrent/Executor;
    new-instance v2, Landroidx/work/multiprocess/RemoteWorkManagerImpl$3;

    .line 129
    invoke-interface {v0}, Landroidx/work/Operation;->getResult()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    invoke-direct {v2, p0, v1, p2, v3}, Landroidx/work/multiprocess/RemoteWorkManagerImpl$3;-><init>(Landroidx/work/multiprocess/RemoteWorkManagerImpl;Ljava/util/concurrent/Executor;Landroidx/work/multiprocess/IWorkManagerImplCallback;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 136
    .local v2, "listenableCallback":Landroidx/work/multiprocess/ListenableCallback;, "Landroidx/work/multiprocess/ListenableCallback<Landroidx/work/Operation$State$SUCCESS;>;"
    invoke-virtual {v2}, Landroidx/work/multiprocess/ListenableCallback;->dispatchCallbackSafely()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    .end local v0    # "operation":Landroidx/work/Operation;
    .end local v1    # "executor":Ljava/util/concurrent/Executor;
    .end local v2    # "listenableCallback":Landroidx/work/multiprocess/ListenableCallback;, "Landroidx/work/multiprocess/ListenableCallback<Landroidx/work/Operation$State$SUCCESS;>;"
    goto :goto_0

    .line 137
    :catchall_0
    move-exception v0

    .line 138
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-static {p2, v0}, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;->reportFailure(Landroidx/work/multiprocess/IWorkManagerImplCallback;Ljava/lang/Throwable;)V

    .line 140
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public enqueueContinuation([BLandroidx/work/multiprocess/IWorkManagerImplCallback;)V
    .locals 6
    .param p1, "request"    # [B
    .param p2, "callback"    # Landroidx/work/multiprocess/IWorkManagerImplCallback;

    .line 101
    :try_start_0
    sget-object v0, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 102
    invoke-static {p1, v0}, Landroidx/work/multiprocess/parcelable/ParcelConverters;->unmarshall([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;

    .line 103
    .local v0, "parcelledRequest":Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;
    iget-object v1, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    .line 104
    invoke-virtual {v0, v1}, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;->toWorkContinuationImpl(Landroidx/work/impl/WorkManagerImpl;)Landroidx/work/impl/WorkContinuationImpl;

    move-result-object v1

    .line 105
    .local v1, "continuation":Landroidx/work/impl/WorkContinuationImpl;
    invoke-virtual {v1}, Landroidx/work/impl/WorkContinuationImpl;->enqueue()Landroidx/work/Operation;

    move-result-object v2

    .line 106
    .local v2, "operation":Landroidx/work/Operation;
    iget-object v3, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    invoke-virtual {v3}, Landroidx/work/impl/WorkManagerImpl;->getWorkTaskExecutor()Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    move-result-object v3

    invoke-interface {v3}, Landroidx/work/impl/utils/taskexecutor/TaskExecutor;->getSerialTaskExecutor()Landroidx/work/impl/utils/taskexecutor/SerialExecutor;

    move-result-object v3

    .line 107
    .local v3, "executor":Ljava/util/concurrent/Executor;
    new-instance v4, Landroidx/work/multiprocess/RemoteWorkManagerImpl$2;

    .line 109
    invoke-interface {v2}, Landroidx/work/Operation;->getResult()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v5

    invoke-direct {v4, p0, v3, p2, v5}, Landroidx/work/multiprocess/RemoteWorkManagerImpl$2;-><init>(Landroidx/work/multiprocess/RemoteWorkManagerImpl;Ljava/util/concurrent/Executor;Landroidx/work/multiprocess/IWorkManagerImplCallback;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 116
    .local v4, "listenableCallback":Landroidx/work/multiprocess/ListenableCallback;, "Landroidx/work/multiprocess/ListenableCallback<Landroidx/work/Operation$State$SUCCESS;>;"
    invoke-virtual {v4}, Landroidx/work/multiprocess/ListenableCallback;->dispatchCallbackSafely()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    .end local v0    # "parcelledRequest":Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;
    .end local v1    # "continuation":Landroidx/work/impl/WorkContinuationImpl;
    .end local v2    # "operation":Landroidx/work/Operation;
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    .end local v4    # "listenableCallback":Landroidx/work/multiprocess/ListenableCallback;, "Landroidx/work/multiprocess/ListenableCallback<Landroidx/work/Operation$State$SUCCESS;>;"
    goto :goto_0

    .line 117
    :catchall_0
    move-exception v0

    .line 118
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-static {p2, v0}, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;->reportFailure(Landroidx/work/multiprocess/IWorkManagerImplCallback;Ljava/lang/Throwable;)V

    .line 120
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public enqueueWorkRequests([BLandroidx/work/multiprocess/IWorkManagerImplCallback;)V
    .locals 6
    .param p1, "request"    # [B
    .param p2, "callback"    # Landroidx/work/multiprocess/IWorkManagerImplCallback;

    .line 76
    :try_start_0
    sget-object v0, Landroidx/work/multiprocess/parcelable/ParcelableWorkRequests;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 77
    invoke-static {p1, v0}, Landroidx/work/multiprocess/parcelable/ParcelConverters;->unmarshall([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/multiprocess/parcelable/ParcelableWorkRequests;

    .line 78
    .local v0, "parcelledRequests":Landroidx/work/multiprocess/parcelable/ParcelableWorkRequests;
    invoke-virtual {v0}, Landroidx/work/multiprocess/parcelable/ParcelableWorkRequests;->getRequests()Ljava/util/List;

    move-result-object v1

    .line 79
    .local v1, "workRequests":Ljava/util/List;, "Ljava/util/List<Landroidx/work/WorkRequest;>;"
    iget-object v2, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    invoke-virtual {v2, v1}, Landroidx/work/impl/WorkManagerImpl;->enqueue(Ljava/util/List;)Landroidx/work/Operation;

    move-result-object v2

    .line 80
    .local v2, "operation":Landroidx/work/Operation;
    iget-object v3, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    invoke-virtual {v3}, Landroidx/work/impl/WorkManagerImpl;->getWorkTaskExecutor()Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    move-result-object v3

    invoke-interface {v3}, Landroidx/work/impl/utils/taskexecutor/TaskExecutor;->getSerialTaskExecutor()Landroidx/work/impl/utils/taskexecutor/SerialExecutor;

    move-result-object v3

    .line 81
    .local v3, "executor":Ljava/util/concurrent/Executor;
    new-instance v4, Landroidx/work/multiprocess/RemoteWorkManagerImpl$1;

    .line 83
    invoke-interface {v2}, Landroidx/work/Operation;->getResult()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v5

    invoke-direct {v4, p0, v3, p2, v5}, Landroidx/work/multiprocess/RemoteWorkManagerImpl$1;-><init>(Landroidx/work/multiprocess/RemoteWorkManagerImpl;Ljava/util/concurrent/Executor;Landroidx/work/multiprocess/IWorkManagerImplCallback;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 90
    .local v4, "listenableCallback":Landroidx/work/multiprocess/ListenableCallback;, "Landroidx/work/multiprocess/ListenableCallback<Landroidx/work/Operation$State$SUCCESS;>;"
    invoke-virtual {v4}, Landroidx/work/multiprocess/ListenableCallback;->dispatchCallbackSafely()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    .end local v0    # "parcelledRequests":Landroidx/work/multiprocess/parcelable/ParcelableWorkRequests;
    .end local v1    # "workRequests":Ljava/util/List;, "Ljava/util/List<Landroidx/work/WorkRequest;>;"
    .end local v2    # "operation":Landroidx/work/Operation;
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    .end local v4    # "listenableCallback":Landroidx/work/multiprocess/ListenableCallback;, "Landroidx/work/multiprocess/ListenableCallback<Landroidx/work/Operation$State$SUCCESS;>;"
    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    .line 92
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-static {p2, v0}, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;->reportFailure(Landroidx/work/multiprocess/IWorkManagerImplCallback;Ljava/lang/Throwable;)V

    .line 94
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public queryWorkInfo([BLandroidx/work/multiprocess/IWorkManagerImplCallback;)V
    .locals 4
    .param p1, "request"    # [B
    .param p2, "callback"    # Landroidx/work/multiprocess/IWorkManagerImplCallback;

    .line 209
    :try_start_0
    sget-object v0, Landroidx/work/multiprocess/parcelable/ParcelableWorkQuery;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 210
    invoke-static {p1, v0}, Landroidx/work/multiprocess/parcelable/ParcelConverters;->unmarshall([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/multiprocess/parcelable/ParcelableWorkQuery;

    .line 211
    .local v0, "parcelled":Landroidx/work/multiprocess/parcelable/ParcelableWorkQuery;
    iget-object v1, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    invoke-virtual {v1}, Landroidx/work/impl/WorkManagerImpl;->getWorkTaskExecutor()Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    move-result-object v1

    invoke-interface {v1}, Landroidx/work/impl/utils/taskexecutor/TaskExecutor;->getSerialTaskExecutor()Landroidx/work/impl/utils/taskexecutor/SerialExecutor;

    move-result-object v1

    .line 212
    .local v1, "executor":Ljava/util/concurrent/Executor;
    iget-object v2, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    .line 213
    invoke-virtual {v0}, Landroidx/work/multiprocess/parcelable/ParcelableWorkQuery;->getWorkQuery()Landroidx/work/WorkQuery;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/work/impl/WorkManagerImpl;->getWorkInfos(Landroidx/work/WorkQuery;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    .line 214
    .local v2, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Ljava/util/List<Landroidx/work/WorkInfo;>;>;"
    new-instance v3, Landroidx/work/multiprocess/RemoteWorkManagerImpl$7;

    invoke-direct {v3, p0, v1, p2, v2}, Landroidx/work/multiprocess/RemoteWorkManagerImpl$7;-><init>(Landroidx/work/multiprocess/RemoteWorkManagerImpl;Ljava/util/concurrent/Executor;Landroidx/work/multiprocess/IWorkManagerImplCallback;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 223
    .local v3, "listenableCallback":Landroidx/work/multiprocess/ListenableCallback;, "Landroidx/work/multiprocess/ListenableCallback<Ljava/util/List<Landroidx/work/WorkInfo;>;>;"
    invoke-virtual {v3}, Landroidx/work/multiprocess/ListenableCallback;->dispatchCallbackSafely()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    .end local v0    # "parcelled":Landroidx/work/multiprocess/parcelable/ParcelableWorkQuery;
    .end local v1    # "executor":Ljava/util/concurrent/Executor;
    .end local v2    # "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Ljava/util/List<Landroidx/work/WorkInfo;>;>;"
    .end local v3    # "listenableCallback":Landroidx/work/multiprocess/ListenableCallback;, "Landroidx/work/multiprocess/ListenableCallback<Ljava/util/List<Landroidx/work/WorkInfo;>;>;"
    goto :goto_0

    .line 224
    :catchall_0
    move-exception v0

    .line 225
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-static {p2, v0}, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;->reportFailure(Landroidx/work/multiprocess/IWorkManagerImplCallback;Ljava/lang/Throwable;)V

    .line 227
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public setForegroundAsync([BLandroidx/work/multiprocess/IWorkManagerImplCallback;)V
    .locals 7
    .param p1, "request"    # [B
    .param p2, "callback"    # Landroidx/work/multiprocess/IWorkManagerImplCallback;

    .line 264
    :try_start_0
    sget-object v0, Landroidx/work/multiprocess/parcelable/ParcelableForegroundRequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 265
    invoke-static {p1, v0}, Landroidx/work/multiprocess/parcelable/ParcelConverters;->unmarshall([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/multiprocess/parcelable/ParcelableForegroundRequestInfo;

    .line 266
    .local v0, "parcelled":Landroidx/work/multiprocess/parcelable/ParcelableForegroundRequestInfo;
    iget-object v1, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    invoke-virtual {v1}, Landroidx/work/impl/WorkManagerImpl;->getWorkTaskExecutor()Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    move-result-object v1

    .line 267
    .local v1, "taskExecutor":Landroidx/work/impl/utils/taskexecutor/TaskExecutor;
    invoke-interface {v1}, Landroidx/work/impl/utils/taskexecutor/TaskExecutor;->getSerialTaskExecutor()Landroidx/work/impl/utils/taskexecutor/SerialExecutor;

    move-result-object v2

    .line 268
    .local v2, "executor":Ljava/util/concurrent/Executor;
    new-instance v3, Landroidx/work/impl/utils/WorkForegroundUpdater;

    iget-object v4, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    .line 269
    invoke-virtual {v4}, Landroidx/work/impl/WorkManagerImpl;->getWorkDatabase()Landroidx/work/impl/WorkDatabase;

    move-result-object v4

    iget-object v5, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    .line 270
    invoke-virtual {v5}, Landroidx/work/impl/WorkManagerImpl;->getProcessor()Landroidx/work/impl/Processor;

    move-result-object v5

    invoke-direct {v3, v4, v5, v1}, Landroidx/work/impl/utils/WorkForegroundUpdater;-><init>(Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/foreground/ForegroundProcessor;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;)V

    .line 273
    .local v3, "foregroundUpdater":Landroidx/work/impl/utils/WorkForegroundUpdater;
    iget-object v4, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    .line 274
    invoke-virtual {v4}, Landroidx/work/impl/WorkManagerImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 275
    invoke-virtual {v0}, Landroidx/work/multiprocess/parcelable/ParcelableForegroundRequestInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v5

    .line 276
    invoke-virtual {v0}, Landroidx/work/multiprocess/parcelable/ParcelableForegroundRequestInfo;->getForegroundInfo()Landroidx/work/ForegroundInfo;

    move-result-object v6

    .line 273
    invoke-virtual {v3, v4, v5, v6}, Landroidx/work/impl/utils/WorkForegroundUpdater;->setForegroundAsync(Landroid/content/Context;Ljava/util/UUID;Landroidx/work/ForegroundInfo;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v4

    .line 278
    .local v4, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Ljava/lang/Void;>;"
    new-instance v5, Landroidx/work/multiprocess/RemoteWorkManagerImpl$9;

    invoke-direct {v5, p0, v2, p2, v4}, Landroidx/work/multiprocess/RemoteWorkManagerImpl$9;-><init>(Landroidx/work/multiprocess/RemoteWorkManagerImpl;Ljava/util/concurrent/Executor;Landroidx/work/multiprocess/IWorkManagerImplCallback;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 286
    .local v5, "listenableCallback":Landroidx/work/multiprocess/ListenableCallback;, "Landroidx/work/multiprocess/ListenableCallback<Ljava/lang/Void;>;"
    invoke-virtual {v5}, Landroidx/work/multiprocess/ListenableCallback;->dispatchCallbackSafely()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    .end local v0    # "parcelled":Landroidx/work/multiprocess/parcelable/ParcelableForegroundRequestInfo;
    .end local v1    # "taskExecutor":Landroidx/work/impl/utils/taskexecutor/TaskExecutor;
    .end local v2    # "executor":Ljava/util/concurrent/Executor;
    .end local v3    # "foregroundUpdater":Landroidx/work/impl/utils/WorkForegroundUpdater;
    .end local v4    # "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Ljava/lang/Void;>;"
    .end local v5    # "listenableCallback":Landroidx/work/multiprocess/ListenableCallback;, "Landroidx/work/multiprocess/ListenableCallback<Ljava/lang/Void;>;"
    goto :goto_0

    .line 287
    :catchall_0
    move-exception v0

    .line 288
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-static {p2, v0}, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;->reportFailure(Landroidx/work/multiprocess/IWorkManagerImplCallback;Ljava/lang/Throwable;)V

    .line 290
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public setProgress([BLandroidx/work/multiprocess/IWorkManagerImplCallback;)V
    .locals 8
    .param p1, "request"    # [B
    .param p2, "callback"    # Landroidx/work/multiprocess/IWorkManagerImplCallback;

    .line 232
    :try_start_0
    sget-object v0, Landroidx/work/multiprocess/parcelable/ParcelableUpdateRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 233
    invoke-static {p1, v0}, Landroidx/work/multiprocess/parcelable/ParcelConverters;->unmarshall([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/multiprocess/parcelable/ParcelableUpdateRequest;

    .line 234
    .local v0, "parcelled":Landroidx/work/multiprocess/parcelable/ParcelableUpdateRequest;
    iget-object v1, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    invoke-virtual {v1}, Landroidx/work/impl/WorkManagerImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 235
    .local v1, "context":Landroid/content/Context;
    iget-object v2, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    invoke-virtual {v2}, Landroidx/work/impl/WorkManagerImpl;->getWorkTaskExecutor()Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    move-result-object v2

    .line 236
    .local v2, "taskExecutor":Landroidx/work/impl/utils/taskexecutor/TaskExecutor;
    invoke-interface {v2}, Landroidx/work/impl/utils/taskexecutor/TaskExecutor;->getSerialTaskExecutor()Landroidx/work/impl/utils/taskexecutor/SerialExecutor;

    move-result-object v3

    .line 237
    .local v3, "executor":Ljava/util/concurrent/Executor;
    iget-object v4, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    invoke-virtual {v4}, Landroidx/work/impl/WorkManagerImpl;->getWorkDatabase()Landroidx/work/impl/WorkDatabase;

    move-result-object v4

    .line 238
    .local v4, "database":Landroidx/work/impl/WorkDatabase;
    new-instance v5, Landroidx/work/impl/utils/WorkProgressUpdater;

    invoke-direct {v5, v4, v2}, Landroidx/work/impl/utils/WorkProgressUpdater;-><init>(Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;)V

    .line 240
    .local v5, "progressUpdater":Landroidx/work/impl/utils/WorkProgressUpdater;
    nop

    .line 242
    invoke-virtual {v0}, Landroidx/work/multiprocess/parcelable/ParcelableUpdateRequest;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v6

    .line 243
    invoke-virtual {v0}, Landroidx/work/multiprocess/parcelable/ParcelableUpdateRequest;->getData()Landroidx/work/Data;

    move-result-object v7

    .line 240
    invoke-virtual {v5, v1, v6, v7}, Landroidx/work/impl/utils/WorkProgressUpdater;->updateProgress(Landroid/content/Context;Ljava/util/UUID;Landroidx/work/Data;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v6

    .line 245
    .local v6, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Ljava/lang/Void;>;"
    new-instance v7, Landroidx/work/multiprocess/RemoteWorkManagerImpl$8;

    invoke-direct {v7, p0, v3, p2, v6}, Landroidx/work/multiprocess/RemoteWorkManagerImpl$8;-><init>(Landroidx/work/multiprocess/RemoteWorkManagerImpl;Ljava/util/concurrent/Executor;Landroidx/work/multiprocess/IWorkManagerImplCallback;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 253
    .local v7, "listenableCallback":Landroidx/work/multiprocess/ListenableCallback;, "Landroidx/work/multiprocess/ListenableCallback<Ljava/lang/Void;>;"
    invoke-virtual {v7}, Landroidx/work/multiprocess/ListenableCallback;->dispatchCallbackSafely()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    .end local v0    # "parcelled":Landroidx/work/multiprocess/parcelable/ParcelableUpdateRequest;
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "taskExecutor":Landroidx/work/impl/utils/taskexecutor/TaskExecutor;
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    .end local v4    # "database":Landroidx/work/impl/WorkDatabase;
    .end local v5    # "progressUpdater":Landroidx/work/impl/utils/WorkProgressUpdater;
    .end local v6    # "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Ljava/lang/Void;>;"
    .end local v7    # "listenableCallback":Landroidx/work/multiprocess/ListenableCallback;, "Landroidx/work/multiprocess/ListenableCallback<Ljava/lang/Void;>;"
    goto :goto_0

    .line 254
    :catchall_0
    move-exception v0

    .line 255
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-static {p2, v0}, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;->reportFailure(Landroidx/work/multiprocess/IWorkManagerImplCallback;Ljava/lang/Throwable;)V

    .line 257
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public updateUniquePeriodicWorkRequest(Ljava/lang/String;[BLandroidx/work/multiprocess/IWorkManagerImplCallback;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "request"    # [B
    .param p3, "callback"    # Landroidx/work/multiprocess/IWorkManagerImplCallback;

    .line 296
    :try_start_0
    sget-object v0, Landroidx/work/multiprocess/parcelable/ParcelableWorkRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Landroidx/work/multiprocess/parcelable/ParcelConverters;->unmarshall([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/multiprocess/parcelable/ParcelableWorkRequest;

    .line 298
    .local v0, "parcelableWorkRequest":Landroidx/work/multiprocess/parcelable/ParcelableWorkRequest;
    invoke-virtual {v0}, Landroidx/work/multiprocess/parcelable/ParcelableWorkRequest;->getWorkRequest()Landroidx/work/WorkRequest;

    move-result-object v1

    .line 299
    .local v1, "workRequest":Landroidx/work/WorkRequest;
    iget-object v2, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    invoke-static {v2, p1, v1}, Landroidx/work/impl/WorkerUpdater;->enqueueUniquelyNamedPeriodic(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;Landroidx/work/WorkRequest;)Landroidx/work/Operation;

    move-result-object v2

    .line 301
    .local v2, "operation":Landroidx/work/Operation;
    iget-object v3, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    invoke-virtual {v3}, Landroidx/work/impl/WorkManagerImpl;->getWorkTaskExecutor()Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    move-result-object v3

    invoke-interface {v3}, Landroidx/work/impl/utils/taskexecutor/TaskExecutor;->getSerialTaskExecutor()Landroidx/work/impl/utils/taskexecutor/SerialExecutor;

    move-result-object v3

    .line 302
    .local v3, "executor":Ljava/util/concurrent/Executor;
    new-instance v4, Landroidx/work/multiprocess/RemoteWorkManagerImpl$10;

    .line 304
    invoke-interface {v2}, Landroidx/work/Operation;->getResult()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v5

    invoke-direct {v4, p0, v3, p3, v5}, Landroidx/work/multiprocess/RemoteWorkManagerImpl$10;-><init>(Landroidx/work/multiprocess/RemoteWorkManagerImpl;Ljava/util/concurrent/Executor;Landroidx/work/multiprocess/IWorkManagerImplCallback;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 311
    .local v4, "listenableCallback":Landroidx/work/multiprocess/ListenableCallback;, "Landroidx/work/multiprocess/ListenableCallback<Landroidx/work/Operation$State$SUCCESS;>;"
    invoke-virtual {v4}, Landroidx/work/multiprocess/ListenableCallback;->dispatchCallbackSafely()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    .end local v0    # "parcelableWorkRequest":Landroidx/work/multiprocess/parcelable/ParcelableWorkRequest;
    .end local v1    # "workRequest":Landroidx/work/WorkRequest;
    .end local v2    # "operation":Landroidx/work/Operation;
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    .end local v4    # "listenableCallback":Landroidx/work/multiprocess/ListenableCallback;, "Landroidx/work/multiprocess/ListenableCallback<Landroidx/work/Operation$State$SUCCESS;>;"
    goto :goto_0

    .line 312
    :catchall_0
    move-exception v0

    .line 313
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-static {p3, v0}, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;->reportFailure(Landroidx/work/multiprocess/IWorkManagerImplCallback;Ljava/lang/Throwable;)V

    .line 315
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
