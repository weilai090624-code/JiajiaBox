.class abstract Lj$/util/stream/SpinedBuffer$OfPrimitive;
.super Lj$/util/stream/AbstractSpinedBuffer;
.source "SpinedBuffer.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lj$/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/SpinedBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "OfPrimitive"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        "T_ARR:",
        "Ljava/lang/Object;",
        "T_CONS:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/stream/AbstractSpinedBuffer;",
        "Ljava/lang/Iterable<",
        "TE;>;",
        "Lj$/lang/Iterable<",
        "TE;>;"
    }
.end annotation


# instance fields
.field curChunk:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_ARR;"
        }
    .end annotation
.end field

.field spine:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT_ARR;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .line 460
    .local p0, "this":Lj$/util/stream/SpinedBuffer$OfPrimitive;, "Ljava/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>;"
    invoke-direct {p0}, Lj$/util/stream/AbstractSpinedBuffer;-><init>()V

    .line 461
    const/4 v0, 0x1

    iget v1, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive;->initialChunkPower:I

    shl-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lj$/util/stream/SpinedBuffer$OfPrimitive;->newArray(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    .line 462
    return-void
.end method

.method constructor <init>(I)V
    .locals 2
    .param p1, "initialCapacity"    # I

    .line 452
    .local p0, "this":Lj$/util/stream/SpinedBuffer$OfPrimitive;, "Ljava/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>;"
    invoke-direct {p0, p1}, Lj$/util/stream/AbstractSpinedBuffer;-><init>(I)V

    .line 453
    const/4 v0, 0x1

    iget v1, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive;->initialChunkPower:I

    shl-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lj$/util/stream/SpinedBuffer$OfPrimitive;->newArray(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    .line 454
    return-void
.end method

.method private inflateSpine()V
    .locals 3

    .line 517
    .local p0, "this":Lj$/util/stream/SpinedBuffer$OfPrimitive;, "Ljava/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>;"
    iget-object v0, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 518
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lj$/util/stream/SpinedBuffer$OfPrimitive;->newArrayArray(I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    .line 519
    new-array v0, v0, [J

    iput-object v0, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive;->priorElementCount:[J

    .line 520
    iget-object v0, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    aput-object v2, v0, v1

    .line 522
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract arrayForEach(Ljava/lang/Object;IILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_ARR;IITT_CONS;)V"
        }
    .end annotation
.end method

.method protected abstract arrayLength(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_ARR;)I"
        }
    .end annotation
.end method

.method public asPrimitiveArray()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT_ARR;"
        }
    .end annotation

    .line 584
    .local p0, "this":Lj$/util/stream/SpinedBuffer$OfPrimitive;, "Ljava/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>;"
    invoke-virtual {p0}, Lj$/util/stream/SpinedBuffer$OfPrimitive;->count()J

    move-result-wide v0

    .line 585
    .local v0, "size":J
    const-wide/32 v2, 0x7ffffff7

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 587
    long-to-int v2, v0

    invoke-virtual {p0, v2}, Lj$/util/stream/SpinedBuffer$OfPrimitive;->newArray(I)Ljava/lang/Object;

    move-result-object v2

    .line 588
    .local v2, "result":Ljava/lang/Object;, "TT_ARR;"
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lj$/util/stream/SpinedBuffer$OfPrimitive;->copyInto(Ljava/lang/Object;I)V

    .line 589
    return-object v2

    .line 586
    .end local v2    # "result":Ljava/lang/Object;, "TT_ARR;"
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Stream size exceeds max array size"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected capacity()J
    .locals 5

    .line 511
    .local p0, "this":Lj$/util/stream/SpinedBuffer$OfPrimitive;, "Ljava/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>;"
    iget v0, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    if-nez v0, :cond_0

    .line 512
    iget-object v0, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lj$/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 513
    :cond_0
    iget-object v0, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive;->priorElementCount:[J

    iget v1, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    aget-wide v1, v0, v1

    iget-object v0, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    iget v3, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    aget-object v0, v0, v3

    invoke-virtual {p0, v0}, Lj$/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v0

    int-to-long v3, v0

    add-long v0, v1, v3

    .line 511
    :goto_0
    return-wide v0
.end method

.method protected chunkFor(J)I
    .locals 6
    .param p1, "index"    # J

    .line 547
    .local p0, "this":Lj$/util/stream/SpinedBuffer$OfPrimitive;, "Ljava/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>;"
    iget v0, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    if-nez v0, :cond_1

    .line 548
    iget v0, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive;->elementIndex:I

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 549
    const/4 v0, 0x0

    return v0

    .line 551
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 554
    :cond_1
    invoke-virtual {p0}, Lj$/util/stream/SpinedBuffer$OfPrimitive;->count()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-gez v2, :cond_4

    .line 557
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    iget v1, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    if-gt v0, v1, :cond_3

    .line 558
    iget-object v1, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive;->priorElementCount:[J

    aget-wide v2, v1, v0

    iget-object v1, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lj$/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    cmp-long v1, p1, v2

    if-gez v1, :cond_2

    .line 559
    return v0

    .line 557
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 561
    .end local v0    # "j":I
    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 555
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clear()V
    .locals 2

    .line 604
    .local p0, "this":Lj$/util/stream/SpinedBuffer$OfPrimitive;, "Ljava/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>;"
    iget-object v0, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    aget-object v0, v0, v1

    iput-object v0, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    .line 606
    const/4 v0, 0x0

    iput-object v0, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    .line 607
    iput-object v0, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive;->priorElementCount:[J

    .line 609
    :cond_0
    iput v1, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive;->elementIndex:I

    .line 610
    iput v1, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    .line 611
    return-void
.end method

.method public copyInto(Ljava/lang/Object;I)V
    .locals 6
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_ARR;I)V"
        }
    .end annotation

    .line 565
    .local p0, "this":Lj$/util/stream/SpinedBuffer$OfPrimitive;, "Ljava/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>;"
    .local p1, "array":Ljava/lang/Object;, "TT_ARR;"
    int-to-long v0, p2

    invoke-virtual {p0}, Lj$/util/stream/SpinedBuffer$OfPrimitive;->count()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 566
    .local v0, "finalOffset":J
    invoke-virtual {p0, p1}, Lj$/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_3

    int-to-long v2, p2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_3

    .line 570
    iget v2, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 571
    iget-object v2, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    iget v4, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive;->elementIndex:I

    invoke-static {v2, v3, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 574
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v4, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    if-ge v2, v4, :cond_1

    .line 575
    iget-object v4, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    aget-object v4, v4, v2

    iget-object v5, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    aget-object v5, v5, v2

    invoke-virtual {p0, v5}, Lj$/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v4, v3, p1, p2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 576
    iget-object v4, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    aget-object v4, v4, v2

    invoke-virtual {p0, v4}, Lj$/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr p2, v4

    .line 574
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 578
    .end local v2    # "i":I
    :cond_1
    iget v2, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive;->elementIndex:I

    if-lez v2, :cond_2

    .line 579
    iget-object v2, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    iget v4, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive;->elementIndex:I

    invoke-static {v2, v3, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 581
    :cond_2
    :goto_1
    return-void

    .line 567
    :cond_3
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    const-string v3, "does not fit"

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected final ensureCapacity(J)V
    .locals 10
    .param p1, "targetSize"    # J

    .line 525
    .local p0, "this":Lj$/util/stream/SpinedBuffer$OfPrimitive;, "Ljava/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>;"
    invoke-virtual {p0}, Lj$/util/stream/SpinedBuffer$OfPrimitive;->capacity()J

    move-result-wide v0

    .line 526
    .local v0, "capacity":J
    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    .line 527
    invoke-direct {p0}, Lj$/util/stream/SpinedBuffer$OfPrimitive;->inflateSpine()V

    .line 528
    iget v2, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    add-int/lit8 v2, v2, 0x1

    .local v2, "i":I
    :goto_0
    cmp-long v3, p1, v0

    if-lez v3, :cond_1

    .line 529
    iget-object v3, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    array-length v3, v3

    if-lt v2, v3, :cond_0

    .line 530
    iget-object v3, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    .line 531
    .local v3, "newSpineSize":I
    iget-object v4, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    .line 532
    iget-object v4, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive;->priorElementCount:[J

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    iput-object v4, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive;->priorElementCount:[J

    .line 534
    .end local v3    # "newSpineSize":I
    :cond_0
    invoke-virtual {p0, v2}, Lj$/util/stream/SpinedBuffer$OfPrimitive;->chunkSize(I)I

    move-result v3

    .line 535
    .local v3, "nextChunkSize":I
    iget-object v4, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    invoke-virtual {p0, v3}, Lj$/util/stream/SpinedBuffer$OfPrimitive;->newArray(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v2

    .line 536
    iget-object v4, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive;->priorElementCount:[J

    iget-object v5, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive;->priorElementCount:[J

    add-int/lit8 v6, v2, -0x1

    aget-wide v6, v5, v6

    iget-object v5, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    add-int/lit8 v8, v2, -0x1

    aget-object v5, v5, v8

    invoke-virtual {p0, v5}, Lj$/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v5

    int-to-long v8, v5

    add-long/2addr v6, v8

    aput-wide v6, v4, v2

    .line 537
    int-to-long v4, v3

    add-long/2addr v0, v4

    .line 528
    .end local v3    # "nextChunkSize":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 540
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public forEach(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)V"
        }
    .end annotation

    .line 616
    .local p0, "this":Lj$/util/stream/SpinedBuffer$OfPrimitive;, "Ljava/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>;"
    .local p1, "consumer":Ljava/lang/Object;, "TT_CONS;"
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    iget v1, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 617
    iget-object v1, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    aget-object v1, v1, v0

    iget-object v3, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-virtual {p0, v3}, Lj$/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0, v1, v2, v3, p1}, Lj$/util/stream/SpinedBuffer$OfPrimitive;->arrayForEach(Ljava/lang/Object;IILjava/lang/Object;)V

    .line 616
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 620
    .end local v0    # "j":I
    :cond_0
    iget-object v0, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    iget v1, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive;->elementIndex:I

    invoke-virtual {p0, v0, v2, v1, p1}, Lj$/util/stream/SpinedBuffer$OfPrimitive;->arrayForEach(Ljava/lang/Object;IILjava/lang/Object;)V

    .line 621
    return-void
.end method

.method public abstract forEach(Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation
.end method

.method protected increaseCapacity()V
    .locals 4

    .line 543
    .local p0, "this":Lj$/util/stream/SpinedBuffer$OfPrimitive;, "Ljava/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>;"
    invoke-virtual {p0}, Lj$/util/stream/SpinedBuffer$OfPrimitive;->capacity()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lj$/util/stream/SpinedBuffer$OfPrimitive;->ensureCapacity(J)V

    .line 544
    return-void
.end method

.method public abstract iterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract newArray(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT_ARR;"
        }
    .end annotation
.end method

.method protected abstract newArrayArray(I)[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT_ARR;"
        }
    .end annotation
.end method

.method protected preAccept()V
    .locals 2

    .line 593
    .local p0, "this":Lj$/util/stream/SpinedBuffer$OfPrimitive;, "Ljava/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>;"
    iget v0, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive;->elementIndex:I

    iget-object v1, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lj$/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 594
    invoke-direct {p0}, Lj$/util/stream/SpinedBuffer$OfPrimitive;->inflateSpine()V

    .line 595
    iget v0, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    iget v1, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    .line 596
    :cond_0
    invoke-virtual {p0}, Lj$/util/stream/SpinedBuffer$OfPrimitive;->increaseCapacity()V

    .line 597
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive;->elementIndex:I

    .line 598
    iget v0, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    .line 599
    iget-object v0, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    iget v1, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    .line 601
    :cond_2
    return-void
.end method

.method public spliterator()Lj$/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 494
    .local p0, "this":Lj$/util/stream/SpinedBuffer$OfPrimitive;, "Ljava/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>;"
    invoke-virtual {p0}, Lj$/util/stream/SpinedBuffer$OfPrimitive;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj$/util/Spliterators;->spliteratorUnknownSize(Ljava/util/Iterator;I)Lj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic spliterator()Ljava/util/Spliterator;
    .locals 1

    invoke-virtual {p0}, Lj$/util/stream/SpinedBuffer$OfPrimitive;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Spliterator$Wrapper;->convert(Lj$/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
