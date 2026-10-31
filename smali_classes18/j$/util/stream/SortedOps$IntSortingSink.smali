.class final Lj$/util/stream/SortedOps$IntSortingSink;
.super Lj$/util/stream/SortedOps$AbstractIntSortingSink;
.source "SortedOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/SortedOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IntSortingSink"
.end annotation


# instance fields
.field private b:Lj$/util/stream/SpinedBuffer$OfInt;


# direct methods
.method constructor <init>(Lj$/util/stream/Sink;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/Sink<",
            "-",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 486
    .local p1, "sink":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Integer;>;"
    invoke-direct {p0, p1}, Lj$/util/stream/SortedOps$AbstractIntSortingSink;-><init>(Lj$/util/stream/Sink;)V

    .line 487
    return-void
.end method


# virtual methods
.method public accept(I)V
    .registers 3
    .param p1, "t"    # I

    .line 516
    iget-object v0, p0, Lj$/util/stream/SortedOps$IntSortingSink;->b:Lj$/util/stream/SpinedBuffer$OfInt;

    invoke-virtual {v0, p1}, Lj$/util/stream/SpinedBuffer$OfInt;->accept(I)V

    .line 517
    return-void
.end method

.method public begin(J)V
    .registers 6
    .param p1, "size"    # J

    .line 491
    const-wide/32 v0, 0x7ffffff7

    cmp-long v2, p1, v0

    if-gez v2, :cond_1a

    .line 493
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    new-instance v0, Lj$/util/stream/SpinedBuffer$OfInt;

    if-lez v2, :cond_14

    long-to-int v1, p1

    invoke-direct {v0, v1}, Lj$/util/stream/SpinedBuffer$OfInt;-><init>(I)V

    goto :goto_17

    :cond_14
    invoke-direct {v0}, Lj$/util/stream/SpinedBuffer$OfInt;-><init>()V

    :goto_17
    iput-object v0, p0, Lj$/util/stream/SortedOps$IntSortingSink;->b:Lj$/util/stream/SpinedBuffer$OfInt;

    .line 494
    return-void

    .line 492
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Stream size exceeds max array size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public end()V
    .registers 6

    .line 498
    iget-object v0, p0, Lj$/util/stream/SortedOps$IntSortingSink;->b:Lj$/util/stream/SpinedBuffer$OfInt;

    invoke-virtual {v0}, Lj$/util/stream/SpinedBuffer$OfInt;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 499
    .local v0, "ints":[I
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 500
    iget-object v1, p0, Lj$/util/stream/SortedOps$IntSortingSink;->downstream:Lj$/util/stream/Sink;

    array-length v2, v0

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lj$/util/stream/Sink;->begin(J)V

    .line 501
    iget-boolean v1, p0, Lj$/util/stream/SortedOps$IntSortingSink;->cancellationRequestedCalled:Z

    const/4 v2, 0x0

    if-nez v1, :cond_24

    .line 502
    array-length v1, v0

    :goto_18
    if-ge v2, v1, :cond_3a

    aget v3, v0, v2

    .line 503
    .local v3, "anInt":I
    iget-object v4, p0, Lj$/util/stream/SortedOps$IntSortingSink;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v4, v3}, Lj$/util/stream/Sink;->accept(I)V

    .line 502
    .end local v3    # "anInt":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 506
    :cond_24
    array-length v1, v0

    :goto_25
    if-ge v2, v1, :cond_3a

    aget v3, v0, v2

    .line 507
    .restart local v3    # "anInt":I
    iget-object v4, p0, Lj$/util/stream/SortedOps$IntSortingSink;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v4}, Lj$/util/stream/Sink;->cancellationRequested()Z

    move-result v4

    if-eqz v4, :cond_32

    goto :goto_3a

    .line 508
    :cond_32
    iget-object v4, p0, Lj$/util/stream/SortedOps$IntSortingSink;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v4, v3}, Lj$/util/stream/Sink;->accept(I)V

    .line 506
    .end local v3    # "anInt":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 511
    :cond_3a
    :goto_3a
    iget-object v1, p0, Lj$/util/stream/SortedOps$IntSortingSink;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v1}, Lj$/util/stream/Sink;->end()V

    .line 512
    return-void
.end method
