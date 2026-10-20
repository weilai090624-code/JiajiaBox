.class final Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;
.super Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;
.source "StreamSpliterators.java"

# interfaces
.implements Lj$/util/Spliterator$OfInt;
.implements Ljava/util/function/IntConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfInt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive<",
        "Ljava/lang/Integer;",
        "Ljava/util/function/IntConsumer;",
        "Lj$/util/stream/StreamSpliterators$ArrayBuffer$OfInt;",
        "Lj$/util/Spliterator$OfInt;",
        ">;",
        "Lj$/util/Spliterator$OfInt;",
        "Ljava/util/function/IntConsumer;"
    }
.end annotation


# instance fields
.field tmpValue:I


# direct methods
.method constructor <init>(Lj$/util/Spliterator$OfInt;JJ)V
    .locals 0
    .param p1, "s"    # Lj$/util/Spliterator$OfInt;
    .param p2, "skip"    # J
    .param p4, "limit"    # J

    .line 1142
    invoke-direct/range {p0 .. p5}, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;-><init>(Lj$/util/Spliterator$OfPrimitive;JJ)V

    .line 1143
    return-void
.end method

.method constructor <init>(Lj$/util/Spliterator$OfInt;Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;)V
    .locals 0
    .param p1, "s"    # Lj$/util/Spliterator$OfInt;
    .param p2, "parent"    # Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;

    .line 1146
    invoke-direct {p0, p1, p2}, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;-><init>(Lj$/util/Spliterator$OfPrimitive;Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;)V

    .line 1147
    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 0
    .param p1, "value"    # I

    .line 1151
    iput p1, p0, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;->tmpValue:I

    .line 1152
    return-void
.end method

.method protected bridge synthetic acceptConsumed(Ljava/lang/Object;)V
    .locals 0

    .line 1135
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;->acceptConsumed(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method protected acceptConsumed(Ljava/util/function/IntConsumer;)V
    .locals 1
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    .line 1156
    iget v0, p0, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;->tmpValue:I

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 1157
    return-void
.end method

.method public synthetic andThen(Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/IntConsumer$-CC;->$default$andThen(Ljava/util/function/IntConsumer;Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;

    move-result-object p1

    return-object p1
.end method

.method protected bufferCreate(I)Lj$/util/stream/StreamSpliterators$ArrayBuffer$OfInt;
    .locals 1
    .param p1, "initialCapacity"    # I

    .line 1161
    new-instance v0, Lj$/util/stream/StreamSpliterators$ArrayBuffer$OfInt;

    invoke-direct {v0, p1}, Lj$/util/stream/StreamSpliterators$ArrayBuffer$OfInt;-><init>(I)V

    return-object v0
.end method

.method protected bridge synthetic bufferCreate(I)Lj$/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;
    .locals 0

    .line 1135
    invoke-virtual {p0, p1}, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;->bufferCreate(I)Lj$/util/stream/StreamSpliterators$ArrayBuffer$OfInt;

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

    .line 1135
    invoke-super {p0, p1}, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method protected makeSpliterator(Lj$/util/Spliterator$OfInt;)Lj$/util/Spliterator$OfInt;
    .locals 1
    .param p1, "s"    # Lj$/util/Spliterator$OfInt;

    .line 1166
    new-instance v0, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;

    invoke-direct {v0, p1, p0}, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;-><init>(Lj$/util/Spliterator$OfInt;Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;)V

    return-object v0
.end method

.method protected bridge synthetic makeSpliterator(Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 0

    .line 1135
    check-cast p1, Lj$/util/Spliterator$OfInt;

    invoke-virtual {p0, p1}, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;->makeSpliterator(Lj$/util/Spliterator$OfInt;)Lj$/util/Spliterator$OfInt;

    move-result-object p1

    return-object p1
.end method

.method public synthetic tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$OfInt$-CC;->$default$tryAdvance(Lj$/util/Spliterator$OfInt;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic tryAdvance(Ljava/util/function/IntConsumer;)Z
    .locals 0

    .line 1135
    invoke-super {p0, p1}, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator$OfInt;
    .locals 1

    .line 1135
    invoke-super {p0}, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Lj$/util/Spliterator$OfInt;

    return-object v0
.end method
