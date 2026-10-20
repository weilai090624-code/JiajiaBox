.class final Lj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;
.super Ljava/lang/Object;
.source "ThreadLocalRandom.java"

# interfaces
.implements Lj$/util/Spliterator$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/concurrent/ThreadLocalRandom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RandomLongsSpliterator"
.end annotation


# instance fields
.field final bound:J

.field final fence:J

.field index:J

.field final origin:J


# direct methods
.method constructor <init>(JJJJ)V
    .locals 0
    .param p1, "index"    # J
    .param p3, "fence"    # J
    .param p5, "origin"    # J
    .param p7, "bound"    # J

    .line 848
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 849
    iput-wide p1, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->index:J

    iput-wide p3, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->fence:J

    .line 850
    iput-wide p5, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->origin:J

    iput-wide p7, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->bound:J

    .line 851
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .line 864
    const/16 v0, 0x4540

    return v0
.end method

.method public estimateSize()J
    .locals 4

    .line 860
    iget-wide v0, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->fence:J

    iget-wide v2, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->index:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 841
    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Lj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method public synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$OfLong$-CC;->$default$forEachRemaining(Lj$/util/Spliterator$OfLong;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava/util/function/LongConsumer;)V
    .locals 12
    .param p1, "consumer"    # Ljava/util/function/LongConsumer;

    .line 880
    if-eqz p1, :cond_2

    .line 881
    iget-wide v0, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->index:J

    .local v0, "i":J
    iget-wide v2, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->fence:J

    .line 882
    .local v2, "f":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 883
    iput-wide v2, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->index:J

    .line 884
    iget-wide v4, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->origin:J

    .local v4, "o":J
    iget-wide v6, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->bound:J

    .line 885
    .local v6, "b":J
    invoke-static {}, Lj$/util/concurrent/ThreadLocalRandom;->current()Lj$/util/concurrent/ThreadLocalRandom;

    move-result-object v8

    .line 887
    .local v8, "rng":Lj$/util/concurrent/ThreadLocalRandom;
    :cond_0
    invoke-virtual {v8, v4, v5, v6, v7}, Lj$/util/concurrent/ThreadLocalRandom;->internalNextLong(JJ)J

    move-result-wide v9

    invoke-interface {p1, v9, v10}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 888
    const-wide/16 v9, 0x1

    add-long/2addr v9, v0

    move-wide v0, v9

    cmp-long v11, v9, v2

    if-ltz v11, :cond_0

    .line 890
    .end local v4    # "o":J
    .end local v6    # "b":J
    .end local v8    # "rng":Lj$/util/concurrent/ThreadLocalRandom;
    :cond_1
    return-void

    .line 880
    .end local v0    # "i":J
    .end local v2    # "f":J
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public synthetic getComparator()Ljava/util/Comparator;
    .locals 1

    invoke-static {p0}, Lj$/util/Spliterator$-CC;->$default$getComparator(Lj$/util/Spliterator;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getExactSizeIfKnown()J
    .locals 2

    invoke-static {p0}, Lj$/util/Spliterator$-CC;->$default$getExactSizeIfKnown(Lj$/util/Spliterator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic hasCharacteristics(I)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$-CC;->$default$hasCharacteristics(Lj$/util/Spliterator;I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 841
    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Lj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result p1

    return p1
.end method

.method public synthetic tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$OfLong$-CC;->$default$tryAdvance(Lj$/util/Spliterator$OfLong;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava/util/function/LongConsumer;)Z
    .locals 9
    .param p1, "consumer"    # Ljava/util/function/LongConsumer;

    .line 869
    if-eqz p1, :cond_1

    .line 870
    iget-wide v0, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->index:J

    .local v0, "i":J
    iget-wide v2, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->fence:J

    .line 871
    .local v2, "f":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 872
    invoke-static {}, Lj$/util/concurrent/ThreadLocalRandom;->current()Lj$/util/concurrent/ThreadLocalRandom;

    move-result-object v4

    iget-wide v5, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->origin:J

    iget-wide v7, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->bound:J

    invoke-virtual {v4, v5, v6, v7, v8}, Lj$/util/concurrent/ThreadLocalRandom;->internalNextLong(JJ)J

    move-result-wide v4

    invoke-interface {p1, v4, v5}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 873
    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    iput-wide v4, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->index:J

    .line 874
    const/4 v4, 0x1

    return v4

    .line 876
    :cond_0
    const/4 v4, 0x0

    return v4

    .line 869
    .end local v0    # "i":J
    .end local v2    # "f":J
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator$OfLong;
    .locals 1

    .line 841
    invoke-virtual {p0}, Lj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->trySplit()Lj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator$OfPrimitive;
    .locals 1

    .line 841
    invoke-virtual {p0}, Lj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->trySplit()Lj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator;
    .locals 1

    .line 841
    invoke-virtual {p0}, Lj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->trySplit()Lj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public trySplit()Lj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;
    .locals 14

    .line 854
    iget-wide v9, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->index:J

    .local v9, "i":J
    iget-wide v0, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->fence:J

    add-long/2addr v0, v9

    const/4 v2, 0x1

    ushr-long v11, v0, v2

    .line 855
    .local v11, "m":J
    cmp-long v0, v11, v9

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 856
    :cond_0
    new-instance v13, Lj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;

    iput-wide v11, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->index:J

    iget-wide v5, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->origin:J

    iget-wide v7, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->bound:J

    move-object v0, v13

    move-wide v1, v9

    move-wide v3, v11

    invoke-direct/range {v0 .. v8}, Lj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;-><init>(JJJJ)V

    .line 855
    :goto_0
    return-object v0
.end method
