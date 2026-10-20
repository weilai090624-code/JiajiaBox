.class final Lj$/util/stream/SortedOps$SizedDoubleSortingSink;
.super Lj$/util/stream/SortedOps$AbstractDoubleSortingSink;
.source "SortedOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/SortedOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SizedDoubleSortingSink"
.end annotation


# instance fields
.field private array:[D

.field private offset:I


# direct methods
.method constructor <init>(Lj$/util/stream/Sink;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/Sink<",
            "-",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 645
    .local p1, "downstream":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Double;>;"
    invoke-direct {p0, p1}, Lj$/util/stream/SortedOps$AbstractDoubleSortingSink;-><init>(Lj$/util/stream/Sink;)V

    .line 646
    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 3
    .param p1, "t"    # D

    .line 673
    iget-object v0, p0, Lj$/util/stream/SortedOps$SizedDoubleSortingSink;->array:[D

    iget v1, p0, Lj$/util/stream/SortedOps$SizedDoubleSortingSink;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lj$/util/stream/SortedOps$SizedDoubleSortingSink;->offset:I

    aput-wide p1, v0, v1

    .line 674
    return-void
.end method

.method public begin(J)V
    .locals 3
    .param p1, "size"    # J

    .line 650
    const-wide/32 v0, 0x7ffffff7

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 652
    long-to-int v0, p1

    new-array v0, v0, [D

    iput-object v0, p0, Lj$/util/stream/SortedOps$SizedDoubleSortingSink;->array:[D

    .line 653
    return-void

    .line 651
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Stream size exceeds max array size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public end()V
    .locals 5

    .line 657
    iget-object v0, p0, Lj$/util/stream/SortedOps$SizedDoubleSortingSink;->array:[D

    const/4 v1, 0x0

    iget v2, p0, Lj$/util/stream/SortedOps$SizedDoubleSortingSink;->offset:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->sort([DII)V

    .line 658
    iget-object v0, p0, Lj$/util/stream/SortedOps$SizedDoubleSortingSink;->downstream:Lj$/util/stream/Sink;

    iget v1, p0, Lj$/util/stream/SortedOps$SizedDoubleSortingSink;->offset:I

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lj$/util/stream/Sink;->begin(J)V

    .line 659
    iget-boolean v0, p0, Lj$/util/stream/SortedOps$SizedDoubleSortingSink;->cancellationRequestedCalled:Z

    if-nez v0, :cond_1

    .line 660
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lj$/util/stream/SortedOps$SizedDoubleSortingSink;->offset:I

    if-ge v0, v1, :cond_0

    .line 661
    iget-object v1, p0, Lj$/util/stream/SortedOps$SizedDoubleSortingSink;->downstream:Lj$/util/stream/Sink;

    iget-object v2, p0, Lj$/util/stream/SortedOps$SizedDoubleSortingSink;->array:[D

    aget-wide v3, v2, v0

    invoke-interface {v1, v3, v4}, Lj$/util/stream/Sink;->accept(D)V

    .line 660
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_0
    goto :goto_2

    .line 664
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget v1, p0, Lj$/util/stream/SortedOps$SizedDoubleSortingSink;->offset:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lj$/util/stream/SortedOps$SizedDoubleSortingSink;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v1}, Lj$/util/stream/Sink;->cancellationRequested()Z

    move-result v1

    if-nez v1, :cond_2

    .line 665
    iget-object v1, p0, Lj$/util/stream/SortedOps$SizedDoubleSortingSink;->downstream:Lj$/util/stream/Sink;

    iget-object v2, p0, Lj$/util/stream/SortedOps$SizedDoubleSortingSink;->array:[D

    aget-wide v3, v2, v0

    invoke-interface {v1, v3, v4}, Lj$/util/stream/Sink;->accept(D)V

    .line 664
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 667
    .end local v0    # "i":I
    :cond_2
    :goto_2
    iget-object v0, p0, Lj$/util/stream/SortedOps$SizedDoubleSortingSink;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v0}, Lj$/util/stream/Sink;->end()V

    .line 668
    const/4 v0, 0x0

    iput-object v0, p0, Lj$/util/stream/SortedOps$SizedDoubleSortingSink;->array:[D

    .line 669
    return-void
.end method
