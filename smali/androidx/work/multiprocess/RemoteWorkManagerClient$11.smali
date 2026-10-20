.class Landroidx/work/multiprocess/RemoteWorkManagerClient$11;
.super Ljava/lang/Object;
.source "RemoteWorkManagerClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/multiprocess/RemoteWorkManagerClient;->execute(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/work/multiprocess/RemoteDispatcher;Landroidx/work/multiprocess/RemoteCallback;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/work/multiprocess/RemoteWorkManagerClient;

.field final synthetic val$callback:Landroidx/work/multiprocess/RemoteCallback;

.field final synthetic val$dispatcher:Landroidx/work/multiprocess/RemoteDispatcher;

.field final synthetic val$session:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method constructor <init>(Landroidx/work/multiprocess/RemoteWorkManagerClient;Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/work/multiprocess/RemoteCallback;Landroidx/work/multiprocess/RemoteDispatcher;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/work/multiprocess/RemoteWorkManagerClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 398
    iput-object p1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$11;->this$0:Landroidx/work/multiprocess/RemoteWorkManagerClient;

    iput-object p2, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$11;->val$session:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p3, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$11;->val$callback:Landroidx/work/multiprocess/RemoteCallback;

    iput-object p4, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$11;->val$dispatcher:Landroidx/work/multiprocess/RemoteDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 402
    :try_start_0
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$11;->val$session:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/multiprocess/IWorkManagerImpl;

    .line 404
    .local v0, "iWorkManager":Landroidx/work/multiprocess/IWorkManagerImpl;
    iget-object v1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$11;->val$callback:Landroidx/work/multiprocess/RemoteCallback;

    invoke-interface {v0}, Landroidx/work/multiprocess/IWorkManagerImpl;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/work/multiprocess/RemoteCallback;->setBinder(Landroid/os/IBinder;)V

    .line 405
    iget-object v1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$11;->this$0:Landroidx/work/multiprocess/RemoteWorkManagerClient;

    iget-object v1, v1, Landroidx/work/multiprocess/RemoteWorkManagerClient;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroidx/work/multiprocess/RemoteWorkManagerClient$11$1;

    invoke-direct {v2, p0, v0}, Landroidx/work/multiprocess/RemoteWorkManagerClient$11$1;-><init>(Landroidx/work/multiprocess/RemoteWorkManagerClient$11;Landroidx/work/multiprocess/IWorkManagerImpl;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    .end local v0    # "iWorkManager":Landroidx/work/multiprocess/IWorkManagerImpl;
    goto :goto_1

    .line 416
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 417
    .local v0, "exception":Ljava/lang/Exception;
    :goto_0
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v1

    sget-object v2, Landroidx/work/multiprocess/RemoteWorkManagerClient;->TAG:Ljava/lang/String;

    const-string v3, "Unable to bind to service"

    invoke-virtual {v1, v2, v3}, Landroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    iget-object v1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$11;->val$callback:Landroidx/work/multiprocess/RemoteCallback;

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;->reportFailure(Landroidx/work/multiprocess/IWorkManagerImplCallback;Ljava/lang/Throwable;)V

    .line 419
    iget-object v1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$11;->this$0:Landroidx/work/multiprocess/RemoteWorkManagerClient;

    invoke-virtual {v1}, Landroidx/work/multiprocess/RemoteWorkManagerClient;->cleanUp()V

    .line 421
    .end local v0    # "exception":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
