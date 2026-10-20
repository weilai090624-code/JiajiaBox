.class public abstract Landroidx/work/multiprocess/RemoteListenableWorker;
.super Landroidx/work/ListenableWorker;
.source "RemoteListenableWorker.java"


# static fields
.field public static final ARGUMENT_CLASS_NAME:Ljava/lang/String; = "androidx.work.impl.workers.RemoteListenableWorker.ARGUMENT_CLASS_NAME"

.field public static final ARGUMENT_PACKAGE_NAME:Ljava/lang/String; = "androidx.work.impl.workers.RemoteListenableWorker.ARGUMENT_PACKAGE_NAME"

.field static final TAG:Ljava/lang/String;


# instance fields
.field final mClient:Landroidx/work/multiprocess/ListenableWorkerImplClient;

.field private mComponentName:Landroid/content/ComponentName;

.field mWorkerClassName:Ljava/lang/String;

.field final mWorkerParameters:Landroidx/work/WorkerParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    const-string v0, "RemoteListenableWorker"

    invoke-static {v0}, Landroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/multiprocess/RemoteListenableWorker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 2
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "workerParams"    # Landroidx/work/WorkerParameters;

    .line 93
    invoke-direct {p0, p1, p2}, Landroidx/work/ListenableWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 94
    iput-object p2, p0, Landroidx/work/multiprocess/RemoteListenableWorker;->mWorkerParameters:Landroidx/work/WorkerParameters;

    .line 95
    new-instance v0, Landroidx/work/multiprocess/ListenableWorkerImplClient;

    invoke-virtual {p0}, Landroidx/work/multiprocess/RemoteListenableWorker;->getBackgroundExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroidx/work/multiprocess/ListenableWorkerImplClient;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Landroidx/work/multiprocess/RemoteListenableWorker;->mClient:Landroidx/work/multiprocess/ListenableWorkerImplClient;

    .line 96
    return-void
.end method


# virtual methods
.method public onStopped()V
    .locals 3

    .line 186
    invoke-super {p0}, Landroidx/work/ListenableWorker;->onStopped()V

    .line 188
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteListenableWorker;->mComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteListenableWorker;->mClient:Landroidx/work/multiprocess/ListenableWorkerImplClient;

    iget-object v1, p0, Landroidx/work/multiprocess/RemoteListenableWorker;->mComponentName:Landroid/content/ComponentName;

    new-instance v2, Landroidx/work/multiprocess/RemoteListenableWorker$3;

    invoke-direct {v2, p0}, Landroidx/work/multiprocess/RemoteListenableWorker$3;-><init>(Landroidx/work/multiprocess/RemoteListenableWorker;)V

    invoke-virtual {v0, v1, v2}, Landroidx/work/multiprocess/ListenableWorkerImplClient;->execute(Landroid/content/ComponentName;Landroidx/work/multiprocess/RemoteDispatcher;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 203
    :cond_0
    return-void
.end method

.method public abstract startRemoteWork()Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/work/ListenableWorker$Result;",
            ">;"
        }
    .end annotation
.end method

.method public final startWork()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/work/ListenableWorker$Result;",
            ">;"
        }
    .end annotation

    .line 101
    invoke-static {}, Landroidx/work/impl/utils/futures/SettableFuture;->create()Landroidx/work/impl/utils/futures/SettableFuture;

    move-result-object v0

    .line 102
    .local v0, "future":Landroidx/work/impl/utils/futures/SettableFuture;, "Landroidx/work/impl/utils/futures/SettableFuture<Landroidx/work/ListenableWorker$Result;>;"
    invoke-virtual {p0}, Landroidx/work/multiprocess/RemoteListenableWorker;->getInputData()Landroidx/work/Data;

    move-result-object v1

    .line 103
    .local v1, "data":Landroidx/work/Data;
    iget-object v2, p0, Landroidx/work/multiprocess/RemoteListenableWorker;->mWorkerParameters:Landroidx/work/WorkerParameters;

    invoke-virtual {v2}, Landroidx/work/WorkerParameters;->getId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, "id":Ljava/lang/String;
    const-string v3, "androidx.work.impl.workers.RemoteListenableWorker.ARGUMENT_PACKAGE_NAME"

    invoke-virtual {v1, v3}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, "packageName":Ljava/lang/String;
    const-string v4, "androidx.work.impl.workers.RemoteListenableWorker.ARGUMENT_CLASS_NAME"

    invoke-virtual {v1, v4}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 107
    .local v4, "serviceClassName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 108
    const-string v5, "Need to specify a package name for the Remote Service."

    .line 109
    .local v5, "message":Ljava/lang/String;
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v6

    sget-object v7, Landroidx/work/multiprocess/RemoteListenableWorker;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Landroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroidx/work/impl/utils/futures/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 111
    return-object v0

    .line 114
    .end local v5    # "message":Ljava/lang/String;
    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 115
    const-string v5, "Need to specify a class name for the Remote Service."

    .line 116
    .restart local v5    # "message":Ljava/lang/String;
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v6

    sget-object v7, Landroidx/work/multiprocess/RemoteListenableWorker;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Landroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroidx/work/impl/utils/futures/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 118
    return-object v0

    .line 121
    .end local v5    # "message":Ljava/lang/String;
    :cond_1
    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Landroidx/work/multiprocess/RemoteListenableWorker;->mComponentName:Landroid/content/ComponentName;

    .line 124
    invoke-virtual {p0}, Landroidx/work/multiprocess/RemoteListenableWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroidx/work/impl/WorkManagerImpl;->getInstance(Landroid/content/Context;)Landroidx/work/impl/WorkManagerImpl;

    move-result-object v5

    .line 126
    .local v5, "workManager":Landroidx/work/impl/WorkManagerImpl;
    iget-object v6, p0, Landroidx/work/multiprocess/RemoteListenableWorker;->mClient:Landroidx/work/multiprocess/ListenableWorkerImplClient;

    iget-object v7, p0, Landroidx/work/multiprocess/RemoteListenableWorker;->mComponentName:Landroid/content/ComponentName;

    new-instance v8, Landroidx/work/multiprocess/RemoteListenableWorker$1;

    invoke-direct {v8, p0, v5, v2}, Landroidx/work/multiprocess/RemoteListenableWorker$1;-><init>(Landroidx/work/multiprocess/RemoteListenableWorker;Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroidx/work/multiprocess/ListenableWorkerImplClient;->execute(Landroid/content/ComponentName;Landroidx/work/multiprocess/RemoteDispatcher;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v6

    .line 148
    .local v6, "result":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<[B>;"
    new-instance v7, Landroidx/work/multiprocess/RemoteListenableWorker$2;

    invoke-direct {v7, p0}, Landroidx/work/multiprocess/RemoteListenableWorker$2;-><init>(Landroidx/work/multiprocess/RemoteListenableWorker;)V

    .line 157
    invoke-virtual {p0}, Landroidx/work/multiprocess/RemoteListenableWorker;->getBackgroundExecutor()Ljava/util/concurrent/Executor;

    move-result-object v8

    .line 148
    invoke-static {v6, v7, v8}, Landroidx/work/multiprocess/RemoteClientUtils;->map(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/arch/core/util/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v7

    return-object v7
.end method
