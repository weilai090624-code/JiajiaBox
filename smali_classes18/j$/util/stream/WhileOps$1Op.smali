.class Lj$/util/stream/WhileOps$1Op;
.super Lj$/util/stream/ReferencePipeline$StatefulOp;
.source "WhileOps.java"

# interfaces
.implements Lj$/util/stream/WhileOps$DropWhileOp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/stream/WhileOps;->makeDropWhileRef(Lj$/util/stream/AbstractPipeline;Ljava/util/function/Predicate;)Lj$/util/stream/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Op"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/stream/ReferencePipeline$StatefulOp<",
        "TT;TT;>;",
        "Lj$/util/stream/WhileOps$DropWhileOp<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$predicate:Ljava/util/function/Predicate;


# direct methods
.method public constructor <init>(Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;ILjava/util/function/Predicate;)V
    .locals 0
    .param p2, "inputShape"    # Lj$/util/stream/StreamShape;
    .param p3, "opFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/AbstractPipeline<",
            "*TT;*>;",
            "Lj$/util/stream/StreamShape;",
            "I)V"
        }
    .end annotation

    .line 335
    .local p1, "upstream":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*TT;*>;"
    iput-object p4, p0, Lj$/util/stream/WhileOps$1Op;->val$predicate:Ljava/util/function/Predicate;

    .line 336
    invoke-direct {p0, p1, p2, p3}, Lj$/util/stream/ReferencePipeline$StatefulOp;-><init>(Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;I)V

    .line 337
    return-void
.end method


# virtual methods
.method opEvaluateParallel(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/Node;
    .locals 1
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

    .line 356
    .local p1, "helper":Lj$/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TT;>;"
    .local p2, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p3, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    new-instance v0, Lj$/util/stream/WhileOps$DropWhileTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lj$/util/stream/WhileOps$DropWhileTask;-><init>(Lj$/util/stream/AbstractPipeline;Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)V

    .line 357
    invoke-virtual {v0}, Lj$/util/stream/WhileOps$DropWhileTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/stream/Node;

    .line 356
    return-object v0
.end method

.method opEvaluateParallelLazy(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 4
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

    .line 342
    .local p1, "helper":Lj$/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TT;>;"
    .local p2, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    sget-object v0, Lj$/util/stream/StreamOpFlag;->ORDERED:Lj$/util/stream/StreamOpFlag;

    invoke-virtual {p1}, Lj$/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Lj$/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    invoke-static {}, Lj$/util/stream/Nodes;->castingArray()Ljava/util/function/IntFunction;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lj$/util/stream/WhileOps$1Op;->opEvaluateParallel(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/Node;

    move-result-object v0

    .line 344
    invoke-interface {v0}, Lj$/util/stream/Node;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    .line 343
    return-object v0

    .line 347
    :cond_0
    new-instance v0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;

    .line 348
    invoke-virtual {p1, p2}, Lj$/util/stream/PipelineHelper;->wrapSpliterator(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lj$/util/stream/WhileOps$1Op;->val$predicate:Ljava/util/function/Predicate;

    invoke-direct {v0, v1, v2, v3}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;-><init>(Lj$/util/Spliterator;ZLjava/util/function/Predicate;)V

    .line 347
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

    .line 362
    .local p2, "sink":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lj$/util/stream/WhileOps$1Op;->opWrapSink(Lj$/util/stream/Sink;Z)Lj$/util/stream/WhileOps$DropWhileSink;

    move-result-object v0

    return-object v0
.end method

.method public opWrapSink(Lj$/util/stream/Sink;Z)Lj$/util/stream/WhileOps$DropWhileSink;
    .locals 1
    .param p2, "retainAndCountDroppedElements"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/Sink<",
            "TT;>;Z)",
            "Lj$/util/stream/WhileOps$DropWhileSink<",
            "TT;>;"
        }
    .end annotation

    .line 394
    .local p1, "sink":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<TT;>;"
    new-instance v0, Lj$/util/stream/WhileOps$1Op$1OpSink;

    invoke-direct {v0, p0, p1, p2}, Lj$/util/stream/WhileOps$1Op$1OpSink;-><init>(Lj$/util/stream/WhileOps$1Op;Lj$/util/stream/Sink;Z)V

    return-object v0
.end method
