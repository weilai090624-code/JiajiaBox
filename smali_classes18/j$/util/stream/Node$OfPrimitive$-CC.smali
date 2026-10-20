.class public final synthetic Lj$/util/stream/Node$OfPrimitive$-CC;
.super Ljava/lang/Object;
.source "Node.java"


# direct methods
.method public static $default$asArray(Lj$/util/stream/Node$OfPrimitive;Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 5
    .param p0, "_this"    # Lj$/util/stream/Node$OfPrimitive;

    .line 268
    .local p1, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    sget-boolean v0, Lj$/util/stream/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "{0} calling Node.OfPrimitive.asArray"

    invoke-static {v0, v1}, Lj$/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 271
    :cond_0
    invoke-interface {p0}, Lj$/util/stream/Node$OfPrimitive;->count()J

    move-result-wide v0

    .line 272
    .local v0, "size":J
    const-wide/32 v2, 0x7ffffff7

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 274
    invoke-interface {p0}, Lj$/util/stream/Node$OfPrimitive;->count()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-interface {p1, v3}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 275
    .local v2, "boxed":[Ljava/lang/Object;, "[TT;"
    const/4 v3, 0x0

    invoke-interface {p0, v2, v3}, Lj$/util/stream/Node$OfPrimitive;->copyInto([Ljava/lang/Object;I)V

    .line 276
    return-object v2

    .line 273
    .end local v2    # "boxed":[Ljava/lang/Object;, "[TT;"
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Stream size exceeds max array size"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static $default$getChild(Lj$/util/stream/Node$OfPrimitive;I)Lj$/util/stream/Node$OfPrimitive;
    .locals 1
    .param p0, "_this"    # Lj$/util/stream/Node$OfPrimitive;
    .param p1, "i"    # I

    .line 253
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public static bridge synthetic $default$getChild(Lj$/util/stream/Node$OfPrimitive;I)Lj$/util/stream/Node;
    .locals 0
    .param p0, "_this"    # Lj$/util/stream/Node$OfPrimitive;

    .line 227
    invoke-interface {p0, p1}, Lj$/util/stream/Node$OfPrimitive;->getChild(I)Lj$/util/stream/Node$OfPrimitive;

    move-result-object p1

    return-object p1
.end method

.method public static bridge synthetic $default$spliterator(Lj$/util/stream/Node$OfPrimitive;)Lj$/util/Spliterator;
    .locals 1
    .param p0, "_this"    # Lj$/util/stream/Node$OfPrimitive;

    .line 227
    invoke-interface {p0}, Lj$/util/stream/Node$OfPrimitive;->spliterator()Lj$/util/Spliterator$OfPrimitive;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic $default$truncate(Lj$/util/stream/Node$OfPrimitive;JJLjava/util/function/IntFunction;)Lj$/util/stream/Node;
    .locals 0
    .param p0, "_this"    # Lj$/util/stream/Node$OfPrimitive;

    .line 227
    invoke-interface/range {p0 .. p5}, Lj$/util/stream/Node$OfPrimitive;->truncate(JJLjava/util/function/IntFunction;)Lj$/util/stream/Node$OfPrimitive;

    move-result-object p1

    return-object p1
.end method
