.class Lj$/util/stream/LongPipeline$8$1;
.super Lj$/util/stream/Sink$ChainedLong;
.source "LongPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/stream/LongPipeline$8;->opWrapSink(ILj$/util/stream/Sink;)Lj$/util/stream/Sink;
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
.field final synthetic this$1:Lj$/util/stream/LongPipeline$8;


# direct methods
.method constructor <init>(Lj$/util/stream/LongPipeline$8;Lj$/util/stream/Sink;)V
    .locals 0
    .param p1, "this$1"    # Lj$/util/stream/LongPipeline$8;

    .line 342
    .local p0, "this":Lj$/util/stream/LongPipeline$8$1;, "Ljava/util/stream/LongPipeline$8$1;"
    .local p2, "downstream":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Long;>;"
    iput-object p1, p0, Lj$/util/stream/LongPipeline$8$1;->this$1:Lj$/util/stream/LongPipeline$8;

    invoke-direct {p0, p2}, Lj$/util/stream/Sink$ChainedLong;-><init>(Lj$/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 1
    .param p1, "t"    # J

    .line 350
    .local p0, "this":Lj$/util/stream/LongPipeline$8$1;, "Ljava/util/stream/LongPipeline$8$1;"
    iget-object v0, p0, Lj$/util/stream/LongPipeline$8$1;->this$1:Lj$/util/stream/LongPipeline$8;

    iget-object v0, v0, Lj$/util/stream/LongPipeline$8;->val$predicate:Ljava/util/function/LongPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/LongPredicate;->test(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lj$/util/stream/LongPipeline$8$1;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v0, p1, p2}, Lj$/util/stream/Sink;->accept(J)V

    .line 352
    :cond_0
    return-void
.end method

.method public begin(J)V
    .locals 3
    .param p1, "size"    # J

    .line 345
    .local p0, "this":Lj$/util/stream/LongPipeline$8$1;, "Ljava/util/stream/LongPipeline$8$1;"
    iget-object v0, p0, Lj$/util/stream/LongPipeline$8$1;->downstream:Lj$/util/stream/Sink;

    const-wide/16 v1, -0x1

    invoke-interface {v0, v1, v2}, Lj$/util/stream/Sink;->begin(J)V

    .line 346
    return-void
.end method
