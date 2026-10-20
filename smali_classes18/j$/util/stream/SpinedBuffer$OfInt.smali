.class Lj$/util/stream/SpinedBuffer$OfInt;
.super Lj$/util/stream/SpinedBuffer$OfPrimitive;
.source "SpinedBuffer.java"

# interfaces
.implements Ljava/util/function/IntConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/SpinedBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OfInt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/stream/SpinedBuffer$OfPrimitive<",
        "Ljava/lang/Integer;",
        "[I",
        "Ljava/util/function/IntConsumer;",
        ">;",
        "Ljava/util/function/IntConsumer;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 752
    invoke-direct {p0}, Lj$/util/stream/SpinedBuffer$OfPrimitive;-><init>()V

    return-void
.end method

.method constructor <init>(I)V
    .locals 0
    .param p1, "initialCapacity"    # I

    .line 755
    invoke-direct {p0, p1}, Lj$/util/stream/SpinedBuffer$OfPrimitive;-><init>(I)V

    .line 756
    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 3
    .param p1, "i"    # I

    .line 795
    invoke-virtual {p0}, Lj$/util/stream/SpinedBuffer$OfInt;->preAccept()V

    .line 796
    iget-object v0, p0, Lj$/util/stream/SpinedBuffer$OfInt;->curChunk:Ljava/lang/Object;

    check-cast v0, [I

    iget v1, p0, Lj$/util/stream/SpinedBuffer$OfInt;->elementIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lj$/util/stream/SpinedBuffer$OfInt;->elementIndex:I

    aput p1, v0, v1

    .line 797
    return-void
.end method

.method public synthetic andThen(Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/IntConsumer$-CC;->$default$andThen(Ljava/util/function/IntConsumer;Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic arrayForEach(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 0

    .line 750
    check-cast p1, [I

    check-cast p4, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1, p2, p3, p4}, Lj$/util/stream/SpinedBuffer$OfInt;->arrayForEach([IIILjava/util/function/IntConsumer;)V

    return-void
.end method

.method protected arrayForEach([IIILjava/util/function/IntConsumer;)V
    .locals 2
    .param p1, "array"    # [I
    .param p2, "from"    # I
    .param p3, "to"    # I
    .param p4, "consumer"    # Ljava/util/function/IntConsumer;

    .line 789
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 790
    aget v1, p1, v0

    invoke-interface {p4, v1}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 789
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 791
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method protected bridge synthetic arrayLength(Ljava/lang/Object;)I
    .locals 0

    .line 750
    check-cast p1, [I

    invoke-virtual {p0, p1}, Lj$/util/stream/SpinedBuffer$OfInt;->arrayLength([I)I

    move-result p1

    return p1
.end method

.method protected arrayLength([I)I
    .locals 1
    .param p1, "array"    # [I

    .line 782
    array-length v0, p1

    return v0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 760
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Integer;>;"
    instance-of v0, p1, Ljava/util/function/IntConsumer;

    if-eqz v0, :cond_0

    .line 761
    move-object v0, p1

    check-cast v0, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, v0}, Lj$/util/stream/SpinedBuffer$OfInt;->forEach(Ljava/lang/Object;)V

    goto :goto_0

    .line 764
    :cond_0
    sget-boolean v0, Lj$/util/stream/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_1

    .line 765
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "{0} calling SpinedBuffer.OfInt.forEach(Consumer)"

    invoke-static {v0, v1}, Lj$/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 766
    :cond_1
    invoke-virtual {p0}, Lj$/util/stream/SpinedBuffer$OfInt;->spliterator()Lj$/util/Spliterator$OfInt;

    move-result-object v0

    invoke-interface {v0, p1}, Lj$/util/Spliterator$OfInt;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 768
    :goto_0
    return-void
.end method

.method public get(J)I
    .locals 5
    .param p1, "index"    # J

    .line 802
    invoke-virtual {p0, p1, p2}, Lj$/util/stream/SpinedBuffer$OfInt;->chunkFor(J)I

    move-result v0

    .line 803
    .local v0, "ch":I
    iget v1, p0, Lj$/util/stream/SpinedBuffer$OfInt;->spineIndex:I

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 804
    iget-object v1, p0, Lj$/util/stream/SpinedBuffer$OfInt;->curChunk:Ljava/lang/Object;

    check-cast v1, [I

    long-to-int v2, p1

    aget v1, v1, v2

    return v1

    .line 806
    :cond_0
    iget-object v1, p0, Lj$/util/stream/SpinedBuffer$OfInt;->spine:[Ljava/lang/Object;

    check-cast v1, [[I

    aget-object v1, v1, v0

    iget-object v2, p0, Lj$/util/stream/SpinedBuffer$OfInt;->priorElementCount:[J

    aget-wide v3, v2, v0

    sub-long v2, p1, v3

    long-to-int v3, v2

    aget v1, v1, v3

    return v1
.end method

.method public iterator()Lj$/util/PrimitiveIterator$OfInt;
    .locals 1

    .line 811
    invoke-virtual {p0}, Lj$/util/stream/SpinedBuffer$OfInt;->spliterator()Lj$/util/Spliterator$OfInt;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Spliterators;->iterator(Lj$/util/Spliterator$OfInt;)Lj$/util/PrimitiveIterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 750
    invoke-virtual {p0}, Lj$/util/stream/SpinedBuffer$OfInt;->iterator()Lj$/util/PrimitiveIterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newArray(I)Ljava/lang/Object;
    .locals 0

    .line 750
    invoke-virtual {p0, p1}, Lj$/util/stream/SpinedBuffer$OfInt;->newArray(I)[I

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[I
    .locals 1
    .param p1, "size"    # I

    .line 777
    new-array v0, p1, [I

    return-object v0
.end method

.method protected bridge synthetic newArrayArray(I)[Ljava/lang/Object;
    .locals 0

    .line 750
    invoke-virtual {p0, p1}, Lj$/util/stream/SpinedBuffer$OfInt;->newArrayArray(I)[[I

    move-result-object p1

    return-object p1
.end method

.method protected newArrayArray(I)[[I
    .locals 1
    .param p1, "size"    # I

    .line 772
    new-array v0, p1, [[I

    return-object v0
.end method

.method public spliterator()Lj$/util/Spliterator$OfInt;
    .locals 7

    .line 840
    new-instance v6, Lj$/util/stream/SpinedBuffer$OfInt$1Splitr;

    iget v3, p0, Lj$/util/stream/SpinedBuffer$OfInt;->spineIndex:I

    const/4 v4, 0x0

    iget v5, p0, Lj$/util/stream/SpinedBuffer$OfInt;->elementIndex:I

    const/4 v2, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/SpinedBuffer$OfInt$1Splitr;-><init>(Lj$/util/stream/SpinedBuffer$OfInt;IIII)V

    return-object v6
.end method

.method public bridge synthetic spliterator()Lj$/util/Spliterator;
    .locals 1

    .line 750
    invoke-virtual {p0}, Lj$/util/stream/SpinedBuffer$OfInt;->spliterator()Lj$/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .line 845
    invoke-virtual {p0}, Lj$/util/stream/SpinedBuffer$OfInt;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 846
    .local v0, "array":[I
    array-length v1, v0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/16 v7, 0xc8

    if-ge v1, v7, :cond_0

    .line 847
    nop

    .line 848
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    array-length v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v8, p0, Lj$/util/stream/SpinedBuffer$OfInt;->spineIndex:I

    .line 849
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v9

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v5

    aput-object v7, v6, v4

    aput-object v8, v6, v3

    aput-object v9, v6, v2

    .line 847
    const-string v1, "%s[length=%d, chunks=%d]%s"

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 852
    :cond_0
    invoke-static {v0, v7}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 853
    .local v1, "array2":[I
    nop

    .line 854
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    array-length v8, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v9, p0, Lj$/util/stream/SpinedBuffer$OfInt;->spineIndex:I

    .line 855
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v10

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v7, v6, v5

    aput-object v8, v6, v4

    aput-object v9, v6, v3

    aput-object v10, v6, v2

    .line 853
    const-string v2, "%s[length=%d, chunks=%d]%s..."

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
