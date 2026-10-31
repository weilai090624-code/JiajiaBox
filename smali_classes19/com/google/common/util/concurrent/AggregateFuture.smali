.class abstract Lcom/google/common/util/concurrent/AggregateFuture;
.super Lcom/google/common/util/concurrent/AggregateFutureState;
.source "AggregateFuture.java"


# annotations
.annotation runtime Lcom/google/common/util/concurrent/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<InputT:",
        "Ljava/lang/Object;",
        "OutputT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/AggregateFutureState<",
        "TOutputT;>;"
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final allMustSucceed:Z

.field private final collectsValues:Z

.field private futures:Lcom/google/common/collect/ImmutableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableCollection<",
            "+",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TInputT;>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 47
    const-class v0, Lcom/google/common/util/concurrent/AggregateFuture;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/AggregateFuture;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/ImmutableCollection;ZZ)V
    .registers 5
    .param p2, "allMustSucceed"    # Z
    .param p3, "collectsValues"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableCollection<",
            "+",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TInputT;>;>;ZZ)V"
        }
    .end annotation

    .line 68
    .local p0, "this":Lcom/google/common/util/concurrent/AggregateFuture;, "Lcom/google/common/util/concurrent/AggregateFuture<TInputT;TOutputT;>;"
    .local p1, "futures":Lcom/google/common/collect/ImmutableCollection;, "Lcom/google/common/collect/ImmutableCollection<+Lcom/google/common/util/concurrent/ListenableFuture<+TInputT;>;>;"
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableCollection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AggregateFutureState;-><init>(I)V

    .line 69
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableCollection;

    iput-object v0, p0, Lcom/google/common/util/concurrent/AggregateFuture;->futures:Lcom/google/common/collect/ImmutableCollection;

    .line 70
    iput-boolean p2, p0, Lcom/google/common/util/concurrent/AggregateFuture;->allMustSucceed:Z

    .line 71
    iput-boolean p3, p0, Lcom/google/common/util/concurrent/AggregateFuture;->collectsValues:Z

    .line 72
    return-void
.end method

.method static synthetic access$002(Lcom/google/common/util/concurrent/AggregateFuture;Lcom/google/common/collect/ImmutableCollection;)Lcom/google/common/collect/ImmutableCollection;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/util/concurrent/AggregateFuture;
    .param p1, "x1"    # Lcom/google/common/collect/ImmutableCollection;

    .line 45
    iput-object p1, p0, Lcom/google/common/util/concurrent/AggregateFuture;->futures:Lcom/google/common/collect/ImmutableCollection;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/common/util/concurrent/AggregateFuture;ILjava/util/concurrent/Future;)V
    .registers 3
    .param p0, "x0"    # Lcom/google/common/util/concurrent/AggregateFuture;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/concurrent/Future;

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/google/common/util/concurrent/AggregateFuture;->collectValueFromNonCancelledFuture(ILjava/util/concurrent/Future;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/common/util/concurrent/AggregateFuture;Lcom/google/common/collect/ImmutableCollection;)V
    .registers 2
    .param p0, "x0"    # Lcom/google/common/util/concurrent/AggregateFuture;
    .param p1, "x1"    # Lcom/google/common/collect/ImmutableCollection;

    .line 45
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/AggregateFuture;->decrementCountAndMaybeComplete(Lcom/google/common/collect/ImmutableCollection;)V

    return-void
.end method

.method private static addCausalChain(Ljava/util/Set;Ljava/lang/Throwable;)Z
    .registers 5
    .param p1, "param"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/lang/Throwable;",
            ")Z"
        }
    .end annotation

    .line 350
    .local p0, "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Throwable;>;"
    move-object v0, p1

    .line 352
    .local v0, "t":Ljava/lang/Throwable;
    :goto_1
    if-eqz v0, :cond_10

    .line 353
    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 354
    .local v1, "firstTimeSeen":Z
    if-nez v1, :cond_b

    .line 361
    const/4 v2, 0x0

    return v2

    .line 352
    .end local v1    # "firstTimeSeen":Z
    :cond_b
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_1

    .line 364
    :cond_10
    const/4 v1, 0x1

    return v1
.end method

.method private collectValueFromNonCancelledFuture(ILjava/util/concurrent/Future;)V
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Future<",
            "+TInputT;>;)V"
        }
    .end annotation

    .line 267
    .local p0, "this":Lcom/google/common/util/concurrent/AggregateFuture;, "Lcom/google/common/util/concurrent/AggregateFuture<TInputT;TOutputT;>;"
    .local p2, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<+TInputT;>;"
    :try_start_0
    invoke-static {p2}, Lcom/google/common/util/concurrent/Futures;->getDone(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/util/concurrent/AggregateFuture;->collectOneValue(ILjava/lang/Object;)V
    :try_end_7
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_7} :catch_d
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    goto :goto_15

    .line 270
    :catchall_8
    move-exception v0

    .line 271
    .local v0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AggregateFuture;->handleException(Ljava/lang/Throwable;)V

    goto :goto_16

    .line 268
    .end local v0    # "t":Ljava/lang/Throwable;
    :catch_d
    move-exception v0

    .line 269
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/common/util/concurrent/AggregateFuture;->handleException(Ljava/lang/Throwable;)V

    .line 272
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :goto_15
    nop

    .line 273
    :goto_16
    return-void
.end method

.method private decrementCountAndMaybeComplete(Lcom/google/common/collect/ImmutableCollection;)V
    .registers 5
    .param p1    # Lcom/google/common/collect/ImmutableCollection;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableCollection<",
            "+",
            "Ljava/util/concurrent/Future<",
            "+TInputT;>;>;)V"
        }
    .end annotation

    .line 279
    .local p0, "this":Lcom/google/common/util/concurrent/AggregateFuture;, "Lcom/google/common/util/concurrent/AggregateFuture<TInputT;TOutputT;>;"
    .local p1, "futuresIfNeedToCollectAtCompletion":Lcom/google/common/collect/ImmutableCollection;, "Lcom/google/common/collect/ImmutableCollection<+Ljava/util/concurrent/Future<+TInputT;>;>;"
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AggregateFuture;->decrementRemainingAndGet()I

    move-result v0

    .line 280
    .local v0, "newRemaining":I
    if-ltz v0, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    const-string v2, "Less than 0 remaining futures"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 281
    if-nez v0, :cond_13

    .line 282
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/AggregateFuture;->processCompleted(Lcom/google/common/collect/ImmutableCollection;)V

    .line 284
    :cond_13
    return-void
.end method

.method private handleException(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 204
    .local p0, "this":Lcom/google/common/util/concurrent/AggregateFuture;, "Lcom/google/common/util/concurrent/AggregateFuture<TInputT;TOutputT;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/AggregateFuture;->allMustSucceed:Z

    if-eqz v0, :cond_1b

    .line 209
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/AggregateFuture;->setException(Ljava/lang/Throwable;)Z

    move-result v0

    .line 210
    .local v0, "completedWithFailure":Z
    if-nez v0, :cond_1b

    .line 213
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AggregateFuture;->getOrInitSeenExceptions()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/common/util/concurrent/AggregateFuture;->addCausalChain(Ljava/util/Set;Ljava/lang/Throwable;)Z

    move-result v1

    .line 214
    .local v1, "firstTimeSeeingThisException":Z
    if-eqz v1, :cond_1b

    .line 215
    invoke-static {p1}, Lcom/google/common/util/concurrent/AggregateFuture;->log(Ljava/lang/Throwable;)V

    .line 216
    return-void

    .line 225
    .end local v0    # "completedWithFailure":Z
    .end local v1    # "firstTimeSeeingThisException":Z
    :cond_1b
    instance-of v0, p1, Ljava/lang/Error;

    if-eqz v0, :cond_22

    .line 233
    invoke-static {p1}, Lcom/google/common/util/concurrent/AggregateFuture;->log(Ljava/lang/Throwable;)V

    .line 235
    :cond_22
    return-void
.end method

.method private static log(Ljava/lang/Throwable;)V
    .registers 4
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .line 239
    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_7

    .line 240
    const-string v0, "Input Future failed with Error"

    goto :goto_9

    .line 241
    :cond_7
    const-string v0, "Got more than one input Future failure. Logging failures after the first"

    :goto_9
    nop

    .line 242
    .local v0, "message":Ljava/lang/String;
    sget-object v1, Lcom/google/common/util/concurrent/AggregateFuture;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2, v0, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 243
    return-void
.end method

.method private processCompleted(Lcom/google/common/collect/ImmutableCollection;)V
    .registers 6
    .param p1    # Lcom/google/common/collect/ImmutableCollection;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableCollection<",
            "+",
            "Ljava/util/concurrent/Future<",
            "+TInputT;>;>;)V"
        }
    .end annotation

    .line 290
    .local p0, "this":Lcom/google/common/util/concurrent/AggregateFuture;, "Lcom/google/common/util/concurrent/AggregateFuture<TInputT;TOutputT;>;"
    .local p1, "futuresIfNeedToCollectAtCompletion":Lcom/google/common/collect/ImmutableCollection;, "Lcom/google/common/collect/ImmutableCollection<+Ljava/util/concurrent/Future<+TInputT;>;>;"
    if-eqz p1, :cond_20

    .line 291
    const/4 v0, 0x0

    .line 292
    .local v0, "i":I
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableCollection;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    .line 293
    .local v2, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<+TInputT;>;"
    invoke-interface {v2}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 294
    invoke-direct {p0, v0, v2}, Lcom/google/common/util/concurrent/AggregateFuture;->collectValueFromNonCancelledFuture(ILjava/util/concurrent/Future;)V

    .line 296
    :cond_1c
    nop

    .end local v2    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<+TInputT;>;"
    add-int/lit8 v0, v0, 0x1

    .line 297
    goto :goto_7

    .line 299
    .end local v0    # "i":I
    :cond_20
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AggregateFuture;->clearSeenExceptions()V

    .line 300
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AggregateFuture;->handleAllCompleted()V

    .line 308
    sget-object v0, Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;->ALL_INPUT_FUTURES_PROCESSED:Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AggregateFuture;->releaseResources(Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;)V

    .line 309
    return-void
.end method


# virtual methods
.method final addInitialException(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 247
    .local p0, "this":Lcom/google/common/util/concurrent/AggregateFuture;, "Lcom/google/common/util/concurrent/AggregateFuture<TInputT;TOutputT;>;"
    .local p1, "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Throwable;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AggregateFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_16

    .line 256
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AggregateFuture;->tryInternalFastPathGetFailure()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {p1, v0}, Lcom/google/common/util/concurrent/AggregateFuture;->addCausalChain(Ljava/util/Set;Ljava/lang/Throwable;)Z

    .line 258
    :cond_16
    return-void
.end method

.method protected final afterDone()V
    .registers 5

    .line 76
    .local p0, "this":Lcom/google/common/util/concurrent/AggregateFuture;, "Lcom/google/common/util/concurrent/AggregateFuture<TInputT;TOutputT;>;"
    invoke-super {p0}, Lcom/google/common/util/concurrent/AggregateFutureState;->afterDone()V

    .line 78
    iget-object v0, p0, Lcom/google/common/util/concurrent/AggregateFuture;->futures:Lcom/google/common/collect/ImmutableCollection;

    .line 79
    .local v0, "localFutures":Lcom/google/common/collect/ImmutableCollection;, "Lcom/google/common/collect/ImmutableCollection<+Ljava/util/concurrent/Future<*>;>;"
    sget-object v1, Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;->OUTPUT_FUTURE_DONE:Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;

    invoke-virtual {p0, v1}, Lcom/google/common/util/concurrent/AggregateFuture;->releaseResources(Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;)V

    .line 81
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AggregateFuture;->isCancelled()Z

    move-result v1

    if-eqz v0, :cond_12

    const/4 v2, 0x1

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    and-int/2addr v1, v2

    if-eqz v1, :cond_2e

    .line 82
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AggregateFuture;->wasInterrupted()Z

    move-result v1

    .line 83
    .local v1, "wasInterrupted":Z
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Future;

    .line 84
    .local v3, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    invoke-interface {v3, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 85
    .end local v3    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    goto :goto_1e

    .line 91
    .end local v1    # "wasInterrupted":Z
    :cond_2e
    return-void
.end method

.method abstract collectOneValue(ILjava/lang/Object;)V
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/util/concurrent/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITInputT;)V"
        }
    .end annotation
.end method

.method abstract handleAllCompleted()V
.end method

.method final init()V
    .registers 7

    .line 116
    .local p0, "this":Lcom/google/common/util/concurrent/AggregateFuture;, "Lcom/google/common/util/concurrent/AggregateFuture<TInputT;TOutputT;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/AggregateFuture;->futures:Lcom/google/common/collect/ImmutableCollection;

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lcom/google/common/util/concurrent/AggregateFuture;->futures:Lcom/google/common/collect/ImmutableCollection;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 120
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AggregateFuture;->handleAllCompleted()V

    .line 121
    return-void

    .line 127
    :cond_11
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/AggregateFuture;->allMustSucceed:Z

    if-eqz v0, :cond_39

    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, "i":I
    iget-object v1, p0, Lcom/google/common/util/concurrent/AggregateFuture;->futures:Lcom/google/common/collect/ImmutableCollection;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableCollection;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 139
    .local v2, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TInputT;>;"
    add-int/lit8 v3, v0, 0x1

    .line 140
    .local v0, "index":I
    .local v3, "i":I
    new-instance v4, Lcom/google/common/util/concurrent/AggregateFuture$1;

    invoke-direct {v4, p0, v2, v0}, Lcom/google/common/util/concurrent/AggregateFuture$1;-><init>(Lcom/google/common/util/concurrent/AggregateFuture;Lcom/google/common/util/concurrent/ListenableFuture;I)V

    .line 163
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    .line 140
    invoke-interface {v2, v4, v5}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 164
    .end local v0    # "index":I
    .end local v2    # "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TInputT;>;"
    move v0, v3

    goto :goto_1c

    .line 165
    .end local v3    # "i":I
    :cond_38
    goto :goto_60

    .line 183
    :cond_39
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/AggregateFuture;->collectsValues:Z

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/google/common/util/concurrent/AggregateFuture;->futures:Lcom/google/common/collect/ImmutableCollection;

    goto :goto_41

    :cond_40
    const/4 v0, 0x0

    .line 184
    .local v0, "localFutures":Lcom/google/common/collect/ImmutableCollection;, "Lcom/google/common/collect/ImmutableCollection<+Ljava/util/concurrent/Future<+TInputT;>;>;"
    :goto_41
    new-instance v1, Lcom/google/common/util/concurrent/AggregateFuture$2;

    invoke-direct {v1, p0, v0}, Lcom/google/common/util/concurrent/AggregateFuture$2;-><init>(Lcom/google/common/util/concurrent/AggregateFuture;Lcom/google/common/collect/ImmutableCollection;)V

    .line 191
    .local v1, "listener":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/google/common/util/concurrent/AggregateFuture;->futures:Lcom/google/common/collect/ImmutableCollection;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableCollection;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v2

    :goto_4c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_60

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 192
    .local v3, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TInputT;>;"
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 193
    .end local v3    # "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TInputT;>;"
    goto :goto_4c

    .line 195
    .end local v0    # "localFutures":Lcom/google/common/collect/ImmutableCollection;, "Lcom/google/common/collect/ImmutableCollection<+Ljava/util/concurrent/Future<+TInputT;>;>;"
    .end local v1    # "listener":Ljava/lang/Runnable;
    :cond_60
    :goto_60
    return-void
.end method

.method protected final pendingToString()Ljava/lang/String;
    .registers 5
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 96
    .local p0, "this":Lcom/google/common/util/concurrent/AggregateFuture;, "Lcom/google/common/util/concurrent/AggregateFuture<TInputT;TOutputT;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/AggregateFuture;->futures:Lcom/google/common/collect/ImmutableCollection;

    .line 97
    .local v0, "localFutures":Lcom/google/common/collect/ImmutableCollection;, "Lcom/google/common/collect/ImmutableCollection<+Ljava/util/concurrent/Future<*>;>;"
    if-eqz v0, :cond_26

    .line 98
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "futures="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 100
    :cond_26
    invoke-super {p0}, Lcom/google/common/util/concurrent/AggregateFutureState;->pendingToString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method releaseResources(Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;)V
    .registers 3
    .param p1, "reason"    # Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;

    .line 324
    .local p0, "this":Lcom/google/common/util/concurrent/AggregateFuture;, "Lcom/google/common/util/concurrent/AggregateFuture<TInputT;TOutputT;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/util/concurrent/AggregateFuture;->futures:Lcom/google/common/collect/ImmutableCollection;

    .line 332
    return-void
.end method
