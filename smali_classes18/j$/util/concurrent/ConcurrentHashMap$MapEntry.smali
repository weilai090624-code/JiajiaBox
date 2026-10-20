.class final Lj$/util/concurrent/ConcurrentHashMap$MapEntry;
.super Ljava/lang/Object;
.source "ConcurrentHashMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MapEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final map:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field val:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lj$/util/concurrent/ConcurrentHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 3512
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$MapEntry;, "Ljava/util/concurrent/ConcurrentHashMap$MapEntry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    .local p3, "map":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3513
    iput-object p1, p0, Lj$/util/concurrent/ConcurrentHashMap$MapEntry;->key:Ljava/lang/Object;

    .line 3514
    iput-object p2, p0, Lj$/util/concurrent/ConcurrentHashMap$MapEntry;->val:Ljava/lang/Object;

    .line 3515
    iput-object p3, p0, Lj$/util/concurrent/ConcurrentHashMap$MapEntry;->map:Lj$/util/concurrent/ConcurrentHashMap;

    .line 3516
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 3526
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$MapEntry;, "Ljava/util/concurrent/ConcurrentHashMap$MapEntry<TK;TV;>;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v1, v0

    .line 3527
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    .local v2, "k":Ljava/lang/Object;
    if-eqz v0, :cond_2

    .line 3528
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    .local v3, "v":Ljava/lang/Object;
    if-eqz v0, :cond_2

    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$MapEntry;->key:Ljava/lang/Object;

    if-eq v2, v0, :cond_0

    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$MapEntry;->key:Ljava/lang/Object;

    .line 3529
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$MapEntry;->val:Ljava/lang/Object;

    if-eq v3, v0, :cond_1

    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$MapEntry;->val:Ljava/lang/Object;

    .line 3530
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v2    # "k":Ljava/lang/Object;
    .end local v3    # "v":Ljava/lang/Object;
    :cond_2
    const/4 v0, 0x0

    .line 3526
    :goto_0
    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 3517
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$MapEntry;, "Ljava/util/concurrent/ConcurrentHashMap$MapEntry<TK;TV;>;"
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$MapEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 3518
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$MapEntry;, "Ljava/util/concurrent/ConcurrentHashMap$MapEntry<TK;TV;>;"
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$MapEntry;->val:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 3519
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$MapEntry;, "Ljava/util/concurrent/ConcurrentHashMap$MapEntry<TK;TV;>;"
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$MapEntry;->key:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lj$/util/concurrent/ConcurrentHashMap$MapEntry;->val:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 3542
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$MapEntry;, "Ljava/util/concurrent/ConcurrentHashMap$MapEntry<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_0

    .line 3543
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$MapEntry;->val:Ljava/lang/Object;

    .line 3544
    .local v0, "v":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Lj$/util/concurrent/ConcurrentHashMap$MapEntry;->val:Ljava/lang/Object;

    .line 3545
    iget-object v1, p0, Lj$/util/concurrent/ConcurrentHashMap$MapEntry;->map:Lj$/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lj$/util/concurrent/ConcurrentHashMap$MapEntry;->key:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3546
    return-object v0

    .line 3542
    .end local v0    # "v":Ljava/lang/Object;, "TV;"
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 3521
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$MapEntry;, "Ljava/util/concurrent/ConcurrentHashMap$MapEntry<TK;TV;>;"
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$MapEntry;->key:Ljava/lang/Object;

    iget-object v1, p0, Lj$/util/concurrent/ConcurrentHashMap$MapEntry;->val:Ljava/lang/Object;

    invoke-static {v0, v1}, Lj$/util/concurrent/Helpers;->mapEntryToString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
