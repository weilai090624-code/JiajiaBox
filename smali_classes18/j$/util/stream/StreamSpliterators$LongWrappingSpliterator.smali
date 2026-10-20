.class final Lj$/util/stream/StreamSpliterators$LongWrappingSpliterator;
.super Lj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;
.source "StreamSpliterators.java"

# interfaces
.implements Lj$/util/Spliterator$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/StreamSpliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LongWrappingSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator<",
        "TP_IN;",
        "Ljava/lang/Long;",
        "Lj$/util/stream/SpinedBuffer$OfLong;",
        ">;",
        "Lj$/util/Spliterator$OfLong;"
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
            "Ljava/lang/Long;",
            ">;",
            "Lj$/util/Spliterator<",
            "TP_IN;>;Z)V"
        }
    .end annotation

    .line 392
    .local p0, "this":Lj$/util/stream/StreamSpliterators$LongWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator<TP_IN;>;"
    .local p1, "ph":Lj$/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Long;>;"
    .local p2, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-direct {p0, p1, p2, p3}, Lj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;-><init>(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;Z)V

    .line 393
    return-void
.end method

.method constructor <init>(Lj$/util/stream/PipelineHelper;Ljava/util/function/Supplier;Z)V
    .locals 0
    .param p3, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/PipelineHelper<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Lj$/util/Spliterator<",
            "TP_IN;>;>;Z)V"
        }
    .end annotation

    .line 386
    .local p0, "this":Lj$/util/stream/StreamSpliterators$LongWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator<TP_IN;>;"
    .local p1, "ph":Lj$/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Long;>;"
    .local p2, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/Spliterator<TP_IN;>;>;"
    invoke-direct {p0, p1, p2, p3}, Lj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;-><init>(Lj$/util/stream/PipelineHelper;Ljava/util/function/Supplier;Z)V

    .line 387
    return-void
.end method


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 379
    .local p0, "this":Lj$/util/stream/StreamSpliterators$LongWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator<TP_IN;>;"
    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Lj$/util/stream/StreamSpliterators$LongWrappingSpliterator;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method public synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$OfLong$-CC;->$default$forEachRemaining(Lj$/util/Spliterator$OfLong;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava/util/function/LongConsumer;)V
    .locals 3
    .param p1, "consumer"    # Ljava/util/function/LongConsumer;

    .line 424
    .local p0, "this":Lj$/util/stream/StreamSpliterators$LongWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator<TP_IN;>;"
    iget-object v0, p0, Lj$/util/stream/StreamSpliterators$LongWrappingSpliterator;->buffer:Lj$/util/stream/AbstractSpinedBuffer;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lj$/util/stream/StreamSpliterators$LongWrappingSpliterator;->finished:Z

    if-nez v0, :cond_0

    .line 425
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    invoke-virtual {p0}, Lj$/util/stream/StreamSpliterators$LongWrappingSpliterator;->init()V

    .line 428
    iget-object v0, p0, Lj$/util/stream/StreamSpliterators$LongWrappingSpliterator;->ph:Lj$/util/stream/PipelineHelper;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lj$/util/stream/StreamSpliterators$LongWrappingSpliterator$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lj$/util/stream/StreamSpliterators$LongWrappingSpliterator$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/LongConsumer;)V

    iget-object v2, p0, Lj$/util/stream/StreamSpliterators$LongWrappingSpliterator;->spliterator:Lj$/util/Spliterator;

    invoke-virtual {v0, v1, v2}, Lj$/util/stream/PipelineHelper;->wrapAndCopyInto(Lj$/util/stream/Sink;Lj$/util/Spliterator;)Lj$/util/stream/Sink;

    .line 429
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/stream/StreamSpliterators$LongWrappingSpliterator;->finished:Z

    goto :goto_0

    .line 432
    :cond_0
    invoke-virtual {p0, p1}, Lj$/util/stream/StreamSpliterators$LongWrappingSpliterator;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 434
    :goto_0
    return-void
.end method

.method initPartialTraversalState()V
    .locals 3

    .line 402
    .local p0, "this":Lj$/util/stream/StreamSpliterators$LongWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator<TP_IN;>;"
    new-instance v0, Lj$/util/stream/SpinedBuffer$OfLong;

    invoke-direct {v0}, Lj$/util/stream/SpinedBuffer$OfLong;-><init>()V

    .line 403
    .local v0, "b":Lj$/util/stream/SpinedBuffer$OfLong;
    iput-object v0, p0, Lj$/util/stream/StreamSpliterators$LongWrappingSpliterator;->buffer:Lj$/util/stream/AbstractSpinedBuffer;

    .line 404
    iget-object v1, p0, Lj$/util/stream/StreamSpliterators$LongWrappingSpliterator;->ph:Lj$/util/stream/PipelineHelper;

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lj$/util/stream/StreamSpliterators$LongWrappingSpliterator$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lj$/util/stream/StreamSpliterators$LongWrappingSpliterator$$ExternalSyntheticLambda1;-><init>(Lj$/util/stream/SpinedBuffer$OfLong;)V

    invoke-virtual {v1, v2}, Lj$/util/stream/PipelineHelper;->wrapSink(Lj$/util/stream/Sink;)Lj$/util/stream/Sink;

    move-result-object v1

    iput-object v1, p0, Lj$/util/stream/StreamSpliterators$LongWrappingSpliterator;->bufferSink:Lj$/util/stream/Sink;

    .line 405
    new-instance v1, Lj$/util/stream/StreamSpliterators$LongWrappingSpliterator$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lj$/util/stream/StreamSpliterators$LongWrappingSpliterator$$ExternalSyntheticLambda2;-><init>(Lj$/util/stream/StreamSpliterators$LongWrappingSpliterator;)V

    iput-object v1, p0, Lj$/util/stream/StreamSpliterators$LongWrappingSpliterator;->pusher:Ljava/util/function/BooleanSupplier;

    .line 406
    return-void
.end method

.method synthetic lambda$initPartialTraversalState$0$java-util-stream-StreamSpliterators$LongWrappingSpliterator()Z
    .locals 2

    .line 405
    .local p0, "this":Lj$/util/stream/StreamSpliterators$LongWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator<TP_IN;>;"
    iget-object v0, p0, Lj$/util/stream/StreamSpliterators$LongWrappingSpliterator;->spliterator:Lj$/util/Spliterator;

    iget-object v1, p0, Lj$/util/stream/StreamSpliterators$LongWrappingSpliterator;->bufferSink:Lj$/util/stream/Sink;

    invoke-interface {v0, v1}, Lj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 379
    .local p0, "this":Lj$/util/stream/StreamSpliterators$LongWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator<TP_IN;>;"
    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Lj$/util/stream/StreamSpliterators$LongWrappingSpliterator;->tryAdvance(Ljava/util/function/LongConsumer;)Z

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
    .locals 4
    .param p1, "consumer"    # Ljava/util/function/LongConsumer;

    .line 415
    .local p0, "this":Lj$/util/stream/StreamSpliterators$LongWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator<TP_IN;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    invoke-virtual {p0}, Lj$/util/stream/StreamSpliterators$LongWrappingSpliterator;->doAdvance()Z

    move-result v0

    .line 417
    .local v0, "hasNext":Z
    if-eqz v0, :cond_0

    .line 418
    iget-object v1, p0, Lj$/util/stream/StreamSpliterators$LongWrappingSpliterator;->buffer:Lj$/util/stream/AbstractSpinedBuffer;

    check-cast v1, Lj$/util/stream/SpinedBuffer$OfLong;

    iget-wide v2, p0, Lj$/util/stream/StreamSpliterators$LongWrappingSpliterator;->nextToConsume:J

    invoke-virtual {v1, v2, v3}, Lj$/util/stream/SpinedBuffer$OfLong;->get(J)J

    move-result-wide v1

    invoke-interface {p1, v1, v2}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 419
    :cond_0
    return v0
.end method

.method public trySplit()Lj$/util/Spliterator$OfLong;
    .locals 1

    .line 410
    .local p0, "this":Lj$/util/stream/StreamSpliterators$LongWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator<TP_IN;>;"
    invoke-super {p0}, Lj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Lj$/util/Spliterator$OfLong;

    return-object v0
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator$OfPrimitive;
    .locals 1

    .line 379
    .local p0, "this":Lj$/util/stream/StreamSpliterators$LongWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator<TP_IN;>;"
    invoke-virtual {p0}, Lj$/util/stream/StreamSpliterators$LongWrappingSpliterator;->trySplit()Lj$/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator;
    .locals 1

    .line 379
    .local p0, "this":Lj$/util/stream/StreamSpliterators$LongWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator<TP_IN;>;"
    invoke-virtual {p0}, Lj$/util/stream/StreamSpliterators$LongWrappingSpliterator;->trySplit()Lj$/util/Spliterator$OfLong;

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
            "Ljava/lang/Long;",
            "*>;"
        }
    .end annotation

    .line 397
    .local p0, "this":Lj$/util/stream/StreamSpliterators$LongWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator<TP_IN;>;"
    .local p1, "s":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    new-instance v0, Lj$/util/stream/StreamSpliterators$LongWrappingSpliterator;

    iget-object v1, p0, Lj$/util/stream/StreamSpliterators$LongWrappingSpliterator;->ph:Lj$/util/stream/PipelineHelper;

    iget-boolean v2, p0, Lj$/util/stream/StreamSpliterators$LongWrappingSpliterator;->isParallel:Z

    invoke-direct {v0, v1, p1, v2}, Lj$/util/stream/StreamSpliterators$LongWrappingSpliterator;-><init>(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;Z)V

    return-object v0
.end method
