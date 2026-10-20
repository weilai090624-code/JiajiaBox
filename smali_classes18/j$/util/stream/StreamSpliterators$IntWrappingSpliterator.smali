.class final Lj$/util/stream/StreamSpliterators$IntWrappingSpliterator;
.super Lj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;
.source "StreamSpliterators.java"

# interfaces
.implements Lj$/util/Spliterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/StreamSpliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IntWrappingSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator<",
        "TP_IN;",
        "Ljava/lang/Integer;",
        "Lj$/util/stream/SpinedBuffer$OfInt;",
        ">;",
        "Lj$/util/Spliterator$OfInt;"
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
            "Ljava/lang/Integer;",
            ">;",
            "Lj$/util/Spliterator<",
            "TP_IN;>;Z)V"
        }
    .end annotation

    .line 334
    .local p0, "this":Lj$/util/stream/StreamSpliterators$IntWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator<TP_IN;>;"
    .local p1, "ph":Lj$/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Integer;>;"
    .local p2, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-direct {p0, p1, p2, p3}, Lj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;-><init>(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;Z)V

    .line 335
    return-void
.end method

.method constructor <init>(Lj$/util/stream/PipelineHelper;Ljava/util/function/Supplier;Z)V
    .locals 0
    .param p3, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/PipelineHelper<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Lj$/util/Spliterator<",
            "TP_IN;>;>;Z)V"
        }
    .end annotation

    .line 328
    .local p0, "this":Lj$/util/stream/StreamSpliterators$IntWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator<TP_IN;>;"
    .local p1, "ph":Lj$/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Integer;>;"
    .local p2, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/Spliterator<TP_IN;>;>;"
    invoke-direct {p0, p1, p2, p3}, Lj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;-><init>(Lj$/util/stream/PipelineHelper;Ljava/util/function/Supplier;Z)V

    .line 329
    return-void
.end method


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 321
    .local p0, "this":Lj$/util/stream/StreamSpliterators$IntWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator<TP_IN;>;"
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Lj$/util/stream/StreamSpliterators$IntWrappingSpliterator;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$OfInt$-CC;->$default$forEachRemaining(Lj$/util/Spliterator$OfInt;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava/util/function/IntConsumer;)V
    .locals 3
    .param p1, "consumer"    # Ljava/util/function/IntConsumer;

    .line 366
    .local p0, "this":Lj$/util/stream/StreamSpliterators$IntWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator<TP_IN;>;"
    iget-object v0, p0, Lj$/util/stream/StreamSpliterators$IntWrappingSpliterator;->buffer:Lj$/util/stream/AbstractSpinedBuffer;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lj$/util/stream/StreamSpliterators$IntWrappingSpliterator;->finished:Z

    if-nez v0, :cond_0

    .line 367
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    invoke-virtual {p0}, Lj$/util/stream/StreamSpliterators$IntWrappingSpliterator;->init()V

    .line 370
    iget-object v0, p0, Lj$/util/stream/StreamSpliterators$IntWrappingSpliterator;->ph:Lj$/util/stream/PipelineHelper;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lj$/util/stream/StreamSpliterators$IntWrappingSpliterator$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lj$/util/stream/StreamSpliterators$IntWrappingSpliterator$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/IntConsumer;)V

    iget-object v2, p0, Lj$/util/stream/StreamSpliterators$IntWrappingSpliterator;->spliterator:Lj$/util/Spliterator;

    invoke-virtual {v0, v1, v2}, Lj$/util/stream/PipelineHelper;->wrapAndCopyInto(Lj$/util/stream/Sink;Lj$/util/Spliterator;)Lj$/util/stream/Sink;

    .line 371
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/stream/StreamSpliterators$IntWrappingSpliterator;->finished:Z

    goto :goto_0

    .line 374
    :cond_0
    invoke-virtual {p0, p1}, Lj$/util/stream/StreamSpliterators$IntWrappingSpliterator;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 376
    :goto_0
    return-void
.end method

.method initPartialTraversalState()V
    .locals 3

    .line 344
    .local p0, "this":Lj$/util/stream/StreamSpliterators$IntWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator<TP_IN;>;"
    new-instance v0, Lj$/util/stream/SpinedBuffer$OfInt;

    invoke-direct {v0}, Lj$/util/stream/SpinedBuffer$OfInt;-><init>()V

    .line 345
    .local v0, "b":Lj$/util/stream/SpinedBuffer$OfInt;
    iput-object v0, p0, Lj$/util/stream/StreamSpliterators$IntWrappingSpliterator;->buffer:Lj$/util/stream/AbstractSpinedBuffer;

    .line 346
    iget-object v1, p0, Lj$/util/stream/StreamSpliterators$IntWrappingSpliterator;->ph:Lj$/util/stream/PipelineHelper;

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lj$/util/stream/StreamSpliterators$IntWrappingSpliterator$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lj$/util/stream/StreamSpliterators$IntWrappingSpliterator$$ExternalSyntheticLambda1;-><init>(Lj$/util/stream/SpinedBuffer$OfInt;)V

    invoke-virtual {v1, v2}, Lj$/util/stream/PipelineHelper;->wrapSink(Lj$/util/stream/Sink;)Lj$/util/stream/Sink;

    move-result-object v1

    iput-object v1, p0, Lj$/util/stream/StreamSpliterators$IntWrappingSpliterator;->bufferSink:Lj$/util/stream/Sink;

    .line 347
    new-instance v1, Lj$/util/stream/StreamSpliterators$IntWrappingSpliterator$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lj$/util/stream/StreamSpliterators$IntWrappingSpliterator$$ExternalSyntheticLambda2;-><init>(Lj$/util/stream/StreamSpliterators$IntWrappingSpliterator;)V

    iput-object v1, p0, Lj$/util/stream/StreamSpliterators$IntWrappingSpliterator;->pusher:Ljava/util/function/BooleanSupplier;

    .line 348
    return-void
.end method

.method synthetic lambda$initPartialTraversalState$0$java-util-stream-StreamSpliterators$IntWrappingSpliterator()Z
    .locals 2

    .line 347
    .local p0, "this":Lj$/util/stream/StreamSpliterators$IntWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator<TP_IN;>;"
    iget-object v0, p0, Lj$/util/stream/StreamSpliterators$IntWrappingSpliterator;->spliterator:Lj$/util/Spliterator;

    iget-object v1, p0, Lj$/util/stream/StreamSpliterators$IntWrappingSpliterator;->bufferSink:Lj$/util/stream/Sink;

    invoke-interface {v0, v1}, Lj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 321
    .local p0, "this":Lj$/util/stream/StreamSpliterators$IntWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator<TP_IN;>;"
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Lj$/util/stream/StreamSpliterators$IntWrappingSpliterator;->tryAdvance(Ljava/util/function/IntConsumer;)Z

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
    .locals 4
    .param p1, "consumer"    # Ljava/util/function/IntConsumer;

    .line 357
    .local p0, "this":Lj$/util/stream/StreamSpliterators$IntWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator<TP_IN;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    invoke-virtual {p0}, Lj$/util/stream/StreamSpliterators$IntWrappingSpliterator;->doAdvance()Z

    move-result v0

    .line 359
    .local v0, "hasNext":Z
    if-eqz v0, :cond_0

    .line 360
    iget-object v1, p0, Lj$/util/stream/StreamSpliterators$IntWrappingSpliterator;->buffer:Lj$/util/stream/AbstractSpinedBuffer;

    check-cast v1, Lj$/util/stream/SpinedBuffer$OfInt;

    iget-wide v2, p0, Lj$/util/stream/StreamSpliterators$IntWrappingSpliterator;->nextToConsume:J

    invoke-virtual {v1, v2, v3}, Lj$/util/stream/SpinedBuffer$OfInt;->get(J)I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 361
    :cond_0
    return v0
.end method

.method public trySplit()Lj$/util/Spliterator$OfInt;
    .locals 1

    .line 352
    .local p0, "this":Lj$/util/stream/StreamSpliterators$IntWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator<TP_IN;>;"
    invoke-super {p0}, Lj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Lj$/util/Spliterator$OfInt;

    return-object v0
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator$OfPrimitive;
    .locals 1

    .line 321
    .local p0, "this":Lj$/util/stream/StreamSpliterators$IntWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator<TP_IN;>;"
    invoke-virtual {p0}, Lj$/util/stream/StreamSpliterators$IntWrappingSpliterator;->trySplit()Lj$/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator;
    .locals 1

    .line 321
    .local p0, "this":Lj$/util/stream/StreamSpliterators$IntWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator<TP_IN;>;"
    invoke-virtual {p0}, Lj$/util/stream/StreamSpliterators$IntWrappingSpliterator;->trySplit()Lj$/util/Spliterator$OfInt;

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
            "Ljava/lang/Integer;",
            "*>;"
        }
    .end annotation

    .line 339
    .local p0, "this":Lj$/util/stream/StreamSpliterators$IntWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator<TP_IN;>;"
    .local p1, "s":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    new-instance v0, Lj$/util/stream/StreamSpliterators$IntWrappingSpliterator;

    iget-object v1, p0, Lj$/util/stream/StreamSpliterators$IntWrappingSpliterator;->ph:Lj$/util/stream/PipelineHelper;

    iget-boolean v2, p0, Lj$/util/stream/StreamSpliterators$IntWrappingSpliterator;->isParallel:Z

    invoke-direct {v0, v1, p1, v2}, Lj$/util/stream/StreamSpliterators$IntWrappingSpliterator;-><init>(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;Z)V

    return-object v0
.end method
