.class abstract Lj$/util/stream/ReduceOps$ReduceOp;
.super Ljava/lang/Object;
.source "ReduceOps.java"

# interfaces
.implements Lj$/util/stream/TerminalOp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/ReduceOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ReduceOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        "S::",
        "Lj$/util/stream/ReduceOps$AccumulatingSink<",
        "TT;TR;TS;>;>",
        "Ljava/lang/Object;",
        "Lj$/util/stream/TerminalOp<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field private final inputShape:Lj$/util/stream/StreamShape;


# direct methods
.method constructor <init>(Lj$/util/stream/StreamShape;)V
    .locals 0
    .param p1, "shape"    # Lj$/util/stream/StreamShape;

    .line 899
    .local p0, "this":Lj$/util/stream/ReduceOps$ReduceOp;, "Ljava/util/stream/ReduceOps$ReduceOp<TT;TR;TS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 900
    iput-object p1, p0, Lj$/util/stream/ReduceOps$ReduceOp;->inputShape:Lj$/util/stream/StreamShape;

    .line 901
    return-void
.end method


# virtual methods
.method public evaluateParallel(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/stream/PipelineHelper<",
            "TT;>;",
            "Lj$/util/Spliterator<",
            "TP_IN;>;)TR;"
        }
    .end annotation

    .line 919
    .local p0, "this":Lj$/util/stream/ReduceOps$ReduceOp;, "Ljava/util/stream/ReduceOps$ReduceOp<TT;TR;TS;>;"
    .local p1, "helper":Lj$/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TT;>;"
    .local p2, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    new-instance v0, Lj$/util/stream/ReduceOps$ReduceTask;

    invoke-direct {v0, p0, p1, p2}, Lj$/util/stream/ReduceOps$ReduceTask;-><init>(Lj$/util/stream/ReduceOps$ReduceOp;Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;)V

    invoke-virtual {v0}, Lj$/util/stream/ReduceOps$ReduceTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/stream/ReduceOps$AccumulatingSink;

    invoke-interface {v0}, Lj$/util/stream/ReduceOps$AccumulatingSink;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public evaluateSequential(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/stream/PipelineHelper<",
            "TT;>;",
            "Lj$/util/Spliterator<",
            "TP_IN;>;)TR;"
        }
    .end annotation

    .line 913
    .local p0, "this":Lj$/util/stream/ReduceOps$ReduceOp;, "Ljava/util/stream/ReduceOps$ReduceOp<TT;TR;TS;>;"
    .local p1, "helper":Lj$/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TT;>;"
    .local p2, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-virtual {p0}, Lj$/util/stream/ReduceOps$ReduceOp;->makeSink()Lj$/util/stream/ReduceOps$AccumulatingSink;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lj$/util/stream/PipelineHelper;->wrapAndCopyInto(Lj$/util/stream/Sink;Lj$/util/Spliterator;)Lj$/util/stream/Sink;

    move-result-object v0

    check-cast v0, Lj$/util/stream/ReduceOps$AccumulatingSink;

    invoke-interface {v0}, Lj$/util/stream/ReduceOps$AccumulatingSink;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getOpFlags()I
    .locals 1

    invoke-static {p0}, Lj$/util/stream/TerminalOp$-CC;->$default$getOpFlags(Lj$/util/stream/TerminalOp;)I

    move-result v0

    return v0
.end method

.method public inputShape()Lj$/util/stream/StreamShape;
    .locals 1

    .line 907
    .local p0, "this":Lj$/util/stream/ReduceOps$ReduceOp;, "Ljava/util/stream/ReduceOps$ReduceOp<TT;TR;TS;>;"
    iget-object v0, p0, Lj$/util/stream/ReduceOps$ReduceOp;->inputShape:Lj$/util/stream/StreamShape;

    return-object v0
.end method

.method public abstract makeSink()Lj$/util/stream/ReduceOps$AccumulatingSink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation
.end method
