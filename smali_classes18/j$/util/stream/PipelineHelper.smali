.class abstract Lj$/util/stream/PipelineHelper;
.super Ljava/lang/Object;
.source "PipelineHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_OUT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 55
    .local p0, "this":Lj$/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TP_OUT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract copyInto(Lj$/util/stream/Sink;Lj$/util/Spliterator;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/stream/Sink<",
            "TP_IN;>;",
            "Lj$/util/Spliterator<",
            "TP_IN;>;)V"
        }
    .end annotation
.end method

.method abstract copyIntoWithCancel(Lj$/util/stream/Sink;Lj$/util/Spliterator;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/stream/Sink<",
            "TP_IN;>;",
            "Lj$/util/Spliterator<",
            "TP_IN;>;)Z"
        }
    .end annotation
.end method

.method abstract evaluate(Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/Spliterator<",
            "TP_IN;>;Z",
            "Ljava/util/function/IntFunction<",
            "[TP_OUT;>;)",
            "Lj$/util/stream/Node<",
            "TP_OUT;>;"
        }
    .end annotation
.end method

.method abstract exactOutputSizeIfKnown(Lj$/util/Spliterator;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/Spliterator<",
            "TP_IN;>;)J"
        }
    .end annotation
.end method

.method abstract getSourceShape()Lj$/util/stream/StreamShape;
.end method

.method abstract getStreamAndOpFlags()I
.end method

.method abstract makeNodeBuilder(JLjava/util/function/IntFunction;)Lj$/util/stream/Node$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/IntFunction<",
            "[TP_OUT;>;)",
            "Lj$/util/stream/Node$Builder<",
            "TP_OUT;>;"
        }
    .end annotation
.end method

.method abstract wrapAndCopyInto(Lj$/util/stream/Sink;Lj$/util/Spliterator;)Lj$/util/stream/Sink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            "S::",
            "Lj$/util/stream/Sink<",
            "TP_OUT;>;>(TS;",
            "Lj$/util/Spliterator<",
            "TP_IN;>;)TS;"
        }
    .end annotation
.end method

.method abstract wrapSink(Lj$/util/stream/Sink;)Lj$/util/stream/Sink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/stream/Sink<",
            "TP_OUT;>;)",
            "Lj$/util/stream/Sink<",
            "TP_IN;>;"
        }
    .end annotation
.end method

.method abstract wrapSpliterator(Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/Spliterator<",
            "TP_IN;>;)",
            "Lj$/util/Spliterator<",
            "TP_OUT;>;"
        }
    .end annotation
.end method
