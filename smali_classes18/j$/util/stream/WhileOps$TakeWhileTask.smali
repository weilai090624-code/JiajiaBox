.class final Lj$/util/stream/WhileOps$TakeWhileTask;
.super Lj$/util/stream/AbstractShortCircuitTask;
.source "WhileOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/WhileOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TakeWhileTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        "P_OUT:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/stream/AbstractShortCircuitTask<",
        "TP_IN;TP_OUT;",
        "Lj$/util/stream/Node<",
        "TP_OUT;>;",
        "Lj$/util/stream/WhileOps$TakeWhileTask<",
        "TP_IN;TP_OUT;>;>;"
    }
.end annotation


# instance fields
.field private volatile completed:Z

.field private final generator:Ljava/util/function/IntFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/IntFunction<",
            "[TP_OUT;>;"
        }
    .end annotation
.end field

.field private final isOrdered:Z

.field private final op:Lj$/util/stream/AbstractPipeline;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/stream/AbstractPipeline<",
            "TP_OUT;TP_OUT;*>;"
        }
    .end annotation
.end field

.field private shortCircuited:Z

.field private thisNodeSize:J


# direct methods
.method constructor <init>(Lj$/util/stream/AbstractPipeline;Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/AbstractPipeline<",
            "TP_OUT;TP_OUT;*>;",
            "Lj$/util/stream/PipelineHelper<",
            "TP_OUT;>;",
            "Lj$/util/Spliterator<",
            "TP_IN;>;",
            "Ljava/util/function/IntFunction<",
            "[TP_OUT;>;)V"
        }
    .end annotation

    .line 1180
    .local p0, "this":Lj$/util/stream/WhileOps$TakeWhileTask;, "Ljava/util/stream/WhileOps$TakeWhileTask<TP_IN;TP_OUT;>;"
    .local p1, "op":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TP_OUT;TP_OUT;*>;"
    .local p2, "helper":Lj$/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TP_OUT;>;"
    .local p3, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p4, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TP_OUT;>;"
    invoke-direct {p0, p2, p3}, Lj$/util/stream/AbstractShortCircuitTask;-><init>(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;)V

    .line 1181
    iput-object p1, p0, Lj$/util/stream/WhileOps$TakeWhileTask;->op:Lj$/util/stream/AbstractPipeline;

    .line 1182
    iput-object p4, p0, Lj$/util/stream/WhileOps$TakeWhileTask;->generator:Ljava/util/function/IntFunction;

    .line 1183
    sget-object v0, Lj$/util/stream/StreamOpFlag;->ORDERED:Lj$/util/stream/StreamOpFlag;

    invoke-virtual {p2}, Lj$/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Lj$/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    iput-boolean v0, p0, Lj$/util/stream/WhileOps$TakeWhileTask;->isOrdered:Z

    .line 1184
    return-void
.end method

.method constructor <init>(Lj$/util/stream/WhileOps$TakeWhileTask;Lj$/util/Spliterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/WhileOps$TakeWhileTask<",
            "TP_IN;TP_OUT;>;",
            "Lj$/util/Spliterator<",
            "TP_IN;>;)V"
        }
    .end annotation

    .line 1187
    .local p0, "this":Lj$/util/stream/WhileOps$TakeWhileTask;, "Ljava/util/stream/WhileOps$TakeWhileTask<TP_IN;TP_OUT;>;"
    .local p1, "parent":Lj$/util/stream/WhileOps$TakeWhileTask;, "Ljava/util/stream/WhileOps$TakeWhileTask<TP_IN;TP_OUT;>;"
    .local p2, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-direct {p0, p1, p2}, Lj$/util/stream/AbstractShortCircuitTask;-><init>(Lj$/util/stream/AbstractShortCircuitTask;Lj$/util/Spliterator;)V

    .line 1188
    iget-object v0, p1, Lj$/util/stream/WhileOps$TakeWhileTask;->op:Lj$/util/stream/AbstractPipeline;

    iput-object v0, p0, Lj$/util/stream/WhileOps$TakeWhileTask;->op:Lj$/util/stream/AbstractPipeline;

    .line 1189
    iget-object v0, p1, Lj$/util/stream/WhileOps$TakeWhileTask;->generator:Ljava/util/function/IntFunction;

    iput-object v0, p0, Lj$/util/stream/WhileOps$TakeWhileTask;->generator:Ljava/util/function/IntFunction;

    .line 1190
    iget-boolean v0, p1, Lj$/util/stream/WhileOps$TakeWhileTask;->isOrdered:Z

    iput-boolean v0, p0, Lj$/util/stream/WhileOps$TakeWhileTask;->isOrdered:Z

    .line 1191
    return-void
.end method


# virtual methods
.method protected cancel()V
    .locals 1

    .line 1266
    .local p0, "this":Lj$/util/stream/WhileOps$TakeWhileTask;, "Ljava/util/stream/WhileOps$TakeWhileTask<TP_IN;TP_OUT;>;"
    invoke-super {p0}, Lj$/util/stream/AbstractShortCircuitTask;->cancel()V

    .line 1267
    iget-boolean v0, p0, Lj$/util/stream/WhileOps$TakeWhileTask;->isOrdered:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lj$/util/stream/WhileOps$TakeWhileTask;->completed:Z

    if-eqz v0, :cond_0

    .line 1270
    invoke-virtual {p0}, Lj$/util/stream/WhileOps$TakeWhileTask;->getEmptyResult()Lj$/util/stream/Node;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/util/stream/WhileOps$TakeWhileTask;->setLocalResult(Ljava/lang/Object;)V

    .line 1271
    :cond_0
    return-void
.end method

.method protected final doLeaf()Lj$/util/stream/Node;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/stream/Node<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 1205
    .local p0, "this":Lj$/util/stream/WhileOps$TakeWhileTask;, "Ljava/util/stream/WhileOps$TakeWhileTask<TP_IN;TP_OUT;>;"
    iget-object v0, p0, Lj$/util/stream/WhileOps$TakeWhileTask;->helper:Lj$/util/stream/PipelineHelper;

    const-wide/16 v1, -0x1

    iget-object v3, p0, Lj$/util/stream/WhileOps$TakeWhileTask;->generator:Ljava/util/function/IntFunction;

    invoke-virtual {v0, v1, v2, v3}, Lj$/util/stream/PipelineHelper;->makeNodeBuilder(JLjava/util/function/IntFunction;)Lj$/util/stream/Node$Builder;

    move-result-object v0

    .line 1206
    .local v0, "builder":Lj$/util/stream/Node$Builder;, "Ljava/util/stream/Node$Builder<TP_OUT;>;"
    iget-object v1, p0, Lj$/util/stream/WhileOps$TakeWhileTask;->op:Lj$/util/stream/AbstractPipeline;

    iget-object v2, p0, Lj$/util/stream/WhileOps$TakeWhileTask;->helper:Lj$/util/stream/PipelineHelper;

    invoke-virtual {v2}, Lj$/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lj$/util/stream/AbstractPipeline;->opWrapSink(ILj$/util/stream/Sink;)Lj$/util/stream/Sink;

    move-result-object v1

    .line 1208
    .local v1, "s":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<TP_OUT;>;"
    iget-object v2, p0, Lj$/util/stream/WhileOps$TakeWhileTask;->helper:Lj$/util/stream/PipelineHelper;

    iget-object v3, p0, Lj$/util/stream/WhileOps$TakeWhileTask;->helper:Lj$/util/stream/PipelineHelper;

    invoke-virtual {v3, v1}, Lj$/util/stream/PipelineHelper;->wrapSink(Lj$/util/stream/Sink;)Lj$/util/stream/Sink;

    move-result-object v3

    iget-object v4, p0, Lj$/util/stream/WhileOps$TakeWhileTask;->spliterator:Lj$/util/Spliterator;

    invoke-virtual {v2, v3, v4}, Lj$/util/stream/PipelineHelper;->copyIntoWithCancel(Lj$/util/stream/Sink;Lj$/util/Spliterator;)Z

    move-result v2

    iput-boolean v2, p0, Lj$/util/stream/WhileOps$TakeWhileTask;->shortCircuited:Z

    if-eqz v2, :cond_0

    .line 1211
    invoke-virtual {p0}, Lj$/util/stream/WhileOps$TakeWhileTask;->cancelLaterNodes()V

    .line 1214
    :cond_0
    invoke-interface {v0}, Lj$/util/stream/Node$Builder;->build()Lj$/util/stream/Node;

    move-result-object v2

    .line 1215
    .local v2, "node":Lj$/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    invoke-interface {v2}, Lj$/util/stream/Node;->count()J

    move-result-wide v3

    iput-wide v3, p0, Lj$/util/stream/WhileOps$TakeWhileTask;->thisNodeSize:J

    .line 1216
    return-object v2
.end method

.method protected bridge synthetic doLeaf()Ljava/lang/Object;
    .locals 1

    .line 1164
    .local p0, "this":Lj$/util/stream/WhileOps$TakeWhileTask;, "Ljava/util/stream/WhileOps$TakeWhileTask<TP_IN;TP_OUT;>;"
    invoke-virtual {p0}, Lj$/util/stream/WhileOps$TakeWhileTask;->doLeaf()Lj$/util/stream/Node;

    move-result-object v0

    return-object v0
.end method

.method protected final getEmptyResult()Lj$/util/stream/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/stream/Node<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 1200
    .local p0, "this":Lj$/util/stream/WhileOps$TakeWhileTask;, "Ljava/util/stream/WhileOps$TakeWhileTask<TP_IN;TP_OUT;>;"
    iget-object v0, p0, Lj$/util/stream/WhileOps$TakeWhileTask;->op:Lj$/util/stream/AbstractPipeline;

    invoke-virtual {v0}, Lj$/util/stream/AbstractPipeline;->getOutputShape()Lj$/util/stream/StreamShape;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/Nodes;->emptyNode(Lj$/util/stream/StreamShape;)Lj$/util/stream/Node;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getEmptyResult()Ljava/lang/Object;
    .locals 1

    .line 1164
    .local p0, "this":Lj$/util/stream/WhileOps$TakeWhileTask;, "Ljava/util/stream/WhileOps$TakeWhileTask<TP_IN;TP_OUT;>;"
    invoke-virtual {p0}, Lj$/util/stream/WhileOps$TakeWhileTask;->getEmptyResult()Lj$/util/stream/Node;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic makeChild(Lj$/util/Spliterator;)Lj$/util/stream/AbstractTask;
    .locals 0

    .line 1164
    .local p0, "this":Lj$/util/stream/WhileOps$TakeWhileTask;, "Ljava/util/stream/WhileOps$TakeWhileTask<TP_IN;TP_OUT;>;"
    invoke-virtual {p0, p1}, Lj$/util/stream/WhileOps$TakeWhileTask;->makeChild(Lj$/util/Spliterator;)Lj$/util/stream/WhileOps$TakeWhileTask;

    move-result-object p1

    return-object p1
.end method

.method protected makeChild(Lj$/util/Spliterator;)Lj$/util/stream/WhileOps$TakeWhileTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/Spliterator<",
            "TP_IN;>;)",
            "Lj$/util/stream/WhileOps$TakeWhileTask<",
            "TP_IN;TP_OUT;>;"
        }
    .end annotation

    .line 1195
    .local p0, "this":Lj$/util/stream/WhileOps$TakeWhileTask;, "Ljava/util/stream/WhileOps$TakeWhileTask<TP_IN;TP_OUT;>;"
    .local p1, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    new-instance v0, Lj$/util/stream/WhileOps$TakeWhileTask;

    invoke-direct {v0, p0, p1}, Lj$/util/stream/WhileOps$TakeWhileTask;-><init>(Lj$/util/stream/WhileOps$TakeWhileTask;Lj$/util/Spliterator;)V

    return-object v0
.end method

.method merge()Lj$/util/stream/Node;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/stream/Node<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 1247
    .local p0, "this":Lj$/util/stream/WhileOps$TakeWhileTask;, "Ljava/util/stream/WhileOps$TakeWhileTask<TP_IN;TP_OUT;>;"
    iget-object v0, p0, Lj$/util/stream/WhileOps$TakeWhileTask;->leftChild:Lj$/util/stream/AbstractTask;

    check-cast v0, Lj$/util/stream/WhileOps$TakeWhileTask;

    iget-wide v0, v0, Lj$/util/stream/WhileOps$TakeWhileTask;->thisNodeSize:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 1250
    iget-object v0, p0, Lj$/util/stream/WhileOps$TakeWhileTask;->rightChild:Lj$/util/stream/AbstractTask;

    check-cast v0, Lj$/util/stream/WhileOps$TakeWhileTask;

    invoke-virtual {v0}, Lj$/util/stream/WhileOps$TakeWhileTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/stream/Node;

    return-object v0

    .line 1252
    :cond_0
    iget-object v0, p0, Lj$/util/stream/WhileOps$TakeWhileTask;->rightChild:Lj$/util/stream/AbstractTask;

    check-cast v0, Lj$/util/stream/WhileOps$TakeWhileTask;

    iget-wide v0, v0, Lj$/util/stream/WhileOps$TakeWhileTask;->thisNodeSize:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 1255
    iget-object v0, p0, Lj$/util/stream/WhileOps$TakeWhileTask;->leftChild:Lj$/util/stream/AbstractTask;

    check-cast v0, Lj$/util/stream/WhileOps$TakeWhileTask;

    invoke-virtual {v0}, Lj$/util/stream/WhileOps$TakeWhileTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/stream/Node;

    return-object v0

    .line 1259
    :cond_1
    iget-object v0, p0, Lj$/util/stream/WhileOps$TakeWhileTask;->op:Lj$/util/stream/AbstractPipeline;

    invoke-virtual {v0}, Lj$/util/stream/AbstractPipeline;->getOutputShape()Lj$/util/stream/StreamShape;

    move-result-object v0

    iget-object v1, p0, Lj$/util/stream/WhileOps$TakeWhileTask;->leftChild:Lj$/util/stream/AbstractTask;

    check-cast v1, Lj$/util/stream/WhileOps$TakeWhileTask;

    .line 1260
    invoke-virtual {v1}, Lj$/util/stream/WhileOps$TakeWhileTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj$/util/stream/Node;

    iget-object v2, p0, Lj$/util/stream/WhileOps$TakeWhileTask;->rightChild:Lj$/util/stream/AbstractTask;

    check-cast v2, Lj$/util/stream/WhileOps$TakeWhileTask;

    invoke-virtual {v2}, Lj$/util/stream/WhileOps$TakeWhileTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj$/util/stream/Node;

    .line 1259
    invoke-static {v0, v1, v2}, Lj$/util/stream/Nodes;->conc(Lj$/util/stream/StreamShape;Lj$/util/stream/Node;Lj$/util/stream/Node;)Lj$/util/stream/Node;

    move-result-object v0

    return-object v0
.end method

.method public final onCompletion(Ljava/util/concurrent/CountedCompleter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter<",
            "*>;)V"
        }
    .end annotation

    .line 1221
    .local p0, "this":Lj$/util/stream/WhileOps$TakeWhileTask;, "Ljava/util/stream/WhileOps$TakeWhileTask<TP_IN;TP_OUT;>;"
    .local p1, "caller":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    invoke-virtual {p0}, Lj$/util/stream/WhileOps$TakeWhileTask;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1223
    iget-object v0, p0, Lj$/util/stream/WhileOps$TakeWhileTask;->leftChild:Lj$/util/stream/AbstractTask;

    check-cast v0, Lj$/util/stream/WhileOps$TakeWhileTask;

    iget-boolean v0, v0, Lj$/util/stream/WhileOps$TakeWhileTask;->shortCircuited:Z

    iget-object v1, p0, Lj$/util/stream/WhileOps$TakeWhileTask;->rightChild:Lj$/util/stream/AbstractTask;

    check-cast v1, Lj$/util/stream/WhileOps$TakeWhileTask;

    iget-boolean v1, v1, Lj$/util/stream/WhileOps$TakeWhileTask;->shortCircuited:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lj$/util/stream/WhileOps$TakeWhileTask;->shortCircuited:Z

    .line 1224
    iget-boolean v0, p0, Lj$/util/stream/WhileOps$TakeWhileTask;->isOrdered:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lj$/util/stream/WhileOps$TakeWhileTask;->canceled:Z

    if-eqz v0, :cond_0

    .line 1225
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lj$/util/stream/WhileOps$TakeWhileTask;->thisNodeSize:J

    .line 1226
    invoke-virtual {p0}, Lj$/util/stream/WhileOps$TakeWhileTask;->getEmptyResult()Lj$/util/stream/Node;

    move-result-object v0

    .local v0, "result":Lj$/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    goto :goto_0

    .line 1228
    .end local v0    # "result":Lj$/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    :cond_0
    iget-boolean v0, p0, Lj$/util/stream/WhileOps$TakeWhileTask;->isOrdered:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lj$/util/stream/WhileOps$TakeWhileTask;->leftChild:Lj$/util/stream/AbstractTask;

    check-cast v0, Lj$/util/stream/WhileOps$TakeWhileTask;

    iget-boolean v0, v0, Lj$/util/stream/WhileOps$TakeWhileTask;->shortCircuited:Z

    if-eqz v0, :cond_1

    .line 1231
    iget-object v0, p0, Lj$/util/stream/WhileOps$TakeWhileTask;->leftChild:Lj$/util/stream/AbstractTask;

    check-cast v0, Lj$/util/stream/WhileOps$TakeWhileTask;

    iget-wide v0, v0, Lj$/util/stream/WhileOps$TakeWhileTask;->thisNodeSize:J

    iput-wide v0, p0, Lj$/util/stream/WhileOps$TakeWhileTask;->thisNodeSize:J

    .line 1232
    iget-object v0, p0, Lj$/util/stream/WhileOps$TakeWhileTask;->leftChild:Lj$/util/stream/AbstractTask;

    check-cast v0, Lj$/util/stream/WhileOps$TakeWhileTask;

    invoke-virtual {v0}, Lj$/util/stream/WhileOps$TakeWhileTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/stream/Node;

    .restart local v0    # "result":Lj$/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    goto :goto_0

    .line 1235
    .end local v0    # "result":Lj$/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    :cond_1
    iget-object v0, p0, Lj$/util/stream/WhileOps$TakeWhileTask;->leftChild:Lj$/util/stream/AbstractTask;

    check-cast v0, Lj$/util/stream/WhileOps$TakeWhileTask;

    iget-wide v0, v0, Lj$/util/stream/WhileOps$TakeWhileTask;->thisNodeSize:J

    iget-object v2, p0, Lj$/util/stream/WhileOps$TakeWhileTask;->rightChild:Lj$/util/stream/AbstractTask;

    check-cast v2, Lj$/util/stream/WhileOps$TakeWhileTask;

    iget-wide v2, v2, Lj$/util/stream/WhileOps$TakeWhileTask;->thisNodeSize:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lj$/util/stream/WhileOps$TakeWhileTask;->thisNodeSize:J

    .line 1236
    invoke-virtual {p0}, Lj$/util/stream/WhileOps$TakeWhileTask;->merge()Lj$/util/stream/Node;

    move-result-object v0

    .line 1239
    .restart local v0    # "result":Lj$/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    :goto_0
    invoke-virtual {p0, v0}, Lj$/util/stream/WhileOps$TakeWhileTask;->setLocalResult(Ljava/lang/Object;)V

    .line 1242
    .end local v0    # "result":Lj$/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/stream/WhileOps$TakeWhileTask;->completed:Z

    .line 1243
    invoke-super {p0, p1}, Lj$/util/stream/AbstractShortCircuitTask;->onCompletion(Ljava/util/concurrent/CountedCompleter;)V

    .line 1244
    return-void
.end method
