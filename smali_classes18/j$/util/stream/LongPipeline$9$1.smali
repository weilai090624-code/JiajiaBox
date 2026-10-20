.class Lj$/util/stream/LongPipeline$9$1;
.super Lj$/util/stream/Sink$ChainedLong;
.source "LongPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/stream/LongPipeline$9;->opWrapSink(ILj$/util/stream/Sink;)Lj$/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/stream/Sink$ChainedLong<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lj$/util/stream/LongPipeline$9;


# direct methods
.method constructor <init>(Lj$/util/stream/LongPipeline$9;Lj$/util/stream/Sink;)V
    .locals 0
    .param p1, "this$1"    # Lj$/util/stream/LongPipeline$9;

    .line 365
    .local p0, "this":Lj$/util/stream/LongPipeline$9$1;, "Ljava/util/stream/LongPipeline$9$1;"
    .local p2, "downstream":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Long;>;"
    iput-object p1, p0, Lj$/util/stream/LongPipeline$9$1;->this$1:Lj$/util/stream/LongPipeline$9;

    invoke-direct {p0, p2}, Lj$/util/stream/Sink$ChainedLong;-><init>(Lj$/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 1
    .param p1, "t"    # J

    .line 368
    .local p0, "this":Lj$/util/stream/LongPipeline$9$1;, "Ljava/util/stream/LongPipeline$9$1;"
    iget-object v0, p0, Lj$/util/stream/LongPipeline$9$1;->this$1:Lj$/util/stream/LongPipeline$9;

    iget-object v0, v0, Lj$/util/stream/LongPipeline$9;->val$action:Ljava/util/function/LongConsumer;

    invoke-interface {v0, p1, p2}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 369
    iget-object v0, p0, Lj$/util/stream/LongPipeline$9$1;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v0, p1, p2}, Lj$/util/stream/Sink;->accept(J)V

    .line 370
    return-void
.end method
