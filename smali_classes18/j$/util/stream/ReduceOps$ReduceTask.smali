.class final Lj$/util/stream/ReduceOps$ReduceTask;
.super Lj$/util/stream/AbstractTask;
.source "ReduceOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/ReduceOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReduceTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        "P_OUT:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        "S::",
        "Lj$/util/stream/ReduceOps$AccumulatingSink<",
        "TP_OUT;TR;TS;>;>",
        "Lj$/util/stream/AbstractTask<",
        "TP_IN;TP_OUT;TS;",
        "Lj$/util/stream/ReduceOps$ReduceTask<",
        "TP_IN;TP_OUT;TR;TS;>;>;"
    }
.end annotation


# instance fields
.field private final op:Lj$/util/stream/ReduceOps$ReduceOp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/stream/ReduceOps$ReduceOp<",
            "TP_OUT;TR;TS;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lj$/util/stream/ReduceOps$ReduceOp;Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/ReduceOps$ReduceOp<",
            "TP_OUT;TR;TS;>;",
            "Lj$/util/stream/PipelineHelper<",
            "TP_OUT;>;",
            "Lj$/util/Spliterator<",
            "TP_IN;>;)V"
        }
    .end annotation

    .line 935
    .local p0, "this":Lj$/util/stream/ReduceOps$ReduceTask;, "Ljava/util/stream/ReduceOps$ReduceTask<TP_IN;TP_OUT;TR;TS;>;"
    .local p1, "op":Lj$/util/stream/ReduceOps$ReduceOp;, "Ljava/util/stream/ReduceOps$ReduceOp<TP_OUT;TR;TS;>;"
    .local p2, "helper":Lj$/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TP_OUT;>;"
    .local p3, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-direct {p0, p2, p3}, Lj$/util/stream/AbstractTask;-><init>(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;)V

    .line 936
    iput-object p1, p0, Lj$/util/stream/ReduceOps$ReduceTask;->op:Lj$/util/stream/ReduceOps$ReduceOp;

    .line 937
    return-void
.end method

.method constructor <init>(Lj$/util/stream/ReduceOps$ReduceTask;Lj$/util/Spliterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/ReduceOps$ReduceTask<",
            "TP_IN;TP_OUT;TR;TS;>;",
            "Lj$/util/Spliterator<",
            "TP_IN;>;)V"
        }
    .end annotation

    .line 941
    .local p0, "this":Lj$/util/stream/ReduceOps$ReduceTask;, "Ljava/util/stream/ReduceOps$ReduceTask<TP_IN;TP_OUT;TR;TS;>;"
    .local p1, "parent":Lj$/util/stream/ReduceOps$ReduceTask;, "Ljava/util/stream/ReduceOps$ReduceTask<TP_IN;TP_OUT;TR;TS;>;"
    .local p2, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-direct {p0, p1, p2}, Lj$/util/stream/AbstractTask;-><init>(Lj$/util/stream/AbstractTask;Lj$/util/Spliterator;)V

    .line 942
    iget-object v0, p1, Lj$/util/stream/ReduceOps$ReduceTask;->op:Lj$/util/stream/ReduceOps$ReduceOp;

    iput-object v0, p0, Lj$/util/stream/ReduceOps$ReduceTask;->op:Lj$/util/stream/ReduceOps$ReduceOp;

    .line 943
    return-void
.end method


# virtual methods
.method protected doLeaf()Lj$/util/stream/ReduceOps$AccumulatingSink;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 952
    .local p0, "this":Lj$/util/stream/ReduceOps$ReduceTask;, "Ljava/util/stream/ReduceOps$ReduceTask<TP_IN;TP_OUT;TR;TS;>;"
    iget-object v0, p0, Lj$/util/stream/ReduceOps$ReduceTask;->helper:Lj$/util/stream/PipelineHelper;

    iget-object v1, p0, Lj$/util/stream/ReduceOps$ReduceTask;->op:Lj$/util/stream/ReduceOps$ReduceOp;

    invoke-virtual {v1}, Lj$/util/stream/ReduceOps$ReduceOp;->makeSink()Lj$/util/stream/ReduceOps$AccumulatingSink;

    move-result-object v1

    iget-object v2, p0, Lj$/util/stream/ReduceOps$ReduceTask;->spliterator:Lj$/util/Spliterator;

    invoke-virtual {v0, v1, v2}, Lj$/util/stream/PipelineHelper;->wrapAndCopyInto(Lj$/util/stream/Sink;Lj$/util/Spliterator;)Lj$/util/stream/Sink;

    move-result-object v0

    check-cast v0, Lj$/util/stream/ReduceOps$AccumulatingSink;

    return-object v0
.end method

.method protected bridge synthetic doLeaf()Ljava/lang/Object;
    .locals 1

    .line 926
    .local p0, "this":Lj$/util/stream/ReduceOps$ReduceTask;, "Ljava/util/stream/ReduceOps$ReduceTask<TP_IN;TP_OUT;TR;TS;>;"
    invoke-virtual {p0}, Lj$/util/stream/ReduceOps$ReduceTask;->doLeaf()Lj$/util/stream/ReduceOps$AccumulatingSink;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic makeChild(Lj$/util/Spliterator;)Lj$/util/stream/AbstractTask;
    .locals 0

    .line 926
    .local p0, "this":Lj$/util/stream/ReduceOps$ReduceTask;, "Ljava/util/stream/ReduceOps$ReduceTask<TP_IN;TP_OUT;TR;TS;>;"
    invoke-virtual {p0, p1}, Lj$/util/stream/ReduceOps$ReduceTask;->makeChild(Lj$/util/Spliterator;)Lj$/util/stream/ReduceOps$ReduceTask;

    move-result-object p1

    return-object p1
.end method

.method protected makeChild(Lj$/util/Spliterator;)Lj$/util/stream/ReduceOps$ReduceTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/Spliterator<",
            "TP_IN;>;)",
            "Lj$/util/stream/ReduceOps$ReduceTask<",
            "TP_IN;TP_OUT;TR;TS;>;"
        }
    .end annotation

    .line 947
    .local p0, "this":Lj$/util/stream/ReduceOps$ReduceTask;, "Ljava/util/stream/ReduceOps$ReduceTask<TP_IN;TP_OUT;TR;TS;>;"
    .local p1, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    new-instance v0, Lj$/util/stream/ReduceOps$ReduceTask;

    invoke-direct {v0, p0, p1}, Lj$/util/stream/ReduceOps$ReduceTask;-><init>(Lj$/util/stream/ReduceOps$ReduceTask;Lj$/util/Spliterator;)V

    return-object v0
.end method

.method public onCompletion(Ljava/util/concurrent/CountedCompleter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter<",
            "*>;)V"
        }
    .end annotation

    .line 957
    .local p0, "this":Lj$/util/stream/ReduceOps$ReduceTask;, "Ljava/util/stream/ReduceOps$ReduceTask<TP_IN;TP_OUT;TR;TS;>;"
    .local p1, "caller":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    invoke-virtual {p0}, Lj$/util/stream/ReduceOps$ReduceTask;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_0

    .line 958
    iget-object v0, p0, Lj$/util/stream/ReduceOps$ReduceTask;->leftChild:Lj$/util/stream/AbstractTask;

    check-cast v0, Lj$/util/stream/ReduceOps$ReduceTask;

    invoke-virtual {v0}, Lj$/util/stream/ReduceOps$ReduceTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/stream/ReduceOps$AccumulatingSink;

    .line 959
    .local v0, "leftResult":Lj$/util/stream/ReduceOps$AccumulatingSink;, "TS;"
    iget-object v1, p0, Lj$/util/stream/ReduceOps$ReduceTask;->rightChild:Lj$/util/stream/AbstractTask;

    check-cast v1, Lj$/util/stream/ReduceOps$ReduceTask;

    invoke-virtual {v1}, Lj$/util/stream/ReduceOps$ReduceTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj$/util/stream/ReduceOps$AccumulatingSink;

    invoke-interface {v0, v1}, Lj$/util/stream/ReduceOps$AccumulatingSink;->combine(Lj$/util/stream/ReduceOps$AccumulatingSink;)V

    .line 960
    invoke-virtual {p0, v0}, Lj$/util/stream/ReduceOps$ReduceTask;->setLocalResult(Ljava/lang/Object;)V

    .line 963
    .end local v0    # "leftResult":Lj$/util/stream/ReduceOps$AccumulatingSink;, "TS;"
    :cond_0
    invoke-super {p0, p1}, Lj$/util/stream/AbstractTask;->onCompletion(Ljava/util/concurrent/CountedCompleter;)V

    .line 964
    return-void
.end method
