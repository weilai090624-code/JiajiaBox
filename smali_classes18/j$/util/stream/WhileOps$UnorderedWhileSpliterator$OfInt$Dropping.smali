.class final Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Dropping;
.super Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;
.source "WhileOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Dropping"
.end annotation


# direct methods
.method constructor <init>(Lj$/util/Spliterator$OfInt;Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;)V
    .locals 0
    .param p1, "s"    # Lj$/util/Spliterator$OfInt;
    .param p2, "parent"    # Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;

    .line 891
    invoke-direct {p0, p1, p2}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;-><init>(Lj$/util/Spliterator$OfInt;Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;)V

    .line 892
    return-void
.end method

.method constructor <init>(Lj$/util/Spliterator$OfInt;ZLjava/util/function/IntPredicate;)V
    .locals 0
    .param p1, "s"    # Lj$/util/Spliterator$OfInt;
    .param p2, "noSplitting"    # Z
    .param p3, "p"    # Ljava/util/function/IntPredicate;

    .line 887
    invoke-direct {p0, p1, p2, p3}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;-><init>(Lj$/util/Spliterator$OfInt;ZLjava/util/function/IntPredicate;)V

    .line 888
    return-void
.end method


# virtual methods
.method makeSpliterator(Lj$/util/Spliterator$OfInt;)Lj$/util/Spliterator$OfInt;
    .locals 1
    .param p1, "s"    # Lj$/util/Spliterator$OfInt;

    .line 923
    new-instance v0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Dropping;

    invoke-direct {v0, p1, p0}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Dropping;-><init>(Lj$/util/Spliterator$OfInt;Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;)V

    return-object v0
.end method

.method bridge synthetic makeSpliterator(Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 0

    .line 885
    check-cast p1, Lj$/util/Spliterator$OfInt;

    invoke-virtual {p0, p1}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Dropping;->makeSpliterator(Lj$/util/Spliterator$OfInt;)Lj$/util/Spliterator$OfInt;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 885
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Dropping;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava/util/function/IntConsumer;)Z
    .locals 4
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    .line 896
    iget-boolean v0, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Dropping;->takeOrDrop:Z

    if-eqz v0, :cond_3

    .line 897
    const/4 v0, 0x0

    iput-boolean v0, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Dropping;->takeOrDrop:Z

    .line 899
    const/4 v0, 0x0

    .line 900
    .local v0, "dropped":Z
    :goto_0
    iget-object v1, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Dropping;->s:Lj$/util/Spliterator;

    check-cast v1, Lj$/util/Spliterator$OfInt;

    invoke-interface {v1, p0}, Lj$/util/Spliterator$OfInt;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result v1

    move v2, v1

    .local v2, "adv":Z
    if-eqz v1, :cond_0

    .line 901
    invoke-virtual {p0}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Dropping;->checkCancelOnCount()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Dropping;->p:Ljava/util/function/IntPredicate;

    iget v3, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Dropping;->t:I

    .line 902
    invoke-interface {v1, v3}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 903
    const/4 v0, 0x1

    goto :goto_0

    .line 907
    :cond_0
    if-eqz v2, :cond_2

    .line 910
    if-eqz v0, :cond_1

    .line 911
    iget-object v1, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Dropping;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 912
    :cond_1
    iget v1, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Dropping;->t:I

    invoke-interface {p1, v1}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 914
    :cond_2
    return v2

    .line 917
    .end local v0    # "dropped":Z
    .end local v2    # "adv":Z
    :cond_3
    iget-object v0, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Dropping;->s:Lj$/util/Spliterator;

    check-cast v0, Lj$/util/Spliterator$OfInt;

    invoke-interface {v0, p1}, Lj$/util/Spliterator$OfInt;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator$OfInt;
    .locals 1

    .line 885
    invoke-super {p0}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Lj$/util/Spliterator$OfInt;

    return-object v0
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator$OfPrimitive;
    .locals 1

    .line 885
    invoke-super {p0}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Lj$/util/Spliterator$OfPrimitive;

    return-object v0
.end method
