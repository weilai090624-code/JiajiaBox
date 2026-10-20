.class Lj$/util/stream/SliceOps$1;
.super Lj$/util/stream/ReferencePipeline$StatefulOp;
.source "SliceOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/stream/SliceOps;->makeRef(Lj$/util/stream/AbstractPipeline;JJ)Lj$/util/stream/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/stream/ReferencePipeline$StatefulOp<",
        "TT;TT;>;"
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

    .line 115
    .local p1, "upstream":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*TT;*>;"
    iput-wide p4, p0, Lj$/util/stream/SliceOps$1;->val$skip:J

    iput-wide p6, p0, Lj$/util/stream/SliceOps$1;->val$limit:J

    invoke-direct {p0, p1, p2, p3}, Lj$/util/stream/ReferencePipeline$StatefulOp;-><init>(Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;I)V

    return-void
.end method


# virtual methods
.method opEvaluateParallel(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/Node;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/stream/PipelineHelper<",
            "TT;>;",
            "Lj$/util/Spliterator<",
            "TP_IN;>;",
            "Ljava/util/function/IntFunction<",
            "[TT;>;)",
            "Lj$/util/stream/Node<",
            "TT;>;"
        }
    .end annotation

    .line 158
    .local p1, "helper":Lj$/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TT;>;"
    .local p2, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p3, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    move-object/from16 v9, p0

    move-object/from16 v10, p3

    invoke-virtual/range {p1 .. p2}, Lj$/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Lj$/util/Spliterator;)J

    move-result-wide v11

    .line 159
    .local v11, "size":J
    const-wide/16 v0, 0x0

    const/4 v8, 0x1

    cmp-long v2, v11, v0

    if-lez v2, :cond_1

    const/16 v0, 0x4000

    move-object/from16 v13, p2

    invoke-interface {v13, v0}, Lj$/util/Spliterator;->hasCharacteristics(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual/range {p1 .. p1}, Lj$/util/stream/PipelineHelper;->getSourceShape()Lj$/util/stream/StreamShape;

    move-result-object v1

    iget-wide v3, v9, Lj$/util/stream/SliceOps$1;->val$skip:J

    iget-wide v5, v9, Lj$/util/stream/SliceOps$1;->val$limit:J

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v6}, Lj$/util/stream/SliceOps;->-$$Nest$smsliceSpliterator(Lj$/util/stream/StreamShape;Lj$/util/Spliterator;JJ)Lj$/util/Spliterator;

    move-result-object v0

    .line 166
    .local v0, "s":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    move-object/from16 v14, p1

    invoke-static {v14, v0, v8, v10}, Lj$/util/stream/Nodes;->collect(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/Node;

    move-result-object v1

    return-object v1

    .line 159
    .end local v0    # "s":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    :cond_0
    move-object/from16 v14, p1

    goto :goto_0

    :cond_1
    move-object/from16 v14, p1

    move-object/from16 v13, p2

    .line 167
    :goto_0
    sget-object v0, Lj$/util/stream/StreamOpFlag;->ORDERED:Lj$/util/stream/StreamOpFlag;

    invoke-virtual/range {p1 .. p1}, Lj$/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Lj$/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 168
    nop

    .line 169
    invoke-virtual/range {p1 .. p2}, Lj$/util/stream/PipelineHelper;->wrapSpliterator(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object v1

    iget-wide v2, v9, Lj$/util/stream/SliceOps$1;->val$skip:J

    iget-wide v4, v9, Lj$/util/stream/SliceOps$1;->val$limit:J

    .line 168
    move-object/from16 v0, p0

    move-wide v6, v11

    invoke-virtual/range {v0 .. v7}, Lj$/util/stream/SliceOps$1;->unorderedSkipLimitSpliterator(Lj$/util/Spliterator;JJJ)Lj$/util/Spliterator;

    move-result-object v0

    .line 175
    .local v0, "s":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    invoke-static {v9, v0, v8, v10}, Lj$/util/stream/Nodes;->collect(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/Node;

    move-result-object v1

    return-object v1

    .line 178
    .end local v0    # "s":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    :cond_2
    new-instance v15, Lj$/util/stream/SliceOps$SliceTask;

    iget-wide v5, v9, Lj$/util/stream/SliceOps$1;->val$skip:J

    iget-wide v7, v9, Lj$/util/stream/SliceOps$1;->val$limit:J

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v8}, Lj$/util/stream/SliceOps$SliceTask;-><init>(Lj$/util/stream/AbstractPipeline;Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;Ljava/util/function/IntFunction;JJ)V

    .line 179
    invoke-virtual {v15}, Lj$/util/stream/SliceOps$SliceTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/stream/Node;

    .line 178
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
            "TT;>;",
            "Lj$/util/Spliterator<",
            "TP_IN;>;)",
            "Lj$/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 129
    .local p1, "helper":Lj$/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TT;>;"
    .local p2, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    move-object v9, p0

    invoke-virtual/range {p1 .. p2}, Lj$/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Lj$/util/Spliterator;)J

    move-result-wide v10

    .line 130
    .local v10, "size":J
    const-wide/16 v0, 0x0

    cmp-long v2, v10, v0

    if-lez v2, :cond_0

    const/16 v0, 0x4000

    move-object/from16 v12, p2

    invoke-interface {v12, v0}, Lj$/util/Spliterator;->hasCharacteristics(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    new-instance v0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;

    .line 132
    invoke-virtual/range {p1 .. p2}, Lj$/util/stream/PipelineHelper;->wrapSpliterator(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object v2

    iget-wide v3, v9, Lj$/util/stream/SliceOps$1;->val$skip:J

    iget-wide v5, v9, Lj$/util/stream/SliceOps$1;->val$skip:J

    iget-wide v7, v9, Lj$/util/stream/SliceOps$1;->val$limit:J

    .line 134
    invoke-static {v5, v6, v7, v8}, Lj$/util/stream/SliceOps;->-$$Nest$smcalcSliceFence(JJ)J

    move-result-wide v5

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;-><init>(Lj$/util/Spliterator;JJ)V

    .line 131
    return-object v0

    .line 130
    :cond_0
    move-object/from16 v12, p2

    .line 135
    :cond_1
    sget-object v0, Lj$/util/stream/StreamOpFlag;->ORDERED:Lj$/util/stream/StreamOpFlag;

    invoke-virtual {p1}, Lj$/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Lj$/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 136
    nop

    .line 137
    invoke-virtual/range {p1 .. p2}, Lj$/util/stream/PipelineHelper;->wrapSpliterator(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object v1

    iget-wide v2, v9, Lj$/util/stream/SliceOps$1;->val$skip:J

    iget-wide v4, v9, Lj$/util/stream/SliceOps$1;->val$limit:J

    .line 136
    move-object v0, p0

    move-wide v6, v10

    invoke-virtual/range {v0 .. v7}, Lj$/util/stream/SliceOps$1;->unorderedSkipLimitSpliterator(Lj$/util/Spliterator;JJJ)Lj$/util/Spliterator;

    move-result-object v0

    return-object v0

    .line 149
    :cond_2
    new-instance v13, Lj$/util/stream/SliceOps$SliceTask;

    invoke-static {}, Lj$/util/stream/Nodes;->castingArray()Ljava/util/function/IntFunction;

    move-result-object v4

    iget-wide v5, v9, Lj$/util/stream/SliceOps$1;->val$skip:J

    iget-wide v7, v9, Lj$/util/stream/SliceOps$1;->val$limit:J

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v0 .. v8}, Lj$/util/stream/SliceOps$SliceTask;-><init>(Lj$/util/stream/AbstractPipeline;Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;Ljava/util/function/IntFunction;JJ)V

    .line 150
    invoke-virtual {v13}, Lj$/util/stream/SliceOps$SliceTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/stream/Node;

    invoke-interface {v0}, Lj$/util/stream/Node;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    .line 149
    return-object v0
.end method

.method opWrapSink(ILj$/util/stream/Sink;)Lj$/util/stream/Sink;
    .locals 1
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lj$/util/stream/Sink<",
            "TT;>;)",
            "Lj$/util/stream/Sink<",
            "TT;>;"
        }
    .end annotation

    .line 185
    .local p2, "sink":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<TT;>;"
    new-instance v0, Lj$/util/stream/SliceOps$1$1;

    invoke-direct {v0, p0, p2}, Lj$/util/stream/SliceOps$1$1;-><init>(Lj$/util/stream/SliceOps$1;Lj$/util/stream/Sink;)V

    return-object v0
.end method

.method unorderedSkipLimitSpliterator(Lj$/util/Spliterator;JJJ)Lj$/util/Spliterator;
    .locals 7
    .param p2, "skip"    # J
    .param p4, "limit"    # J
    .param p6, "sizeIfKnown"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/Spliterator<",
            "TT;>;JJJ)",
            "Lj$/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 118
    .local p1, "s":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    cmp-long v0, p2, p6

    if-gtz v0, :cond_1

    .line 121
    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    sub-long v0, p6, p2

    if-ltz v2, :cond_0

    invoke-static {p4, p5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_0
    move-wide p4, v0

    .line 122
    const-wide/16 p2, 0x0

    .line 124
    :cond_1
    new-instance v6, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;

    move-object v0, v6

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;-><init>(Lj$/util/Spliterator;JJ)V

    return-object v6
.end method
