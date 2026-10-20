.class Lj$/util/stream/ReferencePipeline$2$1;
.super Lj$/util/stream/Sink$ChainedReference;
.source "ReferencePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/stream/ReferencePipeline$2;->opWrapSink(ILj$/util/stream/Sink;)Lj$/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/stream/Sink$ChainedReference<",
        "TP_OUT;TP_OUT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lj$/util/stream/ReferencePipeline$2;


# direct methods
.method constructor <init>(Lj$/util/stream/ReferencePipeline$2;Lj$/util/stream/Sink;)V
    .locals 0
    .param p1, "this$1"    # Lj$/util/stream/ReferencePipeline$2;

    .line 168
    .local p0, "this":Lj$/util/stream/ReferencePipeline$2$1;, "Ljava/util/stream/ReferencePipeline$2$1;"
    .local p2, "downstream":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<-TP_OUT;>;"
    iput-object p1, p0, Lj$/util/stream/ReferencePipeline$2$1;->this$1:Lj$/util/stream/ReferencePipeline$2;

    invoke-direct {p0, p2}, Lj$/util/stream/Sink$ChainedReference;-><init>(Lj$/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP_OUT;)V"
        }
    .end annotation

    .line 176
    .local p0, "this":Lj$/util/stream/ReferencePipeline$2$1;, "Ljava/util/stream/ReferencePipeline$2$1;"
    .local p1, "u":Ljava/lang/Object;, "TP_OUT;"
    iget-object v0, p0, Lj$/util/stream/ReferencePipeline$2$1;->this$1:Lj$/util/stream/ReferencePipeline$2;

    iget-object v0, v0, Lj$/util/stream/ReferencePipeline$2;->val$predicate:Ljava/util/function/Predicate;

    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lj$/util/stream/ReferencePipeline$2$1;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v0, p1}, Lj$/util/stream/Sink;->accept(Ljava/lang/Object;)V

    .line 178
    :cond_0
    return-void
.end method

.method public begin(J)V
    .locals 3
    .param p1, "size"    # J

    .line 171
    .local p0, "this":Lj$/util/stream/ReferencePipeline$2$1;, "Ljava/util/stream/ReferencePipeline$2$1;"
    iget-object v0, p0, Lj$/util/stream/ReferencePipeline$2$1;->downstream:Lj$/util/stream/Sink;

    const-wide/16 v1, -0x1

    invoke-interface {v0, v1, v2}, Lj$/util/stream/Sink;->begin(J)V

    .line 172
    return-void
.end method
