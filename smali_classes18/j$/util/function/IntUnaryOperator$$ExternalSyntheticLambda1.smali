.class public final synthetic Lj$/util/function/IntUnaryOperator$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntUnaryOperator;


# instance fields
.field public final synthetic f$0:Ljava/util/function/IntUnaryOperator;

.field public final synthetic f$1:Ljava/util/function/IntUnaryOperator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/IntUnaryOperator;Ljava/util/function/IntUnaryOperator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/function/IntUnaryOperator$$ExternalSyntheticLambda1;->f$0:Ljava/util/function/IntUnaryOperator;

    iput-object p2, p0, Lj$/util/function/IntUnaryOperator$$ExternalSyntheticLambda1;->f$1:Ljava/util/function/IntUnaryOperator;

    return-void
.end method


# virtual methods
.method public synthetic andThen(Ljava/util/function/IntUnaryOperator;)Ljava/util/function/IntUnaryOperator;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/IntUnaryOperator$-CC;->$default$andThen(Ljava/util/function/IntUnaryOperator;Ljava/util/function/IntUnaryOperator;)Ljava/util/function/IntUnaryOperator;

    move-result-object p1

    return-object p1
.end method

.method public final applyAsInt(I)I
    .locals 2

    iget-object v0, p0, Lj$/util/function/IntUnaryOperator$$ExternalSyntheticLambda1;->f$0:Ljava/util/function/IntUnaryOperator;

    iget-object v1, p0, Lj$/util/function/IntUnaryOperator$$ExternalSyntheticLambda1;->f$1:Ljava/util/function/IntUnaryOperator;

    invoke-static {v0, v1, p1}, Lj$/util/function/IntUnaryOperator$-CC;->$private$lambda$compose$0(Ljava/util/function/IntUnaryOperator;Ljava/util/function/IntUnaryOperator;I)I

    move-result p1

    return p1
.end method

.method public synthetic compose(Ljava/util/function/IntUnaryOperator;)Ljava/util/function/IntUnaryOperator;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/IntUnaryOperator$-CC;->$default$compose(Ljava/util/function/IntUnaryOperator;Ljava/util/function/IntUnaryOperator;)Ljava/util/function/IntUnaryOperator;

    move-result-object p1

    return-object p1
.end method
