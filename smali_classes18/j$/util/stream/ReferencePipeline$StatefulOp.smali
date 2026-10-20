.class abstract Lj$/util/stream/ReferencePipeline$StatefulOp;
.super Lj$/util/stream/ReferencePipeline;
.source "ReferencePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/ReferencePipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "StatefulOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E_IN:",
        "Ljava/lang/Object;",
        "E_OUT:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/stream/ReferencePipeline<",
        "TE_IN;TE_OUT;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 713
    const-class v0, Lj$/util/stream/ReferencePipeline;

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

    .line 725
    .local p0, "this":Lj$/util/stream/ReferencePipeline$StatefulOp;, "Ljava/util/stream/ReferencePipeline$StatefulOp<TE_IN;TE_OUT;>;"
    .local p1, "upstream":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*TE_IN;*>;"
    invoke-direct {p0, p1, p3}, Lj$/util/stream/ReferencePipeline;-><init>(Lj$/util/stream/AbstractPipeline;I)V

    .line 726
    nop

    .line 727
    return-void
.end method


# virtual methods
.method abstract opEvaluateParallel(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/Node;
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
.end method

.method final opIsStateful()Z
    .locals 1

    .line 731
    .local p0, "this":Lj$/util/stream/ReferencePipeline$StatefulOp;, "Ljava/util/stream/ReferencePipeline$StatefulOp<TE_IN;TE_OUT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic unordered()Lj$/util/stream/BaseStream;
    .locals 1

    .line 713
    .local p0, "this":Lj$/util/stream/ReferencePipeline$StatefulOp;, "Ljava/util/stream/ReferencePipeline$StatefulOp<TE_IN;TE_OUT;>;"
    invoke-super {p0}, Lj$/util/stream/ReferencePipeline;->unordered()Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
