.class final Lj$/util/stream/Streams$IntStreamBuilderImpl;
.super Lj$/util/stream/Streams$AbstractStreamBuilderImpl;
.source "Streams.java"

# interfaces
.implements Lj$/util/stream/IntStream$Builder;
.implements Lj$/util/Spliterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IntStreamBuilderImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/stream/Streams$AbstractStreamBuilderImpl<",
        "Ljava/lang/Integer;",
        "Lj$/util/Spliterator$OfInt;",
        ">;",
        "Lj$/util/stream/IntStream$Builder;",
        "Lj$/util/Spliterator$OfInt;"
    }
.end annotation


# instance fields
.field buffer:Lj$/util/stream/SpinedBuffer$OfInt;

.field first:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 429
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lj$/util/stream/Streams$AbstractStreamBuilderImpl;-><init>(Lj$/util/stream/Streams-IA;)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .param p1, "t"    # I

    .line 436
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lj$/util/stream/Streams$AbstractStreamBuilderImpl;-><init>(Lj$/util/stream/Streams-IA;)V

    .line 437
    iput p1, p0, Lj$/util/stream/Streams$IntStreamBuilderImpl;->first:I

    .line 438
    const/4 v0, -0x2

    iput v0, p0, Lj$/util/stream/Streams$IntStreamBuilderImpl;->count:I

    .line 439
    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 2
    .param p1, "t"    # I

    .line 445
    iget v0, p0, Lj$/util/stream/Streams$IntStreamBuilderImpl;->count:I

    if-nez v0, :cond_0

    .line 446
    iput p1, p0, Lj$/util/stream/Streams$IntStreamBuilderImpl;->first:I

    .line 447
    iget v0, p0, Lj$/util/stream/Streams$IntStreamBuilderImpl;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lj$/util/stream/Streams$IntStreamBuilderImpl;->count:I

    goto :goto_0

    .line 449
    :cond_0
    iget v0, p0, Lj$/util/stream/Streams$IntStreamBuilderImpl;->count:I

    if-lez v0, :cond_2

    .line 450
    iget-object v0, p0, Lj$/util/stream/Streams$IntStreamBuilderImpl;->buffer:Lj$/util/stream/SpinedBuffer$OfInt;

    if-nez v0, :cond_1

    .line 451
    new-instance v0, Lj$/util/stream/SpinedBuffer$OfInt;

    invoke-direct {v0}, Lj$/util/stream/SpinedBuffer$OfInt;-><init>()V

    iput-object v0, p0, Lj$/util/stream/Streams$IntStreamBuilderImpl;->buffer:Lj$/util/stream/SpinedBuffer$OfInt;

    .line 452
    iget-object v0, p0, Lj$/util/stream/Streams$IntStreamBuilderImpl;->buffer:Lj$/util/stream/SpinedBuffer$OfInt;

    iget v1, p0, Lj$/util/stream/Streams$IntStreamBuilderImpl;->first:I

    invoke-virtual {v0, v1}, Lj$/util/stream/SpinedBuffer$OfInt;->accept(I)V

    .line 453
    iget v0, p0, Lj$/util/stream/Streams$IntStreamBuilderImpl;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lj$/util/stream/Streams$IntStreamBuilderImpl;->count:I

    .line 456
    :cond_1
    iget-object v0, p0, Lj$/util/stream/Streams$IntStreamBuilderImpl;->buffer:Lj$/util/stream/SpinedBuffer$OfInt;

    invoke-virtual {v0, p1}, Lj$/util/stream/SpinedBuffer$OfInt;->accept(I)V

    .line 461
    :goto_0
    return-void

    .line 459
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public synthetic add(I)Lj$/util/stream/IntStream$Builder;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/IntStream$Builder$-CC;->$default$add(Lj$/util/stream/IntStream$Builder;I)Lj$/util/stream/IntStream$Builder;

    move-result-object p1

    return-object p1
.end method

.method public synthetic andThen(Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/IntConsumer$-CC;->$default$andThen(Ljava/util/function/IntConsumer;Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;

    move-result-object p1

    return-object p1
.end method

.method public build()Lj$/util/stream/IntStream;
    .locals 3

    .line 465
    iget v0, p0, Lj$/util/stream/Streams$IntStreamBuilderImpl;->count:I

    .line 466
    .local v0, "c":I
    if-ltz v0, :cond_1

    .line 468
    iget v1, p0, Lj$/util/stream/Streams$IntStreamBuilderImpl;->count:I

    neg-int v1, v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lj$/util/stream/Streams$IntStreamBuilderImpl;->count:I

    .line 471
    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    invoke-static {p0, v2}, Lj$/util/stream/StreamSupport;->intStream(Lj$/util/Spliterator$OfInt;Z)Lj$/util/stream/IntStream;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lj$/util/stream/Streams$IntStreamBuilderImpl;->buffer:Lj$/util/stream/SpinedBuffer$OfInt;

    invoke-virtual {v1}, Lj$/util/stream/SpinedBuffer$OfInt;->spliterator()Lj$/util/Spliterator$OfInt;

    move-result-object v1

    invoke-static {v1, v2}, Lj$/util/stream/StreamSupport;->intStream(Lj$/util/Spliterator$OfInt;Z)Lj$/util/stream/IntStream;

    move-result-object v1

    :goto_0
    return-object v1

    .line 474
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 415
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Lj$/util/stream/Streams$IntStreamBuilderImpl;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$OfInt$-CC;->$default$forEachRemaining(Lj$/util/Spliterator$OfInt;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava/util/function/IntConsumer;)V
    .locals 2
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    .line 497
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    iget v0, p0, Lj$/util/stream/Streams$IntStreamBuilderImpl;->count:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 500
    iget v0, p0, Lj$/util/stream/Streams$IntStreamBuilderImpl;->first:I

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 501
    const/4 v0, -0x1

    iput v0, p0, Lj$/util/stream/Streams$IntStreamBuilderImpl;->count:I

    .line 503
    :cond_0
    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 415
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Lj$/util/stream/Streams$IntStreamBuilderImpl;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result p1

    return p1
.end method

.method public synthetic tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$OfInt$-CC;->$default$tryAdvance(Lj$/util/Spliterator$OfInt;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava/util/function/IntConsumer;)Z
    .locals 2
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    .line 483
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    iget v0, p0, Lj$/util/stream/Streams$IntStreamBuilderImpl;->count:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 486
    iget v0, p0, Lj$/util/stream/Streams$IntStreamBuilderImpl;->first:I

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 487
    const/4 v0, -0x1

    iput v0, p0, Lj$/util/stream/Streams$IntStreamBuilderImpl;->count:I

    .line 488
    const/4 v0, 0x1

    return v0

    .line 491
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator$OfInt;
    .locals 1

    .line 415
    invoke-super {p0}, Lj$/util/stream/Streams$AbstractStreamBuilderImpl;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Lj$/util/Spliterator$OfInt;

    return-object v0
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator$OfPrimitive;
    .locals 1

    .line 415
    invoke-super {p0}, Lj$/util/stream/Streams$AbstractStreamBuilderImpl;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Lj$/util/Spliterator$OfPrimitive;

    return-object v0
.end method
