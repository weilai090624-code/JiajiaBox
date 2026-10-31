.class Lj$/util/Spliterators$IteratorSpliterator;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Lj$/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/Spliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IteratorSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lj$/util/Spliterator<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final BATCH_UNIT:I = 0x400

.field static final MAX_BATCH:I = 0x2000000


# instance fields
.field private batch:I

.field private final characteristics:I

.field private final collection:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private est:J

.field private it:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;I)V
    .registers 4
    .param p2, "characteristics"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;I)V"
        }
    .end annotation

    .line 1710
    .local p0, "this":Lj$/util/Spliterators$IteratorSpliterator;, "Ljava/util/Spliterators$IteratorSpliterator<TT;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1711
    iput-object p1, p0, Lj$/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    .line 1712
    const/4 v0, 0x0

    iput-object v0, p0, Lj$/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    .line 1713
    and-int/lit16 v0, p2, 0x1000

    if-nez v0, :cond_11

    .line 1714
    or-int/lit8 v0, p2, 0x40

    or-int/lit16 v0, v0, 0x4000

    goto :goto_12

    .line 1715
    :cond_11
    move v0, p2

    :goto_12
    iput v0, p0, Lj$/util/Spliterators$IteratorSpliterator;->characteristics:I

    .line 1716
    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;I)V
    .registers 5
    .param p2, "characteristics"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TT;>;I)V"
        }
    .end annotation

    .line 1746
    .local p0, "this":Lj$/util/Spliterators$IteratorSpliterator;, "Ljava/util/Spliterators$IteratorSpliterator<TT;>;"
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1747
    const/4 v0, 0x0

    iput-object v0, p0, Lj$/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    .line 1748
    iput-object p1, p0, Lj$/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    .line 1749
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lj$/util/Spliterators$IteratorSpliterator;->est:J

    .line 1750
    and-int/lit16 v0, p2, -0x4041

    iput v0, p0, Lj$/util/Spliterators$IteratorSpliterator;->characteristics:I

    .line 1751
    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;JI)V
    .registers 6
    .param p2, "size"    # J
    .param p4, "characteristics"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TT;>;JI)V"
        }
    .end annotation

    .line 1728
    .local p0, "this":Lj$/util/Spliterators$IteratorSpliterator;, "Ljava/util/Spliterators$IteratorSpliterator<TT;>;"
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1729
    const/4 v0, 0x0

    iput-object v0, p0, Lj$/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    .line 1730
    iput-object p1, p0, Lj$/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    .line 1731
    iput-wide p2, p0, Lj$/util/Spliterators$IteratorSpliterator;->est:J

    .line 1732
    and-int/lit16 v0, p4, 0x1000

    if-nez v0, :cond_13

    .line 1733
    or-int/lit8 v0, p4, 0x40

    or-int/lit16 v0, v0, 0x4000

    goto :goto_14

    .line 1734
    :cond_13
    move v0, p4

    :goto_14
    iput v0, p0, Lj$/util/Spliterators$IteratorSpliterator;->characteristics:I

    .line 1735
    return-void
.end method


# virtual methods
.method public characteristics()I
    .registers 2

    .line 1828
    .local p0, "this":Lj$/util/Spliterators$IteratorSpliterator;, "Ljava/util/Spliterators$IteratorSpliterator<TT;>;"
    iget v0, p0, Lj$/util/Spliterators$IteratorSpliterator;->characteristics:I

    return v0
.end method

.method public estimateSize()J
    .registers 3

    .line 1820
    .local p0, "this":Lj$/util/Spliterators$IteratorSpliterator;, "Ljava/util/Spliterators$IteratorSpliterator<TT;>;"
    iget-object v0, p0, Lj$/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    if-nez v0, :cond_16

    .line 1821
    iget-object v0, p0, Lj$/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lj$/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    .line 1822
    iget-object v0, p0, Lj$/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lj$/util/Spliterators$IteratorSpliterator;->est:J

    return-wide v0

    .line 1824
    :cond_16
    iget-wide v0, p0, Lj$/util/Spliterators$IteratorSpliterator;->est:J

    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1795
    .local p0, "this":Lj$/util/Spliterators$IteratorSpliterator;, "Ljava/util/Spliterators$IteratorSpliterator<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    if-eqz p1, :cond_1d

    .line 1797
    iget-object v0, p0, Lj$/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    move-object v1, v0

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    if-nez v0, :cond_19

    .line 1798
    iget-object v0, p0, Lj$/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lj$/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    move-object v1, v0

    .line 1799
    iget-object v0, p0, Lj$/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, Lj$/util/Spliterators$IteratorSpliterator;->est:J

    .line 1801
    :cond_19
    invoke-static {v1, p1}, Lj$/util/Iterator$-EL;->forEachRemaining(Ljava/util/Iterator;Ljava/util/function/Consumer;)V

    .line 1802
    return-void

    .line 1795
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    :cond_1d
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public getComparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation

    .line 1832
    .local p0, "this":Lj$/util/Spliterators$IteratorSpliterator;, "Ljava/util/Spliterators$IteratorSpliterator<TT;>;"
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lj$/util/Spliterators$IteratorSpliterator;->hasCharacteristics(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1833
    const/4 v0, 0x0

    return-object v0

    .line 1834
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public synthetic getExactSizeIfKnown()J
    .registers 3

    invoke-static {p0}, Lj$/util/Spliterator$-CC;->$default$getExactSizeIfKnown(Lj$/util/Spliterator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic hasCharacteristics(I)Z
    .registers 2

    invoke-static {p0, p1}, Lj$/util/Spliterator$-CC;->$default$hasCharacteristics(Lj$/util/Spliterator;I)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 1806
    .local p0, "this":Lj$/util/Spliterators$IteratorSpliterator;, "Ljava/util/Spliterators$IteratorSpliterator<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    if-eqz p1, :cond_2c

    .line 1807
    iget-object v0, p0, Lj$/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    if-nez v0, :cond_17

    .line 1808
    iget-object v0, p0, Lj$/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lj$/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    .line 1809
    iget-object v0, p0, Lj$/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lj$/util/Spliterators$IteratorSpliterator;->est:J

    .line 1811
    :cond_17
    iget-object v0, p0, Lj$/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1812
    iget-object v0, p0, Lj$/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1813
    const/4 v0, 0x1

    return v0

    .line 1815
    :cond_2a
    const/4 v0, 0x0

    return v0

    .line 1806
    :cond_2c
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public trySplit()Lj$/util/Spliterator;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 1770
    .local p0, "this":Lj$/util/Spliterators$IteratorSpliterator;, "Ljava/util/Spliterators$IteratorSpliterator<TT;>;"
    iget-object v0, p0, Lj$/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    move-object v1, v0

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    if-nez v0, :cond_18

    .line 1771
    iget-object v0, p0, Lj$/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lj$/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    move-object v1, v0

    .line 1772
    iget-object v0, p0, Lj$/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, Lj$/util/Spliterators$IteratorSpliterator;->est:J

    .local v2, "s":J
    goto :goto_1a

    .line 1775
    .end local v2    # "s":J
    :cond_18
    iget-wide v2, p0, Lj$/util/Spliterators$IteratorSpliterator;->est:J

    .line 1776
    .restart local v2    # "s":J
    :goto_1a
    const-wide/16 v4, 0x1

    cmp-long v0, v2, v4

    if-lez v0, :cond_65

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 1777
    iget v0, p0, Lj$/util/Spliterators$IteratorSpliterator;->batch:I

    add-int/lit16 v0, v0, 0x400

    .line 1778
    .local v0, "n":I
    int-to-long v4, v0

    cmp-long v6, v4, v2

    if-lez v6, :cond_30

    .line 1779
    long-to-int v0, v2

    .line 1780
    :cond_30
    const/high16 v4, 0x2000000

    if-le v0, v4, :cond_36

    .line 1781
    const/high16 v0, 0x2000000

    .line 1782
    :cond_36
    new-array v4, v0, [Ljava/lang/Object;

    .line 1783
    .local v4, "a":[Ljava/lang/Object;
    const/4 v5, 0x0

    .line 1784
    .local v5, "j":I
    :cond_39
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    if-ge v5, v0, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_39

    .line 1785
    :cond_49
    iput v5, p0, Lj$/util/Spliterators$IteratorSpliterator;->batch:I

    .line 1786
    iget-wide v6, p0, Lj$/util/Spliterators$IteratorSpliterator;->est:J

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v10, v6, v8

    if-eqz v10, :cond_5c

    .line 1787
    iget-wide v6, p0, Lj$/util/Spliterators$IteratorSpliterator;->est:J

    int-to-long v8, v5

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lj$/util/Spliterators$IteratorSpliterator;->est:J

    .line 1788
    :cond_5c
    new-instance v6, Lj$/util/Spliterators$ArraySpliterator;

    const/4 v7, 0x0

    iget v8, p0, Lj$/util/Spliterators$IteratorSpliterator;->characteristics:I

    invoke-direct {v6, v4, v7, v5, v8}, Lj$/util/Spliterators$ArraySpliterator;-><init>([Ljava/lang/Object;III)V

    return-object v6

    .line 1790
    .end local v0    # "n":I
    .end local v4    # "a":[Ljava/lang/Object;
    .end local v5    # "j":I
    :cond_65
    const/4 v0, 0x0

    return-object v0
.end method
