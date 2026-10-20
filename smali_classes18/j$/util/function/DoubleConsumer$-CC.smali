.class public final synthetic Lj$/util/function/DoubleConsumer$-CC;
.super Ljava/lang/Object;
.source "DoubleConsumer.java"


# direct methods
.method public static $default$andThen(Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleConsumer;)Ljava/util/function/DoubleConsumer;
    .locals 1
    .param p0, "_this"    # Ljava/util/function/DoubleConsumer;
    .param p1, "after"    # Ljava/util/function/DoubleConsumer;

    .line 64
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v0, Lj$/util/function/DoubleConsumer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lj$/util/function/DoubleConsumer$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleConsumer;)V

    return-object v0
.end method

.method public static synthetic $private$lambda$andThen$0(Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleConsumer;D)V
    .locals 0
    .param p0, "_this"    # Ljava/util/function/DoubleConsumer;
    .param p1, "after"    # Ljava/util/function/DoubleConsumer;
    .param p2, "t"    # D

    .line 65
    invoke-interface {p0, p2, p3}, Ljava/util/function/DoubleConsumer;->accept(D)V

    invoke-interface {p1, p2, p3}, Ljava/util/function/DoubleConsumer;->accept(D)V

    return-void
.end method
