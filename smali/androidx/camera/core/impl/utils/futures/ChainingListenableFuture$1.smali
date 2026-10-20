.class Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture$1;
.super Ljava/lang/Object;
.source "ChainingListenableFuture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture;

.field final synthetic val$outputFuture:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method constructor <init>(Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$outputFuture"
        }
    .end annotation

    .line 212
    .local p0, "this":Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture$1;, "Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture$1;"
    iput-object p1, p0, Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture$1;->this$0:Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture;

    iput-object p2, p0, Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture$1;->val$outputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 219
    .local p0, "this":Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture$1;, "Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture$1;"
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture$1;->this$0:Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture;

    iget-object v2, p0, Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture$1;->val$outputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v2}, Landroidx/camera/core/impl/utils/futures/Futures;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    nop

    :goto_0
    iget-object v1, p0, Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture$1;->this$0:Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture;

    iput-object v0, v1, Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture;->mOutputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 232
    goto :goto_1

    .line 231
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 226
    :catch_0
    move-exception v1

    .line 228
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_1
    iget-object v2, p0, Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture$1;->this$0:Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture;

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 231
    nop

    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    goto :goto_0

    .line 233
    :goto_1
    return-void

    .line 220
    :catch_1
    move-exception v1

    .line 224
    .local v1, "e":Ljava/util/concurrent/CancellationException;
    iget-object v2, p0, Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture$1;->this$0:Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture;->cancel(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    iget-object v2, p0, Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture$1;->this$0:Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture;

    iput-object v0, v2, Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture;->mOutputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 225
    return-void

    .line 231
    .end local v1    # "e":Ljava/util/concurrent/CancellationException;
    :goto_2
    iget-object v2, p0, Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture$1;->this$0:Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture;

    iput-object v0, v2, Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture;->mOutputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 232
    throw v1
.end method
