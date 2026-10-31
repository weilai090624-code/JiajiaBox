.class public final synthetic Lj$/util/PrimitiveIterator$OfLong$-CC;
.super Ljava/lang/Object;
.source "PrimitiveIterator.java"


# direct methods
.method public static bridge synthetic $default$forEachRemaining(Lj$/util/PrimitiveIterator$OfLong;Ljava/lang/Object;)V
    .registers 2
    .param p0, "_this"    # Lj$/util/PrimitiveIterator$OfLong;

    .line 160
    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-interface {p0, p1}, Lj$/util/PrimitiveIterator$OfLong;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method public static $default$forEachRemaining(Lj$/util/PrimitiveIterator$OfLong;Ljava/util/function/Consumer;)V
    .registers 4
    .param p0, "_this"    # Lj$/util/PrimitiveIterator$OfLong;

    .line 216
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Long;>;"
    instance-of v0, p1, Ljava/util/function/LongConsumer;

    if-eqz v0, :cond_b

    .line 217
    move-object v0, p1

    check-cast v0, Ljava/util/function/LongConsumer;

    invoke-interface {p0, v0}, Lj$/util/PrimitiveIterator$OfLong;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    goto :goto_26

    .line 221
    :cond_b
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-boolean v0, Lj$/util/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_1b

    .line 223
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "{0} calling PrimitiveIterator.OfLong.forEachRemainingLong(action::accept)"

    invoke-static {v0, v1}, Lj$/util/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 224
    :cond_1b
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/PrimitiveIterator$OfLong$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lj$/util/PrimitiveIterator$OfLong$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p0, v0}, Lj$/util/PrimitiveIterator$OfLong;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    .line 226
    :goto_26
    return-void
.end method

.method public static $default$forEachRemaining(Lj$/util/PrimitiveIterator$OfLong;Ljava/util/function/LongConsumer;)V
    .registers 4
    .param p0, "_this"    # Lj$/util/PrimitiveIterator$OfLong;
    .param p1, "action"    # Ljava/util/function/LongConsumer;

    .line 187
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    :goto_3
    invoke-interface {p0}, Lj$/util/PrimitiveIterator$OfLong;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 189
    invoke-interface {p0}, Lj$/util/PrimitiveIterator$OfLong;->nextLong()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava/util/function/LongConsumer;->accept(J)V

    goto :goto_3

    .line 190
    :cond_11
    return-void
.end method

.method public static $default$next(Lj$/util/PrimitiveIterator$OfLong;)Ljava/lang/Long;
    .registers 3
    .param p0, "_this"    # Lj$/util/PrimitiveIterator$OfLong;

    .line 200
    sget-boolean v0, Lj$/util/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_d

    .line 201
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "{0} calling PrimitiveIterator.OfLong.nextLong()"

    invoke-static {v0, v1}, Lj$/util/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 202
    :cond_d
    invoke-interface {p0}, Lj$/util/PrimitiveIterator$OfLong;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic $default$next(Lj$/util/PrimitiveIterator$OfLong;)Ljava/lang/Object;
    .registers 2
    .param p0, "_this"    # Lj$/util/PrimitiveIterator$OfLong;

    .line 160
    invoke-interface {p0}, Lj$/util/PrimitiveIterator$OfLong;->next()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
