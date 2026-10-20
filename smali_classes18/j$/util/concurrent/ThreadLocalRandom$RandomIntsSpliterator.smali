.class final Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;
.super Ljava/lang/Object;
.source "ThreadLocalRandom.java"

# interfaces
.implements Lj$/util/Spliterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/concurrent/ThreadLocalRandom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RandomIntsSpliterator"
.end annotation


# instance fields
.field final bound:I

.field final fence:J

.field index:J

.field final origin:I


# direct methods
.method constructor <init>(JJII)V
    .locals 0
    .param p1, "index"    # J
    .param p3, "fence"    # J
    .param p5, "origin"    # I
    .param p6, "bound"    # I

    .line 793
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 794
    iput-wide p1, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->index:J

    iput-wide p3, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->fence:J

    .line 795
    iput p5, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->origin:I

    iput p6, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->bound:I

    .line 796
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .line 809
    const/16 v0, 0x4540

    return v0
.end method

.method public estimateSize()J
    .locals 4

    .line 805
    iget-wide v0, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->fence:J

    iget-wide v2, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->index:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 786
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$OfInt$-CC;->$default$forEachRemaining(Lj$/util/Spliterator$OfInt;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava/util/function/IntConsumer;)V
    .locals 10
    .param p1, "consumer"    # Ljava/util/function/IntConsumer;

    .line 825
    if-eqz p1, :cond_2

    .line 826
    iget-wide v0, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->index:J

    .local v0, "i":J
    iget-wide v2, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->fence:J

    .line 827
    .local v2, "f":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 828
    iput-wide v2, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->index:J

    .line 829
    iget v4, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->origin:I

    .local v4, "o":I
    iget v5, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->bound:I

    .line 830
    .local v5, "b":I
    invoke-static {}, Lj$/util/concurrent/ThreadLocalRandom;->current()Lj$/util/concurrent/ThreadLocalRandom;

    move-result-object v6

    .line 832
    .local v6, "rng":Lj$/util/concurrent/ThreadLocalRandom;
    :cond_0
    invoke-virtual {v6, v4, v5}, Lj$/util/concurrent/ThreadLocalRandom;->internalNextInt(II)I

    move-result v7

    invoke-interface {p1, v7}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 833
    const-wide/16 v7, 0x1

    add-long/2addr v7, v0

    move-wide v0, v7

    cmp-long v9, v7, v2

    if-ltz v9, :cond_0

    .line 835
    .end local v4    # "o":I
    .end local v5    # "b":I
    .end local v6    # "rng":Lj$/util/concurrent/ThreadLocalRandom;
    :cond_1
    return-void

    .line 825
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

    .line 786
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result p1

    return p1
.end method

.method public synthetic tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$OfInt$-CC;->$default$tryAdvance(Lj$/util/Spliterator$OfInt;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava/util/function/IntConsumer;)Z
    .locals 7
    .param p1, "consumer"    # Ljava/util/function/IntConsumer;

    .line 814
    if-eqz p1, :cond_1

    .line 815
    iget-wide v0, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->index:J

    .local v0, "i":J
    iget-wide v2, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->fence:J

    .line 816
    .local v2, "f":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 817
    invoke-static {}, Lj$/util/concurrent/ThreadLocalRandom;->current()Lj$/util/concurrent/ThreadLocalRandom;

    move-result-object v4

    iget v5, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->origin:I

    iget v6, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->bound:I

    invoke-virtual {v4, v5, v6}, Lj$/util/concurrent/ThreadLocalRandom;->internalNextInt(II)I

    move-result v4

    invoke-interface {p1, v4}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 818
    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    iput-wide v4, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->index:J

    .line 819
    const/4 v4, 0x1

    return v4

    .line 821
    :cond_0
    const/4 v4, 0x0

    return v4

    .line 814
    .end local v0    # "i":J
    .end local v2    # "f":J
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator$OfInt;
    .locals 1

    .line 786
    invoke-virtual {p0}, Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->trySplit()Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator$OfPrimitive;
    .locals 1

    .line 786
    invoke-virtual {p0}, Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->trySplit()Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator;
    .locals 1

    .line 786
    invoke-virtual {p0}, Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->trySplit()Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public trySplit()Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;
    .locals 12

    .line 799
    iget-wide v7, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->index:J

    .local v7, "i":J
    iget-wide v0, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->fence:J

    add-long/2addr v0, v7

    const/4 v2, 0x1

    ushr-long v9, v0, v2

    .line 800
    .local v9, "m":J
    cmp-long v0, v9, v7

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 801
    :cond_0
    new-instance v11, Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;

    iput-wide v9, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->index:J

    iget v5, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->origin:I

    iget v6, p0, Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->bound:I

    move-object v0, v11

    move-wide v1, v7

    move-wide v3, v9

    invoke-direct/range {v0 .. v6}, Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;-><init>(JJII)V

    .line 800
    :goto_0
    return-object v0
.end method
