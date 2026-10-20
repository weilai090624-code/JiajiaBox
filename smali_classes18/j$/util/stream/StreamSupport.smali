.class public final Lj$/util/stream/StreamSupport;
.super Ljava/lang/Object;
.source "StreamSupport.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doubleStream(Lj$/util/Spliterator$OfDouble;Z)Lj$/util/stream/DoubleStream;
    .locals 2
    .param p0, "spliterator"    # Lj$/util/Spliterator$OfDouble;
    .param p1, "parallel"    # Z

    .line 274
    new-instance v0, Lj$/util/stream/DoublePipeline$Head;

    .line 275
    invoke-static {p0}, Lj$/util/stream/StreamOpFlag;->fromCharacteristics(Lj$/util/Spliterator;)I

    move-result v1

    invoke-direct {v0, p0, v1, p1}, Lj$/util/stream/DoublePipeline$Head;-><init>(Lj$/util/Spliterator;IZ)V

    .line 274
    return-object v0
.end method

.method public static doubleStream(Ljava/util/function/Supplier;IZ)Lj$/util/stream/DoubleStream;
    .locals 2
    .param p1, "characteristics"    # I
    .param p2, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "+",
            "Lj$/util/Spliterator$OfDouble;",
            ">;IZ)",
            "Lj$/util/stream/DoubleStream;"
        }
    .end annotation

    .line 314
    .local p0, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+Ljava/util/Spliterator$OfDouble;>;"
    new-instance v0, Lj$/util/stream/DoublePipeline$Head;

    .line 315
    invoke-static {p1}, Lj$/util/stream/StreamOpFlag;->fromCharacteristics(I)I

    move-result v1

    invoke-direct {v0, p0, v1, p2}, Lj$/util/stream/DoublePipeline$Head;-><init>(Ljava/util/function/Supplier;IZ)V

    .line 314
    return-object v0
.end method

.method public static intStream(Lj$/util/Spliterator$OfInt;Z)Lj$/util/stream/IntStream;
    .locals 2
    .param p0, "spliterator"    # Lj$/util/Spliterator$OfInt;
    .param p1, "parallel"    # Z

    .line 138
    new-instance v0, Lj$/util/stream/IntPipeline$Head;

    .line 139
    invoke-static {p0}, Lj$/util/stream/StreamOpFlag;->fromCharacteristics(Lj$/util/Spliterator;)I

    move-result v1

    invoke-direct {v0, p0, v1, p1}, Lj$/util/stream/IntPipeline$Head;-><init>(Lj$/util/Spliterator;IZ)V

    .line 138
    return-object v0
.end method

.method public static intStream(Ljava/util/function/Supplier;IZ)Lj$/util/stream/IntStream;
    .locals 2
    .param p1, "characteristics"    # I
    .param p2, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "+",
            "Lj$/util/Spliterator$OfInt;",
            ">;IZ)",
            "Lj$/util/stream/IntStream;"
        }
    .end annotation

    .line 178
    .local p0, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+Ljava/util/Spliterator$OfInt;>;"
    new-instance v0, Lj$/util/stream/IntPipeline$Head;

    .line 179
    invoke-static {p1}, Lj$/util/stream/StreamOpFlag;->fromCharacteristics(I)I

    move-result v1

    invoke-direct {v0, p0, v1, p2}, Lj$/util/stream/IntPipeline$Head;-><init>(Ljava/util/function/Supplier;IZ)V

    .line 178
    return-object v0
.end method

.method public static longStream(Lj$/util/Spliterator$OfLong;Z)Lj$/util/stream/LongStream;
    .locals 2
    .param p0, "spliterator"    # Lj$/util/Spliterator$OfLong;
    .param p1, "parallel"    # Z

    .line 206
    new-instance v0, Lj$/util/stream/LongPipeline$Head;

    .line 207
    invoke-static {p0}, Lj$/util/stream/StreamOpFlag;->fromCharacteristics(Lj$/util/Spliterator;)I

    move-result v1

    invoke-direct {v0, p0, v1, p1}, Lj$/util/stream/LongPipeline$Head;-><init>(Lj$/util/Spliterator;IZ)V

    .line 206
    return-object v0
.end method

.method public static longStream(Ljava/util/function/Supplier;IZ)Lj$/util/stream/LongStream;
    .locals 2
    .param p1, "characteristics"    # I
    .param p2, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "+",
            "Lj$/util/Spliterator$OfLong;",
            ">;IZ)",
            "Lj$/util/stream/LongStream;"
        }
    .end annotation

    .line 246
    .local p0, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+Ljava/util/Spliterator$OfLong;>;"
    new-instance v0, Lj$/util/stream/LongPipeline$Head;

    .line 247
    invoke-static {p1}, Lj$/util/stream/StreamOpFlag;->fromCharacteristics(I)I

    move-result v1

    invoke-direct {v0, p0, v1, p2}, Lj$/util/stream/LongPipeline$Head;-><init>(Ljava/util/function/Supplier;IZ)V

    .line 246
    return-object v0
.end method

.method public static stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;
    .locals 2
    .param p1, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/Spliterator<",
            "TT;>;Z)",
            "Lj$/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 68
    .local p0, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    new-instance v0, Lj$/util/stream/ReferencePipeline$Head;

    .line 70
    invoke-static {p0}, Lj$/util/stream/StreamOpFlag;->fromCharacteristics(Lj$/util/Spliterator;)I

    move-result v1

    invoke-direct {v0, p0, v1, p1}, Lj$/util/stream/ReferencePipeline$Head;-><init>(Lj$/util/Spliterator;IZ)V

    .line 69
    return-object v0
.end method

.method public static stream(Ljava/util/function/Supplier;IZ)Lj$/util/stream/Stream;
    .locals 2
    .param p1, "characteristics"    # I
    .param p2, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "+",
            "Lj$/util/Spliterator<",
            "TT;>;>;IZ)",
            "Lj$/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 110
    .local p0, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+Ljava/util/Spliterator<TT;>;>;"
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    new-instance v0, Lj$/util/stream/ReferencePipeline$Head;

    .line 112
    invoke-static {p1}, Lj$/util/stream/StreamOpFlag;->fromCharacteristics(I)I

    move-result v1

    invoke-direct {v0, p0, v1, p2}, Lj$/util/stream/ReferencePipeline$Head;-><init>(Ljava/util/function/Supplier;IZ)V

    .line 111
    return-object v0
.end method
