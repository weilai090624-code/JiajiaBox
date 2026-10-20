.class Landroidx/work/multiprocess/ListenableWorkerImplClient$1;
.super Ljava/lang/Object;
.source "ListenableWorkerImplClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/multiprocess/ListenableWorkerImplClient;->execute(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/work/multiprocess/RemoteDispatcher;Landroidx/work/multiprocess/RemoteCallback;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/work/multiprocess/ListenableWorkerImplClient;

.field final synthetic val$callback:Landroidx/work/multiprocess/RemoteCallback;

.field final synthetic val$dispatcher:Landroidx/work/multiprocess/RemoteDispatcher;

.field final synthetic val$session:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method constructor <init>(Landroidx/work/multiprocess/ListenableWorkerImplClient;Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/work/multiprocess/RemoteCallback;Landroidx/work/multiprocess/RemoteDispatcher;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/work/multiprocess/ListenableWorkerImplClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 123
    iput-object p1, p0, Landroidx/work/multiprocess/ListenableWorkerImplClient$1;->this$0:Landroidx/work/multiprocess/ListenableWorkerImplClient;

    iput-object p2, p0, Landroidx/work/multiprocess/ListenableWorkerImplClient$1;->val$session:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p3, p0, Landroidx/work/multiprocess/ListenableWorkerImplClient$1;->val$callback:Landroidx/work/multiprocess/RemoteCallback;

    iput-object p4, p0, Landroidx/work/multiprocess/ListenableWorkerImplClient$1;->val$dispatcher:Landroidx/work/multiprocess/RemoteDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 127
    :try_start_0
    iget-object v0, p0, Landroidx/work/multiprocess/ListenableWorkerImplClient$1;->val$session:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/multiprocess/IListenableWorkerImpl;

    .line 128
    .local v0, "iListenableWorker":Landroidx/work/multiprocess/IListenableWorkerImpl;
    iget-object v1, p0, Landroidx/work/multiprocess/ListenableWorkerImplClient$1;->val$callback:Landroidx/work/multiprocess/RemoteCallback;

    invoke-interface {v0}, Landroidx/work/multiprocess/IListenableWorkerImpl;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/work/multiprocess/RemoteCallback;->setBinder(Landroid/os/IBinder;)V

    .line 129
    iget-object v1, p0, Landroidx/work/multiprocess/ListenableWorkerImplClient$1;->this$0:Landroidx/work/multiprocess/ListenableWorkerImplClient;

    iget-object v1, v1, Landroidx/work/multiprocess/ListenableWorkerImplClient;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroidx/work/multiprocess/ListenableWorkerImplClient$1$1;

    invoke-direct {v2, p0, v0}, Landroidx/work/multiprocess/ListenableWorkerImplClient$1$1;-><init>(Landroidx/work/multiprocess/ListenableWorkerImplClient$1;Landroidx/work/multiprocess/IListenableWorkerImpl;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .end local v0    # "iListenableWorker":Landroidx/work/multiprocess/IListenableWorkerImpl;
    goto :goto_1

    .line 140
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 141
    .local v0, "exception":Ljava/lang/Exception;
    :goto_0
    const-string v1, "Unable to bind to service"

    .line 142
    .local v1, "message":Ljava/lang/String;
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v2

    sget-object v3, Landroidx/work/multiprocess/ListenableWorkerImplClient;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3, v1, v0}, Landroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    iget-object v2, p0, Landroidx/work/multiprocess/ListenableWorkerImplClient$1;->val$callback:Landroidx/work/multiprocess/RemoteCallback;

    invoke-static {v2, v0}, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;->reportFailure(Landroidx/work/multiprocess/IWorkManagerImplCallback;Ljava/lang/Throwable;)V

    .line 145
    .end local v0    # "exception":Ljava/lang/Exception;
    .end local v1    # "message":Ljava/lang/String;
    :goto_1
    return-void
.end method
