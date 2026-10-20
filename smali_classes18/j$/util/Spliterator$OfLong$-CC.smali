.class public final synthetic Lj$/util/Spliterator$OfLong$-CC;
.super Ljava/lang/Object;
.source "Spliterator.java"


# direct methods
.method public static bridge synthetic $default$forEachRemaining(Lj$/util/Spliterator$OfLong;Ljava/lang/Object;)V
    .locals 0
    .param p0, "_this"    # Lj$/util/Spliterator$OfLong;

    .line 714
    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-interface {p0, p1}, Lj$/util/Spliterator$OfLong;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method public static $default$forEachRemaining(Lj$/util/Spliterator$OfLong;Ljava/util/function/Consumer;)V
    .locals 2
    .param p0, "_this"    # Lj$/util/Spliterator$OfLong;

    .line 762
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Long;>;"
    instance-of v0, p1, Ljava/util/function/LongConsumer;

    if-eqz v0, :cond_0

    .line 763
    move-object v0, p1

    check-cast v0, Ljava/util/function/LongConsumer;

    invoke-interface {p0, v0}, Lj$/util/Spliterator$OfLong;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    goto :goto_0

    .line 766
    :cond_0
    sget-boolean v0, Lj$/util/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_1

    .line 767
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "{0} calling Spliterator.OfLong.forEachRemaining((LongConsumer) action::accept)"

    invoke-static {v0, v1}, Lj$/util/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 769
    :cond_1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/PrimitiveIterator$OfLong$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lj$/util/PrimitiveIterator$OfLong$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p0, v0}, Lj$/util/Spliterator$OfLong;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    .line 771
    :goto_0
    return-void
.end method

.method public static $default$forEachRemaining(Lj$/util/Spliterator$OfLong;Ljava/util/function/LongConsumer;)V
    .locals 1
    .param p0, "_this"    # Lj$/util/Spliterator$OfLong;
    .param p1, "action"    # Ljava/util/function/LongConsumer;

    .line 724
    :cond_0
    invoke-interface {p0, p1}, Lj$/util/Spliterator$OfLong;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 725
    return-void
.end method

.method public static bridge synthetic $default$tryAdvance(Lj$/util/Spliterator$OfLong;Ljava/lang/Object;)Z
    .locals 0
    .param p0, "_this"    # Lj$/util/Spliterator$OfLong;

    .line 714
    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-interface {p0, p1}, Lj$/util/Spliterator$OfLong;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result p1

    return p1
.end method

.method public static $default$tryAdvance(Lj$/util/Spliterator$OfLong;Ljava/util/function/Consumer;)Z
    .locals 2
    .param p0, "_this"    # Lj$/util/Spliterator$OfLong;

    .line 739
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Long;>;"
    instance-of v0, p1, Ljava/util/function/LongConsumer;

    if-eqz v0, :cond_0

    .line 740
    move-object v0, p1

    check-cast v0, Ljava/util/function/LongConsumer;

    invoke-interface {p0, v0}, Lj$/util/Spliterator$OfLong;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result v0

    return v0

    .line 743
    :cond_0
    sget-boolean v0, Lj$/util/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_1

    .line 744
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "{0} calling Spliterator.OfLong.tryAdvance((LongConsumer) action::accept)"

    invoke-static {v0, v1}, Lj$/util/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 746
    :cond_1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/PrimitiveIterator$OfLong$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lj$/util/PrimitiveIterator$OfLong$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p0, v0}, Lj$/util/Spliterator$OfLong;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic $default$trySplit(Lj$/util/Spliterator$OfLong;)Lj$/util/Spliterator$OfPrimitive;
    .locals 1
    .param p0, "_this"    # Lj$/util/Spliterator$OfLong;

    .line 714
    invoke-interface {p0}, Lj$/util/Spliterator$OfLong;->trySplit()Lj$/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic $default$trySplit(Lj$/util/Spliterator$OfLong;)Lj$/util/Spliterator;
    .locals 1
    .param p0, "_this"    # Lj$/util/Spliterator$OfLong;

    .line 714
    invoke-interface {p0}, Lj$/util/Spliterator$OfLong;->trySplit()Lj$/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method
