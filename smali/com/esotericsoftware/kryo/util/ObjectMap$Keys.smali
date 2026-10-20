.class public Lcom/esotericsoftware/kryo/util/ObjectMap$Keys;
.super Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;
.source "ObjectMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/util/ObjectMap;
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
        "Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator<",
        "TK;",
        "Ljava/lang/Object;",
        "TK;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryo/util/ObjectMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/util/ObjectMap<",
            "TK;*>;)V"
        }
    .end annotation

    .line 570
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectMap$Keys;, "Lcom/esotericsoftware/kryo/util/ObjectMap$Keys<TK;>;"
    .local p1, "map":Lcom/esotericsoftware/kryo/util/ObjectMap;, "Lcom/esotericsoftware/kryo/util/ObjectMap<TK;*>;"
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;-><init>(Lcom/esotericsoftware/kryo/util/ObjectMap;)V

    .line 571
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 574
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectMap$Keys;, "Lcom/esotericsoftware/kryo/util/ObjectMap$Keys<TK;>;"
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$Keys;->hasNext:Z

    return v0
.end method

.method public iterator()Lcom/esotericsoftware/kryo/util/ObjectMap$Keys;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/esotericsoftware/kryo/util/ObjectMap$Keys<",
            "TK;>;"
        }
    .end annotation

    .line 586
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectMap$Keys;, "Lcom/esotericsoftware/kryo/util/ObjectMap$Keys<TK;>;"
    return-object p0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 568
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectMap$Keys;, "Lcom/esotericsoftware/kryo/util/ObjectMap$Keys<TK;>;"
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/ObjectMap$Keys;->iterator()Lcom/esotericsoftware/kryo/util/ObjectMap$Keys;

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

    .line 578
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectMap$Keys;, "Lcom/esotericsoftware/kryo/util/ObjectMap$Keys<TK;>;"
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$Keys;->hasNext:Z

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$Keys;->map:Lcom/esotericsoftware/kryo/util/ObjectMap;

    iget-object v0, v0, Lcom/esotericsoftware/kryo/util/ObjectMap;->keyTable:[Ljava/lang/Object;

    iget v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$Keys;->nextIndex:I

    aget-object v0, v0, v1

    .line 580
    .local v0, "key":Ljava/lang/Object;, "TK;"
    iget v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$Keys;->nextIndex:I

    iput v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$Keys;->currentIndex:I

    .line 581
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/ObjectMap$Keys;->findNextIndex()V

    .line 582
    return-object v0

    .line 578
    .end local v0    # "key":Ljava/lang/Object;, "TK;"
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic remove()V
    .locals 0

    .line 568
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectMap$Keys;, "Lcom/esotericsoftware/kryo/util/ObjectMap$Keys<TK;>;"
    invoke-super {p0}, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->remove()V

    return-void
.end method

.method public bridge synthetic reset()V
    .locals 0

    .line 568
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectMap$Keys;, "Lcom/esotericsoftware/kryo/util/ObjectMap$Keys<TK;>;"
    invoke-super {p0}, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->reset()V

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

    .line 591
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectMap$Keys;, "Lcom/esotericsoftware/kryo/util/ObjectMap$Keys<TK;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$Keys;->map:Lcom/esotericsoftware/kryo/util/ObjectMap;

    iget v1, v1, Lcom/esotericsoftware/kryo/util/ObjectMap;->size:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/util/ObjectMap$Keys;->toList(Ljava/util/List;)Ljava/util/List;

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

    .line 596
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectMap$Keys;, "Lcom/esotericsoftware/kryo/util/ObjectMap$Keys<TK;>;"
    .local p1, "array":Ljava/util/List;, "TT;"
    nop

    :goto_0
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$Keys;->hasNext:Z

    if-eqz v0, :cond_0

    .line 597
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/ObjectMap$Keys;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 598
    :cond_0
    return-object p1
.end method
