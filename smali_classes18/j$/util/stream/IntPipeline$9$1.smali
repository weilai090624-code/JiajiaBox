.class Lj$/util/stream/IntPipeline$9$1;
.super Lj$/util/stream/Sink$ChainedInt;
.source "IntPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/stream/IntPipeline$9;->opWrapSink(ILj$/util/stream/Sink;)Lj$/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/stream/Sink$ChainedInt<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lj$/util/stream/IntPipeline$9;


# direct methods
.method constructor <init>(Lj$/util/stream/IntPipeline$9;Lj$/util/stream/Sink;)V
    .locals 0
    .param p1, "this$1"    # Lj$/util/stream/IntPipeline$9;

    .line 360
    .local p0, "this":Lj$/util/stream/IntPipeline$9$1;, "Ljava/util/stream/IntPipeline$9$1;"
    .local p2, "downstream":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Integer;>;"
    iput-object p1, p0, Lj$/util/stream/IntPipeline$9$1;->this$1:Lj$/util/stream/IntPipeline$9;

    invoke-direct {p0, p2}, Lj$/util/stream/Sink$ChainedInt;-><init>(Lj$/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 1
    .param p1, "t"    # I

    .line 368
    .local p0, "this":Lj$/util/stream/IntPipeline$9$1;, "Ljava/util/stream/IntPipeline$9$1;"
    iget-object v0, p0, Lj$/util/stream/IntPipeline$9$1;->this$1:Lj$/util/stream/IntPipeline$9;

    iget-object v0, v0, Lj$/util/stream/IntPipeline$9;->val$predicate:Ljava/util/function/IntPredicate;

    invoke-interface {v0, p1}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lj$/util/stream/IntPipeline$9$1;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v0, p1}, Lj$/util/stream/Sink;->accept(I)V

    .line 370
    :cond_0
    return-void
.end method

.method public begin(J)V
    .locals 3
    .param p1, "size"    # J

    .line 363
    .local p0, "this":Lj$/util/stream/IntPipeline$9$1;, "Ljava/util/stream/IntPipeline$9$1;"
    iget-object v0, p0, Lj$/util/stream/IntPipeline$9$1;->downstream:Lj$/util/stream/Sink;

    const-wide/16 v1, -0x1

    invoke-interface {v0, v1, v2}, Lj$/util/stream/Sink;->begin(J)V

    .line 364
    return-void
.end method
