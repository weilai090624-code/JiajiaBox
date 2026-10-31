.class final Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;
.super Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;
.source "WhileOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Dropping"
.end annotation


# direct methods
.method constructor <init>(Lj$/util/Spliterator$OfDouble;Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;)V
    .registers 3
    .param p1, "s"    # Lj$/util/Spliterator$OfDouble;
    .param p2, "parent"    # Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;

    .line 1101
    invoke-direct {p0, p1, p2}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;-><init>(Lj$/util/Spliterator$OfDouble;Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;)V

    .line 1102
    return-void
.end method

.method constructor <init>(Lj$/util/Spliterator$OfDouble;ZLjava/util/function/DoublePredicate;)V
    .registers 4
    .param p1, "s"    # Lj$/util/Spliterator$OfDouble;
    .param p2, "noSplitting"    # Z
    .param p3, "p"    # Ljava/util/function/DoublePredicate;

    .line 1097
    invoke-direct {p0, p1, p2, p3}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;-><init>(Lj$/util/Spliterator$OfDouble;ZLjava/util/function/DoublePredicate;)V

    .line 1098
    return-void
.end method


# virtual methods
.method makeSpliterator(Lj$/util/Spliterator$OfDouble;)Lj$/util/Spliterator$OfDouble;
    .registers 3
    .param p1, "s"    # Lj$/util/Spliterator$OfDouble;

    .line 1133
    new-instance v0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;

    invoke-direct {v0, p1, p0}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;-><init>(Lj$/util/Spliterator$OfDouble;Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;)V

    return-object v0
.end method

.method bridge synthetic makeSpliterator(Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .registers 2

    .line 1095
    check-cast p1, Lj$/util/Spliterator$OfDouble;

    invoke-virtual {p0, p1}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;->makeSpliterator(Lj$/util/Spliterator$OfDouble;)Lj$/util/Spliterator$OfDouble;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .registers 2

    .line 1095
    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava/util/function/DoubleConsumer;)Z
    .registers 7
    .param p1, "action"    # Ljava/util/function/DoubleConsumer;

    .line 1106
    iget-boolean v0, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;->takeOrDrop:Z

    if-eqz v0, :cond_35

    .line 1107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;->takeOrDrop:Z

    .line 1109
    const/4 v0, 0x0

    .line 1110
    .local v0, "dropped":Z
    :goto_8
    iget-object v1, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;->s:Lj$/util/Spliterator;

    check-cast v1, Lj$/util/Spliterator$OfDouble;

    invoke-interface {v1, p0}, Lj$/util/Spliterator$OfDouble;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result v1

    move v2, v1

    .local v2, "adv":Z
    if-eqz v1, :cond_25

    .line 1111
    invoke-virtual {p0}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;->checkCancelOnCount()Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;->p:Ljava/util/function/DoublePredicate;

    iget-wide v3, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;->t:D

    .line 1112
    invoke-interface {v1, v3, v4}, Ljava/util/function/DoublePredicate;->test(D)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1113
    const/4 v0, 0x1

    goto :goto_8

    .line 1117
    :cond_25
    if-eqz v2, :cond_34

    .line 1120
    if-eqz v0, :cond_2f

    .line 1121
    iget-object v1, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1122
    :cond_2f
    iget-wide v3, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;->t:D

    invoke-interface {p1, v3, v4}, Ljava/util/function/DoubleConsumer;->accept(D)V

    .line 1124
    :cond_34
    return v2

    .line 1127
    .end local v0    # "dropped":Z
    .end local v2    # "adv":Z
    :cond_35
    iget-object v0, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;->s:Lj$/util/Spliterator;

    check-cast v0, Lj$/util/Spliterator$OfDouble;

    invoke-interface {v0, p1}, Lj$/util/Spliterator$OfDouble;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator$OfDouble;
    .registers 2

    .line 1095
    invoke-super {p0}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Lj$/util/Spliterator$OfDouble;

    return-object v0
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator$OfPrimitive;
    .registers 2

    .line 1095
    invoke-super {p0}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Lj$/util/Spliterator$OfPrimitive;

    return-object v0
.end method
