.class public final synthetic Lj$/util/function/UnaryOperator$-CC;
.super Ljava/lang/Object;
.source "UnaryOperator.java"


# direct methods
.method public static identity()Ljava/util/function/UnaryOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/function/UnaryOperator<",
            "TT;>;"
        }
    .end annotation

    .line 50
    new-instance v0, Lj$/util/function/UnaryOperator$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lj$/util/function/UnaryOperator$$ExternalSyntheticLambda0;-><init>()V

    return-object v0
.end method

.method public static synthetic lambda$identity$0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "t"    # Ljava/lang/Object;

    .line 50
    return-object p0
.end method
