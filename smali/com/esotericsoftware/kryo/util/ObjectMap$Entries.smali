.class public Lcom/esotericsoftware/kryo/util/ObjectMap$Entries;
.super Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;
.source "ObjectMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/util/ObjectMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entries"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator<",
        "TK;TV;",
        "Lcom/esotericsoftware/kryo/util/ObjectMap$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field entry:Lcom/esotericsoftware/kryo/util/ObjectMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/esotericsoftware/kryo/util/ObjectMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryo/util/ObjectMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/util/ObjectMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 510
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectMap$Entries;, "Lcom/esotericsoftware/kryo/util/ObjectMap$Entries<TK;TV;>;"
    .local p1, "map":Lcom/esotericsoftware/kryo/util/ObjectMap;, "Lcom/esotericsoftware/kryo/util/ObjectMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;-><init>(Lcom/esotericsoftware/kryo/util/ObjectMap;)V

    .line 507
    new-instance v0, Lcom/esotericsoftware/kryo/util/ObjectMap$Entry;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/util/ObjectMap$Entry;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$Entries;->entry:Lcom/esotericsoftware/kryo/util/ObjectMap$Entry;

    .line 511
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 525
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectMap$Entries;, "Lcom/esotericsoftware/kryo/util/ObjectMap$Entries<TK;TV;>;"
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$Entries;->hasNext:Z

    return v0
.end method

.method public iterator()Lcom/esotericsoftware/kryo/util/ObjectMap$Entries;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/esotericsoftware/kryo/util/ObjectMap$Entries<",
            "TK;TV;>;"
        }
    .end annotation

    .line 529
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectMap$Entries;, "Lcom/esotericsoftware/kryo/util/ObjectMap$Entries<TK;TV;>;"
    return-object p0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 506
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectMap$Entries;, "Lcom/esotericsoftware/kryo/util/ObjectMap$Entries<TK;TV;>;"
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/ObjectMap$Entries;->iterator()Lcom/esotericsoftware/kryo/util/ObjectMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public next()Lcom/esotericsoftware/kryo/util/ObjectMap$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/esotericsoftware/kryo/util/ObjectMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 515
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectMap$Entries;, "Lcom/esotericsoftware/kryo/util/ObjectMap$Entries<TK;TV;>;"
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$Entries;->hasNext:Z

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$Entries;->map:Lcom/esotericsoftware/kryo/util/ObjectMap;

    iget-object v0, v0, Lcom/esotericsoftware/kryo/util/ObjectMap;->keyTable:[Ljava/lang/Object;

    .line 517
    .local v0, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$Entries;->entry:Lcom/esotericsoftware/kryo/util/ObjectMap$Entry;

    iget v2, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$Entries;->nextIndex:I

    aget-object v2, v0, v2

    iput-object v2, v1, Lcom/esotericsoftware/kryo/util/ObjectMap$Entry;->key:Ljava/lang/Object;

    .line 518
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$Entries;->entry:Lcom/esotericsoftware/kryo/util/ObjectMap$Entry;

    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$Entries;->map:Lcom/esotericsoftware/kryo/util/ObjectMap;

    iget-object v2, v2, Lcom/esotericsoftware/kryo/util/ObjectMap;->valueTable:[Ljava/lang/Object;

    iget v3, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$Entries;->nextIndex:I

    aget-object v2, v2, v3

    iput-object v2, v1, Lcom/esotericsoftware/kryo/util/ObjectMap$Entry;->value:Ljava/lang/Object;

    .line 519
    iget v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$Entries;->nextIndex:I

    iput v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$Entries;->currentIndex:I

    .line 520
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/ObjectMap$Entries;->findNextIndex()V

    .line 521
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$Entries;->entry:Lcom/esotericsoftware/kryo/util/ObjectMap$Entry;

    return-object v1

    .line 515
    .end local v0    # "keyTable":[Ljava/lang/Object;, "[TK;"
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 506
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectMap$Entries;, "Lcom/esotericsoftware/kryo/util/ObjectMap$Entries<TK;TV;>;"
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/ObjectMap$Entries;->next()Lcom/esotericsoftware/kryo/util/ObjectMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove()V
    .locals 0

    .line 506
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectMap$Entries;, "Lcom/esotericsoftware/kryo/util/ObjectMap$Entries<TK;TV;>;"
    invoke-super {p0}, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->remove()V

    return-void
.end method

.method public bridge synthetic reset()V
    .locals 0

    .line 506
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectMap$Entries;, "Lcom/esotericsoftware/kryo/util/ObjectMap$Entries<TK;TV;>;"
    invoke-super {p0}, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->reset()V

    return-void
.end method
