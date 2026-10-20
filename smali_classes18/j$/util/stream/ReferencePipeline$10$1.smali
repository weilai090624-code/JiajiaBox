.class Lj$/util/stream/ReferencePipeline$10$1;
.super Lj$/util/stream/Sink$ChainedReference;
.source "ReferencePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/stream/ReferencePipeline$10;->opWrapSink(ILj$/util/stream/Sink;)Lj$/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/stream/Sink$ChainedReference<",
        "TP_OUT;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field cancellationRequestedCalled:Z

.field downstreamAsLong:Ljava/util/function/LongConsumer;

.field final synthetic this$1:Lj$/util/stream/ReferencePipeline$10;


# direct methods
.method constructor <init>(Lj$/util/stream/ReferencePipeline$10;Lj$/util/stream/Sink;)V
    .locals 2
    .param p1, "this$1"    # Lj$/util/stream/ReferencePipeline$10;

    .line 394
    .local p0, "this":Lj$/util/stream/ReferencePipeline$10$1;, "Ljava/util/stream/ReferencePipeline$10$1;"
    .local p2, "downstream":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Long;>;"
    iput-object p1, p0, Lj$/util/stream/ReferencePipeline$10$1;->this$1:Lj$/util/stream/ReferencePipeline$10;

    invoke-direct {p0, p2}, Lj$/util/stream/Sink$ChainedReference;-><init>(Lj$/util/stream/Sink;)V

    .line 399
    iget-object v0, p0, Lj$/util/stream/ReferencePipeline$10$1;->downstream:Lj$/util/stream/Sink;

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lj$/util/stream/LongPipeline$$ExternalSyntheticLambda12;

    invoke-direct {v1, v0}, Lj$/util/stream/LongPipeline$$ExternalSyntheticLambda12;-><init>(Lj$/util/stream/Sink;)V

    iput-object v1, p0, Lj$/util/stream/ReferencePipeline$10$1;->downstreamAsLong:Ljava/util/function/LongConsumer;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP_OUT;)V"
        }
    .end annotation

    .line 408
    .local p0, "this":Lj$/util/stream/ReferencePipeline$10$1;, "Ljava/util/stream/ReferencePipeline$10$1;"
    .local p1, "u":Ljava/lang/Object;, "TP_OUT;"
    iget-object v0, p0, Lj$/util/stream/ReferencePipeline$10$1;->this$1:Lj$/util/stream/ReferencePipeline$10;

    iget-object v0, v0, Lj$/util/stream/ReferencePipeline$10;->val$mapper:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/stream/LongStream;

    .line 409
    .local v0, "result":Lj$/util/stream/LongStream;
    if-eqz v0, :cond_3

    .line 410
    :try_start_0
    iget-boolean v1, p0, Lj$/util/stream/ReferencePipeline$10$1;->cancellationRequestedCalled:Z

    if-nez v1, :cond_0

    .line 411
    invoke-interface {v0}, Lj$/util/stream/LongStream;->sequential()Lj$/util/stream/LongStream;

    move-result-object v1

    iget-object v2, p0, Lj$/util/stream/ReferencePipeline$10$1;->downstreamAsLong:Ljava/util/function/LongConsumer;

    invoke-interface {v1, v2}, Lj$/util/stream/LongStream;->forEach(Ljava/util/function/LongConsumer;)V

    goto :goto_1

    .line 414
    :cond_0
    invoke-interface {v0}, Lj$/util/stream/LongStream;->sequential()Lj$/util/stream/LongStream;

    move-result-object v1

    invoke-interface {v1}, Lj$/util/stream/LongStream;->spliterator()Lj$/util/Spliterator$OfLong;

    move-result-object v1

    .line 415
    .local v1, "s":Lj$/util/Spliterator$OfLong;
    :cond_1
    iget-object v2, p0, Lj$/util/stream/ReferencePipeline$10$1;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v2}, Lj$/util/stream/Sink;->cancellationRequested()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lj$/util/stream/ReferencePipeline$10$1;->downstreamAsLong:Ljava/util/function/LongConsumer;

    invoke-interface {v1, v2}, Lj$/util/Spliterator$OfLong;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    goto :goto_1

    .line 408
    .end local v1    # "s":Lj$/util/Spliterator$OfLong;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {v0}, Lj$/util/stream/LongStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v1

    .line 418
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lj$/util/stream/LongStream;->close()V

    .line 419
    .end local v0    # "result":Lj$/util/stream/LongStream;
    :cond_4
    return-void
.end method

.method public begin(J)V
    .locals 3
    .param p1, "size"    # J

    .line 403
    .local p0, "this":Lj$/util/stream/ReferencePipeline$10$1;, "Ljava/util/stream/ReferencePipeline$10$1;"
    iget-object v0, p0, Lj$/util/stream/ReferencePipeline$10$1;->downstream:Lj$/util/stream/Sink;

    const-wide/16 v1, -0x1

    invoke-interface {v0, v1, v2}, Lj$/util/stream/Sink;->begin(J)V

    .line 404
    return-void
.end method

.method public cancellationRequested()Z
    .locals 1

    .line 423
    .local p0, "this":Lj$/util/stream/ReferencePipeline$10$1;, "Ljava/util/stream/ReferencePipeline$10$1;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/stream/ReferencePipeline$10$1;->cancellationRequestedCalled:Z

    .line 424
    iget-object v0, p0, Lj$/util/stream/ReferencePipeline$10$1;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v0}, Lj$/util/stream/Sink;->cancellationRequested()Z

    move-result v0

    return v0
.end method
