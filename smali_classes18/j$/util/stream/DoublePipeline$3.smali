.class Lj$/util/stream/DoublePipeline$3;
.super Lj$/util/stream/IntPipeline$StatelessOp;
.source "DoublePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/stream/DoublePipeline;->mapToInt(Ljava/util/function/DoubleToIntFunction;)Lj$/util/stream/IntStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/stream/IntPipeline$StatelessOp<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lj$/util/stream/DoublePipeline;

.field final synthetic val$mapper:Ljava/util/function/DoubleToIntFunction;


# direct methods
.method constructor <init>(Lj$/util/stream/DoublePipeline;Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;ILjava/util/function/DoubleToIntFunction;)V
    .locals 0
    .param p1, "this$0"    # Lj$/util/stream/DoublePipeline;
    .param p3, "inputShape"    # Lj$/util/stream/StreamShape;
    .param p4, "opFlags"    # I

    .line 229
    .local p0, "this":Lj$/util/stream/DoublePipeline$3;, "Ljava/util/stream/DoublePipeline$3;"
    .local p2, "upstream":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Double;*>;"
    iput-object p1, p0, Lj$/util/stream/DoublePipeline$3;->this$0:Lj$/util/stream/DoublePipeline;

    iput-object p5, p0, Lj$/util/stream/DoublePipeline$3;->val$mapper:Ljava/util/function/DoubleToIntFunction;

    invoke-direct {p0, p2, p3, p4}, Lj$/util/stream/IntPipeline$StatelessOp;-><init>(Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;I)V

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
            "Ljava/lang/Integer;",
            ">;)",
            "Lj$/util/stream/Sink<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 232
    .local p0, "this":Lj$/util/stream/DoublePipeline$3;, "Ljava/util/stream/DoublePipeline$3;"
    .local p2, "sink":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<Ljava/lang/Integer;>;"
    new-instance v0, Lj$/util/stream/DoublePipeline$3$1;

    invoke-direct {v0, p0, p2}, Lj$/util/stream/DoublePipeline$3$1;-><init>(Lj$/util/stream/DoublePipeline$3;Lj$/util/stream/Sink;)V

    return-object v0
.end method
