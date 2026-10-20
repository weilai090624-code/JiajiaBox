.class final Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfDouble;
.super Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;
.source "StreamSpliterators.java"

# interfaces
.implements Lj$/util/Spliterator$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfDouble"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator<",
        "Ljava/lang/Double;",
        ">;",
        "Lj$/util/Spliterator$OfDouble;"
    }
.end annotation


# instance fields
.field final s:Ljava/util/function/DoubleSupplier;


# direct methods
.method constructor <init>(JLjava/util/function/DoubleSupplier;)V
    .locals 0
    .param p1, "size"    # J
    .param p3, "s"    # Ljava/util/function/DoubleSupplier;

    .line 1429
    invoke-direct {p0, p1, p2}, Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;-><init>(J)V

    .line 1430
    iput-object p3, p0, Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfDouble;->s:Ljava/util/function/DoubleSupplier;

    .line 1431
    return-void
.end method


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$OfDouble$-CC;->$default$forEachRemaining(Lj$/util/Spliterator$OfDouble;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$OfDouble$-CC;->$default$forEachRemaining(Lj$/util/Spliterator$OfDouble;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic forEachRemaining(Ljava/util/function/DoubleConsumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$OfDouble$-CC;->$default$forEachRemaining(Lj$/util/Spliterator$OfDouble;Ljava/util/function/DoubleConsumer;)V

    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 1424
    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfDouble;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result p1

    return p1
.end method

.method public synthetic tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$OfDouble$-CC;->$default$tryAdvance(Lj$/util/Spliterator$OfDouble;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava/util/function/DoubleConsumer;)Z
    .locals 2
    .param p1, "action"    # Ljava/util/function/DoubleConsumer;

    .line 1435
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1437
    iget-object v0, p0, Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfDouble;->s:Ljava/util/function/DoubleSupplier;

    invoke-interface {v0}, Ljava/util/function/DoubleSupplier;->getAsDouble()D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava/util/function/DoubleConsumer;->accept(D)V

    .line 1438
    const/4 v0, 0x1

    return v0
.end method

.method public trySplit()Lj$/util/Spliterator$OfDouble;
    .locals 5

    .line 1443
    iget-wide v0, p0, Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfDouble;->estimate:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 1444
    const/4 v0, 0x0

    return-object v0

    .line 1445
    :cond_0
    new-instance v0, Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfDouble;

    iget-wide v1, p0, Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfDouble;->estimate:J

    const/4 v3, 0x1

    ushr-long/2addr v1, v3

    iput-wide v1, p0, Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfDouble;->estimate:J

    iget-object v3, p0, Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfDouble;->s:Ljava/util/function/DoubleSupplier;

    invoke-direct {v0, v1, v2, v3}, Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfDouble;-><init>(JLjava/util/function/DoubleSupplier;)V

    return-object v0
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator$OfPrimitive;
    .locals 1

    .line 1424
    invoke-virtual {p0}, Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfDouble;->trySplit()Lj$/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator;
    .locals 1

    .line 1424
    invoke-virtual {p0}, Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfDouble;->trySplit()Lj$/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method
