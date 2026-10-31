.class public final synthetic Lj$/util/concurrent/ConcurrentMap$-EL;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static synthetic compute(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 4

    instance-of v0, p0, Lj$/util/concurrent/ConcurrentMap;

    if-eqz v0, :cond_b

    check-cast p0, Lj$/util/concurrent/ConcurrentMap;

    invoke-interface {p0, p1, p2}, Lj$/util/concurrent/ConcurrentMap;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-static {p0, p1, p2}, Lj$/util/concurrent/ConcurrentMap$-CC;->$default$compute(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic computeIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .registers 4

    instance-of v0, p0, Lj$/util/concurrent/ConcurrentMap;

    if-eqz v0, :cond_b

    check-cast p0, Lj$/util/concurrent/ConcurrentMap;

    invoke-interface {p0, p1, p2}, Lj$/util/concurrent/ConcurrentMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-static {p0, p1, p2}, Lj$/util/concurrent/ConcurrentMap$-CC;->$default$computeIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic computeIfPresent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 4

    instance-of v0, p0, Lj$/util/concurrent/ConcurrentMap;

    if-eqz v0, :cond_b

    check-cast p0, Lj$/util/concurrent/ConcurrentMap;

    invoke-interface {p0, p1, p2}, Lj$/util/concurrent/ConcurrentMap;->computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-static {p0, p1, p2}, Lj$/util/concurrent/ConcurrentMap$-CC;->$default$computeIfPresent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic forEach(Ljava/util/concurrent/ConcurrentMap;Ljava/util/function/BiConsumer;)V
    .registers 3

    instance-of v0, p0, Lj$/util/concurrent/ConcurrentMap;

    if-eqz v0, :cond_a

    check-cast p0, Lj$/util/concurrent/ConcurrentMap;

    invoke-interface {p0, p1}, Lj$/util/concurrent/ConcurrentMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void

    :cond_a
    invoke-static {p0, p1}, Lj$/util/concurrent/ConcurrentMap$-CC;->$default$forEach(Ljava/util/concurrent/ConcurrentMap;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static synthetic getOrDefault(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    instance-of v0, p0, Lj$/util/concurrent/ConcurrentMap;

    if-eqz v0, :cond_b

    check-cast p0, Lj$/util/concurrent/ConcurrentMap;

    invoke-interface {p0, p1, p2}, Lj$/util/concurrent/ConcurrentMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-static {p0, p1, p2}, Lj$/util/concurrent/ConcurrentMap$-CC;->$default$getOrDefault(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic merge(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 5

    instance-of v0, p0, Lj$/util/concurrent/ConcurrentMap;

    if-eqz v0, :cond_b

    check-cast p0, Lj$/util/concurrent/ConcurrentMap;

    invoke-interface {p0, p1, p2, p3}, Lj$/util/concurrent/ConcurrentMap;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-static {p0, p1, p2, p3}, Lj$/util/concurrent/ConcurrentMap$-CC;->$default$merge(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic replaceAll(Ljava/util/concurrent/ConcurrentMap;Ljava/util/function/BiFunction;)V
    .registers 3

    instance-of v0, p0, Lj$/util/concurrent/ConcurrentMap;

    if-eqz v0, :cond_a

    check-cast p0, Lj$/util/concurrent/ConcurrentMap;

    invoke-interface {p0, p1}, Lj$/util/concurrent/ConcurrentMap;->replaceAll(Ljava/util/function/BiFunction;)V

    return-void

    :cond_a
    invoke-static {p0, p1}, Lj$/util/concurrent/ConcurrentMap$-CC;->$default$replaceAll(Ljava/util/concurrent/ConcurrentMap;Ljava/util/function/BiFunction;)V

    return-void
.end method
