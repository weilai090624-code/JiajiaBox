.class final Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;
.super Lcom/google/common/collect/AbstractNavigableMap;
.source "TreeRangeSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeRangeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SubRangeSetRangesByLowerBound"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable<",
        "*>;>",
        "Lcom/google/common/collect/AbstractNavigableMap<",
        "Lcom/google/common/collect/Cut<",
        "TC;>;",
        "Lcom/google/common/collect/Range<",
        "TC;>;>;"
    }
.end annotation


# instance fields
.field private final lowerBoundWindow:Lcom/google/common/collect/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Range<",
            "Lcom/google/common/collect/Cut<",
            "TC;>;>;"
        }
    .end annotation
.end field

.field private final rangesByLowerBound:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap<",
            "Lcom/google/common/collect/Cut<",
            "TC;>;",
            "Lcom/google/common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation
.end field

.field private final rangesByUpperBound:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap<",
            "Lcom/google/common/collect/Cut<",
            "TC;>;",
            "Lcom/google/common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation
.end field

.field private final restriction:Lcom/google/common/collect/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Range<",
            "TC;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/collect/Range;Lcom/google/common/collect/Range;Ljava/util/NavigableMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range<",
            "Lcom/google/common/collect/Cut<",
            "TC;>;>;",
            "Lcom/google/common/collect/Range<",
            "TC;>;",
            "Ljava/util/NavigableMap<",
            "Lcom/google/common/collect/Cut<",
            "TC;>;",
            "Lcom/google/common/collect/Range<",
            "TC;>;>;)V"
        }
    .end annotation

    .line 707
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;, "Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound<TC;>;"
    .local p1, "lowerBoundWindow":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<Lcom/google/common/collect/Cut<TC;>;>;"
    .local p2, "restriction":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    .local p3, "rangesByLowerBound":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Lcom/google/common/collect/Cut<TC;>;Lcom/google/common/collect/Range<TC;>;>;"
    invoke-direct {p0}, Lcom/google/common/collect/AbstractNavigableMap;-><init>()V

    .line 708
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    iput-object v0, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->lowerBoundWindow:Lcom/google/common/collect/Range;

    .line 709
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    iput-object v0, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->restriction:Lcom/google/common/collect/Range;

    .line 710
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableMap;

    iput-object v0, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->rangesByLowerBound:Ljava/util/NavigableMap;

    .line 711
    new-instance v0, Lcom/google/common/collect/TreeRangeSet$RangesByUpperBound;

    invoke-direct {v0, p3}, Lcom/google/common/collect/TreeRangeSet$RangesByUpperBound;-><init>(Ljava/util/NavigableMap;)V

    iput-object v0, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->rangesByUpperBound:Ljava/util/NavigableMap;

    .line 712
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/Range;Lcom/google/common/collect/Range;Ljava/util/NavigableMap;Lcom/google/common/collect/TreeRangeSet$1;)V
    .registers 5
    .param p1, "x0"    # Lcom/google/common/collect/Range;
    .param p2, "x1"    # Lcom/google/common/collect/Range;
    .param p3, "x2"    # Ljava/util/NavigableMap;
    .param p4, "x3"    # Lcom/google/common/collect/TreeRangeSet$1;

    .line 687
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;, "Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound<TC;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;-><init>(Lcom/google/common/collect/Range;Lcom/google/common/collect/Range;Ljava/util/NavigableMap;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;)Lcom/google/common/collect/Range;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;

    .line 687
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->restriction:Lcom/google/common/collect/Range;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;)Lcom/google/common/collect/Range;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;

    .line 687
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->lowerBoundWindow:Lcom/google/common/collect/Range;

    return-object v0
.end method

.method private subMap(Lcom/google/common/collect/Range;)Ljava/util/NavigableMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range<",
            "Lcom/google/common/collect/Cut<",
            "TC;>;>;)",
            "Ljava/util/NavigableMap<",
            "Lcom/google/common/collect/Cut<",
            "TC;>;",
            "Lcom/google/common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation

    .line 715
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;, "Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound<TC;>;"
    .local p1, "window":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<Lcom/google/common/collect/Cut<TC;>;>;"
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->lowerBoundWindow:Lcom/google/common/collect/Range;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/Range;->isConnected(Lcom/google/common/collect/Range;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 716
    invoke-static {}, Lcom/google/common/collect/ImmutableSortedMap;->of()Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0

    .line 718
    :cond_d
    new-instance v0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;

    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->lowerBoundWindow:Lcom/google/common/collect/Range;

    .line 719
    invoke-virtual {v1, p1}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->restriction:Lcom/google/common/collect/Range;

    iget-object v3, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->rangesByLowerBound:Ljava/util/NavigableMap;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;-><init>(Lcom/google/common/collect/Range;Lcom/google/common/collect/Range;Ljava/util/NavigableMap;)V

    .line 718
    return-object v0
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-",
            "Lcom/google/common/collect/Cut<",
            "TC;>;>;"
        }
    .end annotation

    .line 746
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;, "Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound<TC;>;"
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 751
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;, "Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound<TC;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->get(Ljava/lang/Object;)Lcom/google/common/collect/Range;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method descendingEntryIterator()Ljava/util/Iterator;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Lcom/google/common/collect/Cut<",
            "TC;>;",
            "Lcom/google/common/collect/Range<",
            "TC;>;>;>;"
        }
    .end annotation

    .line 829
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;, "Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound<TC;>;"
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->restriction:Lcom/google/common/collect/Range;

    invoke-virtual {v0}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 830
    invoke-static {}, Lcom/google/common/collect/Iterators;->emptyIterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0

    .line 833
    :cond_d
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->lowerBoundWindow:Lcom/google/common/collect/Range;

    iget-object v1, v1, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    iget-object v2, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->restriction:Lcom/google/common/collect/Range;

    iget-object v2, v2, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    .line 834
    invoke-static {v2}, Lcom/google/common/collect/Cut;->belowValue(Ljava/lang/Comparable;)Lcom/google/common/collect/Cut;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/Ordering;->min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Cut;

    .line 835
    .local v0, "upperBoundOnLowerBounds":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<Lcom/google/common/collect/Cut<TC;>;>;"
    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->rangesByLowerBound:Ljava/util/NavigableMap;

    .line 838
    invoke-virtual {v0}, Lcom/google/common/collect/Cut;->endpoint()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/Cut;

    .line 839
    invoke-virtual {v0}, Lcom/google/common/collect/Cut;->typeAsUpperBound()Lcom/google/common/collect/BoundType;

    move-result-object v3

    sget-object v4, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    if-ne v3, v4, :cond_35

    const/4 v3, 0x1

    goto :goto_36

    :cond_35
    const/4 v3, 0x0

    .line 837
    :goto_36
    invoke-interface {v1, v2, v3}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v1

    .line 840
    invoke-interface {v1}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v1

    .line 841
    invoke-interface {v1}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 842
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 843
    .local v1, "completeRangeItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/common/collect/Range<TC;>;>;"
    new-instance v2, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound$2;

    invoke-direct {v2, p0, v1}, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound$2;-><init>(Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;Ljava/util/Iterator;)V

    return-object v2
.end method

.method entryIterator()Ljava/util/Iterator;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Lcom/google/common/collect/Cut<",
            "TC;>;",
            "Lcom/google/common/collect/Range<",
            "TC;>;>;>;"
        }
    .end annotation

    .line 786
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;, "Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound<TC;>;"
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->restriction:Lcom/google/common/collect/Range;

    invoke-virtual {v0}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 787
    invoke-static {}, Lcom/google/common/collect/Iterators;->emptyIterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0

    .line 790
    :cond_d
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->lowerBoundWindow:Lcom/google/common/collect/Range;

    iget-object v0, v0, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->restriction:Lcom/google/common/collect/Range;

    iget-object v1, v1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/Cut;->isLessThan(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 791
    invoke-static {}, Lcom/google/common/collect/Iterators;->emptyIterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0

    .line 792
    :cond_20
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->lowerBoundWindow:Lcom/google/common/collect/Range;

    iget-object v0, v0, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->restriction:Lcom/google/common/collect/Range;

    iget-object v1, v1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/Cut;->isLessThan(Ljava/lang/Comparable;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_42

    .line 794
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->rangesByUpperBound:Ljava/util/NavigableMap;

    iget-object v2, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->restriction:Lcom/google/common/collect/Range;

    iget-object v2, v2, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    .line 795
    invoke-interface {v0, v2, v1}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "completeRangeItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/common/collect/Range<TC;>;>;"
    goto :goto_65

    .line 798
    .end local v0    # "completeRangeItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/common/collect/Range<TC;>;>;"
    :cond_42
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->rangesByLowerBound:Ljava/util/NavigableMap;

    iget-object v2, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->lowerBoundWindow:Lcom/google/common/collect/Range;

    iget-object v2, v2, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    .line 801
    invoke-virtual {v2}, Lcom/google/common/collect/Cut;->endpoint()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/Cut;

    iget-object v3, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->lowerBoundWindow:Lcom/google/common/collect/Range;

    .line 802
    invoke-virtual {v3}, Lcom/google/common/collect/Range;->lowerBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v3

    sget-object v4, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    if-ne v3, v4, :cond_59

    const/4 v1, 0x1

    .line 800
    :cond_59
    invoke-interface {v0, v2, v1}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    .line 803
    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 804
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 807
    .restart local v0    # "completeRangeItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/common/collect/Range<TC;>;>;"
    :goto_65
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->lowerBoundWindow:Lcom/google/common/collect/Range;

    iget-object v2, v2, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    iget-object v3, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->restriction:Lcom/google/common/collect/Range;

    iget-object v3, v3, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    .line 808
    invoke-static {v3}, Lcom/google/common/collect/Cut;->belowValue(Ljava/lang/Comparable;)Lcom/google/common/collect/Cut;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/Ordering;->min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Cut;

    .line 809
    .local v1, "upperBoundOnLowerBounds":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<Lcom/google/common/collect/Cut<TC;>;>;"
    new-instance v2, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound$1;-><init>(Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;Ljava/util/Iterator;Lcom/google/common/collect/Cut;)V

    return-object v2
.end method

.method public get(Ljava/lang/Object;)Lcom/google/common/collect/Range;
    .registers 7
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/collect/Range<",
            "TC;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 757
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;, "Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound<TC;>;"
    instance-of v0, p1, Lcom/google/common/collect/Cut;

    const/4 v1, 0x0

    if-eqz v0, :cond_66

    .line 760
    :try_start_5
    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/Cut;

    .line 761
    .local v0, "cut":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    iget-object v2, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->lowerBoundWindow:Lcom/google/common/collect/Range;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v2

    if-eqz v2, :cond_63

    iget-object v2, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->restriction:Lcom/google/common/collect/Range;

    iget-object v2, v2, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    .line 762
    invoke-virtual {v0, v2}, Lcom/google/common/collect/Cut;->compareTo(Lcom/google/common/collect/Cut;)I

    move-result v2

    if-ltz v2, :cond_63

    iget-object v2, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->restriction:Lcom/google/common/collect/Range;

    iget-object v2, v2, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    .line 763
    invoke-virtual {v0, v2}, Lcom/google/common/collect/Cut;->compareTo(Lcom/google/common/collect/Cut;)I

    move-result v2

    if-ltz v2, :cond_25

    goto :goto_63

    .line 765
    :cond_25
    iget-object v2, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->restriction:Lcom/google/common/collect/Range;

    iget-object v2, v2, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v0, v2}, Lcom/google/common/collect/Cut;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 767
    iget-object v2, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->rangesByLowerBound:Ljava/util/NavigableMap;

    invoke-interface {v2, v0}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/Maps;->valueOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/Range;

    .line 768
    .local v2, "candidate":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    if-eqz v2, :cond_50

    iget-object v3, v2, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    iget-object v4, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->restriction:Lcom/google/common/collect/Range;

    iget-object v4, v4, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v3, v4}, Lcom/google/common/collect/Cut;->compareTo(Lcom/google/common/collect/Cut;)I

    move-result v3

    if-lez v3, :cond_50

    .line 769
    iget-object v3, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->restriction:Lcom/google/common/collect/Range;

    invoke-virtual {v2, v3}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object v1

    return-object v1

    .line 771
    .end local v2    # "candidate":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    :cond_50
    goto :goto_62

    .line 772
    :cond_51
    iget-object v2, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->rangesByLowerBound:Ljava/util/NavigableMap;

    invoke-interface {v2, v0}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/Range;

    .line 773
    .local v2, "result":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    if-eqz v2, :cond_62

    .line 774
    iget-object v3, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->restriction:Lcom/google/common/collect/Range;

    invoke-virtual {v2, v3}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object v1
    :try_end_61
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_61} :catch_64

    return-object v1

    .line 779
    .end local v0    # "cut":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    .end local v2    # "result":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    :cond_62
    :goto_62
    goto :goto_66

    .line 764
    .restart local v0    # "cut":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    :cond_63
    :goto_63
    return-object v1

    .line 777
    .end local v0    # "cut":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    :catch_64
    move-exception v0

    .line 778
    .local v0, "e":Ljava/lang/ClassCastException;
    return-object v1

    .line 781
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :cond_66
    :goto_66
    return-object v1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 687
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;, "Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound<TC;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->get(Ljava/lang/Object;)Lcom/google/common/collect/Range;

    move-result-object p1

    return-object p1
.end method

.method public headMap(Lcom/google/common/collect/Cut;Z)Ljava/util/NavigableMap;
    .registers 4
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Cut<",
            "TC;>;Z)",
            "Ljava/util/NavigableMap<",
            "Lcom/google/common/collect/Cut<",
            "TC;>;",
            "Lcom/google/common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation

    .line 736
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;, "Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound<TC;>;"
    .local p1, "toKey":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    invoke-static {p2}, Lcom/google/common/collect/BoundType;->forBoolean(Z)Lcom/google/common/collect/BoundType;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/common/collect/Range;->upTo(Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->subMap(Lcom/google/common/collect/Range;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 3

    .line 687
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;, "Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound<TC;>;"
    check-cast p1, Lcom/google/common/collect/Cut;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->headMap(Lcom/google/common/collect/Cut;Z)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .registers 2

    .line 866
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;, "Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound<TC;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->size(Ljava/util/Iterator;)I

    move-result v0

    return v0
.end method

.method public subMap(Lcom/google/common/collect/Cut;ZLcom/google/common/collect/Cut;Z)Ljava/util/NavigableMap;
    .registers 7
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Cut<",
            "TC;>;Z",
            "Lcom/google/common/collect/Cut<",
            "TC;>;Z)",
            "Ljava/util/NavigableMap<",
            "Lcom/google/common/collect/Cut<",
            "TC;>;",
            "Lcom/google/common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation

    .line 726
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;, "Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound<TC;>;"
    .local p1, "fromKey":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    .local p3, "toKey":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    nop

    .line 729
    invoke-static {p2}, Lcom/google/common/collect/BoundType;->forBoolean(Z)Lcom/google/common/collect/BoundType;

    move-result-object v0

    .line 731
    invoke-static {p4}, Lcom/google/common/collect/BoundType;->forBoolean(Z)Lcom/google/common/collect/BoundType;

    move-result-object v1

    .line 727
    invoke-static {p1, v0, p3, v1}, Lcom/google/common/collect/Range;->range(Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/Range;

    move-result-object v0

    .line 726
    invoke-direct {p0, v0}, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->subMap(Lcom/google/common/collect/Range;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 5

    .line 687
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;, "Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound<TC;>;"
    check-cast p1, Lcom/google/common/collect/Cut;

    check-cast p3, Lcom/google/common/collect/Cut;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->subMap(Lcom/google/common/collect/Cut;ZLcom/google/common/collect/Cut;Z)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method

.method public tailMap(Lcom/google/common/collect/Cut;Z)Ljava/util/NavigableMap;
    .registers 4
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Cut<",
            "TC;>;Z)",
            "Ljava/util/NavigableMap<",
            "Lcom/google/common/collect/Cut<",
            "TC;>;",
            "Lcom/google/common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation

    .line 741
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;, "Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound<TC;>;"
    .local p1, "fromKey":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    invoke-static {p2}, Lcom/google/common/collect/BoundType;->forBoolean(Z)Lcom/google/common/collect/BoundType;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/common/collect/Range;->downTo(Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->subMap(Lcom/google/common/collect/Range;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 3

    .line 687
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;, "Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound<TC;>;"
    check-cast p1, Lcom/google/common/collect/Cut;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->tailMap(Lcom/google/common/collect/Cut;Z)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method
