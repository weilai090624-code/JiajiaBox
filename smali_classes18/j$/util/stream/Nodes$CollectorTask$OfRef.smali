.class final Lj$/util/stream/Nodes$CollectorTask$OfRef;
.super Lj$/util/stream/Nodes$CollectorTask;
.source "Nodes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/Nodes$CollectorTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OfRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        "P_OUT:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/stream/Nodes$CollectorTask<",
        "TP_IN;TP_OUT;",
        "Lj$/util/stream/Node<",
        "TP_OUT;>;",
        "Lj$/util/stream/Node$Builder<",
        "TP_OUT;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lj$/util/stream/PipelineHelper;Ljava/util/function/IntFunction;Lj$/util/Spliterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/PipelineHelper<",
            "TP_OUT;>;",
            "Ljava/util/function/IntFunction<",
            "[TP_OUT;>;",
            "Lj$/util/Spliterator<",
            "TP_IN;>;)V"
        }
    .end annotation

    .line 2207
    .local p0, "this":Lj$/util/stream/Nodes$CollectorTask$OfRef;, "Ljava/util/stream/Nodes$CollectorTask$OfRef<TP_IN;TP_OUT;>;"
    .local p1, "helper":Lj$/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TP_OUT;>;"
    .local p2, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TP_OUT;>;"
    .local p3, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    new-instance v0, Lj$/util/stream/Nodes$CollectorTask$OfRef$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lj$/util/stream/Nodes$CollectorTask$OfRef$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/IntFunction;)V

    new-instance v1, Lj$/util/stream/Nodes$CollectorTask$OfRef$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lj$/util/stream/Nodes$CollectorTask$OfRef$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p0, p1, p3, v0, v1}, Lj$/util/stream/Nodes$CollectorTask;-><init>(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;Ljava/util/function/LongFunction;Ljava/util/function/BinaryOperator;)V

    .line 2208
    return-void
.end method

.method static synthetic lambda$new$0(Ljava/util/function/IntFunction;J)Lj$/util/stream/Node$Builder;
    .locals 1
    .param p0, "generator"    # Ljava/util/function/IntFunction;
    .param p1, "s"    # J

    .line 2207
    invoke-static {p1, p2, p0}, Lj$/util/stream/Nodes;->builder(JLjava/util/function/IntFunction;)Lj$/util/stream/Node$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doLeaf()Ljava/lang/Object;
    .locals 1

    .line 2201
    .local p0, "this":Lj$/util/stream/Nodes$CollectorTask$OfRef;, "Ljava/util/stream/Nodes$CollectorTask$OfRef<TP_IN;TP_OUT;>;"
    invoke-super {p0}, Lj$/util/stream/Nodes$CollectorTask;->doLeaf()Lj$/util/stream/Node;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic makeChild(Lj$/util/Spliterator;)Lj$/util/stream/AbstractTask;
    .locals 0

    .line 2201
    .local p0, "this":Lj$/util/stream/Nodes$CollectorTask$OfRef;, "Ljava/util/stream/Nodes$CollectorTask$OfRef<TP_IN;TP_OUT;>;"
    invoke-super {p0, p1}, Lj$/util/stream/Nodes$CollectorTask;->makeChild(Lj$/util/Spliterator;)Lj$/util/stream/Nodes$CollectorTask;

    move-result-object p1

    return-object p1
.end method
