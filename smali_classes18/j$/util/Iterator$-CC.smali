.class public final synthetic Lj$/util/Iterator$-CC;
.super Ljava/lang/Object;
.source "Iterator.java"


# direct methods
.method public static $default$forEachRemaining(Ljava/util/Iterator;Ljava/util/function/Consumer;)V
    .locals 1
    .param p0, "_this"    # Ljava/util/Iterator;

    .line 131
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 134
    :cond_0
    return-void
.end method

.method public static $default$remove(Ljava/util/Iterator;)V
    .locals 2
    .param p0, "_this"    # Ljava/util/Iterator;

    .line 102
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
