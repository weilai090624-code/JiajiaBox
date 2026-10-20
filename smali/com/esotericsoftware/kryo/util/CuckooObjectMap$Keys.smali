.class public Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Keys;
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
    name = "Keys"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/esotericsoftware/kryo/util/CuckooObjectMap$MapIterator<",
        "TK;",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Iterable<",
        "TK;>;",
        "Ljava/util/Iterator<",
        "TK;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryo/util/CuckooObjectMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/util/CuckooObjectMap<",
            "TK;*>;)V"
        }
    .end annotation

    .line 782
    .local p0, "this":Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Keys;, "Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Keys<TK;>;"
    .local p1, "map":Lcom/esotericsoftware/kryo/util/CuckooObjectMap;, "Lcom/esotericsoftware/kryo/util/CuckooObjectMap<TK;*>;"
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$MapIterator;-><init>(Lcom/esotericsoftware/kryo/util/CuckooObjectMap;)V

    .line 783
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 786
    .local p0, "this":Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Keys;, "Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Keys<TK;>;"
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Keys;->hasNext:Z

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 798
    .local p0, "this":Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Keys;, "Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Keys<TK;>;"
    return-object p0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 790
    .local p0, "this":Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Keys;, "Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Keys<TK;>;"
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Keys;->hasNext:Z

    if-eqz v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Keys;->map:Lcom/esotericsoftware/kryo/util/CuckooObjectMap;

    iget-object v0, v0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->keyTable:[Ljava/lang/Object;

    iget v1, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Keys;->nextIndex:I

    aget-object v0, v0, v1

    .line 792
    .local v0, "key":Ljava/lang/Object;, "TK;"
    iget v1, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Keys;->nextIndex:I

    iput v1, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Keys;->currentIndex:I

    .line 793
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Keys;->advance()V

    .line 794
    return-object v0

    .line 790
    .end local v0    # "key":Ljava/lang/Object;, "TK;"
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic remove()V
    .locals 0

    .line 780
    .local p0, "this":Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Keys;, "Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Keys<TK;>;"
    invoke-super {p0}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$MapIterator;->remove()V

    return-void
.end method

.method public bridge synthetic reset()V
    .locals 0

    .line 780
    .local p0, "this":Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Keys;, "Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Keys<TK;>;"
    invoke-super {p0}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$MapIterator;->reset()V

    return-void
.end method

.method public toArray()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "TK;>;"
        }
    .end annotation

    .line 803
    .local p0, "this":Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Keys;, "Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Keys<TK;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Keys;->map:Lcom/esotericsoftware/kryo/util/CuckooObjectMap;

    iget v1, v1, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->size:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 804
    .local v0, "array":Ljava/util/ArrayList;
    :goto_0
    iget-boolean v1, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Keys;->hasNext:Z

    if-eqz v1, :cond_0

    .line 805
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Keys;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 806
    :cond_0
    return-object v0
.end method
