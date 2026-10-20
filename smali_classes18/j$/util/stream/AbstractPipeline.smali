.class abstract Lj$/util/stream/AbstractPipeline;
.super Lj$/util/stream/PipelineHelper;
.source "AbstractPipeline.java"

# interfaces
.implements Lj$/util/stream/BaseStream;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E_IN:",
        "Ljava/lang/Object;",
        "E_OUT:",
        "Ljava/lang/Object;",
        "S::",
        "Lj$/util/stream/BaseStream<",
        "TE_OUT;TS;>;>",
        "Lj$/util/stream/PipelineHelper<",
        "TE_OUT;>;",
        "Lj$/util/stream/BaseStream<",
        "TE_OUT;TS;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final MSG_CONSUMED:Ljava/lang/String; = "source already consumed or closed"

.field private static final MSG_STREAM_LINKED:Ljava/lang/String; = "stream has already been operated upon or closed"


# instance fields
.field private combinedFlags:I

.field private depth:I

.field private linkedOrConsumed:Z

.field private nextStage:Lj$/util/stream/AbstractPipeline;

.field private parallel:Z

.field private final previousStage:Lj$/util/stream/AbstractPipeline;

.field private sourceAnyStateful:Z

.field private sourceCloseAction:Ljava/lang/Runnable;

.field protected final sourceOrOpFlags:I

.field private sourceSpliterator:Lj$/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/Spliterator<",
            "*>;"
        }
    .end annotation
.end field

.field private final sourceStage:Lj$/util/stream/AbstractPipeline;

.field private sourceSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "+",
            "Lj$/util/Spliterator<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 72
    return-void
.end method

.method constructor <init>(Lj$/util/Spliterator;IZ)V
    .locals 2
    .param p2, "sourceFlags"    # I
    .param p3, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/Spliterator<",
            "*>;IZ)V"
        }
    .end annotation

    .line 181
    .local p0, "this":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    .local p1, "source":Lj$/util/Spliterator;, "Ljava/util/Spliterator<*>;"
    invoke-direct {p0}, Lj$/util/stream/PipelineHelper;-><init>()V

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lj$/util/stream/AbstractPipeline;->previousStage:Lj$/util/stream/AbstractPipeline;

    .line 183
    iput-object p1, p0, Lj$/util/stream/AbstractPipeline;->sourceSpliterator:Lj$/util/Spliterator;

    .line 184
    iput-object p0, p0, Lj$/util/stream/AbstractPipeline;->sourceStage:Lj$/util/stream/AbstractPipeline;

    .line 185
    sget v0, Lj$/util/stream/StreamOpFlag;->STREAM_MASK:I

    and-int/2addr v0, p2

    iput v0, p0, Lj$/util/stream/AbstractPipeline;->sourceOrOpFlags:I

    .line 188
    iget v0, p0, Lj$/util/stream/AbstractPipeline;->sourceOrOpFlags:I

    shl-int/lit8 v0, v0, 0x1

    not-int v0, v0

    sget v1, Lj$/util/stream/StreamOpFlag;->INITIAL_OPS_VALUE:I

    and-int/2addr v0, v1

    iput v0, p0, Lj$/util/stream/AbstractPipeline;->combinedFlags:I

    .line 189
    const/4 v0, 0x0

    iput v0, p0, Lj$/util/stream/AbstractPipeline;->depth:I

    .line 190
    iput-boolean p3, p0, Lj$/util/stream/AbstractPipeline;->parallel:Z

    .line 191
    return-void
.end method

.method constructor <init>(Lj$/util/stream/AbstractPipeline;I)V
    .locals 2
    .param p2, "opFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/AbstractPipeline<",
            "*TE_IN;*>;I)V"
        }
    .end annotation

    .line 201
    .local p0, "this":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    .local p1, "previousStage":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*TE_IN;*>;"
    invoke-direct {p0}, Lj$/util/stream/PipelineHelper;-><init>()V

    .line 202
    iget-boolean v0, p1, Lj$/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    if-nez v0, :cond_1

    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p1, Lj$/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    .line 205
    iput-object p0, p1, Lj$/util/stream/AbstractPipeline;->nextStage:Lj$/util/stream/AbstractPipeline;

    .line 207
    iput-object p1, p0, Lj$/util/stream/AbstractPipeline;->previousStage:Lj$/util/stream/AbstractPipeline;

    .line 208
    sget v1, Lj$/util/stream/StreamOpFlag;->OP_MASK:I

    and-int/2addr v1, p2

    iput v1, p0, Lj$/util/stream/AbstractPipeline;->sourceOrOpFlags:I

    .line 209
    iget v1, p1, Lj$/util/stream/AbstractPipeline;->combinedFlags:I

    invoke-static {p2, v1}, Lj$/util/stream/StreamOpFlag;->combineOpFlags(II)I

    move-result v1

    iput v1, p0, Lj$/util/stream/AbstractPipeline;->combinedFlags:I

    .line 210
    iget-object v1, p1, Lj$/util/stream/AbstractPipeline;->sourceStage:Lj$/util/stream/AbstractPipeline;

    iput-object v1, p0, Lj$/util/stream/AbstractPipeline;->sourceStage:Lj$/util/stream/AbstractPipeline;

    .line 211
    invoke-virtual {p0}, Lj$/util/stream/AbstractPipeline;->opIsStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    iget-object v1, p0, Lj$/util/stream/AbstractPipeline;->sourceStage:Lj$/util/stream/AbstractPipeline;

    iput-boolean v0, v1, Lj$/util/stream/AbstractPipeline;->sourceAnyStateful:Z

    .line 213
    :cond_0
    iget v1, p1, Lj$/util/stream/AbstractPipeline;->depth:I

    add-int/2addr v1, v0

    iput v1, p0, Lj$/util/stream/AbstractPipeline;->depth:I

    .line 214
    return-void

    .line 203
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "stream has already been operated upon or closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Ljava/util/function/Supplier;IZ)V
    .locals 2
    .param p2, "sourceFlags"    # I
    .param p3, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "+",
            "Lj$/util/Spliterator<",
            "*>;>;IZ)V"
        }
    .end annotation

    .line 160
    .local p0, "this":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    .local p1, "source":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+Ljava/util/Spliterator<*>;>;"
    invoke-direct {p0}, Lj$/util/stream/PipelineHelper;-><init>()V

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lj$/util/stream/AbstractPipeline;->previousStage:Lj$/util/stream/AbstractPipeline;

    .line 162
    iput-object p1, p0, Lj$/util/stream/AbstractPipeline;->sourceSupplier:Ljava/util/function/Supplier;

    .line 163
    iput-object p0, p0, Lj$/util/stream/AbstractPipeline;->sourceStage:Lj$/util/stream/AbstractPipeline;

    .line 164
    sget v0, Lj$/util/stream/StreamOpFlag;->STREAM_MASK:I

    and-int/2addr v0, p2

    iput v0, p0, Lj$/util/stream/AbstractPipeline;->sourceOrOpFlags:I

    .line 167
    iget v0, p0, Lj$/util/stream/AbstractPipeline;->sourceOrOpFlags:I

    shl-int/lit8 v0, v0, 0x1

    not-int v0, v0

    sget v1, Lj$/util/stream/StreamOpFlag;->INITIAL_OPS_VALUE:I

    and-int/2addr v0, v1

    iput v0, p0, Lj$/util/stream/AbstractPipeline;->combinedFlags:I

    .line 168
    const/4 v0, 0x0

    iput v0, p0, Lj$/util/stream/AbstractPipeline;->depth:I

    .line 169
    iput-boolean p3, p0, Lj$/util/stream/AbstractPipeline;->parallel:Z

    .line 170
    return-void
.end method

.method static synthetic lambda$opEvaluateParallelLazy$2(I)[Ljava/lang/Object;
    .locals 1
    .param p0, "i"    # I

    .line 710
    new-array v0, p0, [Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic lambda$wrapSpliterator$1(Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 0
    .param p0, "sourceSpliterator"    # Lj$/util/Spliterator;

    .line 534
    return-object p0
.end method

.method private sourceSpliterator(I)Lj$/util/Spliterator;
    .locals 8
    .param p1, "terminalFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lj$/util/Spliterator<",
            "*>;"
        }
    .end annotation

    .line 399
    .local p0, "this":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    const/4 v0, 0x0

    .line 400
    .local v0, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<*>;"
    iget-object v1, p0, Lj$/util/stream/AbstractPipeline;->sourceStage:Lj$/util/stream/AbstractPipeline;

    iget-object v1, v1, Lj$/util/stream/AbstractPipeline;->sourceSpliterator:Lj$/util/Spliterator;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 401
    iget-object v1, p0, Lj$/util/stream/AbstractPipeline;->sourceStage:Lj$/util/stream/AbstractPipeline;

    iget-object v0, v1, Lj$/util/stream/AbstractPipeline;->sourceSpliterator:Lj$/util/Spliterator;

    .line 402
    iget-object v1, p0, Lj$/util/stream/AbstractPipeline;->sourceStage:Lj$/util/stream/AbstractPipeline;

    iput-object v2, v1, Lj$/util/stream/AbstractPipeline;->sourceSpliterator:Lj$/util/Spliterator;

    goto :goto_0

    .line 404
    :cond_0
    iget-object v1, p0, Lj$/util/stream/AbstractPipeline;->sourceStage:Lj$/util/stream/AbstractPipeline;

    iget-object v1, v1, Lj$/util/stream/AbstractPipeline;->sourceSupplier:Ljava/util/function/Supplier;

    if-eqz v1, :cond_6

    .line 405
    iget-object v1, p0, Lj$/util/stream/AbstractPipeline;->sourceStage:Lj$/util/stream/AbstractPipeline;

    iget-object v1, v1, Lj$/util/stream/AbstractPipeline;->sourceSupplier:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lj$/util/Spliterator;

    .line 406
    iget-object v1, p0, Lj$/util/stream/AbstractPipeline;->sourceStage:Lj$/util/stream/AbstractPipeline;

    iput-object v2, v1, Lj$/util/stream/AbstractPipeline;->sourceSupplier:Ljava/util/function/Supplier;

    .line 412
    :goto_0
    invoke-virtual {p0}, Lj$/util/stream/AbstractPipeline;->isParallel()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lj$/util/stream/AbstractPipeline;->sourceStage:Lj$/util/stream/AbstractPipeline;

    iget-boolean v1, v1, Lj$/util/stream/AbstractPipeline;->sourceAnyStateful:Z

    if-eqz v1, :cond_4

    .line 416
    const/4 v1, 0x1

    .line 417
    .local v1, "depth":I
    iget-object v2, p0, Lj$/util/stream/AbstractPipeline;->sourceStage:Lj$/util/stream/AbstractPipeline;

    .local v2, "u":Lj$/util/stream/AbstractPipeline;
    iget-object v3, p0, Lj$/util/stream/AbstractPipeline;->sourceStage:Lj$/util/stream/AbstractPipeline;

    iget-object v3, v3, Lj$/util/stream/AbstractPipeline;->nextStage:Lj$/util/stream/AbstractPipeline;

    .local v3, "p":Lj$/util/stream/AbstractPipeline;
    move-object v4, p0

    .line 418
    .local v4, "e":Lj$/util/stream/AbstractPipeline;
    :goto_1
    if-eq v2, v4, :cond_4

    .line 421
    iget v5, v3, Lj$/util/stream/AbstractPipeline;->sourceOrOpFlags:I

    .line 422
    .local v5, "thisOpFlags":I
    invoke-virtual {v3}, Lj$/util/stream/AbstractPipeline;->opIsStateful()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 423
    const/4 v1, 0x0

    .line 425
    sget-object v6, Lj$/util/stream/StreamOpFlag;->SHORT_CIRCUIT:Lj$/util/stream/StreamOpFlag;

    invoke-virtual {v6, v5}, Lj$/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 431
    sget v6, Lj$/util/stream/StreamOpFlag;->IS_SHORT_CIRCUIT:I

    not-int v6, v6

    and-int/2addr v5, v6

    .line 434
    :cond_1
    invoke-virtual {v3, v2, v0}, Lj$/util/stream/AbstractPipeline;->opEvaluateParallelLazy(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object v0

    .line 438
    const/16 v6, 0x40

    invoke-interface {v0, v6}, Lj$/util/Spliterator;->hasCharacteristics(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 439
    sget v6, Lj$/util/stream/StreamOpFlag;->NOT_SIZED:I

    not-int v6, v6

    and-int/2addr v6, v5

    sget v7, Lj$/util/stream/StreamOpFlag;->IS_SIZED:I

    or-int/2addr v6, v7

    goto :goto_2

    .line 440
    :cond_2
    sget v6, Lj$/util/stream/StreamOpFlag;->IS_SIZED:I

    not-int v6, v6

    and-int/2addr v6, v5

    sget v7, Lj$/util/stream/StreamOpFlag;->NOT_SIZED:I

    or-int/2addr v6, v7

    :goto_2
    move v5, v6

    .line 442
    :cond_3
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "depth":I
    .local v6, "depth":I
    iput v1, v3, Lj$/util/stream/AbstractPipeline;->depth:I

    .line 443
    iget v1, v2, Lj$/util/stream/AbstractPipeline;->combinedFlags:I

    invoke-static {v5, v1}, Lj$/util/stream/StreamOpFlag;->combineOpFlags(II)I

    move-result v1

    iput v1, v3, Lj$/util/stream/AbstractPipeline;->combinedFlags:I

    .line 419
    .end local v5    # "thisOpFlags":I
    move-object v2, v3

    iget-object v3, v3, Lj$/util/stream/AbstractPipeline;->nextStage:Lj$/util/stream/AbstractPipeline;

    move v1, v6

    goto :goto_1

    .line 447
    .end local v2    # "u":Lj$/util/stream/AbstractPipeline;
    .end local v3    # "p":Lj$/util/stream/AbstractPipeline;
    .end local v4    # "e":Lj$/util/stream/AbstractPipeline;
    .end local v6    # "depth":I
    :cond_4
    if-eqz p1, :cond_5

    .line 449
    iget v1, p0, Lj$/util/stream/AbstractPipeline;->combinedFlags:I

    invoke-static {p1, v1}, Lj$/util/stream/StreamOpFlag;->combineOpFlags(II)I

    move-result v1

    iput v1, p0, Lj$/util/stream/AbstractPipeline;->combinedFlags:I

    .line 452
    :cond_5
    return-object v0

    .line 409
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "source already consumed or closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 317
    .local p0, "this":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    .line 318
    const/4 v0, 0x0

    iput-object v0, p0, Lj$/util/stream/AbstractPipeline;->sourceSupplier:Ljava/util/function/Supplier;

    .line 319
    iput-object v0, p0, Lj$/util/stream/AbstractPipeline;->sourceSpliterator:Lj$/util/Spliterator;

    .line 320
    iget-object v1, p0, Lj$/util/stream/AbstractPipeline;->sourceStage:Lj$/util/stream/AbstractPipeline;

    iget-object v1, v1, Lj$/util/stream/AbstractPipeline;->sourceCloseAction:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 321
    iget-object v1, p0, Lj$/util/stream/AbstractPipeline;->sourceStage:Lj$/util/stream/AbstractPipeline;

    iget-object v1, v1, Lj$/util/stream/AbstractPipeline;->sourceCloseAction:Ljava/lang/Runnable;

    .line 322
    .local v1, "closeAction":Ljava/lang/Runnable;
    iget-object v2, p0, Lj$/util/stream/AbstractPipeline;->sourceStage:Lj$/util/stream/AbstractPipeline;

    iput-object v0, v2, Lj$/util/stream/AbstractPipeline;->sourceCloseAction:Ljava/lang/Runnable;

    .line 323
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 325
    .end local v1    # "closeAction":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method final copyInto(Lj$/util/stream/Sink;Lj$/util/Spliterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/stream/Sink<",
            "TP_IN;>;",
            "Lj$/util/Spliterator<",
            "TP_IN;>;)V"
        }
    .end annotation

    .line 480
    .local p0, "this":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    .local p1, "wrappedSink":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<TP_IN;>;"
    .local p2, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    sget-object v0, Lj$/util/stream/StreamOpFlag;->SHORT_CIRCUIT:Lj$/util/stream/StreamOpFlag;

    invoke-virtual {p0}, Lj$/util/stream/AbstractPipeline;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Lj$/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 483
    invoke-interface {p2}, Lj$/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lj$/util/stream/Sink;->begin(J)V

    .line 484
    invoke-interface {p2, p1}, Lj$/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 485
    invoke-interface {p1}, Lj$/util/stream/Sink;->end()V

    goto :goto_0

    .line 488
    :cond_0
    invoke-virtual {p0, p1, p2}, Lj$/util/stream/AbstractPipeline;->copyIntoWithCancel(Lj$/util/stream/Sink;Lj$/util/Spliterator;)Z

    .line 490
    :goto_0
    return-void
.end method

.method final copyIntoWithCancel(Lj$/util/stream/Sink;Lj$/util/Spliterator;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/stream/Sink<",
            "TP_IN;>;",
            "Lj$/util/Spliterator<",
            "TP_IN;>;)Z"
        }
    .end annotation

    .line 496
    .local p0, "this":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    .local p1, "wrappedSink":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<TP_IN;>;"
    .local p2, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    move-object v0, p0

    .line 497
    .local v0, "p":Lj$/util/stream/AbstractPipeline;
    :goto_0
    iget v1, v0, Lj$/util/stream/AbstractPipeline;->depth:I

    if-lez v1, :cond_0

    .line 498
    iget-object v0, v0, Lj$/util/stream/AbstractPipeline;->previousStage:Lj$/util/stream/AbstractPipeline;

    goto :goto_0

    .line 501
    :cond_0
    invoke-interface {p2}, Lj$/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v1

    invoke-interface {p1, v1, v2}, Lj$/util/stream/Sink;->begin(J)V

    .line 502
    invoke-virtual {v0, p2, p1}, Lj$/util/stream/AbstractPipeline;->forEachWithCancel(Lj$/util/Spliterator;Lj$/util/stream/Sink;)Z

    move-result v1

    .line 503
    .local v1, "cancelled":Z
    invoke-interface {p1}, Lj$/util/stream/Sink;->end()V

    .line 504
    return v1
.end method

.method final evaluate(Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/Node;
    .locals 2
    .param p2, "flatten"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/Spliterator<",
            "TP_IN;>;Z",
            "Ljava/util/function/IntFunction<",
            "[TE_OUT;>;)",
            "Lj$/util/stream/Node<",
            "TE_OUT;>;"
        }
    .end annotation

    .line 543
    .local p0, "this":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    .local p1, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p3, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TE_OUT;>;"
    invoke-virtual {p0}, Lj$/util/stream/AbstractPipeline;->isParallel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 545
    invoke-virtual {p0, p0, p1, p2, p3}, Lj$/util/stream/AbstractPipeline;->evaluateToNode(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/Node;

    move-result-object v0

    return-object v0

    .line 548
    :cond_0
    nop

    .line 549
    invoke-virtual {p0, p1}, Lj$/util/stream/AbstractPipeline;->exactOutputSizeIfKnown(Lj$/util/Spliterator;)J

    move-result-wide v0

    .line 548
    invoke-virtual {p0, v0, v1, p3}, Lj$/util/stream/AbstractPipeline;->makeNodeBuilder(JLjava/util/function/IntFunction;)Lj$/util/stream/Node$Builder;

    move-result-object v0

    .line 550
    .local v0, "nb":Lj$/util/stream/Node$Builder;, "Ljava/util/stream/Node$Builder<TE_OUT;>;"
    invoke-virtual {p0, v0, p1}, Lj$/util/stream/AbstractPipeline;->wrapAndCopyInto(Lj$/util/stream/Sink;Lj$/util/Spliterator;)Lj$/util/stream/Sink;

    move-result-object v1

    check-cast v1, Lj$/util/stream/Node$Builder;

    invoke-interface {v1}, Lj$/util/stream/Node$Builder;->build()Lj$/util/stream/Node;

    move-result-object v1

    return-object v1
.end method

.method final evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/stream/TerminalOp<",
            "TE_OUT;TR;>;)TR;"
        }
    .end annotation

    .line 227
    .local p0, "this":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    .local p1, "terminalOp":Lj$/util/stream/TerminalOp;, "Ljava/util/stream/TerminalOp<TE_OUT;TR;>;"
    nop

    .line 228
    iget-boolean v0, p0, Lj$/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    if-nez v0, :cond_1

    .line 230
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    .line 232
    invoke-virtual {p0}, Lj$/util/stream/AbstractPipeline;->isParallel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    invoke-interface {p1}, Lj$/util/stream/TerminalOp;->getOpFlags()I

    move-result v0

    invoke-direct {p0, v0}, Lj$/util/stream/AbstractPipeline;->sourceSpliterator(I)Lj$/util/Spliterator;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lj$/util/stream/TerminalOp;->evaluateParallel(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 234
    :cond_0
    invoke-interface {p1}, Lj$/util/stream/TerminalOp;->getOpFlags()I

    move-result v0

    invoke-direct {p0, v0}, Lj$/util/stream/AbstractPipeline;->sourceSpliterator(I)Lj$/util/Spliterator;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lj$/util/stream/TerminalOp;->evaluateSequential(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;)Ljava/lang/Object;

    move-result-object v0

    .line 232
    :goto_0
    return-object v0

    .line 229
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "stream has already been operated upon or closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final evaluateToArrayNode(Ljava/util/function/IntFunction;)Lj$/util/stream/Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/IntFunction<",
            "[TE_OUT;>;)",
            "Lj$/util/stream/Node<",
            "TE_OUT;>;"
        }
    .end annotation

    .line 245
    .local p0, "this":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    .local p1, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TE_OUT;>;"
    iget-boolean v0, p0, Lj$/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    if-nez v0, :cond_1

    .line 247
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    .line 251
    invoke-virtual {p0}, Lj$/util/stream/AbstractPipeline;->isParallel()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lj$/util/stream/AbstractPipeline;->previousStage:Lj$/util/stream/AbstractPipeline;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lj$/util/stream/AbstractPipeline;->opIsStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    iput v2, p0, Lj$/util/stream/AbstractPipeline;->depth:I

    .line 257
    iget-object v0, p0, Lj$/util/stream/AbstractPipeline;->previousStage:Lj$/util/stream/AbstractPipeline;

    iget-object v1, p0, Lj$/util/stream/AbstractPipeline;->previousStage:Lj$/util/stream/AbstractPipeline;

    invoke-direct {v1, v2}, Lj$/util/stream/AbstractPipeline;->sourceSpliterator(I)Lj$/util/Spliterator;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lj$/util/stream/AbstractPipeline;->opEvaluateParallel(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/Node;

    move-result-object v0

    return-object v0

    .line 260
    :cond_0
    invoke-direct {p0, v2}, Lj$/util/stream/AbstractPipeline;->sourceSpliterator(I)Lj$/util/Spliterator;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p1}, Lj$/util/stream/AbstractPipeline;->evaluate(Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/Node;

    move-result-object v0

    return-object v0

    .line 246
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "stream has already been operated upon or closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method abstract evaluateToNode(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/stream/PipelineHelper<",
            "TE_OUT;>;",
            "Lj$/util/Spliterator<",
            "TP_IN;>;Z",
            "Ljava/util/function/IntFunction<",
            "[TE_OUT;>;)",
            "Lj$/util/stream/Node<",
            "TE_OUT;>;"
        }
    .end annotation
.end method

.method final exactOutputSizeIfKnown(Lj$/util/Spliterator;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/Spliterator<",
            "TP_IN;>;)J"
        }
    .end annotation

    .line 469
    .local p0, "this":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    .local p1, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    sget-object v0, Lj$/util/stream/StreamOpFlag;->SIZED:Lj$/util/stream/StreamOpFlag;

    invoke-virtual {p0}, Lj$/util/stream/AbstractPipeline;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Lj$/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lj$/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method abstract forEachWithCancel(Lj$/util/Spliterator;Lj$/util/stream/Sink;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/Spliterator<",
            "TE_OUT;>;",
            "Lj$/util/stream/Sink<",
            "TE_OUT;>;)Z"
        }
    .end annotation
.end method

.method abstract getOutputShape()Lj$/util/stream/StreamShape;
.end method

.method final getSourceShape()Lj$/util/stream/StreamShape;
    .locals 2

    .line 460
    .local p0, "this":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    move-object v0, p0

    .line 461
    .local v0, "p":Lj$/util/stream/AbstractPipeline;
    :goto_0
    iget v1, v0, Lj$/util/stream/AbstractPipeline;->depth:I

    if-lez v1, :cond_0

    .line 462
    iget-object v0, v0, Lj$/util/stream/AbstractPipeline;->previousStage:Lj$/util/stream/AbstractPipeline;

    goto :goto_0

    .line 464
    :cond_0
    invoke-virtual {v0}, Lj$/util/stream/AbstractPipeline;->getOutputShape()Lj$/util/stream/StreamShape;

    move-result-object v1

    return-object v1
.end method

.method final getStreamAndOpFlags()I
    .locals 1

    .line 509
    .local p0, "this":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    iget v0, p0, Lj$/util/stream/AbstractPipeline;->combinedFlags:I

    return v0
.end method

.method final getStreamFlags()I
    .locals 1

    .line 386
    .local p0, "this":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    iget v0, p0, Lj$/util/stream/AbstractPipeline;->combinedFlags:I

    invoke-static {v0}, Lj$/util/stream/StreamOpFlag;->toStreamFlags(I)I

    move-result v0

    return v0
.end method

.method final isOrdered()Z
    .locals 2

    .line 513
    .local p0, "this":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    sget-object v0, Lj$/util/stream/StreamOpFlag;->ORDERED:Lj$/util/stream/StreamOpFlag;

    iget v1, p0, Lj$/util/stream/AbstractPipeline;->combinedFlags:I

    invoke-virtual {v0, v1}, Lj$/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    return v0
.end method

.method public final isParallel()Z
    .locals 1

    .line 373
    .local p0, "this":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    iget-object v0, p0, Lj$/util/stream/AbstractPipeline;->sourceStage:Lj$/util/stream/AbstractPipeline;

    iget-boolean v0, v0, Lj$/util/stream/AbstractPipeline;->parallel:Z

    return v0
.end method

.method synthetic lambda$spliterator$0$java-util-stream-AbstractPipeline()Lj$/util/Spliterator;
    .locals 1

    .line 367
    .local p0, "this":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lj$/util/stream/AbstractPipeline;->sourceSpliterator(I)Lj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method abstract lazySpliterator(Ljava/util/function/Supplier;)Lj$/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "+",
            "Lj$/util/Spliterator<",
            "TE_OUT;>;>;)",
            "Lj$/util/Spliterator<",
            "TE_OUT;>;"
        }
    .end annotation
.end method

.method abstract makeNodeBuilder(JLjava/util/function/IntFunction;)Lj$/util/stream/Node$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/IntFunction<",
            "[TE_OUT;>;)",
            "Lj$/util/stream/Node$Builder<",
            "TE_OUT;>;"
        }
    .end annotation
.end method

.method public onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;
    .locals 3
    .param p1, "closeHandler"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")TS;"
        }
    .end annotation

    .line 330
    .local p0, "this":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    iget-boolean v0, p0, Lj$/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    if-nez v0, :cond_1

    .line 332
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    iget-object v0, p0, Lj$/util/stream/AbstractPipeline;->sourceStage:Lj$/util/stream/AbstractPipeline;

    iget-object v0, v0, Lj$/util/stream/AbstractPipeline;->sourceCloseAction:Ljava/lang/Runnable;

    .line 334
    .local v0, "existingHandler":Ljava/lang/Runnable;
    iget-object v1, p0, Lj$/util/stream/AbstractPipeline;->sourceStage:Lj$/util/stream/AbstractPipeline;

    .line 335
    if-nez v0, :cond_0

    .line 336
    move-object v2, p1

    goto :goto_0

    .line 337
    :cond_0
    invoke-static {v0, p1}, Lj$/util/stream/Streams;->composeWithExceptions(Ljava/lang/Runnable;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v2

    :goto_0
    iput-object v2, v1, Lj$/util/stream/AbstractPipeline;->sourceCloseAction:Ljava/lang/Runnable;

    .line 338
    return-object p0

    .line 331
    .end local v0    # "existingHandler":Ljava/lang/Runnable;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "stream has already been operated upon or closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method opEvaluateParallel(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/stream/PipelineHelper<",
            "TE_OUT;>;",
            "Lj$/util/Spliterator<",
            "TP_IN;>;",
            "Ljava/util/function/IntFunction<",
            "[TE_OUT;>;)",
            "Lj$/util/stream/Node<",
            "TE_OUT;>;"
        }
    .end annotation

    .line 684
    .local p0, "this":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    .local p1, "helper":Lj$/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TE_OUT;>;"
    .local p2, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p3, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TE_OUT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Parallel evaluation is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method opEvaluateParallelLazy(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/stream/PipelineHelper<",
            "TE_OUT;>;",
            "Lj$/util/Spliterator<",
            "TP_IN;>;)",
            "Lj$/util/Spliterator<",
            "TE_OUT;>;"
        }
    .end annotation

    .line 710
    .local p0, "this":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    .local p1, "helper":Lj$/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TE_OUT;>;"
    .local p2, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    new-instance v0, Lj$/util/stream/AbstractPipeline$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lj$/util/stream/AbstractPipeline$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lj$/util/stream/AbstractPipeline;->opEvaluateParallel(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/Node;

    move-result-object v0

    invoke-interface {v0}, Lj$/util/stream/Node;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method abstract opIsStateful()Z
.end method

.method abstract opWrapSink(ILj$/util/stream/Sink;)Lj$/util/stream/Sink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lj$/util/stream/Sink<",
            "TE_OUT;>;)",
            "Lj$/util/stream/Sink<",
            "TE_IN;>;"
        }
    .end annotation
.end method

.method public final parallel()Lj$/util/stream/BaseStream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 311
    .local p0, "this":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    iget-object v0, p0, Lj$/util/stream/AbstractPipeline;->sourceStage:Lj$/util/stream/AbstractPipeline;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lj$/util/stream/AbstractPipeline;->parallel:Z

    .line 312
    return-object p0
.end method

.method public final sequential()Lj$/util/stream/BaseStream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 304
    .local p0, "this":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    iget-object v0, p0, Lj$/util/stream/AbstractPipeline;->sourceStage:Lj$/util/stream/AbstractPipeline;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lj$/util/stream/AbstractPipeline;->parallel:Z

    .line 305
    return-object p0
.end method

.method final sourceStageSpliterator()Lj$/util/Spliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/Spliterator<",
            "TE_OUT;>;"
        }
    .end annotation

    .line 275
    .local p0, "this":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    iget-object v0, p0, Lj$/util/stream/AbstractPipeline;->sourceStage:Lj$/util/stream/AbstractPipeline;

    if-ne p0, v0, :cond_3

    .line 278
    iget-boolean v0, p0, Lj$/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    if-nez v0, :cond_2

    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    .line 282
    iget-object v0, p0, Lj$/util/stream/AbstractPipeline;->sourceStage:Lj$/util/stream/AbstractPipeline;

    iget-object v0, v0, Lj$/util/stream/AbstractPipeline;->sourceSpliterator:Lj$/util/Spliterator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lj$/util/stream/AbstractPipeline;->sourceStage:Lj$/util/stream/AbstractPipeline;

    iget-object v0, v0, Lj$/util/stream/AbstractPipeline;->sourceSpliterator:Lj$/util/Spliterator;

    .line 285
    .local v0, "s":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TE_OUT;>;"
    iget-object v2, p0, Lj$/util/stream/AbstractPipeline;->sourceStage:Lj$/util/stream/AbstractPipeline;

    iput-object v1, v2, Lj$/util/stream/AbstractPipeline;->sourceSpliterator:Lj$/util/Spliterator;

    .line 286
    return-object v0

    .line 288
    .end local v0    # "s":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TE_OUT;>;"
    :cond_0
    iget-object v0, p0, Lj$/util/stream/AbstractPipeline;->sourceStage:Lj$/util/stream/AbstractPipeline;

    iget-object v0, v0, Lj$/util/stream/AbstractPipeline;->sourceSupplier:Ljava/util/function/Supplier;

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lj$/util/stream/AbstractPipeline;->sourceStage:Lj$/util/stream/AbstractPipeline;

    iget-object v0, v0, Lj$/util/stream/AbstractPipeline;->sourceSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/Spliterator;

    .line 291
    .restart local v0    # "s":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TE_OUT;>;"
    iget-object v2, p0, Lj$/util/stream/AbstractPipeline;->sourceStage:Lj$/util/stream/AbstractPipeline;

    iput-object v1, v2, Lj$/util/stream/AbstractPipeline;->sourceSupplier:Ljava/util/function/Supplier;

    .line 292
    return-object v0

    .line 295
    .end local v0    # "s":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TE_OUT;>;"
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "source already consumed or closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "stream has already been operated upon or closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public spliterator()Lj$/util/Spliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/Spliterator<",
            "TE_OUT;>;"
        }
    .end annotation

    .line 345
    .local p0, "this":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    iget-boolean v0, p0, Lj$/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    if-nez v0, :cond_3

    .line 347
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    .line 349
    iget-object v0, p0, Lj$/util/stream/AbstractPipeline;->sourceStage:Lj$/util/stream/AbstractPipeline;

    if-ne p0, v0, :cond_2

    .line 350
    iget-object v0, p0, Lj$/util/stream/AbstractPipeline;->sourceStage:Lj$/util/stream/AbstractPipeline;

    iget-object v0, v0, Lj$/util/stream/AbstractPipeline;->sourceSpliterator:Lj$/util/Spliterator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lj$/util/stream/AbstractPipeline;->sourceStage:Lj$/util/stream/AbstractPipeline;

    iget-object v0, v0, Lj$/util/stream/AbstractPipeline;->sourceSpliterator:Lj$/util/Spliterator;

    .line 353
    .local v0, "s":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TE_OUT;>;"
    iget-object v2, p0, Lj$/util/stream/AbstractPipeline;->sourceStage:Lj$/util/stream/AbstractPipeline;

    iput-object v1, v2, Lj$/util/stream/AbstractPipeline;->sourceSpliterator:Lj$/util/Spliterator;

    .line 354
    return-object v0

    .line 356
    .end local v0    # "s":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TE_OUT;>;"
    :cond_0
    iget-object v0, p0, Lj$/util/stream/AbstractPipeline;->sourceStage:Lj$/util/stream/AbstractPipeline;

    iget-object v0, v0, Lj$/util/stream/AbstractPipeline;->sourceSupplier:Ljava/util/function/Supplier;

    if-eqz v0, :cond_1

    .line 358
    iget-object v0, p0, Lj$/util/stream/AbstractPipeline;->sourceStage:Lj$/util/stream/AbstractPipeline;

    iget-object v0, v0, Lj$/util/stream/AbstractPipeline;->sourceSupplier:Ljava/util/function/Supplier;

    .line 359
    .local v0, "s":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/Spliterator<TE_OUT;>;>;"
    iget-object v2, p0, Lj$/util/stream/AbstractPipeline;->sourceStage:Lj$/util/stream/AbstractPipeline;

    iput-object v1, v2, Lj$/util/stream/AbstractPipeline;->sourceSupplier:Ljava/util/function/Supplier;

    .line 360
    invoke-virtual {p0, v0}, Lj$/util/stream/AbstractPipeline;->lazySpliterator(Ljava/util/function/Supplier;)Lj$/util/Spliterator;

    move-result-object v1

    return-object v1

    .line 363
    .end local v0    # "s":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/Spliterator<TE_OUT;>;>;"
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "source already consumed or closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    :cond_2
    new-instance v0, Lj$/util/stream/AbstractPipeline$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lj$/util/stream/AbstractPipeline$$ExternalSyntheticLambda0;-><init>(Lj$/util/stream/AbstractPipeline;)V

    invoke-virtual {p0}, Lj$/util/stream/AbstractPipeline;->isParallel()Z

    move-result v1

    invoke-virtual {p0, p0, v0, v1}, Lj$/util/stream/AbstractPipeline;->wrap(Lj$/util/stream/PipelineHelper;Ljava/util/function/Supplier;Z)Lj$/util/Spliterator;

    move-result-object v0

    return-object v0

    .line 346
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "stream has already been operated upon or closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method abstract wrap(Lj$/util/stream/PipelineHelper;Ljava/util/function/Supplier;Z)Lj$/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/stream/PipelineHelper<",
            "TE_OUT;>;",
            "Ljava/util/function/Supplier<",
            "Lj$/util/Spliterator<",
            "TP_IN;>;>;Z)",
            "Lj$/util/Spliterator<",
            "TE_OUT;>;"
        }
    .end annotation
.end method

.method final wrapAndCopyInto(Lj$/util/stream/Sink;Lj$/util/Spliterator;)Lj$/util/stream/Sink;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            "S::",
            "Lj$/util/stream/Sink<",
            "TE_OUT;>;>(TS;",
            "Lj$/util/Spliterator<",
            "TP_IN;>;)TS;"
        }
    .end annotation

    .line 474
    .local p0, "this":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    .local p1, "sink":Lj$/util/stream/Sink;, "TS;"
    .local p2, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/stream/Sink;

    invoke-virtual {p0, v0}, Lj$/util/stream/AbstractPipeline;->wrapSink(Lj$/util/stream/Sink;)Lj$/util/stream/Sink;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lj$/util/stream/AbstractPipeline;->copyInto(Lj$/util/stream/Sink;Lj$/util/Spliterator;)V

    .line 475
    return-object p1
.end method

.method final wrapSink(Lj$/util/stream/Sink;)Lj$/util/stream/Sink;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/stream/Sink<",
            "TE_OUT;>;)",
            "Lj$/util/stream/Sink<",
            "TP_IN;>;"
        }
    .end annotation

    .line 519
    .local p0, "this":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    .local p1, "sink":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<TE_OUT;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    move-object v0, p0

    .local v0, "p":Lj$/util/stream/AbstractPipeline;
    :goto_0
    iget v1, v0, Lj$/util/stream/AbstractPipeline;->depth:I

    if-lez v1, :cond_0

    .line 522
    iget-object v1, v0, Lj$/util/stream/AbstractPipeline;->previousStage:Lj$/util/stream/AbstractPipeline;

    iget v1, v1, Lj$/util/stream/AbstractPipeline;->combinedFlags:I

    invoke-virtual {v0, v1, p1}, Lj$/util/stream/AbstractPipeline;->opWrapSink(ILj$/util/stream/Sink;)Lj$/util/stream/Sink;

    move-result-object p1

    .line 521
    iget-object v0, v0, Lj$/util/stream/AbstractPipeline;->previousStage:Lj$/util/stream/AbstractPipeline;

    goto :goto_0

    .line 524
    .end local v0    # "p":Lj$/util/stream/AbstractPipeline;
    :cond_0
    return-object p1
.end method

.method final wrapSpliterator(Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/Spliterator<",
            "TP_IN;>;)",
            "Lj$/util/Spliterator<",
            "TE_OUT;>;"
        }
    .end annotation

    .line 530
    .local p0, "this":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    .local p1, "sourceSpliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    iget v0, p0, Lj$/util/stream/AbstractPipeline;->depth:I

    if-nez v0, :cond_0

    .line 531
    return-object p1

    .line 534
    :cond_0
    new-instance v0, Lj$/util/stream/AbstractPipeline$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lj$/util/stream/AbstractPipeline$$ExternalSyntheticLambda1;-><init>(Lj$/util/Spliterator;)V

    invoke-virtual {p0}, Lj$/util/stream/AbstractPipeline;->isParallel()Z

    move-result v1

    invoke-virtual {p0, p0, v0, v1}, Lj$/util/stream/AbstractPipeline;->wrap(Lj$/util/stream/PipelineHelper;Ljava/util/function/Supplier;Z)Lj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
