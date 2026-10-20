.class public final synthetic Lj$/util/stream/Node$OfDouble$-CC;
.super Ljava/lang/Object;
.source "Node.java"


# direct methods
.method public static $default$copyInto(Lj$/util/stream/Node$OfDouble;[Ljava/lang/Double;I)V
    .locals 5
    .param p0, "_this"    # Lj$/util/stream/Node$OfDouble;
    .param p1, "boxed"    # [Ljava/lang/Double;
    .param p2, "offset"    # I

    .line 505
    sget-boolean v0, Lj$/util/stream/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 506
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "{0} calling Node.OfDouble.copyInto(Double[], int)"

    invoke-static {v0, v1}, Lj$/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 508
    :cond_0
    invoke-interface {p0}, Lj$/util/stream/Node$OfDouble;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 509
    .local v0, "array":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 510
    add-int v2, p2, v1

    aget-wide v3, v0, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, p1, v2

    .line 509
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 512
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public static bridge synthetic $default$copyInto(Lj$/util/stream/Node$OfDouble;[Ljava/lang/Object;I)V
    .locals 0
    .param p0, "_this"    # Lj$/util/stream/Node$OfDouble;

    .line 471
    check-cast p1, [Ljava/lang/Double;

    invoke-interface {p0, p1, p2}, Lj$/util/stream/Node$OfDouble;->copyInto([Ljava/lang/Double;I)V

    return-void
.end method

.method public static $default$forEach(Lj$/util/stream/Node$OfDouble;Ljava/util/function/Consumer;)V
    .locals 2
    .param p0, "_this"    # Lj$/util/stream/Node$OfDouble;

    .line 483
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Double;>;"
    instance-of v0, p1, Ljava/util/function/DoubleConsumer;

    if-eqz v0, :cond_0

    .line 484
    move-object v0, p1

    check-cast v0, Ljava/util/function/DoubleConsumer;

    invoke-interface {p0, v0}, Lj$/util/stream/Node$OfDouble;->forEach(Ljava/lang/Object;)V

    goto :goto_0

    .line 487
    :cond_0
    sget-boolean v0, Lj$/util/stream/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_1

    .line 488
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "{0} calling Node.OfLong.forEachRemaining(Consumer)"

    invoke-static {v0, v1}, Lj$/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 489
    :cond_1
    invoke-interface {p0}, Lj$/util/stream/Node$OfDouble;->spliterator()Lj$/util/Spliterator$OfPrimitive;

    move-result-object v0

    check-cast v0, Lj$/util/Spliterator$OfDouble;

    invoke-interface {v0, p1}, Lj$/util/Spliterator$OfDouble;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 491
    :goto_0
    return-void
.end method

.method public static $default$getShape(Lj$/util/stream/Node$OfDouble;)Lj$/util/stream/StreamShape;
    .locals 1
    .param p0, "_this"    # Lj$/util/stream/Node$OfDouble;

    .line 544
    sget-object v0, Lj$/util/stream/StreamShape;->DOUBLE_VALUE:Lj$/util/stream/StreamShape;

    return-object v0
.end method

.method public static bridge synthetic $default$newArray(Lj$/util/stream/Node$OfDouble;I)Ljava/lang/Object;
    .locals 0
    .param p0, "_this"    # Lj$/util/stream/Node$OfDouble;

    .line 471
    invoke-interface {p0, p1}, Lj$/util/stream/Node$OfDouble;->newArray(I)[D

    move-result-object p1

    return-object p1
.end method

.method public static $default$newArray(Lj$/util/stream/Node$OfDouble;I)[D
    .locals 1
    .param p0, "_this"    # Lj$/util/stream/Node$OfDouble;
    .param p1, "count"    # I

    .line 534
    new-array v0, p1, [D

    return-object v0
.end method

.method public static $default$truncate(Lj$/util/stream/Node$OfDouble;JJLjava/util/function/IntFunction;)Lj$/util/stream/Node$OfDouble;
    .locals 8
    .param p0, "_this"    # Lj$/util/stream/Node$OfDouble;
    .param p1, "from"    # J
    .param p3, "to"    # J

    .line 516
    .local p5, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[Ljava/lang/Double;>;"
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    invoke-interface {p0}, Lj$/util/stream/Node$OfDouble;->count()J

    move-result-wide v0

    cmp-long v2, p3, v0

    if-nez v2, :cond_0

    .line 517
    return-object p0

    .line 518
    :cond_0
    sub-long v0, p3, p1

    .line 519
    .local v0, "size":J
    invoke-interface {p0}, Lj$/util/stream/Node$OfDouble;->spliterator()Lj$/util/Spliterator$OfPrimitive;

    move-result-object v2

    check-cast v2, Lj$/util/Spliterator$OfDouble;

    .line 520
    .local v2, "spliterator":Lj$/util/Spliterator$OfDouble;
    invoke-static {v0, v1}, Lj$/util/stream/Nodes;->doubleBuilder(J)Lj$/util/stream/Node$Builder$OfDouble;

    move-result-object v3

    .line 521
    .local v3, "nodeBuilder":Lj$/util/stream/Node$Builder$OfDouble;
    invoke-interface {v3, v0, v1}, Lj$/util/stream/Node$Builder$OfDouble;->begin(J)V

    .line 522
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    int-to-long v5, v4

    cmp-long v7, v5, p1

    if-gez v7, :cond_1

    new-instance v5, Lj$/util/stream/Node$OfDouble$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lj$/util/stream/Node$OfDouble$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v5}, Lj$/util/Spliterator$OfDouble;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 523
    .end local v4    # "i":I
    :cond_1
    invoke-interface {p0}, Lj$/util/stream/Node$OfDouble;->count()J

    move-result-wide v4

    cmp-long v6, p3, v4

    if-nez v6, :cond_2

    .line 524
    invoke-interface {v2, v3}, Lj$/util/Spliterator$OfDouble;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    goto :goto_2

    .line 526
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    int-to-long v5, v4

    cmp-long v7, v5, v0

    if-gez v7, :cond_3

    invoke-interface {v2, v3}, Lj$/util/Spliterator$OfDouble;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result v5

    if-eqz v5, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 528
    .end local v4    # "i":I
    :cond_3
    :goto_2
    invoke-interface {v3}, Lj$/util/stream/Node$Builder$OfDouble;->end()V

    .line 529
    invoke-interface {v3}, Lj$/util/stream/Node$Builder$OfDouble;->build()Lj$/util/stream/Node$OfDouble;

    move-result-object v4

    return-object v4
.end method

.method public static bridge synthetic $default$truncate(Lj$/util/stream/Node$OfDouble;JJLjava/util/function/IntFunction;)Lj$/util/stream/Node$OfPrimitive;
    .locals 0
    .param p0, "_this"    # Lj$/util/stream/Node$OfDouble;

    .line 471
    invoke-interface/range {p0 .. p5}, Lj$/util/stream/Node$OfDouble;->truncate(JJLjava/util/function/IntFunction;)Lj$/util/stream/Node$OfDouble;

    move-result-object p1

    return-object p1
.end method

.method public static bridge synthetic $default$truncate(Lj$/util/stream/Node$OfDouble;JJLjava/util/function/IntFunction;)Lj$/util/stream/Node;
    .locals 0
    .param p0, "_this"    # Lj$/util/stream/Node$OfDouble;

    .line 471
    invoke-interface/range {p0 .. p5}, Lj$/util/stream/Node$OfDouble;->truncate(JJLjava/util/function/IntFunction;)Lj$/util/stream/Node$OfDouble;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$truncate$0(D)V
    .locals 0
    .param p0, "e"    # D

    .line 522
    return-void
.end method
