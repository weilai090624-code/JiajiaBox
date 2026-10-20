.class public final synthetic Lj$/util/Spliterator$OfPrimitive$-CC;
.super Ljava/lang/Object;
.source "Spliterator.java"


# direct methods
.method public static $default$forEachRemaining(Lj$/util/Spliterator$OfPrimitive;Ljava/lang/Object;)V
    .locals 1
    .param p0, "_this"    # Lj$/util/Spliterator$OfPrimitive;

    .line 642
    .local p1, "action":Ljava/lang/Object;, "TT_CONS;"
    :cond_0
    invoke-interface {p0, p1}, Lj$/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 643
    return-void
.end method

.method public static bridge synthetic $default$trySplit(Lj$/util/Spliterator$OfPrimitive;)Lj$/util/Spliterator;
    .locals 1
    .param p0, "_this"    # Lj$/util/Spliterator$OfPrimitive;

    .line 605
    invoke-interface {p0}, Lj$/util/Spliterator$OfPrimitive;->trySplit()Lj$/util/Spliterator$OfPrimitive;

    move-result-object v0

    return-object v0
.end method
