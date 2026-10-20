.class Lj$/util/stream/DoublePipeline$5$1;
.super Lj$/util/stream/Sink$ChainedDouble;
.source "DoublePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/stream/DoublePipeline$5;->opWrapSink(ILj$/util/stream/Sink;)Lj$/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/stream/Sink$ChainedDouble<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field cancellationRequestedCalled:Z

.field downstreamAsDouble:Ljava/util/function/DoubleConsumer;

.field final synthetic this$1:Lj$/util/stream/DoublePipeline$5;


# direct methods
.method constructor <init>(Lj$/util/stream/DoublePipeline$5;Lj$/util/stream/Sink;)V
    .locals 2
    .param p1, "this$1"    # Lj$/util/stream/DoublePipeline$5;

    .line 266
    .local p0, "this":Lj$/util/stream/DoublePipeline$5$1;, "Ljava/util/stream/DoublePipeline$5$1;"
    .local p2, "downstream":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Double;>;"
    iput-object p1, p0, Lj$/util/stream/DoublePipeline$5$1;->this$1:Lj$/util/stream/DoublePipeline$5;

    invoke-direct {p0, p2}, Lj$/util/stream/Sink$ChainedDouble;-><init>(Lj$/util/stream/Sink;)V

    .line 271
    iget-object v0, p0, Lj$/util/stream/DoublePipeline$5$1;->downstream:Lj$/util/stream/Sink;

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lj$/util/stream/DoublePipeline$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lj$/util/stream/DoublePipeline$$ExternalSyntheticLambda0;-><init>(Lj$/util/stream/Sink;)V

    iput-object v1, p0, Lj$/util/stream/DoublePipeline$5$1;->downstreamAsDouble:Ljava/util/function/DoubleConsumer;

    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 3
    .param p1, "t"    # D

    .line 280
    .local p0, "this":Lj$/util/stream/DoublePipeline$5$1;, "Ljava/util/stream/DoublePipeline$5$1;"
    iget-object v0, p0, Lj$/util/stream/DoublePipeline$5$1;->this$1:Lj$/util/stream/DoublePipeline$5;

    iget-object v0, v0, Lj$/util/stream/DoublePipeline$5;->val$mapper:Ljava/util/function/DoubleFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/DoubleFunction;->apply(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/stream/DoubleStream;

    .line 281
    .local v0, "result":Lj$/util/stream/DoubleStream;
    if-eqz v0, :cond_3

    .line 282
    :try_start_0
    iget-boolean v1, p0, Lj$/util/stream/DoublePipeline$5$1;->cancellationRequestedCalled:Z

    if-nez v1, :cond_0

    .line 283
    invoke-interface {v0}, Lj$/util/stream/DoubleStream;->sequential()Lj$/util/stream/DoubleStream;

    move-result-object v1

    iget-object v2, p0, Lj$/util/stream/DoublePipeline$5$1;->downstreamAsDouble:Ljava/util/function/DoubleConsumer;

    invoke-interface {v1, v2}, Lj$/util/stream/DoubleStream;->forEach(Ljava/util/function/DoubleConsumer;)V

    goto :goto_1

    .line 286
    :cond_0
    invoke-interface {v0}, Lj$/util/stream/DoubleStream;->sequential()Lj$/util/stream/DoubleStream;

    move-result-object v1

    invoke-interface {v1}, Lj$/util/stream/DoubleStream;->spliterator()Lj$/util/Spliterator$OfDouble;

    move-result-object v1

    .line 287
    .local v1, "s":Lj$/util/Spliterator$OfDouble;
    :cond_1
    iget-object v2, p0, Lj$/util/stream/DoublePipeline$5$1;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v2}, Lj$/util/stream/Sink;->cancellationRequested()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lj$/util/stream/DoublePipeline$5$1;->downstreamAsDouble:Ljava/util/function/DoubleConsumer;

    invoke-interface {v1, v2}, Lj$/util/Spliterator$OfDouble;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    goto :goto_1

    .line 280
    .end local v1    # "s":Lj$/util/Spliterator$OfDouble;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {v0}, Lj$/util/stream/DoubleStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v1

    .line 290
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lj$/util/stream/DoubleStream;->close()V

    .line 291
    .end local v0    # "result":Lj$/util/stream/DoubleStream;
    :cond_4
    return-void
.end method

.method public begin(J)V
    .locals 3
    .param p1, "size"    # J

    .line 275
    .local p0, "this":Lj$/util/stream/DoublePipeline$5$1;, "Ljava/util/stream/DoublePipeline$5$1;"
    iget-object v0, p0, Lj$/util/stream/DoublePipeline$5$1;->downstream:Lj$/util/stream/Sink;

    const-wide/16 v1, -0x1

    invoke-interface {v0, v1, v2}, Lj$/util/stream/Sink;->begin(J)V

    .line 276
    return-void
.end method

.method public cancellationRequested()Z
    .locals 1

    .line 299
    .local p0, "this":Lj$/util/stream/DoublePipeline$5$1;, "Ljava/util/stream/DoublePipeline$5$1;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/stream/DoublePipeline$5$1;->cancellationRequestedCalled:Z

    .line 300
    iget-object v0, p0, Lj$/util/stream/DoublePipeline$5$1;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v0}, Lj$/util/stream/Sink;->cancellationRequested()Z

    move-result v0

    return v0
.end method
