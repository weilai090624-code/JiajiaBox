.class final Lj$/util/Spliterators$IntIteratorSpliterator;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Lj$/util/Spliterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/Spliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IntIteratorSpliterator"
.end annotation


# static fields
.field static final BATCH_UNIT:I = 0x400

.field static final MAX_BATCH:I = 0x2000000


# instance fields
.field private batch:I

.field private final characteristics:I

.field private est:J

.field private it:Lj$/util/PrimitiveIterator$OfInt;


# direct methods
.method public constructor <init>(Lj$/util/PrimitiveIterator$OfInt;I)V
    .locals 2
    .param p1, "iterator"    # Lj$/util/PrimitiveIterator$OfInt;
    .param p2, "characteristics"    # I

    .line 1878
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1879
    iput-object p1, p0, Lj$/util/Spliterators$IntIteratorSpliterator;->it:Lj$/util/PrimitiveIterator$OfInt;

    .line 1880
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lj$/util/Spliterators$IntIteratorSpliterator;->est:J

    .line 1881
    and-int/lit16 v0, p2, -0x4041

    iput v0, p0, Lj$/util/Spliterators$IntIteratorSpliterator;->characteristics:I

    .line 1882
    return-void
.end method

.method public constructor <init>(Lj$/util/PrimitiveIterator$OfInt;JI)V
    .locals 1
    .param p1, "iterator"    # Lj$/util/PrimitiveIterator$OfInt;
    .param p2, "size"    # J
    .param p4, "characteristics"    # I

    .line 1861
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1862
    iput-object p1, p0, Lj$/util/Spliterators$IntIteratorSpliterator;->it:Lj$/util/PrimitiveIterator$OfInt;

    .line 1863
    iput-wide p2, p0, Lj$/util/Spliterators$IntIteratorSpliterator;->est:J

    .line 1864
    and-int/lit16 v0, p4, 0x1000

    if-nez v0, :cond_0

    .line 1865
    or-int/lit8 v0, p4, 0x40

    or-int/lit16 v0, v0, 0x4000

    goto :goto_0

    .line 1866
    :cond_0
    move v0, p4

    :goto_0
    iput v0, p0, Lj$/util/Spliterators$IntIteratorSpliterator;->characteristics:I

    .line 1867
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .line 1927
    iget v0, p0, Lj$/util/Spliterators$IntIteratorSpliterator;->characteristics:I

    return v0
.end method

.method public estimateSize()J
    .locals 2

    .line 1923
    iget-wide v0, p0, Lj$/util/Spliterators$IntIteratorSpliterator;->est:J

    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 1843
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Lj$/util/Spliterators$IntIteratorSpliterator;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$OfInt$-CC;->$default$forEachRemaining(Lj$/util/Spliterator$OfInt;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava/util/function/IntConsumer;)V
    .locals 1
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    .line 1907
    if-eqz p1, :cond_0

    .line 1908
    iget-object v0, p0, Lj$/util/Spliterators$IntIteratorSpliterator;->it:Lj$/util/PrimitiveIterator$OfInt;

    invoke-interface {v0, p1}, Lj$/util/PrimitiveIterator$OfInt;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    .line 1909
    return-void

    .line 1907
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
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1931
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lj$/util/Spliterators$IntIteratorSpliterator;->hasCharacteristics(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1932
    const/4 v0, 0x0

    return-object v0

    .line 1933
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

    .line 1843
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Lj$/util/Spliterators$IntIteratorSpliterator;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result p1

    return p1
.end method

.method public synthetic tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$OfInt$-CC;->$default$tryAdvance(Lj$/util/Spliterator$OfInt;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava/util/function/IntConsumer;)Z
    .locals 1
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    .line 1913
    if-eqz p1, :cond_1

    .line 1914
    iget-object v0, p0, Lj$/util/Spliterators$IntIteratorSpliterator;->it:Lj$/util/PrimitiveIterator$OfInt;

    invoke-interface {v0}, Lj$/util/PrimitiveIterator$OfInt;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1915
    iget-object v0, p0, Lj$/util/Spliterators$IntIteratorSpliterator;->it:Lj$/util/PrimitiveIterator$OfInt;

    invoke-interface {v0}, Lj$/util/PrimitiveIterator$OfInt;->nextInt()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 1916
    const/4 v0, 0x1

    return v0

    .line 1918
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1913
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public trySplit()Lj$/util/Spliterator$OfInt;
    .locals 11

    .line 1886
    iget-object v0, p0, Lj$/util/Spliterators$IntIteratorSpliterator;->it:Lj$/util/PrimitiveIterator$OfInt;

    .line 1887
    .local v0, "i":Lj$/util/PrimitiveIterator$OfInt;
    iget-wide v1, p0, Lj$/util/Spliterators$IntIteratorSpliterator;->est:J

    .line 1888
    .local v1, "s":J
    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-lez v5, :cond_5

    invoke-interface {v0}, Lj$/util/PrimitiveIterator$OfInt;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1889
    iget v3, p0, Lj$/util/Spliterators$IntIteratorSpliterator;->batch:I

    add-int/lit16 v3, v3, 0x400

    .line 1890
    .local v3, "n":I
    int-to-long v4, v3

    cmp-long v6, v4, v1

    if-lez v6, :cond_0

    .line 1891
    long-to-int v3, v1

    .line 1892
    :cond_0
    const/high16 v4, 0x2000000

    if-le v3, v4, :cond_1

    .line 1893
    const/high16 v3, 0x2000000

    .line 1894
    :cond_1
    new-array v4, v3, [I

    .line 1895
    .local v4, "a":[I
    const/4 v5, 0x0

    .line 1896
    .local v5, "j":I
    :cond_2
    invoke-interface {v0}, Lj$/util/PrimitiveIterator$OfInt;->nextInt()I

    move-result v6

    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    if-ge v5, v3, :cond_3

    invoke-interface {v0}, Lj$/util/PrimitiveIterator$OfInt;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1897
    :cond_3
    iput v5, p0, Lj$/util/Spliterators$IntIteratorSpliterator;->batch:I

    .line 1898
    iget-wide v6, p0, Lj$/util/Spliterators$IntIteratorSpliterator;->est:J

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v10, v6, v8

    if-eqz v10, :cond_4

    .line 1899
    iget-wide v6, p0, Lj$/util/Spliterators$IntIteratorSpliterator;->est:J

    int-to-long v8, v5

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lj$/util/Spliterators$IntIteratorSpliterator;->est:J

    .line 1900
    :cond_4
    new-instance v6, Lj$/util/Spliterators$IntArraySpliterator;

    const/4 v7, 0x0

    iget v8, p0, Lj$/util/Spliterators$IntIteratorSpliterator;->characteristics:I

    invoke-direct {v6, v4, v7, v5, v8}, Lj$/util/Spliterators$IntArraySpliterator;-><init>([IIII)V

    return-object v6

    .line 1902
    .end local v3    # "n":I
    .end local v4    # "a":[I
    .end local v5    # "j":I
    :cond_5
    const/4 v3, 0x0

    return-object v3
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator$OfPrimitive;
    .locals 1

    .line 1843
    invoke-virtual {p0}, Lj$/util/Spliterators$IntIteratorSpliterator;->trySplit()Lj$/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator;
    .locals 1

    .line 1843
    invoke-virtual {p0}, Lj$/util/Spliterators$IntIteratorSpliterator;->trySplit()Lj$/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method
