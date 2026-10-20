.class final Lj$/util/stream/Streams$LongStreamBuilderImpl;
.super Lj$/util/stream/Streams$AbstractStreamBuilderImpl;
.source "Streams.java"

# interfaces
.implements Lj$/util/stream/LongStream$Builder;
.implements Lj$/util/Spliterator$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LongStreamBuilderImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/stream/Streams$AbstractStreamBuilderImpl<",
        "Ljava/lang/Long;",
        "Lj$/util/Spliterator$OfLong;",
        ">;",
        "Lj$/util/stream/LongStream$Builder;",
        "Lj$/util/Spliterator$OfLong;"
    }
.end annotation


# instance fields
.field buffer:Lj$/util/stream/SpinedBuffer$OfLong;

.field first:J


# direct methods
.method constructor <init>()V
    .locals 1

    .line 520
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lj$/util/stream/Streams$AbstractStreamBuilderImpl;-><init>(Lj$/util/stream/Streams-IA;)V

    return-void
.end method

.method constructor <init>(J)V
    .locals 1
    .param p1, "t"    # J

    .line 527
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lj$/util/stream/Streams$AbstractStreamBuilderImpl;-><init>(Lj$/util/stream/Streams-IA;)V

    .line 528
    iput-wide p1, p0, Lj$/util/stream/Streams$LongStreamBuilderImpl;->first:J

    .line 529
    const/4 v0, -0x2

    iput v0, p0, Lj$/util/stream/Streams$LongStreamBuilderImpl;->count:I

    .line 530
    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 3
    .param p1, "t"    # J

    .line 536
    iget v0, p0, Lj$/util/stream/Streams$LongStreamBuilderImpl;->count:I

    if-nez v0, :cond_0

    .line 537
    iput-wide p1, p0, Lj$/util/stream/Streams$LongStreamBuilderImpl;->first:J

    .line 538
    iget v0, p0, Lj$/util/stream/Streams$LongStreamBuilderImpl;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lj$/util/stream/Streams$LongStreamBuilderImpl;->count:I

    goto :goto_0

    .line 540
    :cond_0
    iget v0, p0, Lj$/util/stream/Streams$LongStreamBuilderImpl;->count:I

    if-lez v0, :cond_2

    .line 541
    iget-object v0, p0, Lj$/util/stream/Streams$LongStreamBuilderImpl;->buffer:Lj$/util/stream/SpinedBuffer$OfLong;

    if-nez v0, :cond_1

    .line 542
    new-instance v0, Lj$/util/stream/SpinedBuffer$OfLong;

    invoke-direct {v0}, Lj$/util/stream/SpinedBuffer$OfLong;-><init>()V

    iput-object v0, p0, Lj$/util/stream/Streams$LongStreamBuilderImpl;->buffer:Lj$/util/stream/SpinedBuffer$OfLong;

    .line 543
    iget-object v0, p0, Lj$/util/stream/Streams$LongStreamBuilderImpl;->buffer:Lj$/util/stream/SpinedBuffer$OfLong;

    iget-wide v1, p0, Lj$/util/stream/Streams$LongStreamBuilderImpl;->first:J

    invoke-virtual {v0, v1, v2}, Lj$/util/stream/SpinedBuffer$OfLong;->accept(J)V

    .line 544
    iget v0, p0, Lj$/util/stream/Streams$LongStreamBuilderImpl;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lj$/util/stream/Streams$LongStreamBuilderImpl;->count:I

    .line 547
    :cond_1
    iget-object v0, p0, Lj$/util/stream/Streams$LongStreamBuilderImpl;->buffer:Lj$/util/stream/SpinedBuffer$OfLong;

    invoke-virtual {v0, p1, p2}, Lj$/util/stream/SpinedBuffer$OfLong;->accept(J)V

    .line 552
    :goto_0
    return-void

    .line 550
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public synthetic add(J)Lj$/util/stream/LongStream$Builder;
    .locals 0

    invoke-static {p0, p1, p2}, Lj$/util/stream/LongStream$Builder$-CC;->$default$add(Lj$/util/stream/LongStream$Builder;J)Lj$/util/stream/LongStream$Builder;

    move-result-object p1

    return-object p1
.end method

.method public synthetic andThen(Ljava/util/function/LongConsumer;)Ljava/util/function/LongConsumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/LongConsumer$-CC;->$default$andThen(Ljava/util/function/LongConsumer;Ljava/util/function/LongConsumer;)Ljava/util/function/LongConsumer;

    move-result-object p1

    return-object p1
.end method

.method public build()Lj$/util/stream/LongStream;
    .locals 3

    .line 556
    iget v0, p0, Lj$/util/stream/Streams$LongStreamBuilderImpl;->count:I

    .line 557
    .local v0, "c":I
    if-ltz v0, :cond_1

    .line 559
    iget v1, p0, Lj$/util/stream/Streams$LongStreamBuilderImpl;->count:I

    neg-int v1, v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lj$/util/stream/Streams$LongStreamBuilderImpl;->count:I

    .line 562
    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    invoke-static {p0, v2}, Lj$/util/stream/StreamSupport;->longStream(Lj$/util/Spliterator$OfLong;Z)Lj$/util/stream/LongStream;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lj$/util/stream/Streams$LongStreamBuilderImpl;->buffer:Lj$/util/stream/SpinedBuffer$OfLong;

    invoke-virtual {v1}, Lj$/util/stream/SpinedBuffer$OfLong;->spliterator()Lj$/util/Spliterator$OfLong;

    move-result-object v1

    invoke-static {v1, v2}, Lj$/util/stream/StreamSupport;->longStream(Lj$/util/Spliterator$OfLong;Z)Lj$/util/stream/LongStream;

    move-result-object v1

    :goto_0
    return-object v1

    .line 565
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 506
    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Lj$/util/stream/Streams$LongStreamBuilderImpl;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method public synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$OfLong$-CC;->$default$forEachRemaining(Lj$/util/Spliterator$OfLong;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava/util/function/LongConsumer;)V
    .locals 2
    .param p1, "action"    # Ljava/util/function/LongConsumer;

    .line 588
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    iget v0, p0, Lj$/util/stream/Streams$LongStreamBuilderImpl;->count:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 591
    iget-wide v0, p0, Lj$/util/stream/Streams$LongStreamBuilderImpl;->first:J

    invoke-interface {p1, v0, v1}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 592
    const/4 v0, -0x1

    iput v0, p0, Lj$/util/stream/Streams$LongStreamBuilderImpl;->count:I

    .line 594
    :cond_0
    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 506
    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Lj$/util/stream/Streams$LongStreamBuilderImpl;->tryAdvance(Ljava/util/function/LongConsumer;)Z

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

    .line 574
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    iget v0, p0, Lj$/util/stream/Streams$LongStreamBuilderImpl;->count:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 577
    iget-wide v0, p0, Lj$/util/stream/Streams$LongStreamBuilderImpl;->first:J

    invoke-interface {p1, v0, v1}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 578
    const/4 v0, -0x1

    iput v0, p0, Lj$/util/stream/Streams$LongStreamBuilderImpl;->count:I

    .line 579
    const/4 v0, 0x1

    return v0

    .line 582
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator$OfLong;
    .locals 1

    .line 506
    invoke-super {p0}, Lj$/util/stream/Streams$AbstractStreamBuilderImpl;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Lj$/util/Spliterator$OfLong;

    return-object v0
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator$OfPrimitive;
    .locals 1

    .line 506
    invoke-super {p0}, Lj$/util/stream/Streams$AbstractStreamBuilderImpl;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Lj$/util/Spliterator$OfPrimitive;

    return-object v0
.end method
