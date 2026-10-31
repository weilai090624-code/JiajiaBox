.class Lj$/util/stream/IntPipeline$7$1;
.super Lj$/util/stream/Sink$ChainedInt;
.source "IntPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/stream/IntPipeline$7;->opWrapSink(ILj$/util/stream/Sink;)Lj$/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/stream/Sink$ChainedInt<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field cancellationRequestedCalled:Z

.field downstreamAsInt:Ljava/util/function/IntConsumer;

.field final synthetic this$1:Lj$/util/stream/IntPipeline$7;


# direct methods
.method constructor <init>(Lj$/util/stream/IntPipeline$7;Lj$/util/stream/Sink;)V
    .registers 5
    .param p1, "this$1"    # Lj$/util/stream/IntPipeline$7;

    .line 300
    .local p0, "this":Lj$/util/stream/IntPipeline$7$1;, "Ljava/util/stream/IntPipeline$7$1;"
    .local p2, "downstream":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Integer;>;"
    iput-object p1, p0, Lj$/util/stream/IntPipeline$7$1;->this$1:Lj$/util/stream/IntPipeline$7;

    invoke-direct {p0, p2}, Lj$/util/stream/Sink$ChainedInt;-><init>(Lj$/util/stream/Sink;)V

    .line 305
    iget-object v0, p0, Lj$/util/stream/IntPipeline$7$1;->downstream:Lj$/util/stream/Sink;

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda10;

    invoke-direct {v1, v0}, Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda10;-><init>(Lj$/util/stream/Sink;)V

    iput-object v1, p0, Lj$/util/stream/IntPipeline$7$1;->downstreamAsInt:Ljava/util/function/IntConsumer;

    return-void
.end method


# virtual methods
.method public accept(I)V
    .registers 5
    .param p1, "t"    # I

    .line 314
    .local p0, "this":Lj$/util/stream/IntPipeline$7$1;, "Ljava/util/stream/IntPipeline$7$1;"
    iget-object v0, p0, Lj$/util/stream/IntPipeline$7$1;->this$1:Lj$/util/stream/IntPipeline$7;

    iget-object v0, v0, Lj$/util/stream/IntPipeline$7;->val$mapper:Ljava/util/function/IntFunction;

    invoke-interface {v0, p1}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/stream/IntStream;

    .line 315
    .local v0, "result":Lj$/util/stream/IntStream;
    if-eqz v0, :cond_3f

    .line 316
    :try_start_c
    iget-boolean v1, p0, Lj$/util/stream/IntPipeline$7$1;->cancellationRequestedCalled:Z

    if-nez v1, :cond_1a

    .line 317
    invoke-interface {v0}, Lj$/util/stream/IntStream;->sequential()Lj$/util/stream/IntStream;

    move-result-object v1

    iget-object v2, p0, Lj$/util/stream/IntPipeline$7$1;->downstreamAsInt:Ljava/util/function/IntConsumer;

    invoke-interface {v1, v2}, Lj$/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    goto :goto_3f

    .line 320
    :cond_1a
    invoke-interface {v0}, Lj$/util/stream/IntStream;->sequential()Lj$/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Lj$/util/stream/IntStream;->spliterator()Lj$/util/Spliterator$OfInt;

    move-result-object v1

    .line 321
    .local v1, "s":Lj$/util/Spliterator$OfInt;
    :cond_22
    iget-object v2, p0, Lj$/util/stream/IntPipeline$7$1;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v2}, Lj$/util/stream/Sink;->cancellationRequested()Z

    move-result v2

    if-nez v2, :cond_3f

    iget-object v2, p0, Lj$/util/stream/IntPipeline$7$1;->downstreamAsInt:Ljava/util/function/IntConsumer;

    invoke-interface {v1, v2}, Lj$/util/Spliterator$OfInt;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result v2
    :try_end_30
    .catchall {:try_start_c .. :try_end_30} :catchall_33

    if-nez v2, :cond_22

    goto :goto_3f

    .line 314
    .end local v1    # "s":Lj$/util/Spliterator$OfInt;
    :catchall_33
    move-exception v1

    if-eqz v0, :cond_3e

    :try_start_36
    invoke-interface {v0}, Lj$/util/stream/IntStream;->close()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3a

    goto :goto_3e

    :catchall_3a
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3e
    :goto_3e
    throw v1

    .line 324
    :cond_3f
    :goto_3f
    if-eqz v0, :cond_44

    invoke-interface {v0}, Lj$/util/stream/IntStream;->close()V

    .line 325
    .end local v0    # "result":Lj$/util/stream/IntStream;
    :cond_44
    return-void
.end method

.method public begin(J)V
    .registers 6
    .param p1, "size"    # J

    .line 309
    .local p0, "this":Lj$/util/stream/IntPipeline$7$1;, "Ljava/util/stream/IntPipeline$7$1;"
    iget-object v0, p0, Lj$/util/stream/IntPipeline$7$1;->downstream:Lj$/util/stream/Sink;

    const-wide/16 v1, -0x1

    invoke-interface {v0, v1, v2}, Lj$/util/stream/Sink;->begin(J)V

    .line 310
    return-void
.end method

.method public cancellationRequested()Z
    .registers 2

    .line 333
    .local p0, "this":Lj$/util/stream/IntPipeline$7$1;, "Ljava/util/stream/IntPipeline$7$1;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/stream/IntPipeline$7$1;->cancellationRequestedCalled:Z

    .line 334
    iget-object v0, p0, Lj$/util/stream/IntPipeline$7$1;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v0}, Lj$/util/stream/Sink;->cancellationRequested()Z

    move-result v0

    return v0
.end method
