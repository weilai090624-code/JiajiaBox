.class abstract Lj$/util/stream/IntPipeline;
.super Lj$/util/stream/AbstractPipeline;
.source "IntPipeline.java"

# interfaces
.implements Lj$/util/stream/IntStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/util/stream/IntPipeline$StatefulOp;,
        Lj$/util/stream/IntPipeline$StatelessOp;,
        Lj$/util/stream/IntPipeline$Head;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E_IN:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/stream/AbstractPipeline<",
        "TE_IN;",
        "Ljava/lang/Integer;",
        "Lj$/util/stream/IntStream;",
        ">;",
        "Lj$/util/stream/IntStream;"
    }
.end annotation


# direct methods
.method static bridge synthetic -$$Nest$smadapt(Lj$/util/Spliterator;)Lj$/util/Spliterator$OfInt;
    .locals 0

    invoke-static {p0}, Lj$/util/stream/IntPipeline;->adapt(Lj$/util/Spliterator;)Lj$/util/Spliterator$OfInt;

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
            "Ljava/lang/Integer;",
            ">;IZ)V"
        }
    .end annotation

    .line 80
    .local p0, "this":Lj$/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    .local p1, "source":Lj$/util/Spliterator;, "Ljava/util/Spliterator<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1, p2, p3}, Lj$/util/stream/AbstractPipeline;-><init>(Lj$/util/Spliterator;IZ)V

    .line 81
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
    .local p0, "this":Lj$/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
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
            "Ljava/lang/Integer;",
            ">;>;IZ)V"
        }
    .end annotation

    .line 67
    .local p0, "this":Lj$/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    .local p1, "source":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+Ljava/util/Spliterator<Ljava/lang/Integer;>;>;"
    invoke-direct {p0, p1, p2, p3}, Lj$/util/stream/AbstractPipeline;-><init>(Ljava/util/function/Supplier;IZ)V

    .line 68
    return-void
.end method

.method private static adapt(Lj$/util/Spliterator;)Lj$/util/Spliterator$OfInt;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/Spliterator<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lj$/util/Spliterator$OfInt;"
        }
    .end annotation

    .line 118
    .local p0, "s":Lj$/util/Spliterator;, "Ljava/util/Spliterator<Ljava/lang/Integer;>;"
    instance-of v0, p0, Lj$/util/Spliterator$OfInt;

    if-eqz v0, :cond_0

    .line 119
    move-object v0, p0

    check-cast v0, Lj$/util/Spliterator$OfInt;

    return-object v0

    .line 122
    :cond_0
    sget-boolean v0, Lj$/util/stream/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_1

    .line 123
    const-class v0, Lj$/util/stream/AbstractPipeline;

    const-string v1, "using IntStream.adapt(Spliterator<Integer> s)"

    invoke-static {v0, v1}, Lj$/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 125
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "IntStream.adapt(Spliterator<Integer> s)"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static adapt(Lj$/util/stream/Sink;)Ljava/util/function/IntConsumer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/Sink<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/function/IntConsumer;"
        }
    .end annotation

    .line 99
    .local p0, "sink":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<Ljava/lang/Integer;>;"
    instance-of v0, p0, Ljava/util/function/IntConsumer;

    if-eqz v0, :cond_0

    .line 100
    move-object v0, p0

    check-cast v0, Ljava/util/function/IntConsumer;

    return-object v0

    .line 103
    :cond_0
    sget-boolean v0, Lj$/util/stream/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_1

    .line 104
    const-class v0, Lj$/util/stream/AbstractPipeline;

    const-string v1, "using IntStream.adapt(Sink<Integer> s)"

    invoke-static {v0, v1}, Lj$/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 106
    :cond_1
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda10;-><init>(Lj$/util/stream/Sink;)V

    return-object v0
.end method

.method static synthetic lambda$average$1()[J
    .locals 1

    .line 469
    const/4 v0, 0x2

    new-array v0, v0, [J

    return-object v0
.end method

.method static synthetic lambda$average$2([JI)V
    .locals 5
    .param p0, "ll"    # [J
    .param p1, "i"    # I

    .line 471
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 472
    const/4 v0, 0x1

    aget-wide v1, p0, v0

    int-to-long v3, p1

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 473
    return-void
.end method

.method static synthetic lambda$average$3([J[J)V
    .locals 5
    .param p0, "ll"    # [J
    .param p1, "rr"    # [J

    .line 475
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 476
    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 477
    return-void
.end method

.method static synthetic lambda$collect$4(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "combiner"    # Ljava/util/function/BiConsumer;
    .param p1, "left"    # Ljava/lang/Object;
    .param p2, "right"    # Ljava/lang/Object;

    .line 505
    invoke-interface {p0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 506
    return-object p1
.end method

.method static synthetic lambda$distinct$0(Ljava/lang/Integer;)I
    .locals 1
    .param p0, "i"    # Ljava/lang/Integer;

    .line 432
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method static synthetic lambda$toArray$5(I)[Ljava/lang/Integer;
    .locals 1
    .param p0, "x$0"    # I

    .line 538
    new-array v0, p0, [Ljava/lang/Integer;

    return-object v0
.end method

.method private mapToObj(Ljava/util/function/IntFunction;I)Lj$/util/stream/Stream;
    .locals 7
    .param p2, "opFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/IntFunction<",
            "+TU;>;I)",
            "Lj$/util/stream/Stream<",
            "TU;>;"
        }
    .end annotation

    .line 174
    .local p0, "this":Lj$/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    .local p1, "mapper":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<+TU;>;"
    new-instance v6, Lj$/util/stream/IntPipeline$1;

    sget-object v3, Lj$/util/stream/StreamShape;->INT_VALUE:Lj$/util/stream/StreamShape;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/IntPipeline$1;-><init>(Lj$/util/stream/IntPipeline;Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;ILjava/util/function/IntFunction;)V

    return-object v6
.end method


# virtual methods
.method public final allMatch(Ljava/util/function/IntPredicate;)Z
    .locals 1
    .param p1, "predicate"    # Ljava/util/function/IntPredicate;

    .line 518
    .local p0, "this":Lj$/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    sget-object v0, Lj$/util/stream/MatchOps$MatchKind;->ALL:Lj$/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v0}, Lj$/util/stream/MatchOps;->makeInt(Ljava/util/function/IntPredicate;Lj$/util/stream/MatchOps$MatchKind;)Lj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/util/stream/IntPipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final anyMatch(Ljava/util/function/IntPredicate;)Z
    .locals 1
    .param p1, "predicate"    # Ljava/util/function/IntPredicate;

    .line 513
    .local p0, "this":Lj$/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    sget-object v0, Lj$/util/stream/MatchOps$MatchKind;->ANY:Lj$/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v0}, Lj$/util/stream/MatchOps;->makeInt(Ljava/util/function/IntPredicate;Lj$/util/stream/MatchOps$MatchKind;)Lj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/util/stream/IntPipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final asDoubleStream()Lj$/util/stream/DoubleStream;
    .locals 3

    .line 218
    .local p0, "this":Lj$/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    new-instance v0, Lj$/util/stream/IntPipeline$3;

    sget-object v1, Lj$/util/stream/StreamShape;->INT_VALUE:Lj$/util/stream/StreamShape;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p0, v1, v2}, Lj$/util/stream/IntPipeline$3;-><init>(Lj$/util/stream/IntPipeline;Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;I)V

    return-object v0
.end method

.method public final asLongStream()Lj$/util/stream/LongStream;
    .locals 3

    .line 203
    .local p0, "this":Lj$/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    new-instance v0, Lj$/util/stream/IntPipeline$2;

    sget-object v1, Lj$/util/stream/StreamShape;->INT_VALUE:Lj$/util/stream/StreamShape;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p0, v1, v2}, Lj$/util/stream/IntPipeline$2;-><init>(Lj$/util/stream/IntPipeline;Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;I)V

    return-object v0
.end method

.method public final average()Lj$/util/OptionalDouble;
    .locals 7

    .line 469
    .local p0, "this":Lj$/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    new-instance v0, Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda7;-><init>()V

    new-instance v1, Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda8;-><init>()V

    new-instance v2, Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda9;

    invoke-direct {v2}, Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lj$/util/stream/IntPipeline;->collect(Ljava/util/function/Supplier;Ljava/util/function/ObjIntConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 478
    .local v0, "avg":[J
    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 479
    const/4 v2, 0x1

    aget-wide v2, v0, v2

    long-to-double v2, v2

    aget-wide v4, v0, v1

    long-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Lj$/util/OptionalDouble;->of(D)Lj$/util/OptionalDouble;

    move-result-object v1

    goto :goto_0

    .line 480
    :cond_0
    invoke-static {}, Lj$/util/OptionalDouble;->empty()Lj$/util/OptionalDouble;

    move-result-object v1

    .line 478
    :goto_0
    return-object v1
.end method

.method public final boxed()Lj$/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/stream/Stream<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 233
    .local p0, "this":Lj$/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    new-instance v0, Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda12;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lj$/util/stream/IntPipeline;->mapToObj(Ljava/util/function/IntFunction;I)Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final collect(Ljava/util/function/Supplier;Ljava/util/function/ObjIntConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TR;>;",
            "Ljava/util/function/ObjIntConsumer<",
            "TR;>;",
            "Ljava/util/function/BiConsumer<",
            "TR;TR;>;)TR;"
        }
    .end annotation

    .line 503
    .local p0, "this":Lj$/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TR;>;"
    .local p2, "accumulator":Ljava/util/function/ObjIntConsumer;, "Ljava/util/function/ObjIntConsumer<TR;>;"
    .local p3, "combiner":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TR;TR;>;"
    invoke-static {p3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    new-instance v0, Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda4;

    invoke-direct {v0, p3}, Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda4;-><init>(Ljava/util/function/BiConsumer;)V

    .line 508
    .local v0, "operator":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TR;>;"
    invoke-static {p1, p2, v0}, Lj$/util/stream/ReduceOps;->makeInt(Ljava/util/function/Supplier;Ljava/util/function/ObjIntConsumer;Ljava/util/function/BinaryOperator;)Lj$/util/stream/TerminalOp;

    move-result-object v1

    invoke-virtual {p0, v1}, Lj$/util/stream/IntPipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public final count()J
    .locals 2

    .line 464
    .local p0, "this":Lj$/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    invoke-static {}, Lj$/util/stream/ReduceOps;->makeIntCounting()Lj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/util/stream/IntPipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final distinct()Lj$/util/stream/IntStream;
    .locals 2

    .line 432
    .local p0, "this":Lj$/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    invoke-virtual {p0}, Lj$/util/stream/IntPipeline;->boxed()Lj$/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Lj$/util/stream/Stream;->distinct()Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda11;-><init>()V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Lj$/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public final dropWhile(Ljava/util/function/IntPredicate;)Lj$/util/stream/IntStream;
    .locals 1
    .param p1, "predicate"    # Ljava/util/function/IntPredicate;

    .line 420
    .local p0, "this":Lj$/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    invoke-static {p0, p1}, Lj$/util/stream/WhileOps;->makeDropWhileInt(Lj$/util/stream/AbstractPipeline;Ljava/util/function/IntPredicate;)Lj$/util/stream/IntStream;

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
            "Ljava/lang/Integer;",
            ">;",
            "Lj$/util/Spliterator<",
            "TP_IN;>;Z",
            "Ljava/util/function/IntFunction<",
            "[",
            "Ljava/lang/Integer;",
            ">;)",
            "Lj$/util/stream/Node<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 142
    .local p0, "this":Lj$/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    .local p1, "helper":Lj$/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Integer;>;"
    .local p2, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p4, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[Ljava/lang/Integer;>;"
    invoke-static {p1, p2, p3}, Lj$/util/stream/Nodes;->collectInt(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;Z)Lj$/util/stream/Node$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public final filter(Ljava/util/function/IntPredicate;)Lj$/util/stream/IntStream;
    .locals 7
    .param p1, "predicate"    # Ljava/util/function/IntPredicate;

    .line 355
    .local p0, "this":Lj$/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    new-instance v6, Lj$/util/stream/IntPipeline$9;

    sget-object v3, Lj$/util/stream/StreamShape;->INT_VALUE:Lj$/util/stream/StreamShape;

    sget v4, Lj$/util/stream/StreamOpFlag;->NOT_SIZED:I

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/IntPipeline$9;-><init>(Lj$/util/stream/IntPipeline;Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;ILjava/util/function/IntPredicate;)V

    return-object v6
.end method

.method public final findAny()Lj$/util/OptionalInt;
    .locals 1

    .line 533
    .local p0, "this":Lj$/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    const/4 v0, 0x0

    invoke-static {v0}, Lj$/util/stream/FindOps;->makeInt(Z)Lj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/util/stream/IntPipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/OptionalInt;

    return-object v0
.end method

.method public final findFirst()Lj$/util/OptionalInt;
    .locals 1

    .line 528
    .local p0, "this":Lj$/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    const/4 v0, 0x1

    invoke-static {v0}, Lj$/util/stream/FindOps;->makeInt(Z)Lj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/util/stream/IntPipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/OptionalInt;

    return-object v0
.end method

.method public final flatMap(Ljava/util/function/IntFunction;)Lj$/util/stream/IntStream;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/IntFunction<",
            "+",
            "Lj$/util/stream/IntStream;",
            ">;)",
            "Lj$/util/stream/IntStream;"
        }
    .end annotation

    .line 295
    .local p0, "this":Lj$/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    .local p1, "mapper":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<+Ljava/util/stream/IntStream;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    new-instance v6, Lj$/util/stream/IntPipeline$7;

    sget-object v3, Lj$/util/stream/StreamShape;->INT_VALUE:Lj$/util/stream/StreamShape;

    sget v0, Lj$/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Lj$/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v0, v1

    sget v1, Lj$/util/stream/StreamOpFlag;->NOT_SIZED:I

    or-int v4, v0, v1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/IntPipeline$7;-><init>(Lj$/util/stream/IntPipeline;Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;ILjava/util/function/IntFunction;)V

    return-object v6
.end method

.method public forEach(Ljava/util/function/IntConsumer;)V
    .locals 1
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    .line 439
    .local p0, "this":Lj$/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lj$/util/stream/ForEachOps;->makeInt(Ljava/util/function/IntConsumer;Z)Lj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/util/stream/IntPipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    .line 440
    return-void
.end method

.method public forEachOrdered(Ljava/util/function/IntConsumer;)V
    .locals 1
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    .line 444
    .local p0, "this":Lj$/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lj$/util/stream/ForEachOps;->makeInt(Ljava/util/function/IntConsumer;Z)Lj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/util/stream/IntPipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    .line 445
    return-void
.end method

.method final forEachWithCancel(Lj$/util/Spliterator;Lj$/util/stream/Sink;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/Spliterator<",
            "Ljava/lang/Integer;",
            ">;",
            "Lj$/util/stream/Sink<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 160
    .local p0, "this":Lj$/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    .local p1, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<Ljava/lang/Integer;>;"
    .local p2, "sink":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<Ljava/lang/Integer;>;"
    invoke-static {p1}, Lj$/util/stream/IntPipeline;->adapt(Lj$/util/Spliterator;)Lj$/util/Spliterator$OfInt;

    move-result-object v0

    .line 161
    .local v0, "spl":Lj$/util/Spliterator$OfInt;
    invoke-static {p2}, Lj$/util/stream/IntPipeline;->adapt(Lj$/util/stream/Sink;)Ljava/util/function/IntConsumer;

    move-result-object v1

    .line 163
    .local v1, "adaptedSink":Ljava/util/function/IntConsumer;
    :cond_0
    invoke-interface {p2}, Lj$/util/stream/Sink;->cancellationRequested()Z

    move-result v2

    move v3, v2

    .local v3, "cancelled":Z
    if-nez v2, :cond_1

    invoke-interface {v0, v1}, Lj$/util/Spliterator$OfInt;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 164
    :cond_1
    return v3
.end method

.method final getOutputShape()Lj$/util/stream/StreamShape;
    .locals 1

    .line 134
    .local p0, "this":Lj$/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    sget-object v0, Lj$/util/stream/StreamShape;->INT_VALUE:Lj$/util/stream/StreamShape;

    return-object v0
.end method

.method public final iterator()Lj$/util/PrimitiveIterator$OfInt;
    .locals 1

    .line 191
    .local p0, "this":Lj$/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    invoke-virtual {p0}, Lj$/util/stream/IntPipeline;->spliterator()Lj$/util/Spliterator$OfInt;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Spliterators;->iterator(Lj$/util/Spliterator$OfInt;)Lj$/util/PrimitiveIterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 53
    .local p0, "this":Lj$/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    invoke-virtual {p0}, Lj$/util/stream/IntPipeline;->iterator()Lj$/util/PrimitiveIterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method final lazySpliterator(Ljava/util/function/Supplier;)Lj$/util/Spliterator$OfInt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "+",
            "Lj$/util/Spliterator<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Lj$/util/Spliterator$OfInt;"
        }
    .end annotation

    .line 155
    .local p0, "this":Lj$/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+Ljava/util/Spliterator<Ljava/lang/Integer;>;>;"
    new-instance v0, Lj$/util/stream/StreamSpliterators$DelegatingSpliterator$OfInt;

    invoke-direct {v0, p1}, Lj$/util/stream/StreamSpliterators$DelegatingSpliterator$OfInt;-><init>(Ljava/util/function/Supplier;)V

    return-object v0
.end method

.method bridge synthetic lazySpliterator(Ljava/util/function/Supplier;)Lj$/util/Spliterator;
    .locals 0

    .line 53
    .local p0, "this":Lj$/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    invoke-virtual {p0, p1}, Lj$/util/stream/IntPipeline;->lazySpliterator(Ljava/util/function/Supplier;)Lj$/util/Spliterator$OfInt;

    move-result-object p1

    return-object p1
.end method

.method public final limit(J)Lj$/util/stream/IntStream;
    .locals 3
    .param p1, "maxSize"    # J

    .line 398
    .local p0, "this":Lj$/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 400
    invoke-static {p0, v0, v1, p1, p2}, Lj$/util/stream/SliceOps;->makeInt(Lj$/util/stream/AbstractPipeline;JJ)Lj$/util/stream/IntStream;

    move-result-object v0

    return-object v0

    .line 399
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
            "Ljava/lang/Integer;",
            ">;)",
            "Lj$/util/stream/Node$Builder<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 170
    .local p0, "this":Lj$/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    .local p3, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[Ljava/lang/Integer;>;"
    invoke-static {p1, p2}, Lj$/util/stream/Nodes;->intBuilder(J)Lj$/util/stream/Node$Builder$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public final map(Ljava/util/function/IntUnaryOperator;)Lj$/util/stream/IntStream;
    .locals 7
    .param p1, "mapper"    # Ljava/util/function/IntUnaryOperator;

    .line 238
    .local p0, "this":Lj$/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    new-instance v6, Lj$/util/stream/IntPipeline$4;

    sget-object v3, Lj$/util/stream/StreamShape;->INT_VALUE:Lj$/util/stream/StreamShape;

    sget v0, Lj$/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Lj$/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v0, v1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/IntPipeline$4;-><init>(Lj$/util/stream/IntPipeline;Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;ILjava/util/function/IntUnaryOperator;)V

    return-object v6
.end method

.method public final mapToDouble(Ljava/util/function/IntToDoubleFunction;)Lj$/util/stream/DoubleStream;
    .locals 7
    .param p1, "mapper"    # Ljava/util/function/IntToDoubleFunction;

    .line 278
    .local p0, "this":Lj$/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    new-instance v6, Lj$/util/stream/IntPipeline$6;

    sget-object v3, Lj$/util/stream/StreamShape;->INT_VALUE:Lj$/util/stream/StreamShape;

    sget v0, Lj$/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Lj$/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v0, v1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/IntPipeline$6;-><init>(Lj$/util/stream/IntPipeline;Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;ILjava/util/function/IntToDoubleFunction;)V

    return-object v6
.end method

.method public final mapToLong(Ljava/util/function/IntToLongFunction;)Lj$/util/stream/LongStream;
    .locals 7
    .param p1, "mapper"    # Ljava/util/function/IntToLongFunction;

    .line 261
    .local p0, "this":Lj$/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    new-instance v6, Lj$/util/stream/IntPipeline$5;

    sget-object v3, Lj$/util/stream/StreamShape;->INT_VALUE:Lj$/util/stream/StreamShape;

    sget v0, Lj$/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Lj$/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v0, v1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/IntPipeline$5;-><init>(Lj$/util/stream/IntPipeline;Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;ILjava/util/function/IntToLongFunction;)V

    return-object v6
.end method

.method public final mapToObj(Ljava/util/function/IntFunction;)Lj$/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/IntFunction<",
            "+TU;>;)",
            "Lj$/util/stream/Stream<",
            "TU;>;"
        }
    .end annotation

    .line 255
    .local p0, "this":Lj$/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    .local p1, "mapper":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<+TU;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget v0, Lj$/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Lj$/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Lj$/util/stream/IntPipeline;->mapToObj(Ljava/util/function/IntFunction;I)Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final max()Lj$/util/OptionalInt;
    .locals 1

    .line 459
    .local p0, "this":Lj$/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    new-instance v0, Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {p0, v0}, Lj$/util/stream/IntPipeline;->reduce(Ljava/util/function/IntBinaryOperator;)Lj$/util/OptionalInt;

    move-result-object v0

    return-object v0
.end method

.method public final min()Lj$/util/OptionalInt;
    .locals 1

    .line 454
    .local p0, "this":Lj$/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    new-instance v0, Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, v0}, Lj$/util/stream/IntPipeline;->reduce(Ljava/util/function/IntBinaryOperator;)Lj$/util/OptionalInt;

    move-result-object v0

    return-object v0
.end method

.method public final noneMatch(Ljava/util/function/IntPredicate;)Z
    .locals 1
    .param p1, "predicate"    # Ljava/util/function/IntPredicate;

    .line 523
    .local p0, "this":Lj$/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    sget-object v0, Lj$/util/stream/MatchOps$MatchKind;->NONE:Lj$/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v0}, Lj$/util/stream/MatchOps;->makeInt(Ljava/util/function/IntPredicate;Lj$/util/stream/MatchOps$MatchKind;)Lj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/util/stream/IntPipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic parallel()Lj$/util/stream/IntStream;
    .locals 1

    .line 53
    .local p0, "this":Lj$/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    invoke-super {p0}, Lj$/util/stream/AbstractPipeline;->parallel()Lj$/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Lj$/util/stream/IntStream;

    return-object v0
.end method

.method public final peek(Ljava/util/function/IntConsumer;)Lj$/util/stream/IntStream;
    .locals 7
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    .line 378
    .local p0, "this":Lj$/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    new-instance v6, Lj$/util/stream/IntPipeline$10;

    sget-object v3, Lj$/util/stream/StreamShape;->INT_VALUE:Lj$/util/stream/StreamShape;

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/IntPipeline$10;-><init>(Lj$/util/stream/IntPipeline;Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;ILjava/util/function/IntConsumer;)V

    return-object v6
.end method

.method public final reduce(ILjava/util/function/IntBinaryOperator;)I
    .locals 1
    .param p1, "identity"    # I
    .param p2, "op"    # Ljava/util/function/IntBinaryOperator;

    .line 491
    .local p0, "this":Lj$/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    invoke-static {p1, p2}, Lj$/util/stream/ReduceOps;->makeInt(ILjava/util/function/IntBinaryOperator;)Lj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/util/stream/IntPipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final reduce(Ljava/util/function/IntBinaryOperator;)Lj$/util/OptionalInt;
    .locals 1
    .param p1, "op"    # Ljava/util/function/IntBinaryOperator;

    .line 496
    .local p0, "this":Lj$/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    invoke-static {p1}, Lj$/util/stream/ReduceOps;->makeInt(Ljava/util/function/IntBinaryOperator;)Lj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/util/stream/IntPipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/OptionalInt;

    return-object v0
.end method

.method public bridge synthetic sequential()Lj$/util/stream/IntStream;
    .locals 1

    .line 53
    .local p0, "this":Lj$/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    invoke-super {p0}, Lj$/util/stream/AbstractPipeline;->sequential()Lj$/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Lj$/util/stream/IntStream;

    return-object v0
.end method

.method public final skip(J)Lj$/util/stream/IntStream;
    .locals 3
    .param p1, "n"    # J

    .line 405
    .local p0, "this":Lj$/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    .line 407
    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 408
    return-object p0

    .line 410
    :cond_0
    const-wide/16 v0, -0x1

    invoke-static {p0, p1, p2, v0, v1}, Lj$/util/stream/SliceOps;->makeInt(Lj$/util/stream/AbstractPipeline;JJ)Lj$/util/stream/IntStream;

    move-result-object v0

    return-object v0

    .line 406
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final sorted()Lj$/util/stream/IntStream;
    .locals 1

    .line 425
    .local p0, "this":Lj$/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    invoke-static {p0}, Lj$/util/stream/SortedOps;->makeInt(Lj$/util/stream/AbstractPipeline;)Lj$/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public final spliterator()Lj$/util/Spliterator$OfInt;
    .locals 1

    .line 196
    .local p0, "this":Lj$/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    invoke-super {p0}, Lj$/util/stream/AbstractPipeline;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/IntPipeline;->adapt(Lj$/util/Spliterator;)Lj$/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Lj$/util/Spliterator;
    .locals 1

    .line 53
    .local p0, "this":Lj$/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    invoke-virtual {p0}, Lj$/util/stream/IntPipeline;->spliterator()Lj$/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public final sum()I
    .locals 2

    .line 449
    .local p0, "this":Lj$/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    new-instance v0, Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda5;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lj$/util/stream/IntPipeline;->reduce(ILjava/util/function/IntBinaryOperator;)I

    move-result v0

    return v0
.end method

.method public final summaryStatistics()Lj$/util/IntSummaryStatistics;
    .locals 3

    .line 485
    .local p0, "this":Lj$/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    new-instance v0, Lj$/util/stream/Collectors$$ExternalSyntheticLambda27;

    invoke-direct {v0}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda27;-><init>()V

    new-instance v1, Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda2;-><init>()V

    new-instance v2, Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lj$/util/stream/IntPipeline;->collect(Ljava/util/function/Supplier;Ljava/util/function/ObjIntConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/IntSummaryStatistics;

    return-object v0
.end method

.method public final takeWhile(Ljava/util/function/IntPredicate;)Lj$/util/stream/IntStream;
    .locals 1
    .param p1, "predicate"    # Ljava/util/function/IntPredicate;

    .line 415
    .local p0, "this":Lj$/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    invoke-static {p0, p1}, Lj$/util/stream/WhileOps;->makeTakeWhileInt(Lj$/util/stream/AbstractPipeline;Ljava/util/function/IntPredicate;)Lj$/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public final toArray()[I
    .locals 1

    .line 538
    .local p0, "this":Lj$/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    new-instance v0, Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0}, Lj$/util/stream/IntPipeline;->evaluateToArrayNode(Ljava/util/function/IntFunction;)Lj$/util/stream/Node;

    move-result-object v0

    check-cast v0, Lj$/util/stream/Node$OfInt;

    invoke-static {v0}, Lj$/util/stream/Nodes;->flattenInt(Lj$/util/stream/Node$OfInt;)Lj$/util/stream/Node$OfInt;

    move-result-object v0

    .line 539
    invoke-interface {v0}, Lj$/util/stream/Node$OfInt;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 538
    return-object v0
.end method

.method public bridge synthetic unordered()Lj$/util/stream/BaseStream;
    .locals 1

    .line 53
    .local p0, "this":Lj$/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    invoke-virtual {p0}, Lj$/util/stream/IntPipeline;->unordered()Lj$/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public unordered()Lj$/util/stream/IntStream;
    .locals 3

    .line 343
    .local p0, "this":Lj$/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    invoke-virtual {p0}, Lj$/util/stream/IntPipeline;->isOrdered()Z

    move-result v0

    if-nez v0, :cond_0

    .line 344
    return-object p0

    .line 345
    :cond_0
    new-instance v0, Lj$/util/stream/IntPipeline$8;

    sget-object v1, Lj$/util/stream/StreamShape;->INT_VALUE:Lj$/util/stream/StreamShape;

    sget v2, Lj$/util/stream/StreamOpFlag;->NOT_ORDERED:I

    invoke-direct {v0, p0, p0, v1, v2}, Lj$/util/stream/IntPipeline$8;-><init>(Lj$/util/stream/IntPipeline;Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;I)V

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
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Lj$/util/Spliterator<",
            "TP_IN;>;>;Z)",
            "Lj$/util/Spliterator<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 149
    .local p0, "this":Lj$/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    .local p1, "ph":Lj$/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Integer;>;"
    .local p2, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/Spliterator<TP_IN;>;>;"
    new-instance v0, Lj$/util/stream/StreamSpliterators$IntWrappingSpliterator;

    invoke-direct {v0, p1, p2, p3}, Lj$/util/stream/StreamSpliterators$IntWrappingSpliterator;-><init>(Lj$/util/stream/PipelineHelper;Ljava/util/function/Supplier;Z)V

    return-object v0
.end method
