.class public Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Entries;
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
    name = "Entries"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/esotericsoftware/kryo/util/CuckooObjectMap$MapIterator<",
        "TK;TV;>;",
        "Ljava/lang/Iterable<",
        "Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Entry<",
        "TK;TV;>;>;",
        "Ljava/util/Iterator<",
        "Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field entry:Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryo/util/CuckooObjectMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/util/CuckooObjectMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 721
    .local p0, "this":Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Entries;, "Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Entries<TK;TV;>;"
    .local p1, "map":Lcom/esotericsoftware/kryo/util/CuckooObjectMap;, "Lcom/esotericsoftware/kryo/util/CuckooObjectMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$MapIterator;-><init>(Lcom/esotericsoftware/kryo/util/CuckooObjectMap;)V

    .line 718
    new-instance v0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Entry;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Entry;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Entries;->entry:Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Entry;

    .line 722
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 736
    .local p0, "this":Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Entries;, "Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Entries<TK;TV;>;"
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Entries;->hasNext:Z

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 740
    .local p0, "this":Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Entries;, "Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Entries<TK;TV;>;"
    return-object p0
.end method

.method public next()Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 726
    .local p0, "this":Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Entries;, "Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Entries<TK;TV;>;"
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Entries;->hasNext:Z

    if-eqz v0, :cond_0

    .line 727
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Entries;->map:Lcom/esotericsoftware/kryo/util/CuckooObjectMap;

    iget-object v0, v0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->keyTable:[Ljava/lang/Object;

    .line 728
    .local v0, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Entries;->entry:Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Entry;

    iget v2, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Entries;->nextIndex:I

    aget-object v2, v0, v2

    iput-object v2, v1, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Entry;->key:Ljava/lang/Object;

    .line 729
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Entries;->entry:Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Entry;

    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Entries;->map:Lcom/esotericsoftware/kryo/util/CuckooObjectMap;

    iget-object v2, v2, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->valueTable:[Ljava/lang/Object;

    iget v3, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Entries;->nextIndex:I

    aget-object v2, v2, v3

    iput-object v2, v1, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Entry;->value:Ljava/lang/Object;

    .line 730
    iget v1, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Entries;->nextIndex:I

    iput v1, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Entries;->currentIndex:I

    .line 731
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Entries;->advance()V

    .line 732
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Entries;->entry:Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Entry;

    return-object v1

    .line 726
    .end local v0    # "keyTable":[Ljava/lang/Object;, "[TK;"
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 717
    .local p0, "this":Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Entries;, "Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Entries<TK;TV;>;"
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Entries;->next()Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove()V
    .locals 0

    .line 717
    .local p0, "this":Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Entries;, "Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Entries<TK;TV;>;"
    invoke-super {p0}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$MapIterator;->remove()V

    return-void
.end method

.method public bridge synthetic reset()V
    .locals 0

    .line 717
    .local p0, "this":Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Entries;, "Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Entries<TK;TV;>;"
    invoke-super {p0}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$MapIterator;->reset()V

    return-void
.end method
