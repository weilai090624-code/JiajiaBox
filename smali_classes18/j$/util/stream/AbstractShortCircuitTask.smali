.class abstract Lj$/util/stream/AbstractShortCircuitTask;
.super Lj$/util/stream/AbstractTask;
.source "AbstractShortCircuitTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        "P_OUT:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        "K:",
        "Lj$/util/stream/AbstractShortCircuitTask<",
        "TP_IN;TP_OUT;TR;TK;>;>",
        "Lj$/util/stream/AbstractTask<",
        "TP_IN;TP_OUT;TR;TK;>;"
    }
.end annotation


# instance fields
.field protected volatile canceled:Z

.field protected final sharedResult:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lj$/util/stream/AbstractShortCircuitTask;Lj$/util/Spliterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lj$/util/Spliterator<",
            "TP_IN;>;)V"
        }
    .end annotation

    .line 83
    .local p0, "this":Lj$/util/stream/AbstractShortCircuitTask;, "Ljava/util/stream/AbstractShortCircuitTask<TP_IN;TP_OUT;TR;TK;>;"
    .local p1, "parent":Lj$/util/stream/AbstractShortCircuitTask;, "TK;"
    .local p2, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-direct {p0, p1, p2}, Lj$/util/stream/AbstractTask;-><init>(Lj$/util/stream/AbstractTask;Lj$/util/Spliterator;)V

    .line 84
    iget-object v0, p1, Lj$/util/stream/AbstractShortCircuitTask;->sharedResult:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object v0, p0, Lj$/util/stream/AbstractShortCircuitTask;->sharedResult:Ljava/util/concurrent/atomic/AtomicReference;

    .line 85
    return-void
.end method

.method protected constructor <init>(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/PipelineHelper<",
            "TP_OUT;>;",
            "Lj$/util/Spliterator<",
            "TP_IN;>;)V"
        }
    .end annotation

    .line 70
    .local p0, "this":Lj$/util/stream/AbstractShortCircuitTask;, "Ljava/util/stream/AbstractShortCircuitTask<TP_IN;TP_OUT;TR;TK;>;"
    .local p1, "helper":Lj$/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TP_OUT;>;"
    .local p2, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-direct {p0, p1, p2}, Lj$/util/stream/AbstractTask;-><init>(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;)V

    .line 71
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lj$/util/stream/AbstractShortCircuitTask;->sharedResult:Ljava/util/concurrent/atomic/AtomicReference;

    .line 72
    return-void
.end method


# virtual methods
.method protected cancel()V
    .locals 1

    .line 197
    .local p0, "this":Lj$/util/stream/AbstractShortCircuitTask;, "Ljava/util/stream/AbstractShortCircuitTask<TP_IN;TP_OUT;TR;TK;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/stream/AbstractShortCircuitTask;->canceled:Z

    .line 198
    return-void
.end method

.method protected cancelLaterNodes()V
    .locals 4

    .line 223
    .local p0, "this":Lj$/util/stream/AbstractShortCircuitTask;, "Ljava/util/stream/AbstractShortCircuitTask<TP_IN;TP_OUT;TR;TK;>;"
    invoke-virtual {p0}, Lj$/util/stream/AbstractShortCircuitTask;->getParent()Lj$/util/stream/AbstractTask;

    move-result-object v0

    check-cast v0, Lj$/util/stream/AbstractShortCircuitTask;

    .local v0, "parent":Lj$/util/stream/AbstractShortCircuitTask;, "TK;"
    move-object v1, p0

    .line 224
    .local v1, "node":Lj$/util/stream/AbstractShortCircuitTask;, "TK;"
    :goto_0
    if-eqz v0, :cond_1

    .line 227
    iget-object v2, v0, Lj$/util/stream/AbstractShortCircuitTask;->leftChild:Lj$/util/stream/AbstractTask;

    if-ne v2, v1, :cond_0

    .line 228
    iget-object v2, v0, Lj$/util/stream/AbstractShortCircuitTask;->rightChild:Lj$/util/stream/AbstractTask;

    check-cast v2, Lj$/util/stream/AbstractShortCircuitTask;

    .line 229
    .local v2, "rightSibling":Lj$/util/stream/AbstractShortCircuitTask;, "TK;"
    iget-boolean v3, v2, Lj$/util/stream/AbstractShortCircuitTask;->canceled:Z

    if-nez v3, :cond_0

    .line 230
    invoke-virtual {v2}, Lj$/util/stream/AbstractShortCircuitTask;->cancel()V

    .line 225
    .end local v2    # "rightSibling":Lj$/util/stream/AbstractShortCircuitTask;, "TK;"
    :cond_0
    move-object v1, v0

    invoke-virtual {v0}, Lj$/util/stream/AbstractShortCircuitTask;->getParent()Lj$/util/stream/AbstractTask;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lj$/util/stream/AbstractShortCircuitTask;

    goto :goto_0

    .line 233
    .end local v0    # "parent":Lj$/util/stream/AbstractShortCircuitTask;, "TK;"
    .end local v1    # "node":Lj$/util/stream/AbstractShortCircuitTask;, "TK;"
    :cond_1
    return-void
.end method

.method public compute()V
    .locals 13

    .line 102
    .local p0, "this":Lj$/util/stream/AbstractShortCircuitTask;, "Ljava/util/stream/AbstractShortCircuitTask<TP_IN;TP_OUT;TR;TK;>;"
    iget-object v0, p0, Lj$/util/stream/AbstractShortCircuitTask;->spliterator:Lj$/util/Spliterator;

    .line 103
    .local v0, "rs":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-interface {v0}, Lj$/util/Spliterator;->estimateSize()J

    move-result-wide v1

    .line 104
    .local v1, "sizeEstimate":J
    invoke-virtual {p0, v1, v2}, Lj$/util/stream/AbstractShortCircuitTask;->getTargetSize(J)J

    move-result-wide v3

    .line 105
    .local v3, "sizeThreshold":J
    const/4 v5, 0x0

    .line 106
    .local v5, "forkRight":Z
    move-object v6, p0

    .line 107
    .local v6, "task":Lj$/util/stream/AbstractShortCircuitTask;, "TK;"
    iget-object v7, p0, Lj$/util/stream/AbstractShortCircuitTask;->sharedResult:Ljava/util/concurrent/atomic/AtomicReference;

    .line 109
    .local v7, "sr":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TR;>;"
    :goto_0
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    .local v9, "result":Ljava/lang/Object;, "TR;"
    if-nez v8, :cond_4

    .line 110
    invoke-virtual {v6}, Lj$/util/stream/AbstractShortCircuitTask;->taskCanceled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 111
    invoke-virtual {v6}, Lj$/util/stream/AbstractShortCircuitTask;->getEmptyResult()Ljava/lang/Object;

    move-result-object v9

    .line 112
    goto :goto_3

    .line 114
    :cond_0
    cmp-long v8, v1, v3

    if-lez v8, :cond_3

    invoke-interface {v0}, Lj$/util/Spliterator;->trySplit()Lj$/util/Spliterator;

    move-result-object v8

    move-object v10, v8

    .local v10, "ls":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    if-nez v8, :cond_1

    goto :goto_2

    .line 119
    :cond_1
    invoke-virtual {v6, v10}, Lj$/util/stream/AbstractShortCircuitTask;->makeChild(Lj$/util/Spliterator;)Lj$/util/stream/AbstractTask;

    move-result-object v8

    check-cast v8, Lj$/util/stream/AbstractShortCircuitTask;

    move-object v11, v8

    .local v11, "leftChild":Lj$/util/stream/AbstractShortCircuitTask;, "TK;"
    iput-object v8, v6, Lj$/util/stream/AbstractShortCircuitTask;->leftChild:Lj$/util/stream/AbstractTask;

    .line 120
    invoke-virtual {v6, v0}, Lj$/util/stream/AbstractShortCircuitTask;->makeChild(Lj$/util/Spliterator;)Lj$/util/stream/AbstractTask;

    move-result-object v8

    check-cast v8, Lj$/util/stream/AbstractShortCircuitTask;

    move-object v12, v8

    .local v12, "rightChild":Lj$/util/stream/AbstractShortCircuitTask;, "TK;"
    iput-object v8, v6, Lj$/util/stream/AbstractShortCircuitTask;->rightChild:Lj$/util/stream/AbstractTask;

    .line 121
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lj$/util/stream/AbstractShortCircuitTask;->setPendingCount(I)V

    .line 122
    if-eqz v5, :cond_2

    .line 123
    const/4 v5, 0x0

    .line 124
    move-object v0, v10

    .line 125
    move-object v6, v11

    .line 126
    move-object v8, v12

    .local v8, "taskToFork":Lj$/util/stream/AbstractShortCircuitTask;, "TK;"
    goto :goto_1

    .line 129
    .end local v8    # "taskToFork":Lj$/util/stream/AbstractShortCircuitTask;, "TK;"
    :cond_2
    const/4 v5, 0x1

    .line 130
    move-object v6, v12

    .line 131
    move-object v8, v11

    .line 133
    .restart local v8    # "taskToFork":Lj$/util/stream/AbstractShortCircuitTask;, "TK;"
    :goto_1
    invoke-virtual {v8}, Lj$/util/stream/AbstractShortCircuitTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    .line 134
    invoke-interface {v0}, Lj$/util/Spliterator;->estimateSize()J

    move-result-wide v1

    .line 135
    .end local v8    # "taskToFork":Lj$/util/stream/AbstractShortCircuitTask;, "TK;"
    .end local v11    # "leftChild":Lj$/util/stream/AbstractShortCircuitTask;, "TK;"
    .end local v12    # "rightChild":Lj$/util/stream/AbstractShortCircuitTask;, "TK;"
    goto :goto_0

    .line 115
    .end local v10    # "ls":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    :cond_3
    :goto_2
    invoke-virtual {v6}, Lj$/util/stream/AbstractShortCircuitTask;->doLeaf()Ljava/lang/Object;

    move-result-object v9

    .line 116
    nop

    .line 136
    :cond_4
    :goto_3
    invoke-virtual {v6, v9}, Lj$/util/stream/AbstractShortCircuitTask;->setLocalResult(Ljava/lang/Object;)V

    .line 137
    invoke-virtual {v6}, Lj$/util/stream/AbstractShortCircuitTask;->tryComplete()V

    .line 138
    return-void
.end method

.method protected abstract getEmptyResult()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation
.end method

.method public getLocalResult()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 185
    .local p0, "this":Lj$/util/stream/AbstractShortCircuitTask;, "Ljava/util/stream/AbstractShortCircuitTask<TP_IN;TP_OUT;TR;TK;>;"
    invoke-virtual {p0}, Lj$/util/stream/AbstractShortCircuitTask;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lj$/util/stream/AbstractShortCircuitTask;->sharedResult:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 187
    .local v0, "answer":Ljava/lang/Object;, "TR;"
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lj$/util/stream/AbstractShortCircuitTask;->getEmptyResult()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1

    .line 190
    .end local v0    # "answer":Ljava/lang/Object;, "TR;"
    :cond_1
    invoke-super {p0}, Lj$/util/stream/AbstractTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRawResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 176
    .local p0, "this":Lj$/util/stream/AbstractShortCircuitTask;, "Ljava/util/stream/AbstractShortCircuitTask<TP_IN;TP_OUT;TR;TK;>;"
    invoke-virtual {p0}, Lj$/util/stream/AbstractShortCircuitTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected setLocalResult(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 163
    .local p0, "this":Lj$/util/stream/AbstractShortCircuitTask;, "Ljava/util/stream/AbstractShortCircuitTask<TP_IN;TP_OUT;TR;TK;>;"
    .local p1, "localResult":Ljava/lang/Object;, "TR;"
    invoke-virtual {p0}, Lj$/util/stream/AbstractShortCircuitTask;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    if-eqz p1, :cond_1

    .line 165
    iget-object v0, p0, Lj$/util/stream/AbstractShortCircuitTask;->sharedResult:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lj$/util/concurrent/ConcurrentHashMap$SearchEntriesTask$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 168
    :cond_0
    invoke-super {p0, p1}, Lj$/util/stream/AbstractTask;->setLocalResult(Ljava/lang/Object;)V

    .line 169
    :cond_1
    :goto_0
    return-void
.end method

.method protected shortCircuit(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 151
    .local p0, "this":Lj$/util/stream/AbstractShortCircuitTask;, "Ljava/util/stream/AbstractShortCircuitTask<TP_IN;TP_OUT;TR;TK;>;"
    .local p1, "result":Ljava/lang/Object;, "TR;"
    if-eqz p1, :cond_0

    .line 152
    iget-object v0, p0, Lj$/util/stream/AbstractShortCircuitTask;->sharedResult:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lj$/util/concurrent/ConcurrentHashMap$SearchEntriesTask$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 153
    :cond_0
    return-void
.end method

.method protected taskCanceled()Z
    .locals 3

    .line 207
    .local p0, "this":Lj$/util/stream/AbstractShortCircuitTask;, "Ljava/util/stream/AbstractShortCircuitTask<TP_IN;TP_OUT;TR;TK;>;"
    iget-boolean v0, p0, Lj$/util/stream/AbstractShortCircuitTask;->canceled:Z

    .line 208
    .local v0, "cancel":Z
    if-nez v0, :cond_0

    .line 209
    invoke-virtual {p0}, Lj$/util/stream/AbstractShortCircuitTask;->getParent()Lj$/util/stream/AbstractTask;

    move-result-object v1

    check-cast v1, Lj$/util/stream/AbstractShortCircuitTask;

    .local v1, "parent":Lj$/util/stream/AbstractShortCircuitTask;, "TK;"
    :goto_0
    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 210
    iget-boolean v0, v1, Lj$/util/stream/AbstractShortCircuitTask;->canceled:Z

    .line 209
    invoke-virtual {v1}, Lj$/util/stream/AbstractShortCircuitTask;->getParent()Lj$/util/stream/AbstractTask;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lj$/util/stream/AbstractShortCircuitTask;

    goto :goto_0

    .line 213
    .end local v1    # "parent":Lj$/util/stream/AbstractShortCircuitTask;, "TK;"
    :cond_0
    return v0
.end method
