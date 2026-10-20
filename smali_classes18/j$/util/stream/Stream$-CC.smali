.class public final synthetic Lj$/util/stream/Stream$-CC;
.super Ljava/lang/Object;
.source "Stream.java"


# direct methods
.method public static $default$dropWhile(Lj$/util/stream/Stream;Ljava/util/function/Predicate;)Lj$/util/stream/Stream;
    .locals 3
    .param p0, "_this"    # Lj$/util/stream/Stream;

    .line 622
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    new-instance v0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;

    .line 626
    invoke-interface {p0}, Lj$/util/stream/Stream;->spliterator()Lj$/util/Spliterator;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;-><init>(Lj$/util/Spliterator;ZLjava/util/function/Predicate;)V

    .line 627
    invoke-interface {p0}, Lj$/util/stream/Stream;->isParallel()Z

    move-result v1

    .line 625
    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lj$/util/stream/Stream$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lj$/util/stream/Stream$$ExternalSyntheticLambda0;-><init>(Lj$/util/stream/Stream;)V

    .line 627
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Lj$/util/stream/Stream;

    .line 625
    return-object v0
.end method

.method public static $default$takeWhile(Lj$/util/stream/Stream;Ljava/util/function/Predicate;)Lj$/util/stream/Stream;
    .locals 3
    .param p0, "_this"    # Lj$/util/stream/Stream;

    .line 556
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    new-instance v0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;

    .line 560
    invoke-interface {p0}, Lj$/util/stream/Stream;->spliterator()Lj$/util/Spliterator;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;-><init>(Lj$/util/Spliterator;ZLjava/util/function/Predicate;)V

    .line 561
    invoke-interface {p0}, Lj$/util/stream/Stream;->isParallel()Z

    move-result v1

    .line 559
    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lj$/util/stream/Stream$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lj$/util/stream/Stream$$ExternalSyntheticLambda0;-><init>(Lj$/util/stream/Stream;)V

    .line 561
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Lj$/util/stream/Stream;

    .line 559
    return-object v0
.end method

.method public static builder()Lj$/util/stream/Stream$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lj$/util/stream/Stream$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 1139
    new-instance v0, Lj$/util/stream/Streams$StreamBuilderImpl;

    invoke-direct {v0}, Lj$/util/stream/Streams$StreamBuilderImpl;-><init>()V

    return-object v0
.end method

.method public static concat(Lj$/util/stream/Stream;Lj$/util/stream/Stream;)Lj$/util/stream/Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/stream/Stream<",
            "+TT;>;",
            "Lj$/util/stream/Stream<",
            "+TT;>;)",
            "Lj$/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 1375
    .local p0, "a":Lj$/util/stream/Stream;, "Ljava/util/stream/Stream<+TT;>;"
    .local p1, "b":Lj$/util/stream/Stream;, "Ljava/util/stream/Stream<+TT;>;"
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1376
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1379
    new-instance v0, Lj$/util/stream/Streams$ConcatSpliterator$OfRef;

    .line 1380
    invoke-interface {p0}, Lj$/util/stream/Stream;->spliterator()Lj$/util/Spliterator;

    move-result-object v1

    invoke-interface {p1}, Lj$/util/stream/Stream;->spliterator()Lj$/util/Spliterator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lj$/util/stream/Streams$ConcatSpliterator$OfRef;-><init>(Lj$/util/Spliterator;Lj$/util/Spliterator;)V

    .line 1381
    .local v0, "split":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    invoke-interface {p0}, Lj$/util/stream/Stream;->isParallel()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1}, Lj$/util/stream/Stream;->isParallel()Z

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
    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;

    move-result-object v1

    .line 1382
    .local v1, "stream":Lj$/util/stream/Stream;, "Ljava/util/stream/Stream<TT;>;"
    invoke-static {p0, p1}, Lj$/util/stream/Streams;->composedClose(Lj$/util/stream/BaseStream;Lj$/util/stream/BaseStream;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;

    move-result-object v2

    check-cast v2, Lj$/util/stream/Stream;

    return-object v2
.end method

.method public static empty()Lj$/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lj$/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 1149
    invoke-static {}, Lj$/util/Spliterators;->emptySpliterator()Lj$/util/Spliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static generate(Ljava/util/function/Supplier;)Lj$/util/stream/Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "+TT;>;)",
            "Lj$/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 1332
    .local p0, "s":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+TT;>;"
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1333
    new-instance v0, Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfRef;

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {v0, v1, v2, p0}, Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfRef;-><init>(JLjava/util/function/Supplier;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static iterate(Ljava/lang/Object;Ljava/util/function/Predicate;Ljava/util/function/UnaryOperator;)Lj$/util/stream/Stream;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/function/Predicate<",
            "-TT;>;",
            "Ljava/util/function/UnaryOperator<",
            "TT;>;)",
            "Lj$/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 1277
    .local p0, "seed":Ljava/lang/Object;, "TT;"
    .local p1, "hasNext":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    .local p2, "next":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<TT;>;"
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1278
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1279
    new-instance v7, Lj$/util/stream/Stream$2;

    const-wide v1, 0x7fffffffffffffffL

    const/16 v3, 0x410

    move-object v0, v7

    move-object v4, p2

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lj$/util/stream/Stream$2;-><init>(JILjava/util/function/UnaryOperator;Ljava/lang/Object;Ljava/util/function/Predicate;)V

    .line 1319
    .local v0, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;

    move-result-object v1

    return-object v1
.end method

.method public static iterate(Ljava/lang/Object;Ljava/util/function/UnaryOperator;)Lj$/util/stream/Stream;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/function/UnaryOperator<",
            "TT;>;)",
            "Lj$/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 1215
    .local p0, "seed":Ljava/lang/Object;, "TT;"
    .local p1, "f":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<TT;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1216
    new-instance v6, Lj$/util/stream/Stream$1;

    const-wide v1, 0x7fffffffffffffffL

    const/16 v3, 0x410

    move-object v0, v6

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/Stream$1;-><init>(JILjava/util/function/UnaryOperator;Ljava/lang/Object;)V

    .line 1235
    .local v0, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;

    move-result-object v1

    return-object v1
.end method

.method public static of(Ljava/lang/Object;)Lj$/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lj$/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 1160
    .local p0, "t":Ljava/lang/Object;, "TT;"
    new-instance v0, Lj$/util/stream/Streams$StreamBuilderImpl;

    invoke-direct {v0, p0}, Lj$/util/stream/Streams$StreamBuilderImpl;-><init>(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static varargs of([Ljava/lang/Object;)Lj$/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lj$/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 1188
    .local p0, "values":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0}, Lj$/util/DesugarArrays;->stream([Ljava/lang/Object;)Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static ofNullable(Ljava/lang/Object;)Lj$/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lj$/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 1174
    .local p0, "t":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    invoke-static {}, Lj$/util/stream/Stream$-CC;->empty()Lj$/util/stream/Stream;

    move-result-object v0

    goto :goto_0

    .line 1175
    :cond_0
    new-instance v0, Lj$/util/stream/Streams$StreamBuilderImpl;

    invoke-direct {v0, p0}, Lj$/util/stream/Streams$StreamBuilderImpl;-><init>(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;

    move-result-object v0

    .line 1174
    :goto_0
    return-object v0
.end method
