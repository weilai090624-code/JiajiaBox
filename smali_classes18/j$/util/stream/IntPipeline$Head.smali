.class Lj$/util/stream/IntPipeline$Head;
.super Lj$/util/stream/IntPipeline;
.source "IntPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/IntPipeline;
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
        "Lj$/util/stream/IntPipeline<",
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
            "Ljava/lang/Integer;",
            ">;IZ)V"
        }
    .end annotation

    .line 575
    .local p0, "this":Lj$/util/stream/IntPipeline$Head;, "Ljava/util/stream/IntPipeline$Head<TE_IN;>;"
    .local p1, "source":Lj$/util/Spliterator;, "Ljava/util/Spliterator<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1, p2, p3}, Lj$/util/stream/IntPipeline;-><init>(Lj$/util/Spliterator;IZ)V

    .line 576
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
            "Ljava/lang/Integer;",
            ">;>;IZ)V"
        }
    .end annotation

    .line 562
    .local p0, "this":Lj$/util/stream/IntPipeline$Head;, "Ljava/util/stream/IntPipeline$Head<TE_IN;>;"
    .local p1, "source":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+Ljava/util/Spliterator<Ljava/lang/Integer;>;>;"
    invoke-direct {p0, p1, p2, p3}, Lj$/util/stream/IntPipeline;-><init>(Ljava/util/function/Supplier;IZ)V

    .line 563
    return-void
.end method


# virtual methods
.method public forEach(Ljava/util/function/IntConsumer;)V
    .locals 1
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    .line 592
    .local p0, "this":Lj$/util/stream/IntPipeline$Head;, "Ljava/util/stream/IntPipeline$Head<TE_IN;>;"
    invoke-virtual {p0}, Lj$/util/stream/IntPipeline$Head;->isParallel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 593
    invoke-virtual {p0}, Lj$/util/stream/IntPipeline$Head;->sourceStageSpliterator()Lj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/IntPipeline;->-$$Nest$smadapt(Lj$/util/Spliterator;)Lj$/util/Spliterator$OfInt;

    move-result-object v0

    invoke-interface {v0, p1}, Lj$/util/Spliterator$OfInt;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    goto :goto_0

    .line 596
    :cond_0
    invoke-super {p0, p1}, Lj$/util/stream/IntPipeline;->forEach(Ljava/util/function/IntConsumer;)V

    .line 598
    :goto_0
    return-void
.end method

.method public forEachOrdered(Ljava/util/function/IntConsumer;)V
    .locals 1
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    .line 602
    .local p0, "this":Lj$/util/stream/IntPipeline$Head;, "Ljava/util/stream/IntPipeline$Head<TE_IN;>;"
    invoke-virtual {p0}, Lj$/util/stream/IntPipeline$Head;->isParallel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 603
    invoke-virtual {p0}, Lj$/util/stream/IntPipeline$Head;->sourceStageSpliterator()Lj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/IntPipeline;->-$$Nest$smadapt(Lj$/util/Spliterator;)Lj$/util/Spliterator$OfInt;

    move-result-object v0

    invoke-interface {v0, p1}, Lj$/util/Spliterator$OfInt;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    goto :goto_0

    .line 606
    :cond_0
    invoke-super {p0, p1}, Lj$/util/stream/IntPipeline;->forEachOrdered(Ljava/util/function/IntConsumer;)V

    .line 608
    :goto_0
    return-void
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 550
    .local p0, "this":Lj$/util/stream/IntPipeline$Head;, "Ljava/util/stream/IntPipeline$Head<TE_IN;>;"
    invoke-super {p0}, Lj$/util/stream/IntPipeline;->iterator()Lj$/util/PrimitiveIterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic lazySpliterator(Ljava/util/function/Supplier;)Lj$/util/Spliterator;
    .locals 0

    .line 550
    .local p0, "this":Lj$/util/stream/IntPipeline$Head;, "Ljava/util/stream/IntPipeline$Head<TE_IN;>;"
    invoke-super {p0, p1}, Lj$/util/stream/IntPipeline;->lazySpliterator(Ljava/util/function/Supplier;)Lj$/util/Spliterator$OfInt;

    move-result-object p1

    return-object p1
.end method

.method final opIsStateful()Z
    .locals 1

    .line 580
    .local p0, "this":Lj$/util/stream/IntPipeline$Head;, "Ljava/util/stream/IntPipeline$Head<TE_IN;>;"
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
            "Ljava/lang/Integer;",
            ">;)",
            "Lj$/util/stream/Sink<",
            "TE_IN;>;"
        }
    .end annotation

    .line 585
    .local p0, "this":Lj$/util/stream/IntPipeline$Head;, "Ljava/util/stream/IntPipeline$Head<TE_IN;>;"
    .local p2, "sink":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic parallel()Lj$/util/stream/IntStream;
    .locals 1

    .line 550
    .local p0, "this":Lj$/util/stream/IntPipeline$Head;, "Ljava/util/stream/IntPipeline$Head<TE_IN;>;"
    invoke-super {p0}, Lj$/util/stream/IntPipeline;->parallel()Lj$/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Lj$/util/stream/IntStream;

    return-object v0
.end method

.method public bridge synthetic sequential()Lj$/util/stream/IntStream;
    .locals 1

    .line 550
    .local p0, "this":Lj$/util/stream/IntPipeline$Head;, "Ljava/util/stream/IntPipeline$Head<TE_IN;>;"
    invoke-super {p0}, Lj$/util/stream/IntPipeline;->sequential()Lj$/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Lj$/util/stream/IntStream;

    return-object v0
.end method

.method public bridge synthetic spliterator()Lj$/util/Spliterator;
    .locals 1

    .line 550
    .local p0, "this":Lj$/util/stream/IntPipeline$Head;, "Ljava/util/stream/IntPipeline$Head<TE_IN;>;"
    invoke-super {p0}, Lj$/util/stream/IntPipeline;->spliterator()Lj$/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic unordered()Lj$/util/stream/BaseStream;
    .locals 1

    .line 550
    .local p0, "this":Lj$/util/stream/IntPipeline$Head;, "Ljava/util/stream/IntPipeline$Head<TE_IN;>;"
    invoke-super {p0}, Lj$/util/stream/IntPipeline;->unordered()Lj$/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method
