.class Lj$/util/stream/SliceOps$3;
.super Lj$/util/stream/LongPipeline$StatefulOp;
.source "SliceOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/stream/SliceOps;->makeLong(Lj$/util/stream/AbstractPipeline;JJ)Lj$/util/stream/LongStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/stream/LongPipeline$StatefulOp<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$limit:J

.field final synthetic val$skip:J


# direct methods
.method constructor <init>(Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;IJJ)V
    .locals 0
    .param p2, "inputShape"    # Lj$/util/stream/StreamShape;
    .param p3, "opFlags"    # I

    .line 340
    .local p1, "upstream":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Long;*>;"
    iput-wide p4, p0, Lj$/util/stream/SliceOps$3;->val$skip:J

    iput-wide p6, p0, Lj$/util/stream/SliceOps$3;->val$limit:J

    invoke-direct {p0, p1, p2, p3}, Lj$/util/stream/LongPipeline$StatefulOp;-><init>(Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;I)V

    return-void
.end method

.method static synthetic lambda$opEvaluateParallelLazy$0(I)[Ljava/lang/Long;
    .locals 1
    .param p0, "x$0"    # I

    .line 367
    new-array v0, p0, [Ljava/lang/Long;

    return-object v0
.end method


# virtual methods
.method opEvaluateParallel(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/Node;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/stream/PipelineHelper<",
            "Ljava/lang/Long;",
            ">;",
            "Lj$/util/Spliterator<",
            "TP_IN;>;",
            "Ljava/util/function/IntFunction<",
            "[",
            "Ljava/lang/Long;",
            ">;)",
            "Lj$/util/stream/Node<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 376
    .local p1, "helper":Lj$/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Long;>;"
    .local p2, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p3, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[Ljava/lang/Long;>;"
    move-object v9, p0

    invoke-virtual/range {p1 .. p2}, Lj$/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Lj$/util/Spliterator;)J

    move-result-wide v10

    .line 377
    .local v10, "size":J
    const-wide/16 v0, 0x0

    const/4 v8, 0x1

    cmp-long v2, v10, v0

    if-lez v2, :cond_1

    const/16 v0, 0x4000

    move-object/from16 v12, p2

    invoke-interface {v12, v0}, Lj$/util/Spliterator;->hasCharacteristics(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    invoke-virtual/range {p1 .. p1}, Lj$/util/stream/PipelineHelper;->getSourceShape()Lj$/util/stream/StreamShape;

    move-result-object v1

    iget-wide v3, v9, Lj$/util/stream/SliceOps$3;->val$skip:J

    iget-wide v5, v9, Lj$/util/stream/SliceOps$3;->val$limit:J

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v6}, Lj$/util/stream/SliceOps;->-$$Nest$smsliceSpliterator(Lj$/util/stream/StreamShape;Lj$/util/Spliterator;JJ)Lj$/util/Spliterator;

    move-result-object v0

    .line 384
    .local v0, "s":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    move-object/from16 v13, p1

    invoke-static {v13, v0, v8}, Lj$/util/stream/Nodes;->collectLong(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;Z)Lj$/util/stream/Node$OfLong;

    move-result-object v1

    return-object v1

    .line 377
    .end local v0    # "s":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    :cond_0
    move-object/from16 v13, p1

    goto :goto_0

    :cond_1
    move-object/from16 v13, p1

    move-object/from16 v12, p2

    .line 385
    :goto_0
    sget-object v0, Lj$/util/stream/StreamOpFlag;->ORDERED:Lj$/util/stream/StreamOpFlag;

    invoke-virtual/range {p1 .. p1}, Lj$/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Lj$/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 386
    nop

    .line 387
    invoke-virtual/range {p1 .. p2}, Lj$/util/stream/PipelineHelper;->wrapSpliterator(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lj$/util/Spliterator$OfLong;

    iget-wide v2, v9, Lj$/util/stream/SliceOps$3;->val$skip:J

    iget-wide v4, v9, Lj$/util/stream/SliceOps$3;->val$limit:J

    .line 386
    move-object v0, p0

    move-wide v6, v10

    invoke-virtual/range {v0 .. v7}, Lj$/util/stream/SliceOps$3;->unorderedSkipLimitSpliterator(Lj$/util/Spliterator$OfLong;JJJ)Lj$/util/Spliterator$OfLong;

    move-result-object v0

    .line 393
    .local v0, "s":Lj$/util/Spliterator$OfLong;
    invoke-static {p0, v0, v8}, Lj$/util/stream/Nodes;->collectLong(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;Z)Lj$/util/stream/Node$OfLong;

    move-result-object v1

    return-object v1

    .line 396
    .end local v0    # "s":Lj$/util/Spliterator$OfLong;
    :cond_2
    new-instance v14, Lj$/util/stream/SliceOps$SliceTask;

    iget-wide v5, v9, Lj$/util/stream/SliceOps$3;->val$skip:J

    iget-wide v7, v9, Lj$/util/stream/SliceOps$3;->val$limit:J

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v8}, Lj$/util/stream/SliceOps$SliceTask;-><init>(Lj$/util/stream/AbstractPipeline;Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;Ljava/util/function/IntFunction;JJ)V

    .line 397
    invoke-virtual {v14}, Lj$/util/stream/SliceOps$SliceTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/stream/Node;

    .line 396
    return-object v0
.end method

.method opEvaluateParallelLazy(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/stream/PipelineHelper<",
            "Ljava/lang/Long;",
            ">;",
            "Lj$/util/Spliterator<",
            "TP_IN;>;)",
            "Lj$/util/Spliterator<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 355
    .local p1, "helper":Lj$/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Long;>;"
    .local p2, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    move-object v9, p0

    invoke-virtual/range {p1 .. p2}, Lj$/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Lj$/util/Spliterator;)J

    move-result-wide v10

    .line 356
    .local v10, "size":J
    const-wide/16 v0, 0x0

    cmp-long v2, v10, v0

    if-lez v2, :cond_0

    const/16 v0, 0x4000

    move-object/from16 v12, p2

    invoke-interface {v12, v0}, Lj$/util/Spliterator;->hasCharacteristics(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    new-instance v0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfLong;

    .line 358
    invoke-virtual/range {p1 .. p2}, Lj$/util/stream/PipelineHelper;->wrapSpliterator(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lj$/util/Spliterator$OfLong;

    iget-wide v3, v9, Lj$/util/stream/SliceOps$3;->val$skip:J

    iget-wide v5, v9, Lj$/util/stream/SliceOps$3;->val$skip:J

    iget-wide v7, v9, Lj$/util/stream/SliceOps$3;->val$limit:J

    .line 360
    invoke-static {v5, v6, v7, v8}, Lj$/util/stream/SliceOps;->-$$Nest$smcalcSliceFence(JJ)J

    move-result-wide v5

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfLong;-><init>(Lj$/util/Spliterator$OfLong;JJ)V

    .line 357
    return-object v0

    .line 356
    :cond_0
    move-object/from16 v12, p2

    .line 361
    :cond_1
    sget-object v0, Lj$/util/stream/StreamOpFlag;->ORDERED:Lj$/util/stream/StreamOpFlag;

    invoke-virtual {p1}, Lj$/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Lj$/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 362
    nop

    .line 363
    invoke-virtual/range {p1 .. p2}, Lj$/util/stream/PipelineHelper;->wrapSpliterator(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lj$/util/Spliterator$OfLong;

    iget-wide v2, v9, Lj$/util/stream/SliceOps$3;->val$skip:J

    iget-wide v4, v9, Lj$/util/stream/SliceOps$3;->val$limit:J

    .line 362
    move-object v0, p0

    move-wide v6, v10

    invoke-virtual/range {v0 .. v7}, Lj$/util/stream/SliceOps$3;->unorderedSkipLimitSpliterator(Lj$/util/Spliterator$OfLong;JJJ)Lj$/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0

    .line 367
    :cond_2
    new-instance v13, Lj$/util/stream/SliceOps$SliceTask;

    new-instance v4, Lj$/util/stream/SliceOps$3$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lj$/util/stream/SliceOps$3$$ExternalSyntheticLambda0;-><init>()V

    iget-wide v5, v9, Lj$/util/stream/SliceOps$3;->val$skip:J

    iget-wide v7, v9, Lj$/util/stream/SliceOps$3;->val$limit:J

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v0 .. v8}, Lj$/util/stream/SliceOps$SliceTask;-><init>(Lj$/util/stream/AbstractPipeline;Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;Ljava/util/function/IntFunction;JJ)V

    .line 368
    invoke-virtual {v13}, Lj$/util/stream/SliceOps$SliceTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/stream/Node;

    invoke-interface {v0}, Lj$/util/stream/Node;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    .line 367
    return-object v0
.end method

.method opWrapSink(ILj$/util/stream/Sink;)Lj$/util/stream/Sink;
    .locals 1
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lj$/util/stream/Sink<",
            "Ljava/lang/Long;",
            ">;)",
            "Lj$/util/stream/Sink<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 403
    .local p2, "sink":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<Ljava/lang/Long;>;"
    new-instance v0, Lj$/util/stream/SliceOps$3$1;

    invoke-direct {v0, p0, p2}, Lj$/util/stream/SliceOps$3$1;-><init>(Lj$/util/stream/SliceOps$3;Lj$/util/stream/Sink;)V

    return-object v0
.end method

.method unorderedSkipLimitSpliterator(Lj$/util/Spliterator$OfLong;JJJ)Lj$/util/Spliterator$OfLong;
    .locals 7
    .param p1, "s"    # Lj$/util/Spliterator$OfLong;
    .param p2, "skip"    # J
    .param p4, "limit"    # J
    .param p6, "sizeIfKnown"    # J

    .line 343
    cmp-long v0, p2, p6

    if-gtz v0, :cond_1

    .line 346
    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    sub-long v0, p6, p2

    if-ltz v2, :cond_0

    invoke-static {p4, p5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_0
    move-wide p4, v0

    .line 347
    const-wide/16 p2, 0x0

    .line 349
    :cond_1
    new-instance v6, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfLong;

    move-object v0, v6

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfLong;-><init>(Lj$/util/Spliterator$OfLong;JJ)V

    return-object v6
.end method
