.class public final synthetic Lj$/util/Spliterator$OfInt$Wrapper;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Spliterator$OfInt;


# instance fields
.field public final synthetic wrappedValue:Lj$/util/Spliterator$OfInt;


# direct methods
.method private synthetic constructor <init>(Lj$/util/Spliterator$OfInt;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/Spliterator$OfInt$Wrapper;->wrappedValue:Lj$/util/Spliterator$OfInt;

    return-void
.end method

.method public static synthetic convert(Lj$/util/Spliterator$OfInt;)Ljava/util/Spliterator$OfInt;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    instance-of v0, p0, Lj$/util/Spliterator$OfInt$VivifiedWrapper;

    if-eqz v0, :cond_d

    check-cast p0, Lj$/util/Spliterator$OfInt$VivifiedWrapper;

    iget-object p0, p0, Lj$/util/Spliterator$OfInt$VivifiedWrapper;->wrappedValue:Ljava/util/Spliterator$OfInt;

    return-object p0

    :cond_d
    new-instance v0, Lj$/util/Spliterator$OfInt$Wrapper;

    invoke-direct {v0, p0}, Lj$/util/Spliterator$OfInt$Wrapper;-><init>(Lj$/util/Spliterator$OfInt;)V

    return-object v0
.end method


# virtual methods
.method public synthetic characteristics()I
    .registers 2

    iget-object v0, p0, Lj$/util/Spliterator$OfInt$Wrapper;->wrappedValue:Lj$/util/Spliterator$OfInt;

    invoke-interface {v0}, Lj$/util/Spliterator;->characteristics()I

    move-result v0

    return v0
.end method

.method public synthetic equals(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Lj$/util/Spliterator$OfInt$Wrapper;->wrappedValue:Lj$/util/Spliterator$OfInt;

    instance-of v1, p1, Lj$/util/Spliterator$OfInt$Wrapper;

    if-eqz v1, :cond_a

    check-cast p1, Lj$/util/Spliterator$OfInt$Wrapper;

    iget-object p1, p1, Lj$/util/Spliterator$OfInt$Wrapper;->wrappedValue:Lj$/util/Spliterator$OfInt;

    :cond_a
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic estimateSize()J
    .registers 3

    iget-object v0, p0, Lj$/util/Spliterator$OfInt$Wrapper;->wrappedValue:Lj$/util/Spliterator$OfInt;

    invoke-interface {v0}, Lj$/util/Spliterator;->estimateSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic forEachRemaining(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lj$/util/Spliterator$OfInt$Wrapper;->wrappedValue:Lj$/util/Spliterator$OfInt;

    invoke-interface {v0, p1}, Lj$/util/Spliterator$OfInt;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 3

    iget-object v0, p0, Lj$/util/Spliterator$OfInt$Wrapper;->wrappedValue:Lj$/util/Spliterator$OfInt;

    invoke-interface {v0, p1}, Lj$/util/Spliterator$OfInt;->forEachRemaining(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic forEachRemaining(Ljava/util/function/IntConsumer;)V
    .registers 3

    iget-object v0, p0, Lj$/util/Spliterator$OfInt$Wrapper;->wrappedValue:Lj$/util/Spliterator$OfInt;

    invoke-interface {v0, p1}, Lj$/util/Spliterator$OfInt;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public synthetic getComparator()Ljava/util/Comparator;
    .registers 2

    iget-object v0, p0, Lj$/util/Spliterator$OfInt$Wrapper;->wrappedValue:Lj$/util/Spliterator$OfInt;

    invoke-interface {v0}, Lj$/util/Spliterator;->getComparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getExactSizeIfKnown()J
    .registers 3

    iget-object v0, p0, Lj$/util/Spliterator$OfInt$Wrapper;->wrappedValue:Lj$/util/Spliterator$OfInt;

    invoke-interface {v0}, Lj$/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic hasCharacteristics(I)Z
    .registers 3

    iget-object v0, p0, Lj$/util/Spliterator$OfInt$Wrapper;->wrappedValue:Lj$/util/Spliterator$OfInt;

    invoke-interface {v0, p1}, Lj$/util/Spliterator;->hasCharacteristics(I)Z

    move-result p1

    return p1
.end method

.method public synthetic hashCode()I
    .registers 2

    iget-object v0, p0, Lj$/util/Spliterator$OfInt$Wrapper;->wrappedValue:Lj$/util/Spliterator$OfInt;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public synthetic tryAdvance(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lj$/util/Spliterator$OfInt$Wrapper;->wrappedValue:Lj$/util/Spliterator$OfInt;

    invoke-interface {v0, p1}, Lj$/util/Spliterator$OfInt;->tryAdvance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 3

    iget-object v0, p0, Lj$/util/Spliterator$OfInt$Wrapper;->wrappedValue:Lj$/util/Spliterator$OfInt;

    invoke-interface {v0, p1}, Lj$/util/Spliterator$OfInt;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public synthetic tryAdvance(Ljava/util/function/IntConsumer;)Z
    .registers 3

    iget-object v0, p0, Lj$/util/Spliterator$OfInt$Wrapper;->wrappedValue:Lj$/util/Spliterator$OfInt;

    invoke-interface {v0, p1}, Lj$/util/Spliterator$OfInt;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result p1

    return p1
.end method

.method public synthetic trySplit()Ljava/util/Spliterator$OfInt;
    .registers 2

    iget-object v0, p0, Lj$/util/Spliterator$OfInt$Wrapper;->wrappedValue:Lj$/util/Spliterator$OfInt;

    invoke-interface {v0}, Lj$/util/Spliterator$OfInt;->trySplit()Lj$/util/Spliterator$OfInt;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Spliterator$OfInt$Wrapper;->convert(Lj$/util/Spliterator$OfInt;)Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public synthetic trySplit()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    iget-object v0, p0, Lj$/util/Spliterator$OfInt$Wrapper;->wrappedValue:Lj$/util/Spliterator$OfInt;

    invoke-interface {v0}, Lj$/util/Spliterator$OfInt;->trySplit()Lj$/util/Spliterator$OfPrimitive;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Spliterator$OfPrimitive$Wrapper;->convert(Lj$/util/Spliterator$OfPrimitive;)Ljava/util/Spliterator$OfPrimitive;

    move-result-object v0

    return-object v0
.end method

.method public synthetic trySplit()Ljava/util/Spliterator;
    .registers 2

    iget-object v0, p0, Lj$/util/Spliterator$OfInt$Wrapper;->wrappedValue:Lj$/util/Spliterator$OfInt;

    invoke-interface {v0}, Lj$/util/Spliterator$OfInt;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Spliterator$Wrapper;->convert(Lj$/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
