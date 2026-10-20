.class public final synthetic Lj$/util/stream/Stream$Builder$-CC;
.super Ljava/lang/Object;
.source "Stream.java"


# direct methods
.method public static $default$add(Lj$/util/stream/Stream$Builder;Ljava/lang/Object;)Lj$/util/stream/Stream$Builder;
    .locals 0
    .param p0, "_this"    # Lj$/util/stream/Stream$Builder;

    .line 1429
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-interface {p0, p1}, Lj$/util/stream/Stream$Builder;->accept(Ljava/lang/Object;)V

    .line 1430
    return-object p0
.end method
