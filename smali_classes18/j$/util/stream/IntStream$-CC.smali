.class public final synthetic Lj$/util/stream/IntStream$-CC;
.super Ljava/lang/Object;
.source "IntStream.java"


# direct methods
.method public static $default$dropWhile(Lj$/util/stream/IntStream;Ljava/util/function/IntPredicate;)Lj$/util/stream/IntStream;
    .locals 3
    .param p0, "_this"    # Lj$/util/stream/IntStream;
    .param p1, "predicate"    # Ljava/util/function/IntPredicate;

    .line 403
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    new-instance v0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Dropping;

    .line 407
    invoke-interface {p0}, Lj$/util/stream/IntStream;->spliterator()Lj$/util/Spliterator$OfInt;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Dropping;-><init>(Lj$/util/Spliterator$OfInt;ZLjava/util/function/IntPredicate;)V

    .line 408
    invoke-interface {p0}, Lj$/util/stream/IntStream;->isParallel()Z

    move-result v1

    .line 406
    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->intStream(Lj$/util/Spliterator$OfInt;Z)Lj$/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lj$/util/stream/IntStream$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lj$/util/stream/IntStream$$ExternalSyntheticLambda0;-><init>(Lj$/util/stream/IntStream;)V

    .line 408
    invoke-interface {v0, v1}, Lj$/util/stream/IntStream;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Lj$/util/stream/IntStream;

    .line 406
    return-object v0
.end method

.method public static bridge synthetic $default$iterator(Lj$/util/stream/IntStream;)Ljava/util/Iterator;
    .locals 1
    .param p0, "_this"    # Lj$/util/stream/IntStream;

    .line 73
    invoke-interface {p0}, Lj$/util/stream/IntStream;->iterator()Lj$/util/PrimitiveIterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic $default$parallel(Lj$/util/stream/IntStream;)Lj$/util/stream/BaseStream;
    .locals 1
    .param p0, "_this"    # Lj$/util/stream/IntStream;

    .line 73
    invoke-interface {p0}, Lj$/util/stream/IntStream;->parallel()Lj$/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic $default$sequential(Lj$/util/stream/IntStream;)Lj$/util/stream/BaseStream;
    .locals 1
    .param p0, "_this"    # Lj$/util/stream/IntStream;

    .line 73
    invoke-interface {p0}, Lj$/util/stream/IntStream;->sequential()Lj$/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic $default$spliterator(Lj$/util/stream/IntStream;)Lj$/util/Spliterator;
    .locals 1
    .param p0, "_this"    # Lj$/util/stream/IntStream;

    .line 73
    invoke-interface {p0}, Lj$/util/stream/IntStream;->spliterator()Lj$/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public static $default$takeWhile(Lj$/util/stream/IntStream;Ljava/util/function/IntPredicate;)Lj$/util/stream/IntStream;
    .locals 3
    .param p0, "_this"    # Lj$/util/stream/IntStream;
    .param p1, "predicate"    # Ljava/util/function/IntPredicate;

    .line 337
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    new-instance v0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;

    .line 341
    invoke-interface {p0}, Lj$/util/stream/IntStream;->spliterator()Lj$/util/Spliterator$OfInt;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;-><init>(Lj$/util/Spliterator$OfInt;ZLjava/util/function/IntPredicate;)V

    .line 342
    invoke-interface {p0}, Lj$/util/stream/IntStream;->isParallel()Z

    move-result v1

    .line 340
    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->intStream(Lj$/util/Spliterator$OfInt;Z)Lj$/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lj$/util/stream/IntStream$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lj$/util/stream/IntStream$$ExternalSyntheticLambda0;-><init>(Lj$/util/stream/IntStream;)V

    .line 342
    invoke-interface {v0, v1}, Lj$/util/stream/IntStream;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Lj$/util/stream/IntStream;

    .line 340
    return-object v0
.end method

.method public static builder()Lj$/util/stream/IntStream$Builder;
    .locals 1

    .line 851
    new-instance v0, Lj$/util/stream/Streams$IntStreamBuilderImpl;

    invoke-direct {v0}, Lj$/util/stream/Streams$IntStreamBuilderImpl;-><init>()V

    return-object v0
.end method

.method public static concat(Lj$/util/stream/IntStream;Lj$/util/stream/IntStream;)Lj$/util/stream/IntStream;
    .locals 3
    .param p0, "a"    # Lj$/util/stream/IntStream;
    .param p1, "b"    # Lj$/util/stream/IntStream;

    .line 1110
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1111
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1113
    new-instance v0, Lj$/util/stream/Streams$ConcatSpliterator$OfInt;

    .line 1114
    invoke-interface {p0}, Lj$/util/stream/IntStream;->spliterator()Lj$/util/Spliterator$OfInt;

    move-result-object v1

    invoke-interface {p1}, Lj$/util/stream/IntStream;->spliterator()Lj$/util/Spliterator$OfInt;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lj$/util/stream/Streams$ConcatSpliterator$OfInt;-><init>(Lj$/util/Spliterator$OfInt;Lj$/util/Spliterator$OfInt;)V

    .line 1115
    .local v0, "split":Lj$/util/Spliterator$OfInt;
    invoke-interface {p0}, Lj$/util/stream/IntStream;->isParallel()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1}, Lj$/util/stream/IntStream;->isParallel()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->intStream(Lj$/util/Spliterator$OfInt;Z)Lj$/util/stream/IntStream;

    move-result-object v1

    .line 1116
    .local v1, "stream":Lj$/util/stream/IntStream;
    invoke-static {p0, p1}, Lj$/util/stream/Streams;->composedClose(Lj$/util/stream/BaseStream;Lj$/util/stream/BaseStream;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v1, v2}, Lj$/util/stream/IntStream;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;

    move-result-object v2

    check-cast v2, Lj$/util/stream/IntStream;

    return-object v2
.end method

.method public static empty()Lj$/util/stream/IntStream;
    .locals 2

    .line 860
    invoke-static {}, Lj$/util/Spliterators;->emptyIntSpliterator()Lj$/util/Spliterator$OfInt;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->intStream(Lj$/util/Spliterator$OfInt;Z)Lj$/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public static generate(Ljava/util/function/IntSupplier;)Lj$/util/stream/IntStream;
    .locals 3
    .param p0, "s"    # Ljava/util/function/IntSupplier;

    .line 1019
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1020
    new-instance v0, Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {v0, v1, v2, p0}, Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;-><init>(JLjava/util/function/IntSupplier;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->intStream(Lj$/util/Spliterator$OfInt;Z)Lj$/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public static iterate(ILjava/util/function/IntPredicate;Ljava/util/function/IntUnaryOperator;)Lj$/util/stream/IntStream;
    .locals 8
    .param p0, "seed"    # I
    .param p1, "hasNext"    # Ljava/util/function/IntPredicate;
    .param p2, "next"    # Ljava/util/function/IntUnaryOperator;

    .line 967
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 968
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    new-instance v7, Lj$/util/stream/IntStream$2;

    const-wide v1, 0x7fffffffffffffffL

    const/16 v3, 0x510

    move-object v0, v7

    move-object v4, p2

    move v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lj$/util/stream/IntStream$2;-><init>(JILjava/util/function/IntUnaryOperator;ILjava/util/function/IntPredicate;)V

    .line 1007
    .local v0, "spliterator":Lj$/util/Spliterator$OfInt;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->intStream(Lj$/util/Spliterator$OfInt;Z)Lj$/util/stream/IntStream;

    move-result-object v1

    return-object v1
.end method

.method public static iterate(ILjava/util/function/IntUnaryOperator;)Lj$/util/stream/IntStream;
    .locals 7
    .param p0, "seed"    # I
    .param p1, "f"    # Ljava/util/function/IntUnaryOperator;

    .line 906
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    new-instance v6, Lj$/util/stream/IntStream$1;

    const-wide v1, 0x7fffffffffffffffL

    const/16 v3, 0x510

    move-object v0, v6

    move-object v4, p1

    move v5, p0

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/IntStream$1;-><init>(JILjava/util/function/IntUnaryOperator;I)V

    .line 926
    .local v0, "spliterator":Lj$/util/Spliterator$OfInt;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->intStream(Lj$/util/Spliterator$OfInt;Z)Lj$/util/stream/IntStream;

    move-result-object v1

    return-object v1
.end method

.method public static of(I)Lj$/util/stream/IntStream;
    .locals 2
    .param p0, "t"    # I

    .line 870
    new-instance v0, Lj$/util/stream/Streams$IntStreamBuilderImpl;

    invoke-direct {v0, p0}, Lj$/util/stream/Streams$IntStreamBuilderImpl;-><init>(I)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->intStream(Lj$/util/Spliterator$OfInt;Z)Lj$/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public static varargs of([I)Lj$/util/stream/IntStream;
    .locals 1
    .param p0, "values"    # [I

    .line 880
    invoke-static {p0}, Lj$/util/DesugarArrays;->stream([I)Lj$/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public static range(II)Lj$/util/stream/IntStream;
    .locals 2
    .param p0, "startInclusive"    # I
    .param p1, "endExclusive"    # I

    .line 1042
    if-lt p0, p1, :cond_0

    .line 1043
    invoke-static {}, Lj$/util/stream/IntStream$-CC;->empty()Lj$/util/stream/IntStream;

    move-result-object v0

    return-object v0

    .line 1045
    :cond_0
    new-instance v0, Lj$/util/stream/Streams$RangeIntSpliterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lj$/util/stream/Streams$RangeIntSpliterator;-><init>(IIZ)V

    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->intStream(Lj$/util/Spliterator$OfInt;Z)Lj$/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public static rangeClosed(II)Lj$/util/stream/IntStream;
    .locals 2
    .param p0, "startInclusive"    # I
    .param p1, "endInclusive"    # I

    .line 1068
    if-le p0, p1, :cond_0

    .line 1069
    invoke-static {}, Lj$/util/stream/IntStream$-CC;->empty()Lj$/util/stream/IntStream;

    move-result-object v0

    return-object v0

    .line 1071
    :cond_0
    new-instance v0, Lj$/util/stream/Streams$RangeIntSpliterator;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lj$/util/stream/Streams$RangeIntSpliterator;-><init>(IIZ)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->intStream(Lj$/util/Spliterator$OfInt;Z)Lj$/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method
