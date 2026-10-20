.class Lj$/util/stream/LongPipeline$6$1;
.super Lj$/util/stream/Sink$ChainedLong;
.source "LongPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/stream/LongPipeline$6;->opWrapSink(ILj$/util/stream/Sink;)Lj$/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/stream/Sink$ChainedLong<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field cancellationRequestedCalled:Z

.field downstreamAsLong:Ljava/util/function/LongConsumer;

.field final synthetic this$1:Lj$/util/stream/LongPipeline$6;


# direct methods
.method constructor <init>(Lj$/util/stream/LongPipeline$6;Lj$/util/stream/Sink;)V
    .locals 2
    .param p1, "this$1"    # Lj$/util/stream/LongPipeline$6;

    .line 282
    .local p0, "this":Lj$/util/stream/LongPipeline$6$1;, "Ljava/util/stream/LongPipeline$6$1;"
    .local p2, "downstream":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Long;>;"
    iput-object p1, p0, Lj$/util/stream/LongPipeline$6$1;->this$1:Lj$/util/stream/LongPipeline$6;

    invoke-direct {p0, p2}, Lj$/util/stream/Sink$ChainedLong;-><init>(Lj$/util/stream/Sink;)V

    .line 287
    iget-object v0, p0, Lj$/util/stream/LongPipeline$6$1;->downstream:Lj$/util/stream/Sink;

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lj$/util/stream/LongPipeline$$ExternalSyntheticLambda12;

    invoke-direct {v1, v0}, Lj$/util/stream/LongPipeline$$ExternalSyntheticLambda12;-><init>(Lj$/util/stream/Sink;)V

    iput-object v1, p0, Lj$/util/stream/LongPipeline$6$1;->downstreamAsLong:Ljava/util/function/LongConsumer;

    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 3
    .param p1, "t"    # J

    .line 296
    .local p0, "this":Lj$/util/stream/LongPipeline$6$1;, "Ljava/util/stream/LongPipeline$6$1;"
    iget-object v0, p0, Lj$/util/stream/LongPipeline$6$1;->this$1:Lj$/util/stream/LongPipeline$6;

    iget-object v0, v0, Lj$/util/stream/LongPipeline$6;->val$mapper:Ljava/util/function/LongFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/LongFunction;->apply(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/stream/LongStream;

    .line 297
    .local v0, "result":Lj$/util/stream/LongStream;
    if-eqz v0, :cond_3

    .line 298
    :try_start_0
    iget-boolean v1, p0, Lj$/util/stream/LongPipeline$6$1;->cancellationRequestedCalled:Z

    if-nez v1, :cond_0

    .line 299
    invoke-interface {v0}, Lj$/util/stream/LongStream;->sequential()Lj$/util/stream/LongStream;

    move-result-object v1

    iget-object v2, p0, Lj$/util/stream/LongPipeline$6$1;->downstreamAsLong:Ljava/util/function/LongConsumer;

    invoke-interface {v1, v2}, Lj$/util/stream/LongStream;->forEach(Ljava/util/function/LongConsumer;)V

    goto :goto_1

    .line 302
    :cond_0
    invoke-interface {v0}, Lj$/util/stream/LongStream;->sequential()Lj$/util/stream/LongStream;

    move-result-object v1

    invoke-interface {v1}, Lj$/util/stream/LongStream;->spliterator()Lj$/util/Spliterator$OfLong;

    move-result-object v1

    .line 303
    .local v1, "s":Lj$/util/Spliterator$OfLong;
    :cond_1
    iget-object v2, p0, Lj$/util/stream/LongPipeline$6$1;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v2}, Lj$/util/stream/Sink;->cancellationRequested()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lj$/util/stream/LongPipeline$6$1;->downstreamAsLong:Ljava/util/function/LongConsumer;

    invoke-interface {v1, v2}, Lj$/util/Spliterator$OfLong;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    goto :goto_1

    .line 296
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

    .line 306
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lj$/util/stream/LongStream;->close()V

    .line 307
    .end local v0    # "result":Lj$/util/stream/LongStream;
    :cond_4
    return-void
.end method

.method public begin(J)V
    .locals 3
    .param p1, "size"    # J

    .line 291
    .local p0, "this":Lj$/util/stream/LongPipeline$6$1;, "Ljava/util/stream/LongPipeline$6$1;"
    iget-object v0, p0, Lj$/util/stream/LongPipeline$6$1;->downstream:Lj$/util/stream/Sink;

    const-wide/16 v1, -0x1

    invoke-interface {v0, v1, v2}, Lj$/util/stream/Sink;->begin(J)V

    .line 292
    return-void
.end method

.method public cancellationRequested()Z
    .locals 1

    .line 315
    .local p0, "this":Lj$/util/stream/LongPipeline$6$1;, "Ljava/util/stream/LongPipeline$6$1;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/stream/LongPipeline$6$1;->cancellationRequestedCalled:Z

    .line 316
    iget-object v0, p0, Lj$/util/stream/LongPipeline$6$1;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v0}, Lj$/util/stream/Sink;->cancellationRequested()Z

    move-result v0

    return v0
.end method
