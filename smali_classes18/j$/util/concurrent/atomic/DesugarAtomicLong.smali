.class public Lj$/util/concurrent/atomic/DesugarAtomicLong;
.super Ljava/lang/Object;
.source "DesugarAtomicLong.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static accumulateAndGet(Ljava/util/concurrent/atomic/AtomicLong;JLjava/util/function/LongBinaryOperator;)J
    .locals 5
    .param p0, "atomic"    # Ljava/util/concurrent/atomic/AtomicLong;
    .param p1, "x"    # J
    .param p3, "accumulatorFunction"    # Ljava/util/function/LongBinaryOperator;

    .line 141
    nop

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 142
    .local v0, "prev":J
    invoke-interface {p3, v0, v1, p1, p2}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v2

    .line 143
    .local v2, "next":J
    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 144
    return-wide v2
.end method

.method public static getAndAccumulate(Ljava/util/concurrent/atomic/AtomicLong;JLjava/util/function/LongBinaryOperator;)J
    .locals 5
    .param p0, "atomic"    # Ljava/util/concurrent/atomic/AtomicLong;
    .param p1, "x"    # J
    .param p3, "accumulatorFunction"    # Ljava/util/function/LongBinaryOperator;

    .line 116
    nop

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 117
    .local v0, "prev":J
    invoke-interface {p3, v0, v1, p1, p2}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v2

    .line 118
    .local v2, "next":J
    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 119
    return-wide v0
.end method

.method public static getAndUpdate(Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/function/LongUnaryOperator;)J
    .locals 5
    .param p0, "atomic"    # Ljava/util/concurrent/atomic/AtomicLong;
    .param p1, "updateFunction"    # Ljava/util/function/LongUnaryOperator;

    .line 71
    nop

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 72
    .local v0, "prev":J
    invoke-interface {p1, v0, v1}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide v2

    .line 73
    .local v2, "next":J
    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 74
    return-wide v0
.end method

.method public static updateAndGet(Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/function/LongUnaryOperator;)J
    .locals 5
    .param p0, "atomic"    # Ljava/util/concurrent/atomic/AtomicLong;
    .param p1, "updateFunction"    # Ljava/util/function/LongUnaryOperator;

    .line 91
    nop

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 92
    .local v0, "prev":J
    invoke-interface {p1, v0, v1}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide v2

    .line 93
    .local v2, "next":J
    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 94
    return-wide v2
.end method
