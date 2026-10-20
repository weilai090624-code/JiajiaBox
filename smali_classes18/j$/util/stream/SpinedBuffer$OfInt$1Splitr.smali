.class Lj$/util/stream/SpinedBuffer$OfInt$1Splitr;
.super Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;
.source "SpinedBuffer.java"

# interfaces
.implements Lj$/util/Spliterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/stream/SpinedBuffer$OfInt;->spliterator()Lj$/util/Spliterator$OfInt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Splitr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/stream/SpinedBuffer$OfPrimitive<",
        "Ljava/lang/Integer;",
        "[I",
        "Ljava/util/function/IntConsumer;",
        ">.BaseSpliterator<",
        "Lj$/util/Spliterator$OfInt;",
        ">;",
        "Lj$/util/Spliterator$OfInt;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lj$/util/stream/SpinedBuffer$OfInt;


# direct methods
.method constructor <init>(Lj$/util/stream/SpinedBuffer$OfInt;IIII)V
    .locals 0
    .param p1, "this$0"    # Lj$/util/stream/SpinedBuffer$OfInt;
    .param p2, "firstSpineIndex"    # I
    .param p3, "lastSpineIndex"    # I
    .param p4, "firstSpineElementIndex"    # I
    .param p5, "lastSpineElementFence"    # I

    .line 818
    iput-object p1, p0, Lj$/util/stream/SpinedBuffer$OfInt$1Splitr;->this$0:Lj$/util/stream/SpinedBuffer$OfInt;

    .line 819
    invoke-direct/range {p0 .. p5}, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;-><init>(Lj$/util/stream/SpinedBuffer$OfPrimitive;IIII)V

    .line 821
    return-void
.end method


# virtual methods
.method bridge synthetic arrayForOne(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 815
    check-cast p1, [I

    check-cast p3, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1, p2, p3}, Lj$/util/stream/SpinedBuffer$OfInt$1Splitr;->arrayForOne([IILjava/util/function/IntConsumer;)V

    return-void
.end method

.method arrayForOne([IILjava/util/function/IntConsumer;)V
    .locals 1
    .param p1, "array"    # [I
    .param p2, "index"    # I
    .param p3, "consumer"    # Ljava/util/function/IntConsumer;

    .line 832
    aget v0, p1, p2

    invoke-interface {p3, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 833
    return-void
.end method

.method arraySpliterator([III)Lj$/util/Spliterator$OfInt;
    .locals 1
    .param p1, "array"    # [I
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .line 837
    add-int v0, p2, p3

    invoke-static {p1, p2, v0}, Lj$/util/DesugarArrays;->spliterator([III)Lj$/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic arraySpliterator(Ljava/lang/Object;II)Lj$/util/Spliterator$OfPrimitive;
    .locals 0

    .line 815
    check-cast p1, [I

    invoke-virtual {p0, p1, p2, p3}, Lj$/util/stream/SpinedBuffer$OfInt$1Splitr;->arraySpliterator([III)Lj$/util/Spliterator$OfInt;

    move-result-object p1

    return-object p1
.end method

.method public synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$OfInt$-CC;->$default$forEachRemaining(Lj$/util/Spliterator$OfInt;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public bridge synthetic forEachRemaining(Ljava/util/function/IntConsumer;)V
    .locals 0

    .line 815
    invoke-super {p0, p1}, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method bridge synthetic newSpliterator(IIII)Lj$/util/Spliterator$OfPrimitive;
    .locals 0

    .line 815
    invoke-virtual {p0, p1, p2, p3, p4}, Lj$/util/stream/SpinedBuffer$OfInt$1Splitr;->newSpliterator(IIII)Lj$/util/stream/SpinedBuffer$OfInt$1Splitr;

    move-result-object p1

    return-object p1
.end method

.method newSpliterator(IIII)Lj$/util/stream/SpinedBuffer$OfInt$1Splitr;
    .locals 7
    .param p1, "firstSpineIndex"    # I
    .param p2, "lastSpineIndex"    # I
    .param p3, "firstSpineElementIndex"    # I
    .param p4, "lastSpineElementFence"    # I

    .line 826
    new-instance v6, Lj$/util/stream/SpinedBuffer$OfInt$1Splitr;

    iget-object v1, p0, Lj$/util/stream/SpinedBuffer$OfInt$1Splitr;->this$0:Lj$/util/stream/SpinedBuffer$OfInt;

    move-object v0, v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/SpinedBuffer$OfInt$1Splitr;-><init>(Lj$/util/stream/SpinedBuffer$OfInt;IIII)V

    return-object v6
.end method

.method public synthetic tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$OfInt$-CC;->$default$tryAdvance(Lj$/util/Spliterator$OfInt;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic tryAdvance(Ljava/util/function/IntConsumer;)Z
    .locals 0

    .line 815
    invoke-super {p0, p1}, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->tryAdvance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator$OfInt;
    .locals 1

    .line 815
    invoke-super {p0}, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->trySplit()Lj$/util/Spliterator$OfPrimitive;

    move-result-object v0

    check-cast v0, Lj$/util/Spliterator$OfInt;

    return-object v0
.end method
