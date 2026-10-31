.class Lj$/util/stream/SpinedBuffer$OfDouble$1Splitr;
.super Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;
.source "SpinedBuffer.java"

# interfaces
.implements Lj$/util/Spliterator$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/stream/SpinedBuffer$OfDouble;->spliterator()Lj$/util/Spliterator$OfDouble;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Splitr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/stream/SpinedBuffer$OfPrimitive<",
        "Ljava/lang/Double;",
        "[D",
        "Ljava/util/function/DoubleConsumer;",
        ">.BaseSpliterator<",
        "Lj$/util/Spliterator$OfDouble;",
        ">;",
        "Lj$/util/Spliterator$OfDouble;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lj$/util/stream/SpinedBuffer$OfDouble;


# direct methods
.method constructor <init>(Lj$/util/stream/SpinedBuffer$OfDouble;IIII)V
    .registers 6
    .param p1, "this$0"    # Lj$/util/stream/SpinedBuffer$OfDouble;
    .param p2, "firstSpineIndex"    # I
    .param p3, "lastSpineIndex"    # I
    .param p4, "firstSpineElementIndex"    # I
    .param p5, "lastSpineElementFence"    # I

    .line 1046
    iput-object p1, p0, Lj$/util/stream/SpinedBuffer$OfDouble$1Splitr;->this$0:Lj$/util/stream/SpinedBuffer$OfDouble;

    .line 1047
    invoke-direct/range {p0 .. p5}, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;-><init>(Lj$/util/stream/SpinedBuffer$OfPrimitive;IIII)V

    .line 1049
    return-void
.end method


# virtual methods
.method bridge synthetic arrayForOne(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 4

    .line 1043
    check-cast p1, [D

    check-cast p3, Ljava/util/function/DoubleConsumer;

    invoke-virtual {p0, p1, p2, p3}, Lj$/util/stream/SpinedBuffer$OfDouble$1Splitr;->arrayForOne([DILjava/util/function/DoubleConsumer;)V

    return-void
.end method

.method arrayForOne([DILjava/util/function/DoubleConsumer;)V
    .registers 6
    .param p1, "array"    # [D
    .param p2, "index"    # I
    .param p3, "consumer"    # Ljava/util/function/DoubleConsumer;

    .line 1060
    aget-wide v0, p1, p2

    invoke-interface {p3, v0, v1}, Ljava/util/function/DoubleConsumer;->accept(D)V

    .line 1061
    return-void
.end method

.method arraySpliterator([DII)Lj$/util/Spliterator$OfDouble;
    .registers 5
    .param p1, "array"    # [D
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .line 1065
    add-int v0, p2, p3

    invoke-static {p1, p2, v0}, Lj$/util/DesugarArrays;->spliterator([DII)Lj$/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic arraySpliterator(Ljava/lang/Object;II)Lj$/util/Spliterator$OfPrimitive;
    .registers 4

    .line 1043
    check-cast p1, [D

    invoke-virtual {p0, p1, p2, p3}, Lj$/util/stream/SpinedBuffer$OfDouble$1Splitr;->arraySpliterator([DII)Lj$/util/Spliterator$OfDouble;

    move-result-object p1

    return-object p1
.end method

.method public synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 2

    invoke-static {p0, p1}, Lj$/util/Spliterator$OfDouble$-CC;->$default$forEachRemaining(Lj$/util/Spliterator$OfDouble;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public bridge synthetic forEachRemaining(Ljava/util/function/DoubleConsumer;)V
    .registers 2

    .line 1043
    invoke-super {p0, p1}, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method bridge synthetic newSpliterator(IIII)Lj$/util/Spliterator$OfPrimitive;
    .registers 5

    .line 1043
    invoke-virtual {p0, p1, p2, p3, p4}, Lj$/util/stream/SpinedBuffer$OfDouble$1Splitr;->newSpliterator(IIII)Lj$/util/stream/SpinedBuffer$OfDouble$1Splitr;

    move-result-object p1

    return-object p1
.end method

.method newSpliterator(IIII)Lj$/util/stream/SpinedBuffer$OfDouble$1Splitr;
    .registers 12
    .param p1, "firstSpineIndex"    # I
    .param p2, "lastSpineIndex"    # I
    .param p3, "firstSpineElementIndex"    # I
    .param p4, "lastSpineElementFence"    # I

    .line 1054
    new-instance v6, Lj$/util/stream/SpinedBuffer$OfDouble$1Splitr;

    iget-object v1, p0, Lj$/util/stream/SpinedBuffer$OfDouble$1Splitr;->this$0:Lj$/util/stream/SpinedBuffer$OfDouble;

    move-object v0, v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/SpinedBuffer$OfDouble$1Splitr;-><init>(Lj$/util/stream/SpinedBuffer$OfDouble;IIII)V

    return-object v6
.end method

.method public synthetic tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 2

    invoke-static {p0, p1}, Lj$/util/Spliterator$OfDouble$-CC;->$default$tryAdvance(Lj$/util/Spliterator$OfDouble;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic tryAdvance(Ljava/util/function/DoubleConsumer;)Z
    .registers 2

    .line 1043
    invoke-super {p0, p1}, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->tryAdvance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator$OfDouble;
    .registers 2

    .line 1043
    invoke-super {p0}, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->trySplit()Lj$/util/Spliterator$OfPrimitive;

    move-result-object v0

    check-cast v0, Lj$/util/Spliterator$OfDouble;

    return-object v0
.end method
