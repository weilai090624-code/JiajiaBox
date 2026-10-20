.class final Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Dropping;
.super Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;
.source "WhileOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Dropping"
.end annotation


# direct methods
.method constructor <init>(Lj$/util/Spliterator$OfLong;Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;)V
    .locals 0
    .param p1, "s"    # Lj$/util/Spliterator$OfLong;
    .param p2, "parent"    # Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;

    .line 996
    invoke-direct {p0, p1, p2}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;-><init>(Lj$/util/Spliterator$OfLong;Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;)V

    .line 997
    return-void
.end method

.method constructor <init>(Lj$/util/Spliterator$OfLong;ZLjava/util/function/LongPredicate;)V
    .locals 0
    .param p1, "s"    # Lj$/util/Spliterator$OfLong;
    .param p2, "noSplitting"    # Z
    .param p3, "p"    # Ljava/util/function/LongPredicate;

    .line 992
    invoke-direct {p0, p1, p2, p3}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;-><init>(Lj$/util/Spliterator$OfLong;ZLjava/util/function/LongPredicate;)V

    .line 993
    return-void
.end method


# virtual methods
.method makeSpliterator(Lj$/util/Spliterator$OfLong;)Lj$/util/Spliterator$OfLong;
    .locals 1
    .param p1, "s"    # Lj$/util/Spliterator$OfLong;

    .line 1028
    new-instance v0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Dropping;

    invoke-direct {v0, p1, p0}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Dropping;-><init>(Lj$/util/Spliterator$OfLong;Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;)V

    return-object v0
.end method

.method bridge synthetic makeSpliterator(Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 0

    .line 990
    check-cast p1, Lj$/util/Spliterator$OfLong;

    invoke-virtual {p0, p1}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Dropping;->makeSpliterator(Lj$/util/Spliterator$OfLong;)Lj$/util/Spliterator$OfLong;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 990
    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Dropping;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava/util/function/LongConsumer;)Z
    .locals 5
    .param p1, "action"    # Ljava/util/function/LongConsumer;

    .line 1001
    iget-boolean v0, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Dropping;->takeOrDrop:Z

    if-eqz v0, :cond_3

    .line 1002
    const/4 v0, 0x0

    iput-boolean v0, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Dropping;->takeOrDrop:Z

    .line 1004
    const/4 v0, 0x0

    .line 1005
    .local v0, "dropped":Z
    :goto_0
    iget-object v1, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Dropping;->s:Lj$/util/Spliterator;

    check-cast v1, Lj$/util/Spliterator$OfLong;

    invoke-interface {v1, p0}, Lj$/util/Spliterator$OfLong;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result v1

    move v2, v1

    .local v2, "adv":Z
    if-eqz v1, :cond_0

    .line 1006
    invoke-virtual {p0}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Dropping;->checkCancelOnCount()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Dropping;->p:Ljava/util/function/LongPredicate;

    iget-wide v3, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Dropping;->t:J

    .line 1007
    invoke-interface {v1, v3, v4}, Ljava/util/function/LongPredicate;->test(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1008
    const/4 v0, 0x1

    goto :goto_0

    .line 1012
    :cond_0
    if-eqz v2, :cond_2

    .line 1015
    if-eqz v0, :cond_1

    .line 1016
    iget-object v1, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Dropping;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1017
    :cond_1
    iget-wide v3, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Dropping;->t:J

    invoke-interface {p1, v3, v4}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 1019
    :cond_2
    return v2

    .line 1022
    .end local v0    # "dropped":Z
    .end local v2    # "adv":Z
    :cond_3
    iget-object v0, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Dropping;->s:Lj$/util/Spliterator;

    check-cast v0, Lj$/util/Spliterator$OfLong;

    invoke-interface {v0, p1}, Lj$/util/Spliterator$OfLong;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator$OfLong;
    .locals 1

    .line 990
    invoke-super {p0}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Lj$/util/Spliterator$OfLong;

    return-object v0
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator$OfPrimitive;
    .locals 1

    .line 990
    invoke-super {p0}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Lj$/util/Spliterator$OfPrimitive;

    return-object v0
.end method
