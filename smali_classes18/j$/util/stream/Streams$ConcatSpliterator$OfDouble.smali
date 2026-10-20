.class Lj$/util/stream/Streams$ConcatSpliterator$OfDouble;
.super Lj$/util/stream/Streams$ConcatSpliterator$OfPrimitive;
.source "Streams.java"

# interfaces
.implements Lj$/util/Spliterator$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/Streams$ConcatSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OfDouble"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/stream/Streams$ConcatSpliterator$OfPrimitive<",
        "Ljava/lang/Double;",
        "Ljava/util/function/DoubleConsumer;",
        "Lj$/util/Spliterator$OfDouble;",
        ">;",
        "Lj$/util/Spliterator$OfDouble;"
    }
.end annotation


# direct methods
.method constructor <init>(Lj$/util/Spliterator$OfDouble;Lj$/util/Spliterator$OfDouble;)V
    .locals 1
    .param p1, "aSpliterator"    # Lj$/util/Spliterator$OfDouble;
    .param p2, "bSpliterator"    # Lj$/util/Spliterator$OfDouble;

    .line 825
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lj$/util/stream/Streams$ConcatSpliterator$OfPrimitive;-><init>(Lj$/util/Spliterator$OfPrimitive;Lj$/util/Spliterator$OfPrimitive;Lj$/util/stream/Streams-IA;)V

    .line 826
    return-void
.end method


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava/util/function/DoubleConsumer;)V
    .locals 0

    .line 821
    invoke-super {p0, p1}, Lj$/util/stream/Streams$ConcatSpliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/util/function/DoubleConsumer;)Z
    .locals 0

    .line 821
    invoke-super {p0, p1}, Lj$/util/stream/Streams$ConcatSpliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator$OfDouble;
    .locals 1

    .line 821
    invoke-super {p0}, Lj$/util/stream/Streams$ConcatSpliterator$OfPrimitive;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Lj$/util/Spliterator$OfDouble;

    return-object v0
.end method
