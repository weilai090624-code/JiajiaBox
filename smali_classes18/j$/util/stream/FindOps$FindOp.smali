.class final Lj$/util/stream/FindOps$FindOp;
.super Ljava/lang/Object;
.source "FindOps.java"

# interfaces
.implements Lj$/util/stream/TerminalOp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/FindOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FindOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lj$/util/stream/TerminalOp<",
        "TT;TO;>;"
    }
.end annotation


# instance fields
.field final emptyValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field

.field final opFlags:I

.field final presentPredicate:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "TO;>;"
        }
    .end annotation
.end field

.field private final shape:Lj$/util/stream/StreamShape;

.field final sinkSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lj$/util/stream/TerminalSink<",
            "TT;TO;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ZLj$/util/stream/StreamShape;Ljava/lang/Object;Ljava/util/function/Predicate;Ljava/util/function/Supplier;)V
    .locals 2
    .param p1, "mustFindFirst"    # Z
    .param p2, "shape"    # Lj$/util/stream/StreamShape;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lj$/util/stream/StreamShape;",
            "TO;",
            "Ljava/util/function/Predicate<",
            "TO;>;",
            "Ljava/util/function/Supplier<",
            "Lj$/util/stream/TerminalSink<",
            "TT;TO;>;>;)V"
        }
    .end annotation

    .line 129
    .local p0, "this":Lj$/util/stream/FindOps$FindOp;, "Ljava/util/stream/FindOps$FindOp<TT;TO;>;"
    .local p3, "emptyValue":Ljava/lang/Object;, "TO;"
    .local p4, "presentPredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TO;>;"
    .local p5, "sinkSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/stream/TerminalSink<TT;TO;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    sget v0, Lj$/util/stream/StreamOpFlag;->IS_SHORT_CIRCUIT:I

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    sget v1, Lj$/util/stream/StreamOpFlag;->NOT_ORDERED:I

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lj$/util/stream/FindOps$FindOp;->opFlags:I

    .line 131
    iput-object p2, p0, Lj$/util/stream/FindOps$FindOp;->shape:Lj$/util/stream/StreamShape;

    .line 132
    iput-object p3, p0, Lj$/util/stream/FindOps$FindOp;->emptyValue:Ljava/lang/Object;

    .line 133
    iput-object p4, p0, Lj$/util/stream/FindOps$FindOp;->presentPredicate:Ljava/util/function/Predicate;

    .line 134
    iput-object p5, p0, Lj$/util/stream/FindOps$FindOp;->sinkSupplier:Ljava/util/function/Supplier;

    .line 135
    return-void
.end method


# virtual methods
.method public evaluateParallel(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/stream/PipelineHelper<",
            "TT;>;",
            "Lj$/util/Spliterator<",
            "TP_IN;>;)TO;"
        }
    .end annotation

    .line 159
    .local p0, "this":Lj$/util/stream/FindOps$FindOp;, "Ljava/util/stream/FindOps$FindOp<TT;TO;>;"
    .local p1, "helper":Lj$/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TT;>;"
    .local p2, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    sget-object v0, Lj$/util/stream/StreamOpFlag;->ORDERED:Lj$/util/stream/StreamOpFlag;

    invoke-virtual {p1}, Lj$/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Lj$/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    .line 160
    .local v0, "mustFindFirst":Z
    new-instance v1, Lj$/util/stream/FindOps$FindTask;

    invoke-direct {v1, p0, v0, p1, p2}, Lj$/util/stream/FindOps$FindTask;-><init>(Lj$/util/stream/FindOps$FindOp;ZLj$/util/stream/PipelineHelper;Lj$/util/Spliterator;)V

    invoke-virtual {v1}, Lj$/util/stream/FindOps$FindTask;->invoke()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public evaluateSequential(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/stream/PipelineHelper<",
            "TT;>;",
            "Lj$/util/Spliterator<",
            "TS;>;)TO;"
        }
    .end annotation

    .line 150
    .local p0, "this":Lj$/util/stream/FindOps$FindOp;, "Ljava/util/stream/FindOps$FindOp<TT;TO;>;"
    .local p1, "helper":Lj$/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TT;>;"
    .local p2, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TS;>;"
    iget-object v0, p0, Lj$/util/stream/FindOps$FindOp;->sinkSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/stream/TerminalSink;

    invoke-virtual {p1, v0, p2}, Lj$/util/stream/PipelineHelper;->wrapAndCopyInto(Lj$/util/stream/Sink;Lj$/util/Spliterator;)Lj$/util/stream/Sink;

    move-result-object v0

    check-cast v0, Lj$/util/stream/TerminalSink;

    invoke-interface {v0}, Lj$/util/stream/TerminalSink;->get()Ljava/lang/Object;

    move-result-object v0

    .line 151
    .local v0, "result":Ljava/lang/Object;, "TO;"
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lj$/util/stream/FindOps$FindOp;->emptyValue:Ljava/lang/Object;

    :goto_0
    return-object v1
.end method

.method public getOpFlags()I
    .locals 1

    .line 139
    .local p0, "this":Lj$/util/stream/FindOps$FindOp;, "Ljava/util/stream/FindOps$FindOp<TT;TO;>;"
    iget v0, p0, Lj$/util/stream/FindOps$FindOp;->opFlags:I

    return v0
.end method

.method public inputShape()Lj$/util/stream/StreamShape;
    .locals 1

    .line 144
    .local p0, "this":Lj$/util/stream/FindOps$FindOp;, "Ljava/util/stream/FindOps$FindOp<TT;TO;>;"
    iget-object v0, p0, Lj$/util/stream/FindOps$FindOp;->shape:Lj$/util/stream/StreamShape;

    return-object v0
.end method
