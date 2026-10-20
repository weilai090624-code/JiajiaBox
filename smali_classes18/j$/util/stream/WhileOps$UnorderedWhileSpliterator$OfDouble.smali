.class abstract Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;
.super Lj$/util/stream/WhileOps$UnorderedWhileSpliterator;
.source "WhileOps.java"

# interfaces
.implements Ljava/util/function/DoubleConsumer;
.implements Lj$/util/Spliterator$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/WhileOps$UnorderedWhileSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "OfDouble"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;,
        Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Taking;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/stream/WhileOps$UnorderedWhileSpliterator<",
        "Ljava/lang/Double;",
        "Lj$/util/Spliterator$OfDouble;",
        ">;",
        "Ljava/util/function/DoubleConsumer;",
        "Lj$/util/Spliterator$OfDouble;"
    }
.end annotation


# instance fields
.field final p:Ljava/util/function/DoublePredicate;

.field t:D


# direct methods
.method constructor <init>(Lj$/util/Spliterator$OfDouble;Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;)V
    .locals 1
    .param p1, "s"    # Lj$/util/Spliterator$OfDouble;
    .param p2, "parent"    # Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;

    .line 1043
    invoke-direct {p0, p1, p2}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator;-><init>(Lj$/util/Spliterator;Lj$/util/stream/WhileOps$UnorderedWhileSpliterator;)V

    .line 1044
    iget-object v0, p2, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;->p:Ljava/util/function/DoublePredicate;

    iput-object v0, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;->p:Ljava/util/function/DoublePredicate;

    .line 1045
    return-void
.end method

.method constructor <init>(Lj$/util/Spliterator$OfDouble;ZLjava/util/function/DoublePredicate;)V
    .locals 0
    .param p1, "s"    # Lj$/util/Spliterator$OfDouble;
    .param p2, "noSplitting"    # Z
    .param p3, "p"    # Ljava/util/function/DoublePredicate;

    .line 1038
    invoke-direct {p0, p1, p2}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator;-><init>(Lj$/util/Spliterator;Z)V

    .line 1039
    iput-object p3, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;->p:Ljava/util/function/DoublePredicate;

    .line 1040
    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 1
    .param p1, "t"    # D

    .line 1049
    iget v0, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;->count:I

    add-int/lit8 v0, v0, 0x1

    and-int/lit8 v0, v0, 0x3f

    iput v0, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;->count:I

    .line 1050
    iput-wide p1, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;->t:D

    .line 1051
    return-void
.end method

.method public synthetic andThen(Ljava/util/function/DoubleConsumer;)Ljava/util/function/DoubleConsumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/DoubleConsumer$-CC;->$default$andThen(Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleConsumer;)Ljava/util/function/DoubleConsumer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$OfDouble$-CC;->$default$forEachRemaining(Lj$/util/Spliterator$OfDouble;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$OfDouble$-CC;->$default$forEachRemaining(Lj$/util/Spliterator$OfDouble;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic forEachRemaining(Ljava/util/function/DoubleConsumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$OfDouble$-CC;->$default$forEachRemaining(Lj$/util/Spliterator$OfDouble;Ljava/util/function/DoubleConsumer;)V

    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$OfDouble$-CC;->$default$tryAdvance(Lj$/util/Spliterator$OfDouble;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$OfDouble$-CC;->$default$tryAdvance(Lj$/util/Spliterator$OfDouble;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator$OfDouble;
    .locals 1

    .line 1033
    invoke-super {p0}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Lj$/util/Spliterator$OfDouble;

    return-object v0
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator$OfPrimitive;
    .locals 1

    .line 1033
    invoke-super {p0}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Lj$/util/Spliterator$OfPrimitive;

    return-object v0
.end method
