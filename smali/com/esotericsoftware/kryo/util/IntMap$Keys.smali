.class public Lcom/esotericsoftware/kryo/util/IntMap$Keys;
.super Lcom/esotericsoftware/kryo/util/IntMap$MapIterator;
.source "IntMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/util/IntMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Keys"
.end annotation


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryo/util/IntMap;)V
    .locals 0
    .param p1, "map"    # Lcom/esotericsoftware/kryo/util/IntMap;

    .line 606
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/util/IntMap$MapIterator;-><init>(Lcom/esotericsoftware/kryo/util/IntMap;)V

    .line 607
    return-void
.end method


# virtual methods
.method public next()I
    .locals 2

    .line 610
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/util/IntMap$Keys;->hasNext:Z

    if-eqz v0, :cond_1

    .line 611
    iget v0, p0, Lcom/esotericsoftware/kryo/util/IntMap$Keys;->nextIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/IntMap$Keys;->map:Lcom/esotericsoftware/kryo/util/IntMap;

    iget-object v0, v0, Lcom/esotericsoftware/kryo/util/IntMap;->keyTable:[I

    iget v1, p0, Lcom/esotericsoftware/kryo/util/IntMap$Keys;->nextIndex:I

    aget v0, v0, v1

    .line 612
    .local v0, "key":I
    :goto_0
    iget v1, p0, Lcom/esotericsoftware/kryo/util/IntMap$Keys;->nextIndex:I

    iput v1, p0, Lcom/esotericsoftware/kryo/util/IntMap$Keys;->currentIndex:I

    .line 613
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/IntMap$Keys;->findNextIndex()V

    .line 614
    return v0

    .line 610
    .end local v0    # "key":I
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic remove()V
    .locals 0

    .line 604
    invoke-super {p0}, Lcom/esotericsoftware/kryo/util/IntMap$MapIterator;->remove()V

    return-void
.end method

.method public bridge synthetic reset()V
    .locals 0

    .line 604
    invoke-super {p0}, Lcom/esotericsoftware/kryo/util/IntMap$MapIterator;->reset()V

    return-void
.end method

.method public toArray()Lcom/esotericsoftware/kryo/util/IntArray;
    .locals 3

    .line 619
    new-instance v0, Lcom/esotericsoftware/kryo/util/IntArray;

    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/IntMap$Keys;->map:Lcom/esotericsoftware/kryo/util/IntMap;

    iget v1, v1, Lcom/esotericsoftware/kryo/util/IntMap;->size:I

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/esotericsoftware/kryo/util/IntArray;-><init>(ZI)V

    .line 620
    .local v0, "array":Lcom/esotericsoftware/kryo/util/IntArray;
    :goto_0
    iget-boolean v1, p0, Lcom/esotericsoftware/kryo/util/IntMap$Keys;->hasNext:Z

    if-eqz v1, :cond_0

    .line 621
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/IntMap$Keys;->next()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryo/util/IntArray;->add(I)V

    goto :goto_0

    .line 622
    :cond_0
    return-object v0
.end method

.method public toArray(Lcom/esotericsoftware/kryo/util/IntArray;)Lcom/esotericsoftware/kryo/util/IntArray;
    .locals 1
    .param p1, "array"    # Lcom/esotericsoftware/kryo/util/IntArray;

    .line 627
    nop

    :goto_0
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/util/IntMap$Keys;->hasNext:Z

    if-eqz v0, :cond_0

    .line 628
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/IntMap$Keys;->next()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/util/IntArray;->add(I)V

    goto :goto_0

    .line 629
    :cond_0
    return-object p1
.end method
