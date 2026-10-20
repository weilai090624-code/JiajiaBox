.class public final synthetic Lj$/lang/Iterable$-CC;
.super Ljava/lang/Object;
.source "Iterable.java"


# direct methods
.method public static $default$forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V
    .locals 2
    .param p0, "_this"    # Ljava/lang/Iterable;

    .line 73
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 75
    .local v1, "t":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 76
    .end local v1    # "t":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 77
    :cond_0
    return-void
.end method

.method public static $default$spliterator(Ljava/lang/Iterable;)Lj$/util/Spliterator;
    .locals 2
    .param p0, "_this"    # Ljava/lang/Iterable;

    .line 101
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj$/util/Spliterators;->spliteratorUnknownSize(Ljava/util/Iterator;I)Lj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
