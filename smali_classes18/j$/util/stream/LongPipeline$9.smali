.class Lj$/util/stream/LongPipeline$9;
.super Lj$/util/stream/LongPipeline$StatelessOp;
.source "LongPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/stream/LongPipeline;->peek(Ljava/util/function/LongConsumer;)Lj$/util/stream/LongStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/stream/LongPipeline$StatelessOp<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lj$/util/stream/LongPipeline;

.field final synthetic val$action:Ljava/util/function/LongConsumer;


# direct methods
.method constructor <init>(Lj$/util/stream/LongPipeline;Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;ILjava/util/function/LongConsumer;)V
    .locals 0
    .param p1, "this$0"    # Lj$/util/stream/LongPipeline;
    .param p3, "inputShape"    # Lj$/util/stream/StreamShape;
    .param p4, "opFlags"    # I

    .line 362
    .local p0, "this":Lj$/util/stream/LongPipeline$9;, "Ljava/util/stream/LongPipeline$9;"
    .local p2, "upstream":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Long;*>;"
    iput-object p1, p0, Lj$/util/stream/LongPipeline$9;->this$0:Lj$/util/stream/LongPipeline;

    iput-object p5, p0, Lj$/util/stream/LongPipeline$9;->val$action:Ljava/util/function/LongConsumer;

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
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 365
    .local p0, "this":Lj$/util/stream/LongPipeline$9;, "Ljava/util/stream/LongPipeline$9;"
    .local p2, "sink":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<Ljava/lang/Long;>;"
    new-instance v0, Lj$/util/stream/LongPipeline$9$1;

    invoke-direct {v0, p0, p2}, Lj$/util/stream/LongPipeline$9$1;-><init>(Lj$/util/stream/LongPipeline$9;Lj$/util/stream/Sink;)V

    return-object v0
.end method
