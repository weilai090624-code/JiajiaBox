.class abstract Lj$/util/stream/ReferencePipeline;
.super Lj$/util/stream/AbstractPipeline;
.source "ReferencePipeline.java"

# interfaces
.implements Lj$/util/stream/Stream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/util/stream/ReferencePipeline$StatefulOp;,
        Lj$/util/stream/ReferencePipeline$StatelessOp;,
        Lj$/util/stream/ReferencePipeline$Head;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        "P_OUT:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/stream/AbstractPipeline<",
        "TP_IN;TP_OUT;",
        "Lj$/util/stream/Stream<",
        "TP_OUT;>;>;",
        "Lj$/util/stream/Stream<",
        "TP_OUT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lj$/util/Spliterator;IZ)V
    .locals 0
    .param p2, "sourceFlags"    # I
    .param p3, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/Spliterator<",
            "*>;IZ)V"
        }
    .end annotation

    .line 84
    .local p0, "this":Lj$/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "source":Lj$/util/Spliterator;, "Ljava/util/Spliterator<*>;"
    invoke-direct {p0, p1, p2, p3}, Lj$/util/stream/AbstractPipeline;-><init>(Lj$/util/Spliterator;IZ)V

    .line 85
    return-void
.end method

.method constructor <init>(Lj$/util/stream/AbstractPipeline;I)V
    .locals 0
    .param p2, "opFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/AbstractPipeline<",
            "*TP_IN;*>;I)V"
        }
    .end annotation

    .line 94
    .local p0, "this":Lj$/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "upstream":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*TP_IN;*>;"
    invoke-direct {p0, p1, p2}, Lj$/util/stream/AbstractPipeline;-><init>(Lj$/util/stream/AbstractPipeline;I)V

    .line 95
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
            "*>;>;IZ)V"
        }
    .end annotation

    .line 71
    .local p0, "this":Lj$/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "source":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+Ljava/util/Spliterator<*>;>;"
    invoke-direct {p0, p1, p2, p3}, Lj$/util/stream/AbstractPipeline;-><init>(Ljava/util/function/Supplier;IZ)V

    .line 72
    return-void
.end method

.method static synthetic lambda$collect$1(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "accumulator"    # Ljava/util/function/BiConsumer;
    .param p1, "container"    # Ljava/lang/Object;
    .param p2, "u"    # Ljava/lang/Object;

    .line 575
    invoke-interface {p0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$toArray$0(I)[Ljava/lang/Object;
    .locals 1
    .param p0, "x$0"    # I

    .line 523
    new-array v0, p0, [Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final allMatch(Ljava/util/function/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TP_OUT;>;)Z"
        }
    .end annotation

    .line 533
    .local p0, "this":Lj$/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TP_OUT;>;"
    sget-object v0, Lj$/util/stream/MatchOps$MatchKind;->ALL:Lj$/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v0}, Lj$/util/stream/MatchOps;->makeRef(Ljava/util/function/Predicate;Lj$/util/stream/MatchOps$MatchKind;)Lj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/util/stream/ReferencePipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final anyMatch(Ljava/util/function/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TP_OUT;>;)Z"
        }
    .end annotation

    .line 528
    .local p0, "this":Lj$/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TP_OUT;>;"
    sget-object v0, Lj$/util/stream/MatchOps$MatchKind;->ANY:Lj$/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v0}, Lj$/util/stream/MatchOps;->makeRef(Ljava/util/function/Predicate;Lj$/util/stream/MatchOps$MatchKind;)Lj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/util/stream/ReferencePipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final collect(Lj$/util/stream/Collector;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/stream/Collector<",
            "-TP_OUT;TA;TR;>;)TR;"
        }
    .end annotation

    .line 570
    .local p0, "this":Lj$/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "collector":Lj$/util/stream/Collector;, "Ljava/util/stream/Collector<-TP_OUT;TA;TR;>;"
    invoke-virtual {p0}, Lj$/util/stream/ReferencePipeline;->isParallel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 571
    invoke-interface {p1}, Lj$/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lj$/util/stream/Collector$Characteristics;->CONCURRENT:Lj$/util/stream/Collector$Characteristics;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 572
    invoke-virtual {p0}, Lj$/util/stream/ReferencePipeline;->isOrdered()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lj$/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lj$/util/stream/Collector$Characteristics;->UNORDERED:Lj$/util/stream/Collector$Characteristics;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 573
    :cond_0
    invoke-interface {p1}, Lj$/util/stream/Collector;->supplier()Ljava/util/function/Supplier;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    .line 574
    .local v0, "container":Ljava/lang/Object;, "TA;"
    invoke-interface {p1}, Lj$/util/stream/Collector;->accumulator()Ljava/util/function/BiConsumer;

    move-result-object v1

    .line 575
    .local v1, "accumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TA;-TP_OUT;>;"
    new-instance v2, Lj$/util/stream/ReferencePipeline$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, v0}, Lj$/util/stream/ReferencePipeline$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/BiConsumer;Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lj$/util/stream/ReferencePipeline;->forEach(Ljava/util/function/Consumer;)V

    .line 576
    .end local v1    # "accumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TA;-TP_OUT;>;"
    goto :goto_0

    .line 578
    .end local v0    # "container":Ljava/lang/Object;, "TA;"
    :cond_1
    invoke-static {p1}, Lj$/util/stream/ReduceOps;->makeRef(Lj$/util/stream/Collector;)Lj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/util/stream/ReferencePipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    .line 580
    .restart local v0    # "container":Ljava/lang/Object;, "TA;"
    :goto_0
    invoke-interface {p1}, Lj$/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v1

    sget-object v2, Lj$/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Lj$/util/stream/Collector$Characteristics;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 581
    move-object v1, v0

    goto :goto_1

    .line 582
    :cond_2
    invoke-interface {p1}, Lj$/util/stream/Collector;->finisher()Ljava/util/function/Function;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 580
    :goto_1
    return-object v1
.end method

.method public final collect(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TR;>;",
            "Ljava/util/function/BiConsumer<",
            "TR;-TP_OUT;>;",
            "Ljava/util/function/BiConsumer<",
            "TR;TR;>;)TR;"
        }
    .end annotation

    .line 589
    .local p0, "this":Lj$/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TR;>;"
    .local p2, "accumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TR;-TP_OUT;>;"
    .local p3, "combiner":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TR;TR;>;"
    invoke-static {p1, p2, p3}, Lj$/util/stream/ReduceOps;->makeRef(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Lj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/util/stream/ReferencePipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final count()J
    .locals 2

    .line 605
    .local p0, "this":Lj$/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    invoke-static {}, Lj$/util/stream/ReduceOps;->makeRefCounting()Lj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/util/stream/ReferencePipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final distinct()Lj$/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/stream/Stream<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 453
    .local p0, "this":Lj$/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    invoke-static {p0}, Lj$/util/stream/DistinctOps;->makeRef(Lj$/util/stream/AbstractPipeline;)Lj$/util/stream/ReferencePipeline;

    move-result-object v0

    return-object v0
.end method

.method public final dropWhile(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TP_OUT;>;)",
            "Lj$/util/stream/Stream<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 490
    .local p0, "this":Lj$/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TP_OUT;>;"
    invoke-static {p0, p1}, Lj$/util/stream/WhileOps;->makeDropWhileRef(Lj$/util/stream/AbstractPipeline;Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

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
            "TP_OUT;>;",
            "Lj$/util/Spliterator<",
            "TP_IN;>;Z",
            "Ljava/util/function/IntFunction<",
            "[TP_OUT;>;)",
            "Lj$/util/stream/Node<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 109
    .local p0, "this":Lj$/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "helper":Lj$/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TP_OUT;>;"
    .local p2, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p4, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TP_OUT;>;"
    invoke-static {p1, p2, p3, p4}, Lj$/util/stream/Nodes;->collect(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/Node;

    move-result-object v0

    return-object v0
.end method

.method public final filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TP_OUT;>;)",
            "Lj$/util/stream/Stream<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 163
    .local p0, "this":Lj$/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TP_OUT;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    new-instance v6, Lj$/util/stream/ReferencePipeline$2;

    sget-object v3, Lj$/util/stream/StreamShape;->REFERENCE:Lj$/util/stream/StreamShape;

    sget v4, Lj$/util/stream/StreamOpFlag;->NOT_SIZED:I

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/ReferencePipeline$2;-><init>(Lj$/util/stream/ReferencePipeline;Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;ILjava/util/function/Predicate;)V

    return-object v6
.end method

.method public final findAny()Lj$/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/Optional<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 548
    .local p0, "this":Lj$/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    const/4 v0, 0x0

    invoke-static {v0}, Lj$/util/stream/FindOps;->makeRef(Z)Lj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/util/stream/ReferencePipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/Optional;

    return-object v0
.end method

.method public final findFirst()Lj$/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/Optional<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 543
    .local p0, "this":Lj$/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    const/4 v0, 0x1

    invoke-static {v0}, Lj$/util/stream/FindOps;->makeRef(Z)Lj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/util/stream/ReferencePipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/Optional;

    return-object v0
.end method

.method public final flatMap(Ljava/util/function/Function;)Lj$/util/stream/Stream;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TP_OUT;+",
            "Lj$/util/stream/Stream<",
            "+TR;>;>;)",
            "Lj$/util/stream/Stream<",
            "TR;>;"
        }
    .end annotation

    .line 255
    .local p0, "this":Lj$/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "mapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TP_OUT;+Ljava/util/stream/Stream<+TR;>;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    new-instance v6, Lj$/util/stream/ReferencePipeline$7;

    sget-object v3, Lj$/util/stream/StreamShape;->REFERENCE:Lj$/util/stream/StreamShape;

    sget v0, Lj$/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Lj$/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v0, v1

    sget v1, Lj$/util/stream/StreamOpFlag;->NOT_SIZED:I

    or-int v4, v0, v1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/ReferencePipeline$7;-><init>(Lj$/util/stream/ReferencePipeline;Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;ILjava/util/function/Function;)V

    return-object v6
.end method

.method public final flatMapToDouble(Ljava/util/function/Function;)Lj$/util/stream/DoubleStream;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "-TP_OUT;+",
            "Lj$/util/stream/DoubleStream;",
            ">;)",
            "Lj$/util/stream/DoubleStream;"
        }
    .end annotation

    .line 344
    .local p0, "this":Lj$/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "mapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TP_OUT;+Ljava/util/stream/DoubleStream;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    new-instance v6, Lj$/util/stream/ReferencePipeline$9;

    sget-object v3, Lj$/util/stream/StreamShape;->REFERENCE:Lj$/util/stream/StreamShape;

    sget v0, Lj$/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Lj$/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v0, v1

    sget v1, Lj$/util/stream/StreamOpFlag;->NOT_SIZED:I

    or-int v4, v0, v1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/ReferencePipeline$9;-><init>(Lj$/util/stream/ReferencePipeline;Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;ILjava/util/function/Function;)V

    return-object v6
.end method

.method public final flatMapToInt(Ljava/util/function/Function;)Lj$/util/stream/IntStream;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "-TP_OUT;+",
            "Lj$/util/stream/IntStream;",
            ">;)",
            "Lj$/util/stream/IntStream;"
        }
    .end annotation

    .line 300
    .local p0, "this":Lj$/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "mapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TP_OUT;+Ljava/util/stream/IntStream;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    new-instance v6, Lj$/util/stream/ReferencePipeline$8;

    sget-object v3, Lj$/util/stream/StreamShape;->REFERENCE:Lj$/util/stream/StreamShape;

    sget v0, Lj$/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Lj$/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v0, v1

    sget v1, Lj$/util/stream/StreamOpFlag;->NOT_SIZED:I

    or-int v4, v0, v1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/ReferencePipeline$8;-><init>(Lj$/util/stream/ReferencePipeline;Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;ILjava/util/function/Function;)V

    return-object v6
.end method

.method public final flatMapToLong(Ljava/util/function/Function;)Lj$/util/stream/LongStream;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "-TP_OUT;+",
            "Lj$/util/stream/LongStream;",
            ">;)",
            "Lj$/util/stream/LongStream;"
        }
    .end annotation

    .line 388
    .local p0, "this":Lj$/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "mapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TP_OUT;+Ljava/util/stream/LongStream;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    new-instance v6, Lj$/util/stream/ReferencePipeline$10;

    sget-object v3, Lj$/util/stream/StreamShape;->REFERENCE:Lj$/util/stream/StreamShape;

    sget v0, Lj$/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Lj$/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v0, v1

    sget v1, Lj$/util/stream/StreamOpFlag;->NOT_SIZED:I

    or-int v4, v0, v1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/ReferencePipeline$10;-><init>(Lj$/util/stream/ReferencePipeline;Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;ILjava/util/function/Function;)V

    return-object v6
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TP_OUT;>;)V"
        }
    .end annotation

    .line 497
    .local p0, "this":Lj$/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TP_OUT;>;"
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lj$/util/stream/ForEachOps;->makeRef(Ljava/util/function/Consumer;Z)Lj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/util/stream/ReferencePipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    .line 498
    return-void
.end method

.method public forEachOrdered(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TP_OUT;>;)V"
        }
    .end annotation

    .line 502
    .local p0, "this":Lj$/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TP_OUT;>;"
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lj$/util/stream/ForEachOps;->makeRef(Ljava/util/function/Consumer;Z)Lj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/util/stream/ReferencePipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    .line 503
    return-void
.end method

.method final forEachWithCancel(Lj$/util/Spliterator;Lj$/util/stream/Sink;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/Spliterator<",
            "TP_OUT;>;",
            "Lj$/util/stream/Sink<",
            "TP_OUT;>;)Z"
        }
    .end annotation

    .line 127
    .local p0, "this":Lj$/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_OUT;>;"
    .local p2, "sink":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<TP_OUT;>;"
    nop

    :cond_0
    invoke-interface {p2}, Lj$/util/stream/Sink;->cancellationRequested()Z

    move-result v0

    move v1, v0

    .local v1, "cancelled":Z
    if-nez v0, :cond_1

    invoke-interface {p1, p2}, Lj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    :cond_1
    return v1
.end method

.method final getOutputShape()Lj$/util/stream/StreamShape;
    .locals 1

    .line 101
    .local p0, "this":Lj$/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    sget-object v0, Lj$/util/stream/StreamShape;->REFERENCE:Lj$/util/stream/StreamShape;

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 141
    .local p0, "this":Lj$/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    invoke-virtual {p0}, Lj$/util/stream/ReferencePipeline;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Spliterators;->iterator(Lj$/util/Spliterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method final lazySpliterator(Ljava/util/function/Supplier;)Lj$/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "+",
            "Lj$/util/Spliterator<",
            "TP_OUT;>;>;)",
            "Lj$/util/Spliterator<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 121
    .local p0, "this":Lj$/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+Ljava/util/Spliterator<TP_OUT;>;>;"
    new-instance v0, Lj$/util/stream/StreamSpliterators$DelegatingSpliterator;

    invoke-direct {v0, p1}, Lj$/util/stream/StreamSpliterators$DelegatingSpliterator;-><init>(Ljava/util/function/Supplier;)V

    return-object v0
.end method

.method public final limit(J)Lj$/util/stream/Stream;
    .locals 3
    .param p1, "maxSize"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lj$/util/stream/Stream<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 468
    .local p0, "this":Lj$/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 470
    invoke-static {p0, v0, v1, p1, p2}, Lj$/util/stream/SliceOps;->makeRef(Lj$/util/stream/AbstractPipeline;JJ)Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0

    .line 469
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
            "[TP_OUT;>;)",
            "Lj$/util/stream/Node$Builder<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 133
    .local p0, "this":Lj$/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p3, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TP_OUT;>;"
    invoke-static {p1, p2, p3}, Lj$/util/stream/Nodes;->builder(JLjava/util/function/IntFunction;)Lj$/util/stream/Node$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final map(Ljava/util/function/Function;)Lj$/util/stream/Stream;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TP_OUT;+TR;>;)",
            "Lj$/util/stream/Stream<",
            "TR;>;"
        }
    .end annotation

    .line 187
    .local p0, "this":Lj$/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "mapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TP_OUT;+TR;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    new-instance v6, Lj$/util/stream/ReferencePipeline$3;

    sget-object v3, Lj$/util/stream/StreamShape;->REFERENCE:Lj$/util/stream/StreamShape;

    sget v0, Lj$/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Lj$/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v0, v1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/ReferencePipeline$3;-><init>(Lj$/util/stream/ReferencePipeline;Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;ILjava/util/function/Function;)V

    return-object v6
.end method

.method public final mapToDouble(Ljava/util/function/ToDoubleFunction;)Lj$/util/stream/DoubleStream;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/ToDoubleFunction<",
            "-TP_OUT;>;)",
            "Lj$/util/stream/DoubleStream;"
        }
    .end annotation

    .line 238
    .local p0, "this":Lj$/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "mapper":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<-TP_OUT;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    new-instance v6, Lj$/util/stream/ReferencePipeline$6;

    sget-object v3, Lj$/util/stream/StreamShape;->REFERENCE:Lj$/util/stream/StreamShape;

    sget v0, Lj$/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Lj$/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v0, v1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/ReferencePipeline$6;-><init>(Lj$/util/stream/ReferencePipeline;Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;ILjava/util/function/ToDoubleFunction;)V

    return-object v6
.end method

.method public final mapToInt(Ljava/util/function/ToIntFunction;)Lj$/util/stream/IntStream;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/ToIntFunction<",
            "-TP_OUT;>;)",
            "Lj$/util/stream/IntStream;"
        }
    .end annotation

    .line 204
    .local p0, "this":Lj$/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "mapper":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<-TP_OUT;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    new-instance v6, Lj$/util/stream/ReferencePipeline$4;

    sget-object v3, Lj$/util/stream/StreamShape;->REFERENCE:Lj$/util/stream/StreamShape;

    sget v0, Lj$/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Lj$/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v0, v1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/ReferencePipeline$4;-><init>(Lj$/util/stream/ReferencePipeline;Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;ILjava/util/function/ToIntFunction;)V

    return-object v6
.end method

.method public final mapToLong(Ljava/util/function/ToLongFunction;)Lj$/util/stream/LongStream;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/ToLongFunction<",
            "-TP_OUT;>;)",
            "Lj$/util/stream/LongStream;"
        }
    .end annotation

    .line 221
    .local p0, "this":Lj$/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "mapper":Ljava/util/function/ToLongFunction;, "Ljava/util/function/ToLongFunction<-TP_OUT;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    new-instance v6, Lj$/util/stream/ReferencePipeline$5;

    sget-object v3, Lj$/util/stream/StreamShape;->REFERENCE:Lj$/util/stream/StreamShape;

    sget v0, Lj$/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Lj$/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v0, v1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/ReferencePipeline$5;-><init>(Lj$/util/stream/ReferencePipeline;Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;ILjava/util/function/ToLongFunction;)V

    return-object v6
.end method

.method public final max(Ljava/util/Comparator;)Lj$/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TP_OUT;>;)",
            "Lj$/util/Optional<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 594
    .local p0, "this":Lj$/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TP_OUT;>;"
    invoke-static {p1}, Lj$/util/function/BinaryOperator$-CC;->maxBy(Ljava/util/Comparator;)Ljava/util/function/BinaryOperator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/util/stream/ReferencePipeline;->reduce(Ljava/util/function/BinaryOperator;)Lj$/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public final min(Ljava/util/Comparator;)Lj$/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TP_OUT;>;)",
            "Lj$/util/Optional<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 599
    .local p0, "this":Lj$/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TP_OUT;>;"
    invoke-static {p1}, Lj$/util/function/BinaryOperator$-CC;->minBy(Ljava/util/Comparator;)Ljava/util/function/BinaryOperator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/util/stream/ReferencePipeline;->reduce(Ljava/util/function/BinaryOperator;)Lj$/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public final noneMatch(Ljava/util/function/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TP_OUT;>;)Z"
        }
    .end annotation

    .line 538
    .local p0, "this":Lj$/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TP_OUT;>;"
    sget-object v0, Lj$/util/stream/MatchOps$MatchKind;->NONE:Lj$/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v0}, Lj$/util/stream/MatchOps;->makeRef(Ljava/util/function/Predicate;Lj$/util/stream/MatchOps$MatchKind;)Lj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/util/stream/ReferencePipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final peek(Ljava/util/function/Consumer;)Lj$/util/stream/Stream;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TP_OUT;>;)",
            "Lj$/util/stream/Stream<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 433
    .local p0, "this":Lj$/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TP_OUT;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    new-instance v6, Lj$/util/stream/ReferencePipeline$11;

    sget-object v3, Lj$/util/stream/StreamShape;->REFERENCE:Lj$/util/stream/StreamShape;

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/ReferencePipeline$11;-><init>(Lj$/util/stream/ReferencePipeline;Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;ILjava/util/function/Consumer;)V

    return-object v6
.end method

.method public final reduce(Ljava/util/function/BinaryOperator;)Lj$/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BinaryOperator<",
            "TP_OUT;>;)",
            "Lj$/util/Optional<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 558
    .local p0, "this":Lj$/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "accumulator":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TP_OUT;>;"
    invoke-static {p1}, Lj$/util/stream/ReduceOps;->makeRef(Ljava/util/function/BinaryOperator;)Lj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/util/stream/ReferencePipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/Optional;

    return-object v0
.end method

.method public final reduce(Ljava/lang/Object;Ljava/util/function/BiFunction;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Ljava/util/function/BiFunction<",
            "TR;-TP_OUT;TR;>;",
            "Ljava/util/function/BinaryOperator<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 563
    .local p0, "this":Lj$/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "identity":Ljava/lang/Object;, "TR;"
    .local p2, "accumulator":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<TR;-TP_OUT;TR;>;"
    .local p3, "combiner":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TR;>;"
    invoke-static {p1, p2, p3}, Lj$/util/stream/ReduceOps;->makeRef(Ljava/lang/Object;Ljava/util/function/BiFunction;Ljava/util/function/BinaryOperator;)Lj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/util/stream/ReferencePipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final reduce(Ljava/lang/Object;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP_OUT;",
            "Ljava/util/function/BinaryOperator<",
            "TP_OUT;>;)TP_OUT;"
        }
    .end annotation

    .line 553
    .local p0, "this":Lj$/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "identity":Ljava/lang/Object;, "TP_OUT;"
    .local p2, "accumulator":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TP_OUT;>;"
    invoke-static {p1, p2, p2}, Lj$/util/stream/ReduceOps;->makeRef(Ljava/lang/Object;Ljava/util/function/BiFunction;Ljava/util/function/BinaryOperator;)Lj$/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/util/stream/ReferencePipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final skip(J)Lj$/util/stream/Stream;
    .locals 3
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lj$/util/stream/Stream<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 475
    .local p0, "this":Lj$/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    .line 477
    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 478
    return-object p0

    .line 480
    :cond_0
    const-wide/16 v0, -0x1

    invoke-static {p0, p1, p2, v0, v1}, Lj$/util/stream/SliceOps;->makeRef(Lj$/util/stream/AbstractPipeline;JJ)Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0

    .line 476
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final sorted()Lj$/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/stream/Stream<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 458
    .local p0, "this":Lj$/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    invoke-static {p0}, Lj$/util/stream/SortedOps;->makeRef(Lj$/util/stream/AbstractPipeline;)Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final sorted(Ljava/util/Comparator;)Lj$/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TP_OUT;>;)",
            "Lj$/util/stream/Stream<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 463
    .local p0, "this":Lj$/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TP_OUT;>;"
    invoke-static {p0, p1}, Lj$/util/stream/SortedOps;->makeRef(Lj$/util/stream/AbstractPipeline;Ljava/util/Comparator;)Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final takeWhile(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TP_OUT;>;)",
            "Lj$/util/stream/Stream<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 485
    .local p0, "this":Lj$/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TP_OUT;>;"
    invoke-static {p0, p1}, Lj$/util/stream/WhileOps;->makeTakeWhileRef(Lj$/util/stream/AbstractPipeline;Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 1

    .line 523
    .local p0, "this":Lj$/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    new-instance v0, Lj$/util/stream/ReferencePipeline$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lj$/util/stream/ReferencePipeline$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, v0}, Lj$/util/stream/ReferencePipeline;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/IntFunction<",
            "[TA;>;)[TA;"
        }
    .end annotation

    .line 516
    .local p0, "this":Lj$/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TA;>;"
    move-object v0, p1

    .line 517
    .local v0, "rawGenerator":Ljava/util/function/IntFunction;
    invoke-virtual {p0, v0}, Lj$/util/stream/ReferencePipeline;->evaluateToArrayNode(Ljava/util/function/IntFunction;)Lj$/util/stream/Node;

    move-result-object v1

    invoke-static {v1, v0}, Lj$/util/stream/Nodes;->flatten(Lj$/util/stream/Node;Ljava/util/function/IntFunction;)Lj$/util/stream/Node;

    move-result-object v1

    .line 518
    invoke-interface {v1, v0}, Lj$/util/stream/Node;->asArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    .line 517
    return-object v1
.end method

.method public bridge synthetic unordered()Lj$/util/stream/BaseStream;
    .locals 1

    .line 57
    .local p0, "this":Lj$/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    invoke-virtual {p0}, Lj$/util/stream/ReferencePipeline;->unordered()Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public unordered()Lj$/util/stream/Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/stream/Stream<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 151
    .local p0, "this":Lj$/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    invoke-virtual {p0}, Lj$/util/stream/ReferencePipeline;->isOrdered()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    return-object p0

    .line 153
    :cond_0
    new-instance v0, Lj$/util/stream/ReferencePipeline$1;

    sget-object v1, Lj$/util/stream/StreamShape;->REFERENCE:Lj$/util/stream/StreamShape;

    sget v2, Lj$/util/stream/StreamOpFlag;->NOT_ORDERED:I

    invoke-direct {v0, p0, p0, v1, v2}, Lj$/util/stream/ReferencePipeline$1;-><init>(Lj$/util/stream/ReferencePipeline;Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;I)V

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
            "TP_OUT;>;",
            "Ljava/util/function/Supplier<",
            "Lj$/util/Spliterator<",
            "TP_IN;>;>;Z)",
            "Lj$/util/Spliterator<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 116
    .local p0, "this":Lj$/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "ph":Lj$/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TP_OUT;>;"
    .local p2, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/Spliterator<TP_IN;>;>;"
    new-instance v0, Lj$/util/stream/StreamSpliterators$WrappingSpliterator;

    invoke-direct {v0, p1, p2, p3}, Lj$/util/stream/StreamSpliterators$WrappingSpliterator;-><init>(Lj$/util/stream/PipelineHelper;Ljava/util/function/Supplier;Z)V

    return-object v0
.end method
