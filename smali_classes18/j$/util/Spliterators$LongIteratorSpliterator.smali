.class final Lj$/util/Spliterators$LongIteratorSpliterator;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Lj$/util/Spliterator$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/Spliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LongIteratorSpliterator"
.end annotation


# static fields
.field static final BATCH_UNIT:I = 0x400

.field static final MAX_BATCH:I = 0x2000000


# instance fields
.field private batch:I

.field private final characteristics:I

.field private est:J

.field private it:Lj$/util/PrimitiveIterator$OfLong;


# direct methods
.method public constructor <init>(Lj$/util/PrimitiveIterator$OfLong;I)V
    .locals 2
    .param p1, "iterator"    # Lj$/util/PrimitiveIterator$OfLong;
    .param p2, "characteristics"    # I

    .line 1972
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1973
    iput-object p1, p0, Lj$/util/Spliterators$LongIteratorSpliterator;->it:Lj$/util/PrimitiveIterator$OfLong;

    .line 1974
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lj$/util/Spliterators$LongIteratorSpliterator;->est:J

    .line 1975
    and-int/lit16 v0, p2, -0x4041

    iput v0, p0, Lj$/util/Spliterators$LongIteratorSpliterator;->characteristics:I

    .line 1976
    return-void
.end method

.method public constructor <init>(Lj$/util/PrimitiveIterator$OfLong;JI)V
    .locals 1
    .param p1, "iterator"    # Lj$/util/PrimitiveIterator$OfLong;
    .param p2, "size"    # J
    .param p4, "characteristics"    # I

    .line 1955
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1956
    iput-object p1, p0, Lj$/util/Spliterators$LongIteratorSpliterator;->it:Lj$/util/PrimitiveIterator$OfLong;

    .line 1957
    iput-wide p2, p0, Lj$/util/Spliterators$LongIteratorSpliterator;->est:J

    .line 1958
    and-int/lit16 v0, p4, 0x1000

    if-nez v0, :cond_0

    .line 1959
    or-int/lit8 v0, p4, 0x40

    or-int/lit16 v0, v0, 0x4000

    goto :goto_0

    .line 1960
    :cond_0
    move v0, p4

    :goto_0
    iput v0, p0, Lj$/util/Spliterators$LongIteratorSpliterator;->characteristics:I

    .line 1961
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .line 2021
    iget v0, p0, Lj$/util/Spliterators$LongIteratorSpliterator;->characteristics:I

    return v0
.end method

.method public estimateSize()J
    .locals 2

    .line 2017
    iget-wide v0, p0, Lj$/util/Spliterators$LongIteratorSpliterator;->est:J

    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 1937
    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Lj$/util/Spliterators$LongIteratorSpliterator;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method public synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$OfLong$-CC;->$default$forEachRemaining(Lj$/util/Spliterator$OfLong;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava/util/function/LongConsumer;)V
    .locals 1
    .param p1, "action"    # Ljava/util/function/LongConsumer;

    .line 2001
    if-eqz p1, :cond_0

    .line 2002
    iget-object v0, p0, Lj$/util/Spliterators$LongIteratorSpliterator;->it:Lj$/util/PrimitiveIterator$OfLong;

    invoke-interface {v0, p1}, Lj$/util/PrimitiveIterator$OfLong;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    .line 2003
    return-void

    .line 2001
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
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 2025
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lj$/util/Spliterators$LongIteratorSpliterator;->hasCharacteristics(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2026
    const/4 v0, 0x0

    return-object v0

    .line 2027
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

    .line 1937
    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Lj$/util/Spliterators$LongIteratorSpliterator;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result p1

    return p1
.end method

.method public synthetic tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$OfLong$-CC;->$default$tryAdvance(Lj$/util/Spliterator$OfLong;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava/util/function/LongConsumer;)Z
    .locals 2
    .param p1, "action"    # Ljava/util/function/LongConsumer;

    .line 2007
    if-eqz p1, :cond_1

    .line 2008
    iget-object v0, p0, Lj$/util/Spliterators$LongIteratorSpliterator;->it:Lj$/util/PrimitiveIterator$OfLong;

    invoke-interface {v0}, Lj$/util/PrimitiveIterator$OfLong;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2009
    iget-object v0, p0, Lj$/util/Spliterators$LongIteratorSpliterator;->it:Lj$/util/PrimitiveIterator$OfLong;

    invoke-interface {v0}, Lj$/util/PrimitiveIterator$OfLong;->nextLong()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 2010
    const/4 v0, 0x1

    return v0

    .line 2012
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 2007
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public trySplit()Lj$/util/Spliterator$OfLong;
    .locals 11

    .line 1980
    iget-object v0, p0, Lj$/util/Spliterators$LongIteratorSpliterator;->it:Lj$/util/PrimitiveIterator$OfLong;

    .line 1981
    .local v0, "i":Lj$/util/PrimitiveIterator$OfLong;
    iget-wide v1, p0, Lj$/util/Spliterators$LongIteratorSpliterator;->est:J

    .line 1982
    .local v1, "s":J
    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-lez v5, :cond_5

    invoke-interface {v0}, Lj$/util/PrimitiveIterator$OfLong;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1983
    iget v3, p0, Lj$/util/Spliterators$LongIteratorSpliterator;->batch:I

    add-int/lit16 v3, v3, 0x400

    .line 1984
    .local v3, "n":I
    int-to-long v4, v3

    cmp-long v6, v4, v1

    if-lez v6, :cond_0

    .line 1985
    long-to-int v3, v1

    .line 1986
    :cond_0
    const/high16 v4, 0x2000000

    if-le v3, v4, :cond_1

    .line 1987
    const/high16 v3, 0x2000000

    .line 1988
    :cond_1
    new-array v4, v3, [J

    .line 1989
    .local v4, "a":[J
    const/4 v5, 0x0

    .line 1990
    .local v5, "j":I
    :cond_2
    invoke-interface {v0}, Lj$/util/PrimitiveIterator$OfLong;->nextLong()J

    move-result-wide v6

    aput-wide v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    if-ge v5, v3, :cond_3

    invoke-interface {v0}, Lj$/util/PrimitiveIterator$OfLong;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1991
    :cond_3
    iput v5, p0, Lj$/util/Spliterators$LongIteratorSpliterator;->batch:I

    .line 1992
    iget-wide v6, p0, Lj$/util/Spliterators$LongIteratorSpliterator;->est:J

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v10, v6, v8

    if-eqz v10, :cond_4

    .line 1993
    iget-wide v6, p0, Lj$/util/Spliterators$LongIteratorSpliterator;->est:J

    int-to-long v8, v5

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lj$/util/Spliterators$LongIteratorSpliterator;->est:J

    .line 1994
    :cond_4
    new-instance v6, Lj$/util/Spliterators$LongArraySpliterator;

    const/4 v7, 0x0

    iget v8, p0, Lj$/util/Spliterators$LongIteratorSpliterator;->characteristics:I

    invoke-direct {v6, v4, v7, v5, v8}, Lj$/util/Spliterators$LongArraySpliterator;-><init>([JIII)V

    return-object v6

    .line 1996
    .end local v3    # "n":I
    .end local v4    # "a":[J
    .end local v5    # "j":I
    :cond_5
    const/4 v3, 0x0

    return-object v3
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator$OfPrimitive;
    .locals 1

    .line 1937
    invoke-virtual {p0}, Lj$/util/Spliterators$LongIteratorSpliterator;->trySplit()Lj$/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator;
    .locals 1

    .line 1937
    invoke-virtual {p0}, Lj$/util/Spliterators$LongIteratorSpliterator;->trySplit()Lj$/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method
