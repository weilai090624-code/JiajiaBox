.class public final synthetic Lj$/util/function/LongConsumer$-CC;
.super Ljava/lang/Object;
.source "LongConsumer.java"


# direct methods
.method public static $default$andThen(Ljava/util/function/LongConsumer;Ljava/util/function/LongConsumer;)Ljava/util/function/LongConsumer;
    .locals 1
    .param p0, "_this"    # Ljava/util/function/LongConsumer;
    .param p1, "after"    # Ljava/util/function/LongConsumer;

    .line 64
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v0, Lj$/util/function/LongConsumer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lj$/util/function/LongConsumer$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/LongConsumer;Ljava/util/function/LongConsumer;)V

    return-object v0
.end method

.method public static synthetic $private$lambda$andThen$0(Ljava/util/function/LongConsumer;Ljava/util/function/LongConsumer;J)V
    .locals 0
    .param p0, "_this"    # Ljava/util/function/LongConsumer;
    .param p1, "after"    # Ljava/util/function/LongConsumer;
    .param p2, "t"    # J

    .line 65
    invoke-interface {p0, p2, p3}, Ljava/util/function/LongConsumer;->accept(J)V

    invoke-interface {p1, p2, p3}, Ljava/util/function/LongConsumer;->accept(J)V

    return-void
.end method
