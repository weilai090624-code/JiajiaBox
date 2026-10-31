.class Landroidx/camera/core/impl/utils/futures/ListFuture;
.super Ljava/lang/Object;
.source "ListFuture.java"

# interfaces
.implements Lcom/google/common/util/concurrent/ListenableFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/ListenableFuture<",
        "Ljava/util/List<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field private final mAllMustSucceed:Z

.field mFutures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;>;"
        }
    .end annotation
.end field

.field private final mRemaining:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mResult:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field mResultNotifier:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field mValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;ZLjava/util/concurrent/Executor;)V
    .registers 6
    .param p2, "allMustSucceed"    # Z
    .param p3, "listenerExecutor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "futures",
            "allMustSucceed",
            "listenerExecutor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;>;Z",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 74
    .local p0, "this":Landroidx/camera/core/impl/utils/futures/ListFuture;, "Landroidx/camera/core/impl/utils/futures/ListFuture<TV;>;"
    .local p1, "futures":Ljava/util/List;, "Ljava/util/List<+Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/camera/core/impl/utils/futures/ListFuture;->mFutures:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/camera/core/impl/utils/futures/ListFuture;->mValues:Ljava/util/List;

    .line 77
    iput-boolean p2, p0, Landroidx/camera/core/impl/utils/futures/ListFuture;->mAllMustSucceed:Z

    .line 78
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroidx/camera/core/impl/utils/futures/ListFuture;->mRemaining:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 79
    new-instance v0, Landroidx/camera/core/impl/utils/futures/ListFuture$1;

    invoke-direct {v0, p0}, Landroidx/camera/core/impl/utils/futures/ListFuture$1;-><init>(Landroidx/camera/core/impl/utils/futures/ListFuture;)V

    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/core/impl/utils/futures/ListFuture;->mResult:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 91
    invoke-direct {p0, p3}, Landroidx/camera/core/impl/utils/futures/ListFuture;->init(Ljava/util/concurrent/Executor;)V

    .line 92
    return-void
.end method

.method private callAllGets()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 242
    .local p0, "this":Landroidx/camera/core/impl/utils/futures/ListFuture;, "Landroidx/camera/core/impl/utils/futures/ListFuture<TV;>;"
    iget-object v0, p0, Landroidx/camera/core/impl/utils/futures/ListFuture;->mFutures:Ljava/util/List;

    .line 243
    .local v0, "oldFutures":Ljava/util/List;, "Ljava/util/List<+Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;>;"
    if-eqz v0, :cond_30

    invoke-virtual {p0}, Landroidx/camera/core/impl/utils/futures/ListFuture;->isDone()Z

    move-result v1

    if-nez v1, :cond_30

    .line 244
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 248
    .local v2, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;"
    :goto_1a
    invoke-interface {v2}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v3

    if-nez v3, :cond_2f

    .line 250
    :try_start_20
    invoke-interface {v2}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;
    :try_end_23
    .catch Ljava/lang/Error; {:try_start_20 .. :try_end_23} :catch_2d
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_23} :catch_2b
    .catchall {:try_start_20 .. :try_end_23} :catchall_24

    .line 262
    goto :goto_1a

    .line 255
    :catchall_24
    move-exception v3

    .line 257
    .local v3, "e":Ljava/lang/Throwable;
    iget-boolean v4, p0, Landroidx/camera/core/impl/utils/futures/ListFuture;->mAllMustSucceed:Z

    if-eqz v4, :cond_2a

    .line 258
    return-void

    .line 260
    :cond_2a
    goto :goto_1a

    .line 253
    .end local v3    # "e":Ljava/lang/Throwable;
    :catch_2b
    move-exception v1

    .line 254
    .local v1, "e":Ljava/lang/InterruptedException;
    throw v1

    .line 251
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_2d
    move-exception v1

    .line 252
    .local v1, "e":Ljava/lang/Error;
    throw v1

    .line 264
    .end local v1    # "e":Ljava/lang/Error;
    .end local v2    # "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;"
    :cond_2f
    goto :goto_e

    .line 266
    :cond_30
    return-void
.end method

.method private init(Ljava/util/concurrent/Executor;)V
    .registers 7
    .param p1, "listenerExecutor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listenerExecutor"
        }
    .end annotation

    .line 96
    .local p0, "this":Landroidx/camera/core/impl/utils/futures/ListFuture;, "Landroidx/camera/core/impl/utils/futures/ListFuture<TV;>;"
    new-instance v0, Landroidx/camera/core/impl/utils/futures/ListFuture$2;

    invoke-direct {v0, p0}, Landroidx/camera/core/impl/utils/futures/ListFuture$2;-><init>(Landroidx/camera/core/impl/utils/futures/ListFuture;)V

    .line 106
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 96
    invoke-virtual {p0, v0, v1}, Landroidx/camera/core/impl/utils/futures/ListFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 111
    iget-object v0, p0, Landroidx/camera/core/impl/utils/futures/ListFuture;->mFutures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 112
    iget-object v0, p0, Landroidx/camera/core/impl/utils/futures/ListFuture;->mResultNotifier:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/camera/core/impl/utils/futures/ListFuture;->mValues:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    .line 113
    return-void

    .line 117
    :cond_21
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_22
    iget-object v1, p0, Landroidx/camera/core/impl/utils/futures/ListFuture;->mFutures:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_33

    .line 118
    iget-object v1, p0, Landroidx/camera/core/impl/utils/futures/ListFuture;->mValues:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 128
    .end local v0    # "i":I
    :cond_33
    iget-object v0, p0, Landroidx/camera/core/impl/utils/futures/ListFuture;->mFutures:Ljava/util/List;

    .line 129
    .local v0, "localFutures":Ljava/util/List;, "Ljava/util/List<+Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_36
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4e

    .line 130
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 131
    .local v2, "listenable":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;"
    move v3, v1

    .line 132
    .local v3, "index":I
    new-instance v4, Landroidx/camera/core/impl/utils/futures/ListFuture$3;

    invoke-direct {v4, p0, v3, v2}, Landroidx/camera/core/impl/utils/futures/ListFuture$3;-><init>(Landroidx/camera/core/impl/utils/futures/ListFuture;ILcom/google/common/util/concurrent/ListenableFuture;)V

    invoke-interface {v2, v4, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 129
    .end local v2    # "listenable":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;"
    .end local v3    # "index":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 139
    .end local v1    # "i":I
    :cond_4e
    return-void
.end method


# virtual methods
.method public addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p1, "listener"    # Ljava/lang/Runnable;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "listener",
            "executor"
        }
    .end annotation

    .line 196
    .local p0, "this":Landroidx/camera/core/impl/utils/futures/ListFuture;, "Landroidx/camera/core/impl/utils/futures/ListFuture<TV;>;"
    iget-object v0, p0, Landroidx/camera/core/impl/utils/futures/ListFuture;->mResult:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0, p1, p2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 197
    return-void
.end method

.method public cancel(Z)Z
    .registers 4
    .param p1, "mayInterruptIfRunning"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mayInterruptIfRunning"
        }
    .end annotation

    .line 201
    .local p0, "this":Landroidx/camera/core/impl/utils/futures/ListFuture;, "Landroidx/camera/core/impl/utils/futures/ListFuture<TV;>;"
    iget-object v0, p0, Landroidx/camera/core/impl/utils/futures/ListFuture;->mFutures:Ljava/util/List;

    if-eqz v0, :cond_1a

    .line 202
    iget-object v0, p0, Landroidx/camera/core/impl/utils/futures/ListFuture;->mFutures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 203
    .local v1, "f":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;"
    invoke-interface {v1, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    .line 204
    .end local v1    # "f":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;"
    goto :goto_a

    .line 207
    :cond_1a
    iget-object v0, p0, Landroidx/camera/core/impl/utils/futures/ListFuture;->mResult:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 52
    .local p0, "this":Landroidx/camera/core/impl/utils/futures/ListFuture;, "Landroidx/camera/core/impl/utils/futures/ListFuture<TV;>;"
    invoke-virtual {p0}, Landroidx/camera/core/impl/utils/futures/ListFuture;->get()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "timeout",
            "unit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 52
    .local p0, "this":Landroidx/camera/core/impl/utils/futures/ListFuture;, "Landroidx/camera/core/impl/utils/futures/ListFuture<TV;>;"
    invoke-virtual {p0, p1, p2, p3}, Landroidx/camera/core/impl/utils/futures/ListFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public get()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 223
    .local p0, "this":Landroidx/camera/core/impl/utils/futures/ListFuture;, "Landroidx/camera/core/impl/utils/futures/ListFuture<TV;>;"
    invoke-direct {p0}, Landroidx/camera/core/impl/utils/futures/ListFuture;->callAllGets()V

    .line 227
    iget-object v0, p0, Landroidx/camera/core/impl/utils/futures/ListFuture;->mResult:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/util/List;
    .registers 5
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "timeout",
            "unit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 233
    .local p0, "this":Landroidx/camera/core/impl/utils/futures/ListFuture;, "Landroidx/camera/core/impl/utils/futures/ListFuture<TV;>;"
    iget-object v0, p0, Landroidx/camera/core/impl/utils/futures/ListFuture;->mResult:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/common/util/concurrent/ListenableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public isCancelled()Z
    .registers 2

    .line 212
    .local p0, "this":Landroidx/camera/core/impl/utils/futures/ListFuture;, "Landroidx/camera/core/impl/utils/futures/ListFuture<TV;>;"
    iget-object v0, p0, Landroidx/camera/core/impl/utils/futures/ListFuture;->mResult:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public isDone()Z
    .registers 2

    .line 217
    .local p0, "this":Landroidx/camera/core/impl/utils/futures/ListFuture;, "Landroidx/camera/core/impl/utils/futures/ListFuture<TV;>;"
    iget-object v0, p0, Landroidx/camera/core/impl/utils/futures/ListFuture;->mResult:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v0

    return v0
.end method

.method setOneValue(ILjava/util/concurrent/Future;)V
    .registers 10
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "future"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Future<",
            "+TV;>;)V"
        }
    .end annotation

    .line 145
    .local p0, "this":Landroidx/camera/core/impl/utils/futures/ListFuture;, "Landroidx/camera/core/impl/utils/futures/ListFuture<TV;>;"
    .local p2, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<+TV;>;"
    const-string v0, "Less than 0 remaining futures"

    iget-object v1, p0, Landroidx/camera/core/impl/utils/futures/ListFuture;->mValues:Ljava/util/List;

    .line 146
    .local v1, "localValues":Ljava/util/List;, "Ljava/util/List<TV;>;"
    invoke-virtual {p0}, Landroidx/camera/core/impl/utils/futures/ListFuture;->isDone()Z

    move-result v2

    if-nez v2, :cond_105

    if-nez v1, :cond_e

    goto/16 :goto_105

    .line 156
    :cond_e
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_10
    invoke-interface {p2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v4

    const-string v5, "Tried to set value from future which is not done"

    invoke-static {v4, v5}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 158
    invoke-static {p2}, Landroidx/camera/core/impl/utils/futures/Futures;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, p1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catch Ljava/util/concurrent/CancellationException; {:try_start_10 .. :try_end_20} :catch_b0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_10 .. :try_end_20} :catch_87
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_20} :catch_62
    .catch Ljava/lang/Error; {:try_start_10 .. :try_end_20} :catch_3f
    .catchall {:try_start_10 .. :try_end_20} :catchall_3c

    .line 181
    iget-object v4, p0, Landroidx/camera/core/impl/utils/futures/ListFuture;->mRemaining:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v4

    .line 182
    .local v4, "newRemaining":I
    if-ltz v4, :cond_29

    goto :goto_2a

    :cond_29
    const/4 v2, 0x0

    :goto_2a
    invoke-static {v2, v0}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 183
    if-nez v4, :cond_dd

    .line 184
    iget-object v1, p0, Landroidx/camera/core/impl/utils/futures/ListFuture;->mValues:Ljava/util/List;

    .line 185
    if-eqz v1, :cond_d6

    .line 186
    iget-object v0, p0, Landroidx/camera/core/impl/utils/futures/ListFuture;->mResultNotifier:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto/16 :goto_d2

    .line 181
    .end local v4    # "newRemaining":I
    :catchall_3c
    move-exception v4

    goto/16 :goto_df

    .line 177
    :catch_3f
    move-exception v4

    .line 179
    .local v4, "e":Ljava/lang/Error;
    :try_start_40
    iget-object v5, p0, Landroidx/camera/core/impl/utils/futures/ListFuture;->mResultNotifier:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-virtual {v5, v4}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z
    :try_end_45
    .catchall {:try_start_40 .. :try_end_45} :catchall_3c

    .line 181
    nop

    .end local v4    # "e":Ljava/lang/Error;
    iget-object v4, p0, Landroidx/camera/core/impl/utils/futures/ListFuture;->mRemaining:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v4

    .line 182
    .local v4, "newRemaining":I
    if-ltz v4, :cond_4f

    goto :goto_50

    :cond_4f
    const/4 v2, 0x0

    :goto_50
    invoke-static {v2, v0}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 183
    if-nez v4, :cond_dd

    .line 184
    iget-object v1, p0, Landroidx/camera/core/impl/utils/futures/ListFuture;->mValues:Ljava/util/List;

    .line 185
    if-eqz v1, :cond_d6

    .line 186
    iget-object v0, p0, Landroidx/camera/core/impl/utils/futures/ListFuture;->mResultNotifier:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto/16 :goto_d2

    .line 173
    .end local v4    # "newRemaining":I
    :catch_62
    move-exception v4

    .line 174
    .local v4, "e":Ljava/lang/RuntimeException;
    :try_start_63
    iget-boolean v5, p0, Landroidx/camera/core/impl/utils/futures/ListFuture;->mAllMustSucceed:Z

    if-eqz v5, :cond_6c

    .line 175
    iget-object v5, p0, Landroidx/camera/core/impl/utils/futures/ListFuture;->mResultNotifier:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-virtual {v5, v4}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z
    :try_end_6c
    .catchall {:try_start_63 .. :try_end_6c} :catchall_3c

    .line 181
    .end local v4    # "e":Ljava/lang/RuntimeException;
    :cond_6c
    iget-object v4, p0, Landroidx/camera/core/impl/utils/futures/ListFuture;->mRemaining:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v4

    .line 182
    .local v4, "newRemaining":I
    if-ltz v4, :cond_75

    goto :goto_76

    :cond_75
    const/4 v2, 0x0

    :goto_76
    invoke-static {v2, v0}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 183
    if-nez v4, :cond_dd

    .line 184
    iget-object v1, p0, Landroidx/camera/core/impl/utils/futures/ListFuture;->mValues:Ljava/util/List;

    .line 185
    if-eqz v1, :cond_d6

    .line 186
    iget-object v0, p0, Landroidx/camera/core/impl/utils/futures/ListFuture;->mResultNotifier:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_d2

    .line 167
    .end local v4    # "newRemaining":I
    :catch_87
    move-exception v4

    .line 168
    .local v4, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_88
    iget-boolean v5, p0, Landroidx/camera/core/impl/utils/futures/ListFuture;->mAllMustSucceed:Z

    if-eqz v5, :cond_95

    .line 171
    iget-object v5, p0, Landroidx/camera/core/impl/utils/futures/ListFuture;->mResultNotifier:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-virtual {v4}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z
    :try_end_95
    .catchall {:try_start_88 .. :try_end_95} :catchall_3c

    .line 181
    .end local v4    # "e":Ljava/util/concurrent/ExecutionException;
    :cond_95
    iget-object v4, p0, Landroidx/camera/core/impl/utils/futures/ListFuture;->mRemaining:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v4

    .line 182
    .local v4, "newRemaining":I
    if-ltz v4, :cond_9e

    goto :goto_9f

    :cond_9e
    const/4 v2, 0x0

    :goto_9f
    invoke-static {v2, v0}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 183
    if-nez v4, :cond_dd

    .line 184
    iget-object v1, p0, Landroidx/camera/core/impl/utils/futures/ListFuture;->mValues:Ljava/util/List;

    .line 185
    if-eqz v1, :cond_d6

    .line 186
    iget-object v0, p0, Landroidx/camera/core/impl/utils/futures/ListFuture;->mResultNotifier:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_d2

    .line 159
    .end local v4    # "newRemaining":I
    :catch_b0
    move-exception v4

    .line 160
    .local v4, "e":Ljava/util/concurrent/CancellationException;
    :try_start_b1
    iget-boolean v5, p0, Landroidx/camera/core/impl/utils/futures/ListFuture;->mAllMustSucceed:Z

    if-eqz v5, :cond_b8

    .line 165
    invoke-virtual {p0, v3}, Landroidx/camera/core/impl/utils/futures/ListFuture;->cancel(Z)Z
    :try_end_b8
    .catchall {:try_start_b1 .. :try_end_b8} :catchall_3c

    .line 181
    .end local v4    # "e":Ljava/util/concurrent/CancellationException;
    :cond_b8
    iget-object v4, p0, Landroidx/camera/core/impl/utils/futures/ListFuture;->mRemaining:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v4

    .line 182
    .local v4, "newRemaining":I
    if-ltz v4, :cond_c1

    goto :goto_c2

    :cond_c1
    const/4 v2, 0x0

    :goto_c2
    invoke-static {v2, v0}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 183
    if-nez v4, :cond_dd

    .line 184
    iget-object v1, p0, Landroidx/camera/core/impl/utils/futures/ListFuture;->mValues:Ljava/util/List;

    .line 185
    if-eqz v1, :cond_d6

    .line 186
    iget-object v0, p0, Landroidx/camera/core/impl/utils/futures/ListFuture;->mResultNotifier:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_d2
    invoke-virtual {v0, v2}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    goto :goto_dd

    .line 188
    :cond_d6
    invoke-virtual {p0}, Landroidx/camera/core/impl/utils/futures/ListFuture;->isDone()Z

    move-result v0

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkState(Z)V

    .line 191
    .end local v4    # "newRemaining":I
    :cond_dd
    :goto_dd
    nop

    .line 192
    return-void

    .line 181
    :goto_df
    iget-object v5, p0, Landroidx/camera/core/impl/utils/futures/ListFuture;->mRemaining:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v5

    .line 182
    .local v5, "newRemaining":I
    if-ltz v5, :cond_e8

    goto :goto_e9

    :cond_e8
    const/4 v2, 0x0

    :goto_e9
    invoke-static {v2, v0}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 183
    if-nez v5, :cond_104

    .line 184
    iget-object v1, p0, Landroidx/camera/core/impl/utils/futures/ListFuture;->mValues:Ljava/util/List;

    .line 185
    if-eqz v1, :cond_fd

    .line 186
    iget-object v0, p0, Landroidx/camera/core/impl/utils/futures/ListFuture;->mResultNotifier:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    goto :goto_104

    .line 188
    :cond_fd
    invoke-virtual {p0}, Landroidx/camera/core/impl/utils/futures/ListFuture;->isDone()Z

    move-result v0

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkState(Z)V

    .line 191
    .end local v5    # "newRemaining":I
    :cond_104
    :goto_104
    throw v4

    .line 150
    :cond_105
    :goto_105
    iget-boolean v0, p0, Landroidx/camera/core/impl/utils/futures/ListFuture;->mAllMustSucceed:Z

    const-string v2, "Future was done before all dependencies completed"

    invoke-static {v0, v2}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 152
    return-void
.end method
