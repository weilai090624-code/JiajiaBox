.class Lcom/google/common/primitives/ImmutableLongArray$AsList;
.super Ljava/util/AbstractList;
.source "ImmutableLongArray.java"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/ImmutableLongArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AsList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/Long;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final parent:Lcom/google/common/primitives/ImmutableLongArray;


# direct methods
.method private constructor <init>(Lcom/google/common/primitives/ImmutableLongArray;)V
    .registers 2
    .param p1, "parent"    # Lcom/google/common/primitives/ImmutableLongArray;

    .line 421
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 422
    iput-object p1, p0, Lcom/google/common/primitives/ImmutableLongArray$AsList;->parent:Lcom/google/common/primitives/ImmutableLongArray;

    .line 423
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/primitives/ImmutableLongArray;Lcom/google/common/primitives/ImmutableLongArray$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/common/primitives/ImmutableLongArray;
    .param p2, "x1"    # Lcom/google/common/primitives/ImmutableLongArray$1;

    .line 418
    invoke-direct {p0, p1}, Lcom/google/common/primitives/ImmutableLongArray$AsList;-><init>(Lcom/google/common/primitives/ImmutableLongArray;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "target"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 439
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/ImmutableLongArray$AsList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 13
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 459
    instance-of v0, p1, Lcom/google/common/primitives/ImmutableLongArray$AsList;

    if-eqz v0, :cond_10

    .line 460
    move-object v0, p1

    check-cast v0, Lcom/google/common/primitives/ImmutableLongArray$AsList;

    .line 461
    .local v0, "that":Lcom/google/common/primitives/ImmutableLongArray$AsList;
    iget-object v1, p0, Lcom/google/common/primitives/ImmutableLongArray$AsList;->parent:Lcom/google/common/primitives/ImmutableLongArray;

    iget-object v2, v0, Lcom/google/common/primitives/ImmutableLongArray$AsList;->parent:Lcom/google/common/primitives/ImmutableLongArray;

    invoke-virtual {v1, v2}, Lcom/google/common/primitives/ImmutableLongArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 464
    .end local v0    # "that":Lcom/google/common/primitives/ImmutableLongArray$AsList;
    :cond_10
    instance-of v0, p1, Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_16

    .line 465
    return v1

    .line 467
    :cond_16
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    .line 468
    .local v0, "that":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableLongArray$AsList;->size()I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_24

    .line 469
    return v1

    .line 471
    :cond_24
    iget-object v2, p0, Lcom/google/common/primitives/ImmutableLongArray$AsList;->parent:Lcom/google/common/primitives/ImmutableLongArray;

    # getter for: Lcom/google/common/primitives/ImmutableLongArray;->start:I
    invoke-static {v2}, Lcom/google/common/primitives/ImmutableLongArray;->access$100(Lcom/google/common/primitives/ImmutableLongArray;)I

    move-result v2

    .line 473
    .local v2, "i":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_56

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 474
    .local v4, "element":Ljava/lang/Object;
    instance-of v5, v4, Ljava/lang/Long;

    if-eqz v5, :cond_55

    iget-object v5, p0, Lcom/google/common/primitives/ImmutableLongArray$AsList;->parent:Lcom/google/common/primitives/ImmutableLongArray;

    # getter for: Lcom/google/common/primitives/ImmutableLongArray;->array:[J
    invoke-static {v5}, Lcom/google/common/primitives/ImmutableLongArray;->access$000(Lcom/google/common/primitives/ImmutableLongArray;)[J

    move-result-object v5

    add-int/lit8 v6, v2, 0x1

    .end local v2    # "i":I
    .local v6, "i":I
    aget-wide v7, v5, v2

    move-object v2, v4

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v2, v7, v9

    if-eqz v2, :cond_53

    move v2, v6

    goto :goto_55

    .line 477
    .end local v4    # "element":Ljava/lang/Object;
    :cond_53
    move v2, v6

    goto :goto_2e

    .line 475
    .end local v6    # "i":I
    .restart local v2    # "i":I
    .restart local v4    # "element":Ljava/lang/Object;
    :cond_55
    :goto_55
    return v1

    .line 478
    .end local v4    # "element":Ljava/lang/Object;
    :cond_56
    const/4 v1, 0x1

    return v1
.end method

.method public get(I)Ljava/lang/Long;
    .registers 4
    .param p1, "index"    # I

    .line 434
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableLongArray$AsList;->parent:Lcom/google/common/primitives/ImmutableLongArray;

    invoke-virtual {v0, p1}, Lcom/google/common/primitives/ImmutableLongArray;->get(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 2

    .line 418
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/ImmutableLongArray$AsList;->get(I)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .registers 2

    .line 484
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableLongArray$AsList;->parent:Lcom/google/common/primitives/ImmutableLongArray;

    invoke-virtual {v0}, Lcom/google/common/primitives/ImmutableLongArray;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 5
    .param p1, "target"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 444
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/common/primitives/ImmutableLongArray$AsList;->parent:Lcom/google/common/primitives/ImmutableLongArray;

    move-object v1, p1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/common/primitives/ImmutableLongArray;->indexOf(J)I

    move-result v0

    goto :goto_13

    :cond_12
    const/4 v0, -0x1

    :goto_13
    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 5
    .param p1, "target"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 449
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/common/primitives/ImmutableLongArray$AsList;->parent:Lcom/google/common/primitives/ImmutableLongArray;

    move-object v1, p1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/common/primitives/ImmutableLongArray;->lastIndexOf(J)I

    move-result v0

    goto :goto_13

    :cond_12
    const/4 v0, -0x1

    :goto_13
    return v0
.end method

.method public size()I
    .registers 2

    .line 429
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableLongArray$AsList;->parent:Lcom/google/common/primitives/ImmutableLongArray;

    invoke-virtual {v0}, Lcom/google/common/primitives/ImmutableLongArray;->length()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .registers 4
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 454
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableLongArray$AsList;->parent:Lcom/google/common/primitives/ImmutableLongArray;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/primitives/ImmutableLongArray;->subArray(II)Lcom/google/common/primitives/ImmutableLongArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/primitives/ImmutableLongArray;->asList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 489
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableLongArray$AsList;->parent:Lcom/google/common/primitives/ImmutableLongArray;

    invoke-virtual {v0}, Lcom/google/common/primitives/ImmutableLongArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
