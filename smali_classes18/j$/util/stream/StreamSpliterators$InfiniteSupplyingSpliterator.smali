.class abstract Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;
.super Ljava/lang/Object;
.source "StreamSpliterators.java"

# interfaces
.implements Lj$/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/StreamSpliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "InfiniteSupplyingSpliterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfDouble;,
        Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;,
        Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;,
        Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfRef;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lj$/util/Spliterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field estimate:J


# direct methods
.method protected constructor <init>(J)V
    .locals 0
    .param p1, "estimate"    # J

    .line 1336
    .local p0, "this":Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;, "Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1337
    iput-wide p1, p0, Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;->estimate:J

    .line 1338
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .line 1347
    .local p0, "this":Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;, "Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator<TT;>;"
    const/16 v0, 0x400

    return v0
.end method

.method public estimateSize()J
    .locals 2

    .line 1342
    .local p0, "this":Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;, "Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator<TT;>;"
    iget-wide v0, p0, Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;->estimate:J

    return-wide v0
.end method

.method public synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$-CC;->$default$forEachRemaining(Lj$/util/Spliterator;Ljava/util/function/Consumer;)V

    return-void
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
