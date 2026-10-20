.class abstract Lj$/util/stream/DoublePipeline;
.super Lj$/util/stream/AbstractPipeline;
.source "DoublePipeline.java"

# interfaces
.implements Lj$/util/stream/DoubleStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/util/stream/DoublePipeline$StatefulOp;,
        Lj$/util/stream/DoublePipeline$StatelessOp;,
        Lj$/util/stream/DoublePipeline$Head;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E_IN:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/stream/AbstractPipeline<",
        "TE_IN;",
        "Ljava/lang/Double;",
        "Lj$/util/stream/DoubleStream;",
        ">;",
        "Lj$/util/stream/DoubleStream;"
    }
.end annotation


# direct methods
.method static bridge synthetic -$$Nest$smadapt(Lj$/util/Spliterator;)Lj$/util/Spliterator$OfDouble;
    .locals 0

    invoke-static {p0}, Lj$/util/stream/DoublePipeline;->adapt(Lj$/util/Spliterator;)Lj$/util/Spliterator$OfDouble;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lj$/util/Spliterator;IZ)V
    .locals 0
    .param p2, "sourceFlags"    # I
    .param p3, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/Spliterator<",
            "Ljava/lang/Double;",
            ">;IZ)V"
        }
    .end annotation

    .line 79
    .local p0, "this":Lj$/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    .local p1, "source":Lj$/util/Spliterator;, "Ljava/util/Spliterator<Ljava/lang/Double;>;"
    invoke-direct {p0, p1, p2, p3}, Lj$/util/stream/AbstractPipeline;-><init>(Lj$/util/Spliterator;IZ)V

    .line 80
    return-void
.end method

.method constructor <init>(Lj$/util/stream/AbstractPipeline;I)V
    .locals 0
    .param p2, "opFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/AbstractPipeline<",
            "*TE_IN;*>;I)V"
        }
    .end annotation

    .line 90
    .local p0, "this":Lj$/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    .local p1, "upstream":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*TE_IN;*>;"
    invoke-direct {p0, p1, p2}, Lj$/util/stream/AbstractPipeline;-><init>(Lj$/util/stream/AbstractPipeline;I)V

    .line 91
    return-void
.end method

.method constructor <init>(Ljava/util/function/Supplier;IZ)V
    .locals 0
    .param p2, "sourceFlags"    # I
    .param p3, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "+",
            "Lj$/util/Spliterator<",
            "Ljava/lang/Double;",
            ">;>;IZ)V"
        }
    .end annotation

    .line 67
    .local p0, "this":Lj$/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    .local p1, "source":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+Ljava/util/Spliterator<Ljava/lang/Double;>;>;"
    invoke-direct {p0, p1, p2, p3}, Lj$/util/stream/AbstractPipeline;-><init>(Ljava/util/function/Supplier;IZ)V

    .line 68
    return-void
.end method

.method private static adapt(Lj$/util/Spliterator;)Lj$/util/Spliterator$OfDouble;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/Spliterator<",
            "Ljava/lang/Double;",
            ">;)",
            "Lj$/util/Spliterator$OfDouble;"
        }
    .end annotation

    .line 116
    .local p0, "s":Lj$/util/Spliterator;, "Ljava/util/Spliterator<Ljava/lang/Double;>;"
    instance-of v0, p0, Lj$/util/Spliterator$OfDouble;

    if-eqz v0, :cond_0

    .line 117
    move-object v0, p0

    check-cast v0, Lj$/util/Spliterator$OfDouble;

    return-object v0

    .line 119
    :cond_0
    sget-boolean v0, Lj$/util/stream/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_1

    .line 120
    const-class v0, Lj$/util/stream/AbstractPipeline;

    const-string v1, "using DoubleStream.adapt(Spliterator<Double> s)"

    invoke-static {v0, v1}, Lj$/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 122
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "DoubleStream.adapt(Spliterator<Double> s)"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static adapt(Lj$/util/stream/Sink;)Ljava/util/function/DoubleConsumer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/Sink<",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/util/function/DoubleConsumer;"
        }
    .end annotation

    .line 98
    .local p0, "sink":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<Ljava/lang/Double;>;"
    instance-of v0, p0, Ljava/util/function/DoubleConsumer;

    if-eqz v0, :cond_0

    .line 99
    move-object v0, p0

    check-cast v0, Ljava/util/function/DoubleConsumer;

    return-object v0

    .line 101
    :cond_0
    sget-boolean v0, Lj$/util/stream/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_1

    .line 102
    const-class v0, Lj$/util/stream/AbstractPipeline;

    const-string v1, "using DoubleStream.adapt(Sink<Double> s)"

    invoke-static {v0, v1}, Lj$/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 104
    :cond_1
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/stream/DoublePipeline$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lj$/util/stream/DoublePipeline$$ExternalSyntheticLambda0;-><init>(Lj$/util/stream/Sink;)V

    return-object v0
.end method

.method static synthetic lambda$average$4()[D
    .locals 1

    .line 467
    const/4 v0, 0x4

    new-array v0, v0, [D

    return-object v0
.end method

.method static synthetic lambda$average$5([DD)V
    .locals 5
    .param p0, "ll"    # [D
    .param p1, "d"    # D

    .line 469
    const/4 v0, 0x2

    aget-wide v1, p0, v0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    add-double/2addr v1, v3

    aput-wide v1, p0, v0

    .line 470
    invoke-static {p0, p1, p2}, Lj$/util/stream/Collectors;->sumWithCompensation([DD)[D

    .line 471
    const/4 v0, 0x3

    aget-wide v1, p0, v0

    add-double/2addr v1, p1

    aput-wide v1, p0, v0

    .line 472
    return-void
.end method

.method static synthetic lambda$average$6([D[D)V
    .locals 5
    .param p0, "ll"    # [D
    .param p1, "rr"    # [D

    .line 474
    const/4 v0, 0x0

    aget-wide v0, p1, v0

    invoke-static {p0, v0, v1}, Lj$/util/stream/Collectors;->sumWithCompensation([DD)[D

    .line 475
    const/4 v0, 0x1

    aget-wide v0, p1, v0

    invoke-static {p0, v0, v1}, Lj$/util/stream/Collectors;->sumWithCompensation([DD)[D

    .line 476
    const/4 v0, 0x2

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-double/2addr v1, v3

    aput-wide v1, p0, v0

    .line 477
    const/4 v0, 0x3

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-double/2addr v1, v3

    aput-wide v1, p0, v0

    .line 478
    return-void
.end method

.method static synthetic lambda$collect$7(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "combiner"    # Ljava/util/function/BiConsumer;
    .param p1, "left"    # Ljava/lang/Object;
    .param p2, "right"    # Ljava/lang/Object;

    .line 511
    invoke-interface {p0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 512
    return-object p1
.end method

.method static synthetic lambda$distinct$0(Ljava/lang/Double;)D
    .locals 2
    .param p0, "i"    # Ljava/lang/Double;

    .line 400
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic lambda$sum$1()[D
    .locals 1

    .line 425
    const/4 v0, 0x3

    new-array v0, v0, [D

    return-object v0
.end method

.method static synthetic lambda$sum$2([DD)V
    .locals 3
    .param p0, "ll"    # [D
    .param p1, "d"    # D

    .line 427
    invoke-static {p0, p1, p2}, Lj$/util/stream/Collectors;->sumWithCompensation([DD)[D

    .line 428
    const/4 v0, 0x2

    aget-wide v1, p0, v0

    add-double/2addr v1, p1

    aput-wide v1, p0, v0

    .line 429
    return-void
.end method

.method static synthetic lambda$sum$3([D[D)V
    .locals 5
    .param p0, "ll"    # [D
    .param p1, "rr"    # [D

    .line 431
    const/4 v0, 0x0

    aget-wide v0, p1, v0

    invoke-static {p0, v0, v1}, Lj$/util/stream/Collectors;->sumWithCompensation([DD)[D

    .line 432
    const/4 v0, 0x1

    aget-wide v0, p1, v0

    invoke-static {p0, v0, v1}, Lj$/util/stream/Collectors;->sumWithCompensation([DD)[D

    .line 433
    const/4 v0, 0x2

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-double/2addr v1, v3

    aput-wide v1, p0, v0

    .line 434
    return-void
.end method

.method static synthetic lambda$toArray$8(I)[Ljava/lang/Double;
    .locals 1
    .param p0, "x$0"    # I

    .line 544
    new-array v0, p0, [Ljava/lang/Double;

    return-object v0
.end method

.method private mapToObj(Ljava/util/function/DoubleFunction;I)Lj$/util/stream/Stream;
    .locals 7
    .param p2, "opFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/DoubleFunction<",
            "+TU;>;I)",
            "Lj$/util/stream/Stream<",
            "TU;>;"
        }
    .end annotation

    .line 170
    .local p0, "this":Lj$/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    .local p1, "mapper":Ljava/util/function/DoubleFunction;, "Ljava/util/function/DoubleFunction<+TU;>;"
    new-instance v6, Lj$/util/stream/DoublePipeline$1;

    sget-object v3, Lj$/util/stream/StreamShape;->DOUBLE_VALUE:Lj$/util/stream/StreamShape;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/DoublePipeline$1;-><init>(Lj$/util/stream/DoublePipeline;Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;ILjava/util/function/DoubleFunction;)V

    return-object v6
.end method


# virtual methods
.method public final allMatch(Ljava/util/function/DoublePredicate;)Z
    .locals 1
    .param p1, "predicate"    # Ljava/util/function/DoublePredicate;

    .line 524
    .local p0, "this":Lj$/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    sget-object v0, Lj$/util/stream/MatchOps$MatchKind;->ALL:Lj$/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v0}, Lj$/util/stream/MatchOps;->makeDouble(Ljava/util/function/DoublePredicate;Lj$/util/stream/MatchOps$MatchKind;)Lj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/util/stream/DoublePipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final anyMatch(Ljava/util/function/DoublePredicate;)Z
    .locals 1
    .param p1, "predicate"    # Ljava/util/function/DoublePredicate;

    .line 519
    .local p0, "this":Lj$/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    sget-object v0, Lj$/util/stream/MatchOps$MatchKind;->ANY:Lj$/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v0}, Lj$/util/stream/MatchOps;->makeDouble(Ljava/util/function/DoublePredicate;Lj$/util/stream/MatchOps$MatchKind;)Lj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/util/stream/DoublePipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final average()Lj$/util/OptionalDouble;
    .locals 7

    .line 467
    .local p0, "this":Lj$/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    new-instance v0, Lj$/util/stream/DoublePipeline$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lj$/util/stream/DoublePipeline$$ExternalSyntheticLambda12;-><init>()V

    new-instance v1, Lj$/util/stream/DoublePipeline$$ExternalSyntheticLambda13;

    invoke-direct {v1}, Lj$/util/stream/DoublePipeline$$ExternalSyntheticLambda13;-><init>()V

    new-instance v2, Lj$/util/stream/DoublePipeline$$ExternalSyntheticLambda14;

    invoke-direct {v2}, Lj$/util/stream/DoublePipeline$$ExternalSyntheticLambda14;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lj$/util/stream/DoublePipeline;->collect(Ljava/util/function/Supplier;Ljava/util/function/ObjDoubleConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 479
    .local v0, "avg":[D
    const/4 v1, 0x2

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-lez v6, :cond_0

    .line 480
    invoke-static {v0}, Lj$/util/stream/Collectors;->computeFinalSum([D)D

    move-result-wide v2

    aget-wide v4, v0, v1

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Lj$/util/OptionalDouble;->of(D)Lj$/util/OptionalDouble;

    move-result-object v1

    goto :goto_0

    .line 481
    :cond_0
    invoke-static {}, Lj$/util/OptionalDouble;->empty()Lj$/util/OptionalDouble;

    move-result-object v1

    .line 479
    :goto_0
    return-object v1
.end method

.method public final boxed()Lj$/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/stream/Stream<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 199
    .local p0, "this":Lj$/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    new-instance v0, Lj$/util/stream/DoublePipeline$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lj$/util/stream/DoublePipeline$$ExternalSyntheticLambda3;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lj$/util/stream/DoublePipeline;->mapToObj(Ljava/util/function/DoubleFunction;I)Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final collect(Ljava/util/function/Supplier;Ljava/util/function/ObjDoubleConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TR;>;",
            "Ljava/util/function/ObjDoubleConsumer<",
            "TR;>;",
            "Ljava/util/function/BiConsumer<",
            "TR;TR;>;)TR;"
        }
    .end annotation

    .line 509
    .local p0, "this":Lj$/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TR;>;"
    .local p2, "accumulator":Ljava/util/function/ObjDoubleConsumer;, "Ljava/util/function/ObjDoubleConsumer<TR;>;"
    .local p3, "combiner":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TR;TR;>;"
    invoke-static {p3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    new-instance v0, Lj$/util/stream/DoublePipeline$$ExternalSyntheticLambda6;

    invoke-direct {v0, p3}, Lj$/util/stream/DoublePipeline$$ExternalSyntheticLambda6;-><init>(Ljava/util/function/BiConsumer;)V

    .line 514
    .local v0, "operator":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TR;>;"
    invoke-static {p1, p2, v0}, Lj$/util/stream/ReduceOps;->makeDouble(Ljava/util/function/Supplier;Ljava/util/function/ObjDoubleConsumer;Ljava/util/function/BinaryOperator;)Lj$/util/stream/TerminalOp;

    move-result-object v1

    invoke-virtual {p0, v1}, Lj$/util/stream/DoublePipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public final count()J
    .locals 2

    .line 486
    .local p0, "this":Lj$/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-static {}, Lj$/util/stream/ReduceOps;->makeDoubleCounting()Lj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/util/stream/DoublePipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final distinct()Lj$/util/stream/DoubleStream;
    .locals 2

    .line 400
    .local p0, "this":Lj$/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-virtual {p0}, Lj$/util/stream/DoublePipeline;->boxed()Lj$/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Lj$/util/stream/Stream;->distinct()Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lj$/util/stream/DoublePipeline$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lj$/util/stream/DoublePipeline$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->mapToDouble(Ljava/util/function/ToDoubleFunction;)Lj$/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public final dropWhile(Ljava/util/function/DoublePredicate;)Lj$/util/stream/DoubleStream;
    .locals 1
    .param p1, "predicate"    # Ljava/util/function/DoublePredicate;

    .line 388
    .local p0, "this":Lj$/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-static {p0, p1}, Lj$/util/stream/WhileOps;->makeDropWhileDouble(Lj$/util/stream/AbstractPipeline;Ljava/util/function/DoublePredicate;)Lj$/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method final evaluateToNode(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/Node;
    .locals 1
    .param p3, "flattenTree"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/stream/PipelineHelper<",
            "Ljava/lang/Double;",
            ">;",
            "Lj$/util/Spliterator<",
            "TP_IN;>;Z",
            "Ljava/util/function/IntFunction<",
            "[",
            "Ljava/lang/Double;",
            ">;)",
            "Lj$/util/stream/Node<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 139
    .local p0, "this":Lj$/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    .local p1, "helper":Lj$/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Double;>;"
    .local p2, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p4, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[Ljava/lang/Double;>;"
    invoke-static {p1, p2, p3}, Lj$/util/stream/Nodes;->collectDouble(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;Z)Lj$/util/stream/Node$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public final filter(Ljava/util/function/DoublePredicate;)Lj$/util/stream/DoubleStream;
    .locals 7
    .param p1, "predicate"    # Ljava/util/function/DoublePredicate;

    .line 321
    .local p0, "this":Lj$/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    new-instance v6, Lj$/util/stream/DoublePipeline$7;

    sget-object v3, Lj$/util/stream/StreamShape;->DOUBLE_VALUE:Lj$/util/stream/StreamShape;

    sget v4, Lj$/util/stream/StreamOpFlag;->NOT_SIZED:I

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/DoublePipeline$7;-><init>(Lj$/util/stream/DoublePipeline;Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;ILjava/util/function/DoublePredicate;)V

    return-object v6
.end method

.method public final findAny()Lj$/util/OptionalDouble;
    .locals 1

    .line 539
    .local p0, "this":Lj$/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    const/4 v0, 0x0

    invoke-static {v0}, Lj$/util/stream/FindOps;->makeDouble(Z)Lj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/util/stream/DoublePipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/OptionalDouble;

    return-object v0
.end method

.method public final findFirst()Lj$/util/OptionalDouble;
    .locals 1

    .line 534
    .local p0, "this":Lj$/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    const/4 v0, 0x1

    invoke-static {v0}, Lj$/util/stream/FindOps;->makeDouble(Z)Lj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/util/stream/DoublePipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/OptionalDouble;

    return-object v0
.end method

.method public final flatMap(Ljava/util/function/DoubleFunction;)Lj$/util/stream/DoubleStream;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/DoubleFunction<",
            "+",
            "Lj$/util/stream/DoubleStream;",
            ">;)",
            "Lj$/util/stream/DoubleStream;"
        }
    .end annotation

    .line 261
    .local p0, "this":Lj$/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    .local p1, "mapper":Ljava/util/function/DoubleFunction;, "Ljava/util/function/DoubleFunction<+Ljava/util/stream/DoubleStream;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    new-instance v6, Lj$/util/stream/DoublePipeline$5;

    sget-object v3, Lj$/util/stream/StreamShape;->DOUBLE_VALUE:Lj$/util/stream/StreamShape;

    sget v0, Lj$/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Lj$/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v0, v1

    sget v1, Lj$/util/stream/StreamOpFlag;->NOT_SIZED:I

    or-int v4, v0, v1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/DoublePipeline$5;-><init>(Lj$/util/stream/DoublePipeline;Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;ILjava/util/function/DoubleFunction;)V

    return-object v6
.end method

.method public forEach(Ljava/util/function/DoubleConsumer;)V
    .locals 1
    .param p1, "consumer"    # Ljava/util/function/DoubleConsumer;

    .line 407
    .local p0, "this":Lj$/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lj$/util/stream/ForEachOps;->makeDouble(Ljava/util/function/DoubleConsumer;Z)Lj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/util/stream/DoublePipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    .line 408
    return-void
.end method

.method public forEachOrdered(Ljava/util/function/DoubleConsumer;)V
    .locals 1
    .param p1, "consumer"    # Ljava/util/function/DoubleConsumer;

    .line 412
    .local p0, "this":Lj$/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lj$/util/stream/ForEachOps;->makeDouble(Ljava/util/function/DoubleConsumer;Z)Lj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/util/stream/DoublePipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    .line 413
    return-void
.end method

.method final forEachWithCancel(Lj$/util/Spliterator;Lj$/util/stream/Sink;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/Spliterator<",
            "Ljava/lang/Double;",
            ">;",
            "Lj$/util/stream/Sink<",
            "Ljava/lang/Double;",
            ">;)Z"
        }
    .end annotation

    .line 157
    .local p0, "this":Lj$/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    .local p1, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<Ljava/lang/Double;>;"
    .local p2, "sink":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<Ljava/lang/Double;>;"
    invoke-static {p1}, Lj$/util/stream/DoublePipeline;->adapt(Lj$/util/Spliterator;)Lj$/util/Spliterator$OfDouble;

    move-result-object v0

    .line 158
    .local v0, "spl":Lj$/util/Spliterator$OfDouble;
    invoke-static {p2}, Lj$/util/stream/DoublePipeline;->adapt(Lj$/util/stream/Sink;)Ljava/util/function/DoubleConsumer;

    move-result-object v1

    .line 160
    .local v1, "adaptedSink":Ljava/util/function/DoubleConsumer;
    :cond_0
    invoke-interface {p2}, Lj$/util/stream/Sink;->cancellationRequested()Z

    move-result v2

    move v3, v2

    .local v3, "cancelled":Z
    if-nez v2, :cond_1

    invoke-interface {v0, v1}, Lj$/util/Spliterator$OfDouble;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 161
    :cond_1
    return v3
.end method

.method final getOutputShape()Lj$/util/stream/StreamShape;
    .locals 1

    .line 131
    .local p0, "this":Lj$/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    sget-object v0, Lj$/util/stream/StreamShape;->DOUBLE_VALUE:Lj$/util/stream/StreamShape;

    return-object v0
.end method

.method public final iterator()Lj$/util/PrimitiveIterator$OfDouble;
    .locals 1

    .line 187
    .local p0, "this":Lj$/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-virtual {p0}, Lj$/util/stream/DoublePipeline;->spliterator()Lj$/util/Spliterator$OfDouble;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Spliterators;->iterator(Lj$/util/Spliterator$OfDouble;)Lj$/util/PrimitiveIterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 54
    .local p0, "this":Lj$/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-virtual {p0}, Lj$/util/stream/DoublePipeline;->iterator()Lj$/util/PrimitiveIterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method final lazySpliterator(Ljava/util/function/Supplier;)Lj$/util/Spliterator$OfDouble;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "+",
            "Lj$/util/Spliterator<",
            "Ljava/lang/Double;",
            ">;>;)",
            "Lj$/util/Spliterator$OfDouble;"
        }
    .end annotation

    .line 152
    .local p0, "this":Lj$/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+Ljava/util/Spliterator<Ljava/lang/Double;>;>;"
    new-instance v0, Lj$/util/stream/StreamSpliterators$DelegatingSpliterator$OfDouble;

    invoke-direct {v0, p1}, Lj$/util/stream/StreamSpliterators$DelegatingSpliterator$OfDouble;-><init>(Ljava/util/function/Supplier;)V

    return-object v0
.end method

.method bridge synthetic lazySpliterator(Ljava/util/function/Supplier;)Lj$/util/Spliterator;
    .locals 0

    .line 54
    .local p0, "this":Lj$/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-virtual {p0, p1}, Lj$/util/stream/DoublePipeline;->lazySpliterator(Ljava/util/function/Supplier;)Lj$/util/Spliterator$OfDouble;

    move-result-object p1

    return-object p1
.end method

.method public final limit(J)Lj$/util/stream/DoubleStream;
    .locals 3
    .param p1, "maxSize"    # J

    .line 364
    .local p0, "this":Lj$/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 366
    invoke-static {p0, v0, v1, p1, p2}, Lj$/util/stream/SliceOps;->makeDouble(Lj$/util/stream/AbstractPipeline;JJ)Lj$/util/stream/DoubleStream;

    move-result-object v0

    return-object v0

    .line 365
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final makeNodeBuilder(JLjava/util/function/IntFunction;)Lj$/util/stream/Node$Builder;
    .locals 1
    .param p1, "exactSizeIfKnown"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/IntFunction<",
            "[",
            "Ljava/lang/Double;",
            ">;)",
            "Lj$/util/stream/Node$Builder<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 166
    .local p0, "this":Lj$/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    .local p3, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[Ljava/lang/Double;>;"
    invoke-static {p1, p2}, Lj$/util/stream/Nodes;->doubleBuilder(J)Lj$/util/stream/Node$Builder$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public final map(Ljava/util/function/DoubleUnaryOperator;)Lj$/util/stream/DoubleStream;
    .locals 7
    .param p1, "mapper"    # Ljava/util/function/DoubleUnaryOperator;

    .line 204
    .local p0, "this":Lj$/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    new-instance v6, Lj$/util/stream/DoublePipeline$2;

    sget-object v3, Lj$/util/stream/StreamShape;->DOUBLE_VALUE:Lj$/util/stream/StreamShape;

    sget v0, Lj$/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Lj$/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v0, v1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/DoublePipeline$2;-><init>(Lj$/util/stream/DoublePipeline;Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;ILjava/util/function/DoubleUnaryOperator;)V

    return-object v6
.end method

.method public final mapToInt(Ljava/util/function/DoubleToIntFunction;)Lj$/util/stream/IntStream;
    .locals 7
    .param p1, "mapper"    # Ljava/util/function/DoubleToIntFunction;

    .line 227
    .local p0, "this":Lj$/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    new-instance v6, Lj$/util/stream/DoublePipeline$3;

    sget-object v3, Lj$/util/stream/StreamShape;->DOUBLE_VALUE:Lj$/util/stream/StreamShape;

    sget v0, Lj$/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Lj$/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v0, v1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/DoublePipeline$3;-><init>(Lj$/util/stream/DoublePipeline;Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;ILjava/util/function/DoubleToIntFunction;)V

    return-object v6
.end method

.method public final mapToLong(Ljava/util/function/DoubleToLongFunction;)Lj$/util/stream/LongStream;
    .locals 7
    .param p1, "mapper"    # Ljava/util/function/DoubleToLongFunction;

    .line 244
    .local p0, "this":Lj$/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    new-instance v6, Lj$/util/stream/DoublePipeline$4;

    sget-object v3, Lj$/util/stream/StreamShape;->DOUBLE_VALUE:Lj$/util/stream/StreamShape;

    sget v0, Lj$/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Lj$/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v0, v1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/DoublePipeline$4;-><init>(Lj$/util/stream/DoublePipeline;Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;ILjava/util/function/DoubleToLongFunction;)V

    return-object v6
.end method

.method public final mapToObj(Ljava/util/function/DoubleFunction;)Lj$/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/DoubleFunction<",
            "+TU;>;)",
            "Lj$/util/stream/Stream<",
            "TU;>;"
        }
    .end annotation

    .line 221
    .local p0, "this":Lj$/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    .local p1, "mapper":Ljava/util/function/DoubleFunction;, "Ljava/util/function/DoubleFunction<+TU;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget v0, Lj$/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Lj$/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Lj$/util/stream/DoublePipeline;->mapToObj(Ljava/util/function/DoubleFunction;I)Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final max()Lj$/util/OptionalDouble;
    .locals 1

    .line 446
    .local p0, "this":Lj$/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    new-instance v0, Lj$/util/stream/DoublePipeline$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lj$/util/stream/DoublePipeline$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {p0, v0}, Lj$/util/stream/DoublePipeline;->reduce(Ljava/util/function/DoubleBinaryOperator;)Lj$/util/OptionalDouble;

    move-result-object v0

    return-object v0
.end method

.method public final min()Lj$/util/OptionalDouble;
    .locals 1

    .line 441
    .local p0, "this":Lj$/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    new-instance v0, Lj$/util/stream/DoublePipeline$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lj$/util/stream/DoublePipeline$$ExternalSyntheticLambda11;-><init>()V

    invoke-virtual {p0, v0}, Lj$/util/stream/DoublePipeline;->reduce(Ljava/util/function/DoubleBinaryOperator;)Lj$/util/OptionalDouble;

    move-result-object v0

    return-object v0
.end method

.method public final noneMatch(Ljava/util/function/DoublePredicate;)Z
    .locals 1
    .param p1, "predicate"    # Ljava/util/function/DoublePredicate;

    .line 529
    .local p0, "this":Lj$/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    sget-object v0, Lj$/util/stream/MatchOps$MatchKind;->NONE:Lj$/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v0}, Lj$/util/stream/MatchOps;->makeDouble(Ljava/util/function/DoublePredicate;Lj$/util/stream/MatchOps$MatchKind;)Lj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/util/stream/DoublePipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic parallel()Lj$/util/stream/DoubleStream;
    .locals 1

    .line 54
    .local p0, "this":Lj$/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-super {p0}, Lj$/util/stream/AbstractPipeline;->parallel()Lj$/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Lj$/util/stream/DoubleStream;

    return-object v0
.end method

.method public final peek(Ljava/util/function/DoubleConsumer;)Lj$/util/stream/DoubleStream;
    .locals 7
    .param p1, "action"    # Ljava/util/function/DoubleConsumer;

    .line 344
    .local p0, "this":Lj$/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    new-instance v6, Lj$/util/stream/DoublePipeline$8;

    sget-object v3, Lj$/util/stream/StreamShape;->DOUBLE_VALUE:Lj$/util/stream/StreamShape;

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/DoublePipeline$8;-><init>(Lj$/util/stream/DoublePipeline;Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;ILjava/util/function/DoubleConsumer;)V

    return-object v6
.end method

.method public final reduce(DLjava/util/function/DoubleBinaryOperator;)D
    .locals 2
    .param p1, "identity"    # D
    .param p3, "op"    # Ljava/util/function/DoubleBinaryOperator;

    .line 497
    .local p0, "this":Lj$/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-static {p1, p2, p3}, Lj$/util/stream/ReduceOps;->makeDouble(DLjava/util/function/DoubleBinaryOperator;)Lj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/util/stream/DoublePipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public final reduce(Ljava/util/function/DoubleBinaryOperator;)Lj$/util/OptionalDouble;
    .locals 1
    .param p1, "op"    # Ljava/util/function/DoubleBinaryOperator;

    .line 502
    .local p0, "this":Lj$/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-static {p1}, Lj$/util/stream/ReduceOps;->makeDouble(Ljava/util/function/DoubleBinaryOperator;)Lj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/util/stream/DoublePipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/OptionalDouble;

    return-object v0
.end method

.method public bridge synthetic sequential()Lj$/util/stream/DoubleStream;
    .locals 1

    .line 54
    .local p0, "this":Lj$/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-super {p0}, Lj$/util/stream/AbstractPipeline;->sequential()Lj$/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Lj$/util/stream/DoubleStream;

    return-object v0
.end method

.method public final skip(J)Lj$/util/stream/DoubleStream;
    .locals 3
    .param p1, "n"    # J

    .line 371
    .local p0, "this":Lj$/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    .line 373
    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 374
    return-object p0

    .line 376
    :cond_0
    const-wide/16 v0, -0x1

    .line 377
    .local v0, "limit":J
    invoke-static {p0, p1, p2, v0, v1}, Lj$/util/stream/SliceOps;->makeDouble(Lj$/util/stream/AbstractPipeline;JJ)Lj$/util/stream/DoubleStream;

    move-result-object v2

    return-object v2

    .line 372
    .end local v0    # "limit":J
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final sorted()Lj$/util/stream/DoubleStream;
    .locals 1

    .line 393
    .local p0, "this":Lj$/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-static {p0}, Lj$/util/stream/SortedOps;->makeDouble(Lj$/util/stream/AbstractPipeline;)Lj$/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public final spliterator()Lj$/util/Spliterator$OfDouble;
    .locals 1

    .line 192
    .local p0, "this":Lj$/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-super {p0}, Lj$/util/stream/AbstractPipeline;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/DoublePipeline;->adapt(Lj$/util/Spliterator;)Lj$/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Lj$/util/Spliterator;
    .locals 1

    .line 54
    .local p0, "this":Lj$/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-virtual {p0}, Lj$/util/stream/DoublePipeline;->spliterator()Lj$/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public final sum()D
    .locals 3

    .line 425
    .local p0, "this":Lj$/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    new-instance v0, Lj$/util/stream/DoublePipeline$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lj$/util/stream/DoublePipeline$$ExternalSyntheticLambda8;-><init>()V

    new-instance v1, Lj$/util/stream/DoublePipeline$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lj$/util/stream/DoublePipeline$$ExternalSyntheticLambda9;-><init>()V

    new-instance v2, Lj$/util/stream/DoublePipeline$$ExternalSyntheticLambda10;

    invoke-direct {v2}, Lj$/util/stream/DoublePipeline$$ExternalSyntheticLambda10;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lj$/util/stream/DoublePipeline;->collect(Ljava/util/function/Supplier;Ljava/util/function/ObjDoubleConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 436
    .local v0, "summation":[D
    invoke-static {v0}, Lj$/util/stream/Collectors;->computeFinalSum([D)D

    move-result-wide v1

    return-wide v1
.end method

.method public final summaryStatistics()Lj$/util/DoubleSummaryStatistics;
    .locals 3

    .line 491
    .local p0, "this":Lj$/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    new-instance v0, Lj$/util/stream/Collectors$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda15;-><init>()V

    new-instance v1, Lj$/util/stream/DoublePipeline$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lj$/util/stream/DoublePipeline$$ExternalSyntheticLambda1;-><init>()V

    new-instance v2, Lj$/util/stream/DoublePipeline$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lj$/util/stream/DoublePipeline$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lj$/util/stream/DoublePipeline;->collect(Ljava/util/function/Supplier;Ljava/util/function/ObjDoubleConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/DoubleSummaryStatistics;

    return-object v0
.end method

.method public final takeWhile(Ljava/util/function/DoublePredicate;)Lj$/util/stream/DoubleStream;
    .locals 1
    .param p1, "predicate"    # Ljava/util/function/DoublePredicate;

    .line 383
    .local p0, "this":Lj$/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-static {p0, p1}, Lj$/util/stream/WhileOps;->makeTakeWhileDouble(Lj$/util/stream/AbstractPipeline;Ljava/util/function/DoublePredicate;)Lj$/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public final toArray()[D
    .locals 1

    .line 544
    .local p0, "this":Lj$/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    new-instance v0, Lj$/util/stream/DoublePipeline$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lj$/util/stream/DoublePipeline$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {p0, v0}, Lj$/util/stream/DoublePipeline;->evaluateToArrayNode(Ljava/util/function/IntFunction;)Lj$/util/stream/Node;

    move-result-object v0

    check-cast v0, Lj$/util/stream/Node$OfDouble;

    invoke-static {v0}, Lj$/util/stream/Nodes;->flattenDouble(Lj$/util/stream/Node$OfDouble;)Lj$/util/stream/Node$OfDouble;

    move-result-object v0

    .line 545
    invoke-interface {v0}, Lj$/util/stream/Node$OfDouble;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 544
    return-object v0
.end method

.method public bridge synthetic unordered()Lj$/util/stream/BaseStream;
    .locals 1

    .line 54
    .local p0, "this":Lj$/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-virtual {p0}, Lj$/util/stream/DoublePipeline;->unordered()Lj$/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public unordered()Lj$/util/stream/DoubleStream;
    .locals 3

    .line 309
    .local p0, "this":Lj$/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-virtual {p0}, Lj$/util/stream/DoublePipeline;->isOrdered()Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    return-object p0

    .line 311
    :cond_0
    new-instance v0, Lj$/util/stream/DoublePipeline$6;

    sget-object v1, Lj$/util/stream/StreamShape;->DOUBLE_VALUE:Lj$/util/stream/StreamShape;

    sget v2, Lj$/util/stream/StreamOpFlag;->NOT_ORDERED:I

    invoke-direct {v0, p0, p0, v1, v2}, Lj$/util/stream/DoublePipeline$6;-><init>(Lj$/util/stream/DoublePipeline;Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;I)V

    return-object v0
.end method

.method final wrap(Lj$/util/stream/PipelineHelper;Ljava/util/function/Supplier;Z)Lj$/util/Spliterator;
    .locals 1
    .param p3, "isParallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/stream/PipelineHelper<",
            "Ljava/lang/Double;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Lj$/util/Spliterator<",
            "TP_IN;>;>;Z)",
            "Lj$/util/Spliterator<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 146
    .local p0, "this":Lj$/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    .local p1, "ph":Lj$/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Double;>;"
    .local p2, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/Spliterator<TP_IN;>;>;"
    new-instance v0, Lj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;

    invoke-direct {v0, p1, p2, p3}, Lj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;-><init>(Lj$/util/stream/PipelineHelper;Ljava/util/function/Supplier;Z)V

    return-object v0
.end method
