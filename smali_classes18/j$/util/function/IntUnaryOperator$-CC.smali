.class public final synthetic Lj$/util/function/IntUnaryOperator$-CC;
.super Ljava/lang/Object;
.source "IntUnaryOperator.java"


# direct methods
.method public static $default$andThen(Ljava/util/function/IntUnaryOperator;Ljava/util/function/IntUnaryOperator;)Ljava/util/function/IntUnaryOperator;
    .locals 1
    .param p0, "_this"    # Ljava/util/function/IntUnaryOperator;
    .param p1, "after"    # Ljava/util/function/IntUnaryOperator;

    .line 83
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    new-instance v0, Lj$/util/function/IntUnaryOperator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lj$/util/function/IntUnaryOperator$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/IntUnaryOperator;Ljava/util/function/IntUnaryOperator;)V

    return-object v0
.end method

.method public static $default$compose(Ljava/util/function/IntUnaryOperator;Ljava/util/function/IntUnaryOperator;)Ljava/util/function/IntUnaryOperator;
    .locals 1
    .param p0, "_this"    # Ljava/util/function/IntUnaryOperator;
    .param p1, "before"    # Ljava/util/function/IntUnaryOperator;

    .line 65
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    new-instance v0, Lj$/util/function/IntUnaryOperator$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lj$/util/function/IntUnaryOperator$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/IntUnaryOperator;Ljava/util/function/IntUnaryOperator;)V

    return-object v0
.end method

.method public static synthetic $private$lambda$andThen$1(Ljava/util/function/IntUnaryOperator;Ljava/util/function/IntUnaryOperator;I)I
    .locals 1
    .param p0, "_this"    # Ljava/util/function/IntUnaryOperator;
    .param p1, "after"    # Ljava/util/function/IntUnaryOperator;
    .param p2, "t"    # I

    .line 84
    invoke-interface {p0, p2}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v0

    return v0
.end method

.method public static synthetic $private$lambda$compose$0(Ljava/util/function/IntUnaryOperator;Ljava/util/function/IntUnaryOperator;I)I
    .locals 1
    .param p0, "_this"    # Ljava/util/function/IntUnaryOperator;
    .param p1, "before"    # Ljava/util/function/IntUnaryOperator;
    .param p2, "v"    # I

    .line 66
    invoke-interface {p1, p2}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v0

    invoke-interface {p0, v0}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v0

    return v0
.end method

.method public static identity()Ljava/util/function/IntUnaryOperator;
    .locals 1

    .line 93
    new-instance v0, Lj$/util/function/IntUnaryOperator$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lj$/util/function/IntUnaryOperator$$ExternalSyntheticLambda2;-><init>()V

    return-object v0
.end method

.method public static synthetic lambda$identity$2(I)I
    .locals 0
    .param p0, "t"    # I

    .line 93
    return p0
.end method
