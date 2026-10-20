.class abstract Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;
.super Ljava/lang/Object;
.source "ObjectMap.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/util/ObjectMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "MapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "I:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TI;>;",
        "Ljava/util/Iterator<",
        "TI;>;"
    }
.end annotation


# instance fields
.field currentIndex:I

.field public hasNext:Z

.field final map:Lcom/esotericsoftware/kryo/util/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/esotericsoftware/kryo/util/ObjectMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field nextIndex:I

.field valid:Z


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryo/util/ObjectMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/util/ObjectMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 460
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;, "Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator<TK;TV;TI;>;"
    .local p1, "map":Lcom/esotericsoftware/kryo/util/ObjectMap;, "Lcom/esotericsoftware/kryo/util/ObjectMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 458
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->valid:Z

    .line 461
    iput-object p1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->map:Lcom/esotericsoftware/kryo/util/ObjectMap;

    .line 462
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->reset()V

    .line 463
    return-void
.end method


# virtual methods
.method findNextIndex()V
    .locals 4

    .line 472
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;, "Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator<TK;TV;TI;>;"
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->map:Lcom/esotericsoftware/kryo/util/ObjectMap;

    iget-object v0, v0, Lcom/esotericsoftware/kryo/util/ObjectMap;->keyTable:[Ljava/lang/Object;

    .line 473
    .local v0, "keyTable":[Ljava/lang/Object;, "[TK;"
    array-length v1, v0

    .local v1, "n":I
    :cond_0
    iget v2, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->nextIndex:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->nextIndex:I

    if-ge v2, v1, :cond_1

    .line 474
    iget v2, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->nextIndex:I

    aget-object v2, v0, v2

    if-eqz v2, :cond_0

    .line 475
    iput-boolean v3, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->hasNext:Z

    .line 476
    return-void

    .line 479
    .end local v1    # "n":I
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->hasNext:Z

    .line 480
    return-void
.end method

.method public remove()V
    .locals 9

    .line 483
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;, "Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator<TK;TV;TI;>;"
    iget v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->currentIndex:I

    .line 484
    .local v0, "i":I
    if-ltz v0, :cond_3

    .line 485
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->map:Lcom/esotericsoftware/kryo/util/ObjectMap;

    iget-object v1, v1, Lcom/esotericsoftware/kryo/util/ObjectMap;->keyTable:[Ljava/lang/Object;

    .line 486
    .local v1, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->map:Lcom/esotericsoftware/kryo/util/ObjectMap;

    iget-object v2, v2, Lcom/esotericsoftware/kryo/util/ObjectMap;->valueTable:[Ljava/lang/Object;

    .line 487
    .local v2, "valueTable":[Ljava/lang/Object;, "[TV;"
    iget-object v3, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->map:Lcom/esotericsoftware/kryo/util/ObjectMap;

    iget v3, v3, Lcom/esotericsoftware/kryo/util/ObjectMap;->mask:I

    .local v3, "mask":I
    add-int/lit8 v4, v0, 0x1

    and-int/2addr v4, v3

    .line 489
    .local v4, "next":I
    :goto_0
    aget-object v5, v1, v4

    move-object v6, v5

    .local v6, "key":Ljava/lang/Object;, "TK;"
    if-eqz v5, :cond_1

    .line 490
    iget-object v5, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->map:Lcom/esotericsoftware/kryo/util/ObjectMap;

    invoke-virtual {v5, v6}, Lcom/esotericsoftware/kryo/util/ObjectMap;->place(Ljava/lang/Object;)I

    move-result v5

    .line 491
    .local v5, "placement":I
    sub-int v7, v4, v5

    and-int/2addr v7, v3

    sub-int v8, v0, v5

    and-int/2addr v8, v3

    if-le v7, v8, :cond_0

    .line 492
    aput-object v6, v1, v0

    .line 493
    aget-object v7, v2, v4

    aput-object v7, v2, v0

    .line 494
    move v0, v4

    .line 496
    :cond_0
    add-int/lit8 v7, v4, 0x1

    and-int v4, v7, v3

    .line 497
    .end local v5    # "placement":I
    goto :goto_0

    .line 498
    :cond_1
    const/4 v5, 0x0

    aput-object v5, v1, v0

    .line 499
    aput-object v5, v2, v0

    .line 500
    iget-object v5, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->map:Lcom/esotericsoftware/kryo/util/ObjectMap;

    iget v7, v5, Lcom/esotericsoftware/kryo/util/ObjectMap;->size:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v5, Lcom/esotericsoftware/kryo/util/ObjectMap;->size:I

    .line 501
    iget v5, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->currentIndex:I

    if-eq v0, v5, :cond_2

    iget v5, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->nextIndex:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->nextIndex:I

    .line 502
    :cond_2
    const/4 v5, -0x1

    iput v5, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->currentIndex:I

    .line 503
    return-void

    .line 484
    .end local v1    # "keyTable":[Ljava/lang/Object;, "[TK;"
    .end local v2    # "valueTable":[Ljava/lang/Object;, "[TV;"
    .end local v3    # "mask":I
    .end local v4    # "next":I
    .end local v6    # "key":Ljava/lang/Object;, "TK;"
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "next must be called before remove."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public reset()V
    .locals 1

    .line 466
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;, "Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator<TK;TV;TI;>;"
    const/4 v0, -0x1

    iput v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->currentIndex:I

    .line 467
    iput v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->nextIndex:I

    .line 468
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->findNextIndex()V

    .line 469
    return-void
.end method
