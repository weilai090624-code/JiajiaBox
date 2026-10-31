.class final Lj$/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;
.super Ljava/lang/Object;
.source "ThreadLocalRandom.java"

# interfaces
.implements Lj$/util/Spliterator$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/concurrent/ThreadLocalRandom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RandomDoublesSpliterator"
.end annotation


# instance fields
.field final bound:D

.field final fence:J

.field index:J

.field final origin:D


# direct methods
.method constructor <init>(JJDD)V
    .registers 9
    .param p1, "index"    # J
    .param p3, "fence"    # J
    .param p5, "origin"    # D
    .param p7, "bound"    # D

    .line 904
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 905
    iput-wide p1, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->index:J

    iput-wide p3, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->fence:J

    .line 906
    iput-wide p5, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->origin:D

    iput-wide p7, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->bound:D

    .line 907
    return-void
.end method


# virtual methods
.method public characteristics()I
    .registers 2

    .line 920
    const/16 v0, 0x4540

    return v0
.end method

.method public estimateSize()J
    .registers 5

    .line 916
    iget-wide v0, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->fence:J

    iget-wide v2, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->index:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .registers 2

    .line 897
    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Lj$/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    return-void
.end method

.method public synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 2

    invoke-static {p0, p1}, Lj$/util/Spliterator$OfDouble$-CC;->$default$forEachRemaining(Lj$/util/Spliterator$OfDouble;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava/util/function/DoubleConsumer;)V
    .registers 14
    .param p1, "consumer"    # Ljava/util/function/DoubleConsumer;

    .line 936
    if-eqz p1, :cond_24

    .line 937
    iget-wide v0, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->index:J

    .local v0, "i":J
    iget-wide v2, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->fence:J

    .line 938
    .local v2, "f":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_23

    .line 939
    iput-wide v2, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->index:J

    .line 940
    iget-wide v4, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->origin:D

    .local v4, "o":D
    iget-wide v6, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->bound:D

    .line 941
    .local v6, "b":D
    invoke-static {}, Lj$/util/concurrent/ThreadLocalRandom;->current()Lj$/util/concurrent/ThreadLocalRandom;

    move-result-object v8

    .line 943
    .local v8, "rng":Lj$/util/concurrent/ThreadLocalRandom;
    :cond_14
    invoke-virtual {v8, v4, v5, v6, v7}, Lj$/util/concurrent/ThreadLocalRandom;->internalNextDouble(DD)D

    move-result-wide v9

    invoke-interface {p1, v9, v10}, Ljava/util/function/DoubleConsumer;->accept(D)V

    .line 944
    const-wide/16 v9, 0x1

    add-long/2addr v9, v0

    move-wide v0, v9

    cmp-long v11, v9, v2

    if-ltz v11, :cond_14

    .line 946
    .end local v4    # "o":D
    .end local v6    # "b":D
    .end local v8    # "rng":Lj$/util/concurrent/ThreadLocalRandom;
    :cond_23
    return-void

    .line 936
    .end local v0    # "i":J
    .end local v2    # "f":J
    :cond_24
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public synthetic getComparator()Ljava/util/Comparator;
    .registers 2

    invoke-static {p0}, Lj$/util/Spliterator$-CC;->$default$getComparator(Lj$/util/Spliterator;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getExactSizeIfKnown()J
    .registers 3

    invoke-static {p0}, Lj$/util/Spliterator$-CC;->$default$getExactSizeIfKnown(Lj$/util/Spliterator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic hasCharacteristics(I)Z
    .registers 2

    invoke-static {p0, p1}, Lj$/util/Spliterator$-CC;->$default$hasCharacteristics(Lj$/util/Spliterator;I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .registers 2

    .line 897
    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Lj$/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result p1

    return p1
.end method

.method public synthetic tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 2

    invoke-static {p0, p1}, Lj$/util/Spliterator$OfDouble$-CC;->$default$tryAdvance(Lj$/util/Spliterator$OfDouble;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava/util/function/DoubleConsumer;)Z
    .registers 11
    .param p1, "consumer"    # Ljava/util/function/DoubleConsumer;

    .line 925
    if-eqz p1, :cond_22

    .line 926
    iget-wide v0, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->index:J

    .local v0, "i":J
    iget-wide v2, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->fence:J

    .line 927
    .local v2, "f":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_20

    .line 928
    invoke-static {}, Lj$/util/concurrent/ThreadLocalRandom;->current()Lj$/util/concurrent/ThreadLocalRandom;

    move-result-object v4

    iget-wide v5, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->origin:D

    iget-wide v7, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->bound:D

    invoke-virtual {v4, v5, v6, v7, v8}, Lj$/util/concurrent/ThreadLocalRandom;->internalNextDouble(DD)D

    move-result-wide v4

    invoke-interface {p1, v4, v5}, Ljava/util/function/DoubleConsumer;->accept(D)V

    .line 929
    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    iput-wide v4, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->index:J

    .line 930
    const/4 v4, 0x1

    return v4

    .line 932
    :cond_20
    const/4 v4, 0x0

    return v4

    .line 925
    .end local v0    # "i":J
    .end local v2    # "f":J
    :cond_22
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator$OfDouble;
    .registers 2

    .line 897
    invoke-virtual {p0}, Lj$/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->trySplit()Lj$/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator$OfPrimitive;
    .registers 2

    .line 897
    invoke-virtual {p0}, Lj$/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->trySplit()Lj$/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator;
    .registers 2

    .line 897
    invoke-virtual {p0}, Lj$/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->trySplit()Lj$/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public trySplit()Lj$/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;
    .registers 15

    .line 910
    iget-wide v9, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->index:J

    .local v9, "i":J
    iget-wide v0, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->fence:J

    add-long/2addr v0, v9

    const/4 v2, 0x1

    ushr-long v11, v0, v2

    .line 911
    .local v11, "m":J
    cmp-long v0, v11, v9

    if-gtz v0, :cond_e

    const/4 v0, 0x0

    goto :goto_1c

    .line 912
    :cond_e
    new-instance v13, Lj$/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;

    iput-wide v11, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->index:J

    iget-wide v5, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->origin:D

    iget-wide v7, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->bound:D

    move-object v0, v13

    move-wide v1, v9

    move-wide v3, v11

    invoke-direct/range {v0 .. v8}, Lj$/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;-><init>(JJDD)V

    .line 911
    :goto_1c
    return-object v0
.end method
