.class Lj$/util/ImmutableCollections;
.super Ljava/lang/Object;
.source "ImmutableCollections.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/util/ImmutableCollections$MapN;,
        Lj$/util/ImmutableCollections$Map1;,
        Lj$/util/ImmutableCollections$AbstractImmutableMap;,
        Lj$/util/ImmutableCollections$SetN;,
        Lj$/util/ImmutableCollections$Set12;,
        Lj$/util/ImmutableCollections$AbstractImmutableSet;,
        Lj$/util/ImmutableCollections$ListN;,
        Lj$/util/ImmutableCollections$List12;,
        Lj$/util/ImmutableCollections$SubList;,
        Lj$/util/ImmutableCollections$ListItr;,
        Lj$/util/ImmutableCollections$AbstractImmutableList;,
        Lj$/util/ImmutableCollections$AbstractImmutableCollection;
    }
.end annotation


# static fields
.field static final EXPAND_FACTOR:I = 0x2

.field static final SALT:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 57
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 58
    .local v0, "nt":J
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v2, v0

    long-to-int v3, v2

    sput v3, Lj$/util/ImmutableCollections;->SALT:I

    .line 59
    .end local v0    # "nt":J
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static emptyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 97
    sget-object v0, Lj$/util/ImmutableCollections$ListN;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method static emptyMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 722
    sget-object v0, Lj$/util/ImmutableCollections$MapN;->EMPTY_MAP:Ljava/util/Map;

    return-object v0
.end method

.method static emptySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 491
    sget-object v0, Lj$/util/ImmutableCollections$SetN;->EMPTY_SET:Ljava/util/Set;

    return-object v0
.end method

.method static listCopy(Ljava/util/Collection;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TE;>;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 88
    .local p0, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    instance-of v0, p0, Lj$/util/ImmutableCollections$AbstractImmutableList;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lj$/util/ImmutableCollections$SubList;

    if-eq v0, v1, :cond_0

    .line 89
    move-object v0, p0

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 91
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lj$/time/Duration$DurationUnits$$ExternalSyntheticBackport0;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static uoe()Ljava/lang/UnsupportedOperationException;
    .locals 1

    .line 70
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    return-object v0
.end method
