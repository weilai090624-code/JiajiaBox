.class abstract Lj$/util/stream/ForEachOps$ForEachOp;
.super Ljava/lang/Object;
.source "ForEachOps.java"

# interfaces
.implements Lj$/util/stream/TerminalOp;
.implements Lj$/util/stream/TerminalSink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/ForEachOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ForEachOp"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/util/stream/ForEachOps$ForEachOp$OfDouble;,
        Lj$/util/stream/ForEachOps$ForEachOp$OfLong;,
        Lj$/util/stream/ForEachOps$ForEachOp$OfInt;,
        Lj$/util/stream/ForEachOps$ForEachOp$OfRef;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lj$/util/stream/TerminalOp<",
        "TT;",
        "Ljava/lang/Void;",
        ">;",
        "Lj$/util/stream/TerminalSink<",
        "TT;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final ordered:Z


# direct methods
.method protected constructor <init>(Z)V
    .locals 0
    .param p1, "ordered"    # Z

    .line 136
    .local p0, "this":Lj$/util/stream/ForEachOps$ForEachOp;, "Ljava/util/stream/ForEachOps$ForEachOp<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-boolean p1, p0, Lj$/util/stream/ForEachOps$ForEachOp;->ordered:Z

    .line 138
    return-void
.end method


# virtual methods
.method public synthetic accept(D)V
    .locals 0

    invoke-static {p0, p1, p2}, Lj$/util/stream/Sink$-CC;->$default$accept(Lj$/util/stream/Sink;D)V

    return-void
.end method

.method public synthetic accept(I)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/Sink$-CC;->$default$accept(Lj$/util/stream/Sink;I)V

    return-void
.end method

.method public synthetic accept(J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lj$/util/stream/Sink$-CC;->$default$accept(Lj$/util/stream/Sink;J)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic begin(J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lj$/util/stream/Sink$-CC;->$default$begin(Lj$/util/stream/Sink;J)V

    return-void
.end method

.method public synthetic cancellationRequested()Z
    .locals 1

    invoke-static {p0}, Lj$/util/stream/Sink$-CC;->$default$cancellationRequested(Lj$/util/stream/Sink;)Z

    move-result v0

    return v0
.end method

.method public synthetic end()V
    .locals 0

    invoke-static {p0}, Lj$/util/stream/Sink$-CC;->$default$end(Lj$/util/stream/Sink;)V

    return-void
.end method

.method public bridge synthetic evaluateParallel(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;)Ljava/lang/Object;
    .locals 0

    .line 132
    .local p0, "this":Lj$/util/stream/ForEachOps$ForEachOp;, "Ljava/util/stream/ForEachOps$ForEachOp<TT;>;"
    invoke-virtual {p0, p1, p2}, Lj$/util/stream/ForEachOps$ForEachOp;->evaluateParallel(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public evaluateParallel(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/stream/PipelineHelper<",
            "TT;>;",
            "Lj$/util/Spliterator<",
            "TS;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 156
    .local p0, "this":Lj$/util/stream/ForEachOps$ForEachOp;, "Ljava/util/stream/ForEachOps$ForEachOp<TT;>;"
    .local p1, "helper":Lj$/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TT;>;"
    .local p2, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TS;>;"
    iget-boolean v0, p0, Lj$/util/stream/ForEachOps$ForEachOp;->ordered:Z

    if-eqz v0, :cond_0

    .line 157
    new-instance v0, Lj$/util/stream/ForEachOps$ForEachOrderedTask;

    invoke-direct {v0, p1, p2, p0}, Lj$/util/stream/ForEachOps$ForEachOrderedTask;-><init>(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;Lj$/util/stream/Sink;)V

    invoke-virtual {v0}, Lj$/util/stream/ForEachOps$ForEachOrderedTask;->invoke()Ljava/lang/Object;

    goto :goto_0

    .line 159
    :cond_0
    new-instance v0, Lj$/util/stream/ForEachOps$ForEachTask;

    invoke-virtual {p1, p0}, Lj$/util/stream/PipelineHelper;->wrapSink(Lj$/util/stream/Sink;)Lj$/util/stream/Sink;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lj$/util/stream/ForEachOps$ForEachTask;-><init>(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;Lj$/util/stream/Sink;)V

    invoke-virtual {v0}, Lj$/util/stream/ForEachOps$ForEachTask;->invoke()Ljava/lang/Object;

    .line 160
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic evaluateSequential(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;)Ljava/lang/Object;
    .locals 0

    .line 132
    .local p0, "this":Lj$/util/stream/ForEachOps$ForEachOp;, "Ljava/util/stream/ForEachOps$ForEachOp<TT;>;"
    invoke-virtual {p0, p1, p2}, Lj$/util/stream/ForEachOps$ForEachOp;->evaluateSequential(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public evaluateSequential(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;)Ljava/lang/Void;
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
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 150
    .local p0, "this":Lj$/util/stream/ForEachOps$ForEachOp;, "Ljava/util/stream/ForEachOps$ForEachOp<TT;>;"
    .local p1, "helper":Lj$/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TT;>;"
    .local p2, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TS;>;"
    invoke-virtual {p1, p0, p2}, Lj$/util/stream/PipelineHelper;->wrapAndCopyInto(Lj$/util/stream/Sink;Lj$/util/Spliterator;)Lj$/util/stream/Sink;

    move-result-object v0

    check-cast v0, Lj$/util/stream/ForEachOps$ForEachOp;

    invoke-virtual {v0}, Lj$/util/stream/ForEachOps$ForEachOp;->get()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 132
    .local p0, "this":Lj$/util/stream/ForEachOps$ForEachOp;, "Ljava/util/stream/ForEachOps$ForEachOp<TT;>;"
    invoke-virtual {p0}, Lj$/util/stream/ForEachOps$ForEachOp;->get()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/Void;
    .locals 1

    .line 167
    .local p0, "this":Lj$/util/stream/ForEachOps$ForEachOp;, "Ljava/util/stream/ForEachOps$ForEachOp<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOpFlags()I
    .locals 1

    .line 144
    .local p0, "this":Lj$/util/stream/ForEachOps$ForEachOp;, "Ljava/util/stream/ForEachOps$ForEachOp<TT;>;"
    iget-boolean v0, p0, Lj$/util/stream/ForEachOps$ForEachOp;->ordered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget v0, Lj$/util/stream/StreamOpFlag;->NOT_ORDERED:I

    :goto_0
    return v0
.end method

.method public synthetic inputShape()Lj$/util/stream/StreamShape;
    .locals 1

    invoke-static {p0}, Lj$/util/stream/TerminalOp$-CC;->$default$inputShape(Lj$/util/stream/TerminalOp;)Lj$/util/stream/StreamShape;

    move-result-object v0

    return-object v0
.end method
