.class final Lj$/util/stream/Nodes$CollectorTask$OfDouble;
.super Lj$/util/stream/Nodes$CollectorTask;
.source "Nodes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/Nodes$CollectorTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OfDouble"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/stream/Nodes$CollectorTask<",
        "TP_IN;",
        "Ljava/lang/Double;",
        "Lj$/util/stream/Node$OfDouble;",
        "Lj$/util/stream/Node$Builder$OfDouble;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/PipelineHelper<",
            "Ljava/lang/Double;",
            ">;",
            "Lj$/util/Spliterator<",
            "TP_IN;>;)V"
        }
    .end annotation

    .line 2231
    .local p0, "this":Lj$/util/stream/Nodes$CollectorTask$OfDouble;, "Ljava/util/stream/Nodes$CollectorTask$OfDouble<TP_IN;>;"
    .local p1, "helper":Lj$/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Double;>;"
    .local p2, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    new-instance v0, Lj$/util/stream/Nodes$CollectorTask$OfDouble$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lj$/util/stream/Nodes$CollectorTask$OfDouble$$ExternalSyntheticLambda0;-><init>()V

    new-instance v1, Lj$/util/stream/Nodes$CollectorTask$OfDouble$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lj$/util/stream/Nodes$CollectorTask$OfDouble$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, Lj$/util/stream/Nodes$CollectorTask;-><init>(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;Ljava/util/function/LongFunction;Ljava/util/function/BinaryOperator;)V

    .line 2232
    return-void
.end method


# virtual methods
.method protected bridge synthetic doLeaf()Ljava/lang/Object;
    .locals 1

    .line 2227
    .local p0, "this":Lj$/util/stream/Nodes$CollectorTask$OfDouble;, "Ljava/util/stream/Nodes$CollectorTask$OfDouble<TP_IN;>;"
    invoke-super {p0}, Lj$/util/stream/Nodes$CollectorTask;->doLeaf()Lj$/util/stream/Node;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic makeChild(Lj$/util/Spliterator;)Lj$/util/stream/AbstractTask;
    .locals 0

    .line 2227
    .local p0, "this":Lj$/util/stream/Nodes$CollectorTask$OfDouble;, "Ljava/util/stream/Nodes$CollectorTask$OfDouble<TP_IN;>;"
    invoke-super {p0, p1}, Lj$/util/stream/Nodes$CollectorTask;->makeChild(Lj$/util/Spliterator;)Lj$/util/stream/Nodes$CollectorTask;

    move-result-object p1

    return-object p1
.end method
