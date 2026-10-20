.class final Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfRef;
.super Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;
.source "StreamSpliterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final s:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(JLjava/util/function/Supplier;)V
    .locals 0
    .param p1, "size"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/Supplier<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1354
    .local p0, "this":Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfRef;, "Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfRef<TT;>;"
    .local p3, "s":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+TT;>;"
    invoke-direct {p0, p1, p2}, Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;-><init>(J)V

    .line 1355
    iput-object p3, p0, Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfRef;->s:Ljava/util/function/Supplier;

    .line 1356
    return-void
.end method


# virtual methods
.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 1360
    .local p0, "this":Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfRef;, "Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfRef<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1362
    iget-object v0, p0, Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfRef;->s:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1363
    const/4 v0, 0x1

    return v0
.end method

.method public trySplit()Lj$/util/Spliterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 1368
    .local p0, "this":Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfRef;, "Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfRef<TT;>;"
    iget-wide v0, p0, Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfRef;->estimate:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 1369
    const/4 v0, 0x0

    return-object v0

    .line 1370
    :cond_0
    new-instance v0, Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfRef;

    iget-wide v1, p0, Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfRef;->estimate:J

    const/4 v3, 0x1

    ushr-long/2addr v1, v3

    iput-wide v1, p0, Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfRef;->estimate:J

    iget-object v3, p0, Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfRef;->s:Ljava/util/function/Supplier;

    invoke-direct {v0, v1, v2, v3}, Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfRef;-><init>(JLjava/util/function/Supplier;)V

    return-object v0
.end method
