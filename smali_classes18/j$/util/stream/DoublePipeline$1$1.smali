.class Lj$/util/stream/DoublePipeline$1$1;
.super Lj$/util/stream/Sink$ChainedDouble;
.source "DoublePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/stream/DoublePipeline$1;->opWrapSink(ILj$/util/stream/Sink;)Lj$/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/stream/Sink$ChainedDouble<",
        "TU;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lj$/util/stream/DoublePipeline$1;


# direct methods
.method constructor <init>(Lj$/util/stream/DoublePipeline$1;Lj$/util/stream/Sink;)V
    .locals 0
    .param p1, "this$1"    # Lj$/util/stream/DoublePipeline$1;

    .line 173
    .local p0, "this":Lj$/util/stream/DoublePipeline$1$1;, "Ljava/util/stream/DoublePipeline$1$1;"
    .local p2, "downstream":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<-TU;>;"
    iput-object p1, p0, Lj$/util/stream/DoublePipeline$1$1;->this$1:Lj$/util/stream/DoublePipeline$1;

    invoke-direct {p0, p2}, Lj$/util/stream/Sink$ChainedDouble;-><init>(Lj$/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 2
    .param p1, "t"    # D

    .line 176
    .local p0, "this":Lj$/util/stream/DoublePipeline$1$1;, "Ljava/util/stream/DoublePipeline$1$1;"
    iget-object v0, p0, Lj$/util/stream/DoublePipeline$1$1;->downstream:Lj$/util/stream/Sink;

    iget-object v1, p0, Lj$/util/stream/DoublePipeline$1$1;->this$1:Lj$/util/stream/DoublePipeline$1;

    iget-object v1, v1, Lj$/util/stream/DoublePipeline$1;->val$mapper:Ljava/util/function/DoubleFunction;

    invoke-interface {v1, p1, p2}, Ljava/util/function/DoubleFunction;->apply(D)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lj$/util/stream/Sink;->accept(Ljava/lang/Object;)V

    .line 177
    return-void
.end method
