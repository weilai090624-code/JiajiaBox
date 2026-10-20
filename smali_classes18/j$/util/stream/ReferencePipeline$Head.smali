.class Lj$/util/stream/ReferencePipeline$Head;
.super Lj$/util/stream/ReferencePipeline;
.source "ReferencePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/ReferencePipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Head"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E_IN:",
        "Ljava/lang/Object;",
        "E_OUT:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/stream/ReferencePipeline<",
        "TE_IN;TE_OUT;>;"
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
            "*>;IZ)V"
        }
    .end annotation

    .line 640
    .local p0, "this":Lj$/util/stream/ReferencePipeline$Head;, "Ljava/util/stream/ReferencePipeline$Head<TE_IN;TE_OUT;>;"
    .local p1, "source":Lj$/util/Spliterator;, "Ljava/util/Spliterator<*>;"
    invoke-direct {p0, p1, p2, p3}, Lj$/util/stream/ReferencePipeline;-><init>(Lj$/util/Spliterator;IZ)V

    .line 641
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
            "*>;>;IZ)V"
        }
    .end annotation

    .line 628
    .local p0, "this":Lj$/util/stream/ReferencePipeline$Head;, "Ljava/util/stream/ReferencePipeline$Head<TE_IN;TE_OUT;>;"
    .local p1, "source":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+Ljava/util/Spliterator<*>;>;"
    invoke-direct {p0, p1, p2, p3}, Lj$/util/stream/ReferencePipeline;-><init>(Ljava/util/function/Supplier;IZ)V

    .line 629
    return-void
.end method


# virtual methods
.method public forEach(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE_OUT;>;)V"
        }
    .end annotation

    .line 657
    .local p0, "this":Lj$/util/stream/ReferencePipeline$Head;, "Ljava/util/stream/ReferencePipeline$Head<TE_IN;TE_OUT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE_OUT;>;"
    invoke-virtual {p0}, Lj$/util/stream/ReferencePipeline$Head;->isParallel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 658
    invoke-virtual {p0}, Lj$/util/stream/ReferencePipeline$Head;->sourceStageSpliterator()Lj$/util/Spliterator;

    move-result-object v0

    invoke-interface {v0, p1}, Lj$/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 661
    :cond_0
    invoke-super {p0, p1}, Lj$/util/stream/ReferencePipeline;->forEach(Ljava/util/function/Consumer;)V

    .line 663
    :goto_0
    return-void
.end method

.method public forEachOrdered(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE_OUT;>;)V"
        }
    .end annotation

    .line 667
    .local p0, "this":Lj$/util/stream/ReferencePipeline$Head;, "Ljava/util/stream/ReferencePipeline$Head<TE_IN;TE_OUT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE_OUT;>;"
    invoke-virtual {p0}, Lj$/util/stream/ReferencePipeline$Head;->isParallel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 668
    invoke-virtual {p0}, Lj$/util/stream/ReferencePipeline$Head;->sourceStageSpliterator()Lj$/util/Spliterator;

    move-result-object v0

    invoke-interface {v0, p1}, Lj$/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 671
    :cond_0
    invoke-super {p0, p1}, Lj$/util/stream/ReferencePipeline;->forEachOrdered(Ljava/util/function/Consumer;)V

    .line 673
    :goto_0
    return-void
.end method

.method final opIsStateful()Z
    .locals 1

    .line 645
    .local p0, "this":Lj$/util/stream/ReferencePipeline$Head;, "Ljava/util/stream/ReferencePipeline$Head<TE_IN;TE_OUT;>;"
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
            "TE_OUT;>;)",
            "Lj$/util/stream/Sink<",
            "TE_IN;>;"
        }
    .end annotation

    .line 650
    .local p0, "this":Lj$/util/stream/ReferencePipeline$Head;, "Ljava/util/stream/ReferencePipeline$Head<TE_IN;TE_OUT;>;"
    .local p2, "sink":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<TE_OUT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic unordered()Lj$/util/stream/BaseStream;
    .locals 1

    .line 617
    .local p0, "this":Lj$/util/stream/ReferencePipeline$Head;, "Ljava/util/stream/ReferencePipeline$Head<TE_IN;TE_OUT;>;"
    invoke-super {p0}, Lj$/util/stream/ReferencePipeline;->unordered()Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
