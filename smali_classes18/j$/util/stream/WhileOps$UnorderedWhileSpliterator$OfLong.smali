.class abstract Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;
.super Lj$/util/stream/WhileOps$UnorderedWhileSpliterator;
.source "WhileOps.java"

# interfaces
.implements Ljava/util/function/LongConsumer;
.implements Lj$/util/Spliterator$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/WhileOps$UnorderedWhileSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "OfLong"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Dropping;,
        Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Taking;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/stream/WhileOps$UnorderedWhileSpliterator<",
        "Ljava/lang/Long;",
        "Lj$/util/Spliterator$OfLong;",
        ">;",
        "Ljava/util/function/LongConsumer;",
        "Lj$/util/Spliterator$OfLong;"
    }
.end annotation


# instance fields
.field final p:Ljava/util/function/LongPredicate;

.field t:J


# direct methods
.method constructor <init>(Lj$/util/Spliterator$OfLong;Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;)V
    .locals 1
    .param p1, "s"    # Lj$/util/Spliterator$OfLong;
    .param p2, "parent"    # Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;

    .line 938
    invoke-direct {p0, p1, p2}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator;-><init>(Lj$/util/Spliterator;Lj$/util/stream/WhileOps$UnorderedWhileSpliterator;)V

    .line 939
    iget-object v0, p2, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;->p:Ljava/util/function/LongPredicate;

    iput-object v0, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;->p:Ljava/util/function/LongPredicate;

    .line 940
    return-void
.end method

.method constructor <init>(Lj$/util/Spliterator$OfLong;ZLjava/util/function/LongPredicate;)V
    .locals 0
    .param p1, "s"    # Lj$/util/Spliterator$OfLong;
    .param p2, "noSplitting"    # Z
    .param p3, "p"    # Ljava/util/function/LongPredicate;

    .line 933
    invoke-direct {p0, p1, p2}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator;-><init>(Lj$/util/Spliterator;Z)V

    .line 934
    iput-object p3, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;->p:Ljava/util/function/LongPredicate;

    .line 935
    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 1
    .param p1, "t"    # J

    .line 944
    iget v0, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;->count:I

    add-int/lit8 v0, v0, 0x1

    and-int/lit8 v0, v0, 0x3f

    iput v0, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;->count:I

    .line 945
    iput-wide p1, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;->t:J

    .line 946
    return-void
.end method

.method public synthetic andThen(Ljava/util/function/LongConsumer;)Ljava/util/function/LongConsumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/LongConsumer$-CC;->$default$andThen(Ljava/util/function/LongConsumer;Ljava/util/function/LongConsumer;)Ljava/util/function/LongConsumer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$OfLong$-CC;->$default$forEachRemaining(Lj$/util/Spliterator$OfLong;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$OfLong$-CC;->$default$forEachRemaining(Lj$/util/Spliterator$OfLong;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic forEachRemaining(Ljava/util/function/LongConsumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$OfLong$-CC;->$default$forEachRemaining(Lj$/util/Spliterator$OfLong;Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$OfLong$-CC;->$default$tryAdvance(Lj$/util/Spliterator$OfLong;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$OfLong$-CC;->$default$tryAdvance(Lj$/util/Spliterator$OfLong;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator$OfLong;
    .locals 1

    .line 928
    invoke-super {p0}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Lj$/util/Spliterator$OfLong;

    return-object v0
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator$OfPrimitive;
    .locals 1

    .line 928
    invoke-super {p0}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Lj$/util/Spliterator$OfPrimitive;

    return-object v0
.end method
