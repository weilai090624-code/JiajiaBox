.class final Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;
.super Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;
.source "StreamSpliterators.java"

# interfaces
.implements Lj$/util/Spliterator$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfLong"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator<",
        "Ljava/lang/Long;",
        ">;",
        "Lj$/util/Spliterator$OfLong;"
    }
.end annotation


# instance fields
.field final s:Ljava/util/function/LongSupplier;


# direct methods
.method constructor <init>(JLjava/util/function/LongSupplier;)V
    .locals 0
    .param p1, "size"    # J
    .param p3, "s"    # Ljava/util/function/LongSupplier;

    .line 1404
    invoke-direct {p0, p1, p2}, Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;-><init>(J)V

    .line 1405
    iput-object p3, p0, Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;->s:Ljava/util/function/LongSupplier;

    .line 1406
    return-void
.end method


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$OfLong$-CC;->$default$forEachRemaining(Lj$/util/Spliterator$OfLong;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$OfLong$-CC;->$default$forEachRemaining(Lj$/util/Spliterator$OfLong;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic forEachRemaining(Ljava/util/function/LongConsumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$OfLong$-CC;->$default$forEachRemaining(Lj$/util/Spliterator$OfLong;Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 1399
    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;->tryAdvance(Ljava/util/function/LongConsumer;)Z

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
    .locals 2
    .param p1, "action"    # Ljava/util/function/LongConsumer;

    .line 1410
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1412
    iget-object v0, p0, Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;->s:Ljava/util/function/LongSupplier;

    invoke-interface {v0}, Ljava/util/function/LongSupplier;->getAsLong()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 1413
    const/4 v0, 0x1

    return v0
.end method

.method public trySplit()Lj$/util/Spliterator$OfLong;
    .locals 5

    .line 1418
    iget-wide v0, p0, Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;->estimate:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 1419
    const/4 v0, 0x0

    return-object v0

    .line 1420
    :cond_0
    new-instance v0, Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;

    iget-wide v1, p0, Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;->estimate:J

    const/4 v3, 0x1

    ushr-long/2addr v1, v3

    iput-wide v1, p0, Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;->estimate:J

    iget-object v3, p0, Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;->s:Ljava/util/function/LongSupplier;

    invoke-direct {v0, v1, v2, v3}, Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;-><init>(JLjava/util/function/LongSupplier;)V

    return-object v0
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator$OfPrimitive;
    .locals 1

    .line 1399
    invoke-virtual {p0}, Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;->trySplit()Lj$/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator;
    .locals 1

    .line 1399
    invoke-virtual {p0}, Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;->trySplit()Lj$/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method
