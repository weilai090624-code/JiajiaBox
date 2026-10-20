.class Lj$/util/stream/IntPipeline$2$1;
.super Lj$/util/stream/Sink$ChainedInt;
.source "IntPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/stream/IntPipeline$2;->opWrapSink(ILj$/util/stream/Sink;)Lj$/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/stream/Sink$ChainedInt<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lj$/util/stream/IntPipeline$2;


# direct methods
.method constructor <init>(Lj$/util/stream/IntPipeline$2;Lj$/util/stream/Sink;)V
    .locals 0
    .param p1, "this$1"    # Lj$/util/stream/IntPipeline$2;

    .line 206
    .local p0, "this":Lj$/util/stream/IntPipeline$2$1;, "Ljava/util/stream/IntPipeline$2$1;"
    .local p2, "downstream":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Long;>;"
    iput-object p1, p0, Lj$/util/stream/IntPipeline$2$1;->this$1:Lj$/util/stream/IntPipeline$2;

    invoke-direct {p0, p2}, Lj$/util/stream/Sink$ChainedInt;-><init>(Lj$/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 3
    .param p1, "t"    # I

    .line 209
    .local p0, "this":Lj$/util/stream/IntPipeline$2$1;, "Ljava/util/stream/IntPipeline$2$1;"
    iget-object v0, p0, Lj$/util/stream/IntPipeline$2$1;->downstream:Lj$/util/stream/Sink;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lj$/util/stream/Sink;->accept(J)V

    .line 210
    return-void
.end method
