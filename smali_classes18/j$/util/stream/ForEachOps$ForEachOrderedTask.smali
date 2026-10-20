.class final Lj$/util/stream/ForEachOps$ForEachOrderedTask;
.super Ljava/util/concurrent/CountedCompleter;
.source "ForEachOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/ForEachOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ForEachOrderedTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/CountedCompleter<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final action:Lj$/util/stream/Sink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/stream/Sink<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final completionMap:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Lj$/util/stream/ForEachOps$ForEachOrderedTask<",
            "TS;TT;>;",
            "Lj$/util/stream/ForEachOps$ForEachOrderedTask<",
            "TS;TT;>;>;"
        }
    .end annotation
.end field

.field private final helper:Lj$/util/stream/PipelineHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/stream/PipelineHelper<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final leftPredecessor:Lj$/util/stream/ForEachOps$ForEachOrderedTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/stream/ForEachOps$ForEachOrderedTask<",
            "TS;TT;>;"
        }
    .end annotation
.end field

.field private node:Lj$/util/stream/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/stream/Node<",
            "TT;>;"
        }
    .end annotation
.end field

.field private spliterator:Lj$/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/Spliterator<",
            "TS;>;"
        }
    .end annotation
.end field

.field private final targetSize:J


# direct methods
.method constructor <init>(Lj$/util/stream/ForEachOps$ForEachOrderedTask;Lj$/util/Spliterator;Lj$/util/stream/ForEachOps$ForEachOrderedTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/ForEachOps$ForEachOrderedTask<",
            "TS;TT;>;",
            "Lj$/util/Spliterator<",
            "TS;>;",
            "Lj$/util/stream/ForEachOps$ForEachOrderedTask<",
            "TS;TT;>;)V"
        }
    .end annotation

    .line 388
    .local p0, "this":Lj$/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    .local p1, "parent":Lj$/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    .local p2, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TS;>;"
    .local p3, "leftPredecessor":Lj$/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 389
    iget-object v0, p1, Lj$/util/stream/ForEachOps$ForEachOrderedTask;->helper:Lj$/util/stream/PipelineHelper;

    iput-object v0, p0, Lj$/util/stream/ForEachOps$ForEachOrderedTask;->helper:Lj$/util/stream/PipelineHelper;

    .line 390
    iput-object p2, p0, Lj$/util/stream/ForEachOps$ForEachOrderedTask;->spliterator:Lj$/util/Spliterator;

    .line 391
    iget-wide v0, p1, Lj$/util/stream/ForEachOps$ForEachOrderedTask;->targetSize:J

    iput-wide v0, p0, Lj$/util/stream/ForEachOps$ForEachOrderedTask;->targetSize:J

    .line 392
    iget-object v0, p1, Lj$/util/stream/ForEachOps$ForEachOrderedTask;->completionMap:Lj$/util/concurrent/ConcurrentHashMap;

    iput-object v0, p0, Lj$/util/stream/ForEachOps$ForEachOrderedTask;->completionMap:Lj$/util/concurrent/ConcurrentHashMap;

    .line 393
    iget-object v0, p1, Lj$/util/stream/ForEachOps$ForEachOrderedTask;->action:Lj$/util/stream/Sink;

    iput-object v0, p0, Lj$/util/stream/ForEachOps$ForEachOrderedTask;->action:Lj$/util/stream/Sink;

    .line 394
    iput-object p3, p0, Lj$/util/stream/ForEachOps$ForEachOrderedTask;->leftPredecessor:Lj$/util/stream/ForEachOps$ForEachOrderedTask;

    .line 395
    return-void
.end method

.method protected constructor <init>(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;Lj$/util/stream/Sink;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/PipelineHelper<",
            "TT;>;",
            "Lj$/util/Spliterator<",
            "TS;>;",
            "Lj$/util/stream/Sink<",
            "TT;>;)V"
        }
    .end annotation

    .line 375
    .local p0, "this":Lj$/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    .local p1, "helper":Lj$/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TT;>;"
    .local p2, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TS;>;"
    .local p3, "action":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 376
    iput-object p1, p0, Lj$/util/stream/ForEachOps$ForEachOrderedTask;->helper:Lj$/util/stream/PipelineHelper;

    .line 377
    iput-object p2, p0, Lj$/util/stream/ForEachOps$ForEachOrderedTask;->spliterator:Lj$/util/Spliterator;

    .line 378
    invoke-interface {p2}, Lj$/util/Spliterator;->estimateSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Lj$/util/stream/AbstractTask;->suggestTargetSize(J)J

    move-result-wide v1

    iput-wide v1, p0, Lj$/util/stream/ForEachOps$ForEachOrderedTask;->targetSize:J

    .line 380
    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Lj$/util/stream/AbstractTask;->getLeafTarget()I

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    const/16 v3, 0x10

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-direct {v1, v2}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v1, p0, Lj$/util/stream/ForEachOps$ForEachOrderedTask;->completionMap:Lj$/util/concurrent/ConcurrentHashMap;

    .line 381
    iput-object p3, p0, Lj$/util/stream/ForEachOps$ForEachOrderedTask;->action:Lj$/util/stream/Sink;

    .line 382
    iput-object v0, p0, Lj$/util/stream/ForEachOps$ForEachOrderedTask;->leftPredecessor:Lj$/util/stream/ForEachOps$ForEachOrderedTask;

    .line 383
    return-void
.end method

.method private static doCompute(Lj$/util/stream/ForEachOps$ForEachOrderedTask;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/stream/ForEachOps$ForEachOrderedTask<",
            "TS;TT;>;)V"
        }
    .end annotation

    .line 403
    .local p0, "task":Lj$/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    iget-object v0, p0, Lj$/util/stream/ForEachOps$ForEachOrderedTask;->spliterator:Lj$/util/Spliterator;

    .line 404
    .local v0, "rightSplit":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TS;>;"
    iget-wide v1, p0, Lj$/util/stream/ForEachOps$ForEachOrderedTask;->targetSize:J

    .line 405
    .local v1, "sizeThreshold":J
    const/4 v3, 0x0

    .line 406
    .local v3, "forkRight":Z
    :goto_0
    invoke-interface {v0}, Lj$/util/Spliterator;->estimateSize()J

    move-result-wide v4

    cmp-long v6, v4, v1

    if-lez v6, :cond_3

    .line 407
    invoke-interface {v0}, Lj$/util/Spliterator;->trySplit()Lj$/util/Spliterator;

    move-result-object v4

    move-object v5, v4

    .local v5, "leftSplit":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TS;>;"
    if-eqz v4, :cond_3

    .line 408
    new-instance v4, Lj$/util/stream/ForEachOps$ForEachOrderedTask;

    iget-object v6, p0, Lj$/util/stream/ForEachOps$ForEachOrderedTask;->leftPredecessor:Lj$/util/stream/ForEachOps$ForEachOrderedTask;

    invoke-direct {v4, p0, v5, v6}, Lj$/util/stream/ForEachOps$ForEachOrderedTask;-><init>(Lj$/util/stream/ForEachOps$ForEachOrderedTask;Lj$/util/Spliterator;Lj$/util/stream/ForEachOps$ForEachOrderedTask;)V

    .line 410
    .local v4, "leftChild":Lj$/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    new-instance v6, Lj$/util/stream/ForEachOps$ForEachOrderedTask;

    invoke-direct {v6, p0, v0, v4}, Lj$/util/stream/ForEachOps$ForEachOrderedTask;-><init>(Lj$/util/stream/ForEachOps$ForEachOrderedTask;Lj$/util/Spliterator;Lj$/util/stream/ForEachOps$ForEachOrderedTask;)V

    .line 416
    .local v6, "rightChild":Lj$/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lj$/util/stream/ForEachOps$ForEachOrderedTask;->addToPendingCount(I)V

    .line 419
    invoke-virtual {v6, v7}, Lj$/util/stream/ForEachOps$ForEachOrderedTask;->addToPendingCount(I)V

    .line 420
    iget-object v8, p0, Lj$/util/stream/ForEachOps$ForEachOrderedTask;->completionMap:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v4, v6}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    iget-object v8, p0, Lj$/util/stream/ForEachOps$ForEachOrderedTask;->leftPredecessor:Lj$/util/stream/ForEachOps$ForEachOrderedTask;

    if-eqz v8, :cond_1

    .line 433
    invoke-virtual {v4, v7}, Lj$/util/stream/ForEachOps$ForEachOrderedTask;->addToPendingCount(I)V

    .line 436
    iget-object v7, p0, Lj$/util/stream/ForEachOps$ForEachOrderedTask;->completionMap:Lj$/util/concurrent/ConcurrentHashMap;

    iget-object v8, p0, Lj$/util/stream/ForEachOps$ForEachOrderedTask;->leftPredecessor:Lj$/util/stream/ForEachOps$ForEachOrderedTask;

    invoke-virtual {v7, v8, p0, v4}, Lj$/util/concurrent/ConcurrentHashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, -0x1

    if-eqz v7, :cond_0

    .line 439
    invoke-virtual {p0, v8}, Lj$/util/stream/ForEachOps$ForEachOrderedTask;->addToPendingCount(I)V

    goto :goto_1

    .line 444
    :cond_0
    invoke-virtual {v4, v8}, Lj$/util/stream/ForEachOps$ForEachOrderedTask;->addToPendingCount(I)V

    .line 449
    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    .line 450
    const/4 v3, 0x0

    .line 451
    move-object v0, v5

    .line 452
    move-object p0, v4

    .line 453
    move-object v7, v6

    .local v7, "taskToFork":Lj$/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    goto :goto_2

    .line 456
    .end local v7    # "taskToFork":Lj$/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    :cond_2
    const/4 v3, 0x1

    .line 457
    move-object p0, v6

    .line 458
    move-object v7, v4

    .line 460
    .restart local v7    # "taskToFork":Lj$/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    :goto_2
    invoke-virtual {v7}, Lj$/util/stream/ForEachOps$ForEachOrderedTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    .line 461
    .end local v4    # "leftChild":Lj$/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    .end local v6    # "rightChild":Lj$/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    .end local v7    # "taskToFork":Lj$/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    goto :goto_0

    .line 471
    .end local v5    # "leftSplit":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TS;>;"
    :cond_3
    invoke-virtual {p0}, Lj$/util/stream/ForEachOps$ForEachOrderedTask;->getPendingCount()I

    move-result v4

    if-lez v4, :cond_4

    .line 475
    new-instance v4, Lj$/util/stream/ForEachOps$ForEachOrderedTask$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lj$/util/stream/ForEachOps$ForEachOrderedTask$$ExternalSyntheticLambda0;-><init>()V

    .line 476
    .local v4, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    iget-object v5, p0, Lj$/util/stream/ForEachOps$ForEachOrderedTask;->helper:Lj$/util/stream/PipelineHelper;

    iget-object v6, p0, Lj$/util/stream/ForEachOps$ForEachOrderedTask;->helper:Lj$/util/stream/PipelineHelper;

    .line 477
    invoke-virtual {v6, v0}, Lj$/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Lj$/util/Spliterator;)J

    move-result-wide v6

    .line 476
    invoke-virtual {v5, v6, v7, v4}, Lj$/util/stream/PipelineHelper;->makeNodeBuilder(JLjava/util/function/IntFunction;)Lj$/util/stream/Node$Builder;

    move-result-object v5

    .line 479
    .local v5, "nb":Lj$/util/stream/Node$Builder;, "Ljava/util/stream/Node$Builder<TT;>;"
    iget-object v6, p0, Lj$/util/stream/ForEachOps$ForEachOrderedTask;->helper:Lj$/util/stream/PipelineHelper;

    invoke-virtual {v6, v5, v0}, Lj$/util/stream/PipelineHelper;->wrapAndCopyInto(Lj$/util/stream/Sink;Lj$/util/Spliterator;)Lj$/util/stream/Sink;

    move-result-object v6

    check-cast v6, Lj$/util/stream/Node$Builder;

    invoke-interface {v6}, Lj$/util/stream/Node$Builder;->build()Lj$/util/stream/Node;

    move-result-object v6

    iput-object v6, p0, Lj$/util/stream/ForEachOps$ForEachOrderedTask;->node:Lj$/util/stream/Node;

    .line 480
    const/4 v6, 0x0

    iput-object v6, p0, Lj$/util/stream/ForEachOps$ForEachOrderedTask;->spliterator:Lj$/util/Spliterator;

    .line 482
    .end local v4    # "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    .end local v5    # "nb":Lj$/util/stream/Node$Builder;, "Ljava/util/stream/Node$Builder<TT;>;"
    :cond_4
    invoke-virtual {p0}, Lj$/util/stream/ForEachOps$ForEachOrderedTask;->tryComplete()V

    .line 483
    return-void
.end method

.method static synthetic lambda$doCompute$0(I)[Ljava/lang/Object;
    .locals 1
    .param p0, "size"    # I

    .line 475
    new-array v0, p0, [Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final compute()V
    .locals 0

    .line 399
    .local p0, "this":Lj$/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    invoke-static {p0}, Lj$/util/stream/ForEachOps$ForEachOrderedTask;->doCompute(Lj$/util/stream/ForEachOps$ForEachOrderedTask;)V

    .line 400
    return-void
.end method

.method public onCompletion(Ljava/util/concurrent/CountedCompleter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter<",
            "*>;)V"
        }
    .end annotation

    .line 487
    .local p0, "this":Lj$/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    .local p1, "caller":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    iget-object v0, p0, Lj$/util/stream/ForEachOps$ForEachOrderedTask;->node:Lj$/util/stream/Node;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lj$/util/stream/ForEachOps$ForEachOrderedTask;->node:Lj$/util/stream/Node;

    iget-object v2, p0, Lj$/util/stream/ForEachOps$ForEachOrderedTask;->action:Lj$/util/stream/Sink;

    invoke-interface {v0, v2}, Lj$/util/stream/Node;->forEach(Ljava/util/function/Consumer;)V

    .line 490
    iput-object v1, p0, Lj$/util/stream/ForEachOps$ForEachOrderedTask;->node:Lj$/util/stream/Node;

    goto :goto_0

    .line 492
    :cond_0
    iget-object v0, p0, Lj$/util/stream/ForEachOps$ForEachOrderedTask;->spliterator:Lj$/util/Spliterator;

    if-eqz v0, :cond_1

    .line 494
    iget-object v0, p0, Lj$/util/stream/ForEachOps$ForEachOrderedTask;->helper:Lj$/util/stream/PipelineHelper;

    iget-object v2, p0, Lj$/util/stream/ForEachOps$ForEachOrderedTask;->action:Lj$/util/stream/Sink;

    iget-object v3, p0, Lj$/util/stream/ForEachOps$ForEachOrderedTask;->spliterator:Lj$/util/Spliterator;

    invoke-virtual {v0, v2, v3}, Lj$/util/stream/PipelineHelper;->wrapAndCopyInto(Lj$/util/stream/Sink;Lj$/util/Spliterator;)Lj$/util/stream/Sink;

    .line 495
    iput-object v1, p0, Lj$/util/stream/ForEachOps$ForEachOrderedTask;->spliterator:Lj$/util/Spliterator;

    .line 502
    :cond_1
    :goto_0
    iget-object v0, p0, Lj$/util/stream/ForEachOps$ForEachOrderedTask;->completionMap:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/stream/ForEachOps$ForEachOrderedTask;

    .line 503
    .local v0, "leftDescendant":Lj$/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    if-eqz v0, :cond_2

    .line 504
    invoke-virtual {v0}, Lj$/util/stream/ForEachOps$ForEachOrderedTask;->tryComplete()V

    .line 505
    :cond_2
    return-void
.end method
