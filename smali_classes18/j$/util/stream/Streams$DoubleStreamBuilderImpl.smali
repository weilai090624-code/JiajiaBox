.class final Lj$/util/stream/Streams$DoubleStreamBuilderImpl;
.super Lj$/util/stream/Streams$AbstractStreamBuilderImpl;
.source "Streams.java"

# interfaces
.implements Lj$/util/stream/DoubleStream$Builder;
.implements Lj$/util/Spliterator$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DoubleStreamBuilderImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/stream/Streams$AbstractStreamBuilderImpl<",
        "Ljava/lang/Double;",
        "Lj$/util/Spliterator$OfDouble;",
        ">;",
        "Lj$/util/stream/DoubleStream$Builder;",
        "Lj$/util/Spliterator$OfDouble;"
    }
.end annotation


# instance fields
.field buffer:Lj$/util/stream/SpinedBuffer$OfDouble;

.field first:D


# direct methods
.method constructor <init>()V
    .locals 1

    .line 611
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lj$/util/stream/Streams$AbstractStreamBuilderImpl;-><init>(Lj$/util/stream/Streams-IA;)V

    return-void
.end method

.method constructor <init>(D)V
    .locals 1
    .param p1, "t"    # D

    .line 618
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lj$/util/stream/Streams$AbstractStreamBuilderImpl;-><init>(Lj$/util/stream/Streams-IA;)V

    .line 619
    iput-wide p1, p0, Lj$/util/stream/Streams$DoubleStreamBuilderImpl;->first:D

    .line 620
    const/4 v0, -0x2

    iput v0, p0, Lj$/util/stream/Streams$DoubleStreamBuilderImpl;->count:I

    .line 621
    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 3
    .param p1, "t"    # D

    .line 627
    iget v0, p0, Lj$/util/stream/Streams$DoubleStreamBuilderImpl;->count:I

    if-nez v0, :cond_0

    .line 628
    iput-wide p1, p0, Lj$/util/stream/Streams$DoubleStreamBuilderImpl;->first:D

    .line 629
    iget v0, p0, Lj$/util/stream/Streams$DoubleStreamBuilderImpl;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lj$/util/stream/Streams$DoubleStreamBuilderImpl;->count:I

    goto :goto_0

    .line 631
    :cond_0
    iget v0, p0, Lj$/util/stream/Streams$DoubleStreamBuilderImpl;->count:I

    if-lez v0, :cond_2

    .line 632
    iget-object v0, p0, Lj$/util/stream/Streams$DoubleStreamBuilderImpl;->buffer:Lj$/util/stream/SpinedBuffer$OfDouble;

    if-nez v0, :cond_1

    .line 633
    new-instance v0, Lj$/util/stream/SpinedBuffer$OfDouble;

    invoke-direct {v0}, Lj$/util/stream/SpinedBuffer$OfDouble;-><init>()V

    iput-object v0, p0, Lj$/util/stream/Streams$DoubleStreamBuilderImpl;->buffer:Lj$/util/stream/SpinedBuffer$OfDouble;

    .line 634
    iget-object v0, p0, Lj$/util/stream/Streams$DoubleStreamBuilderImpl;->buffer:Lj$/util/stream/SpinedBuffer$OfDouble;

    iget-wide v1, p0, Lj$/util/stream/Streams$DoubleStreamBuilderImpl;->first:D

    invoke-virtual {v0, v1, v2}, Lj$/util/stream/SpinedBuffer$OfDouble;->accept(D)V

    .line 635
    iget v0, p0, Lj$/util/stream/Streams$DoubleStreamBuilderImpl;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lj$/util/stream/Streams$DoubleStreamBuilderImpl;->count:I

    .line 638
    :cond_1
    iget-object v0, p0, Lj$/util/stream/Streams$DoubleStreamBuilderImpl;->buffer:Lj$/util/stream/SpinedBuffer$OfDouble;

    invoke-virtual {v0, p1, p2}, Lj$/util/stream/SpinedBuffer$OfDouble;->accept(D)V

    .line 643
    :goto_0
    return-void

    .line 641
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public synthetic add(D)Lj$/util/stream/DoubleStream$Builder;
    .locals 0

    invoke-static {p0, p1, p2}, Lj$/util/stream/DoubleStream$Builder$-CC;->$default$add(Lj$/util/stream/DoubleStream$Builder;D)Lj$/util/stream/DoubleStream$Builder;

    move-result-object p1

    return-object p1
.end method

.method public synthetic andThen(Ljava/util/function/DoubleConsumer;)Ljava/util/function/DoubleConsumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/DoubleConsumer$-CC;->$default$andThen(Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleConsumer;)Ljava/util/function/DoubleConsumer;

    move-result-object p1

    return-object p1
.end method

.method public build()Lj$/util/stream/DoubleStream;
    .locals 3

    .line 647
    iget v0, p0, Lj$/util/stream/Streams$DoubleStreamBuilderImpl;->count:I

    .line 648
    .local v0, "c":I
    if-ltz v0, :cond_1

    .line 650
    iget v1, p0, Lj$/util/stream/Streams$DoubleStreamBuilderImpl;->count:I

    neg-int v1, v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lj$/util/stream/Streams$DoubleStreamBuilderImpl;->count:I

    .line 653
    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    invoke-static {p0, v2}, Lj$/util/stream/StreamSupport;->doubleStream(Lj$/util/Spliterator$OfDouble;Z)Lj$/util/stream/DoubleStream;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lj$/util/stream/Streams$DoubleStreamBuilderImpl;->buffer:Lj$/util/stream/SpinedBuffer$OfDouble;

    invoke-virtual {v1}, Lj$/util/stream/SpinedBuffer$OfDouble;->spliterator()Lj$/util/Spliterator$OfDouble;

    move-result-object v1

    invoke-static {v1, v2}, Lj$/util/stream/StreamSupport;->doubleStream(Lj$/util/Spliterator$OfDouble;Z)Lj$/util/stream/DoubleStream;

    move-result-object v1

    :goto_0
    return-object v1

    .line 656
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 597
    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Lj$/util/stream/Streams$DoubleStreamBuilderImpl;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    return-void
.end method

.method public synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$OfDouble$-CC;->$default$forEachRemaining(Lj$/util/Spliterator$OfDouble;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava/util/function/DoubleConsumer;)V
    .locals 2
    .param p1, "action"    # Ljava/util/function/DoubleConsumer;

    .line 679
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    iget v0, p0, Lj$/util/stream/Streams$DoubleStreamBuilderImpl;->count:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 682
    iget-wide v0, p0, Lj$/util/stream/Streams$DoubleStreamBuilderImpl;->first:D

    invoke-interface {p1, v0, v1}, Ljava/util/function/DoubleConsumer;->accept(D)V

    .line 683
    const/4 v0, -0x1

    iput v0, p0, Lj$/util/stream/Streams$DoubleStreamBuilderImpl;->count:I

    .line 685
    :cond_0
    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 597
    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Lj$/util/stream/Streams$DoubleStreamBuilderImpl;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result p1

    return p1
.end method

.method public synthetic tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$OfDouble$-CC;->$default$tryAdvance(Lj$/util/Spliterator$OfDouble;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava/util/function/DoubleConsumer;)Z
    .locals 2
    .param p1, "action"    # Ljava/util/function/DoubleConsumer;

    .line 665
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    iget v0, p0, Lj$/util/stream/Streams$DoubleStreamBuilderImpl;->count:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 668
    iget-wide v0, p0, Lj$/util/stream/Streams$DoubleStreamBuilderImpl;->first:D

    invoke-interface {p1, v0, v1}, Ljava/util/function/DoubleConsumer;->accept(D)V

    .line 669
    const/4 v0, -0x1

    iput v0, p0, Lj$/util/stream/Streams$DoubleStreamBuilderImpl;->count:I

    .line 670
    const/4 v0, 0x1

    return v0

    .line 673
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator$OfDouble;
    .locals 1

    .line 597
    invoke-super {p0}, Lj$/util/stream/Streams$AbstractStreamBuilderImpl;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Lj$/util/Spliterator$OfDouble;

    return-object v0
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator$OfPrimitive;
    .locals 1

    .line 597
    invoke-super {p0}, Lj$/util/stream/Streams$AbstractStreamBuilderImpl;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Lj$/util/Spliterator$OfPrimitive;

    return-object v0
.end method
