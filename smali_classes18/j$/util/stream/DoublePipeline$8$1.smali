.class Lj$/util/stream/DoublePipeline$8$1;
.super Lj$/util/stream/Sink$ChainedDouble;
.source "DoublePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/stream/DoublePipeline$8;->opWrapSink(ILj$/util/stream/Sink;)Lj$/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/stream/Sink$ChainedDouble<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lj$/util/stream/DoublePipeline$8;


# direct methods
.method constructor <init>(Lj$/util/stream/DoublePipeline$8;Lj$/util/stream/Sink;)V
    .locals 0
    .param p1, "this$1"    # Lj$/util/stream/DoublePipeline$8;

    .line 349
    .local p0, "this":Lj$/util/stream/DoublePipeline$8$1;, "Ljava/util/stream/DoublePipeline$8$1;"
    .local p2, "downstream":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Double;>;"
    iput-object p1, p0, Lj$/util/stream/DoublePipeline$8$1;->this$1:Lj$/util/stream/DoublePipeline$8;

    invoke-direct {p0, p2}, Lj$/util/stream/Sink$ChainedDouble;-><init>(Lj$/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 1
    .param p1, "t"    # D

    .line 352
    .local p0, "this":Lj$/util/stream/DoublePipeline$8$1;, "Ljava/util/stream/DoublePipeline$8$1;"
    iget-object v0, p0, Lj$/util/stream/DoublePipeline$8$1;->this$1:Lj$/util/stream/DoublePipeline$8;

    iget-object v0, v0, Lj$/util/stream/DoublePipeline$8;->val$action:Ljava/util/function/DoubleConsumer;

    invoke-interface {v0, p1, p2}, Ljava/util/function/DoubleConsumer;->accept(D)V

    .line 353
    iget-object v0, p0, Lj$/util/stream/DoublePipeline$8$1;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v0, p1, p2}, Lj$/util/stream/Sink;->accept(D)V

    .line 354
    return-void
.end method
