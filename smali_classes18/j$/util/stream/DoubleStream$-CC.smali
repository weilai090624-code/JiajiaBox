.class public final synthetic Lj$/util/stream/DoubleStream$-CC;
.super Ljava/lang/Object;
.source "DoubleStream.java"


# direct methods
.method public static $default$dropWhile(Lj$/util/stream/DoubleStream;Ljava/util/function/DoublePredicate;)Lj$/util/stream/DoubleStream;
    .locals 3
    .param p0, "_this"    # Lj$/util/stream/DoubleStream;
    .param p1, "predicate"    # Ljava/util/function/DoublePredicate;

    .line 407
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    new-instance v0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;

    .line 411
    invoke-interface {p0}, Lj$/util/stream/DoubleStream;->spliterator()Lj$/util/Spliterator$OfDouble;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;-><init>(Lj$/util/Spliterator$OfDouble;ZLjava/util/function/DoublePredicate;)V

    .line 412
    invoke-interface {p0}, Lj$/util/stream/DoubleStream;->isParallel()Z

    move-result v1

    .line 410
    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->doubleStream(Lj$/util/Spliterator$OfDouble;Z)Lj$/util/stream/DoubleStream;

    move-result-object v0

    new-instance v1, Lj$/util/stream/DoubleStream$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lj$/util/stream/DoubleStream$$ExternalSyntheticLambda0;-><init>(Lj$/util/stream/DoubleStream;)V

    .line 412
    invoke-interface {v0, v1}, Lj$/util/stream/DoubleStream;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Lj$/util/stream/DoubleStream;

    .line 410
    return-object v0
.end method

.method public static bridge synthetic $default$iterator(Lj$/util/stream/DoubleStream;)Ljava/util/Iterator;
    .locals 1
    .param p0, "_this"    # Lj$/util/stream/DoubleStream;

    .line 72
    invoke-interface {p0}, Lj$/util/stream/DoubleStream;->iterator()Lj$/util/PrimitiveIterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic $default$parallel(Lj$/util/stream/DoubleStream;)Lj$/util/stream/BaseStream;
    .locals 1
    .param p0, "_this"    # Lj$/util/stream/DoubleStream;

    .line 72
    invoke-interface {p0}, Lj$/util/stream/DoubleStream;->parallel()Lj$/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic $default$sequential(Lj$/util/stream/DoubleStream;)Lj$/util/stream/BaseStream;
    .locals 1
    .param p0, "_this"    # Lj$/util/stream/DoubleStream;

    .line 72
    invoke-interface {p0}, Lj$/util/stream/DoubleStream;->sequential()Lj$/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic $default$spliterator(Lj$/util/stream/DoubleStream;)Lj$/util/Spliterator;
    .locals 1
    .param p0, "_this"    # Lj$/util/stream/DoubleStream;

    .line 72
    invoke-interface {p0}, Lj$/util/stream/DoubleStream;->spliterator()Lj$/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public static $default$takeWhile(Lj$/util/stream/DoubleStream;Ljava/util/function/DoublePredicate;)Lj$/util/stream/DoubleStream;
    .locals 3
    .param p0, "_this"    # Lj$/util/stream/DoubleStream;
    .param p1, "predicate"    # Ljava/util/function/DoublePredicate;

    .line 340
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    new-instance v0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Taking;

    .line 344
    invoke-interface {p0}, Lj$/util/stream/DoubleStream;->spliterator()Lj$/util/Spliterator$OfDouble;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Taking;-><init>(Lj$/util/Spliterator$OfDouble;ZLjava/util/function/DoublePredicate;)V

    .line 345
    invoke-interface {p0}, Lj$/util/stream/DoubleStream;->isParallel()Z

    move-result v1

    .line 343
    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->doubleStream(Lj$/util/Spliterator$OfDouble;Z)Lj$/util/stream/DoubleStream;

    move-result-object v0

    new-instance v1, Lj$/util/stream/DoubleStream$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lj$/util/stream/DoubleStream$$ExternalSyntheticLambda0;-><init>(Lj$/util/stream/DoubleStream;)V

    .line 345
    invoke-interface {v0, v1}, Lj$/util/stream/DoubleStream;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Lj$/util/stream/DoubleStream;

    .line 343
    return-object v0
.end method

.method public static builder()Lj$/util/stream/DoubleStream$Builder;
    .locals 1

    .line 911
    new-instance v0, Lj$/util/stream/Streams$DoubleStreamBuilderImpl;

    invoke-direct {v0}, Lj$/util/stream/Streams$DoubleStreamBuilderImpl;-><init>()V

    return-object v0
.end method

.method public static concat(Lj$/util/stream/DoubleStream;Lj$/util/stream/DoubleStream;)Lj$/util/stream/DoubleStream;
    .locals 3
    .param p0, "a"    # Lj$/util/stream/DoubleStream;
    .param p1, "b"    # Lj$/util/stream/DoubleStream;

    .line 1118
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1121
    new-instance v0, Lj$/util/stream/Streams$ConcatSpliterator$OfDouble;

    .line 1122
    invoke-interface {p0}, Lj$/util/stream/DoubleStream;->spliterator()Lj$/util/Spliterator$OfDouble;

    move-result-object v1

    invoke-interface {p1}, Lj$/util/stream/DoubleStream;->spliterator()Lj$/util/Spliterator$OfDouble;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lj$/util/stream/Streams$ConcatSpliterator$OfDouble;-><init>(Lj$/util/Spliterator$OfDouble;Lj$/util/Spliterator$OfDouble;)V

    .line 1123
    .local v0, "split":Lj$/util/Spliterator$OfDouble;
    invoke-interface {p0}, Lj$/util/stream/DoubleStream;->isParallel()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1}, Lj$/util/stream/DoubleStream;->isParallel()Z

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
    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->doubleStream(Lj$/util/Spliterator$OfDouble;Z)Lj$/util/stream/DoubleStream;

    move-result-object v1

    .line 1124
    .local v1, "stream":Lj$/util/stream/DoubleStream;
    invoke-static {p0, p1}, Lj$/util/stream/Streams;->composedClose(Lj$/util/stream/BaseStream;Lj$/util/stream/BaseStream;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v1, v2}, Lj$/util/stream/DoubleStream;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;

    move-result-object v2

    check-cast v2, Lj$/util/stream/DoubleStream;

    return-object v2
.end method

.method public static empty()Lj$/util/stream/DoubleStream;
    .locals 2

    .line 920
    invoke-static {}, Lj$/util/Spliterators;->emptyDoubleSpliterator()Lj$/util/Spliterator$OfDouble;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->doubleStream(Lj$/util/Spliterator$OfDouble;Z)Lj$/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public static generate(Ljava/util/function/DoubleSupplier;)Lj$/util/stream/DoubleStream;
    .locals 3
    .param p0, "s"    # Ljava/util/function/DoubleSupplier;

    .line 1079
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1080
    new-instance v0, Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfDouble;

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {v0, v1, v2, p0}, Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfDouble;-><init>(JLjava/util/function/DoubleSupplier;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->doubleStream(Lj$/util/Spliterator$OfDouble;Z)Lj$/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public static iterate(DLjava/util/function/DoublePredicate;Ljava/util/function/DoubleUnaryOperator;)Lj$/util/stream/DoubleStream;
    .locals 9
    .param p0, "seed"    # D
    .param p2, "hasNext"    # Ljava/util/function/DoublePredicate;
    .param p3, "next"    # Ljava/util/function/DoubleUnaryOperator;

    .line 1027
    invoke-static {p3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1029
    new-instance v8, Lj$/util/stream/DoubleStream$2;

    const-wide v1, 0x7fffffffffffffffL

    const/16 v3, 0x510

    move-object v0, v8

    move-object v4, p3

    move-wide v5, p0

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lj$/util/stream/DoubleStream$2;-><init>(JILjava/util/function/DoubleUnaryOperator;DLjava/util/function/DoublePredicate;)V

    .line 1067
    .local v0, "spliterator":Lj$/util/Spliterator$OfDouble;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->doubleStream(Lj$/util/Spliterator$OfDouble;Z)Lj$/util/stream/DoubleStream;

    move-result-object v1

    return-object v1
.end method

.method public static iterate(DLjava/util/function/DoubleUnaryOperator;)Lj$/util/stream/DoubleStream;
    .locals 8
    .param p0, "seed"    # D
    .param p2, "f"    # Ljava/util/function/DoubleUnaryOperator;

    .line 966
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    new-instance v7, Lj$/util/stream/DoubleStream$1;

    const-wide v1, 0x7fffffffffffffffL

    const/16 v3, 0x510

    move-object v0, v7

    move-object v4, p2

    move-wide v5, p0

    invoke-direct/range {v0 .. v6}, Lj$/util/stream/DoubleStream$1;-><init>(JILjava/util/function/DoubleUnaryOperator;D)V

    .line 986
    .local v0, "spliterator":Lj$/util/Spliterator$OfDouble;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->doubleStream(Lj$/util/Spliterator$OfDouble;Z)Lj$/util/stream/DoubleStream;

    move-result-object v1

    return-object v1
.end method

.method public static of(D)Lj$/util/stream/DoubleStream;
    .locals 2
    .param p0, "t"    # D

    .line 930
    new-instance v0, Lj$/util/stream/Streams$DoubleStreamBuilderImpl;

    invoke-direct {v0, p0, p1}, Lj$/util/stream/Streams$DoubleStreamBuilderImpl;-><init>(D)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->doubleStream(Lj$/util/Spliterator$OfDouble;Z)Lj$/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public static varargs of([D)Lj$/util/stream/DoubleStream;
    .locals 1
    .param p0, "values"    # [D

    .line 940
    invoke-static {p0}, Lj$/util/DesugarArrays;->stream([D)Lj$/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method
