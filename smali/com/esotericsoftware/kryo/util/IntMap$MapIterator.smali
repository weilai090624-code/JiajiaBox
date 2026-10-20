.class Lcom/esotericsoftware/kryo/util/IntMap$MapIterator;
.super Ljava/lang/Object;
.source "IntMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/util/IntMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final INDEX_ILLEGAL:I = -0x2

.field static final INDEX_ZERO:I = -0x1


# instance fields
.field currentIndex:I

.field public hasNext:Z

.field final map:Lcom/esotericsoftware/kryo/util/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/esotericsoftware/kryo/util/IntMap<",
            "TV;>;"
        }
    .end annotation
.end field

.field nextIndex:I

.field valid:Z


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryo/util/IntMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/util/IntMap<",
            "TV;>;)V"
        }
    .end annotation

    .line 483
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IntMap$MapIterator;, "Lcom/esotericsoftware/kryo/util/IntMap$MapIterator<TV;>;"
    .local p1, "map":Lcom/esotericsoftware/kryo/util/IntMap;, "Lcom/esotericsoftware/kryo/util/IntMap<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 481
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/util/IntMap$MapIterator;->valid:Z

    .line 484
    iput-object p1, p0, Lcom/esotericsoftware/kryo/util/IntMap$MapIterator;->map:Lcom/esotericsoftware/kryo/util/IntMap;

    .line 485
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/IntMap$MapIterator;->reset()V

    .line 486
    return-void
.end method


# virtual methods
.method findNextIndex()V
    .locals 4

    .line 498
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IntMap$MapIterator;, "Lcom/esotericsoftware/kryo/util/IntMap$MapIterator<TV;>;"
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/IntMap$MapIterator;->map:Lcom/esotericsoftware/kryo/util/IntMap;

    iget-object v0, v0, Lcom/esotericsoftware/kryo/util/IntMap;->keyTable:[I

    .line 499
    .local v0, "keyTable":[I
    array-length v1, v0

    .local v1, "n":I
    :cond_0
    iget v2, p0, Lcom/esotericsoftware/kryo/util/IntMap$MapIterator;->nextIndex:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/esotericsoftware/kryo/util/IntMap$MapIterator;->nextIndex:I

    if-ge v2, v1, :cond_1

    .line 500
    iget v2, p0, Lcom/esotericsoftware/kryo/util/IntMap$MapIterator;->nextIndex:I

    aget v2, v0, v2

    if-eqz v2, :cond_0

    .line 501
    iput-boolean v3, p0, Lcom/esotericsoftware/kryo/util/IntMap$MapIterator;->hasNext:Z

    .line 502
    return-void

    .line 505
    .end local v1    # "n":I
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/esotericsoftware/kryo/util/IntMap$MapIterator;->hasNext:Z

    .line 506
    return-void
.end method

.method public remove()V
    .locals 10

    .line 509
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IntMap$MapIterator;, "Lcom/esotericsoftware/kryo/util/IntMap$MapIterator<TV;>;"
    iget v0, p0, Lcom/esotericsoftware/kryo/util/IntMap$MapIterator;->currentIndex:I

    .line 510
    .local v0, "i":I
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/IntMap$MapIterator;->map:Lcom/esotericsoftware/kryo/util/IntMap;

    iget-boolean v1, v1, Lcom/esotericsoftware/kryo/util/IntMap;->hasZeroValue:Z

    if-eqz v1, :cond_0

    .line 511
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/IntMap$MapIterator;->map:Lcom/esotericsoftware/kryo/util/IntMap;

    iput-boolean v2, v1, Lcom/esotericsoftware/kryo/util/IntMap;->hasZeroValue:Z

    goto :goto_1

    .line 512
    :cond_0
    if-ltz v0, :cond_4

    .line 515
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/IntMap$MapIterator;->map:Lcom/esotericsoftware/kryo/util/IntMap;

    iget-object v1, v1, Lcom/esotericsoftware/kryo/util/IntMap;->keyTable:[I

    .line 516
    .local v1, "keyTable":[I
    iget-object v3, p0, Lcom/esotericsoftware/kryo/util/IntMap$MapIterator;->map:Lcom/esotericsoftware/kryo/util/IntMap;

    iget-object v3, v3, Lcom/esotericsoftware/kryo/util/IntMap;->valueTable:[Ljava/lang/Object;

    .line 517
    .local v3, "valueTable":[Ljava/lang/Object;, "[TV;"
    iget-object v4, p0, Lcom/esotericsoftware/kryo/util/IntMap$MapIterator;->map:Lcom/esotericsoftware/kryo/util/IntMap;

    iget v4, v4, Lcom/esotericsoftware/kryo/util/IntMap;->mask:I

    .local v4, "mask":I
    add-int/lit8 v5, v0, 0x1

    and-int/2addr v5, v4

    .line 518
    .local v5, "next":I
    :goto_0
    aget v6, v1, v5

    move v7, v6

    .local v7, "key":I
    if-eqz v6, :cond_2

    .line 519
    iget-object v6, p0, Lcom/esotericsoftware/kryo/util/IntMap$MapIterator;->map:Lcom/esotericsoftware/kryo/util/IntMap;

    invoke-virtual {v6, v7}, Lcom/esotericsoftware/kryo/util/IntMap;->place(I)I

    move-result v6

    .line 520
    .local v6, "placement":I
    sub-int v8, v5, v6

    and-int/2addr v8, v4

    sub-int v9, v0, v6

    and-int/2addr v9, v4

    if-le v8, v9, :cond_1

    .line 521
    aput v7, v1, v0

    .line 522
    aget-object v8, v3, v5

    aput-object v8, v3, v0

    .line 523
    move v0, v5

    .line 525
    :cond_1
    add-int/lit8 v8, v5, 0x1

    and-int v5, v8, v4

    .line 526
    .end local v6    # "placement":I
    goto :goto_0

    .line 527
    :cond_2
    aput v2, v1, v0

    .line 528
    iget v2, p0, Lcom/esotericsoftware/kryo/util/IntMap$MapIterator;->currentIndex:I

    if-eq v0, v2, :cond_3

    iget v2, p0, Lcom/esotericsoftware/kryo/util/IntMap$MapIterator;->nextIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/util/IntMap$MapIterator;->nextIndex:I

    .line 530
    .end local v1    # "keyTable":[I
    .end local v3    # "valueTable":[Ljava/lang/Object;, "[TV;"
    .end local v4    # "mask":I
    .end local v5    # "next":I
    .end local v7    # "key":I
    :cond_3
    :goto_1
    const/4 v1, -0x2

    iput v1, p0, Lcom/esotericsoftware/kryo/util/IntMap$MapIterator;->currentIndex:I

    .line 531
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/IntMap$MapIterator;->map:Lcom/esotericsoftware/kryo/util/IntMap;

    iget v2, v1, Lcom/esotericsoftware/kryo/util/IntMap;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/esotericsoftware/kryo/util/IntMap;->size:I

    .line 532
    return-void

    .line 513
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "next must be called before remove."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public reset()V
    .locals 1

    .line 489
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IntMap$MapIterator;, "Lcom/esotericsoftware/kryo/util/IntMap$MapIterator<TV;>;"
    const/4 v0, -0x2

    iput v0, p0, Lcom/esotericsoftware/kryo/util/IntMap$MapIterator;->currentIndex:I

    .line 490
    const/4 v0, -0x1

    iput v0, p0, Lcom/esotericsoftware/kryo/util/IntMap$MapIterator;->nextIndex:I

    .line 491
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/IntMap$MapIterator;->map:Lcom/esotericsoftware/kryo/util/IntMap;

    iget-boolean v0, v0, Lcom/esotericsoftware/kryo/util/IntMap;->hasZeroValue:Z

    if-eqz v0, :cond_0

    .line 492
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/util/IntMap$MapIterator;->hasNext:Z

    goto :goto_0

    .line 494
    :cond_0
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/IntMap$MapIterator;->findNextIndex()V

    .line 495
    :goto_0
    return-void
.end method
