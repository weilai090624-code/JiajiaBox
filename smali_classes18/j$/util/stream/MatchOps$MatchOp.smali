.class final Lj$/util/stream/MatchOps$MatchOp;
.super Ljava/lang/Object;
.source "MatchOps.java"

# interfaces
.implements Lj$/util/stream/TerminalOp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/MatchOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MatchOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lj$/util/stream/TerminalOp<",
        "TT;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final inputShape:Lj$/util/stream/StreamShape;

.field final matchKind:Lj$/util/stream/MatchOps$MatchKind;

.field final sinkSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lj$/util/stream/MatchOps$BooleanTerminalSink<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lj$/util/stream/StreamShape;Lj$/util/stream/MatchOps$MatchKind;Ljava/util/function/Supplier;)V
    .locals 0
    .param p1, "shape"    # Lj$/util/stream/StreamShape;
    .param p2, "matchKind"    # Lj$/util/stream/MatchOps$MatchKind;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/StreamShape;",
            "Lj$/util/stream/MatchOps$MatchKind;",
            "Ljava/util/function/Supplier<",
            "Lj$/util/stream/MatchOps$BooleanTerminalSink<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 211
    .local p0, "this":Lj$/util/stream/MatchOps$MatchOp;, "Ljava/util/stream/MatchOps$MatchOp<TT;>;"
    .local p3, "sinkSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/stream/MatchOps$BooleanTerminalSink<TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput-object p1, p0, Lj$/util/stream/MatchOps$MatchOp;->inputShape:Lj$/util/stream/StreamShape;

    .line 213
    iput-object p2, p0, Lj$/util/stream/MatchOps$MatchOp;->matchKind:Lj$/util/stream/MatchOps$MatchKind;

    .line 214
    iput-object p3, p0, Lj$/util/stream/MatchOps$MatchOp;->sinkSupplier:Ljava/util/function/Supplier;

    .line 215
    return-void
.end method


# virtual methods
.method public evaluateParallel(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/stream/PipelineHelper<",
            "TT;>;",
            "Lj$/util/Spliterator<",
            "TS;>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 242
    .local p0, "this":Lj$/util/stream/MatchOps$MatchOp;, "Ljava/util/stream/MatchOps$MatchOp<TT;>;"
    .local p1, "helper":Lj$/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TT;>;"
    .local p2, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TS;>;"
    new-instance v0, Lj$/util/stream/MatchOps$MatchTask;

    invoke-direct {v0, p0, p1, p2}, Lj$/util/stream/MatchOps$MatchTask;-><init>(Lj$/util/stream/MatchOps$MatchOp;Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;)V

    invoke-virtual {v0}, Lj$/util/stream/MatchOps$MatchTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic evaluateParallel(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;)Ljava/lang/Object;
    .locals 0

    .line 196
    .local p0, "this":Lj$/util/stream/MatchOps$MatchOp;, "Ljava/util/stream/MatchOps$MatchOp<TT;>;"
    invoke-virtual {p0, p1, p2}, Lj$/util/stream/MatchOps$MatchOp;->evaluateParallel(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public evaluateSequential(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/stream/PipelineHelper<",
            "TT;>;",
            "Lj$/util/Spliterator<",
            "TS;>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 230
    .local p0, "this":Lj$/util/stream/MatchOps$MatchOp;, "Ljava/util/stream/MatchOps$MatchOp<TT;>;"
    .local p1, "helper":Lj$/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TT;>;"
    .local p2, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TS;>;"
    iget-object v0, p0, Lj$/util/stream/MatchOps$MatchOp;->sinkSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/stream/MatchOps$BooleanTerminalSink;

    invoke-virtual {p1, v0, p2}, Lj$/util/stream/PipelineHelper;->wrapAndCopyInto(Lj$/util/stream/Sink;Lj$/util/Spliterator;)Lj$/util/stream/Sink;

    move-result-object v0

    check-cast v0, Lj$/util/stream/MatchOps$BooleanTerminalSink;

    invoke-virtual {v0}, Lj$/util/stream/MatchOps$BooleanTerminalSink;->getAndClearState()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic evaluateSequential(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;)Ljava/lang/Object;
    .locals 0

    .line 196
    .local p0, "this":Lj$/util/stream/MatchOps$MatchOp;, "Ljava/util/stream/MatchOps$MatchOp<TT;>;"
    invoke-virtual {p0, p1, p2}, Lj$/util/stream/MatchOps$MatchOp;->evaluateSequential(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public getOpFlags()I
    .locals 2

    .line 219
    .local p0, "this":Lj$/util/stream/MatchOps$MatchOp;, "Ljava/util/stream/MatchOps$MatchOp<TT;>;"
    sget v0, Lj$/util/stream/StreamOpFlag;->IS_SHORT_CIRCUIT:I

    sget v1, Lj$/util/stream/StreamOpFlag;->NOT_ORDERED:I

    or-int/2addr v0, v1

    return v0
.end method

.method public inputShape()Lj$/util/stream/StreamShape;
    .locals 1

    .line 224
    .local p0, "this":Lj$/util/stream/MatchOps$MatchOp;, "Ljava/util/stream/MatchOps$MatchOp<TT;>;"
    iget-object v0, p0, Lj$/util/stream/MatchOps$MatchOp;->inputShape:Lj$/util/stream/StreamShape;

    return-object v0
.end method
