.class final Lj$/util/stream/SliceOps$SliceTask;
.super Lj$/util/stream/AbstractShortCircuitTask;
.source "SliceOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/SliceOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SliceTask"
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
        "Lj$/util/stream/SliceOps$SliceTask<",
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

.field private final op:Lj$/util/stream/AbstractPipeline;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/stream/AbstractPipeline<",
            "TP_OUT;TP_OUT;*>;"
        }
    .end annotation
.end field

.field private final targetOffset:J

.field private final targetSize:J

.field private thisNodeSize:J


# direct methods
.method constructor <init>(Lj$/util/stream/AbstractPipeline;Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;Ljava/util/function/IntFunction;JJ)V
    .locals 0
    .param p5, "offset"    # J
    .param p7, "size"    # J
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
            "[TP_OUT;>;JJ)V"
        }
    .end annotation

    .line 568
    .local p0, "this":Lj$/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    .local p1, "op":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TP_OUT;TP_OUT;*>;"
    .local p2, "helper":Lj$/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TP_OUT;>;"
    .local p3, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p4, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TP_OUT;>;"
    invoke-direct {p0, p2, p3}, Lj$/util/stream/AbstractShortCircuitTask;-><init>(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;)V

    .line 569
    iput-object p1, p0, Lj$/util/stream/SliceOps$SliceTask;->op:Lj$/util/stream/AbstractPipeline;

    .line 570
    iput-object p4, p0, Lj$/util/stream/SliceOps$SliceTask;->generator:Ljava/util/function/IntFunction;

    .line 571
    iput-wide p5, p0, Lj$/util/stream/SliceOps$SliceTask;->targetOffset:J

    .line 572
    iput-wide p7, p0, Lj$/util/stream/SliceOps$SliceTask;->targetSize:J

    .line 573
    return-void
.end method

.method constructor <init>(Lj$/util/stream/SliceOps$SliceTask;Lj$/util/Spliterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/SliceOps$SliceTask<",
            "TP_IN;TP_OUT;>;",
            "Lj$/util/Spliterator<",
            "TP_IN;>;)V"
        }
    .end annotation

    .line 576
    .local p0, "this":Lj$/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    .local p1, "parent":Lj$/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    .local p2, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-direct {p0, p1, p2}, Lj$/util/stream/AbstractShortCircuitTask;-><init>(Lj$/util/stream/AbstractShortCircuitTask;Lj$/util/Spliterator;)V

    .line 577
    iget-object v0, p1, Lj$/util/stream/SliceOps$SliceTask;->op:Lj$/util/stream/AbstractPipeline;

    iput-object v0, p0, Lj$/util/stream/SliceOps$SliceTask;->op:Lj$/util/stream/AbstractPipeline;

    .line 578
    iget-object v0, p1, Lj$/util/stream/SliceOps$SliceTask;->generator:Ljava/util/function/IntFunction;

    iput-object v0, p0, Lj$/util/stream/SliceOps$SliceTask;->generator:Ljava/util/function/IntFunction;

    .line 579
    iget-wide v0, p1, Lj$/util/stream/SliceOps$SliceTask;->targetOffset:J

    iput-wide v0, p0, Lj$/util/stream/SliceOps$SliceTask;->targetOffset:J

    .line 580
    iget-wide v0, p1, Lj$/util/stream/SliceOps$SliceTask;->targetSize:J

    iput-wide v0, p0, Lj$/util/stream/SliceOps$SliceTask;->targetSize:J

    .line 581
    return-void
.end method

.method private completedSize(J)J
    .locals 6
    .param p1, "target"    # J

    .line 701
    .local p0, "this":Lj$/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    iget-boolean v0, p0, Lj$/util/stream/SliceOps$SliceTask;->completed:Z

    if-eqz v0, :cond_0

    .line 702
    iget-wide v0, p0, Lj$/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    return-wide v0

    .line 704
    :cond_0
    iget-object v0, p0, Lj$/util/stream/SliceOps$SliceTask;->leftChild:Lj$/util/stream/AbstractTask;

    check-cast v0, Lj$/util/stream/SliceOps$SliceTask;

    .line 705
    .local v0, "left":Lj$/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    iget-object v1, p0, Lj$/util/stream/SliceOps$SliceTask;->rightChild:Lj$/util/stream/AbstractTask;

    check-cast v1, Lj$/util/stream/SliceOps$SliceTask;

    .line 706
    .local v1, "right":Lj$/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    if-eqz v0, :cond_3

    if-nez v1, :cond_1

    goto :goto_1

    .line 711
    :cond_1
    invoke-direct {v0, p1, p2}, Lj$/util/stream/SliceOps$SliceTask;->completedSize(J)J

    move-result-wide v2

    .line 712
    .local v2, "leftSize":J
    cmp-long v4, v2, p1

    if-ltz v4, :cond_2

    move-wide v4, v2

    goto :goto_0

    :cond_2
    invoke-direct {v1, p1, p2}, Lj$/util/stream/SliceOps$SliceTask;->completedSize(J)J

    move-result-wide v4

    add-long/2addr v4, v2

    :goto_0
    return-wide v4

    .line 708
    .end local v2    # "leftSize":J
    :cond_3
    :goto_1
    iget-wide v2, p0, Lj$/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    return-wide v2
.end method

.method private doTruncate(Lj$/util/stream/Node;)Lj$/util/stream/Node;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/Node<",
            "TP_OUT;>;)",
            "Lj$/util/stream/Node<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 659
    .local p0, "this":Lj$/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    .local p1, "input":Lj$/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    iget-wide v0, p0, Lj$/util/stream/SliceOps$SliceTask;->targetSize:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    invoke-interface {p1}, Lj$/util/stream/Node;->count()J

    move-result-wide v0

    iget-wide v2, p0, Lj$/util/stream/SliceOps$SliceTask;->targetOffset:J

    iget-wide v4, p0, Lj$/util/stream/SliceOps$SliceTask;->targetSize:J

    add-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lj$/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    :goto_0
    move-wide v5, v0

    .line 660
    .local v5, "to":J
    iget-wide v3, p0, Lj$/util/stream/SliceOps$SliceTask;->targetOffset:J

    iget-object v7, p0, Lj$/util/stream/SliceOps$SliceTask;->generator:Ljava/util/function/IntFunction;

    move-object v2, p1

    invoke-interface/range {v2 .. v7}, Lj$/util/stream/Node;->truncate(JJLjava/util/function/IntFunction;)Lj$/util/stream/Node;

    move-result-object v0

    return-object v0
.end method

.method private isLeftCompleted(J)Z
    .locals 8
    .param p1, "target"    # J

    .line 672
    .local p0, "this":Lj$/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    iget-boolean v0, p0, Lj$/util/stream/SliceOps$SliceTask;->completed:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lj$/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lj$/util/stream/SliceOps$SliceTask;->completedSize(J)J

    move-result-wide v0

    .line 673
    .local v0, "size":J
    :goto_0
    const/4 v2, 0x1

    cmp-long v3, v0, p1

    if-ltz v3, :cond_1

    .line 674
    return v2

    .line 675
    :cond_1
    invoke-virtual {p0}, Lj$/util/stream/SliceOps$SliceTask;->getParent()Lj$/util/stream/AbstractTask;

    move-result-object v3

    check-cast v3, Lj$/util/stream/SliceOps$SliceTask;

    .local v3, "parent":Lj$/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    move-object v4, p0

    .line 676
    .local v4, "node":Lj$/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    :goto_1
    if-eqz v3, :cond_3

    .line 678
    iget-object v5, v3, Lj$/util/stream/SliceOps$SliceTask;->rightChild:Lj$/util/stream/AbstractTask;

    if-ne v4, v5, :cond_2

    .line 679
    iget-object v5, v3, Lj$/util/stream/SliceOps$SliceTask;->leftChild:Lj$/util/stream/AbstractTask;

    check-cast v5, Lj$/util/stream/SliceOps$SliceTask;

    .line 680
    .local v5, "left":Lj$/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    if-eqz v5, :cond_2

    .line 681
    invoke-direct {v5, p1, p2}, Lj$/util/stream/SliceOps$SliceTask;->completedSize(J)J

    move-result-wide v6

    add-long/2addr v0, v6

    .line 682
    cmp-long v6, v0, p1

    if-ltz v6, :cond_2

    .line 683
    return v2

    .line 677
    .end local v5    # "left":Lj$/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    :cond_2
    move-object v4, v3

    invoke-virtual {v3}, Lj$/util/stream/SliceOps$SliceTask;->getParent()Lj$/util/stream/AbstractTask;

    move-result-object v5

    move-object v3, v5

    check-cast v3, Lj$/util/stream/SliceOps$SliceTask;

    goto :goto_1

    .line 687
    .end local v3    # "parent":Lj$/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    .end local v4    # "node":Lj$/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    :cond_3
    cmp-long v3, v0, p1

    if-ltz v3, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    return v2
.end method


# virtual methods
.method protected cancel()V
    .locals 1

    .line 653
    .local p0, "this":Lj$/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    invoke-super {p0}, Lj$/util/stream/AbstractShortCircuitTask;->cancel()V

    .line 654
    iget-boolean v0, p0, Lj$/util/stream/SliceOps$SliceTask;->completed:Z

    if-eqz v0, :cond_0

    .line 655
    invoke-virtual {p0}, Lj$/util/stream/SliceOps$SliceTask;->getEmptyResult()Lj$/util/stream/Node;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/util/stream/SliceOps$SliceTask;->setLocalResult(Ljava/lang/Object;)V

    .line 656
    :cond_0
    return-void
.end method

.method protected final doLeaf()Lj$/util/stream/Node;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/stream/Node<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 595
    .local p0, "this":Lj$/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    invoke-virtual {p0}, Lj$/util/stream/SliceOps$SliceTask;->isRoot()Z

    move-result v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_1

    .line 596
    sget-object v0, Lj$/util/stream/StreamOpFlag;->SIZED:Lj$/util/stream/StreamOpFlag;

    iget-object v3, p0, Lj$/util/stream/SliceOps$SliceTask;->op:Lj$/util/stream/AbstractPipeline;

    iget v3, v3, Lj$/util/stream/AbstractPipeline;->sourceOrOpFlags:I

    invoke-virtual {v0, v3}, Lj$/util/stream/StreamOpFlag;->isPreserved(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lj$/util/stream/SliceOps$SliceTask;->op:Lj$/util/stream/AbstractPipeline;

    iget-object v1, p0, Lj$/util/stream/SliceOps$SliceTask;->spliterator:Lj$/util/Spliterator;

    invoke-virtual {v0, v1}, Lj$/util/stream/AbstractPipeline;->exactOutputSizeIfKnown(Lj$/util/Spliterator;)J

    move-result-wide v1

    goto :goto_0

    .line 598
    :cond_0
    nop

    :goto_0
    move-wide v0, v1

    .line 599
    .local v0, "sizeIfKnown":J
    iget-object v2, p0, Lj$/util/stream/SliceOps$SliceTask;->op:Lj$/util/stream/AbstractPipeline;

    iget-object v3, p0, Lj$/util/stream/SliceOps$SliceTask;->generator:Ljava/util/function/IntFunction;

    invoke-virtual {v2, v0, v1, v3}, Lj$/util/stream/AbstractPipeline;->makeNodeBuilder(JLjava/util/function/IntFunction;)Lj$/util/stream/Node$Builder;

    move-result-object v2

    .line 600
    .local v2, "nb":Lj$/util/stream/Node$Builder;, "Ljava/util/stream/Node$Builder<TP_OUT;>;"
    iget-object v3, p0, Lj$/util/stream/SliceOps$SliceTask;->op:Lj$/util/stream/AbstractPipeline;

    iget-object v4, p0, Lj$/util/stream/SliceOps$SliceTask;->helper:Lj$/util/stream/PipelineHelper;

    invoke-virtual {v4}, Lj$/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Lj$/util/stream/AbstractPipeline;->opWrapSink(ILj$/util/stream/Sink;)Lj$/util/stream/Sink;

    move-result-object v3

    .line 601
    .local v3, "opSink":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<TP_OUT;>;"
    iget-object v4, p0, Lj$/util/stream/SliceOps$SliceTask;->helper:Lj$/util/stream/PipelineHelper;

    iget-object v5, p0, Lj$/util/stream/SliceOps$SliceTask;->helper:Lj$/util/stream/PipelineHelper;

    invoke-virtual {v5, v3}, Lj$/util/stream/PipelineHelper;->wrapSink(Lj$/util/stream/Sink;)Lj$/util/stream/Sink;

    move-result-object v5

    iget-object v6, p0, Lj$/util/stream/SliceOps$SliceTask;->spliterator:Lj$/util/Spliterator;

    invoke-virtual {v4, v5, v6}, Lj$/util/stream/PipelineHelper;->copyIntoWithCancel(Lj$/util/stream/Sink;Lj$/util/Spliterator;)Z

    .line 604
    invoke-interface {v2}, Lj$/util/stream/Node$Builder;->build()Lj$/util/stream/Node;

    move-result-object v4

    return-object v4

    .line 607
    .end local v0    # "sizeIfKnown":J
    .end local v2    # "nb":Lj$/util/stream/Node$Builder;, "Ljava/util/stream/Node$Builder<TP_OUT;>;"
    .end local v3    # "opSink":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<TP_OUT;>;"
    :cond_1
    iget-object v0, p0, Lj$/util/stream/SliceOps$SliceTask;->op:Lj$/util/stream/AbstractPipeline;

    iget-object v3, p0, Lj$/util/stream/SliceOps$SliceTask;->generator:Ljava/util/function/IntFunction;

    invoke-virtual {v0, v1, v2, v3}, Lj$/util/stream/AbstractPipeline;->makeNodeBuilder(JLjava/util/function/IntFunction;)Lj$/util/stream/Node$Builder;

    move-result-object v0

    .line 608
    .local v0, "nb":Lj$/util/stream/Node$Builder;, "Ljava/util/stream/Node$Builder<TP_OUT;>;"
    iget-wide v1, p0, Lj$/util/stream/SliceOps$SliceTask;->targetOffset:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    .line 609
    iget-object v1, p0, Lj$/util/stream/SliceOps$SliceTask;->op:Lj$/util/stream/AbstractPipeline;

    iget-object v2, p0, Lj$/util/stream/SliceOps$SliceTask;->helper:Lj$/util/stream/PipelineHelper;

    invoke-virtual {v2}, Lj$/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lj$/util/stream/AbstractPipeline;->opWrapSink(ILj$/util/stream/Sink;)Lj$/util/stream/Sink;

    move-result-object v1

    .line 610
    .local v1, "opSink":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<TP_OUT;>;"
    iget-object v2, p0, Lj$/util/stream/SliceOps$SliceTask;->helper:Lj$/util/stream/PipelineHelper;

    iget-object v3, p0, Lj$/util/stream/SliceOps$SliceTask;->helper:Lj$/util/stream/PipelineHelper;

    invoke-virtual {v3, v1}, Lj$/util/stream/PipelineHelper;->wrapSink(Lj$/util/stream/Sink;)Lj$/util/stream/Sink;

    move-result-object v3

    iget-object v4, p0, Lj$/util/stream/SliceOps$SliceTask;->spliterator:Lj$/util/Spliterator;

    invoke-virtual {v2, v3, v4}, Lj$/util/stream/PipelineHelper;->copyIntoWithCancel(Lj$/util/stream/Sink;Lj$/util/Spliterator;)Z

    .line 611
    .end local v1    # "opSink":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<TP_OUT;>;"
    goto :goto_1

    .line 613
    :cond_2
    iget-object v1, p0, Lj$/util/stream/SliceOps$SliceTask;->helper:Lj$/util/stream/PipelineHelper;

    iget-object v2, p0, Lj$/util/stream/SliceOps$SliceTask;->spliterator:Lj$/util/Spliterator;

    invoke-virtual {v1, v0, v2}, Lj$/util/stream/PipelineHelper;->wrapAndCopyInto(Lj$/util/stream/Sink;Lj$/util/Spliterator;)Lj$/util/stream/Sink;

    .line 615
    :goto_1
    invoke-interface {v0}, Lj$/util/stream/Node$Builder;->build()Lj$/util/stream/Node;

    move-result-object v1

    .line 616
    .local v1, "node":Lj$/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    invoke-interface {v1}, Lj$/util/stream/Node;->count()J

    move-result-wide v2

    iput-wide v2, p0, Lj$/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    .line 617
    const/4 v2, 0x1

    iput-boolean v2, p0, Lj$/util/stream/SliceOps$SliceTask;->completed:Z

    .line 618
    const/4 v2, 0x0

    iput-object v2, p0, Lj$/util/stream/SliceOps$SliceTask;->spliterator:Lj$/util/Spliterator;

    .line 619
    return-object v1
.end method

.method protected bridge synthetic doLeaf()Ljava/lang/Object;
    .locals 1

    .line 553
    .local p0, "this":Lj$/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    invoke-virtual {p0}, Lj$/util/stream/SliceOps$SliceTask;->doLeaf()Lj$/util/stream/Node;

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

    .line 590
    .local p0, "this":Lj$/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    iget-object v0, p0, Lj$/util/stream/SliceOps$SliceTask;->op:Lj$/util/stream/AbstractPipeline;

    invoke-virtual {v0}, Lj$/util/stream/AbstractPipeline;->getOutputShape()Lj$/util/stream/StreamShape;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/Nodes;->emptyNode(Lj$/util/stream/StreamShape;)Lj$/util/stream/Node;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getEmptyResult()Ljava/lang/Object;
    .locals 1

    .line 553
    .local p0, "this":Lj$/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    invoke-virtual {p0}, Lj$/util/stream/SliceOps$SliceTask;->getEmptyResult()Lj$/util/stream/Node;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic makeChild(Lj$/util/Spliterator;)Lj$/util/stream/AbstractTask;
    .locals 0

    .line 553
    .local p0, "this":Lj$/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    invoke-virtual {p0, p1}, Lj$/util/stream/SliceOps$SliceTask;->makeChild(Lj$/util/Spliterator;)Lj$/util/stream/SliceOps$SliceTask;

    move-result-object p1

    return-object p1
.end method

.method protected makeChild(Lj$/util/Spliterator;)Lj$/util/stream/SliceOps$SliceTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/Spliterator<",
            "TP_IN;>;)",
            "Lj$/util/stream/SliceOps$SliceTask<",
            "TP_IN;TP_OUT;>;"
        }
    .end annotation

    .line 585
    .local p0, "this":Lj$/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    .local p1, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    new-instance v0, Lj$/util/stream/SliceOps$SliceTask;

    invoke-direct {v0, p0, p1}, Lj$/util/stream/SliceOps$SliceTask;-><init>(Lj$/util/stream/SliceOps$SliceTask;Lj$/util/Spliterator;)V

    return-object v0
.end method

.method public final onCompletion(Ljava/util/concurrent/CountedCompleter;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter<",
            "*>;)V"
        }
    .end annotation

    .line 625
    .local p0, "this":Lj$/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    .local p1, "caller":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    invoke-virtual {p0}, Lj$/util/stream/SliceOps$SliceTask;->isLeaf()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_4

    .line 627
    iget-object v0, p0, Lj$/util/stream/SliceOps$SliceTask;->leftChild:Lj$/util/stream/AbstractTask;

    check-cast v0, Lj$/util/stream/SliceOps$SliceTask;

    iget-wide v3, v0, Lj$/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    iget-object v0, p0, Lj$/util/stream/SliceOps$SliceTask;->rightChild:Lj$/util/stream/AbstractTask;

    check-cast v0, Lj$/util/stream/SliceOps$SliceTask;

    iget-wide v5, v0, Lj$/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Lj$/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    .line 628
    iget-boolean v0, p0, Lj$/util/stream/SliceOps$SliceTask;->canceled:Z

    if-eqz v0, :cond_0

    .line 629
    iput-wide v1, p0, Lj$/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    .line 630
    invoke-virtual {p0}, Lj$/util/stream/SliceOps$SliceTask;->getEmptyResult()Lj$/util/stream/Node;

    move-result-object v0

    .local v0, "result":Lj$/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    goto :goto_0

    .line 632
    .end local v0    # "result":Lj$/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    :cond_0
    iget-wide v3, p0, Lj$/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    .line 633
    invoke-virtual {p0}, Lj$/util/stream/SliceOps$SliceTask;->getEmptyResult()Lj$/util/stream/Node;

    move-result-object v0

    .restart local v0    # "result":Lj$/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    goto :goto_0

    .line 634
    .end local v0    # "result":Lj$/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    :cond_1
    iget-object v0, p0, Lj$/util/stream/SliceOps$SliceTask;->leftChild:Lj$/util/stream/AbstractTask;

    check-cast v0, Lj$/util/stream/SliceOps$SliceTask;

    iget-wide v3, v0, Lj$/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    .line 635
    iget-object v0, p0, Lj$/util/stream/SliceOps$SliceTask;->rightChild:Lj$/util/stream/AbstractTask;

    check-cast v0, Lj$/util/stream/SliceOps$SliceTask;

    invoke-virtual {v0}, Lj$/util/stream/SliceOps$SliceTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/stream/Node;

    .restart local v0    # "result":Lj$/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    goto :goto_0

    .line 637
    .end local v0    # "result":Lj$/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    :cond_2
    iget-object v0, p0, Lj$/util/stream/SliceOps$SliceTask;->op:Lj$/util/stream/AbstractPipeline;

    invoke-virtual {v0}, Lj$/util/stream/AbstractPipeline;->getOutputShape()Lj$/util/stream/StreamShape;

    move-result-object v0

    iget-object v3, p0, Lj$/util/stream/SliceOps$SliceTask;->leftChild:Lj$/util/stream/AbstractTask;

    check-cast v3, Lj$/util/stream/SliceOps$SliceTask;

    .line 638
    invoke-virtual {v3}, Lj$/util/stream/SliceOps$SliceTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj$/util/stream/Node;

    iget-object v4, p0, Lj$/util/stream/SliceOps$SliceTask;->rightChild:Lj$/util/stream/AbstractTask;

    check-cast v4, Lj$/util/stream/SliceOps$SliceTask;

    invoke-virtual {v4}, Lj$/util/stream/SliceOps$SliceTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lj$/util/stream/Node;

    .line 637
    invoke-static {v0, v3, v4}, Lj$/util/stream/Nodes;->conc(Lj$/util/stream/StreamShape;Lj$/util/stream/Node;Lj$/util/stream/Node;)Lj$/util/stream/Node;

    move-result-object v0

    .line 640
    .restart local v0    # "result":Lj$/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    :goto_0
    invoke-virtual {p0}, Lj$/util/stream/SliceOps$SliceTask;->isRoot()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v0}, Lj$/util/stream/SliceOps$SliceTask;->doTruncate(Lj$/util/stream/Node;)Lj$/util/stream/Node;

    move-result-object v3

    goto :goto_1

    :cond_3
    move-object v3, v0

    :goto_1
    invoke-virtual {p0, v3}, Lj$/util/stream/SliceOps$SliceTask;->setLocalResult(Ljava/lang/Object;)V

    .line 641
    const/4 v3, 0x1

    iput-boolean v3, p0, Lj$/util/stream/SliceOps$SliceTask;->completed:Z

    .line 643
    .end local v0    # "result":Lj$/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    :cond_4
    iget-wide v3, p0, Lj$/util/stream/SliceOps$SliceTask;->targetSize:J

    cmp-long v0, v3, v1

    if-ltz v0, :cond_5

    .line 644
    invoke-virtual {p0}, Lj$/util/stream/SliceOps$SliceTask;->isRoot()Z

    move-result v0

    if-nez v0, :cond_5

    iget-wide v0, p0, Lj$/util/stream/SliceOps$SliceTask;->targetOffset:J

    iget-wide v2, p0, Lj$/util/stream/SliceOps$SliceTask;->targetSize:J

    add-long/2addr v0, v2

    .line 645
    invoke-direct {p0, v0, v1}, Lj$/util/stream/SliceOps$SliceTask;->isLeftCompleted(J)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 646
    invoke-virtual {p0}, Lj$/util/stream/SliceOps$SliceTask;->cancelLaterNodes()V

    .line 648
    :cond_5
    invoke-super {p0, p1}, Lj$/util/stream/AbstractShortCircuitTask;->onCompletion(Ljava/util/concurrent/CountedCompleter;)V

    .line 649
    return-void
.end method
