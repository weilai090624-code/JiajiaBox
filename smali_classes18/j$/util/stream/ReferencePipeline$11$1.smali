.class Lj$/util/stream/ReferencePipeline$11$1;
.super Lj$/util/stream/Sink$ChainedReference;
.source "ReferencePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/stream/ReferencePipeline$11;->opWrapSink(ILj$/util/stream/Sink;)Lj$/util/stream/Sink;
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
.field final synthetic this$1:Lj$/util/stream/ReferencePipeline$11;


# direct methods
.method constructor <init>(Lj$/util/stream/ReferencePipeline$11;Lj$/util/stream/Sink;)V
    .locals 0
    .param p1, "this$1"    # Lj$/util/stream/ReferencePipeline$11;

    .line 438
    .local p0, "this":Lj$/util/stream/ReferencePipeline$11$1;, "Ljava/util/stream/ReferencePipeline$11$1;"
    .local p2, "downstream":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<-TP_OUT;>;"
    iput-object p1, p0, Lj$/util/stream/ReferencePipeline$11$1;->this$1:Lj$/util/stream/ReferencePipeline$11;

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

    .line 441
    .local p0, "this":Lj$/util/stream/ReferencePipeline$11$1;, "Ljava/util/stream/ReferencePipeline$11$1;"
    .local p1, "u":Ljava/lang/Object;, "TP_OUT;"
    iget-object v0, p0, Lj$/util/stream/ReferencePipeline$11$1;->this$1:Lj$/util/stream/ReferencePipeline$11;

    iget-object v0, v0, Lj$/util/stream/ReferencePipeline$11;->val$action:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 442
    iget-object v0, p0, Lj$/util/stream/ReferencePipeline$11$1;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v0, p1}, Lj$/util/stream/Sink;->accept(Ljava/lang/Object;)V

    .line 443
    return-void
.end method
