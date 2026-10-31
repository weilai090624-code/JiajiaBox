.class final Lcom/google/common/collect/SortedIterables;
.super Ljava/lang/Object;
.source "SortedIterables.java"


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static comparator(Ljava/util/SortedSet;)Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet<",
            "TE;>;)",
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation

    .line 56
    .local p0, "sortedSet":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    invoke-interface {p0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    .line 57
    .local v0, "result":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    if-nez v0, :cond_a

    .line 58
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    .line 60
    :cond_a
    return-object v0
.end method

.method public static hasSameComparator(Ljava/util/Comparator;Ljava/lang/Iterable;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "*>;",
            "Ljava/lang/Iterable<",
            "*>;)Z"
        }
    .end annotation

    .line 39
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<*>;"
    .local p1, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    instance-of v0, p1, Ljava/util/SortedSet;

    if-eqz v0, :cond_12

    .line 43
    move-object v0, p1

    check-cast v0, Ljava/util/SortedSet;

    invoke-static {v0}, Lcom/google/common/collect/SortedIterables;->comparator(Ljava/util/SortedSet;)Ljava/util/Comparator;

    move-result-object v0

    .local v0, "comparator2":Ljava/util/Comparator;, "Ljava/util/Comparator<*>;"
    goto :goto_1d

    .line 44
    .end local v0    # "comparator2":Ljava/util/Comparator;, "Ljava/util/Comparator<*>;"
    :cond_12
    instance-of v0, p1, Lcom/google/common/collect/SortedIterable;

    if-eqz v0, :cond_22

    .line 45
    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/SortedIterable;

    invoke-interface {v0}, Lcom/google/common/collect/SortedIterable;->comparator()Ljava/util/Comparator;

    move-result-object v0

    .line 49
    .restart local v0    # "comparator2":Ljava/util/Comparator;, "Ljava/util/Comparator<*>;"
    :goto_1d
    invoke-interface {p0, v0}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 47
    .end local v0    # "comparator2":Ljava/util/Comparator;, "Ljava/util/Comparator<*>;"
    :cond_22
    const/4 v0, 0x0

    return v0
.end method
