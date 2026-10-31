.class Lj$/util/stream/ReferencePipeline$7$1;
.super Lj$/util/stream/Sink$ChainedReference;
.source "ReferencePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/stream/ReferencePipeline$7;->opWrapSink(ILj$/util/stream/Sink;)Lj$/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/stream/Sink$ChainedReference<",
        "TP_OUT;TR;>;"
    }
.end annotation


# instance fields
.field cancellationRequestedCalled:Z

.field final synthetic this$1:Lj$/util/stream/ReferencePipeline$7;


# direct methods
.method constructor <init>(Lj$/util/stream/ReferencePipeline$7;Lj$/util/stream/Sink;)V
    .registers 3
    .param p1, "this$1"    # Lj$/util/stream/ReferencePipeline$7;

    .line 260
    .local p0, "this":Lj$/util/stream/ReferencePipeline$7$1;, "Ljava/util/stream/ReferencePipeline$7$1;"
    .local p2, "downstream":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<-TR;>;"
    iput-object p1, p0, Lj$/util/stream/ReferencePipeline$7$1;->this$1:Lj$/util/stream/ReferencePipeline$7;

    invoke-direct {p0, p2}, Lj$/util/stream/Sink$ChainedReference;-><init>(Lj$/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP_OUT;)V"
        }
    .end annotation

    .line 271
    .local p0, "this":Lj$/util/stream/ReferencePipeline$7$1;, "Ljava/util/stream/ReferencePipeline$7$1;"
    .local p1, "u":Ljava/lang/Object;, "TP_OUT;"
    iget-object v0, p0, Lj$/util/stream/ReferencePipeline$7$1;->this$1:Lj$/util/stream/ReferencePipeline$7;

    iget-object v0, v0, Lj$/util/stream/ReferencePipeline$7;->val$mapper:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/stream/Stream;

    .line 272
    .local v0, "result":Lj$/util/stream/Stream;, "Ljava/util/stream/Stream<+TR;>;"
    if-eqz v0, :cond_43

    .line 273
    :try_start_c
    iget-boolean v1, p0, Lj$/util/stream/ReferencePipeline$7$1;->cancellationRequestedCalled:Z

    if-nez v1, :cond_1c

    .line 274
    invoke-interface {v0}, Lj$/util/stream/Stream;->sequential()Lj$/util/stream/BaseStream;

    move-result-object v1

    check-cast v1, Lj$/util/stream/Stream;

    iget-object v2, p0, Lj$/util/stream/ReferencePipeline$7$1;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_43

    .line 277
    :cond_1c
    invoke-interface {v0}, Lj$/util/stream/Stream;->sequential()Lj$/util/stream/BaseStream;

    move-result-object v1

    check-cast v1, Lj$/util/stream/Stream;

    invoke-interface {v1}, Lj$/util/stream/Stream;->spliterator()Lj$/util/Spliterator;

    move-result-object v1

    .line 278
    .local v1, "s":Lj$/util/Spliterator;, "Ljava/util/Spliterator<+TR;>;"
    :cond_26
    iget-object v2, p0, Lj$/util/stream/ReferencePipeline$7$1;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v2}, Lj$/util/stream/Sink;->cancellationRequested()Z

    move-result v2

    if-nez v2, :cond_43

    iget-object v2, p0, Lj$/util/stream/ReferencePipeline$7$1;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v1, v2}, Lj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v2
    :try_end_34
    .catchall {:try_start_c .. :try_end_34} :catchall_37

    if-nez v2, :cond_26

    goto :goto_43

    .line 271
    .end local v1    # "s":Lj$/util/Spliterator;, "Ljava/util/Spliterator<+TR;>;"
    :catchall_37
    move-exception v1

    if-eqz v0, :cond_42

    :try_start_3a
    invoke-interface {v0}, Lj$/util/stream/Stream;->close()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_3e

    goto :goto_42

    :catchall_3e
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_42
    :goto_42
    throw v1

    .line 281
    :cond_43
    :goto_43
    if-eqz v0, :cond_48

    invoke-interface {v0}, Lj$/util/stream/Stream;->close()V

    .line 282
    .end local v0    # "result":Lj$/util/stream/Stream;, "Ljava/util/stream/Stream<+TR;>;"
    :cond_48
    return-void
.end method

.method public begin(J)V
    .registers 6
    .param p1, "size"    # J

    .line 266
    .local p0, "this":Lj$/util/stream/ReferencePipeline$7$1;, "Ljava/util/stream/ReferencePipeline$7$1;"
    iget-object v0, p0, Lj$/util/stream/ReferencePipeline$7$1;->downstream:Lj$/util/stream/Sink;

    const-wide/16 v1, -0x1

    invoke-interface {v0, v1, v2}, Lj$/util/stream/Sink;->begin(J)V

    .line 267
    return-void
.end method

.method public cancellationRequested()Z
    .registers 2

    .line 290
    .local p0, "this":Lj$/util/stream/ReferencePipeline$7$1;, "Ljava/util/stream/ReferencePipeline$7$1;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/stream/ReferencePipeline$7$1;->cancellationRequestedCalled:Z

    .line 291
    iget-object v0, p0, Lj$/util/stream/ReferencePipeline$7$1;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v0}, Lj$/util/stream/Sink;->cancellationRequested()Z

    move-result v0

    return v0
.end method
