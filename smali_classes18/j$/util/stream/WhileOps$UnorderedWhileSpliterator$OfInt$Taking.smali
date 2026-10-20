.class final Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;
.super Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;
.source "WhileOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Taking"
.end annotation


# direct methods
.method constructor <init>(Lj$/util/Spliterator$OfInt;Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;)V
    .locals 0
    .param p1, "s"    # Lj$/util/Spliterator$OfInt;
    .param p2, "parent"    # Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;

    .line 849
    invoke-direct {p0, p1, p2}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;-><init>(Lj$/util/Spliterator$OfInt;Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;)V

    .line 850
    return-void
.end method

.method constructor <init>(Lj$/util/Spliterator$OfInt;ZLjava/util/function/IntPredicate;)V
    .locals 0
    .param p1, "s"    # Lj$/util/Spliterator$OfInt;
    .param p2, "noSplitting"    # Z
    .param p3, "p"    # Ljava/util/function/IntPredicate;

    .line 845
    invoke-direct {p0, p1, p2, p3}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;-><init>(Lj$/util/Spliterator$OfInt;ZLjava/util/function/IntPredicate;)V

    .line 846
    return-void
.end method


# virtual methods
.method makeSpliterator(Lj$/util/Spliterator$OfInt;)Lj$/util/Spliterator$OfInt;
    .locals 1
    .param p1, "s"    # Lj$/util/Spliterator$OfInt;

    .line 881
    new-instance v0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;

    invoke-direct {v0, p1, p0}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;-><init>(Lj$/util/Spliterator$OfInt;Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;)V

    return-object v0
.end method

.method bridge synthetic makeSpliterator(Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 0

    .line 843
    check-cast p1, Lj$/util/Spliterator$OfInt;

    invoke-virtual {p0, p1}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;->makeSpliterator(Lj$/util/Spliterator$OfInt;)Lj$/util/Spliterator$OfInt;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 843
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava/util/function/IntConsumer;)Z
    .locals 4
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    .line 854
    const/4 v0, 0x1

    .line 855
    .local v0, "test":Z
    iget-boolean v1, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;->takeOrDrop:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 856
    invoke-virtual {p0}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;->checkCancelOnCount()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;->s:Lj$/util/Spliterator;

    check-cast v1, Lj$/util/Spliterator$OfInt;

    .line 857
    invoke-interface {v1, p0}, Lj$/util/Spliterator$OfInt;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;->p:Ljava/util/function/IntPredicate;

    iget v3, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;->t:I

    .line 858
    invoke-interface {v1, v3}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result v1

    move v0, v1

    if-eqz v1, :cond_0

    .line 859
    iget v1, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;->t:I

    invoke-interface {p1, v1}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 860
    return v2

    .line 864
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;->takeOrDrop:Z

    .line 867
    if-nez v0, :cond_1

    .line 868
    iget-object v3, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 869
    :cond_1
    return v1
.end method

.method public trySplit()Lj$/util/Spliterator$OfInt;
    .locals 1

    .line 876
    iget-object v0, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Lj$/util/Spliterator$OfInt;

    :goto_0
    return-object v0
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator$OfPrimitive;
    .locals 1

    .line 843
    invoke-virtual {p0}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;->trySplit()Lj$/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator;
    .locals 1

    .line 843
    invoke-virtual {p0}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;->trySplit()Lj$/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method
