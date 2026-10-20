.class public final synthetic Lj$/util/stream/Sink$-CC;
.super Ljava/lang/Object;
.source "Sink.java"


# direct methods
.method public static $default$accept(Lj$/util/stream/Sink;D)V
    .locals 2
    .param p0, "_this"    # Lj$/util/stream/Sink;
    .param p1, "value"    # D

    .line 181
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "called wrong accept method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static $default$accept(Lj$/util/stream/Sink;I)V
    .locals 2
    .param p0, "_this"    # Lj$/util/stream/Sink;
    .param p1, "value"    # I

    .line 159
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "called wrong accept method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static $default$accept(Lj$/util/stream/Sink;J)V
    .locals 2
    .param p0, "_this"    # Lj$/util/stream/Sink;
    .param p1, "value"    # J

    .line 170
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "called wrong accept method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static $default$begin(Lj$/util/stream/Sink;J)V
    .locals 0
    .param p0, "_this"    # Lj$/util/stream/Sink;
    .param p1, "size"    # J

    .line 128
    return-void
.end method

.method public static $default$cancellationRequested(Lj$/util/stream/Sink;)Z
    .locals 1
    .param p0, "_this"    # Lj$/util/stream/Sink;

    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public static $default$end(Lj$/util/stream/Sink;)V
    .locals 0
    .param p0, "_this"    # Lj$/util/stream/Sink;

    .line 138
    return-void
.end method
