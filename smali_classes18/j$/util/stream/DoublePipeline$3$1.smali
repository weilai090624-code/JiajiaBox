.class Lj$/util/stream/DoublePipeline$3$1;
.super Lj$/util/stream/Sink$ChainedDouble;
.source "DoublePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/stream/DoublePipeline$3;->opWrapSink(ILj$/util/stream/Sink;)Lj$/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/stream/Sink$ChainedDouble<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lj$/util/stream/DoublePipeline$3;


# direct methods
.method constructor <init>(Lj$/util/stream/DoublePipeline$3;Lj$/util/stream/Sink;)V
    .locals 0
    .param p1, "this$1"    # Lj$/util/stream/DoublePipeline$3;

    .line 232
    .local p0, "this":Lj$/util/stream/DoublePipeline$3$1;, "Ljava/util/stream/DoublePipeline$3$1;"
    .local p2, "downstream":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Integer;>;"
    iput-object p1, p0, Lj$/util/stream/DoublePipeline$3$1;->this$1:Lj$/util/stream/DoublePipeline$3;

    invoke-direct {p0, p2}, Lj$/util/stream/Sink$ChainedDouble;-><init>(Lj$/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 2
    .param p1, "t"    # D

    .line 235
    .local p0, "this":Lj$/util/stream/DoublePipeline$3$1;, "Ljava/util/stream/DoublePipeline$3$1;"
    iget-object v0, p0, Lj$/util/stream/DoublePipeline$3$1;->downstream:Lj$/util/stream/Sink;

    iget-object v1, p0, Lj$/util/stream/DoublePipeline$3$1;->this$1:Lj$/util/stream/DoublePipeline$3;

    iget-object v1, v1, Lj$/util/stream/DoublePipeline$3;->val$mapper:Ljava/util/function/DoubleToIntFunction;

    invoke-interface {v1, p1, p2}, Ljava/util/function/DoubleToIntFunction;->applyAsInt(D)I

    move-result v1

    invoke-interface {v0, v1}, Lj$/util/stream/Sink;->accept(I)V

    .line 236
    return-void
.end method
