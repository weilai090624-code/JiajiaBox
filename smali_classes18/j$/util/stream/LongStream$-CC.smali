.class public final synthetic Lj$/util/stream/LongStream$-CC;
.super Ljava/lang/Object;
.source "LongStream.java"


# direct methods
.method public static $default$dropWhile(Lj$/util/stream/LongStream;Ljava/util/function/LongPredicate;)Lj$/util/stream/LongStream;
    .locals 3
    .param p0, "_this"    # Lj$/util/stream/LongStream;
    .param p1, "predicate"    # Ljava/util/function/LongPredicate;

    .line 405
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    new-instance v0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Dropping;

    .line 409
    invoke-interface {p0}, Lj$/util/stream/LongStream;->spliterator()Lj$/util/Spliterator$OfLong;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Dropping;-><init>(Lj$/util/Spliterator$OfLong;ZLjava/util/function/LongPredicate;)V

    .line 410
    invoke-interface {p0}, Lj$/util/stream/LongStream;->isParallel()Z

    move-result v1

    .line 408
    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->longStream(Lj$/util/Spliterator$OfLong;Z)Lj$/util/stream/LongStream;

    move-result-object v0

    new-instance v1, Lj$/util/stream/LongStream$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lj$/util/stream/LongStream$$ExternalSyntheticLambda1;-><init>(Lj$/util/stream/LongStream;)V

    .line 410
    invoke-interface {v0, v1}, Lj$/util/stream/LongStream;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Lj$/util/stream/LongStream;

    .line 408
    return-object v0
.end method

.method public static bridge synthetic $default$iterator(Lj$/util/stream/LongStream;)Ljava/util/Iterator;
    .locals 1
    .param p0, "_this"    # Lj$/util/stream/LongStream;

    .line 73
    invoke-interface {p0}, Lj$/util/stream/LongStream;->iterator()Lj$/util/PrimitiveIterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic $default$parallel(Lj$/util/stream/LongStream;)Lj$/util/stream/BaseStream;
    .locals 1
    .param p0, "_this"    # Lj$/util/stream/LongStream;

    .line 73
    invoke-interface {p0}, Lj$/util/stream/LongStream;->parallel()Lj$/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic $default$sequential(Lj$/util/stream/LongStream;)Lj$/util/stream/BaseStream;
    .locals 1
    .param p0, "_this"    # Lj$/util/stream/LongStream;

    .line 73
    invoke-interface {p0}, Lj$/util/stream/LongStream;->sequential()Lj$/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic $default$spliterator(Lj$/util/stream/LongStream;)Lj$/util/Spliterator;
    .locals 1
    .param p0, "_this"    # Lj$/util/stream/LongStream;

    .line 73
    invoke-interface {p0}, Lj$/util/stream/LongStream;->spliterator()Lj$/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public static $default$takeWhile(Lj$/util/stream/LongStream;Ljava/util/function/LongPredicate;)Lj$/util/stream/LongStream;
    .locals 3
    .param p0, "_this"    # Lj$/util/stream/LongStream;
    .param p1, "predicate"    # Ljava/util/function/LongPredicate;

    .line 338
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    new-instance v0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Taking;

    .line 342
    invoke-interface {p0}, Lj$/util/stream/LongStream;->spliterator()Lj$/util/Spliterator$OfLong;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Taking;-><init>(Lj$/util/Spliterator$OfLong;ZLjava/util/function/LongPredicate;)V

    .line 343
    invoke-interface {p0}, Lj$/util/stream/LongStream;->isParallel()Z

    move-result v1

    .line 341
    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->longStream(Lj$/util/Spliterator$OfLong;Z)Lj$/util/stream/LongStream;

    move-result-object v0

    new-instance v1, Lj$/util/stream/LongStream$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lj$/util/stream/LongStream$$ExternalSyntheticLambda1;-><init>(Lj$/util/stream/LongStream;)V

    .line 343
    invoke-interface {v0, v1}, Lj$/util/stream/LongStream;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Lj$/util/stream/LongStream;

    .line 341
    return-object v0
.end method

.method public static builder()Lj$/util/stream/LongStream$Builder;
    .locals 1

    .line 841
    new-instance v0, Lj$/util/stream/Streams$LongStreamBuilderImpl;

    invoke-direct {v0}, Lj$/util/stream/Streams$LongStreamBuilderImpl;-><init>()V

    return-object v0
.end method

.method public static concat(Lj$/util/stream/LongStream;Lj$/util/stream/LongStream;)Lj$/util/stream/LongStream;
    .locals 3
    .param p0, "a"    # Lj$/util/stream/LongStream;
    .param p1, "b"    # Lj$/util/stream/LongStream;

    .line 1115
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1116
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
    new-instance v0, Lj$/util/stream/Streams$ConcatSpliterator$OfLong;

    .line 1119
    invoke-interface {p0}, Lj$/util/stream/LongStream;->spliterator()Lj$/util/Spliterator$OfLong;

    move-result-object v1

    invoke-interface {p1}, Lj$/util/stream/LongStream;->spliterator()Lj$/util/Spliterator$OfLong;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lj$/util/stream/Streams$ConcatSpliterator$OfLong;-><init>(Lj$/util/Spliterator$OfLong;Lj$/util/Spliterator$OfLong;)V

    .line 1120
    .local v0, "split":Lj$/util/Spliterator$OfLong;
    invoke-interface {p0}, Lj$/util/stream/LongStream;->isParallel()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1}, Lj$/util/stream/LongStream;->isParallel()Z

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
    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->longStream(Lj$/util/Spliterator$OfLong;Z)Lj$/util/stream/LongStream;

    move-result-object v1

    .line 1121
    .local v1, "stream":Lj$/util/stream/LongStream;
    invoke-static {p0, p1}, Lj$/util/stream/Streams;->composedClose(Lj$/util/stream/BaseStream;Lj$/util/stream/BaseStream;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v1, v2}, Lj$/util/stream/LongStream;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;

    move-result-object v2

    check-cast v2, Lj$/util/stream/LongStream;

    return-object v2
.end method

.method public static empty()Lj$/util/stream/LongStream;
    .locals 2

    .line 850
    invoke-static {}, Lj$/util/Spliterators;->emptyLongSpliterator()Lj$/util/Spliterator$OfLong;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->longStream(Lj$/util/Spliterator$OfLong;Z)Lj$/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public static generate(Ljava/util/function/LongSupplier;)Lj$/util/stream/LongStream;
    .locals 3
    .param p0, "s"    # Ljava/util/function/LongSupplier;

    .line 1009
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1010
    new-instance v0, Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {v0, v1, v2, p0}, Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;-><init>(JLjava/util/function/LongSupplier;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->longStream(Lj$/util/Spliterator$OfLong;Z)Lj$/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public static iterate(JLjava/util/function/LongPredicate;Ljava/util/function/LongUnaryOperator;)Lj$/util/stream/LongStream;
    .locals 9
    .param p0, "seed"    # J
    .param p2, "hasNext"    # Ljava/util/function/LongPredicate;
    .param p3, "next"    # Ljava/util/function/LongUnaryOperator;

    .line 957
    invoke-static {p3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 958
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 959
    new-instance v8, Lj$/util/stream/LongStream$2;

    const-wide v1, 0x7fffffffffffffffL

    const/16 v3, 0x510

    move-object v0, v8

    move-object v4, p3

    move-wide v5, p0

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lj$/util/stream/LongStream$2;-><init>(JILjava/util/function/LongUnaryOperator;JLjava/util/function/LongPredicate;)V

    .line 997
    .local v0, "spliterator":Lj$/util/Spliterator$OfLong;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->longStream(Lj$/util/Spliterator$OfLong;Z)Lj$/util/stream/LongStream;

    move-result-object v1

    return-object v1
.end method

.method public static iterate(JLjava/util/function/LongUnaryOperator;)Lj$/util/stream/LongStream;
    .locals 8
    .param p0, "seed"    # J
    .param p2, "f"    # Ljava/util/function/LongUnaryOperator;

    .line 896
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    new-instance v7, Lj$/util/stream/LongStream$1;

    const-wide v1, 0x7fffffffffffffffL

    const/16 v3, 0x510

    move-object v0, v7

    move-object v4, p2

    move-wide v5, p0

    invoke-direct/range {v0 .. v6}, Lj$/util/stream/LongStream$1;-><init>(JILjava/util/function/LongUnaryOperator;J)V

    .line 916
    .local v0, "spliterator":Lj$/util/Spliterator$OfLong;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->longStream(Lj$/util/Spliterator$OfLong;Z)Lj$/util/stream/LongStream;

    move-result-object v1

    return-object v1
.end method

.method public static of(J)Lj$/util/stream/LongStream;
    .locals 2
    .param p0, "t"    # J

    .line 860
    new-instance v0, Lj$/util/stream/Streams$LongStreamBuilderImpl;

    invoke-direct {v0, p0, p1}, Lj$/util/stream/Streams$LongStreamBuilderImpl;-><init>(J)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->longStream(Lj$/util/Spliterator$OfLong;Z)Lj$/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public static varargs of([J)Lj$/util/stream/LongStream;
    .locals 1
    .param p0, "values"    # [J

    .line 870
    invoke-static {p0}, Lj$/util/DesugarArrays;->stream([J)Lj$/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public static range(JJ)Lj$/util/stream/LongStream;
    .locals 9
    .param p0, "startInclusive"    # J
    .param p2, "endExclusive"    # J

    .line 1032
    cmp-long v0, p0, p2

    if-ltz v0, :cond_0

    .line 1033
    invoke-static {}, Lj$/util/stream/LongStream$-CC;->empty()Lj$/util/stream/LongStream;

    move-result-object v0

    return-object v0

    .line 1034
    :cond_0
    sub-long v0, p2, p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 1039
    sub-long v0, p2, p0

    const-wide/16 v2, 0x2

    invoke-static {v0, v1, v2, v3}, Lj$/util/stream/LongStream$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v0

    add-long/2addr v0, p0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 1040
    .local v0, "m":J
    invoke-static {p0, p1, v0, v1}, Lj$/util/stream/LongStream$-CC;->range(JJ)Lj$/util/stream/LongStream;

    move-result-object v2

    invoke-static {v0, v1, p2, p3}, Lj$/util/stream/LongStream$-CC;->range(JJ)Lj$/util/stream/LongStream;

    move-result-object v3

    invoke-static {v2, v3}, Lj$/util/stream/LongStream$-CC;->concat(Lj$/util/stream/LongStream;Lj$/util/stream/LongStream;)Lj$/util/stream/LongStream;

    move-result-object v2

    return-object v2

    .line 1042
    .end local v0    # "m":J
    :cond_1
    new-instance v0, Lj$/util/stream/Streams$RangeLongSpliterator;

    const/4 v8, 0x0

    move-object v3, v0

    move-wide v4, p0

    move-wide v6, p2

    invoke-direct/range {v3 .. v8}, Lj$/util/stream/Streams$RangeLongSpliterator;-><init>(JJZ)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->longStream(Lj$/util/Spliterator$OfLong;Z)Lj$/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public static rangeClosed(JJ)Lj$/util/stream/LongStream;
    .locals 9
    .param p0, "startInclusive"    # J
    .param p2, "endInclusive"    # J

    .line 1065
    cmp-long v0, p0, p2

    if-lez v0, :cond_0

    .line 1066
    invoke-static {}, Lj$/util/stream/LongStream$-CC;->empty()Lj$/util/stream/LongStream;

    move-result-object v0

    return-object v0

    .line 1067
    :cond_0
    sub-long v0, p2, p0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-gtz v6, :cond_1

    .line 1073
    sub-long v0, p2, p0

    const-wide/16 v4, 0x2

    invoke-static {v0, v1, v4, v5}, Lj$/util/stream/LongStream$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v0

    add-long/2addr v0, p0

    add-long/2addr v0, v2

    .line 1074
    .local v0, "m":J
    invoke-static {p0, p1, v0, v1}, Lj$/util/stream/LongStream$-CC;->range(JJ)Lj$/util/stream/LongStream;

    move-result-object v2

    invoke-static {v0, v1, p2, p3}, Lj$/util/stream/LongStream$-CC;->rangeClosed(JJ)Lj$/util/stream/LongStream;

    move-result-object v3

    invoke-static {v2, v3}, Lj$/util/stream/LongStream$-CC;->concat(Lj$/util/stream/LongStream;Lj$/util/stream/LongStream;)Lj$/util/stream/LongStream;

    move-result-object v2

    return-object v2

    .line 1076
    .end local v0    # "m":J
    :cond_1
    new-instance v0, Lj$/util/stream/Streams$RangeLongSpliterator;

    const/4 v8, 0x1

    move-object v3, v0

    move-wide v4, p0

    move-wide v6, p2

    invoke-direct/range {v3 .. v8}, Lj$/util/stream/Streams$RangeLongSpliterator;-><init>(JJZ)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->longStream(Lj$/util/Spliterator$OfLong;Z)Lj$/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method
