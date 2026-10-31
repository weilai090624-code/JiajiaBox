.class public final synthetic Lj$/util/stream/StreamSpliterators$IntWrappingSpliterator$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lj$/util/stream/Sink$OfInt;


# instance fields
.field public final synthetic f$0:Lj$/util/stream/SpinedBuffer$OfInt;


# direct methods
.method public synthetic constructor <init>(Lj$/util/stream/SpinedBuffer$OfInt;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/stream/StreamSpliterators$IntWrappingSpliterator$$ExternalSyntheticLambda1;->f$0:Lj$/util/stream/SpinedBuffer$OfInt;

    return-void
.end method


# virtual methods
.method public synthetic accept(D)V
    .registers 3

    invoke-static {p0, p1, p2}, Lj$/util/stream/Sink$-CC;->$default$accept(Lj$/util/stream/Sink;D)V

    return-void
.end method

.method public final accept(I)V
    .registers 3

    iget-object v0, p0, Lj$/util/stream/StreamSpliterators$IntWrappingSpliterator$$ExternalSyntheticLambda1;->f$0:Lj$/util/stream/SpinedBuffer$OfInt;

    invoke-virtual {v0, p1}, Lj$/util/stream/SpinedBuffer$OfInt;->accept(I)V

    return-void
.end method

.method public synthetic accept(J)V
    .registers 3

    invoke-static {p0, p1, p2}, Lj$/util/stream/Sink$-CC;->$default$accept(Lj$/util/stream/Sink;J)V

    return-void
.end method

.method public synthetic accept(Ljava/lang/Integer;)V
    .registers 2

    invoke-static {p0, p1}, Lj$/util/stream/Sink$OfInt$-CC;->$default$accept(Lj$/util/stream/Sink$OfInt;Ljava/lang/Integer;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lj$/util/stream/Sink$OfInt$-CC;->$default$accept(Lj$/util/stream/Sink$OfInt;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .registers 2

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic andThen(Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;
    .registers 2

    invoke-static {p0, p1}, Lj$/util/function/IntConsumer$-CC;->$default$andThen(Ljava/util/function/IntConsumer;Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic begin(J)V
    .registers 3

    invoke-static {p0, p1, p2}, Lj$/util/stream/Sink$-CC;->$default$begin(Lj$/util/stream/Sink;J)V

    return-void
.end method

.method public synthetic cancellationRequested()Z
    .registers 2

    invoke-static {p0}, Lj$/util/stream/Sink$-CC;->$default$cancellationRequested(Lj$/util/stream/Sink;)Z

    move-result v0

    return v0
.end method

.method public synthetic end()V
    .registers 1

    invoke-static {p0}, Lj$/util/stream/Sink$-CC;->$default$end(Lj$/util/stream/Sink;)V

    return-void
.end method
