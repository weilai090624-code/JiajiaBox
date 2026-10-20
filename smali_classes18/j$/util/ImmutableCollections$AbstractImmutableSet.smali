.class abstract Lj$/util/ImmutableCollections$AbstractImmutableSet;
.super Lj$/util/ImmutableCollections$AbstractImmutableCollection;
.source "ImmutableCollections.java"

# interfaces
.implements Ljava/util/Set;
.implements Lj$/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/ImmutableCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractImmutableSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/ImmutableCollections$AbstractImmutableCollection<",
        "TE;>;",
        "Ljava/util/Set<",
        "TE;>;",
        "Lj$/util/Set<",
        "TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 462
    .local p0, "this":Lj$/util/ImmutableCollections$AbstractImmutableSet;, "Ljava/util/ImmutableCollections$AbstractImmutableSet<TE;>;"
    invoke-direct {p0}, Lj$/util/ImmutableCollections$AbstractImmutableCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 467
    .local p0, "this":Lj$/util/ImmutableCollections$AbstractImmutableSet;, "Ljava/util/ImmutableCollections$AbstractImmutableSet<TE;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 468
    return v0

    .line 469
    :cond_0
    instance-of v1, p1, Ljava/util/Set;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 470
    return v2

    .line 473
    :cond_1
    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    .line 474
    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-virtual {p0}, Lj$/util/ImmutableCollections$AbstractImmutableSet;->size()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 475
    return v2

    .line 477
    :cond_2
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 478
    .local v4, "e":Ljava/lang/Object;
    if-eqz v4, :cond_4

    invoke-virtual {p0, v4}, Lj$/util/ImmutableCollections$AbstractImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    .line 481
    .end local v4    # "e":Ljava/lang/Object;
    :cond_3
    goto :goto_0

    .line 479
    .restart local v4    # "e":Ljava/lang/Object;
    :cond_4
    :goto_1
    return v2

    .line 482
    .end local v4    # "e":Ljava/lang/Object;
    :cond_5
    return v0
.end method

.method public abstract hashCode()I
.end method

.method public synthetic spliterator()Lj$/util/Spliterator;
    .locals 1

    invoke-static {p0}, Lj$/util/Set$-CC;->$default$spliterator(Ljava/util/Set;)Lj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
