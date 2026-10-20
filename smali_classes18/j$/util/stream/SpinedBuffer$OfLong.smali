.class Lj$/util/stream/SpinedBuffer$OfLong;
.super Lj$/util/stream/SpinedBuffer$OfPrimitive;
.source "SpinedBuffer.java"

# interfaces
.implements Ljava/util/function/LongConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/SpinedBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OfLong"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/stream/SpinedBuffer$OfPrimitive<",
        "Ljava/lang/Long;",
        "[J",
        "Ljava/util/function/LongConsumer;",
        ">;",
        "Ljava/util/function/LongConsumer;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 865
    invoke-direct {p0}, Lj$/util/stream/SpinedBuffer$OfPrimitive;-><init>()V

    return-void
.end method

.method constructor <init>(I)V
    .locals 0
    .param p1, "initialCapacity"    # I

    .line 868
    invoke-direct {p0, p1}, Lj$/util/stream/SpinedBuffer$OfPrimitive;-><init>(I)V

    .line 869
    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 3
    .param p1, "i"    # J

    .line 908
    invoke-virtual {p0}, Lj$/util/stream/SpinedBuffer$OfLong;->preAccept()V

    .line 909
    iget-object v0, p0, Lj$/util/stream/SpinedBuffer$OfLong;->curChunk:Ljava/lang/Object;

    check-cast v0, [J

    iget v1, p0, Lj$/util/stream/SpinedBuffer$OfLong;->elementIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lj$/util/stream/SpinedBuffer$OfLong;->elementIndex:I

    aput-wide p1, v0, v1

    .line 910
    return-void
.end method

.method public synthetic andThen(Ljava/util/function/LongConsumer;)Ljava/util/function/LongConsumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/LongConsumer$-CC;->$default$andThen(Ljava/util/function/LongConsumer;Ljava/util/function/LongConsumer;)Ljava/util/function/LongConsumer;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic arrayForEach(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 0

    .line 863
    check-cast p1, [J

    check-cast p4, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1, p2, p3, p4}, Lj$/util/stream/SpinedBuffer$OfLong;->arrayForEach([JIILjava/util/function/LongConsumer;)V

    return-void
.end method

.method protected arrayForEach([JIILjava/util/function/LongConsumer;)V
    .locals 3
    .param p1, "array"    # [J
    .param p2, "from"    # I
    .param p3, "to"    # I
    .param p4, "consumer"    # Ljava/util/function/LongConsumer;

    .line 902
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 903
    aget-wide v1, p1, v0

    invoke-interface {p4, v1, v2}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 902
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 904
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method protected bridge synthetic arrayLength(Ljava/lang/Object;)I
    .locals 0

    .line 863
    check-cast p1, [J

    invoke-virtual {p0, p1}, Lj$/util/stream/SpinedBuffer$OfLong;->arrayLength([J)I

    move-result p1

    return p1
.end method

.method protected arrayLength([J)I
    .locals 1
    .param p1, "array"    # [J

    .line 895
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
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 873
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Long;>;"
    instance-of v0, p1, Ljava/util/function/LongConsumer;

    if-eqz v0, :cond_0

    .line 874
    move-object v0, p1

    check-cast v0, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, v0}, Lj$/util/stream/SpinedBuffer$OfLong;->forEach(Ljava/lang/Object;)V

    goto :goto_0

    .line 877
    :cond_0
    sget-boolean v0, Lj$/util/stream/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_1

    .line 878
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "{0} calling SpinedBuffer.OfLong.forEach(Consumer)"

    invoke-static {v0, v1}, Lj$/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 879
    :cond_1
    invoke-virtual {p0}, Lj$/util/stream/SpinedBuffer$OfLong;->spliterator()Lj$/util/Spliterator$OfLong;

    move-result-object v0

    invoke-interface {v0, p1}, Lj$/util/Spliterator$OfLong;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 881
    :goto_0
    return-void
.end method

.method public get(J)J
    .locals 5
    .param p1, "index"    # J

    .line 915
    invoke-virtual {p0, p1, p2}, Lj$/util/stream/SpinedBuffer$OfLong;->chunkFor(J)I

    move-result v0

    .line 916
    .local v0, "ch":I
    iget v1, p0, Lj$/util/stream/SpinedBuffer$OfLong;->spineIndex:I

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 917
    iget-object v1, p0, Lj$/util/stream/SpinedBuffer$OfLong;->curChunk:Ljava/lang/Object;

    check-cast v1, [J

    long-to-int v2, p1

    aget-wide v2, v1, v2

    return-wide v2

    .line 919
    :cond_0
    iget-object v1, p0, Lj$/util/stream/SpinedBuffer$OfLong;->spine:[Ljava/lang/Object;

    check-cast v1, [[J

    aget-object v1, v1, v0

    iget-object v2, p0, Lj$/util/stream/SpinedBuffer$OfLong;->priorElementCount:[J

    aget-wide v3, v2, v0

    sub-long v2, p1, v3

    long-to-int v3, v2

    aget-wide v2, v1, v3

    return-wide v2
.end method

.method public iterator()Lj$/util/PrimitiveIterator$OfLong;
    .locals 1

    .line 924
    invoke-virtual {p0}, Lj$/util/stream/SpinedBuffer$OfLong;->spliterator()Lj$/util/Spliterator$OfLong;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Spliterators;->iterator(Lj$/util/Spliterator$OfLong;)Lj$/util/PrimitiveIterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 863
    invoke-virtual {p0}, Lj$/util/stream/SpinedBuffer$OfLong;->iterator()Lj$/util/PrimitiveIterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newArray(I)Ljava/lang/Object;
    .locals 0

    .line 863
    invoke-virtual {p0, p1}, Lj$/util/stream/SpinedBuffer$OfLong;->newArray(I)[J

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[J
    .locals 1
    .param p1, "size"    # I

    .line 890
    new-array v0, p1, [J

    return-object v0
.end method

.method protected bridge synthetic newArrayArray(I)[Ljava/lang/Object;
    .locals 0

    .line 863
    invoke-virtual {p0, p1}, Lj$/util/stream/SpinedBuffer$OfLong;->newArrayArray(I)[[J

    move-result-object p1

    return-object p1
.end method

.method protected newArrayArray(I)[[J
    .locals 1
    .param p1, "size"    # I

    .line 885
    new-array v0, p1, [[J

    return-object v0
.end method

.method public spliterator()Lj$/util/Spliterator$OfLong;
    .locals 7

    .line 954
    new-instance v6, Lj$/util/stream/SpinedBuffer$OfLong$1Splitr;

    iget v3, p0, Lj$/util/stream/SpinedBuffer$OfLong;->spineIndex:I

    const/4 v4, 0x0

    iget v5, p0, Lj$/util/stream/SpinedBuffer$OfLong;->elementIndex:I

    const/4 v2, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/SpinedBuffer$OfLong$1Splitr;-><init>(Lj$/util/stream/SpinedBuffer$OfLong;IIII)V

    return-object v6
.end method

.method public bridge synthetic spliterator()Lj$/util/Spliterator;
    .locals 1

    .line 863
    invoke-virtual {p0}, Lj$/util/stream/SpinedBuffer$OfLong;->spliterator()Lj$/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .line 959
    invoke-virtual {p0}, Lj$/util/stream/SpinedBuffer$OfLong;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 960
    .local v0, "array":[J
    array-length v1, v0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/16 v7, 0xc8

    if-ge v1, v7, :cond_0

    .line 961
    nop

    .line 962
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    array-length v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v8, p0, Lj$/util/stream/SpinedBuffer$OfLong;->spineIndex:I

    .line 963
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v9

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v5

    aput-object v7, v6, v4

    aput-object v8, v6, v3

    aput-object v9, v6, v2

    .line 961
    const-string v1, "%s[length=%d, chunks=%d]%s"

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 966
    :cond_0
    invoke-static {v0, v7}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    .line 967
    .local v1, "array2":[J
    nop

    .line 968
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    array-length v8, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v9, p0, Lj$/util/stream/SpinedBuffer$OfLong;->spineIndex:I

    .line 969
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v10

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v7, v6, v5

    aput-object v8, v6, v4

    aput-object v9, v6, v3

    aput-object v10, v6, v2

    .line 967
    const-string v2, "%s[length=%d, chunks=%d]%s..."

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
