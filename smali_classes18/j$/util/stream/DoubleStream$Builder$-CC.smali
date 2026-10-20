.class public final synthetic Lj$/util/stream/DoubleStream$Builder$-CC;
.super Ljava/lang/Object;
.source "DoubleStream.java"


# direct methods
.method public static $default$add(Lj$/util/stream/DoubleStream$Builder;D)Lj$/util/stream/DoubleStream$Builder;
    .locals 0
    .param p0, "_this"    # Lj$/util/stream/DoubleStream$Builder;
    .param p1, "t"    # D

    .line 1167
    invoke-interface {p0, p1, p2}, Lj$/util/stream/DoubleStream$Builder;->accept(D)V

    .line 1168
    return-object p0
.end method
