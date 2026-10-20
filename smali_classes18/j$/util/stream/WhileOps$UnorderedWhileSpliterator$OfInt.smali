.class abstract Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;
.super Lj$/util/stream/WhileOps$UnorderedWhileSpliterator;
.source "WhileOps.java"

# interfaces
.implements Ljava/util/function/IntConsumer;
.implements Lj$/util/Spliterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/WhileOps$UnorderedWhileSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "OfInt"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Dropping;,
        Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/stream/WhileOps$UnorderedWhileSpliterator<",
        "Ljava/lang/Integer;",
        "Lj$/util/Spliterator$OfInt;",
        ">;",
        "Ljava/util/function/IntConsumer;",
        "Lj$/util/Spliterator$OfInt;"
    }
.end annotation


# instance fields
.field final p:Ljava/util/function/IntPredicate;

.field t:I


# direct methods
.method constructor <init>(Lj$/util/Spliterator$OfInt;Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;)V
    .locals 1
    .param p1, "s"    # Lj$/util/Spliterator$OfInt;
    .param p2, "parent"    # Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;

    .line 833
    invoke-direct {p0, p1, p2}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator;-><init>(Lj$/util/Spliterator;Lj$/util/stream/WhileOps$UnorderedWhileSpliterator;)V

    .line 834
    iget-object v0, p2, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;->p:Ljava/util/function/IntPredicate;

    iput-object v0, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;->p:Ljava/util/function/IntPredicate;

    .line 835
    return-void
.end method

.method constructor <init>(Lj$/util/Spliterator$OfInt;ZLjava/util/function/IntPredicate;)V
    .locals 0
    .param p1, "s"    # Lj$/util/Spliterator$OfInt;
    .param p2, "noSplitting"    # Z
    .param p3, "p"    # Ljava/util/function/IntPredicate;

    .line 828
    invoke-direct {p0, p1, p2}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator;-><init>(Lj$/util/Spliterator;Z)V

    .line 829
    iput-object p3, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;->p:Ljava/util/function/IntPredicate;

    .line 830
    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 1
    .param p1, "t"    # I

    .line 839
    iget v0, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;->count:I

    add-int/lit8 v0, v0, 0x1

    and-int/lit8 v0, v0, 0x3f

    iput v0, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;->count:I

    .line 840
    iput p1, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;->t:I

    .line 841
    return-void
.end method

.method public synthetic andThen(Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/IntConsumer$-CC;->$default$andThen(Ljava/util/function/IntConsumer;Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$OfInt$-CC;->$default$forEachRemaining(Lj$/util/Spliterator$OfInt;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$OfInt$-CC;->$default$forEachRemaining(Lj$/util/Spliterator$OfInt;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic forEachRemaining(Ljava/util/function/IntConsumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$OfInt$-CC;->$default$forEachRemaining(Lj$/util/Spliterator$OfInt;Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$OfInt$-CC;->$default$tryAdvance(Lj$/util/Spliterator$OfInt;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$OfInt$-CC;->$default$tryAdvance(Lj$/util/Spliterator$OfInt;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator$OfInt;
    .locals 1

    .line 823
    invoke-super {p0}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Lj$/util/Spliterator$OfInt;

    return-object v0
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator$OfPrimitive;
    .locals 1

    .line 823
    invoke-super {p0}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Lj$/util/Spliterator$OfPrimitive;

    return-object v0
.end method
