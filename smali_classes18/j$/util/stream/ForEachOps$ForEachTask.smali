.class final Lj$/util/stream/ForEachOps$ForEachTask;
.super Ljava/util/concurrent/CountedCompleter;
.source "ForEachOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/ForEachOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ForEachTask"
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
.field private final helper:Lj$/util/stream/PipelineHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/stream/PipelineHelper<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final sink:Lj$/util/stream/Sink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/stream/Sink<",
            "TS;>;"
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

.field private targetSize:J


# direct methods
.method constructor <init>(Lj$/util/stream/ForEachOps$ForEachTask;Lj$/util/Spliterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/ForEachOps$ForEachTask<",
            "TS;TT;>;",
            "Lj$/util/Spliterator<",
            "TS;>;)V"
        }
    .end annotation

    .line 270
    .local p0, "this":Lj$/util/stream/ForEachOps$ForEachTask;, "Ljava/util/stream/ForEachOps$ForEachTask<TS;TT;>;"
    .local p1, "parent":Lj$/util/stream/ForEachOps$ForEachTask;, "Ljava/util/stream/ForEachOps$ForEachTask<TS;TT;>;"
    .local p2, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TS;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 271
    iput-object p2, p0, Lj$/util/stream/ForEachOps$ForEachTask;->spliterator:Lj$/util/Spliterator;

    .line 272
    iget-object v0, p1, Lj$/util/stream/ForEachOps$ForEachTask;->sink:Lj$/util/stream/Sink;

    iput-object v0, p0, Lj$/util/stream/ForEachOps$ForEachTask;->sink:Lj$/util/stream/Sink;

    .line 273
    iget-wide v0, p1, Lj$/util/stream/ForEachOps$ForEachTask;->targetSize:J

    iput-wide v0, p0, Lj$/util/stream/ForEachOps$ForEachTask;->targetSize:J

    .line 274
    iget-object v0, p1, Lj$/util/stream/ForEachOps$ForEachTask;->helper:Lj$/util/stream/PipelineHelper;

    iput-object v0, p0, Lj$/util/stream/ForEachOps$ForEachTask;->helper:Lj$/util/stream/PipelineHelper;

    .line 275
    return-void
.end method

.method constructor <init>(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;Lj$/util/stream/Sink;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/PipelineHelper<",
            "TT;>;",
            "Lj$/util/Spliterator<",
            "TS;>;",
            "Lj$/util/stream/Sink<",
            "TS;>;)V"
        }
    .end annotation

    .line 262
    .local p0, "this":Lj$/util/stream/ForEachOps$ForEachTask;, "Ljava/util/stream/ForEachOps$ForEachTask<TS;TT;>;"
    .local p1, "helper":Lj$/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TT;>;"
    .local p2, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TS;>;"
    .local p3, "sink":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<TS;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 263
    iput-object p3, p0, Lj$/util/stream/ForEachOps$ForEachTask;->sink:Lj$/util/stream/Sink;

    .line 264
    iput-object p1, p0, Lj$/util/stream/ForEachOps$ForEachTask;->helper:Lj$/util/stream/PipelineHelper;

    .line 265
    iput-object p2, p0, Lj$/util/stream/ForEachOps$ForEachTask;->spliterator:Lj$/util/Spliterator;

    .line 266
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lj$/util/stream/ForEachOps$ForEachTask;->targetSize:J

    .line 267
    return-void
.end method


# virtual methods
.method public compute()V
    .locals 12

    .line 279
    .local p0, "this":Lj$/util/stream/ForEachOps$ForEachTask;, "Ljava/util/stream/ForEachOps$ForEachTask<TS;TT;>;"
    iget-object v0, p0, Lj$/util/stream/ForEachOps$ForEachTask;->spliterator:Lj$/util/Spliterator;

    .line 280
    .local v0, "rightSplit":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TS;>;"
    invoke-interface {v0}, Lj$/util/Spliterator;->estimateSize()J

    move-result-wide v1

    .line 281
    .local v1, "sizeEstimate":J
    iget-wide v3, p0, Lj$/util/stream/ForEachOps$ForEachTask;->targetSize:J

    move-wide v5, v3

    .local v5, "sizeThreshold":J
    const-wide/16 v7, 0x0

    cmp-long v9, v3, v7

    if-nez v9, :cond_0

    .line 282
    invoke-static {v1, v2}, Lj$/util/stream/AbstractTask;->suggestTargetSize(J)J

    move-result-wide v3

    move-wide v5, v3

    iput-wide v3, p0, Lj$/util/stream/ForEachOps$ForEachTask;->targetSize:J

    .line 283
    :cond_0
    sget-object v3, Lj$/util/stream/StreamOpFlag;->SHORT_CIRCUIT:Lj$/util/stream/StreamOpFlag;

    iget-object v4, p0, Lj$/util/stream/ForEachOps$ForEachTask;->helper:Lj$/util/stream/PipelineHelper;

    invoke-virtual {v4}, Lj$/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v4

    invoke-virtual {v3, v4}, Lj$/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v3

    .line 284
    .local v3, "isShortCircuit":Z
    const/4 v4, 0x0

    .line 285
    .local v4, "forkRight":Z
    iget-object v7, p0, Lj$/util/stream/ForEachOps$ForEachTask;->sink:Lj$/util/stream/Sink;

    .line 286
    .local v7, "taskSink":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<TS;>;"
    move-object v8, p0

    .line 287
    .local v8, "task":Lj$/util/stream/ForEachOps$ForEachTask;, "Ljava/util/stream/ForEachOps$ForEachTask<TS;TT;>;"
    :goto_0
    if-eqz v3, :cond_1

    invoke-interface {v7}, Lj$/util/stream/Sink;->cancellationRequested()Z

    move-result v9

    if-nez v9, :cond_5

    .line 288
    :cond_1
    cmp-long v9, v1, v5

    if-lez v9, :cond_4

    .line 289
    invoke-interface {v0}, Lj$/util/Spliterator;->trySplit()Lj$/util/Spliterator;

    move-result-object v9

    move-object v10, v9

    .local v10, "leftSplit":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TS;>;"
    if-nez v9, :cond_2

    goto :goto_2

    .line 293
    :cond_2
    new-instance v9, Lj$/util/stream/ForEachOps$ForEachTask;

    invoke-direct {v9, v8, v10}, Lj$/util/stream/ForEachOps$ForEachTask;-><init>(Lj$/util/stream/ForEachOps$ForEachTask;Lj$/util/Spliterator;)V

    .line 294
    .local v9, "leftTask":Lj$/util/stream/ForEachOps$ForEachTask;, "Ljava/util/stream/ForEachOps$ForEachTask<TS;TT;>;"
    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Lj$/util/stream/ForEachOps$ForEachTask;->addToPendingCount(I)V

    .line 296
    if-eqz v4, :cond_3

    .line 297
    const/4 v4, 0x0

    .line 298
    move-object v0, v10

    .line 299
    move-object v11, v8

    .line 300
    .local v11, "taskToFork":Lj$/util/stream/ForEachOps$ForEachTask;, "Ljava/util/stream/ForEachOps$ForEachTask<TS;TT;>;"
    move-object v8, v9

    goto :goto_1

    .line 303
    .end local v11    # "taskToFork":Lj$/util/stream/ForEachOps$ForEachTask;, "Ljava/util/stream/ForEachOps$ForEachTask<TS;TT;>;"
    :cond_3
    const/4 v4, 0x1

    .line 304
    move-object v11, v9

    .line 306
    .restart local v11    # "taskToFork":Lj$/util/stream/ForEachOps$ForEachTask;, "Ljava/util/stream/ForEachOps$ForEachTask<TS;TT;>;"
    :goto_1
    invoke-virtual {v11}, Lj$/util/stream/ForEachOps$ForEachTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    .line 307
    invoke-interface {v0}, Lj$/util/Spliterator;->estimateSize()J

    move-result-wide v1

    .line 308
    .end local v9    # "leftTask":Lj$/util/stream/ForEachOps$ForEachTask;, "Ljava/util/stream/ForEachOps$ForEachTask<TS;TT;>;"
    .end local v11    # "taskToFork":Lj$/util/stream/ForEachOps$ForEachTask;, "Ljava/util/stream/ForEachOps$ForEachTask<TS;TT;>;"
    goto :goto_0

    .line 290
    .end local v10    # "leftSplit":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TS;>;"
    :cond_4
    :goto_2
    iget-object v9, v8, Lj$/util/stream/ForEachOps$ForEachTask;->helper:Lj$/util/stream/PipelineHelper;

    invoke-virtual {v9, v7, v0}, Lj$/util/stream/PipelineHelper;->copyInto(Lj$/util/stream/Sink;Lj$/util/Spliterator;)V

    .line 291
    nop

    .line 309
    :cond_5
    const/4 v9, 0x0

    iput-object v9, v8, Lj$/util/stream/ForEachOps$ForEachTask;->spliterator:Lj$/util/Spliterator;

    .line 310
    invoke-virtual {v8}, Lj$/util/stream/ForEachOps$ForEachTask;->propagateCompletion()V

    .line 311
    return-void
.end method
