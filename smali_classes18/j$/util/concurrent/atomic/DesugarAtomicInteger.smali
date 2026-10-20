.class public Lj$/util/concurrent/atomic/DesugarAtomicInteger;
.super Ljava/lang/Object;
.source "DesugarAtomicInteger.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static accumulateAndGet(Ljava/util/concurrent/atomic/AtomicInteger;ILjava/util/function/IntBinaryOperator;)I
    .locals 3
    .param p0, "atomic"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p1, "x"    # I
    .param p2, "accumulatorFunction"    # Ljava/util/function/IntBinaryOperator;

    .line 141
    nop

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 142
    .local v0, "prev":I
    invoke-interface {p2, v0, p1}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v1

    .line 143
    .local v1, "next":I
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    return v1
.end method

.method public static getAndAccumulate(Ljava/util/concurrent/atomic/AtomicInteger;ILjava/util/function/IntBinaryOperator;)I
    .locals 3
    .param p0, "atomic"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p1, "x"    # I
    .param p2, "accumulatorFunction"    # Ljava/util/function/IntBinaryOperator;

    .line 116
    nop

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 117
    .local v0, "prev":I
    invoke-interface {p2, v0, p1}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v1

    .line 118
    .local v1, "next":I
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    return v0
.end method

.method public static getAndUpdate(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/function/IntUnaryOperator;)I
    .locals 3
    .param p0, "atomic"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p1, "updateFunction"    # Ljava/util/function/IntUnaryOperator;

    .line 71
    nop

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 72
    .local v0, "prev":I
    invoke-interface {p1, v0}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v1

    .line 73
    .local v1, "next":I
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    return v0
.end method

.method public static updateAndGet(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/function/IntUnaryOperator;)I
    .locals 3
    .param p0, "atomic"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p1, "updateFunction"    # Ljava/util/function/IntUnaryOperator;

    .line 91
    nop

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 92
    .local v0, "prev":I
    invoke-interface {p1, v0}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v1

    .line 93
    .local v1, "next":I
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    return v1
.end method
