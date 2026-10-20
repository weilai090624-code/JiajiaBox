.class public Lcom/esotericsoftware/kryo/util/ObjectIntMap$Keys;
.super Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;
.source "ObjectIntMap.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/util/ObjectIntMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Keys"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator<",
        "TK;>;",
        "Ljava/lang/Iterable<",
        "TK;>;",
        "Ljava/util/Iterator<",
        "TK;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryo/util/ObjectIntMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/util/ObjectIntMap<",
            "TK;>;)V"
        }
    .end annotation

    .line 521
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectIntMap$Keys;, "Lcom/esotericsoftware/kryo/util/ObjectIntMap$Keys<TK;>;"
    .local p1, "map":Lcom/esotericsoftware/kryo/util/ObjectIntMap;, "Lcom/esotericsoftware/kryo/util/ObjectIntMap<TK;>;"
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;-><init>(Lcom/esotericsoftware/kryo/util/ObjectIntMap;)V

    .line 522
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 525
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectIntMap$Keys;, "Lcom/esotericsoftware/kryo/util/ObjectIntMap$Keys<TK;>;"
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$Keys;->valid:Z

    if-eqz v0, :cond_0

    .line 526
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$Keys;->hasNext:Z

    return v0

    .line 525
    :cond_0
    new-instance v0, Lcom/esotericsoftware/kryo/KryoException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public iterator()Lcom/esotericsoftware/kryo/util/ObjectIntMap$Keys;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/esotericsoftware/kryo/util/ObjectIntMap$Keys<",
            "TK;>;"
        }
    .end annotation

    .line 539
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectIntMap$Keys;, "Lcom/esotericsoftware/kryo/util/ObjectIntMap$Keys<TK;>;"
    return-object p0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 519
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectIntMap$Keys;, "Lcom/esotericsoftware/kryo/util/ObjectIntMap$Keys<TK;>;"
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/ObjectIntMap$Keys;->iterator()Lcom/esotericsoftware/kryo/util/ObjectIntMap$Keys;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 530
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectIntMap$Keys;, "Lcom/esotericsoftware/kryo/util/ObjectIntMap$Keys<TK;>;"
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$Keys;->hasNext:Z

    if-eqz v0, :cond_1

    .line 531
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$Keys;->valid:Z

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$Keys;->map:Lcom/esotericsoftware/kryo/util/ObjectIntMap;

    iget-object v0, v0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    iget v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$Keys;->nextIndex:I

    aget-object v0, v0, v1

    .line 533
    .local v0, "key":Ljava/lang/Object;, "TK;"
    iget v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$Keys;->nextIndex:I

    iput v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$Keys;->currentIndex:I

    .line 534
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/ObjectIntMap$Keys;->findNextIndex()V

    .line 535
    return-object v0

    .line 531
    .end local v0    # "key":Ljava/lang/Object;, "TK;"
    :cond_0
    new-instance v0, Lcom/esotericsoftware/kryo/KryoException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 530
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic remove()V
    .locals 0

    .line 519
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectIntMap$Keys;, "Lcom/esotericsoftware/kryo/util/ObjectIntMap$Keys<TK;>;"
    invoke-super {p0}, Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;->remove()V

    return-void
.end method

.method public bridge synthetic reset()V
    .locals 0

    .line 519
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectIntMap$Keys;, "Lcom/esotericsoftware/kryo/util/ObjectIntMap$Keys<TK;>;"
    invoke-super {p0}, Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;->reset()V

    return-void
.end method

.method public toList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "TK;>;"
        }
    .end annotation

    .line 544
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectIntMap$Keys;, "Lcom/esotericsoftware/kryo/util/ObjectIntMap$Keys<TK;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$Keys;->map:Lcom/esotericsoftware/kryo/util/ObjectIntMap;

    iget v1, v1, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->size:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/util/ObjectIntMap$Keys;->toList(Ljava/util/List;)Ljava/util/List;

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
            "TK;>;>(TT;)TT;"
        }
    .end annotation

    .line 549
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectIntMap$Keys;, "Lcom/esotericsoftware/kryo/util/ObjectIntMap$Keys<TK;>;"
    .local p1, "array":Ljava/util/List;, "TT;"
    nop

    :goto_0
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$Keys;->hasNext:Z

    if-eqz v0, :cond_0

    .line 550
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/ObjectIntMap$Keys;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 551
    :cond_0
    return-object p1
.end method
