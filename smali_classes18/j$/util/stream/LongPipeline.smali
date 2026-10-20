.class abstract Lj$/util/stream/LongPipeline;
.super Lj$/util/stream/AbstractPipeline;
.source "LongPipeline.java"

# interfaces
.implements Lj$/util/stream/LongStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/util/stream/LongPipeline$StatefulOp;,
        Lj$/util/stream/LongPipeline$StatelessOp;,
        Lj$/util/stream/LongPipeline$Head;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E_IN:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/stream/AbstractPipeline<",
        "TE_IN;",
        "Ljava/lang/Long;",
        "Lj$/util/stream/LongStream;",
        ">;",
        "Lj$/util/stream/LongStream;"
    }
.end annotation


# direct methods
.method static bridge synthetic -$$Nest$smadapt(Lj$/util/Spliterator;)Lj$/util/Spliterator$OfLong;
    .locals 0

    invoke-static {p0}, Lj$/util/stream/LongPipeline;->adapt(Lj$/util/Spliterator;)Lj$/util/Spliterator$OfLong;

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
            "Ljava/lang/Long;",
            ">;IZ)V"
        }
    .end annotation

    .line 81
    .local p0, "this":Lj$/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    .local p1, "source":Lj$/util/Spliterator;, "Ljava/util/Spliterator<Ljava/lang/Long;>;"
    invoke-direct {p0, p1, p2, p3}, Lj$/util/stream/AbstractPipeline;-><init>(Lj$/util/Spliterator;IZ)V

    .line 82
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

    .line 91
    .local p0, "this":Lj$/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    .local p1, "upstream":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*TE_IN;*>;"
    invoke-direct {p0, p1, p2}, Lj$/util/stream/AbstractPipeline;-><init>(Lj$/util/stream/AbstractPipeline;I)V

    .line 92
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
            "Ljava/lang/Long;",
            ">;>;IZ)V"
        }
    .end annotation

    .line 68
    .local p0, "this":Lj$/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    .local p1, "source":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+Ljava/util/Spliterator<Ljava/lang/Long;>;>;"
    invoke-direct {p0, p1, p2, p3}, Lj$/util/stream/AbstractPipeline;-><init>(Ljava/util/function/Supplier;IZ)V

    .line 69
    return-void
.end method

.method private static adapt(Lj$/util/Spliterator;)Lj$/util/Spliterator$OfLong;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/Spliterator<",
            "Ljava/lang/Long;",
            ">;)",
            "Lj$/util/Spliterator$OfLong;"
        }
    .end annotation

    .line 117
    .local p0, "s":Lj$/util/Spliterator;, "Ljava/util/Spliterator<Ljava/lang/Long;>;"
    instance-of v0, p0, Lj$/util/Spliterator$OfLong;

    if-eqz v0, :cond_0

    .line 118
    move-object v0, p0

    check-cast v0, Lj$/util/Spliterator$OfLong;

    return-object v0

    .line 120
    :cond_0
    sget-boolean v0, Lj$/util/stream/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_1

    .line 121
    const-class v0, Lj$/util/stream/AbstractPipeline;

    const-string v1, "using LongStream.adapt(Spliterator<Long> s)"

    invoke-static {v0, v1}, Lj$/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 123
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "LongStream.adapt(Spliterator<Long> s)"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static adapt(Lj$/util/stream/Sink;)Ljava/util/function/LongConsumer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/Sink<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/function/LongConsumer;"
        }
    .end annotation

    .line 99
    .local p0, "sink":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<Ljava/lang/Long;>;"
    instance-of v0, p0, Ljava/util/function/LongConsumer;

    if-eqz v0, :cond_0

    .line 100
    move-object v0, p0

    check-cast v0, Ljava/util/function/LongConsumer;

    return-object v0

    .line 102
    :cond_0
    sget-boolean v0, Lj$/util/stream/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_1

    .line 103
    const-class v0, Lj$/util/stream/AbstractPipeline;

    const-string v1, "using LongStream.adapt(Sink<Long> s)"

    invoke-static {v0, v1}, Lj$/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 105
    :cond_1
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/stream/LongPipeline$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lj$/util/stream/LongPipeline$$ExternalSyntheticLambda12;-><init>(Lj$/util/stream/Sink;)V

    return-object v0
.end method

.method static synthetic lambda$average$1()[J
    .locals 1

    .line 447
    const/4 v0, 0x2

    new-array v0, v0, [J

    return-object v0
.end method

.method static synthetic lambda$average$2([JJ)V
    .locals 5
    .param p0, "ll"    # [J
    .param p1, "i"    # J

    .line 449
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 450
    const/4 v0, 0x1

    aget-wide v1, p0, v0

    add-long/2addr v1, p1

    aput-wide v1, p0, v0

    .line 451
    return-void
.end method

.method static synthetic lambda$average$3([J[J)V
    .locals 5
    .param p0, "ll"    # [J
    .param p1, "rr"    # [J

    .line 453
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 454
    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 455
    return-void
.end method

.method static synthetic lambda$collect$4(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "combiner"    # Ljava/util/function/BiConsumer;
    .param p1, "left"    # Ljava/lang/Object;
    .param p2, "right"    # Ljava/lang/Object;

    .line 488
    invoke-interface {p0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 489
    return-object p1
.end method

.method static synthetic lambda$distinct$0(Ljava/lang/Long;)J
    .locals 2
    .param p0, "i"    # Ljava/lang/Long;

    .line 414
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic lambda$toArray$5(I)[Ljava/lang/Long;
    .locals 1
    .param p0, "x$0"    # I

    .line 521
    new-array v0, p0, [Ljava/lang/Long;

    return-object v0
.end method

.method private mapToObj(Ljava/util/function/LongFunction;I)Lj$/util/stream/Stream;
    .locals 7
    .param p2, "opFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/LongFunction<",
            "+TU;>;I)",
            "Lj$/util/stream/Stream<",
            "TU;>;"
        }
    .end annotation

    .line 171
    .local p0, "this":Lj$/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    .local p1, "mapper":Ljava/util/function/LongFunction;, "Ljava/util/function/LongFunction<+TU;>;"
    new-instance v6, Lj$/util/stream/LongPipeline$1;

    sget-object v3, Lj$/util/stream/StreamShape;->LONG_VALUE:Lj$/util/stream/StreamShape;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/LongPipeline$1;-><init>(Lj$/util/stream/LongPipeline;Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;ILjava/util/function/LongFunction;)V

    return-object v6
.end method


# virtual methods
.method public final allMatch(Ljava/util/function/LongPredicate;)Z
    .locals 1
    .param p1, "predicate"    # Ljava/util/function/LongPredicate;

    .line 501
    .local p0, "this":Lj$/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    sget-object v0, Lj$/util/stream/MatchOps$MatchKind;->ALL:Lj$/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v0}, Lj$/util/stream/MatchOps;->makeLong(Ljava/util/function/LongPredicate;Lj$/util/stream/MatchOps$MatchKind;)Lj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/util/stream/LongPipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final anyMatch(Ljava/util/function/LongPredicate;)Z
    .locals 1
    .param p1, "predicate"    # Ljava/util/function/LongPredicate;

    .line 496
    .local p0, "this":Lj$/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    sget-object v0, Lj$/util/stream/MatchOps$MatchKind;->ANY:Lj$/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v0}, Lj$/util/stream/MatchOps;->makeLong(Ljava/util/function/LongPredicate;Lj$/util/stream/MatchOps$MatchKind;)Lj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/util/stream/LongPipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final asDoubleStream()Lj$/util/stream/DoubleStream;
    .locals 3

    .line 200
    .local p0, "this":Lj$/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    new-instance v0, Lj$/util/stream/LongPipeline$2;

    sget-object v1, Lj$/util/stream/StreamShape;->LONG_VALUE:Lj$/util/stream/StreamShape;

    sget v2, Lj$/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    invoke-direct {v0, p0, p0, v1, v2}, Lj$/util/stream/LongPipeline$2;-><init>(Lj$/util/stream/LongPipeline;Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;I)V

    return-object v0
.end method

.method public final average()Lj$/util/OptionalDouble;
    .locals 7

    .line 447
    .local p0, "this":Lj$/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    new-instance v0, Lj$/util/stream/LongPipeline$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lj$/util/stream/LongPipeline$$ExternalSyntheticLambda4;-><init>()V

    new-instance v1, Lj$/util/stream/LongPipeline$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lj$/util/stream/LongPipeline$$ExternalSyntheticLambda5;-><init>()V

    new-instance v2, Lj$/util/stream/LongPipeline$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Lj$/util/stream/LongPipeline$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lj$/util/stream/LongPipeline;->collect(Ljava/util/function/Supplier;Ljava/util/function/ObjLongConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 456
    .local v0, "avg":[J
    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 457
    const/4 v2, 0x1

    aget-wide v2, v0, v2

    long-to-double v2, v2

    aget-wide v4, v0, v1

    long-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Lj$/util/OptionalDouble;->of(D)Lj$/util/OptionalDouble;

    move-result-object v1

    goto :goto_0

    .line 458
    :cond_0
    invoke-static {}, Lj$/util/OptionalDouble;->empty()Lj$/util/OptionalDouble;

    move-result-object v1

    .line 456
    :goto_0
    return-object v1
.end method

.method public final boxed()Lj$/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/stream/Stream<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 215
    .local p0, "this":Lj$/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    new-instance v0, Lj$/util/stream/LongPipeline$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lj$/util/stream/LongPipeline$$ExternalSyntheticLambda3;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lj$/util/stream/LongPipeline;->mapToObj(Ljava/util/function/LongFunction;I)Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final collect(Ljava/util/function/Supplier;Ljava/util/function/ObjLongConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TR;>;",
            "Ljava/util/function/ObjLongConsumer<",
            "TR;>;",
            "Ljava/util/function/BiConsumer<",
            "TR;TR;>;)TR;"
        }
    .end annotation

    .line 486
    .local p0, "this":Lj$/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TR;>;"
    .local p2, "accumulator":Ljava/util/function/ObjLongConsumer;, "Ljava/util/function/ObjLongConsumer<TR;>;"
    .local p3, "combiner":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TR;TR;>;"
    invoke-static {p3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    new-instance v0, Lj$/util/stream/LongPipeline$$ExternalSyntheticLambda7;

    invoke-direct {v0, p3}, Lj$/util/stream/LongPipeline$$ExternalSyntheticLambda7;-><init>(Ljava/util/function/BiConsumer;)V

    .line 491
    .local v0, "operator":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TR;>;"
    invoke-static {p1, p2, v0}, Lj$/util/stream/ReduceOps;->makeLong(Ljava/util/function/Supplier;Ljava/util/function/ObjLongConsumer;Ljava/util/function/BinaryOperator;)Lj$/util/stream/TerminalOp;

    move-result-object v1

    invoke-virtual {p0, v1}, Lj$/util/stream/LongPipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public final count()J
    .locals 2

    .line 463
    .local p0, "this":Lj$/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-static {}, Lj$/util/stream/ReduceOps;->makeLongCounting()Lj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/util/stream/LongPipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final distinct()Lj$/util/stream/LongStream;
    .locals 2

    .line 414
    .local p0, "this":Lj$/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-virtual {p0}, Lj$/util/stream/LongPipeline;->boxed()Lj$/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Lj$/util/stream/Stream;->distinct()Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lj$/util/stream/LongPipeline$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Lj$/util/stream/LongPipeline$$ExternalSyntheticLambda11;-><init>()V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Lj$/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public final dropWhile(Ljava/util/function/LongPredicate;)Lj$/util/stream/LongStream;
    .locals 1
    .param p1, "predicate"    # Ljava/util/function/LongPredicate;

    .line 402
    .local p0, "this":Lj$/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-static {p0, p1}, Lj$/util/stream/WhileOps;->makeDropWhileLong(Lj$/util/stream/AbstractPipeline;Ljava/util/function/LongPredicate;)Lj$/util/stream/LongStream;

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
            "Ljava/lang/Long;",
            ">;",
            "Lj$/util/Spliterator<",
            "TP_IN;>;Z",
            "Ljava/util/function/IntFunction<",
            "[",
            "Ljava/lang/Long;",
            ">;)",
            "Lj$/util/stream/Node<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 140
    .local p0, "this":Lj$/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    .local p1, "helper":Lj$/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Long;>;"
    .local p2, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p4, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[Ljava/lang/Long;>;"
    invoke-static {p1, p2, p3}, Lj$/util/stream/Nodes;->collectLong(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;Z)Lj$/util/stream/Node$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public final filter(Ljava/util/function/LongPredicate;)Lj$/util/stream/LongStream;
    .locals 7
    .param p1, "predicate"    # Ljava/util/function/LongPredicate;

    .line 337
    .local p0, "this":Lj$/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    new-instance v6, Lj$/util/stream/LongPipeline$8;

    sget-object v3, Lj$/util/stream/StreamShape;->LONG_VALUE:Lj$/util/stream/StreamShape;

    sget v4, Lj$/util/stream/StreamOpFlag;->NOT_SIZED:I

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/LongPipeline$8;-><init>(Lj$/util/stream/LongPipeline;Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;ILjava/util/function/LongPredicate;)V

    return-object v6
.end method

.method public final findAny()Lj$/util/OptionalLong;
    .locals 1

    .line 516
    .local p0, "this":Lj$/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    const/4 v0, 0x0

    invoke-static {v0}, Lj$/util/stream/FindOps;->makeLong(Z)Lj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/util/stream/LongPipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/OptionalLong;

    return-object v0
.end method

.method public final findFirst()Lj$/util/OptionalLong;
    .locals 1

    .line 511
    .local p0, "this":Lj$/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    const/4 v0, 0x1

    invoke-static {v0}, Lj$/util/stream/FindOps;->makeLong(Z)Lj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/util/stream/LongPipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/OptionalLong;

    return-object v0
.end method

.method public final flatMap(Ljava/util/function/LongFunction;)Lj$/util/stream/LongStream;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/LongFunction<",
            "+",
            "Lj$/util/stream/LongStream;",
            ">;)",
            "Lj$/util/stream/LongStream;"
        }
    .end annotation

    .line 277
    .local p0, "this":Lj$/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    .local p1, "mapper":Ljava/util/function/LongFunction;, "Ljava/util/function/LongFunction<+Ljava/util/stream/LongStream;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    new-instance v6, Lj$/util/stream/LongPipeline$6;

    sget-object v3, Lj$/util/stream/StreamShape;->LONG_VALUE:Lj$/util/stream/StreamShape;

    sget v0, Lj$/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Lj$/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v0, v1

    sget v1, Lj$/util/stream/StreamOpFlag;->NOT_SIZED:I

    or-int v4, v0, v1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/LongPipeline$6;-><init>(Lj$/util/stream/LongPipeline;Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;ILjava/util/function/LongFunction;)V

    return-object v6
.end method

.method public forEach(Ljava/util/function/LongConsumer;)V
    .locals 1
    .param p1, "action"    # Ljava/util/function/LongConsumer;

    .line 421
    .local p0, "this":Lj$/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lj$/util/stream/ForEachOps;->makeLong(Ljava/util/function/LongConsumer;Z)Lj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/util/stream/LongPipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    .line 422
    return-void
.end method

.method public forEachOrdered(Ljava/util/function/LongConsumer;)V
    .locals 1
    .param p1, "action"    # Ljava/util/function/LongConsumer;

    .line 426
    .local p0, "this":Lj$/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lj$/util/stream/ForEachOps;->makeLong(Ljava/util/function/LongConsumer;Z)Lj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/util/stream/LongPipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    .line 427
    return-void
.end method

.method final forEachWithCancel(Lj$/util/Spliterator;Lj$/util/stream/Sink;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/Spliterator<",
            "Ljava/lang/Long;",
            ">;",
            "Lj$/util/stream/Sink<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .line 158
    .local p0, "this":Lj$/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    .local p1, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<Ljava/lang/Long;>;"
    .local p2, "sink":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<Ljava/lang/Long;>;"
    invoke-static {p1}, Lj$/util/stream/LongPipeline;->adapt(Lj$/util/Spliterator;)Lj$/util/Spliterator$OfLong;

    move-result-object v0

    .line 159
    .local v0, "spl":Lj$/util/Spliterator$OfLong;
    invoke-static {p2}, Lj$/util/stream/LongPipeline;->adapt(Lj$/util/stream/Sink;)Ljava/util/function/LongConsumer;

    move-result-object v1

    .line 161
    .local v1, "adaptedSink":Ljava/util/function/LongConsumer;
    :cond_0
    invoke-interface {p2}, Lj$/util/stream/Sink;->cancellationRequested()Z

    move-result v2

    move v3, v2

    .local v3, "cancelled":Z
    if-nez v2, :cond_1

    invoke-interface {v0, v1}, Lj$/util/Spliterator$OfLong;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 162
    :cond_1
    return v3
.end method

.method final getOutputShape()Lj$/util/stream/StreamShape;
    .locals 1

    .line 132
    .local p0, "this":Lj$/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    sget-object v0, Lj$/util/stream/StreamShape;->LONG_VALUE:Lj$/util/stream/StreamShape;

    return-object v0
.end method

.method public final iterator()Lj$/util/PrimitiveIterator$OfLong;
    .locals 1

    .line 188
    .local p0, "this":Lj$/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-virtual {p0}, Lj$/util/stream/LongPipeline;->spliterator()Lj$/util/Spliterator$OfLong;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Spliterators;->iterator(Lj$/util/Spliterator$OfLong;)Lj$/util/PrimitiveIterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 54
    .local p0, "this":Lj$/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-virtual {p0}, Lj$/util/stream/LongPipeline;->iterator()Lj$/util/PrimitiveIterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method final lazySpliterator(Ljava/util/function/Supplier;)Lj$/util/Spliterator$OfLong;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "+",
            "Lj$/util/Spliterator<",
            "Ljava/lang/Long;",
            ">;>;)",
            "Lj$/util/Spliterator$OfLong;"
        }
    .end annotation

    .line 153
    .local p0, "this":Lj$/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+Ljava/util/Spliterator<Ljava/lang/Long;>;>;"
    new-instance v0, Lj$/util/stream/StreamSpliterators$DelegatingSpliterator$OfLong;

    invoke-direct {v0, p1}, Lj$/util/stream/StreamSpliterators$DelegatingSpliterator$OfLong;-><init>(Ljava/util/function/Supplier;)V

    return-object v0
.end method

.method bridge synthetic lazySpliterator(Ljava/util/function/Supplier;)Lj$/util/Spliterator;
    .locals 0

    .line 54
    .local p0, "this":Lj$/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-virtual {p0, p1}, Lj$/util/stream/LongPipeline;->lazySpliterator(Ljava/util/function/Supplier;)Lj$/util/Spliterator$OfLong;

    move-result-object p1

    return-object p1
.end method

.method public final limit(J)Lj$/util/stream/LongStream;
    .locals 3
    .param p1, "maxSize"    # J

    .line 380
    .local p0, "this":Lj$/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 382
    invoke-static {p0, v0, v1, p1, p2}, Lj$/util/stream/SliceOps;->makeLong(Lj$/util/stream/AbstractPipeline;JJ)Lj$/util/stream/LongStream;

    move-result-object v0

    return-object v0

    .line 381
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
            "Ljava/lang/Long;",
            ">;)",
            "Lj$/util/stream/Node$Builder<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 167
    .local p0, "this":Lj$/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    .local p3, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[Ljava/lang/Long;>;"
    invoke-static {p1, p2}, Lj$/util/stream/Nodes;->longBuilder(J)Lj$/util/stream/Node$Builder$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public final map(Ljava/util/function/LongUnaryOperator;)Lj$/util/stream/LongStream;
    .locals 7
    .param p1, "mapper"    # Ljava/util/function/LongUnaryOperator;

    .line 220
    .local p0, "this":Lj$/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    new-instance v6, Lj$/util/stream/LongPipeline$3;

    sget-object v3, Lj$/util/stream/StreamShape;->LONG_VALUE:Lj$/util/stream/StreamShape;

    sget v0, Lj$/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Lj$/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v0, v1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/LongPipeline$3;-><init>(Lj$/util/stream/LongPipeline;Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;ILjava/util/function/LongUnaryOperator;)V

    return-object v6
.end method

.method public final mapToDouble(Ljava/util/function/LongToDoubleFunction;)Lj$/util/stream/DoubleStream;
    .locals 7
    .param p1, "mapper"    # Ljava/util/function/LongToDoubleFunction;

    .line 260
    .local p0, "this":Lj$/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    new-instance v6, Lj$/util/stream/LongPipeline$5;

    sget-object v3, Lj$/util/stream/StreamShape;->LONG_VALUE:Lj$/util/stream/StreamShape;

    sget v0, Lj$/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Lj$/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v0, v1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/LongPipeline$5;-><init>(Lj$/util/stream/LongPipeline;Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;ILjava/util/function/LongToDoubleFunction;)V

    return-object v6
.end method

.method public final mapToInt(Ljava/util/function/LongToIntFunction;)Lj$/util/stream/IntStream;
    .locals 7
    .param p1, "mapper"    # Ljava/util/function/LongToIntFunction;

    .line 243
    .local p0, "this":Lj$/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    new-instance v6, Lj$/util/stream/LongPipeline$4;

    sget-object v3, Lj$/util/stream/StreamShape;->LONG_VALUE:Lj$/util/stream/StreamShape;

    sget v0, Lj$/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Lj$/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v0, v1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/LongPipeline$4;-><init>(Lj$/util/stream/LongPipeline;Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;ILjava/util/function/LongToIntFunction;)V

    return-object v6
.end method

.method public final mapToObj(Ljava/util/function/LongFunction;)Lj$/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/LongFunction<",
            "+TU;>;)",
            "Lj$/util/stream/Stream<",
            "TU;>;"
        }
    .end annotation

    .line 237
    .local p0, "this":Lj$/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    .local p1, "mapper":Ljava/util/function/LongFunction;, "Ljava/util/function/LongFunction<+TU;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget v0, Lj$/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Lj$/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Lj$/util/stream/LongPipeline;->mapToObj(Ljava/util/function/LongFunction;I)Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final max()Lj$/util/OptionalLong;
    .locals 1

    .line 442
    .local p0, "this":Lj$/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    new-instance v0, Lj$/util/stream/LongPipeline$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lj$/util/stream/LongPipeline$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {p0, v0}, Lj$/util/stream/LongPipeline;->reduce(Ljava/util/function/LongBinaryOperator;)Lj$/util/OptionalLong;

    move-result-object v0

    return-object v0
.end method

.method public final min()Lj$/util/OptionalLong;
    .locals 1

    .line 437
    .local p0, "this":Lj$/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    new-instance v0, Lj$/util/stream/LongPipeline$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lj$/util/stream/LongPipeline$$ExternalSyntheticLambda10;-><init>()V

    invoke-virtual {p0, v0}, Lj$/util/stream/LongPipeline;->reduce(Ljava/util/function/LongBinaryOperator;)Lj$/util/OptionalLong;

    move-result-object v0

    return-object v0
.end method

.method public final noneMatch(Ljava/util/function/LongPredicate;)Z
    .locals 1
    .param p1, "predicate"    # Ljava/util/function/LongPredicate;

    .line 506
    .local p0, "this":Lj$/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    sget-object v0, Lj$/util/stream/MatchOps$MatchKind;->NONE:Lj$/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v0}, Lj$/util/stream/MatchOps;->makeLong(Ljava/util/function/LongPredicate;Lj$/util/stream/MatchOps$MatchKind;)Lj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/util/stream/LongPipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic parallel()Lj$/util/stream/LongStream;
    .locals 1

    .line 54
    .local p0, "this":Lj$/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-super {p0}, Lj$/util/stream/AbstractPipeline;->parallel()Lj$/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Lj$/util/stream/LongStream;

    return-object v0
.end method

.method public final peek(Ljava/util/function/LongConsumer;)Lj$/util/stream/LongStream;
    .locals 7
    .param p1, "action"    # Ljava/util/function/LongConsumer;

    .line 360
    .local p0, "this":Lj$/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    new-instance v6, Lj$/util/stream/LongPipeline$9;

    sget-object v3, Lj$/util/stream/StreamShape;->LONG_VALUE:Lj$/util/stream/StreamShape;

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/LongPipeline$9;-><init>(Lj$/util/stream/LongPipeline;Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;ILjava/util/function/LongConsumer;)V

    return-object v6
.end method

.method public final reduce(JLjava/util/function/LongBinaryOperator;)J
    .locals 2
    .param p1, "identity"    # J
    .param p3, "op"    # Ljava/util/function/LongBinaryOperator;

    .line 474
    .local p0, "this":Lj$/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-static {p1, p2, p3}, Lj$/util/stream/ReduceOps;->makeLong(JLjava/util/function/LongBinaryOperator;)Lj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/util/stream/LongPipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final reduce(Ljava/util/function/LongBinaryOperator;)Lj$/util/OptionalLong;
    .locals 1
    .param p1, "op"    # Ljava/util/function/LongBinaryOperator;

    .line 479
    .local p0, "this":Lj$/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-static {p1}, Lj$/util/stream/ReduceOps;->makeLong(Ljava/util/function/LongBinaryOperator;)Lj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/util/stream/LongPipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/OptionalLong;

    return-object v0
.end method

.method public bridge synthetic sequential()Lj$/util/stream/LongStream;
    .locals 1

    .line 54
    .local p0, "this":Lj$/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-super {p0}, Lj$/util/stream/AbstractPipeline;->sequential()Lj$/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Lj$/util/stream/LongStream;

    return-object v0
.end method

.method public final skip(J)Lj$/util/stream/LongStream;
    .locals 3
    .param p1, "n"    # J

    .line 387
    .local p0, "this":Lj$/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    .line 389
    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 390
    return-object p0

    .line 392
    :cond_0
    const-wide/16 v0, -0x1

    invoke-static {p0, p1, p2, v0, v1}, Lj$/util/stream/SliceOps;->makeLong(Lj$/util/stream/AbstractPipeline;JJ)Lj$/util/stream/LongStream;

    move-result-object v0

    return-object v0

    .line 388
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final sorted()Lj$/util/stream/LongStream;
    .locals 1

    .line 407
    .local p0, "this":Lj$/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-static {p0}, Lj$/util/stream/SortedOps;->makeLong(Lj$/util/stream/AbstractPipeline;)Lj$/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public final spliterator()Lj$/util/Spliterator$OfLong;
    .locals 1

    .line 193
    .local p0, "this":Lj$/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-super {p0}, Lj$/util/stream/AbstractPipeline;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/LongPipeline;->adapt(Lj$/util/Spliterator;)Lj$/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Lj$/util/Spliterator;
    .locals 1

    .line 54
    .local p0, "this":Lj$/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-virtual {p0}, Lj$/util/stream/LongPipeline;->spliterator()Lj$/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public final sum()J
    .locals 3

    .line 432
    .local p0, "this":Lj$/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    new-instance v0, Lj$/util/stream/LongPipeline$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lj$/util/stream/LongPipeline$$ExternalSyntheticLambda9;-><init>()V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lj$/util/stream/LongPipeline;->reduce(JLjava/util/function/LongBinaryOperator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final summaryStatistics()Lj$/util/LongSummaryStatistics;
    .locals 3

    .line 468
    .local p0, "this":Lj$/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    new-instance v0, Lj$/util/stream/Collectors$$ExternalSyntheticLambda61;

    invoke-direct {v0}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda61;-><init>()V

    new-instance v1, Lj$/util/stream/LongPipeline$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lj$/util/stream/LongPipeline$$ExternalSyntheticLambda0;-><init>()V

    new-instance v2, Lj$/util/stream/LongPipeline$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lj$/util/stream/LongPipeline$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lj$/util/stream/LongPipeline;->collect(Ljava/util/function/Supplier;Ljava/util/function/ObjLongConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/LongSummaryStatistics;

    return-object v0
.end method

.method public final takeWhile(Ljava/util/function/LongPredicate;)Lj$/util/stream/LongStream;
    .locals 1
    .param p1, "predicate"    # Ljava/util/function/LongPredicate;

    .line 397
    .local p0, "this":Lj$/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-static {p0, p1}, Lj$/util/stream/WhileOps;->makeTakeWhileLong(Lj$/util/stream/AbstractPipeline;Ljava/util/function/LongPredicate;)Lj$/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public final toArray()[J
    .locals 1

    .line 521
    .local p0, "this":Lj$/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    new-instance v0, Lj$/util/stream/LongPipeline$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lj$/util/stream/LongPipeline$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, v0}, Lj$/util/stream/LongPipeline;->evaluateToArrayNode(Ljava/util/function/IntFunction;)Lj$/util/stream/Node;

    move-result-object v0

    check-cast v0, Lj$/util/stream/Node$OfLong;

    invoke-static {v0}, Lj$/util/stream/Nodes;->flattenLong(Lj$/util/stream/Node$OfLong;)Lj$/util/stream/Node$OfLong;

    move-result-object v0

    .line 522
    invoke-interface {v0}, Lj$/util/stream/Node$OfLong;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 521
    return-object v0
.end method

.method public bridge synthetic unordered()Lj$/util/stream/BaseStream;
    .locals 1

    .line 54
    .local p0, "this":Lj$/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-virtual {p0}, Lj$/util/stream/LongPipeline;->unordered()Lj$/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public unordered()Lj$/util/stream/LongStream;
    .locals 3

    .line 325
    .local p0, "this":Lj$/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-virtual {p0}, Lj$/util/stream/LongPipeline;->isOrdered()Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    return-object p0

    .line 327
    :cond_0
    new-instance v0, Lj$/util/stream/LongPipeline$7;

    sget-object v1, Lj$/util/stream/StreamShape;->LONG_VALUE:Lj$/util/stream/StreamShape;

    sget v2, Lj$/util/stream/StreamOpFlag;->NOT_ORDERED:I

    invoke-direct {v0, p0, p0, v1, v2}, Lj$/util/stream/LongPipeline$7;-><init>(Lj$/util/stream/LongPipeline;Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;I)V

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
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Lj$/util/Spliterator<",
            "TP_IN;>;>;Z)",
            "Lj$/util/Spliterator<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 147
    .local p0, "this":Lj$/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    .local p1, "ph":Lj$/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Long;>;"
    .local p2, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/Spliterator<TP_IN;>;>;"
    new-instance v0, Lj$/util/stream/StreamSpliterators$LongWrappingSpliterator;

    invoke-direct {v0, p1, p2, p3}, Lj$/util/stream/StreamSpliterators$LongWrappingSpliterator;-><init>(Lj$/util/stream/PipelineHelper;Ljava/util/function/Supplier;Z)V

    return-object v0
.end method
