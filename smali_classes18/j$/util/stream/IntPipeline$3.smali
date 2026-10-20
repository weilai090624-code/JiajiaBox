.class Lj$/util/stream/IntPipeline$3;
.super Lj$/util/stream/DoublePipeline$StatelessOp;
.source "IntPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/stream/IntPipeline;->asDoubleStream()Lj$/util/stream/DoubleStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/stream/DoublePipeline$StatelessOp<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lj$/util/stream/IntPipeline;


# direct methods
.method constructor <init>(Lj$/util/stream/IntPipeline;Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;I)V
    .locals 0
    .param p1, "this$0"    # Lj$/util/stream/IntPipeline;
    .param p3, "inputShape"    # Lj$/util/stream/StreamShape;
    .param p4, "opFlags"    # I

    .line 218
    .local p0, "this":Lj$/util/stream/IntPipeline$3;, "Ljava/util/stream/IntPipeline$3;"
    .local p2, "upstream":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Integer;*>;"
    iput-object p1, p0, Lj$/util/stream/IntPipeline$3;->this$0:Lj$/util/stream/IntPipeline;

    invoke-direct {p0, p2, p3, p4}, Lj$/util/stream/DoublePipeline$StatelessOp;-><init>(Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;I)V

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
            "Ljava/lang/Double;",
            ">;)",
            "Lj$/util/stream/Sink<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 221
    .local p0, "this":Lj$/util/stream/IntPipeline$3;, "Ljava/util/stream/IntPipeline$3;"
    .local p2, "sink":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<Ljava/lang/Double;>;"
    new-instance v0, Lj$/util/stream/IntPipeline$3$1;

    invoke-direct {v0, p0, p2}, Lj$/util/stream/IntPipeline$3$1;-><init>(Lj$/util/stream/IntPipeline$3;Lj$/util/stream/Sink;)V

    return-object v0
.end method
