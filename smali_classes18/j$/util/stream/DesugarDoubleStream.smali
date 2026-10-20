.class public final Lj$/util/stream/DesugarDoubleStream;
.super Ljava/lang/Object;
.source "DesugarDoubleStream.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static iterate(DLjava/util/function/DoublePredicate;Ljava/util/function/DoubleUnaryOperator;)Lj$/util/stream/DoubleStream;
    .locals 9
    .param p0, "seed"    # D
    .param p2, "hasNext"    # Ljava/util/function/DoublePredicate;
    .param p3, "next"    # Ljava/util/function/DoubleUnaryOperator;

    .line 101
    invoke-static {p3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    new-instance v8, Lj$/util/stream/DesugarDoubleStream$1;

    const-wide v1, 0x7fffffffffffffffL

    const/16 v3, 0x510

    move-object v0, v8

    move-object v4, p3

    move-wide v5, p0

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lj$/util/stream/DesugarDoubleStream$1;-><init>(JILjava/util/function/DoubleUnaryOperator;DLjava/util/function/DoublePredicate;)V

    .line 141
    .local v0, "spliterator":Lj$/util/Spliterator$OfDouble;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->doubleStream(Lj$/util/Spliterator$OfDouble;Z)Lj$/util/stream/DoubleStream;

    move-result-object v1

    return-object v1
.end method
