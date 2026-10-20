.class Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;
.super Ljava/lang/Object;
.source "ObjectIntMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/util/ObjectIntMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field currentIndex:I

.field public hasNext:Z

.field final map:Lcom/esotericsoftware/kryo/util/ObjectIntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/esotericsoftware/kryo/util/ObjectIntMap<",
            "TK;>;"
        }
    .end annotation
.end field

.field nextIndex:I

.field valid:Z


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryo/util/ObjectIntMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/util/ObjectIntMap<",
            "TK;>;)V"
        }
    .end annotation

    .line 406
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;, "Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator<TK;>;"
    .local p1, "map":Lcom/esotericsoftware/kryo/util/ObjectIntMap;, "Lcom/esotericsoftware/kryo/util/ObjectIntMap<TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;->valid:Z

    .line 407
    iput-object p1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;->map:Lcom/esotericsoftware/kryo/util/ObjectIntMap;

    .line 408
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;->reset()V

    .line 409
    return-void
.end method


# virtual methods
.method findNextIndex()V
    .locals 4

    .line 418
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;, "Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator<TK;>;"
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;->map:Lcom/esotericsoftware/kryo/util/ObjectIntMap;

    iget-object v0, v0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 419
    .local v0, "keyTable":[Ljava/lang/Object;, "[TK;"
    array-length v1, v0

    .local v1, "n":I
    :cond_0
    iget v2, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;->nextIndex:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;->nextIndex:I

    if-ge v2, v1, :cond_1

    .line 420
    iget v2, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;->nextIndex:I

    aget-object v2, v0, v2

    if-eqz v2, :cond_0

    .line 421
    iput-boolean v3, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;->hasNext:Z

    .line 422
    return-void

    .line 425
    .end local v1    # "n":I
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;->hasNext:Z

    .line 426
    return-void
.end method

.method public remove()V
    .locals 9

    .line 429
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;, "Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator<TK;>;"
    iget v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;->currentIndex:I

    .line 430
    .local v0, "i":I
    if-ltz v0, :cond_3

    .line 431
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;->map:Lcom/esotericsoftware/kryo/util/ObjectIntMap;

    iget-object v1, v1, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 432
    .local v1, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;->map:Lcom/esotericsoftware/kryo/util/ObjectIntMap;

    iget-object v2, v2, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->valueTable:[I

    .line 433
    .local v2, "valueTable":[I
    iget-object v3, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;->map:Lcom/esotericsoftware/kryo/util/ObjectIntMap;

    iget v3, v3, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->mask:I

    .local v3, "mask":I
    add-int/lit8 v4, v0, 0x1

    and-int/2addr v4, v3

    .line 435
    .local v4, "next":I
    :goto_0
    aget-object v5, v1, v4

    move-object v6, v5

    .local v6, "key":Ljava/lang/Object;, "TK;"
    if-eqz v5, :cond_1

    .line 436
    iget-object v5, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;->map:Lcom/esotericsoftware/kryo/util/ObjectIntMap;

    invoke-virtual {v5, v6}, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->place(Ljava/lang/Object;)I

    move-result v5

    .line 437
    .local v5, "placement":I
    sub-int v7, v4, v5

    and-int/2addr v7, v3

    sub-int v8, v0, v5

    and-int/2addr v8, v3

    if-le v7, v8, :cond_0

    .line 438
    aput-object v6, v1, v0

    .line 439
    aget v7, v2, v4

    aput v7, v2, v0

    .line 440
    move v0, v4

    .line 442
    :cond_0
    add-int/lit8 v7, v4, 0x1

    and-int v4, v7, v3

    .line 443
    .end local v5    # "placement":I
    goto :goto_0

    .line 444
    :cond_1
    const/4 v5, 0x0

    aput-object v5, v1, v0

    .line 445
    iget-object v5, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;->map:Lcom/esotericsoftware/kryo/util/ObjectIntMap;

    iget v7, v5, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->size:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v5, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->size:I

    .line 446
    iget v5, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;->currentIndex:I

    if-eq v0, v5, :cond_2

    iget v5, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;->nextIndex:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;->nextIndex:I

    .line 447
    :cond_2
    const/4 v5, -0x1

    iput v5, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;->currentIndex:I

    .line 448
    return-void

    .line 430
    .end local v1    # "keyTable":[Ljava/lang/Object;, "[TK;"
    .end local v2    # "valueTable":[I
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

    .line 412
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;, "Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator<TK;>;"
    const/4 v0, -0x1

    iput v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;->currentIndex:I

    .line 413
    iput v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;->nextIndex:I

    .line 414
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;->findNextIndex()V

    .line 415
    return-void
.end method
