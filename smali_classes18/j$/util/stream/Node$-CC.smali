.class public final synthetic Lj$/util/stream/Node$-CC;
.super Ljava/lang/Object;
.source "Node.java"


# direct methods
.method public static $default$getChild(Lj$/util/stream/Node;I)Lj$/util/stream/Node;
    .registers 3
    .param p0, "_this"    # Lj$/util/stream/Node;
    .param p1, "i"    # I

    .line 104
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public static $default$getChildCount(Lj$/util/stream/Node;)I
    .registers 2
    .param p0, "_this"    # Lj$/util/stream/Node;

    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public static $default$getShape(Lj$/util/stream/Node;)Lj$/util/stream/StreamShape;
    .registers 2
    .param p0, "_this"    # Lj$/util/stream/Node;

    .line 178
    sget-object v0, Lj$/util/stream/StreamShape;->REFERENCE:Lj$/util/stream/StreamShape;

    return-object v0
.end method

.method public static $default$truncate(Lj$/util/stream/Node;JJLjava/util/function/IntFunction;)Lj$/util/stream/Node;
    .registers 14
    .param p0, "_this"    # Lj$/util/stream/Node;
    .param p1, "from"    # J
    .param p3, "to"    # J

    .line 121
    .local p5, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_f

    invoke-interface {p0}, Lj$/util/stream/Node;->count()J

    move-result-wide v0

    cmp-long v2, p3, v0

    if-nez v2, :cond_f

    .line 122
    return-object p0

    .line 123
    :cond_f
    invoke-interface {p0}, Lj$/util/stream/Node;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    .line 124
    .local v0, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    sub-long v1, p3, p1

    .line 125
    .local v1, "size":J
    invoke-static {v1, v2, p5}, Lj$/util/stream/Nodes;->builder(JLjava/util/function/IntFunction;)Lj$/util/stream/Node$Builder;

    move-result-object v3

    .line 126
    .local v3, "nodeBuilder":Lj$/util/stream/Node$Builder;, "Ljava/util/stream/Node$Builder<TT;>;"
    invoke-interface {v3, v1, v2}, Lj$/util/stream/Node$Builder;->begin(J)V

    .line 127
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1d
    int-to-long v5, v4

    cmp-long v7, v5, p1

    if-gez v7, :cond_30

    new-instance v5, Lj$/util/stream/Node$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lj$/util/stream/Node$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v5}, Lj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v5

    if-eqz v5, :cond_30

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 128
    .end local v4    # "i":I
    :cond_30
    invoke-interface {p0}, Lj$/util/stream/Node;->count()J

    move-result-wide v4

    cmp-long v6, p3, v4

    if-nez v6, :cond_3c

    .line 129
    invoke-interface {v0, v3}, Lj$/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    goto :goto_4b

    .line 131
    :cond_3c
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3d
    int-to-long v5, v4

    cmp-long v7, v5, v1

    if-gez v7, :cond_4b

    invoke-interface {v0, v3}, Lj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v5

    if-eqz v5, :cond_4b

    add-int/lit8 v4, v4, 0x1

    goto :goto_3d

    .line 133
    .end local v4    # "i":I
    :cond_4b
    :goto_4b
    invoke-interface {v3}, Lj$/util/stream/Node$Builder;->end()V

    .line 134
    invoke-interface {v3}, Lj$/util/stream/Node$Builder;->build()Lj$/util/stream/Node;

    move-result-object v4

    return-object v4
.end method

.method public static synthetic lambda$truncate$0(Ljava/lang/Object;)V
    .registers 1
    .param p0, "e"    # Ljava/lang/Object;

    .line 127
    return-void
.end method
