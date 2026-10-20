.class Lj$/util/stream/Nodes$CollectorTask;
.super Lj$/util/stream/AbstractTask;
.source "Nodes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CollectorTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/util/stream/Nodes$CollectorTask$OfDouble;,
        Lj$/util/stream/Nodes$CollectorTask$OfLong;,
        Lj$/util/stream/Nodes$CollectorTask$OfInt;,
        Lj$/util/stream/Nodes$CollectorTask$OfRef;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        "P_OUT:",
        "Ljava/lang/Object;",
        "T_NODE::",
        "Lj$/util/stream/Node<",
        "TP_OUT;>;T_BUI",
        "LDER::Lj$/util/stream/Node$Builder<",
        "TP_OUT;>;>",
        "Lj$/util/stream/AbstractTask<",
        "TP_IN;TP_OUT;TT_NODE;",
        "Lj$/util/stream/Nodes$CollectorTask<",
        "TP_IN;TP_OUT;TT_NODE;TT_BUI",
        "LDER;",
        ">;>;"
    }
.end annotation


# instance fields
.field protected final builderFactory:Ljava/util/function/LongFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/LongFunction<",
            "TT_BUI",
            "LDER;",
            ">;"
        }
    .end annotation
.end field

.field protected final concFactory:Ljava/util/function/BinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BinaryOperator<",
            "TT_NODE;>;"
        }
    .end annotation
.end field

.field protected final helper:Lj$/util/stream/PipelineHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/stream/PipelineHelper<",
            "TP_OUT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lj$/util/stream/Nodes$CollectorTask;Lj$/util/Spliterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/Nodes$CollectorTask<",
            "TP_IN;TP_OUT;TT_NODE;TT_BUI",
            "LDER;",
            ">;",
            "Lj$/util/Spliterator<",
            "TP_IN;>;)V"
        }
    .end annotation

    .line 2176
    .local p0, "this":Lj$/util/stream/Nodes$CollectorTask;, "Ljava/util/stream/Nodes$CollectorTask<TP_IN;TP_OUT;TT_NODE;TT_BUILDER;>;"
    .local p1, "parent":Lj$/util/stream/Nodes$CollectorTask;, "Ljava/util/stream/Nodes$CollectorTask<TP_IN;TP_OUT;TT_NODE;TT_BUILDER;>;"
    .local p2, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-direct {p0, p1, p2}, Lj$/util/stream/AbstractTask;-><init>(Lj$/util/stream/AbstractTask;Lj$/util/Spliterator;)V

    .line 2177
    iget-object v0, p1, Lj$/util/stream/Nodes$CollectorTask;->helper:Lj$/util/stream/PipelineHelper;

    iput-object v0, p0, Lj$/util/stream/Nodes$CollectorTask;->helper:Lj$/util/stream/PipelineHelper;

    .line 2178
    iget-object v0, p1, Lj$/util/stream/Nodes$CollectorTask;->builderFactory:Ljava/util/function/LongFunction;

    iput-object v0, p0, Lj$/util/stream/Nodes$CollectorTask;->builderFactory:Ljava/util/function/LongFunction;

    .line 2179
    iget-object v0, p1, Lj$/util/stream/Nodes$CollectorTask;->concFactory:Ljava/util/function/BinaryOperator;

    iput-object v0, p0, Lj$/util/stream/Nodes$CollectorTask;->concFactory:Ljava/util/function/BinaryOperator;

    .line 2180
    return-void
.end method

.method constructor <init>(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;Ljava/util/function/LongFunction;Ljava/util/function/BinaryOperator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/PipelineHelper<",
            "TP_OUT;>;",
            "Lj$/util/Spliterator<",
            "TP_IN;>;",
            "Ljava/util/function/LongFunction<",
            "TT_BUI",
            "LDER;",
            ">;",
            "Ljava/util/function/BinaryOperator<",
            "TT_NODE;>;)V"
        }
    .end annotation

    .line 2168
    .local p0, "this":Lj$/util/stream/Nodes$CollectorTask;, "Ljava/util/stream/Nodes$CollectorTask<TP_IN;TP_OUT;TT_NODE;TT_BUILDER;>;"
    .local p1, "helper":Lj$/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TP_OUT;>;"
    .local p2, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p3, "builderFactory":Ljava/util/function/LongFunction;, "Ljava/util/function/LongFunction<TT_BUILDER;>;"
    .local p4, "concFactory":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TT_NODE;>;"
    invoke-direct {p0, p1, p2}, Lj$/util/stream/AbstractTask;-><init>(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;)V

    .line 2169
    iput-object p1, p0, Lj$/util/stream/Nodes$CollectorTask;->helper:Lj$/util/stream/PipelineHelper;

    .line 2170
    iput-object p3, p0, Lj$/util/stream/Nodes$CollectorTask;->builderFactory:Ljava/util/function/LongFunction;

    .line 2171
    iput-object p4, p0, Lj$/util/stream/Nodes$CollectorTask;->concFactory:Ljava/util/function/BinaryOperator;

    .line 2172
    return-void
.end method


# virtual methods
.method protected doLeaf()Lj$/util/stream/Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT_NODE;"
        }
    .end annotation

    .line 2190
    .local p0, "this":Lj$/util/stream/Nodes$CollectorTask;, "Ljava/util/stream/Nodes$CollectorTask<TP_IN;TP_OUT;TT_NODE;TT_BUILDER;>;"
    iget-object v0, p0, Lj$/util/stream/Nodes$CollectorTask;->builderFactory:Ljava/util/function/LongFunction;

    iget-object v1, p0, Lj$/util/stream/Nodes$CollectorTask;->helper:Lj$/util/stream/PipelineHelper;

    iget-object v2, p0, Lj$/util/stream/Nodes$CollectorTask;->spliterator:Lj$/util/Spliterator;

    invoke-virtual {v1, v2}, Lj$/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Lj$/util/Spliterator;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Ljava/util/function/LongFunction;->apply(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/stream/Node$Builder;

    .line 2191
    .local v0, "builder":Lj$/util/stream/Node$Builder;, "TT_BUILDER;"
    iget-object v1, p0, Lj$/util/stream/Nodes$CollectorTask;->helper:Lj$/util/stream/PipelineHelper;

    iget-object v2, p0, Lj$/util/stream/Nodes$CollectorTask;->spliterator:Lj$/util/Spliterator;

    invoke-virtual {v1, v0, v2}, Lj$/util/stream/PipelineHelper;->wrapAndCopyInto(Lj$/util/stream/Sink;Lj$/util/Spliterator;)Lj$/util/stream/Sink;

    move-result-object v1

    check-cast v1, Lj$/util/stream/Node$Builder;

    invoke-interface {v1}, Lj$/util/stream/Node$Builder;->build()Lj$/util/stream/Node;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doLeaf()Ljava/lang/Object;
    .locals 1

    .line 2157
    .local p0, "this":Lj$/util/stream/Nodes$CollectorTask;, "Ljava/util/stream/Nodes$CollectorTask<TP_IN;TP_OUT;TT_NODE;TT_BUILDER;>;"
    invoke-virtual {p0}, Lj$/util/stream/Nodes$CollectorTask;->doLeaf()Lj$/util/stream/Node;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic makeChild(Lj$/util/Spliterator;)Lj$/util/stream/AbstractTask;
    .locals 0

    .line 2157
    .local p0, "this":Lj$/util/stream/Nodes$CollectorTask;, "Ljava/util/stream/Nodes$CollectorTask<TP_IN;TP_OUT;TT_NODE;TT_BUILDER;>;"
    invoke-virtual {p0, p1}, Lj$/util/stream/Nodes$CollectorTask;->makeChild(Lj$/util/Spliterator;)Lj$/util/stream/Nodes$CollectorTask;

    move-result-object p1

    return-object p1
.end method

.method protected makeChild(Lj$/util/Spliterator;)Lj$/util/stream/Nodes$CollectorTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/Spliterator<",
            "TP_IN;>;)",
            "Lj$/util/stream/Nodes$CollectorTask<",
            "TP_IN;TP_OUT;TT_NODE;TT_BUI",
            "LDER;",
            ">;"
        }
    .end annotation

    .line 2184
    .local p0, "this":Lj$/util/stream/Nodes$CollectorTask;, "Ljava/util/stream/Nodes$CollectorTask<TP_IN;TP_OUT;TT_NODE;TT_BUILDER;>;"
    .local p1, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    new-instance v0, Lj$/util/stream/Nodes$CollectorTask;

    invoke-direct {v0, p0, p1}, Lj$/util/stream/Nodes$CollectorTask;-><init>(Lj$/util/stream/Nodes$CollectorTask;Lj$/util/Spliterator;)V

    return-object v0
.end method

.method public onCompletion(Ljava/util/concurrent/CountedCompleter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter<",
            "*>;)V"
        }
    .end annotation

    .line 2196
    .local p0, "this":Lj$/util/stream/Nodes$CollectorTask;, "Ljava/util/stream/Nodes$CollectorTask<TP_IN;TP_OUT;TT_NODE;TT_BUILDER;>;"
    .local p1, "caller":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    invoke-virtual {p0}, Lj$/util/stream/Nodes$CollectorTask;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2197
    iget-object v0, p0, Lj$/util/stream/Nodes$CollectorTask;->concFactory:Ljava/util/function/BinaryOperator;

    iget-object v1, p0, Lj$/util/stream/Nodes$CollectorTask;->leftChild:Lj$/util/stream/AbstractTask;

    check-cast v1, Lj$/util/stream/Nodes$CollectorTask;

    invoke-virtual {v1}, Lj$/util/stream/Nodes$CollectorTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj$/util/stream/Node;

    iget-object v2, p0, Lj$/util/stream/Nodes$CollectorTask;->rightChild:Lj$/util/stream/AbstractTask;

    check-cast v2, Lj$/util/stream/Nodes$CollectorTask;

    invoke-virtual {v2}, Lj$/util/stream/Nodes$CollectorTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj$/util/stream/Node;

    invoke-interface {v0, v1, v2}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/stream/Node;

    invoke-virtual {p0, v0}, Lj$/util/stream/Nodes$CollectorTask;->setLocalResult(Ljava/lang/Object;)V

    .line 2198
    :cond_0
    invoke-super {p0, p1}, Lj$/util/stream/AbstractTask;->onCompletion(Ljava/util/concurrent/CountedCompleter;)V

    .line 2199
    return-void
.end method
