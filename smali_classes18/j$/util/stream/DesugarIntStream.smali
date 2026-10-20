.class public final Lj$/util/stream/DesugarIntStream;
.super Ljava/lang/Object;
.source "DesugarIntStream.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static iterate(ILjava/util/function/IntPredicate;Ljava/util/function/IntUnaryOperator;)Lj$/util/stream/IntStream;
    .locals 8
    .param p0, "seed"    # I
    .param p1, "hasNext"    # Ljava/util/function/IntPredicate;
    .param p2, "next"    # Ljava/util/function/IntUnaryOperator;

    .line 101
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    new-instance v7, Lj$/util/stream/DesugarIntStream$1;

    const-wide v1, 0x7fffffffffffffffL

    const/16 v3, 0x510

    move-object v0, v7

    move-object v4, p2

    move v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lj$/util/stream/DesugarIntStream$1;-><init>(JILjava/util/function/IntUnaryOperator;ILjava/util/function/IntPredicate;)V

    .line 141
    .local v0, "spliterator":Lj$/util/Spliterator$OfInt;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->intStream(Lj$/util/Spliterator$OfInt;Z)Lj$/util/stream/IntStream;

    move-result-object v1

    return-object v1
.end method
