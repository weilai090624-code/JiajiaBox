.class public final synthetic Lj$/util/Spliterator$-CC;
.super Ljava/lang/Object;
.source "Spliterator.java"


# direct methods
.method public static $default$forEachRemaining(Lj$/util/Spliterator;Ljava/util/function/Consumer;)V
    .locals 1
    .param p0, "_this"    # Lj$/util/Spliterator;

    .line 326
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    :cond_0
    invoke-interface {p0, p1}, Lj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 327
    return-void
.end method

.method public static $default$getComparator(Lj$/util/Spliterator;)Ljava/util/Comparator;
    .locals 1
    .param p0, "_this"    # Lj$/util/Spliterator;

    .line 465
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public static $default$getExactSizeIfKnown(Lj$/util/Spliterator;)J
    .locals 2
    .param p0, "_this"    # Lj$/util/Spliterator;

    .line 408
    invoke-interface {p0}, Lj$/util/Spliterator;->characteristics()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lj$/util/Spliterator;->estimateSize()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public static $default$hasCharacteristics(Lj$/util/Spliterator;I)Z
    .locals 1
    .param p0, "_this"    # Lj$/util/Spliterator;
    .param p1, "characteristics"    # I

    .line 447
    invoke-interface {p0}, Lj$/util/Spliterator;->characteristics()I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
