.class public final synthetic Lj$/util/stream/Node$OfInt$-CC;
.super Ljava/lang/Object;
.source "Node.java"


# direct methods
.method public static $default$copyInto(Lj$/util/stream/Node$OfInt;[Ljava/lang/Integer;I)V
    .locals 4
    .param p0, "_this"    # Lj$/util/stream/Node$OfInt;
    .param p1, "boxed"    # [Ljava/lang/Integer;
    .param p2, "offset"    # I

    .line 349
    sget-boolean v0, Lj$/util/stream/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "{0} calling Node.OfInt.copyInto(Integer[], int)"

    invoke-static {v0, v1}, Lj$/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 352
    :cond_0
    invoke-interface {p0}, Lj$/util/stream/Node$OfInt;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 353
    .local v0, "array":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 354
    add-int v2, p2, v1

    aget v3, v0, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p1, v2

    .line 353
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 356
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public static bridge synthetic $default$copyInto(Lj$/util/stream/Node$OfInt;[Ljava/lang/Object;I)V
    .locals 0
    .param p0, "_this"    # Lj$/util/stream/Node$OfInt;

    .line 317
    check-cast p1, [Ljava/lang/Integer;

    invoke-interface {p0, p1, p2}, Lj$/util/stream/Node$OfInt;->copyInto([Ljava/lang/Integer;I)V

    return-void
.end method

.method public static $default$forEach(Lj$/util/stream/Node$OfInt;Ljava/util/function/Consumer;)V
    .locals 2
    .param p0, "_this"    # Lj$/util/stream/Node$OfInt;

    .line 329
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Integer;>;"
    instance-of v0, p1, Ljava/util/function/IntConsumer;

    if-eqz v0, :cond_0

    .line 330
    move-object v0, p1

    check-cast v0, Ljava/util/function/IntConsumer;

    invoke-interface {p0, v0}, Lj$/util/stream/Node$OfInt;->forEach(Ljava/lang/Object;)V

    goto :goto_0

    .line 333
    :cond_0
    sget-boolean v0, Lj$/util/stream/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_1

    .line 334
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "{0} calling Node.OfInt.forEachRemaining(Consumer)"

    invoke-static {v0, v1}, Lj$/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 335
    :cond_1
    invoke-interface {p0}, Lj$/util/stream/Node$OfInt;->spliterator()Lj$/util/Spliterator$OfPrimitive;

    move-result-object v0

    check-cast v0, Lj$/util/Spliterator$OfInt;

    invoke-interface {v0, p1}, Lj$/util/Spliterator$OfInt;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 337
    :goto_0
    return-void
.end method

.method public static $default$getShape(Lj$/util/stream/Node$OfInt;)Lj$/util/stream/StreamShape;
    .locals 1
    .param p0, "_this"    # Lj$/util/stream/Node$OfInt;

    .line 387
    sget-object v0, Lj$/util/stream/StreamShape;->INT_VALUE:Lj$/util/stream/StreamShape;

    return-object v0
.end method

.method public static bridge synthetic $default$newArray(Lj$/util/stream/Node$OfInt;I)Ljava/lang/Object;
    .locals 0
    .param p0, "_this"    # Lj$/util/stream/Node$OfInt;

    .line 317
    invoke-interface {p0, p1}, Lj$/util/stream/Node$OfInt;->newArray(I)[I

    move-result-object p1

    return-object p1
.end method

.method public static $default$newArray(Lj$/util/stream/Node$OfInt;I)[I
    .locals 1
    .param p0, "_this"    # Lj$/util/stream/Node$OfInt;
    .param p1, "count"    # I

    .line 378
    new-array v0, p1, [I

    return-object v0
.end method

.method public static $default$truncate(Lj$/util/stream/Node$OfInt;JJLjava/util/function/IntFunction;)Lj$/util/stream/Node$OfInt;
    .locals 8
    .param p0, "_this"    # Lj$/util/stream/Node$OfInt;
    .param p1, "from"    # J
    .param p3, "to"    # J

    .line 360
    .local p5, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[Ljava/lang/Integer;>;"
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    invoke-interface {p0}, Lj$/util/stream/Node$OfInt;->count()J

    move-result-wide v0

    cmp-long v2, p3, v0

    if-nez v2, :cond_0

    .line 361
    return-object p0

    .line 362
    :cond_0
    sub-long v0, p3, p1

    .line 363
    .local v0, "size":J
    invoke-interface {p0}, Lj$/util/stream/Node$OfInt;->spliterator()Lj$/util/Spliterator$OfPrimitive;

    move-result-object v2

    check-cast v2, Lj$/util/Spliterator$OfInt;

    .line 364
    .local v2, "spliterator":Lj$/util/Spliterator$OfInt;
    invoke-static {v0, v1}, Lj$/util/stream/Nodes;->intBuilder(J)Lj$/util/stream/Node$Builder$OfInt;

    move-result-object v3

    .line 365
    .local v3, "nodeBuilder":Lj$/util/stream/Node$Builder$OfInt;
    invoke-interface {v3, v0, v1}, Lj$/util/stream/Node$Builder$OfInt;->begin(J)V

    .line 366
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    int-to-long v5, v4

    cmp-long v7, v5, p1

    if-gez v7, :cond_1

    new-instance v5, Lj$/util/stream/Node$OfInt$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lj$/util/stream/Node$OfInt$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v5}, Lj$/util/Spliterator$OfInt;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 367
    .end local v4    # "i":I
    :cond_1
    invoke-interface {p0}, Lj$/util/stream/Node$OfInt;->count()J

    move-result-wide v4

    cmp-long v6, p3, v4

    if-nez v6, :cond_2

    .line 368
    invoke-interface {v2, v3}, Lj$/util/Spliterator$OfInt;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    goto :goto_2

    .line 370
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    int-to-long v5, v4

    cmp-long v7, v5, v0

    if-gez v7, :cond_3

    invoke-interface {v2, v3}, Lj$/util/Spliterator$OfInt;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result v5

    if-eqz v5, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 372
    .end local v4    # "i":I
    :cond_3
    :goto_2
    invoke-interface {v3}, Lj$/util/stream/Node$Builder$OfInt;->end()V

    .line 373
    invoke-interface {v3}, Lj$/util/stream/Node$Builder$OfInt;->build()Lj$/util/stream/Node$OfInt;

    move-result-object v4

    return-object v4
.end method

.method public static bridge synthetic $default$truncate(Lj$/util/stream/Node$OfInt;JJLjava/util/function/IntFunction;)Lj$/util/stream/Node$OfPrimitive;
    .locals 0
    .param p0, "_this"    # Lj$/util/stream/Node$OfInt;

    .line 317
    invoke-interface/range {p0 .. p5}, Lj$/util/stream/Node$OfInt;->truncate(JJLjava/util/function/IntFunction;)Lj$/util/stream/Node$OfInt;

    move-result-object p1

    return-object p1
.end method

.method public static bridge synthetic $default$truncate(Lj$/util/stream/Node$OfInt;JJLjava/util/function/IntFunction;)Lj$/util/stream/Node;
    .locals 0
    .param p0, "_this"    # Lj$/util/stream/Node$OfInt;

    .line 317
    invoke-interface/range {p0 .. p5}, Lj$/util/stream/Node$OfInt;->truncate(JJLjava/util/function/IntFunction;)Lj$/util/stream/Node$OfInt;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$truncate$0(I)V
    .locals 0
    .param p0, "e"    # I

    .line 366
    return-void
.end method
