.class final Lj$/util/stream/FindOps$FindTask;
.super Lj$/util/stream/AbstractShortCircuitTask;
.source "FindOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/FindOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FindTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        "P_OUT:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/stream/AbstractShortCircuitTask<",
        "TP_IN;TP_OUT;TO;",
        "Lj$/util/stream/FindOps$FindTask<",
        "TP_IN;TP_OUT;TO;>;>;"
    }
.end annotation


# instance fields
.field private final mustFindFirst:Z

.field private final op:Lj$/util/stream/FindOps$FindOp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/stream/FindOps$FindOp<",
            "TP_OUT;TO;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lj$/util/stream/FindOps$FindOp;ZLj$/util/stream/PipelineHelper;Lj$/util/Spliterator;)V
    .locals 0
    .param p2, "mustFindFirst"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/FindOps$FindOp<",
            "TP_OUT;TO;>;Z",
            "Lj$/util/stream/PipelineHelper<",
            "TP_OUT;>;",
            "Lj$/util/Spliterator<",
            "TP_IN;>;)V"
        }
    .end annotation

    .line 289
    .local p0, "this":Lj$/util/stream/FindOps$FindTask;, "Ljava/util/stream/FindOps$FindTask<TP_IN;TP_OUT;TO;>;"
    .local p1, "op":Lj$/util/stream/FindOps$FindOp;, "Ljava/util/stream/FindOps$FindOp<TP_OUT;TO;>;"
    .local p3, "helper":Lj$/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TP_OUT;>;"
    .local p4, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-direct {p0, p3, p4}, Lj$/util/stream/AbstractShortCircuitTask;-><init>(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;)V

    .line 290
    iput-boolean p2, p0, Lj$/util/stream/FindOps$FindTask;->mustFindFirst:Z

    .line 291
    iput-object p1, p0, Lj$/util/stream/FindOps$FindTask;->op:Lj$/util/stream/FindOps$FindOp;

    .line 292
    return-void
.end method

.method constructor <init>(Lj$/util/stream/FindOps$FindTask;Lj$/util/Spliterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/FindOps$FindTask<",
            "TP_IN;TP_OUT;TO;>;",
            "Lj$/util/Spliterator<",
            "TP_IN;>;)V"
        }
    .end annotation

    .line 295
    .local p0, "this":Lj$/util/stream/FindOps$FindTask;, "Ljava/util/stream/FindOps$FindTask<TP_IN;TP_OUT;TO;>;"
    .local p1, "parent":Lj$/util/stream/FindOps$FindTask;, "Ljava/util/stream/FindOps$FindTask<TP_IN;TP_OUT;TO;>;"
    .local p2, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-direct {p0, p1, p2}, Lj$/util/stream/AbstractShortCircuitTask;-><init>(Lj$/util/stream/AbstractShortCircuitTask;Lj$/util/Spliterator;)V

    .line 296
    iget-boolean v0, p1, Lj$/util/stream/FindOps$FindTask;->mustFindFirst:Z

    iput-boolean v0, p0, Lj$/util/stream/FindOps$FindTask;->mustFindFirst:Z

    .line 297
    iget-object v0, p1, Lj$/util/stream/FindOps$FindTask;->op:Lj$/util/stream/FindOps$FindOp;

    iput-object v0, p0, Lj$/util/stream/FindOps$FindTask;->op:Lj$/util/stream/FindOps$FindOp;

    .line 298
    return-void
.end method

.method private foundResult(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    .line 311
    .local p0, "this":Lj$/util/stream/FindOps$FindTask;, "Ljava/util/stream/FindOps$FindTask<TP_IN;TP_OUT;TO;>;"
    .local p1, "answer":Ljava/lang/Object;, "TO;"
    invoke-virtual {p0}, Lj$/util/stream/FindOps$FindTask;->isLeftmostNode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {p0, p1}, Lj$/util/stream/FindOps$FindTask;->shortCircuit(Ljava/lang/Object;)V

    goto :goto_0

    .line 314
    :cond_0
    invoke-virtual {p0}, Lj$/util/stream/FindOps$FindTask;->cancelLaterNodes()V

    .line 315
    :goto_0
    return-void
.end method


# virtual methods
.method protected doLeaf()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation

    .line 319
    .local p0, "this":Lj$/util/stream/FindOps$FindTask;, "Ljava/util/stream/FindOps$FindTask<TP_IN;TP_OUT;TO;>;"
    iget-object v0, p0, Lj$/util/stream/FindOps$FindTask;->helper:Lj$/util/stream/PipelineHelper;

    iget-object v1, p0, Lj$/util/stream/FindOps$FindTask;->op:Lj$/util/stream/FindOps$FindOp;

    iget-object v1, v1, Lj$/util/stream/FindOps$FindOp;->sinkSupplier:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj$/util/stream/TerminalSink;

    iget-object v2, p0, Lj$/util/stream/FindOps$FindTask;->spliterator:Lj$/util/Spliterator;

    invoke-virtual {v0, v1, v2}, Lj$/util/stream/PipelineHelper;->wrapAndCopyInto(Lj$/util/stream/Sink;Lj$/util/Spliterator;)Lj$/util/stream/Sink;

    move-result-object v0

    check-cast v0, Lj$/util/stream/TerminalSink;

    invoke-interface {v0}, Lj$/util/stream/TerminalSink;->get()Ljava/lang/Object;

    move-result-object v0

    .line 320
    .local v0, "result":Ljava/lang/Object;, "TO;"
    iget-boolean v1, p0, Lj$/util/stream/FindOps$FindTask;->mustFindFirst:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 321
    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {p0, v0}, Lj$/util/stream/FindOps$FindTask;->shortCircuit(Ljava/lang/Object;)V

    .line 323
    :cond_0
    return-object v2

    .line 326
    :cond_1
    if-eqz v0, :cond_2

    .line 327
    invoke-direct {p0, v0}, Lj$/util/stream/FindOps$FindTask;->foundResult(Ljava/lang/Object;)V

    .line 328
    return-object v0

    .line 331
    :cond_2
    return-object v2
.end method

.method protected getEmptyResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation

    .line 307
    .local p0, "this":Lj$/util/stream/FindOps$FindTask;, "Ljava/util/stream/FindOps$FindTask<TP_IN;TP_OUT;TO;>;"
    iget-object v0, p0, Lj$/util/stream/FindOps$FindTask;->op:Lj$/util/stream/FindOps$FindOp;

    iget-object v0, v0, Lj$/util/stream/FindOps$FindOp;->emptyValue:Ljava/lang/Object;

    return-object v0
.end method

.method protected bridge synthetic makeChild(Lj$/util/Spliterator;)Lj$/util/stream/AbstractTask;
    .locals 0

    .line 279
    .local p0, "this":Lj$/util/stream/FindOps$FindTask;, "Ljava/util/stream/FindOps$FindTask<TP_IN;TP_OUT;TO;>;"
    invoke-virtual {p0, p1}, Lj$/util/stream/FindOps$FindTask;->makeChild(Lj$/util/Spliterator;)Lj$/util/stream/FindOps$FindTask;

    move-result-object p1

    return-object p1
.end method

.method protected makeChild(Lj$/util/Spliterator;)Lj$/util/stream/FindOps$FindTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/Spliterator<",
            "TP_IN;>;)",
            "Lj$/util/stream/FindOps$FindTask<",
            "TP_IN;TP_OUT;TO;>;"
        }
    .end annotation

    .line 302
    .local p0, "this":Lj$/util/stream/FindOps$FindTask;, "Ljava/util/stream/FindOps$FindTask<TP_IN;TP_OUT;TO;>;"
    .local p1, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    new-instance v0, Lj$/util/stream/FindOps$FindTask;

    invoke-direct {v0, p0, p1}, Lj$/util/stream/FindOps$FindTask;-><init>(Lj$/util/stream/FindOps$FindTask;Lj$/util/Spliterator;)V

    return-object v0
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

    .line 337
    .local p0, "this":Lj$/util/stream/FindOps$FindTask;, "Ljava/util/stream/FindOps$FindTask<TP_IN;TP_OUT;TO;>;"
    .local p1, "caller":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    iget-boolean v0, p0, Lj$/util/stream/FindOps$FindTask;->mustFindFirst:Z

    if-eqz v0, :cond_1

    .line 338
    iget-object v0, p0, Lj$/util/stream/FindOps$FindTask;->leftChild:Lj$/util/stream/AbstractTask;

    check-cast v0, Lj$/util/stream/FindOps$FindTask;

    .local v0, "child":Lj$/util/stream/FindOps$FindTask;, "Ljava/util/stream/FindOps$FindTask<TP_IN;TP_OUT;TO;>;"
    const/4 v1, 0x0

    .local v1, "p":Lj$/util/stream/FindOps$FindTask;, "Ljava/util/stream/FindOps$FindTask<TP_IN;TP_OUT;TO;>;"
    :goto_0
    if-eq v0, v1, :cond_1

    .line 340
    invoke-virtual {v0}, Lj$/util/stream/FindOps$FindTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v2

    .line 341
    .local v2, "result":Ljava/lang/Object;, "TO;"
    if-eqz v2, :cond_0

    iget-object v3, p0, Lj$/util/stream/FindOps$FindTask;->op:Lj$/util/stream/FindOps$FindOp;

    iget-object v3, v3, Lj$/util/stream/FindOps$FindOp;->presentPredicate:Ljava/util/function/Predicate;

    invoke-interface {v3, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 342
    invoke-virtual {p0, v2}, Lj$/util/stream/FindOps$FindTask;->setLocalResult(Ljava/lang/Object;)V

    .line 343
    invoke-direct {p0, v2}, Lj$/util/stream/FindOps$FindTask;->foundResult(Ljava/lang/Object;)V

    .line 344
    goto :goto_1

    .line 339
    .end local v2    # "result":Ljava/lang/Object;, "TO;"
    :cond_0
    move-object v1, v0

    iget-object v2, p0, Lj$/util/stream/FindOps$FindTask;->rightChild:Lj$/util/stream/AbstractTask;

    move-object v0, v2

    check-cast v0, Lj$/util/stream/FindOps$FindTask;

    goto :goto_0

    .line 348
    .end local v0    # "child":Lj$/util/stream/FindOps$FindTask;, "Ljava/util/stream/FindOps$FindTask<TP_IN;TP_OUT;TO;>;"
    .end local v1    # "p":Lj$/util/stream/FindOps$FindTask;, "Ljava/util/stream/FindOps$FindTask<TP_IN;TP_OUT;TO;>;"
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Lj$/util/stream/AbstractShortCircuitTask;->onCompletion(Ljava/util/concurrent/CountedCompleter;)V

    .line 349
    return-void
.end method
