.class public final synthetic Lj$/util/Collection$-CC;
.super Ljava/lang/Object;
.source "Collection.java"


# direct methods
.method public static $default$forEach(Ljava/util/Collection;Ljava/util/function/Consumer;)V
    .locals 2
    .param p0, "_this"    # Ljava/util/Collection;

    .line 667
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 669
    .local v1, "t":Ljava/lang/Object;, "TE;"
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 670
    .end local v1    # "t":Ljava/lang/Object;, "TE;"
    goto :goto_0

    .line 671
    :cond_0
    return-void
.end method

.method public static $default$parallelStream(Ljava/util/Collection;)Lj$/util/stream/Stream;
    .locals 2
    .param p0, "_this"    # Ljava/util/Collection;

    .line 765
    invoke-static {p0}, Lj$/util/Collection$-EL;->spliterator(Ljava/util/Collection;)Lj$/util/Spliterator;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static $default$removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z
    .locals 3
    .param p0, "_this"    # Ljava/util/Collection;

    .line 542
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    sget-object v0, Lj$/util/DesugarCollections;->SYNCHRONIZED_COLLECTION:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    invoke-static {p0, p1}, Lj$/util/DesugarCollections;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0

    .line 545
    :cond_0
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    const/4 v0, 0x0

    .line 547
    .local v0, "removed":Z
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 548
    .local v1, "each":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 549
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 550
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 551
    const/4 v0, 0x1

    goto :goto_0

    .line 554
    :cond_2
    return v0
.end method

.method public static $default$spliterator(Ljava/util/Collection;)Lj$/util/Spliterator;
    .locals 1
    .param p0, "_this"    # Ljava/util/Collection;

    .line 725
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lj$/util/Spliterators;->spliterator(Ljava/util/Collection;I)Lj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public static $default$stream(Ljava/util/Collection;)Lj$/util/stream/Stream;
    .locals 2
    .param p0, "_this"    # Ljava/util/Collection;

    .line 744
    invoke-static {p0}, Lj$/util/Collection$-EL;->spliterator(Ljava/util/Collection;)Lj$/util/Spliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static $default$toArray(Ljava/util/Collection;Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 1
    .param p0, "_this"    # Ljava/util/Collection;

    .line 382
    .local p1, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
