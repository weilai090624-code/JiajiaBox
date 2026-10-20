.class public final synthetic Lj$/util/stream/Node$OfLong$-CC;
.super Ljava/lang/Object;
.source "Node.java"


# direct methods
.method public static $default$copyInto(Lj$/util/stream/Node$OfLong;[Ljava/lang/Long;I)V
    .locals 5
    .param p0, "_this"    # Lj$/util/stream/Node$OfLong;
    .param p1, "boxed"    # [Ljava/lang/Long;
    .param p2, "offset"    # I

    .line 426
    sget-boolean v0, Lj$/util/stream/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 427
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "{0} calling Node.OfInt.copyInto(Long[], int)"

    invoke-static {v0, v1}, Lj$/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 429
    :cond_0
    invoke-interface {p0}, Lj$/util/stream/Node$OfLong;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 430
    .local v0, "array":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 431
    add-int v2, p2, v1

    aget-wide v3, v0, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, p1, v2

    .line 430
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 433
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public static bridge synthetic $default$copyInto(Lj$/util/stream/Node$OfLong;[Ljava/lang/Object;I)V
    .locals 0
    .param p0, "_this"    # Lj$/util/stream/Node$OfLong;

    .line 394
    check-cast p1, [Ljava/lang/Long;

    invoke-interface {p0, p1, p2}, Lj$/util/stream/Node$OfLong;->copyInto([Ljava/lang/Long;I)V

    return-void
.end method

.method public static $default$forEach(Lj$/util/stream/Node$OfLong;Ljava/util/function/Consumer;)V
    .locals 2
    .param p0, "_this"    # Lj$/util/stream/Node$OfLong;

    .line 406
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Long;>;"
    instance-of v0, p1, Ljava/util/function/LongConsumer;

    if-eqz v0, :cond_0

    .line 407
    move-object v0, p1

    check-cast v0, Ljava/util/function/LongConsumer;

    invoke-interface {p0, v0}, Lj$/util/stream/Node$OfLong;->forEach(Ljava/lang/Object;)V

    goto :goto_0

    .line 410
    :cond_0
    sget-boolean v0, Lj$/util/stream/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_1

    .line 411
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "{0} calling Node.OfLong.forEachRemaining(Consumer)"

    invoke-static {v0, v1}, Lj$/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 412
    :cond_1
    invoke-interface {p0}, Lj$/util/stream/Node$OfLong;->spliterator()Lj$/util/Spliterator$OfPrimitive;

    move-result-object v0

    check-cast v0, Lj$/util/Spliterator$OfLong;

    invoke-interface {v0, p1}, Lj$/util/Spliterator$OfLong;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 414
    :goto_0
    return-void
.end method

.method public static $default$getShape(Lj$/util/stream/Node$OfLong;)Lj$/util/stream/StreamShape;
    .locals 1
    .param p0, "_this"    # Lj$/util/stream/Node$OfLong;

    .line 464
    sget-object v0, Lj$/util/stream/StreamShape;->LONG_VALUE:Lj$/util/stream/StreamShape;

    return-object v0
.end method

.method public static bridge synthetic $default$newArray(Lj$/util/stream/Node$OfLong;I)Ljava/lang/Object;
    .locals 0
    .param p0, "_this"    # Lj$/util/stream/Node$OfLong;

    .line 394
    invoke-interface {p0, p1}, Lj$/util/stream/Node$OfLong;->newArray(I)[J

    move-result-object p1

    return-object p1
.end method

.method public static $default$newArray(Lj$/util/stream/Node$OfLong;I)[J
    .locals 1
    .param p0, "_this"    # Lj$/util/stream/Node$OfLong;
    .param p1, "count"    # I

    .line 455
    new-array v0, p1, [J

    return-object v0
.end method

.method public static $default$truncate(Lj$/util/stream/Node$OfLong;JJLjava/util/function/IntFunction;)Lj$/util/stream/Node$OfLong;
    .locals 8
    .param p0, "_this"    # Lj$/util/stream/Node$OfLong;
    .param p1, "from"    # J
    .param p3, "to"    # J

    .line 437
    .local p5, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[Ljava/lang/Long;>;"
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    invoke-interface {p0}, Lj$/util/stream/Node$OfLong;->count()J

    move-result-wide v0

    cmp-long v2, p3, v0

    if-nez v2, :cond_0

    .line 438
    return-object p0

    .line 439
    :cond_0
    sub-long v0, p3, p1

    .line 440
    .local v0, "size":J
    invoke-interface {p0}, Lj$/util/stream/Node$OfLong;->spliterator()Lj$/util/Spliterator$OfPrimitive;

    move-result-object v2

    check-cast v2, Lj$/util/Spliterator$OfLong;

    .line 441
    .local v2, "spliterator":Lj$/util/Spliterator$OfLong;
    invoke-static {v0, v1}, Lj$/util/stream/Nodes;->longBuilder(J)Lj$/util/stream/Node$Builder$OfLong;

    move-result-object v3

    .line 442
    .local v3, "nodeBuilder":Lj$/util/stream/Node$Builder$OfLong;
    invoke-interface {v3, v0, v1}, Lj$/util/stream/Node$Builder$OfLong;->begin(J)V

    .line 443
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    int-to-long v5, v4

    cmp-long v7, v5, p1

    if-gez v7, :cond_1

    new-instance v5, Lj$/util/stream/Node$OfLong$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lj$/util/stream/Node$OfLong$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v5}, Lj$/util/Spliterator$OfLong;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 444
    .end local v4    # "i":I
    :cond_1
    invoke-interface {p0}, Lj$/util/stream/Node$OfLong;->count()J

    move-result-wide v4

    cmp-long v6, p3, v4

    if-nez v6, :cond_2

    .line 445
    invoke-interface {v2, v3}, Lj$/util/Spliterator$OfLong;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    goto :goto_2

    .line 447
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    int-to-long v5, v4

    cmp-long v7, v5, v0

    if-gez v7, :cond_3

    invoke-interface {v2, v3}, Lj$/util/Spliterator$OfLong;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result v5

    if-eqz v5, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 449
    .end local v4    # "i":I
    :cond_3
    :goto_2
    invoke-interface {v3}, Lj$/util/stream/Node$Builder$OfLong;->end()V

    .line 450
    invoke-interface {v3}, Lj$/util/stream/Node$Builder$OfLong;->build()Lj$/util/stream/Node$OfLong;

    move-result-object v4

    return-object v4
.end method

.method public static bridge synthetic $default$truncate(Lj$/util/stream/Node$OfLong;JJLjava/util/function/IntFunction;)Lj$/util/stream/Node$OfPrimitive;
    .locals 0
    .param p0, "_this"    # Lj$/util/stream/Node$OfLong;

    .line 394
    invoke-interface/range {p0 .. p5}, Lj$/util/stream/Node$OfLong;->truncate(JJLjava/util/function/IntFunction;)Lj$/util/stream/Node$OfLong;

    move-result-object p1

    return-object p1
.end method

.method public static bridge synthetic $default$truncate(Lj$/util/stream/Node$OfLong;JJLjava/util/function/IntFunction;)Lj$/util/stream/Node;
    .locals 0
    .param p0, "_this"    # Lj$/util/stream/Node$OfLong;

    .line 394
    invoke-interface/range {p0 .. p5}, Lj$/util/stream/Node$OfLong;->truncate(JJLjava/util/function/IntFunction;)Lj$/util/stream/Node$OfLong;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$truncate$0(J)V
    .locals 0
    .param p0, "e"    # J

    .line 443
    return-void
.end method
