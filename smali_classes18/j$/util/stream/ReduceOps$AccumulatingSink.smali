.class interface abstract Lj$/util/stream/ReduceOps$AccumulatingSink;
.super Ljava/lang/Object;
.source "ReduceOps.java"

# interfaces
.implements Lj$/util/stream/TerminalSink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/ReduceOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "AccumulatingSink"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        "K::",
        "Lj$/util/stream/ReduceOps$AccumulatingSink<",
        "TT;TR;TK;>;>",
        "Ljava/lang/Object;",
        "Lj$/util/stream/TerminalSink<",
        "TT;TR;>;"
    }
.end annotation


# virtual methods
.method public abstract combine(Lj$/util/stream/ReduceOps$AccumulatingSink;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation
.end method
