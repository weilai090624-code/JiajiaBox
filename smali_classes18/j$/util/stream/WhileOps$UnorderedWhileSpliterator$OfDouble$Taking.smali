.class final Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Taking;
.super Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;
.source "WhileOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Taking"
.end annotation


# direct methods
.method constructor <init>(Lj$/util/Spliterator$OfDouble;Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;)V
    .locals 0
    .param p1, "s"    # Lj$/util/Spliterator$OfDouble;
    .param p2, "parent"    # Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;

    .line 1059
    invoke-direct {p0, p1, p2}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;-><init>(Lj$/util/Spliterator$OfDouble;Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;)V

    .line 1060
    return-void
.end method

.method constructor <init>(Lj$/util/Spliterator$OfDouble;ZLjava/util/function/DoublePredicate;)V
    .locals 0
    .param p1, "s"    # Lj$/util/Spliterator$OfDouble;
    .param p2, "noSplitting"    # Z
    .param p3, "p"    # Ljava/util/function/DoublePredicate;

    .line 1055
    invoke-direct {p0, p1, p2, p3}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;-><init>(Lj$/util/Spliterator$OfDouble;ZLjava/util/function/DoublePredicate;)V

    .line 1056
    return-void
.end method


# virtual methods
.method makeSpliterator(Lj$/util/Spliterator$OfDouble;)Lj$/util/Spliterator$OfDouble;
    .locals 1
    .param p1, "s"    # Lj$/util/Spliterator$OfDouble;

    .line 1091
    new-instance v0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Taking;

    invoke-direct {v0, p1, p0}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Taking;-><init>(Lj$/util/Spliterator$OfDouble;Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;)V

    return-object v0
.end method

.method bridge synthetic makeSpliterator(Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 0

    .line 1053
    check-cast p1, Lj$/util/Spliterator$OfDouble;

    invoke-virtual {p0, p1}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Taking;->makeSpliterator(Lj$/util/Spliterator$OfDouble;)Lj$/util/Spliterator$OfDouble;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 1053
    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Taking;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava/util/function/DoubleConsumer;)Z
    .locals 5
    .param p1, "action"    # Ljava/util/function/DoubleConsumer;

    .line 1064
    const/4 v0, 0x1

    .line 1065
    .local v0, "test":Z
    iget-boolean v1, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Taking;->takeOrDrop:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 1066
    invoke-virtual {p0}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Taking;->checkCancelOnCount()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Taking;->s:Lj$/util/Spliterator;

    check-cast v1, Lj$/util/Spliterator$OfDouble;

    .line 1067
    invoke-interface {v1, p0}, Lj$/util/Spliterator$OfDouble;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Taking;->p:Ljava/util/function/DoublePredicate;

    iget-wide v3, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Taking;->t:D

    .line 1068
    invoke-interface {v1, v3, v4}, Ljava/util/function/DoublePredicate;->test(D)Z

    move-result v1

    move v0, v1

    if-eqz v1, :cond_0

    .line 1069
    iget-wide v3, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Taking;->t:D

    invoke-interface {p1, v3, v4}, Ljava/util/function/DoubleConsumer;->accept(D)V

    .line 1070
    return v2

    .line 1074
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Taking;->takeOrDrop:Z

    .line 1077
    if-nez v0, :cond_1

    .line 1078
    iget-object v3, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Taking;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1079
    :cond_1
    return v1
.end method

.method public trySplit()Lj$/util/Spliterator$OfDouble;
    .locals 1

    .line 1086
    iget-object v0, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Taking;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Lj$/util/Spliterator$OfDouble;

    :goto_0
    return-object v0
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator$OfPrimitive;
    .locals 1

    .line 1053
    invoke-virtual {p0}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Taking;->trySplit()Lj$/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator;
    .locals 1

    .line 1053
    invoke-virtual {p0}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Taking;->trySplit()Lj$/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method
