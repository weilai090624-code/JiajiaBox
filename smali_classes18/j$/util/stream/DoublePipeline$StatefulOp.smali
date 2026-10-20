.class abstract Lj$/util/stream/DoublePipeline$StatefulOp;
.super Lj$/util/stream/DoublePipeline;
.source "DoublePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/DoublePipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "StatefulOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E_IN:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/stream/DoublePipeline<",
        "TE_IN;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 651
    const-class v0, Lj$/util/stream/DoublePipeline;

    return-void
.end method

.method constructor <init>(Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;I)V
    .locals 0
    .param p2, "inputShape"    # Lj$/util/stream/StreamShape;
    .param p3, "opFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/AbstractPipeline<",
            "*TE_IN;*>;",
            "Lj$/util/stream/StreamShape;",
            "I)V"
        }
    .end annotation

    .line 663
    .local p0, "this":Lj$/util/stream/DoublePipeline$StatefulOp;, "Ljava/util/stream/DoublePipeline$StatefulOp<TE_IN;>;"
    .local p1, "upstream":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*TE_IN;*>;"
    invoke-direct {p0, p1, p3}, Lj$/util/stream/DoublePipeline;-><init>(Lj$/util/stream/AbstractPipeline;I)V

    .line 664
    nop

    .line 665
    return-void
.end method


# virtual methods
.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 651
    .local p0, "this":Lj$/util/stream/DoublePipeline$StatefulOp;, "Ljava/util/stream/DoublePipeline$StatefulOp<TE_IN;>;"
    invoke-super {p0}, Lj$/util/stream/DoublePipeline;->iterator()Lj$/util/PrimitiveIterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic lazySpliterator(Ljava/util/function/Supplier;)Lj$/util/Spliterator;
    .locals 0

    .line 651
    .local p0, "this":Lj$/util/stream/DoublePipeline$StatefulOp;, "Ljava/util/stream/DoublePipeline$StatefulOp<TE_IN;>;"
    invoke-super {p0, p1}, Lj$/util/stream/DoublePipeline;->lazySpliterator(Ljava/util/function/Supplier;)Lj$/util/Spliterator$OfDouble;

    move-result-object p1

    return-object p1
.end method

.method abstract opEvaluateParallel(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/stream/PipelineHelper<",
            "Ljava/lang/Double;",
            ">;",
            "Lj$/util/Spliterator<",
            "TP_IN;>;",
            "Ljava/util/function/IntFunction<",
            "[",
            "Ljava/lang/Double;",
            ">;)",
            "Lj$/util/stream/Node<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end method

.method final opIsStateful()Z
    .locals 1

    .line 669
    .local p0, "this":Lj$/util/stream/DoublePipeline$StatefulOp;, "Ljava/util/stream/DoublePipeline$StatefulOp<TE_IN;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic parallel()Lj$/util/stream/DoubleStream;
    .locals 1

    .line 651
    .local p0, "this":Lj$/util/stream/DoublePipeline$StatefulOp;, "Ljava/util/stream/DoublePipeline$StatefulOp<TE_IN;>;"
    invoke-super {p0}, Lj$/util/stream/DoublePipeline;->parallel()Lj$/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Lj$/util/stream/DoubleStream;

    return-object v0
.end method

.method public bridge synthetic sequential()Lj$/util/stream/DoubleStream;
    .locals 1

    .line 651
    .local p0, "this":Lj$/util/stream/DoublePipeline$StatefulOp;, "Ljava/util/stream/DoublePipeline$StatefulOp<TE_IN;>;"
    invoke-super {p0}, Lj$/util/stream/DoublePipeline;->sequential()Lj$/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Lj$/util/stream/DoubleStream;

    return-object v0
.end method

.method public bridge synthetic spliterator()Lj$/util/Spliterator;
    .locals 1

    .line 651
    .local p0, "this":Lj$/util/stream/DoublePipeline$StatefulOp;, "Ljava/util/stream/DoublePipeline$StatefulOp<TE_IN;>;"
    invoke-super {p0}, Lj$/util/stream/DoublePipeline;->spliterator()Lj$/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic unordered()Lj$/util/stream/BaseStream;
    .locals 1

    .line 651
    .local p0, "this":Lj$/util/stream/DoublePipeline$StatefulOp;, "Ljava/util/stream/DoublePipeline$StatefulOp<TE_IN;>;"
    invoke-super {p0}, Lj$/util/stream/DoublePipeline;->unordered()Lj$/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method
