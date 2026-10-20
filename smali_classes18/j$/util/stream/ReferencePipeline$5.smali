.class Lj$/util/stream/ReferencePipeline$5;
.super Lj$/util/stream/LongPipeline$StatelessOp;
.source "ReferencePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/stream/ReferencePipeline;->mapToLong(Ljava/util/function/ToLongFunction;)Lj$/util/stream/LongStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/stream/LongPipeline$StatelessOp<",
        "TP_OUT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lj$/util/stream/ReferencePipeline;

.field final synthetic val$mapper:Ljava/util/function/ToLongFunction;


# direct methods
.method constructor <init>(Lj$/util/stream/ReferencePipeline;Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;ILjava/util/function/ToLongFunction;)V
    .locals 0
    .param p1, "this$0"    # Lj$/util/stream/ReferencePipeline;
    .param p3, "inputShape"    # Lj$/util/stream/StreamShape;
    .param p4, "opFlags"    # I

    .line 223
    .local p0, "this":Lj$/util/stream/ReferencePipeline$5;, "Ljava/util/stream/ReferencePipeline$5;"
    .local p2, "upstream":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*TP_OUT;*>;"
    iput-object p1, p0, Lj$/util/stream/ReferencePipeline$5;->this$0:Lj$/util/stream/ReferencePipeline;

    iput-object p5, p0, Lj$/util/stream/ReferencePipeline$5;->val$mapper:Ljava/util/function/ToLongFunction;

    invoke-direct {p0, p2, p3, p4}, Lj$/util/stream/LongPipeline$StatelessOp;-><init>(Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;I)V

    return-void
.end method


# virtual methods
.method opWrapSink(ILj$/util/stream/Sink;)Lj$/util/stream/Sink;
    .locals 1
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lj$/util/stream/Sink<",
            "Ljava/lang/Long;",
            ">;)",
            "Lj$/util/stream/Sink<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 226
    .local p0, "this":Lj$/util/stream/ReferencePipeline$5;, "Ljava/util/stream/ReferencePipeline$5;"
    .local p2, "sink":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<Ljava/lang/Long;>;"
    new-instance v0, Lj$/util/stream/ReferencePipeline$5$1;

    invoke-direct {v0, p0, p2}, Lj$/util/stream/ReferencePipeline$5$1;-><init>(Lj$/util/stream/ReferencePipeline$5;Lj$/util/stream/Sink;)V

    return-object v0
.end method
