.class public final synthetic Lj$/util/PrimitiveIterator$OfInt$VivifiedWrapper;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lj$/util/PrimitiveIterator$OfInt;
.implements Lj$/util/Iterator;


# instance fields
.field public final synthetic wrappedValue:Ljava/util/PrimitiveIterator$OfInt;


# direct methods
.method private synthetic constructor <init>(Ljava/util/PrimitiveIterator$OfInt;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/PrimitiveIterator$OfInt$VivifiedWrapper;->wrappedValue:Ljava/util/PrimitiveIterator$OfInt;

    return-void
.end method

.method public static synthetic convert(Ljava/util/PrimitiveIterator$OfInt;)Lj$/util/PrimitiveIterator$OfInt;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    instance-of v0, p0, Lj$/util/PrimitiveIterator$OfInt$Wrapper;

    if-eqz v0, :cond_d

    check-cast p0, Lj$/util/PrimitiveIterator$OfInt$Wrapper;

    iget-object p0, p0, Lj$/util/PrimitiveIterator$OfInt$Wrapper;->wrappedValue:Lj$/util/PrimitiveIterator$OfInt;

    return-object p0

    :cond_d
    new-instance v0, Lj$/util/PrimitiveIterator$OfInt$VivifiedWrapper;

    invoke-direct {v0, p0}, Lj$/util/PrimitiveIterator$OfInt$VivifiedWrapper;-><init>(Ljava/util/PrimitiveIterator$OfInt;)V

    return-object v0
.end method


# virtual methods
.method public synthetic equals(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Lj$/util/PrimitiveIterator$OfInt$VivifiedWrapper;->wrappedValue:Ljava/util/PrimitiveIterator$OfInt;

    instance-of v1, p1, Lj$/util/PrimitiveIterator$OfInt$VivifiedWrapper;

    if-eqz v1, :cond_a

    check-cast p1, Lj$/util/PrimitiveIterator$OfInt$VivifiedWrapper;

    iget-object p1, p1, Lj$/util/PrimitiveIterator$OfInt$VivifiedWrapper;->wrappedValue:Ljava/util/PrimitiveIterator$OfInt;

    :cond_a
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic forEachRemaining(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lj$/util/PrimitiveIterator$OfInt$VivifiedWrapper;->wrappedValue:Ljava/util/PrimitiveIterator$OfInt;

    invoke-interface {v0, p1}, Ljava/util/PrimitiveIterator$OfInt;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 3

    iget-object v0, p0, Lj$/util/PrimitiveIterator$OfInt$VivifiedWrapper;->wrappedValue:Ljava/util/PrimitiveIterator$OfInt;

    invoke-interface {v0, p1}, Ljava/util/PrimitiveIterator$OfInt;->forEachRemaining(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic forEachRemaining(Ljava/util/function/IntConsumer;)V
    .registers 3

    iget-object v0, p0, Lj$/util/PrimitiveIterator$OfInt$VivifiedWrapper;->wrappedValue:Ljava/util/PrimitiveIterator$OfInt;

    invoke-interface {v0, p1}, Ljava/util/PrimitiveIterator$OfInt;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public synthetic hasNext()Z
    .registers 2

    iget-object v0, p0, Lj$/util/PrimitiveIterator$OfInt$VivifiedWrapper;->wrappedValue:Ljava/util/PrimitiveIterator$OfInt;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public synthetic hashCode()I
    .registers 2

    iget-object v0, p0, Lj$/util/PrimitiveIterator$OfInt$VivifiedWrapper;->wrappedValue:Ljava/util/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public synthetic next()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lj$/util/PrimitiveIterator$OfInt$VivifiedWrapper;->wrappedValue:Ljava/util/PrimitiveIterator$OfInt;

    invoke-interface {v0}, Ljava/util/PrimitiveIterator$OfInt;->next()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lj$/util/PrimitiveIterator$OfInt$VivifiedWrapper;->wrappedValue:Ljava/util/PrimitiveIterator$OfInt;

    invoke-interface {v0}, Ljava/util/PrimitiveIterator$OfInt;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic nextInt()I
    .registers 2

    iget-object v0, p0, Lj$/util/PrimitiveIterator$OfInt$VivifiedWrapper;->wrappedValue:Ljava/util/PrimitiveIterator$OfInt;

    invoke-interface {v0}, Ljava/util/PrimitiveIterator$OfInt;->nextInt()I

    move-result v0

    return v0
.end method

.method public synthetic remove()V
    .registers 2

    iget-object v0, p0, Lj$/util/PrimitiveIterator$OfInt$VivifiedWrapper;->wrappedValue:Ljava/util/PrimitiveIterator$OfInt;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
