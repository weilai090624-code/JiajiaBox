.class Lj$/util/stream/IntPipeline$6$1;
.super Lj$/util/stream/Sink$ChainedInt;
.source "IntPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/stream/IntPipeline$6;->opWrapSink(ILj$/util/stream/Sink;)Lj$/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/stream/Sink$ChainedInt<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lj$/util/stream/IntPipeline$6;


# direct methods
.method constructor <init>(Lj$/util/stream/IntPipeline$6;Lj$/util/stream/Sink;)V
    .locals 0
    .param p1, "this$1"    # Lj$/util/stream/IntPipeline$6;

    .line 283
    .local p0, "this":Lj$/util/stream/IntPipeline$6$1;, "Ljava/util/stream/IntPipeline$6$1;"
    .local p2, "downstream":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Double;>;"
    iput-object p1, p0, Lj$/util/stream/IntPipeline$6$1;->this$1:Lj$/util/stream/IntPipeline$6;

    invoke-direct {p0, p2}, Lj$/util/stream/Sink$ChainedInt;-><init>(Lj$/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 3
    .param p1, "t"    # I

    .line 286
    .local p0, "this":Lj$/util/stream/IntPipeline$6$1;, "Ljava/util/stream/IntPipeline$6$1;"
    iget-object v0, p0, Lj$/util/stream/IntPipeline$6$1;->downstream:Lj$/util/stream/Sink;

    iget-object v1, p0, Lj$/util/stream/IntPipeline$6$1;->this$1:Lj$/util/stream/IntPipeline$6;

    iget-object v1, v1, Lj$/util/stream/IntPipeline$6;->val$mapper:Ljava/util/function/IntToDoubleFunction;

    invoke-interface {v1, p1}, Ljava/util/function/IntToDoubleFunction;->applyAsDouble(I)D

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lj$/util/stream/Sink;->accept(D)V

    .line 287
    return-void
.end method
