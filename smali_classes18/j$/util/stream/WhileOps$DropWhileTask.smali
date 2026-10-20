.class final Lj$/util/stream/WhileOps$DropWhileTask;
.super Lj$/util/stream/AbstractTask;
.source "WhileOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/WhileOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DropWhileTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        "P_OUT:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/stream/AbstractTask<",
        "TP_IN;TP_OUT;",
        "Lj$/util/stream/Node<",
        "TP_OUT;>;",
        "Lj$/util/stream/WhileOps$DropWhileTask<",
        "TP_IN;TP_OUT;>;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final generator:Ljava/util/function/IntFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/IntFunction<",
            "[TP_OUT;>;"
        }
    .end annotation
.end field

.field private index:J

.field private final isOrdered:Z

.field private final op:Lj$/util/stream/AbstractPipeline;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/stream/AbstractPipeline<",
            "TP_OUT;TP_OUT;*>;"
        }
    .end annotation
.end field

.field private thisNodeSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1294
    const-class v0, Lj$/util/stream/WhileOps;

    return-void
.end method

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

    .line 1310
    .local p0, "this":Lj$/util/stream/WhileOps$DropWhileTask;, "Ljava/util/stream/WhileOps$DropWhileTask<TP_IN;TP_OUT;>;"
    .local p1, "op":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TP_OUT;TP_OUT;*>;"
    .local p2, "helper":Lj$/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TP_OUT;>;"
    .local p3, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p4, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TP_OUT;>;"
    invoke-direct {p0, p2, p3}, Lj$/util/stream/AbstractTask;-><init>(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;)V

    .line 1311
    nop

    .line 1312
    iput-object p1, p0, Lj$/util/stream/WhileOps$DropWhileTask;->op:Lj$/util/stream/AbstractPipeline;

    .line 1313
    iput-object p4, p0, Lj$/util/stream/WhileOps$DropWhileTask;->generator:Ljava/util/function/IntFunction;

    .line 1314
    sget-object v0, Lj$/util/stream/StreamOpFlag;->ORDERED:Lj$/util/stream/StreamOpFlag;

    invoke-virtual {p2}, Lj$/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Lj$/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    iput-boolean v0, p0, Lj$/util/stream/WhileOps$DropWhileTask;->isOrdered:Z

    .line 1315
    return-void
.end method

.method constructor <init>(Lj$/util/stream/WhileOps$DropWhileTask;Lj$/util/Spliterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/WhileOps$DropWhileTask<",
            "TP_IN;TP_OUT;>;",
            "Lj$/util/Spliterator<",
            "TP_IN;>;)V"
        }
    .end annotation

    .line 1318
    .local p0, "this":Lj$/util/stream/WhileOps$DropWhileTask;, "Ljava/util/stream/WhileOps$DropWhileTask<TP_IN;TP_OUT;>;"
    .local p1, "parent":Lj$/util/stream/WhileOps$DropWhileTask;, "Ljava/util/stream/WhileOps$DropWhileTask<TP_IN;TP_OUT;>;"
    .local p2, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-direct {p0, p1, p2}, Lj$/util/stream/AbstractTask;-><init>(Lj$/util/stream/AbstractTask;Lj$/util/Spliterator;)V

    .line 1319
    iget-object v0, p1, Lj$/util/stream/WhileOps$DropWhileTask;->op:Lj$/util/stream/AbstractPipeline;

    iput-object v0, p0, Lj$/util/stream/WhileOps$DropWhileTask;->op:Lj$/util/stream/AbstractPipeline;

    .line 1320
    iget-object v0, p1, Lj$/util/stream/WhileOps$DropWhileTask;->generator:Ljava/util/function/IntFunction;

    iput-object v0, p0, Lj$/util/stream/WhileOps$DropWhileTask;->generator:Ljava/util/function/IntFunction;

    .line 1321
    iget-boolean v0, p1, Lj$/util/stream/WhileOps$DropWhileTask;->isOrdered:Z

    iput-boolean v0, p0, Lj$/util/stream/WhileOps$DropWhileTask;->isOrdered:Z

    .line 1322
    return-void
.end method

.method private doTruncate(Lj$/util/stream/Node;)Lj$/util/stream/Node;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/Node<",
            "TP_OUT;>;)",
            "Lj$/util/stream/Node<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 1389
    .local p0, "this":Lj$/util/stream/WhileOps$DropWhileTask;, "Ljava/util/stream/WhileOps$DropWhileTask<TP_IN;TP_OUT;>;"
    .local p1, "input":Lj$/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    iget-boolean v0, p0, Lj$/util/stream/WhileOps$DropWhileTask;->isOrdered:Z

    if-eqz v0, :cond_0

    .line 1390
    iget-wide v2, p0, Lj$/util/stream/WhileOps$DropWhileTask;->index:J

    invoke-interface {p1}, Lj$/util/stream/Node;->count()J

    move-result-wide v4

    iget-object v6, p0, Lj$/util/stream/WhileOps$DropWhileTask;->generator:Ljava/util/function/IntFunction;

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Lj$/util/stream/Node;->truncate(JJLjava/util/function/IntFunction;)Lj$/util/stream/Node;

    move-result-object v0

    goto :goto_0

    .line 1391
    :cond_0
    move-object v0, p1

    .line 1389
    :goto_0
    return-object v0
.end method

.method private merge()Lj$/util/stream/Node;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/stream/Node<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 1371
    .local p0, "this":Lj$/util/stream/WhileOps$DropWhileTask;, "Ljava/util/stream/WhileOps$DropWhileTask<TP_IN;TP_OUT;>;"
    iget-object v0, p0, Lj$/util/stream/WhileOps$DropWhileTask;->leftChild:Lj$/util/stream/AbstractTask;

    check-cast v0, Lj$/util/stream/WhileOps$DropWhileTask;

    iget-wide v0, v0, Lj$/util/stream/WhileOps$DropWhileTask;->thisNodeSize:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 1374
    iget-object v0, p0, Lj$/util/stream/WhileOps$DropWhileTask;->rightChild:Lj$/util/stream/AbstractTask;

    check-cast v0, Lj$/util/stream/WhileOps$DropWhileTask;

    invoke-virtual {v0}, Lj$/util/stream/WhileOps$DropWhileTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/stream/Node;

    return-object v0

    .line 1376
    :cond_0
    iget-object v0, p0, Lj$/util/stream/WhileOps$DropWhileTask;->rightChild:Lj$/util/stream/AbstractTask;

    check-cast v0, Lj$/util/stream/WhileOps$DropWhileTask;

    iget-wide v0, v0, Lj$/util/stream/WhileOps$DropWhileTask;->thisNodeSize:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 1379
    iget-object v0, p0, Lj$/util/stream/WhileOps$DropWhileTask;->leftChild:Lj$/util/stream/AbstractTask;

    check-cast v0, Lj$/util/stream/WhileOps$DropWhileTask;

    invoke-virtual {v0}, Lj$/util/stream/WhileOps$DropWhileTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/stream/Node;

    return-object v0

    .line 1383
    :cond_1
    iget-object v0, p0, Lj$/util/stream/WhileOps$DropWhileTask;->op:Lj$/util/stream/AbstractPipeline;

    invoke-virtual {v0}, Lj$/util/stream/AbstractPipeline;->getOutputShape()Lj$/util/stream/StreamShape;

    move-result-object v0

    iget-object v1, p0, Lj$/util/stream/WhileOps$DropWhileTask;->leftChild:Lj$/util/stream/AbstractTask;

    check-cast v1, Lj$/util/stream/WhileOps$DropWhileTask;

    .line 1384
    invoke-virtual {v1}, Lj$/util/stream/WhileOps$DropWhileTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj$/util/stream/Node;

    iget-object v2, p0, Lj$/util/stream/WhileOps$DropWhileTask;->rightChild:Lj$/util/stream/AbstractTask;

    check-cast v2, Lj$/util/stream/WhileOps$DropWhileTask;

    invoke-virtual {v2}, Lj$/util/stream/WhileOps$DropWhileTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj$/util/stream/Node;

    .line 1383
    invoke-static {v0, v1, v2}, Lj$/util/stream/Nodes;->conc(Lj$/util/stream/StreamShape;Lj$/util/stream/Node;Lj$/util/stream/Node;)Lj$/util/stream/Node;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final doLeaf()Lj$/util/stream/Node;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/stream/Node<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 1331
    .local p0, "this":Lj$/util/stream/WhileOps$DropWhileTask;, "Ljava/util/stream/WhileOps$DropWhileTask<TP_IN;TP_OUT;>;"
    invoke-virtual {p0}, Lj$/util/stream/WhileOps$DropWhileTask;->isRoot()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 1334
    .local v0, "isChild":Z
    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lj$/util/stream/WhileOps$DropWhileTask;->isOrdered:Z

    if-eqz v2, :cond_0

    sget-object v2, Lj$/util/stream/StreamOpFlag;->SIZED:Lj$/util/stream/StreamOpFlag;

    iget-object v3, p0, Lj$/util/stream/WhileOps$DropWhileTask;->op:Lj$/util/stream/AbstractPipeline;

    iget v3, v3, Lj$/util/stream/AbstractPipeline;->sourceOrOpFlags:I

    invoke-virtual {v2, v3}, Lj$/util/stream/StreamOpFlag;->isPreserved(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1335
    iget-object v2, p0, Lj$/util/stream/WhileOps$DropWhileTask;->op:Lj$/util/stream/AbstractPipeline;

    iget-object v3, p0, Lj$/util/stream/WhileOps$DropWhileTask;->spliterator:Lj$/util/Spliterator;

    invoke-virtual {v2, v3}, Lj$/util/stream/AbstractPipeline;->exactOutputSizeIfKnown(Lj$/util/Spliterator;)J

    move-result-wide v2

    goto :goto_0

    .line 1336
    :cond_0
    const-wide/16 v2, -0x1

    :goto_0
    nop

    .line 1337
    .local v2, "sizeIfKnown":J
    iget-object v4, p0, Lj$/util/stream/WhileOps$DropWhileTask;->helper:Lj$/util/stream/PipelineHelper;

    iget-object v5, p0, Lj$/util/stream/WhileOps$DropWhileTask;->generator:Ljava/util/function/IntFunction;

    invoke-virtual {v4, v2, v3, v5}, Lj$/util/stream/PipelineHelper;->makeNodeBuilder(JLjava/util/function/IntFunction;)Lj$/util/stream/Node$Builder;

    move-result-object v4

    .line 1339
    .local v4, "builder":Lj$/util/stream/Node$Builder;, "Ljava/util/stream/Node$Builder<TP_OUT;>;"
    iget-object v5, p0, Lj$/util/stream/WhileOps$DropWhileTask;->op:Lj$/util/stream/AbstractPipeline;

    check-cast v5, Lj$/util/stream/WhileOps$DropWhileOp;

    .line 1342
    .local v5, "dropOp":Lj$/util/stream/WhileOps$DropWhileOp;, "Ljava/util/stream/WhileOps$DropWhileOp<TP_OUT;>;"
    iget-boolean v6, p0, Lj$/util/stream/WhileOps$DropWhileTask;->isOrdered:Z

    if-eqz v6, :cond_1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-interface {v5, v4, v1}, Lj$/util/stream/WhileOps$DropWhileOp;->opWrapSink(Lj$/util/stream/Sink;Z)Lj$/util/stream/WhileOps$DropWhileSink;

    move-result-object v1

    .line 1343
    .local v1, "s":Lj$/util/stream/WhileOps$DropWhileSink;, "Ljava/util/stream/WhileOps$DropWhileSink<TP_OUT;>;"
    iget-object v6, p0, Lj$/util/stream/WhileOps$DropWhileTask;->helper:Lj$/util/stream/PipelineHelper;

    iget-object v7, p0, Lj$/util/stream/WhileOps$DropWhileTask;->spliterator:Lj$/util/Spliterator;

    invoke-virtual {v6, v1, v7}, Lj$/util/stream/PipelineHelper;->wrapAndCopyInto(Lj$/util/stream/Sink;Lj$/util/Spliterator;)Lj$/util/stream/Sink;

    .line 1345
    invoke-interface {v4}, Lj$/util/stream/Node$Builder;->build()Lj$/util/stream/Node;

    move-result-object v6

    .line 1346
    .local v6, "node":Lj$/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    invoke-interface {v6}, Lj$/util/stream/Node;->count()J

    move-result-wide v7

    iput-wide v7, p0, Lj$/util/stream/WhileOps$DropWhileTask;->thisNodeSize:J

    .line 1347
    invoke-interface {v1}, Lj$/util/stream/WhileOps$DropWhileSink;->getDropCount()J

    move-result-wide v7

    iput-wide v7, p0, Lj$/util/stream/WhileOps$DropWhileTask;->index:J

    .line 1348
    return-object v6
.end method

.method protected bridge synthetic doLeaf()Ljava/lang/Object;
    .locals 1

    .line 1294
    .local p0, "this":Lj$/util/stream/WhileOps$DropWhileTask;, "Ljava/util/stream/WhileOps$DropWhileTask<TP_IN;TP_OUT;>;"
    invoke-virtual {p0}, Lj$/util/stream/WhileOps$DropWhileTask;->doLeaf()Lj$/util/stream/Node;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic makeChild(Lj$/util/Spliterator;)Lj$/util/stream/AbstractTask;
    .locals 0

    .line 1294
    .local p0, "this":Lj$/util/stream/WhileOps$DropWhileTask;, "Ljava/util/stream/WhileOps$DropWhileTask<TP_IN;TP_OUT;>;"
    invoke-virtual {p0, p1}, Lj$/util/stream/WhileOps$DropWhileTask;->makeChild(Lj$/util/Spliterator;)Lj$/util/stream/WhileOps$DropWhileTask;

    move-result-object p1

    return-object p1
.end method

.method protected makeChild(Lj$/util/Spliterator;)Lj$/util/stream/WhileOps$DropWhileTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/Spliterator<",
            "TP_IN;>;)",
            "Lj$/util/stream/WhileOps$DropWhileTask<",
            "TP_IN;TP_OUT;>;"
        }
    .end annotation

    .line 1326
    .local p0, "this":Lj$/util/stream/WhileOps$DropWhileTask;, "Ljava/util/stream/WhileOps$DropWhileTask<TP_IN;TP_OUT;>;"
    .local p1, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    new-instance v0, Lj$/util/stream/WhileOps$DropWhileTask;

    invoke-direct {v0, p0, p1}, Lj$/util/stream/WhileOps$DropWhileTask;-><init>(Lj$/util/stream/WhileOps$DropWhileTask;Lj$/util/Spliterator;)V

    return-object v0
.end method

.method public final onCompletion(Ljava/util/concurrent/CountedCompleter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter<",
            "*>;)V"
        }
    .end annotation

    .line 1353
    .local p0, "this":Lj$/util/stream/WhileOps$DropWhileTask;, "Ljava/util/stream/WhileOps$DropWhileTask<TP_IN;TP_OUT;>;"
    .local p1, "caller":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    invoke-virtual {p0}, Lj$/util/stream/WhileOps$DropWhileTask;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1354
    iget-boolean v0, p0, Lj$/util/stream/WhileOps$DropWhileTask;->isOrdered:Z

    if-eqz v0, :cond_0

    .line 1355
    iget-object v0, p0, Lj$/util/stream/WhileOps$DropWhileTask;->leftChild:Lj$/util/stream/AbstractTask;

    check-cast v0, Lj$/util/stream/WhileOps$DropWhileTask;

    iget-wide v0, v0, Lj$/util/stream/WhileOps$DropWhileTask;->index:J

    iput-wide v0, p0, Lj$/util/stream/WhileOps$DropWhileTask;->index:J

    .line 1358
    iget-wide v0, p0, Lj$/util/stream/WhileOps$DropWhileTask;->index:J

    iget-object v2, p0, Lj$/util/stream/WhileOps$DropWhileTask;->leftChild:Lj$/util/stream/AbstractTask;

    check-cast v2, Lj$/util/stream/WhileOps$DropWhileTask;

    iget-wide v2, v2, Lj$/util/stream/WhileOps$DropWhileTask;->thisNodeSize:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 1359
    iget-wide v0, p0, Lj$/util/stream/WhileOps$DropWhileTask;->index:J

    iget-object v2, p0, Lj$/util/stream/WhileOps$DropWhileTask;->rightChild:Lj$/util/stream/AbstractTask;

    check-cast v2, Lj$/util/stream/WhileOps$DropWhileTask;

    iget-wide v2, v2, Lj$/util/stream/WhileOps$DropWhileTask;->index:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lj$/util/stream/WhileOps$DropWhileTask;->index:J

    .line 1362
    :cond_0
    iget-object v0, p0, Lj$/util/stream/WhileOps$DropWhileTask;->leftChild:Lj$/util/stream/AbstractTask;

    check-cast v0, Lj$/util/stream/WhileOps$DropWhileTask;

    iget-wide v0, v0, Lj$/util/stream/WhileOps$DropWhileTask;->thisNodeSize:J

    iget-object v2, p0, Lj$/util/stream/WhileOps$DropWhileTask;->rightChild:Lj$/util/stream/AbstractTask;

    check-cast v2, Lj$/util/stream/WhileOps$DropWhileTask;

    iget-wide v2, v2, Lj$/util/stream/WhileOps$DropWhileTask;->thisNodeSize:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lj$/util/stream/WhileOps$DropWhileTask;->thisNodeSize:J

    .line 1363
    invoke-direct {p0}, Lj$/util/stream/WhileOps$DropWhileTask;->merge()Lj$/util/stream/Node;

    move-result-object v0

    .line 1364
    .local v0, "result":Lj$/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    invoke-virtual {p0}, Lj$/util/stream/WhileOps$DropWhileTask;->isRoot()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lj$/util/stream/WhileOps$DropWhileTask;->doTruncate(Lj$/util/stream/Node;)Lj$/util/stream/Node;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-virtual {p0, v1}, Lj$/util/stream/WhileOps$DropWhileTask;->setLocalResult(Ljava/lang/Object;)V

    .line 1367
    .end local v0    # "result":Lj$/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    :cond_2
    invoke-super {p0, p1}, Lj$/util/stream/AbstractTask;->onCompletion(Ljava/util/concurrent/CountedCompleter;)V

    .line 1368
    return-void
.end method
