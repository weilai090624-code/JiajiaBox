.class final Lj$/util/stream/SortedOps$SizedRefSortingSink;
.super Lj$/util/stream/SortedOps$AbstractRefSortingSink;
.source "SortedOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/SortedOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SizedRefSortingSink"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/stream/SortedOps$AbstractRefSortingSink<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private array:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private offset:I


# direct methods
.method constructor <init>(Lj$/util/stream/Sink;Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/Sink<",
            "-TT;>;",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    .line 348
    .local p0, "this":Lj$/util/stream/SortedOps$SizedRefSortingSink;, "Ljava/util/stream/SortedOps$SizedRefSortingSink<TT;>;"
    .local p1, "sink":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<-TT;>;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-direct {p0, p1, p2}, Lj$/util/stream/SortedOps$AbstractRefSortingSink;-><init>(Lj$/util/stream/Sink;Ljava/util/Comparator;)V

    .line 349
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 377
    .local p0, "this":Lj$/util/stream/SortedOps$SizedRefSortingSink;, "Ljava/util/stream/SortedOps$SizedRefSortingSink<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lj$/util/stream/SortedOps$SizedRefSortingSink;->array:[Ljava/lang/Object;

    iget v1, p0, Lj$/util/stream/SortedOps$SizedRefSortingSink;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lj$/util/stream/SortedOps$SizedRefSortingSink;->offset:I

    aput-object p1, v0, v1

    .line 378
    return-void
.end method

.method public begin(J)V
    .locals 3
    .param p1, "size"    # J

    .line 354
    .local p0, "this":Lj$/util/stream/SortedOps$SizedRefSortingSink;, "Ljava/util/stream/SortedOps$SizedRefSortingSink<TT;>;"
    const-wide/32 v0, 0x7ffffff7

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 356
    long-to-int v0, p1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lj$/util/stream/SortedOps$SizedRefSortingSink;->array:[Ljava/lang/Object;

    .line 357
    return-void

    .line 355
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Stream size exceeds max array size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public end()V
    .locals 4

    .line 361
    .local p0, "this":Lj$/util/stream/SortedOps$SizedRefSortingSink;, "Ljava/util/stream/SortedOps$SizedRefSortingSink<TT;>;"
    iget-object v0, p0, Lj$/util/stream/SortedOps$SizedRefSortingSink;->array:[Ljava/lang/Object;

    iget v1, p0, Lj$/util/stream/SortedOps$SizedRefSortingSink;->offset:I

    iget-object v2, p0, Lj$/util/stream/SortedOps$SizedRefSortingSink;->comparator:Ljava/util/Comparator;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 362
    iget-object v0, p0, Lj$/util/stream/SortedOps$SizedRefSortingSink;->downstream:Lj$/util/stream/Sink;

    iget v1, p0, Lj$/util/stream/SortedOps$SizedRefSortingSink;->offset:I

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lj$/util/stream/Sink;->begin(J)V

    .line 363
    iget-boolean v0, p0, Lj$/util/stream/SortedOps$SizedRefSortingSink;->cancellationRequestedCalled:Z

    if-nez v0, :cond_1

    .line 364
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lj$/util/stream/SortedOps$SizedRefSortingSink;->offset:I

    if-ge v0, v1, :cond_0

    .line 365
    iget-object v1, p0, Lj$/util/stream/SortedOps$SizedRefSortingSink;->downstream:Lj$/util/stream/Sink;

    iget-object v2, p0, Lj$/util/stream/SortedOps$SizedRefSortingSink;->array:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lj$/util/stream/Sink;->accept(Ljava/lang/Object;)V

    .line 364
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_0
    goto :goto_2

    .line 368
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget v1, p0, Lj$/util/stream/SortedOps$SizedRefSortingSink;->offset:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lj$/util/stream/SortedOps$SizedRefSortingSink;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v1}, Lj$/util/stream/Sink;->cancellationRequested()Z

    move-result v1

    if-nez v1, :cond_2

    .line 369
    iget-object v1, p0, Lj$/util/stream/SortedOps$SizedRefSortingSink;->downstream:Lj$/util/stream/Sink;

    iget-object v2, p0, Lj$/util/stream/SortedOps$SizedRefSortingSink;->array:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lj$/util/stream/Sink;->accept(Ljava/lang/Object;)V

    .line 368
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 371
    .end local v0    # "i":I
    :cond_2
    :goto_2
    iget-object v0, p0, Lj$/util/stream/SortedOps$SizedRefSortingSink;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v0}, Lj$/util/stream/Sink;->end()V

    .line 372
    const/4 v0, 0x0

    iput-object v0, p0, Lj$/util/stream/SortedOps$SizedRefSortingSink;->array:[Ljava/lang/Object;

    .line 373
    return-void
.end method
