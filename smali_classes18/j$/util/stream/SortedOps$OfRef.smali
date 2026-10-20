.class final Lj$/util/stream/SortedOps$OfRef;
.super Lj$/util/stream/ReferencePipeline$StatefulOp;
.source "SortedOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/SortedOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OfRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/stream/ReferencePipeline$StatefulOp<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation
.end field

.field private final isNaturalSort:Z


# direct methods
.method constructor <init>(Lj$/util/stream/AbstractPipeline;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/AbstractPipeline<",
            "*TT;*>;)V"
        }
    .end annotation

    .line 111
    .local p0, "this":Lj$/util/stream/SortedOps$OfRef;, "Ljava/util/stream/SortedOps$OfRef<TT;>;"
    .local p1, "upstream":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*TT;*>;"
    sget-object v0, Lj$/util/stream/StreamShape;->REFERENCE:Lj$/util/stream/StreamShape;

    sget v1, Lj$/util/stream/StreamOpFlag;->IS_ORDERED:I

    sget v2, Lj$/util/stream/StreamOpFlag;->IS_SORTED:I

    or-int/2addr v1, v2

    invoke-direct {p0, p1, v0, v1}, Lj$/util/stream/ReferencePipeline$StatefulOp;-><init>(Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;I)V

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/stream/SortedOps$OfRef;->isNaturalSort:Z

    .line 116
    invoke-static {}, Lj$/util/Comparator$-CC;->naturalOrder()Ljava/util/Comparator;

    move-result-object v0

    .line 117
    .local v0, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    iput-object v0, p0, Lj$/util/stream/SortedOps$OfRef;->comparator:Ljava/util/Comparator;

    .line 118
    return-void
.end method

.method constructor <init>(Lj$/util/stream/AbstractPipeline;Ljava/util/Comparator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/AbstractPipeline<",
            "*TT;*>;",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    .line 126
    .local p0, "this":Lj$/util/stream/SortedOps$OfRef;, "Ljava/util/stream/SortedOps$OfRef<TT;>;"
    .local p1, "upstream":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*TT;*>;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    sget-object v0, Lj$/util/stream/StreamShape;->REFERENCE:Lj$/util/stream/StreamShape;

    sget v1, Lj$/util/stream/StreamOpFlag;->IS_ORDERED:I

    sget v2, Lj$/util/stream/StreamOpFlag;->NOT_SORTED:I

    or-int/2addr v1, v2

    invoke-direct {p0, p1, v0, v1}, Lj$/util/stream/ReferencePipeline$StatefulOp;-><init>(Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;I)V

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lj$/util/stream/SortedOps$OfRef;->isNaturalSort:Z

    .line 129
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lj$/util/stream/SortedOps$OfRef;->comparator:Ljava/util/Comparator;

    .line 130
    return-void
.end method


# virtual methods
.method public opEvaluateParallel(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/stream/PipelineHelper<",
            "TT;>;",
            "Lj$/util/Spliterator<",
            "TP_IN;>;",
            "Ljava/util/function/IntFunction<",
            "[TT;>;)",
            "Lj$/util/stream/Node<",
            "TT;>;"
        }
    .end annotation

    .line 152
    .local p0, "this":Lj$/util/stream/SortedOps$OfRef;, "Ljava/util/stream/SortedOps$OfRef<TT;>;"
    .local p1, "helper":Lj$/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TT;>;"
    .local p2, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p3, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    sget-object v0, Lj$/util/stream/StreamOpFlag;->SORTED:Lj$/util/stream/StreamOpFlag;

    invoke-virtual {p1}, Lj$/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Lj$/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lj$/util/stream/SortedOps$OfRef;->isNaturalSort:Z

    if-eqz v0, :cond_0

    .line 153
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p3}, Lj$/util/stream/PipelineHelper;->evaluate(Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/Node;

    move-result-object v0

    return-object v0

    .line 157
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0, p3}, Lj$/util/stream/PipelineHelper;->evaluate(Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/Node;

    move-result-object v0

    invoke-interface {v0, p3}, Lj$/util/stream/Node;->asArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    .line 160
    .local v0, "flattenedData":[Ljava/lang/Object;, "[TT;"
    iget-object v1, p0, Lj$/util/stream/SortedOps$OfRef;->comparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 161
    invoke-static {v0}, Lj$/util/stream/Nodes;->node([Ljava/lang/Object;)Lj$/util/stream/Node;

    move-result-object v1

    return-object v1
.end method

.method public opWrapSink(ILj$/util/stream/Sink;)Lj$/util/stream/Sink;
    .locals 2
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lj$/util/stream/Sink<",
            "TT;>;)",
            "Lj$/util/stream/Sink<",
            "TT;>;"
        }
    .end annotation

    .line 134
    .local p0, "this":Lj$/util/stream/SortedOps$OfRef;, "Ljava/util/stream/SortedOps$OfRef<TT;>;"
    .local p2, "sink":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<TT;>;"
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lj$/util/stream/StreamOpFlag;->SORTED:Lj$/util/stream/StreamOpFlag;

    invoke-virtual {v0, p1}, Lj$/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lj$/util/stream/SortedOps$OfRef;->isNaturalSort:Z

    if-eqz v0, :cond_0

    .line 139
    return-object p2

    .line 140
    :cond_0
    sget-object v0, Lj$/util/stream/StreamOpFlag;->SIZED:Lj$/util/stream/StreamOpFlag;

    invoke-virtual {v0, p1}, Lj$/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    new-instance v0, Lj$/util/stream/SortedOps$SizedRefSortingSink;

    iget-object v1, p0, Lj$/util/stream/SortedOps$OfRef;->comparator:Ljava/util/Comparator;

    invoke-direct {v0, p2, v1}, Lj$/util/stream/SortedOps$SizedRefSortingSink;-><init>(Lj$/util/stream/Sink;Ljava/util/Comparator;)V

    return-object v0

    .line 143
    :cond_1
    new-instance v0, Lj$/util/stream/SortedOps$RefSortingSink;

    iget-object v1, p0, Lj$/util/stream/SortedOps$OfRef;->comparator:Ljava/util/Comparator;

    invoke-direct {v0, p2, v1}, Lj$/util/stream/SortedOps$RefSortingSink;-><init>(Lj$/util/stream/Sink;Ljava/util/Comparator;)V

    return-object v0
.end method
