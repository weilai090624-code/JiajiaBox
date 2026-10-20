.class public Lcom/esotericsoftware/kryo/util/ObjectMap$Values;
.super Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;
.source "ObjectMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/util/ObjectMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator<",
        "Ljava/lang/Object;",
        "TV;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryo/util/ObjectMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/util/ObjectMap<",
            "*TV;>;)V"
        }
    .end annotation

    .line 535
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectMap$Values;, "Lcom/esotericsoftware/kryo/util/ObjectMap$Values<TV;>;"
    .local p1, "map":Lcom/esotericsoftware/kryo/util/ObjectMap;, "Lcom/esotericsoftware/kryo/util/ObjectMap<*TV;>;"
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;-><init>(Lcom/esotericsoftware/kryo/util/ObjectMap;)V

    .line 536
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 539
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectMap$Values;, "Lcom/esotericsoftware/kryo/util/ObjectMap$Values<TV;>;"
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$Values;->hasNext:Z

    return v0
.end method

.method public iterator()Lcom/esotericsoftware/kryo/util/ObjectMap$Values;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/esotericsoftware/kryo/util/ObjectMap$Values<",
            "TV;>;"
        }
    .end annotation

    .line 552
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectMap$Values;, "Lcom/esotericsoftware/kryo/util/ObjectMap$Values<TV;>;"
    return-object p0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 533
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectMap$Values;, "Lcom/esotericsoftware/kryo/util/ObjectMap$Values<TV;>;"
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/ObjectMap$Values;->iterator()Lcom/esotericsoftware/kryo/util/ObjectMap$Values;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 544
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectMap$Values;, "Lcom/esotericsoftware/kryo/util/ObjectMap$Values<TV;>;"
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$Values;->hasNext:Z

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$Values;->map:Lcom/esotericsoftware/kryo/util/ObjectMap;

    iget-object v0, v0, Lcom/esotericsoftware/kryo/util/ObjectMap;->valueTable:[Ljava/lang/Object;

    iget v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$Values;->nextIndex:I

    aget-object v0, v0, v1

    .line 546
    .local v0, "value":Ljava/lang/Object;, "TV;"
    iget v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$Values;->nextIndex:I

    iput v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$Values;->currentIndex:I

    .line 547
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/ObjectMap$Values;->findNextIndex()V

    .line 548
    return-object v0

    .line 544
    .end local v0    # "value":Ljava/lang/Object;, "TV;"
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic remove()V
    .locals 0

    .line 533
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectMap$Values;, "Lcom/esotericsoftware/kryo/util/ObjectMap$Values<TV;>;"
    invoke-super {p0}, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->remove()V

    return-void
.end method

.method public bridge synthetic reset()V
    .locals 0

    .line 533
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectMap$Values;, "Lcom/esotericsoftware/kryo/util/ObjectMap$Values<TV;>;"
    invoke-super {p0}, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->reset()V

    return-void
.end method

.method public toList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "TV;>;"
        }
    .end annotation

    .line 557
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectMap$Values;, "Lcom/esotericsoftware/kryo/util/ObjectMap$Values<TV;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$Values;->map:Lcom/esotericsoftware/kryo/util/ObjectMap;

    iget v1, v1, Lcom/esotericsoftware/kryo/util/ObjectMap;->size:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/util/ObjectMap$Values;->toList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public toList(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/List<",
            "TV;>;>(TT;)TT;"
        }
    .end annotation

    .line 562
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectMap$Values;, "Lcom/esotericsoftware/kryo/util/ObjectMap$Values<TV;>;"
    .local p1, "array":Ljava/util/List;, "TT;"
    nop

    :goto_0
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$Values;->hasNext:Z

    if-eqz v0, :cond_0

    .line 563
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/ObjectMap$Values;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 564
    :cond_0
    return-object p1
.end method
