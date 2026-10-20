.class public Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entries;
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
    name = "Entries"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator<",
        "TK;>;",
        "Ljava/lang/Iterable<",
        "Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entry<",
        "TK;>;>;",
        "Ljava/util/Iterator<",
        "Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entry<",
        "TK;>;>;"
    }
.end annotation


# instance fields
.field entry:Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entry<",
            "TK;>;"
        }
    .end annotation
.end field


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

    .line 455
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entries;, "Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entries<TK;>;"
    .local p1, "map":Lcom/esotericsoftware/kryo/util/ObjectIntMap;, "Lcom/esotericsoftware/kryo/util/ObjectIntMap<TK;>;"
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;-><init>(Lcom/esotericsoftware/kryo/util/ObjectIntMap;)V

    .line 452
    new-instance v0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entry;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entry;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entries;->entry:Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entry;

    .line 456
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 471
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entries;, "Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entries<TK;>;"
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entries;->valid:Z

    if-eqz v0, :cond_0

    .line 472
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entries;->hasNext:Z

    return v0

    .line 471
    :cond_0
    new-instance v0, Lcom/esotericsoftware/kryo/KryoException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public iterator()Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entries;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entries<",
            "TK;>;"
        }
    .end annotation

    .line 476
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entries;, "Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entries<TK;>;"
    return-object p0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 451
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entries;, "Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entries<TK;>;"
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entries;->iterator()Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public next()Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entry<",
            "TK;>;"
        }
    .end annotation

    .line 460
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entries;, "Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entries<TK;>;"
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entries;->hasNext:Z

    if-eqz v0, :cond_1

    .line 461
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entries;->valid:Z

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entries;->map:Lcom/esotericsoftware/kryo/util/ObjectIntMap;

    iget-object v0, v0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 463
    .local v0, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entries;->entry:Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entry;

    iget v2, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entries;->nextIndex:I

    aget-object v2, v0, v2

    iput-object v2, v1, Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entry;->key:Ljava/lang/Object;

    .line 464
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entries;->entry:Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entry;

    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entries;->map:Lcom/esotericsoftware/kryo/util/ObjectIntMap;

    iget-object v2, v2, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->valueTable:[I

    iget v3, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entries;->nextIndex:I

    aget v2, v2, v3

    iput v2, v1, Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entry;->value:I

    .line 465
    iget v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entries;->nextIndex:I

    iput v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entries;->currentIndex:I

    .line 466
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entries;->findNextIndex()V

    .line 467
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entries;->entry:Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entry;

    return-object v1

    .line 461
    .end local v0    # "keyTable":[Ljava/lang/Object;, "[TK;"
    :cond_0
    new-instance v0, Lcom/esotericsoftware/kryo/KryoException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 460
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 451
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entries;, "Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entries<TK;>;"
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entries;->next()Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove()V
    .locals 0

    .line 451
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entries;, "Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entries<TK;>;"
    invoke-super {p0}, Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;->remove()V

    return-void
.end method

.method public bridge synthetic reset()V
    .locals 0

    .line 451
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entries;, "Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entries<TK;>;"
    invoke-super {p0}, Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;->reset()V

    return-void
.end method
