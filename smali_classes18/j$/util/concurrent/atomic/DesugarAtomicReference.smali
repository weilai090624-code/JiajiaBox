.class public Lj$/util/concurrent/atomic/DesugarAtomicReference;
.super Ljava/lang/Object;
.source "DesugarAtomicReference.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static accumulateAndGet(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "TV;>;TV;",
            "Ljava/util/function/BinaryOperator<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 136
    .local p0, "atomic":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TV;>;"
    .local p1, "x":Ljava/lang/Object;, "TV;"
    .local p2, "accumulatorFunction":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TV;>;"
    nop

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 137
    .local v0, "prev":Ljava/lang/Object;, "TV;"
    invoke-interface {p2, v0, p1}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 138
    .local v1, "next":Ljava/lang/Object;, "TV;"
    invoke-static {p0, v0, v1}, Lj$/util/concurrent/ConcurrentHashMap$SearchEntriesTask$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    return-object v1
.end method

.method public static getAndAccumulate(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "TV;>;TV;",
            "Ljava/util/function/BinaryOperator<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 111
    .local p0, "atomic":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TV;>;"
    .local p1, "x":Ljava/lang/Object;, "TV;"
    .local p2, "accumulatorFunction":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TV;>;"
    nop

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 112
    .local v0, "prev":Ljava/lang/Object;, "TV;"
    invoke-interface {p2, v0, p1}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 113
    .local v1, "next":Ljava/lang/Object;, "TV;"
    invoke-static {p0, v0, v1}, Lj$/util/concurrent/ConcurrentHashMap$SearchEntriesTask$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    return-object v0
.end method

.method public static getAndUpdate(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/function/UnaryOperator;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "TV;>;",
            "Ljava/util/function/UnaryOperator<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 66
    .local p0, "atomic":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TV;>;"
    .local p1, "updateFunction":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<TV;>;"
    nop

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 67
    .local v0, "prev":Ljava/lang/Object;, "TV;"
    invoke-interface {p1, v0}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 68
    .local v1, "next":Ljava/lang/Object;, "TV;"
    invoke-static {p0, v0, v1}, Lj$/util/concurrent/ConcurrentHashMap$SearchEntriesTask$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    return-object v0
.end method

.method public static updateAndGet(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/function/UnaryOperator;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "TV;>;",
            "Ljava/util/function/UnaryOperator<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 86
    .local p0, "atomic":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TV;>;"
    .local p1, "updateFunction":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<TV;>;"
    nop

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 87
    .local v0, "prev":Ljava/lang/Object;, "TV;"
    invoke-interface {p1, v0}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 88
    .local v1, "next":Ljava/lang/Object;, "TV;"
    invoke-static {p0, v0, v1}, Lj$/util/concurrent/ConcurrentHashMap$SearchEntriesTask$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    return-object v1
.end method
