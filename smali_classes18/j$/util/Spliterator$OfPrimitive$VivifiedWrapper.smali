.class public final synthetic Lj$/util/Spliterator$OfPrimitive$VivifiedWrapper;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lj$/util/Spliterator$OfPrimitive;


# instance fields
.field public final synthetic wrappedValue:Ljava/util/Spliterator$OfPrimitive;


# direct methods
.method private synthetic constructor <init>(Ljava/util/Spliterator$OfPrimitive;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/Spliterator$OfPrimitive$VivifiedWrapper;->wrappedValue:Ljava/util/Spliterator$OfPrimitive;

    return-void
.end method

.method public static synthetic convert(Ljava/util/Spliterator$OfPrimitive;)Lj$/util/Spliterator$OfPrimitive;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    instance-of v0, p0, Lj$/util/Spliterator$OfPrimitive$Wrapper;

    if-eqz v0, :cond_d

    check-cast p0, Lj$/util/Spliterator$OfPrimitive$Wrapper;

    iget-object p0, p0, Lj$/util/Spliterator$OfPrimitive$Wrapper;->wrappedValue:Lj$/util/Spliterator$OfPrimitive;

    return-object p0

    :cond_d
    instance-of v0, p0, Ljava/util/Spliterator$OfDouble;

    if-eqz v0, :cond_18

    check-cast p0, Ljava/util/Spliterator$OfDouble;

    invoke-static {p0}, Lj$/util/Spliterator$OfDouble$VivifiedWrapper;->convert(Ljava/util/Spliterator$OfDouble;)Lj$/util/Spliterator$OfDouble;

    move-result-object p0

    return-object p0

    :cond_18
    instance-of v0, p0, Ljava/util/Spliterator$OfInt;

    if-eqz v0, :cond_23

    check-cast p0, Ljava/util/Spliterator$OfInt;

    invoke-static {p0}, Lj$/util/Spliterator$OfInt$VivifiedWrapper;->convert(Ljava/util/Spliterator$OfInt;)Lj$/util/Spliterator$OfInt;

    move-result-object p0

    return-object p0

    :cond_23
    instance-of v0, p0, Ljava/util/Spliterator$OfLong;

    if-eqz v0, :cond_2e

    check-cast p0, Ljava/util/Spliterator$OfLong;

    invoke-static {p0}, Lj$/util/Spliterator$OfLong$VivifiedWrapper;->convert(Ljava/util/Spliterator$OfLong;)Lj$/util/Spliterator$OfLong;

    move-result-object p0

    return-object p0

    :cond_2e
    new-instance v0, Lj$/util/Spliterator$OfPrimitive$VivifiedWrapper;

    invoke-direct {v0, p0}, Lj$/util/Spliterator$OfPrimitive$VivifiedWrapper;-><init>(Ljava/util/Spliterator$OfPrimitive;)V

    return-object v0
.end method


# virtual methods
.method public synthetic characteristics()I
    .registers 2

    iget-object v0, p0, Lj$/util/Spliterator$OfPrimitive$VivifiedWrapper;->wrappedValue:Ljava/util/Spliterator$OfPrimitive;

    invoke-interface {v0}, Ljava/util/Spliterator;->characteristics()I

    move-result v0

    return v0
.end method

.method public synthetic equals(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Lj$/util/Spliterator$OfPrimitive$VivifiedWrapper;->wrappedValue:Ljava/util/Spliterator$OfPrimitive;

    instance-of v1, p1, Lj$/util/Spliterator$OfPrimitive$VivifiedWrapper;

    if-eqz v1, :cond_a

    check-cast p1, Lj$/util/Spliterator$OfPrimitive$VivifiedWrapper;

    iget-object p1, p1, Lj$/util/Spliterator$OfPrimitive$VivifiedWrapper;->wrappedValue:Ljava/util/Spliterator$OfPrimitive;

    :cond_a
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic estimateSize()J
    .registers 3

    iget-object v0, p0, Lj$/util/Spliterator$OfPrimitive$VivifiedWrapper;->wrappedValue:Ljava/util/Spliterator$OfPrimitive;

    invoke-interface {v0}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic forEachRemaining(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lj$/util/Spliterator$OfPrimitive$VivifiedWrapper;->wrappedValue:Ljava/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Ljava/util/Spliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 3

    iget-object v0, p0, Lj$/util/Spliterator$OfPrimitive$VivifiedWrapper;->wrappedValue:Ljava/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Ljava/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic getComparator()Ljava/util/Comparator;
    .registers 2

    iget-object v0, p0, Lj$/util/Spliterator$OfPrimitive$VivifiedWrapper;->wrappedValue:Ljava/util/Spliterator$OfPrimitive;

    invoke-interface {v0}, Ljava/util/Spliterator;->getComparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getExactSizeIfKnown()J
    .registers 3

    iget-object v0, p0, Lj$/util/Spliterator$OfPrimitive$VivifiedWrapper;->wrappedValue:Ljava/util/Spliterator$OfPrimitive;

    invoke-interface {v0}, Ljava/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic hasCharacteristics(I)Z
    .registers 3

    iget-object v0, p0, Lj$/util/Spliterator$OfPrimitive$VivifiedWrapper;->wrappedValue:Ljava/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Ljava/util/Spliterator;->hasCharacteristics(I)Z

    move-result p1

    return p1
.end method

.method public synthetic hashCode()I
    .registers 2

    iget-object v0, p0, Lj$/util/Spliterator$OfPrimitive$VivifiedWrapper;->wrappedValue:Ljava/util/Spliterator$OfPrimitive;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public synthetic tryAdvance(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lj$/util/Spliterator$OfPrimitive$VivifiedWrapper;->wrappedValue:Ljava/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Ljava/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 3

    iget-object v0, p0, Lj$/util/Spliterator$OfPrimitive$VivifiedWrapper;->wrappedValue:Ljava/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public synthetic trySplit()Lj$/util/Spliterator$OfPrimitive;
    .registers 2

    iget-object v0, p0, Lj$/util/Spliterator$OfPrimitive$VivifiedWrapper;->wrappedValue:Ljava/util/Spliterator$OfPrimitive;

    invoke-interface {v0}, Ljava/util/Spliterator$OfPrimitive;->trySplit()Ljava/util/Spliterator$OfPrimitive;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Spliterator$OfPrimitive$VivifiedWrapper;->convert(Ljava/util/Spliterator$OfPrimitive;)Lj$/util/Spliterator$OfPrimitive;

    move-result-object v0

    return-object v0
.end method

.method public synthetic trySplit()Lj$/util/Spliterator;
    .registers 2

    iget-object v0, p0, Lj$/util/Spliterator$OfPrimitive$VivifiedWrapper;->wrappedValue:Ljava/util/Spliterator$OfPrimitive;

    invoke-interface {v0}, Ljava/util/Spliterator$OfPrimitive;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Spliterator$VivifiedWrapper;->convert(Ljava/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
