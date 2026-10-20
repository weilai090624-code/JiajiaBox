.class Lj$/util/ImmutableCollections$MapN$MapNIterator;
.super Ljava/lang/Object;
.source "ImmutableCollections.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/ImmutableCollections$MapN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MapNIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private idx:I

.field private remaining:I

.field final synthetic this$0:Lj$/util/ImmutableCollections$MapN;


# direct methods
.method constructor <init>(Lj$/util/ImmutableCollections$MapN;)V
    .locals 2
    .param p1, "this$0"    # Lj$/util/ImmutableCollections$MapN;

    .line 896
    .local p0, "this":Lj$/util/ImmutableCollections$MapN$MapNIterator;, "Ljava/util/ImmutableCollections$MapN<TK;TV;>.MapNIterator;"
    iput-object p1, p0, Lj$/util/ImmutableCollections$MapN$MapNIterator;->this$0:Lj$/util/ImmutableCollections$MapN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 897
    invoke-virtual {p1}, Lj$/util/ImmutableCollections$MapN;->size()I

    move-result v0

    iput v0, p0, Lj$/util/ImmutableCollections$MapN$MapNIterator;->remaining:I

    .line 898
    iget v0, p0, Lj$/util/ImmutableCollections$MapN$MapNIterator;->remaining:I

    if-lez v0, :cond_0

    .line 899
    sget v0, Lj$/util/ImmutableCollections;->SALT:I

    iget-object v1, p1, Lj$/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    array-length v1, v1

    shr-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lj$/time/temporal/WeekFields$ComputedDayOfField$$ExternalSyntheticBackport0;->m(II)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    iput v0, p0, Lj$/util/ImmutableCollections$MapN$MapNIterator;->idx:I

    .line 901
    :cond_0
    return-void
.end method

.method private nextIndex()I
    .locals 2

    .line 909
    .local p0, "this":Lj$/util/ImmutableCollections$MapN$MapNIterator;, "Ljava/util/ImmutableCollections$MapN<TK;TV;>.MapNIterator;"
    iget v0, p0, Lj$/util/ImmutableCollections$MapN$MapNIterator;->idx:I

    .line 910
    .local v0, "idx":I
    sget v1, Lj$/util/ImmutableCollections;->SALT:I

    if-ltz v1, :cond_0

    .line 911
    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lj$/util/ImmutableCollections$MapN$MapNIterator;->this$0:Lj$/util/ImmutableCollections$MapN;

    iget-object v1, v1, Lj$/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 912
    const/4 v0, 0x0

    goto :goto_0

    .line 915
    :cond_0
    add-int/lit8 v0, v0, -0x2

    if-gez v0, :cond_1

    .line 916
    iget-object v1, p0, Lj$/util/ImmutableCollections$MapN$MapNIterator;->this$0:Lj$/util/ImmutableCollections$MapN;

    iget-object v1, v1, Lj$/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x2

    .line 919
    :cond_1
    :goto_0
    iput v0, p0, Lj$/util/ImmutableCollections$MapN$MapNIterator;->idx:I

    return v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 905
    .local p0, "this":Lj$/util/ImmutableCollections$MapN$MapNIterator;, "Ljava/util/ImmutableCollections$MapN<TK;TV;>.MapNIterator;"
    iget v0, p0, Lj$/util/ImmutableCollections$MapN$MapNIterator;->remaining:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 890
    .local p0, "this":Lj$/util/ImmutableCollections$MapN$MapNIterator;, "Ljava/util/ImmutableCollections$MapN<TK;TV;>.MapNIterator;"
    invoke-virtual {p0}, Lj$/util/ImmutableCollections$MapN$MapNIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 924
    .local p0, "this":Lj$/util/ImmutableCollections$MapN$MapNIterator;, "Ljava/util/ImmutableCollections$MapN<TK;TV;>.MapNIterator;"
    invoke-virtual {p0}, Lj$/util/ImmutableCollections$MapN$MapNIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 925
    :goto_0
    iget-object v0, p0, Lj$/util/ImmutableCollections$MapN$MapNIterator;->this$0:Lj$/util/ImmutableCollections$MapN;

    iget-object v0, v0, Lj$/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    invoke-direct {p0}, Lj$/util/ImmutableCollections$MapN$MapNIterator;->nextIndex()I

    move-result v1

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    .line 927
    :cond_0
    new-instance v0, Lj$/util/KeyValueHolder;

    iget-object v1, p0, Lj$/util/ImmutableCollections$MapN$MapNIterator;->this$0:Lj$/util/ImmutableCollections$MapN;

    iget-object v1, v1, Lj$/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    iget v2, p0, Lj$/util/ImmutableCollections$MapN$MapNIterator;->idx:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lj$/util/ImmutableCollections$MapN$MapNIterator;->this$0:Lj$/util/ImmutableCollections$MapN;

    iget-object v2, v2, Lj$/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    iget v3, p0, Lj$/util/ImmutableCollections$MapN$MapNIterator;->idx:I

    add-int/lit8 v3, v3, 0x1

    aget-object v2, v2, v3

    invoke-direct {v0, v1, v2}, Lj$/util/KeyValueHolder;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 929
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    iget v1, p0, Lj$/util/ImmutableCollections$MapN$MapNIterator;->remaining:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lj$/util/ImmutableCollections$MapN$MapNIterator;->remaining:I

    .line 930
    return-object v0

    .line 932
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
