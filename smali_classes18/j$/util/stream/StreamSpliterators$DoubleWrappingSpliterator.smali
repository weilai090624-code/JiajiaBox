.class final Lj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;
.super Lj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;
.source "StreamSpliterators.java"

# interfaces
.implements Lj$/util/Spliterator$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/StreamSpliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DoubleWrappingSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator<",
        "TP_IN;",
        "Ljava/lang/Double;",
        "Lj$/util/stream/SpinedBuffer$OfDouble;",
        ">;",
        "Lj$/util/Spliterator$OfDouble;"
    }
.end annotation


# direct methods
.method constructor <init>(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;Z)V
    .locals 0
    .param p3, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/PipelineHelper<",
            "Ljava/lang/Double;",
            ">;",
            "Lj$/util/Spliterator<",
            "TP_IN;>;Z)V"
        }
    .end annotation

    .line 450
    .local p0, "this":Lj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator<TP_IN;>;"
    .local p1, "ph":Lj$/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Double;>;"
    .local p2, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-direct {p0, p1, p2, p3}, Lj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;-><init>(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;Z)V

    .line 451
    return-void
.end method

.method constructor <init>(Lj$/util/stream/PipelineHelper;Ljava/util/function/Supplier;Z)V
    .locals 0
    .param p3, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/PipelineHelper<",
            "Ljava/lang/Double;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Lj$/util/Spliterator<",
            "TP_IN;>;>;Z)V"
        }
    .end annotation

    .line 444
    .local p0, "this":Lj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator<TP_IN;>;"
    .local p1, "ph":Lj$/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Double;>;"
    .local p2, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/Spliterator<TP_IN;>;>;"
    invoke-direct {p0, p1, p2, p3}, Lj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;-><init>(Lj$/util/stream/PipelineHelper;Ljava/util/function/Supplier;Z)V

    .line 445
    return-void
.end method


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 437
    .local p0, "this":Lj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator<TP_IN;>;"
    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Lj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    return-void
.end method

.method public synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$OfDouble$-CC;->$default$forEachRemaining(Lj$/util/Spliterator$OfDouble;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava/util/function/DoubleConsumer;)V
    .locals 3
    .param p1, "consumer"    # Ljava/util/function/DoubleConsumer;

    .line 482
    .local p0, "this":Lj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator<TP_IN;>;"
    iget-object v0, p0, Lj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->buffer:Lj$/util/stream/AbstractSpinedBuffer;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->finished:Z

    if-nez v0, :cond_0

    .line 483
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    invoke-virtual {p0}, Lj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->init()V

    .line 486
    iget-object v0, p0, Lj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->ph:Lj$/util/stream/PipelineHelper;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/DoubleConsumer;)V

    iget-object v2, p0, Lj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->spliterator:Lj$/util/Spliterator;

    invoke-virtual {v0, v1, v2}, Lj$/util/stream/PipelineHelper;->wrapAndCopyInto(Lj$/util/stream/Sink;Lj$/util/Spliterator;)Lj$/util/stream/Sink;

    .line 487
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->finished:Z

    goto :goto_0

    .line 490
    :cond_0
    invoke-virtual {p0, p1}, Lj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 492
    :goto_0
    return-void
.end method

.method initPartialTraversalState()V
    .locals 3

    .line 460
    .local p0, "this":Lj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator<TP_IN;>;"
    new-instance v0, Lj$/util/stream/SpinedBuffer$OfDouble;

    invoke-direct {v0}, Lj$/util/stream/SpinedBuffer$OfDouble;-><init>()V

    .line 461
    .local v0, "b":Lj$/util/stream/SpinedBuffer$OfDouble;
    iput-object v0, p0, Lj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->buffer:Lj$/util/stream/AbstractSpinedBuffer;

    .line 462
    iget-object v1, p0, Lj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->ph:Lj$/util/stream/PipelineHelper;

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator$$ExternalSyntheticLambda1;-><init>(Lj$/util/stream/SpinedBuffer$OfDouble;)V

    invoke-virtual {v1, v2}, Lj$/util/stream/PipelineHelper;->wrapSink(Lj$/util/stream/Sink;)Lj$/util/stream/Sink;

    move-result-object v1

    iput-object v1, p0, Lj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->bufferSink:Lj$/util/stream/Sink;

    .line 463
    new-instance v1, Lj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator$$ExternalSyntheticLambda2;-><init>(Lj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;)V

    iput-object v1, p0, Lj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->pusher:Ljava/util/function/BooleanSupplier;

    .line 464
    return-void
.end method

.method synthetic lambda$initPartialTraversalState$0$java-util-stream-StreamSpliterators$DoubleWrappingSpliterator()Z
    .locals 2

    .line 463
    .local p0, "this":Lj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator<TP_IN;>;"
    iget-object v0, p0, Lj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->spliterator:Lj$/util/Spliterator;

    iget-object v1, p0, Lj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->bufferSink:Lj$/util/stream/Sink;

    invoke-interface {v0, v1}, Lj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 437
    .local p0, "this":Lj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator<TP_IN;>;"
    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Lj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

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
    .locals 4
    .param p1, "consumer"    # Ljava/util/function/DoubleConsumer;

    .line 473
    .local p0, "this":Lj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator<TP_IN;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    invoke-virtual {p0}, Lj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->doAdvance()Z

    move-result v0

    .line 475
    .local v0, "hasNext":Z
    if-eqz v0, :cond_0

    .line 476
    iget-object v1, p0, Lj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->buffer:Lj$/util/stream/AbstractSpinedBuffer;

    check-cast v1, Lj$/util/stream/SpinedBuffer$OfDouble;

    iget-wide v2, p0, Lj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->nextToConsume:J

    invoke-virtual {v1, v2, v3}, Lj$/util/stream/SpinedBuffer$OfDouble;->get(J)D

    move-result-wide v1

    invoke-interface {p1, v1, v2}, Ljava/util/function/DoubleConsumer;->accept(D)V

    .line 477
    :cond_0
    return v0
.end method

.method public trySplit()Lj$/util/Spliterator$OfDouble;
    .locals 1

    .line 468
    .local p0, "this":Lj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator<TP_IN;>;"
    invoke-super {p0}, Lj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Lj$/util/Spliterator$OfDouble;

    return-object v0
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator$OfPrimitive;
    .locals 1

    .line 437
    .local p0, "this":Lj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator<TP_IN;>;"
    invoke-virtual {p0}, Lj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->trySplit()Lj$/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator;
    .locals 1

    .line 437
    .local p0, "this":Lj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator<TP_IN;>;"
    invoke-virtual {p0}, Lj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->trySplit()Lj$/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method wrap(Lj$/util/Spliterator;)Lj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/Spliterator<",
            "TP_IN;>;)",
            "Lj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator<",
            "TP_IN;",
            "Ljava/lang/Double;",
            "*>;"
        }
    .end annotation

    .line 455
    .local p0, "this":Lj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator<TP_IN;>;"
    .local p1, "s":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    new-instance v0, Lj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;

    iget-object v1, p0, Lj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->ph:Lj$/util/stream/PipelineHelper;

    iget-boolean v2, p0, Lj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->isParallel:Z

    invoke-direct {v0, v1, p1, v2}, Lj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;-><init>(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;Z)V

    return-object v0
.end method
