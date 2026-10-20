.class Lj$/util/stream/IntPipeline$9;
.super Lj$/util/stream/IntPipeline$StatelessOp;
.source "IntPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/stream/IntPipeline;->filter(Ljava/util/function/IntPredicate;)Lj$/util/stream/IntStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/stream/IntPipeline$StatelessOp<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lj$/util/stream/IntPipeline;

.field final synthetic val$predicate:Ljava/util/function/IntPredicate;


# direct methods
.method constructor <init>(Lj$/util/stream/IntPipeline;Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;ILjava/util/function/IntPredicate;)V
    .locals 0
    .param p1, "this$0"    # Lj$/util/stream/IntPipeline;
    .param p3, "inputShape"    # Lj$/util/stream/StreamShape;
    .param p4, "opFlags"    # I

    .line 357
    .local p0, "this":Lj$/util/stream/IntPipeline$9;, "Ljava/util/stream/IntPipeline$9;"
    .local p2, "upstream":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Integer;*>;"
    iput-object p1, p0, Lj$/util/stream/IntPipeline$9;->this$0:Lj$/util/stream/IntPipeline;

    iput-object p5, p0, Lj$/util/stream/IntPipeline$9;->val$predicate:Ljava/util/function/IntPredicate;

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
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 360
    .local p0, "this":Lj$/util/stream/IntPipeline$9;, "Ljava/util/stream/IntPipeline$9;"
    .local p2, "sink":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<Ljava/lang/Integer;>;"
    new-instance v0, Lj$/util/stream/IntPipeline$9$1;

    invoke-direct {v0, p0, p2}, Lj$/util/stream/IntPipeline$9$1;-><init>(Lj$/util/stream/IntPipeline$9;Lj$/util/stream/Sink;)V

    return-object v0
.end method
