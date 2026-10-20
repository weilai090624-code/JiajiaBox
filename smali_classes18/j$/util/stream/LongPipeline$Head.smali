.class Lj$/util/stream/LongPipeline$Head;
.super Lj$/util/stream/LongPipeline;
.source "LongPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/LongPipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Head"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E_IN:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/stream/LongPipeline<",
        "TE_IN;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lj$/util/Spliterator;IZ)V
    .locals 0
    .param p2, "sourceFlags"    # I
    .param p3, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/Spliterator<",
            "Ljava/lang/Long;",
            ">;IZ)V"
        }
    .end annotation

    .line 559
    .local p0, "this":Lj$/util/stream/LongPipeline$Head;, "Ljava/util/stream/LongPipeline$Head<TE_IN;>;"
    .local p1, "source":Lj$/util/Spliterator;, "Ljava/util/Spliterator<Ljava/lang/Long;>;"
    invoke-direct {p0, p1, p2, p3}, Lj$/util/stream/LongPipeline;-><init>(Lj$/util/Spliterator;IZ)V

    .line 560
    return-void
.end method

.method constructor <init>(Ljava/util/function/Supplier;IZ)V
    .locals 0
    .param p2, "sourceFlags"    # I
    .param p3, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "+",
            "Lj$/util/Spliterator<",
            "Ljava/lang/Long;",
            ">;>;IZ)V"
        }
    .end annotation

    .line 546
    .local p0, "this":Lj$/util/stream/LongPipeline$Head;, "Ljava/util/stream/LongPipeline$Head<TE_IN;>;"
    .local p1, "source":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+Ljava/util/Spliterator<Ljava/lang/Long;>;>;"
    invoke-direct {p0, p1, p2, p3}, Lj$/util/stream/LongPipeline;-><init>(Ljava/util/function/Supplier;IZ)V

    .line 547
    return-void
.end method


# virtual methods
.method public forEach(Ljava/util/function/LongConsumer;)V
    .locals 1
    .param p1, "action"    # Ljava/util/function/LongConsumer;

    .line 576
    .local p0, "this":Lj$/util/stream/LongPipeline$Head;, "Ljava/util/stream/LongPipeline$Head<TE_IN;>;"
    invoke-virtual {p0}, Lj$/util/stream/LongPipeline$Head;->isParallel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 577
    invoke-virtual {p0}, Lj$/util/stream/LongPipeline$Head;->sourceStageSpliterator()Lj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/LongPipeline;->-$$Nest$smadapt(Lj$/util/Spliterator;)Lj$/util/Spliterator$OfLong;

    move-result-object v0

    invoke-interface {v0, p1}, Lj$/util/Spliterator$OfLong;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    goto :goto_0

    .line 579
    :cond_0
    invoke-super {p0, p1}, Lj$/util/stream/LongPipeline;->forEach(Ljava/util/function/LongConsumer;)V

    .line 581
    :goto_0
    return-void
.end method

.method public forEachOrdered(Ljava/util/function/LongConsumer;)V
    .locals 1
    .param p1, "action"    # Ljava/util/function/LongConsumer;

    .line 585
    .local p0, "this":Lj$/util/stream/LongPipeline$Head;, "Ljava/util/stream/LongPipeline$Head<TE_IN;>;"
    invoke-virtual {p0}, Lj$/util/stream/LongPipeline$Head;->isParallel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 586
    invoke-virtual {p0}, Lj$/util/stream/LongPipeline$Head;->sourceStageSpliterator()Lj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/LongPipeline;->-$$Nest$smadapt(Lj$/util/Spliterator;)Lj$/util/Spliterator$OfLong;

    move-result-object v0

    invoke-interface {v0, p1}, Lj$/util/Spliterator$OfLong;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    goto :goto_0

    .line 588
    :cond_0
    invoke-super {p0, p1}, Lj$/util/stream/LongPipeline;->forEachOrdered(Ljava/util/function/LongConsumer;)V

    .line 590
    :goto_0
    return-void
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 534
    .local p0, "this":Lj$/util/stream/LongPipeline$Head;, "Ljava/util/stream/LongPipeline$Head<TE_IN;>;"
    invoke-super {p0}, Lj$/util/stream/LongPipeline;->iterator()Lj$/util/PrimitiveIterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic lazySpliterator(Ljava/util/function/Supplier;)Lj$/util/Spliterator;
    .locals 0

    .line 534
    .local p0, "this":Lj$/util/stream/LongPipeline$Head;, "Ljava/util/stream/LongPipeline$Head<TE_IN;>;"
    invoke-super {p0, p1}, Lj$/util/stream/LongPipeline;->lazySpliterator(Ljava/util/function/Supplier;)Lj$/util/Spliterator$OfLong;

    move-result-object p1

    return-object p1
.end method

.method final opIsStateful()Z
    .locals 1

    .line 564
    .local p0, "this":Lj$/util/stream/LongPipeline$Head;, "Ljava/util/stream/LongPipeline$Head<TE_IN;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method final opWrapSink(ILj$/util/stream/Sink;)Lj$/util/stream/Sink;
    .locals 1
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lj$/util/stream/Sink<",
            "Ljava/lang/Long;",
            ">;)",
            "Lj$/util/stream/Sink<",
            "TE_IN;>;"
        }
    .end annotation

    .line 569
    .local p0, "this":Lj$/util/stream/LongPipeline$Head;, "Ljava/util/stream/LongPipeline$Head<TE_IN;>;"
    .local p2, "sink":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<Ljava/lang/Long;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic parallel()Lj$/util/stream/LongStream;
    .locals 1

    .line 534
    .local p0, "this":Lj$/util/stream/LongPipeline$Head;, "Ljava/util/stream/LongPipeline$Head<TE_IN;>;"
    invoke-super {p0}, Lj$/util/stream/LongPipeline;->parallel()Lj$/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Lj$/util/stream/LongStream;

    return-object v0
.end method

.method public bridge synthetic sequential()Lj$/util/stream/LongStream;
    .locals 1

    .line 534
    .local p0, "this":Lj$/util/stream/LongPipeline$Head;, "Ljava/util/stream/LongPipeline$Head<TE_IN;>;"
    invoke-super {p0}, Lj$/util/stream/LongPipeline;->sequential()Lj$/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Lj$/util/stream/LongStream;

    return-object v0
.end method

.method public bridge synthetic spliterator()Lj$/util/Spliterator;
    .locals 1

    .line 534
    .local p0, "this":Lj$/util/stream/LongPipeline$Head;, "Ljava/util/stream/LongPipeline$Head<TE_IN;>;"
    invoke-super {p0}, Lj$/util/stream/LongPipeline;->spliterator()Lj$/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic unordered()Lj$/util/stream/BaseStream;
    .locals 1

    .line 534
    .local p0, "this":Lj$/util/stream/LongPipeline$Head;, "Ljava/util/stream/LongPipeline$Head<TE_IN;>;"
    invoke-super {p0}, Lj$/util/stream/LongPipeline;->unordered()Lj$/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method
