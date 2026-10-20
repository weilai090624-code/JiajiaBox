.class public final synthetic Lj$/util/stream/TerminalOp$-CC;
.super Ljava/lang/Object;
.source "TerminalOp.java"


# direct methods
.method public static $default$evaluateParallel(Lj$/util/stream/TerminalOp;Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;)Ljava/lang/Object;
    .locals 2
    .param p0, "_this"    # Lj$/util/stream/TerminalOp;

    .line 82
    .local p1, "helper":Lj$/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TE_IN;>;"
    .local p2, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    sget-boolean v0, Lj$/util/stream/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "{0} triggering TerminalOp.evaluateParallel serial default"

    invoke-static {v0, v1}, Lj$/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 84
    :cond_0
    invoke-interface {p0, p1, p2}, Lj$/util/stream/TerminalOp;->evaluateSequential(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static $default$getOpFlags(Lj$/util/stream/TerminalOp;)I
    .locals 1
    .param p0, "_this"    # Lj$/util/stream/TerminalOp;

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public static $default$inputShape(Lj$/util/stream/TerminalOp;)Lj$/util/stream/StreamShape;
    .locals 1
    .param p0, "_this"    # Lj$/util/stream/TerminalOp;

    .line 53
    sget-object v0, Lj$/util/stream/StreamShape;->REFERENCE:Lj$/util/stream/StreamShape;

    return-object v0
.end method
