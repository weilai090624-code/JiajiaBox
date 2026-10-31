.class public Lcom/esotericsoftware/kryo/util/ObjectIntMap$Values;
.super Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;
.source "ObjectIntMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/util/ObjectIntMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryo/util/ObjectIntMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/util/ObjectIntMap<",
            "*>;)V"
        }
    .end annotation

    .line 482
    .local p1, "map":Lcom/esotericsoftware/kryo/util/ObjectIntMap;, "Lcom/esotericsoftware/kryo/util/ObjectIntMap<*>;"
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;-><init>(Lcom/esotericsoftware/kryo/util/ObjectIntMap;)V

    .line 483
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .line 486
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$Values;->valid:Z

    if-eqz v0, :cond_7

    .line 487
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$Values;->hasNext:Z

    return v0

    .line 486
    :cond_7
    new-instance v0, Lcom/esotericsoftware/kryo/KryoException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public iterator()Lcom/esotericsoftware/kryo/util/ObjectIntMap$Values;
    .registers 1

    .line 500
    return-object p0
.end method

.method public next()I
    .registers 3

    .line 491
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$Values;->hasNext:Z

    if-eqz v0, :cond_20

    .line 492
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$Values;->valid:Z

    if-eqz v0, :cond_18

    .line 493
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$Values;->map:Lcom/esotericsoftware/kryo/util/ObjectIntMap;

    iget-object v0, v0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->valueTable:[I

    iget v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$Values;->nextIndex:I

    aget v0, v0, v1

    .line 494
    .local v0, "value":I
    iget v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$Values;->nextIndex:I

    iput v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$Values;->currentIndex:I

    .line 495
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/ObjectIntMap$Values;->findNextIndex()V

    .line 496
    return v0

    .line 492
    .end local v0    # "value":I
    :cond_18
    new-instance v0, Lcom/esotericsoftware/kryo/KryoException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 491
    :cond_20
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic remove()V
    .registers 1

    .line 480
    invoke-super {p0}, Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;->remove()V

    return-void
.end method

.method public bridge synthetic reset()V
    .registers 1

    .line 480
    invoke-super {p0}, Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;->reset()V

    return-void
.end method

.method public toArray()Lcom/esotericsoftware/kryo/util/IntArray;
    .registers 4

    .line 505
    new-instance v0, Lcom/esotericsoftware/kryo/util/IntArray;

    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$Values;->map:Lcom/esotericsoftware/kryo/util/ObjectIntMap;

    iget v1, v1, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->size:I

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/esotericsoftware/kryo/util/IntArray;-><init>(ZI)V

    .line 506
    .local v0, "array":Lcom/esotericsoftware/kryo/util/IntArray;
    :goto_a
    iget-boolean v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$Values;->hasNext:Z

    if-eqz v1, :cond_16

    .line 507
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/ObjectIntMap$Values;->next()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryo/util/IntArray;->add(I)V

    goto :goto_a

    .line 508
    :cond_16
    return-object v0
.end method

.method public toArray(Lcom/esotericsoftware/kryo/util/IntArray;)Lcom/esotericsoftware/kryo/util/IntArray;
    .registers 3
    .param p1, "array"    # Lcom/esotericsoftware/kryo/util/IntArray;

    .line 513
    nop

    :goto_1
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$Values;->hasNext:Z

    if-eqz v0, :cond_d

    .line 514
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/ObjectIntMap$Values;->next()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/util/IntArray;->add(I)V

    goto :goto_1

    .line 515
    :cond_d
    return-object p1
.end method
