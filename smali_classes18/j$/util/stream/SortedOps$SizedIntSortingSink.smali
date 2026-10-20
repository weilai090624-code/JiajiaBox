.class final Lj$/util/stream/SortedOps$SizedIntSortingSink;
.super Lj$/util/stream/SortedOps$AbstractIntSortingSink;
.source "SortedOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/SortedOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SizedIntSortingSink"
.end annotation


# instance fields
.field private array:[I

.field private offset:I


# direct methods
.method constructor <init>(Lj$/util/stream/Sink;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/Sink<",
            "-",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 447
    .local p1, "downstream":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Integer;>;"
    invoke-direct {p0, p1}, Lj$/util/stream/SortedOps$AbstractIntSortingSink;-><init>(Lj$/util/stream/Sink;)V

    .line 448
    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 3
    .param p1, "t"    # I

    .line 475
    iget-object v0, p0, Lj$/util/stream/SortedOps$SizedIntSortingSink;->array:[I

    iget v1, p0, Lj$/util/stream/SortedOps$SizedIntSortingSink;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lj$/util/stream/SortedOps$SizedIntSortingSink;->offset:I

    aput p1, v0, v1

    .line 476
    return-void
.end method

.method public begin(J)V
    .locals 3
    .param p1, "size"    # J

    .line 452
    const-wide/32 v0, 0x7ffffff7

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 454
    long-to-int v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lj$/util/stream/SortedOps$SizedIntSortingSink;->array:[I

    .line 455
    return-void

    .line 453
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Stream size exceeds max array size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public end()V
    .locals 3

    .line 459
    iget-object v0, p0, Lj$/util/stream/SortedOps$SizedIntSortingSink;->array:[I

    const/4 v1, 0x0

    iget v2, p0, Lj$/util/stream/SortedOps$SizedIntSortingSink;->offset:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->sort([III)V

    .line 460
    iget-object v0, p0, Lj$/util/stream/SortedOps$SizedIntSortingSink;->downstream:Lj$/util/stream/Sink;

    iget v1, p0, Lj$/util/stream/SortedOps$SizedIntSortingSink;->offset:I

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lj$/util/stream/Sink;->begin(J)V

    .line 461
    iget-boolean v0, p0, Lj$/util/stream/SortedOps$SizedIntSortingSink;->cancellationRequestedCalled:Z

    if-nez v0, :cond_1

    .line 462
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lj$/util/stream/SortedOps$SizedIntSortingSink;->offset:I

    if-ge v0, v1, :cond_0

    .line 463
    iget-object v1, p0, Lj$/util/stream/SortedOps$SizedIntSortingSink;->downstream:Lj$/util/stream/Sink;

    iget-object v2, p0, Lj$/util/stream/SortedOps$SizedIntSortingSink;->array:[I

    aget v2, v2, v0

    invoke-interface {v1, v2}, Lj$/util/stream/Sink;->accept(I)V

    .line 462
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_0
    goto :goto_2

    .line 466
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget v1, p0, Lj$/util/stream/SortedOps$SizedIntSortingSink;->offset:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lj$/util/stream/SortedOps$SizedIntSortingSink;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v1}, Lj$/util/stream/Sink;->cancellationRequested()Z

    move-result v1

    if-nez v1, :cond_2

    .line 467
    iget-object v1, p0, Lj$/util/stream/SortedOps$SizedIntSortingSink;->downstream:Lj$/util/stream/Sink;

    iget-object v2, p0, Lj$/util/stream/SortedOps$SizedIntSortingSink;->array:[I

    aget v2, v2, v0

    invoke-interface {v1, v2}, Lj$/util/stream/Sink;->accept(I)V

    .line 466
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 469
    .end local v0    # "i":I
    :cond_2
    :goto_2
    iget-object v0, p0, Lj$/util/stream/SortedOps$SizedIntSortingSink;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v0}, Lj$/util/stream/Sink;->end()V

    .line 470
    const/4 v0, 0x0

    iput-object v0, p0, Lj$/util/stream/SortedOps$SizedIntSortingSink;->array:[I

    .line 471
    return-void
.end method
