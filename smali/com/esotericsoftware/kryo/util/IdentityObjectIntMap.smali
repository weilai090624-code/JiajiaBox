.class public Lcom/esotericsoftware/kryo/util/IdentityObjectIntMap;
.super Lcom/esotericsoftware/kryo/util/ObjectIntMap;
.source "IdentityObjectIntMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/esotericsoftware/kryo/util/ObjectIntMap<",
        "TK;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IdentityObjectIntMap;, "Lcom/esotericsoftware/kryo/util/IdentityObjectIntMap<TK;>;"
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/util/ObjectIntMap;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "initialCapacity"    # I

    .line 46
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IdentityObjectIntMap;, "Lcom/esotericsoftware/kryo/util/IdentityObjectIntMap<TK;>;"
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/util/ObjectIntMap;-><init>(I)V

    .line 47
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 0
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .line 53
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IdentityObjectIntMap;, "Lcom/esotericsoftware/kryo/util/IdentityObjectIntMap<TK;>;"
    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/util/ObjectIntMap;-><init>(IF)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/esotericsoftware/kryo/util/IdentityObjectIntMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/util/IdentityObjectIntMap<",
            "TK;>;)V"
        }
    .end annotation

    .line 58
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IdentityObjectIntMap;, "Lcom/esotericsoftware/kryo/util/IdentityObjectIntMap<TK;>;"
    .local p1, "map":Lcom/esotericsoftware/kryo/util/IdentityObjectIntMap;, "Lcom/esotericsoftware/kryo/util/IdentityObjectIntMap<TK;>;"
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/util/ObjectIntMap;-><init>(Lcom/esotericsoftware/kryo/util/ObjectIntMap;)V

    .line 59
    return-void
.end method


# virtual methods
.method public hashCode()I
    .locals 8

    .line 76
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IdentityObjectIntMap;, "Lcom/esotericsoftware/kryo/util/IdentityObjectIntMap<TK;>;"
    iget v0, p0, Lcom/esotericsoftware/kryo/util/IdentityObjectIntMap;->size:I

    .line 77
    .local v0, "h":I
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/IdentityObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 78
    .local v1, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/IdentityObjectIntMap;->valueTable:[I

    .line 79
    .local v2, "valueTable":[I
    const/4 v3, 0x0

    .local v3, "i":I
    array-length v4, v1

    .local v4, "n":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 80
    aget-object v5, v1, v3

    .line 81
    .local v5, "key":Ljava/lang/Object;, "TK;"
    if-eqz v5, :cond_0

    invoke-static {v5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    aget v7, v2, v3

    add-int/2addr v6, v7

    add-int/2addr v0, v6

    .line 79
    .end local v5    # "key":Ljava/lang/Object;, "TK;"
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 83
    .end local v3    # "i":I
    .end local v4    # "n":I
    :cond_1
    return v0
.end method

.method locateKey(Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .line 66
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IdentityObjectIntMap;, "Lcom/esotericsoftware/kryo/util/IdentityObjectIntMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-eqz p1, :cond_2

    .line 67
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/IdentityObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 68
    .local v0, "keyTable":[Ljava/lang/Object;, "[TK;"
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/util/IdentityObjectIntMap;->place(Ljava/lang/Object;)I

    move-result v1

    .line 69
    .local v1, "i":I
    :goto_0
    aget-object v2, v0, v1

    .line 70
    .local v2, "other":Ljava/lang/Object;, "TK;"
    if-nez v2, :cond_0

    add-int/lit8 v3, v1, 0x1

    neg-int v3, v3

    return v3

    .line 71
    :cond_0
    if-ne v2, p1, :cond_1

    return v1

    .line 68
    .end local v2    # "other":Ljava/lang/Object;, "TK;"
    :cond_1
    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Lcom/esotericsoftware/kryo/util/IdentityObjectIntMap;->mask:I

    and-int v1, v2, v3

    goto :goto_0

    .line 66
    .end local v0    # "keyTable":[Ljava/lang/Object;, "[TK;"
    .end local v1    # "i":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected place(Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .line 62
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IdentityObjectIntMap;, "Lcom/esotericsoftware/kryo/util/IdentityObjectIntMap<TK;>;"
    .local p1, "item":Ljava/lang/Object;, "TK;"
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, -0x61c8864680b583ebL

    mul-long v0, v0, v2

    iget v2, p0, Lcom/esotericsoftware/kryo/util/IdentityObjectIntMap;->shift:I

    ushr-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method
