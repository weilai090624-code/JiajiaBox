.class public final synthetic Lj$/util/Collection$-EL;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static synthetic forEach(Ljava/util/Collection;Ljava/util/function/Consumer;)V
    .registers 3

    instance-of v0, p0, Lj$/util/Collection;

    if-eqz v0, :cond_a

    check-cast p0, Lj$/util/Collection;

    invoke-interface {p0, p1}, Lj$/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    return-void

    :cond_a
    invoke-static {p0, p1}, Lj$/util/Collection$-CC;->$default$forEach(Ljava/util/Collection;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic parallelStream(Ljava/util/Collection;)Lj$/util/stream/Stream;
    .registers 2

    instance-of v0, p0, Lj$/util/Collection;

    if-eqz v0, :cond_b

    check-cast p0, Lj$/util/Collection;

    invoke-interface {p0}, Lj$/util/Collection;->parallelStream()Lj$/util/stream/Stream;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-static {p0}, Lj$/util/Collection$-CC;->$default$parallelStream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z
    .registers 3

    instance-of v0, p0, Lj$/util/Collection;

    if-eqz v0, :cond_b

    check-cast p0, Lj$/util/Collection;

    invoke-interface {p0, p1}, Lj$/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0

    :cond_b
    invoke-static {p0, p1}, Lj$/util/Collection$-CC;->$default$removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public static synthetic spliterator(Ljava/util/Collection;)Lj$/util/Spliterator;
    .registers 2

    instance-of v0, p0, Lj$/util/Collection;

    if-eqz v0, :cond_b

    check-cast p0, Lj$/util/Collection;

    invoke-interface {p0}, Lj$/util/Collection;->spliterator()Lj$/util/Spliterator;

    move-result-object p0

    return-object p0

    :cond_b
    instance-of v0, p0, Ljava/util/LinkedHashSet;

    if-eqz v0, :cond_16

    check-cast p0, Ljava/util/LinkedHashSet;

    invoke-static {p0}, Lj$/util/DesugarLinkedHashSet;->spliterator(Ljava/util/LinkedHashSet;)Lj$/util/Spliterator;

    move-result-object p0

    return-object p0

    :cond_16
    instance-of v0, p0, Ljava/util/SortedSet;

    if-eqz v0, :cond_21

    check-cast p0, Ljava/util/SortedSet;

    invoke-static {p0}, Lj$/util/SortedSet$-CC;->$default$spliterator(Ljava/util/SortedSet;)Lj$/util/Spliterator;

    move-result-object p0

    return-object p0

    :cond_21
    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_2c

    check-cast p0, Ljava/util/Set;

    invoke-static {p0}, Lj$/util/Set$-CC;->$default$spliterator(Ljava/util/Set;)Lj$/util/Spliterator;

    move-result-object p0

    return-object p0

    :cond_2c
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_37

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lj$/util/List$-CC;->$default$spliterator(Ljava/util/List;)Lj$/util/Spliterator;

    move-result-object p0

    return-object p0

    :cond_37
    invoke-static {p0}, Lj$/util/Collection$-CC;->$default$spliterator(Ljava/util/Collection;)Lj$/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic stream(Ljava/util/Collection;)Lj$/util/stream/Stream;
    .registers 2

    instance-of v0, p0, Lj$/util/Collection;

    if-eqz v0, :cond_b

    check-cast p0, Lj$/util/Collection;

    invoke-interface {p0}, Lj$/util/Collection;->stream()Lj$/util/stream/Stream;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-static {p0}, Lj$/util/Collection$-CC;->$default$stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic toArray(Ljava/util/Collection;Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .registers 3

    instance-of v0, p0, Lj$/util/Collection;

    if-eqz v0, :cond_b

    check-cast p0, Lj$/util/Collection;

    invoke-interface {p0, p1}, Lj$/util/Collection;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-static {p0, p1}, Lj$/util/Collection$-CC;->$default$toArray(Ljava/util/Collection;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
