.class public final synthetic Lj$/util/function/LongUnaryOperator$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/LongUnaryOperator;


# instance fields
.field public final synthetic f$0:Ljava/util/function/LongUnaryOperator;

.field public final synthetic f$1:Ljava/util/function/LongUnaryOperator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/LongUnaryOperator;Ljava/util/function/LongUnaryOperator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/function/LongUnaryOperator$$ExternalSyntheticLambda2;->f$0:Ljava/util/function/LongUnaryOperator;

    iput-object p2, p0, Lj$/util/function/LongUnaryOperator$$ExternalSyntheticLambda2;->f$1:Ljava/util/function/LongUnaryOperator;

    return-void
.end method


# virtual methods
.method public synthetic andThen(Ljava/util/function/LongUnaryOperator;)Ljava/util/function/LongUnaryOperator;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/LongUnaryOperator$-CC;->$default$andThen(Ljava/util/function/LongUnaryOperator;Ljava/util/function/LongUnaryOperator;)Ljava/util/function/LongUnaryOperator;

    move-result-object p1

    return-object p1
.end method

.method public final applyAsLong(J)J
    .locals 2

    iget-object v0, p0, Lj$/util/function/LongUnaryOperator$$ExternalSyntheticLambda2;->f$0:Ljava/util/function/LongUnaryOperator;

    iget-object v1, p0, Lj$/util/function/LongUnaryOperator$$ExternalSyntheticLambda2;->f$1:Ljava/util/function/LongUnaryOperator;

    invoke-static {v0, v1, p1, p2}, Lj$/util/function/LongUnaryOperator$-CC;->$private$lambda$compose$0(Ljava/util/function/LongUnaryOperator;Ljava/util/function/LongUnaryOperator;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public synthetic compose(Ljava/util/function/LongUnaryOperator;)Ljava/util/function/LongUnaryOperator;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/LongUnaryOperator$-CC;->$default$compose(Ljava/util/function/LongUnaryOperator;Ljava/util/function/LongUnaryOperator;)Ljava/util/function/LongUnaryOperator;

    move-result-object p1

    return-object p1
.end method
