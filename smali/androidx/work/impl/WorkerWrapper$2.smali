.class Landroidx/work/impl/WorkerWrapper$2;
.super Ljava/lang/Object;
.source "WorkerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/WorkerWrapper;->runWorker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/work/impl/WorkerWrapper;

.field final synthetic val$workDescription:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroidx/work/impl/WorkerWrapper;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Landroidx/work/impl/WorkerWrapper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$workDescription"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 311
    iput-object p1, p0, Landroidx/work/impl/WorkerWrapper$2;->this$0:Landroidx/work/impl/WorkerWrapper;

    iput-object p2, p0, Landroidx/work/impl/WorkerWrapper$2;->val$workDescription:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 317
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper$2;->this$0:Landroidx/work/impl/WorkerWrapper;

    iget-object v0, v0, Landroidx/work/impl/WorkerWrapper;->mWorkerResultFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-virtual {v0}, Landroidx/work/impl/utils/futures/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/ListenableWorker$Result;

    .line 318
    .local v0, "result":Landroidx/work/ListenableWorker$Result;
    if-nez v0, :cond_2f

    .line 319
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/WorkerWrapper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroidx/work/impl/WorkerWrapper$2;->this$0:Landroidx/work/impl/WorkerWrapper;

    iget-object v4, v4, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    iget-object v4, v4, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " returned a null result. Treating it as a failure."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a3

    .line 322
    :cond_2f
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/WorkerWrapper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroidx/work/impl/WorkerWrapper$2;->this$0:Landroidx/work/impl/WorkerWrapper;

    iget-object v4, v4, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    iget-object v4, v4, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " returned a "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper$2;->this$0:Landroidx/work/impl/WorkerWrapper;

    iput-object v0, v1, Landroidx/work/impl/WorkerWrapper;->mResult:Landroidx/work/ListenableWorker$Result;
    :try_end_5f
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_5f} :catch_84
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5f} :catch_64
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_5f} :catch_62
    .catchall {:try_start_0 .. :try_end_5f} :catchall_60

    goto :goto_a3

    .line 335
    .end local v0    # "result":Landroidx/work/ListenableWorker$Result;
    :catchall_60
    move-exception v0

    goto :goto_aa

    .line 330
    :catch_62
    move-exception v0

    goto :goto_65

    :catch_64
    move-exception v0

    .line 331
    .local v0, "exception":Ljava/lang/Exception;
    :goto_65
    :try_start_65
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/WorkerWrapper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroidx/work/impl/WorkerWrapper$2;->val$workDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed because it threw an exception/error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Landroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "exception":Ljava/lang/Exception;
    goto :goto_a3

    .line 326
    :catch_84
    move-exception v0

    .line 329
    .local v0, "exception":Ljava/util/concurrent/CancellationException;
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/WorkerWrapper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroidx/work/impl/WorkerWrapper$2;->val$workDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " was cancelled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Landroidx/work/Logger;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a3
    .catchall {:try_start_65 .. :try_end_a3} :catchall_60

    .line 335
    .end local v0    # "exception":Ljava/util/concurrent/CancellationException;
    :goto_a3
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper$2;->this$0:Landroidx/work/impl/WorkerWrapper;

    invoke-virtual {v0}, Landroidx/work/impl/WorkerWrapper;->onWorkFinished()V

    .line 336
    nop

    .line 337
    return-void

    .line 335
    :goto_aa
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper$2;->this$0:Landroidx/work/impl/WorkerWrapper;

    invoke-virtual {v1}, Landroidx/work/impl/WorkerWrapper;->onWorkFinished()V

    .line 336
    throw v0
.end method
