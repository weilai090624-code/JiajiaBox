.class public Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Values;
.super Lcom/esotericsoftware/kryo/util/CuckooObjectMap$MapIterator;
.source "CuckooObjectMap.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/util/CuckooObjectMap;
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
        "Lcom/esotericsoftware/kryo/util/CuckooObjectMap$MapIterator<",
        "Ljava/lang/Object;",
        "TV;>;",
        "Ljava/lang/Iterable<",
        "TV;>;",
        "Ljava/util/Iterator<",
        "TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryo/util/CuckooObjectMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/util/CuckooObjectMap<",
            "*TV;>;)V"
        }
    .end annotation

    .line 746
    .local p0, "this":Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Values;, "Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Values<TV;>;"
    .local p1, "map":Lcom/esotericsoftware/kryo/util/CuckooObjectMap;, "Lcom/esotericsoftware/kryo/util/CuckooObjectMap<*TV;>;"
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$MapIterator;-><init>(Lcom/esotericsoftware/kryo/util/CuckooObjectMap;)V

    .line 747
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 750
    .local p0, "this":Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Values;, "Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Values<TV;>;"
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Values;->hasNext:Z

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 762
    .local p0, "this":Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Values;, "Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Values<TV;>;"
    return-object p0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 754
    .local p0, "this":Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Values;, "Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Values<TV;>;"
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Values;->hasNext:Z

    if-eqz v0, :cond_0

    .line 755
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Values;->map:Lcom/esotericsoftware/kryo/util/CuckooObjectMap;

    iget-object v0, v0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->valueTable:[Ljava/lang/Object;

    iget v1, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Values;->nextIndex:I

    aget-object v0, v0, v1

    .line 756
    .local v0, "value":Ljava/lang/Object;, "TV;"
    iget v1, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Values;->nextIndex:I

    iput v1, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Values;->currentIndex:I

    .line 757
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Values;->advance()V

    .line 758
    return-object v0

    .line 754
    .end local v0    # "value":Ljava/lang/Object;, "TV;"
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic remove()V
    .locals 0

    .line 744
    .local p0, "this":Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Values;, "Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Values<TV;>;"
    invoke-super {p0}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$MapIterator;->remove()V

    return-void
.end method

.method public bridge synthetic reset()V
    .locals 0

    .line 744
    .local p0, "this":Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Values;, "Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Values<TV;>;"
    invoke-super {p0}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$MapIterator;->reset()V

    return-void
.end method

.method public toArray()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "TV;>;"
        }
    .end annotation

    .line 767
    .local p0, "this":Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Values;, "Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Values<TV;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Values;->map:Lcom/esotericsoftware/kryo/util/CuckooObjectMap;

    iget v1, v1, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->size:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 768
    .local v0, "array":Ljava/util/ArrayList;
    :goto_0
    iget-boolean v1, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Values;->hasNext:Z

    if-eqz v1, :cond_0

    .line 769
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Values;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 770
    :cond_0
    return-object v0
.end method

.method public toArray(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "TV;>;)V"
        }
    .end annotation

    .line 775
    .local p0, "this":Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Values;, "Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Values<TV;>;"
    .local p1, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TV;>;"
    nop

    :goto_0
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Values;->hasNext:Z

    if-eqz v0, :cond_0

    .line 776
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Values;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 777
    :cond_0
    return-void
.end method
