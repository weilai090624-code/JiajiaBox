.class Lj$/util/stream/LongPipeline$5$1;
.super Lj$/util/stream/Sink$ChainedLong;
.source "LongPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/stream/LongPipeline$5;->opWrapSink(ILj$/util/stream/Sink;)Lj$/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/stream/Sink$ChainedLong<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lj$/util/stream/LongPipeline$5;


# direct methods
.method constructor <init>(Lj$/util/stream/LongPipeline$5;Lj$/util/stream/Sink;)V
    .locals 0
    .param p1, "this$1"    # Lj$/util/stream/LongPipeline$5;

    .line 265
    .local p0, "this":Lj$/util/stream/LongPipeline$5$1;, "Ljava/util/stream/LongPipeline$5$1;"
    .local p2, "downstream":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Double;>;"
    iput-object p1, p0, Lj$/util/stream/LongPipeline$5$1;->this$1:Lj$/util/stream/LongPipeline$5;

    invoke-direct {p0, p2}, Lj$/util/stream/Sink$ChainedLong;-><init>(Lj$/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 3
    .param p1, "t"    # J

    .line 268
    .local p0, "this":Lj$/util/stream/LongPipeline$5$1;, "Ljava/util/stream/LongPipeline$5$1;"
    iget-object v0, p0, Lj$/util/stream/LongPipeline$5$1;->downstream:Lj$/util/stream/Sink;

    iget-object v1, p0, Lj$/util/stream/LongPipeline$5$1;->this$1:Lj$/util/stream/LongPipeline$5;

    iget-object v1, v1, Lj$/util/stream/LongPipeline$5;->val$mapper:Ljava/util/function/LongToDoubleFunction;

    invoke-interface {v1, p1, p2}, Ljava/util/function/LongToDoubleFunction;->applyAsDouble(J)D

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lj$/util/stream/Sink;->accept(D)V

    .line 269
    return-void
.end method
