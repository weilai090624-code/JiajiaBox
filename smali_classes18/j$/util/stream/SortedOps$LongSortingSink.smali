.class final Lj$/util/stream/SortedOps$LongSortingSink;
.super Lj$/util/stream/SortedOps$AbstractLongSortingSink;
.source "SortedOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/SortedOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LongSortingSink"
.end annotation


# instance fields
.field private b:Lj$/util/stream/SpinedBuffer$OfLong;


# direct methods
.method constructor <init>(Lj$/util/stream/Sink;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/Sink<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 585
    .local p1, "sink":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Long;>;"
    invoke-direct {p0, p1}, Lj$/util/stream/SortedOps$AbstractLongSortingSink;-><init>(Lj$/util/stream/Sink;)V

    .line 586
    return-void
.end method


# virtual methods
.method public accept(J)V
    .registers 4
    .param p1, "t"    # J

    .line 615
    iget-object v0, p0, Lj$/util/stream/SortedOps$LongSortingSink;->b:Lj$/util/stream/SpinedBuffer$OfLong;

    invoke-virtual {v0, p1, p2}, Lj$/util/stream/SpinedBuffer$OfLong;->accept(J)V

    .line 616
    return-void
.end method

.method public begin(J)V
    .registers 6
    .param p1, "size"    # J

    .line 590
    const-wide/32 v0, 0x7ffffff7

    cmp-long v2, p1, v0

    if-gez v2, :cond_1a

    .line 592
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    new-instance v0, Lj$/util/stream/SpinedBuffer$OfLong;

    if-lez v2, :cond_14

    long-to-int v1, p1

    invoke-direct {v0, v1}, Lj$/util/stream/SpinedBuffer$OfLong;-><init>(I)V

    goto :goto_17

    :cond_14
    invoke-direct {v0}, Lj$/util/stream/SpinedBuffer$OfLong;-><init>()V

    :goto_17
    iput-object v0, p0, Lj$/util/stream/SortedOps$LongSortingSink;->b:Lj$/util/stream/SpinedBuffer$OfLong;

    .line 593
    return-void

    .line 591
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Stream size exceeds max array size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public end()V
    .registers 7

    .line 597
    iget-object v0, p0, Lj$/util/stream/SortedOps$LongSortingSink;->b:Lj$/util/stream/SpinedBuffer$OfLong;

    invoke-virtual {v0}, Lj$/util/stream/SpinedBuffer$OfLong;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 598
    .local v0, "longs":[J
    invoke-static {v0}, Ljava/util/Arrays;->sort([J)V

    .line 599
    iget-object v1, p0, Lj$/util/stream/SortedOps$LongSortingSink;->downstream:Lj$/util/stream/Sink;

    array-length v2, v0

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lj$/util/stream/Sink;->begin(J)V

    .line 600
    iget-boolean v1, p0, Lj$/util/stream/SortedOps$LongSortingSink;->cancellationRequestedCalled:Z

    const/4 v2, 0x0

    if-nez v1, :cond_24

    .line 601
    array-length v1, v0

    :goto_18
    if-ge v2, v1, :cond_3a

    aget-wide v3, v0, v2

    .line 602
    .local v3, "aLong":J
    iget-object v5, p0, Lj$/util/stream/SortedOps$LongSortingSink;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v5, v3, v4}, Lj$/util/stream/Sink;->accept(J)V

    .line 601
    .end local v3    # "aLong":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 605
    :cond_24
    array-length v1, v0

    :goto_25
    if-ge v2, v1, :cond_3a

    aget-wide v3, v0, v2

    .line 606
    .restart local v3    # "aLong":J
    iget-object v5, p0, Lj$/util/stream/SortedOps$LongSortingSink;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v5}, Lj$/util/stream/Sink;->cancellationRequested()Z

    move-result v5

    if-eqz v5, :cond_32

    goto :goto_3a

    .line 607
    :cond_32
    iget-object v5, p0, Lj$/util/stream/SortedOps$LongSortingSink;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v5, v3, v4}, Lj$/util/stream/Sink;->accept(J)V

    .line 605
    .end local v3    # "aLong":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 610
    :cond_3a
    :goto_3a
    iget-object v1, p0, Lj$/util/stream/SortedOps$LongSortingSink;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v1}, Lj$/util/stream/Sink;->end()V

    .line 611
    return-void
.end method
