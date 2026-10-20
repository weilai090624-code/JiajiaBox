.class final Lj$/util/Spliterators$DoubleIteratorSpliterator;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Lj$/util/Spliterator$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/Spliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DoubleIteratorSpliterator"
.end annotation


# static fields
.field static final BATCH_UNIT:I = 0x400

.field static final MAX_BATCH:I = 0x2000000


# instance fields
.field private batch:I

.field private final characteristics:I

.field private est:J

.field private it:Lj$/util/PrimitiveIterator$OfDouble;


# direct methods
.method public constructor <init>(Lj$/util/PrimitiveIterator$OfDouble;I)V
    .locals 2
    .param p1, "iterator"    # Lj$/util/PrimitiveIterator$OfDouble;
    .param p2, "characteristics"    # I

    .line 2066
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2067
    iput-object p1, p0, Lj$/util/Spliterators$DoubleIteratorSpliterator;->it:Lj$/util/PrimitiveIterator$OfDouble;

    .line 2068
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lj$/util/Spliterators$DoubleIteratorSpliterator;->est:J

    .line 2069
    and-int/lit16 v0, p2, -0x4041

    iput v0, p0, Lj$/util/Spliterators$DoubleIteratorSpliterator;->characteristics:I

    .line 2070
    return-void
.end method

.method public constructor <init>(Lj$/util/PrimitiveIterator$OfDouble;JI)V
    .locals 1
    .param p1, "iterator"    # Lj$/util/PrimitiveIterator$OfDouble;
    .param p2, "size"    # J
    .param p4, "characteristics"    # I

    .line 2049
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2050
    iput-object p1, p0, Lj$/util/Spliterators$DoubleIteratorSpliterator;->it:Lj$/util/PrimitiveIterator$OfDouble;

    .line 2051
    iput-wide p2, p0, Lj$/util/Spliterators$DoubleIteratorSpliterator;->est:J

    .line 2052
    and-int/lit16 v0, p4, 0x1000

    if-nez v0, :cond_0

    .line 2053
    or-int/lit8 v0, p4, 0x40

    or-int/lit16 v0, v0, 0x4000

    goto :goto_0

    .line 2054
    :cond_0
    move v0, p4

    :goto_0
    iput v0, p0, Lj$/util/Spliterators$DoubleIteratorSpliterator;->characteristics:I

    .line 2055
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .line 2115
    iget v0, p0, Lj$/util/Spliterators$DoubleIteratorSpliterator;->characteristics:I

    return v0
.end method

.method public estimateSize()J
    .locals 2

    .line 2111
    iget-wide v0, p0, Lj$/util/Spliterators$DoubleIteratorSpliterator;->est:J

    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 2031
    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Lj$/util/Spliterators$DoubleIteratorSpliterator;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    return-void
.end method

.method public synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$OfDouble$-CC;->$default$forEachRemaining(Lj$/util/Spliterator$OfDouble;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava/util/function/DoubleConsumer;)V
    .locals 1
    .param p1, "action"    # Ljava/util/function/DoubleConsumer;

    .line 2095
    if-eqz p1, :cond_0

    .line 2096
    iget-object v0, p0, Lj$/util/Spliterators$DoubleIteratorSpliterator;->it:Lj$/util/PrimitiveIterator$OfDouble;

    invoke-interface {v0, p1}, Lj$/util/PrimitiveIterator$OfDouble;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    .line 2097
    return-void

    .line 2095
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 2119
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lj$/util/Spliterators$DoubleIteratorSpliterator;->hasCharacteristics(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2120
    const/4 v0, 0x0

    return-object v0

    .line 2121
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public synthetic getExactSizeIfKnown()J
    .locals 2

    invoke-static {p0}, Lj$/util/Spliterator$-CC;->$default$getExactSizeIfKnown(Lj$/util/Spliterator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic hasCharacteristics(I)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$-CC;->$default$hasCharacteristics(Lj$/util/Spliterator;I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 2031
    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Lj$/util/Spliterators$DoubleIteratorSpliterator;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result p1

    return p1
.end method

.method public synthetic tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$OfDouble$-CC;->$default$tryAdvance(Lj$/util/Spliterator$OfDouble;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava/util/function/DoubleConsumer;)Z
    .locals 2
    .param p1, "action"    # Ljava/util/function/DoubleConsumer;

    .line 2101
    if-eqz p1, :cond_1

    .line 2102
    iget-object v0, p0, Lj$/util/Spliterators$DoubleIteratorSpliterator;->it:Lj$/util/PrimitiveIterator$OfDouble;

    invoke-interface {v0}, Lj$/util/PrimitiveIterator$OfDouble;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2103
    iget-object v0, p0, Lj$/util/Spliterators$DoubleIteratorSpliterator;->it:Lj$/util/PrimitiveIterator$OfDouble;

    invoke-interface {v0}, Lj$/util/PrimitiveIterator$OfDouble;->nextDouble()D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava/util/function/DoubleConsumer;->accept(D)V

    .line 2104
    const/4 v0, 0x1

    return v0

    .line 2106
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 2101
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public trySplit()Lj$/util/Spliterator$OfDouble;
    .locals 11

    .line 2074
    iget-object v0, p0, Lj$/util/Spliterators$DoubleIteratorSpliterator;->it:Lj$/util/PrimitiveIterator$OfDouble;

    .line 2075
    .local v0, "i":Lj$/util/PrimitiveIterator$OfDouble;
    iget-wide v1, p0, Lj$/util/Spliterators$DoubleIteratorSpliterator;->est:J

    .line 2076
    .local v1, "s":J
    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-lez v5, :cond_5

    invoke-interface {v0}, Lj$/util/PrimitiveIterator$OfDouble;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2077
    iget v3, p0, Lj$/util/Spliterators$DoubleIteratorSpliterator;->batch:I

    add-int/lit16 v3, v3, 0x400

    .line 2078
    .local v3, "n":I
    int-to-long v4, v3

    cmp-long v6, v4, v1

    if-lez v6, :cond_0

    .line 2079
    long-to-int v3, v1

    .line 2080
    :cond_0
    const/high16 v4, 0x2000000

    if-le v3, v4, :cond_1

    .line 2081
    const/high16 v3, 0x2000000

    .line 2082
    :cond_1
    new-array v4, v3, [D

    .line 2083
    .local v4, "a":[D
    const/4 v5, 0x0

    .line 2084
    .local v5, "j":I
    :cond_2
    invoke-interface {v0}, Lj$/util/PrimitiveIterator$OfDouble;->nextDouble()D

    move-result-wide v6

    aput-wide v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    if-ge v5, v3, :cond_3

    invoke-interface {v0}, Lj$/util/PrimitiveIterator$OfDouble;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 2085
    :cond_3
    iput v5, p0, Lj$/util/Spliterators$DoubleIteratorSpliterator;->batch:I

    .line 2086
    iget-wide v6, p0, Lj$/util/Spliterators$DoubleIteratorSpliterator;->est:J

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v10, v6, v8

    if-eqz v10, :cond_4

    .line 2087
    iget-wide v6, p0, Lj$/util/Spliterators$DoubleIteratorSpliterator;->est:J

    int-to-long v8, v5

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lj$/util/Spliterators$DoubleIteratorSpliterator;->est:J

    .line 2088
    :cond_4
    new-instance v6, Lj$/util/Spliterators$DoubleArraySpliterator;

    const/4 v7, 0x0

    iget v8, p0, Lj$/util/Spliterators$DoubleIteratorSpliterator;->characteristics:I

    invoke-direct {v6, v4, v7, v5, v8}, Lj$/util/Spliterators$DoubleArraySpliterator;-><init>([DIII)V

    return-object v6

    .line 2090
    .end local v3    # "n":I
    .end local v4    # "a":[D
    .end local v5    # "j":I
    :cond_5
    const/4 v3, 0x0

    return-object v3
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator$OfPrimitive;
    .locals 1

    .line 2031
    invoke-virtual {p0}, Lj$/util/Spliterators$DoubleIteratorSpliterator;->trySplit()Lj$/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator;
    .locals 1

    .line 2031
    invoke-virtual {p0}, Lj$/util/Spliterators$DoubleIteratorSpliterator;->trySplit()Lj$/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method
