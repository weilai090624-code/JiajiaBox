.class public final synthetic Lj$/util/stream/IntStream$Builder$-CC;
.super Ljava/lang/Object;
.source "IntStream.java"


# direct methods
.method public static $default$add(Lj$/util/stream/IntStream$Builder;I)Lj$/util/stream/IntStream$Builder;
    .locals 0
    .param p0, "_this"    # Lj$/util/stream/IntStream$Builder;
    .param p1, "t"    # I

    .line 1159
    invoke-interface {p0, p1}, Lj$/util/stream/IntStream$Builder;->accept(I)V

    .line 1160
    return-object p0
.end method
