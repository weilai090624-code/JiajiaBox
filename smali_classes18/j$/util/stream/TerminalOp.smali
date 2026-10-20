.class interface abstract Lj$/util/stream/TerminalOp;
.super Ljava/lang/Object;
.source "TerminalOp.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E_IN:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract evaluateParallel(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/stream/PipelineHelper<",
            "TE_IN;>;",
            "Lj$/util/Spliterator<",
            "TP_IN;>;)TR;"
        }
    .end annotation
.end method

.method public abstract evaluateSequential(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/stream/PipelineHelper<",
            "TE_IN;>;",
            "Lj$/util/Spliterator<",
            "TP_IN;>;)TR;"
        }
    .end annotation
.end method

.method public abstract getOpFlags()I
.end method

.method public abstract inputShape()Lj$/util/stream/StreamShape;
.end method
