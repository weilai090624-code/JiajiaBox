.class public Lcom/esotericsoftware/kryo/util/IntMap;
.super Ljava/lang/Object;
.source "IntMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/esotericsoftware/kryo/util/IntMap$Keys;,
        Lcom/esotericsoftware/kryo/util/IntMap$Values;,
        Lcom/esotericsoftware/kryo/util/IntMap$Entries;,
        Lcom/esotericsoftware/kryo/util/IntMap$MapIterator;,
        Lcom/esotericsoftware/kryo/util/IntMap$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/esotericsoftware/kryo/util/IntMap$Entry<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field hasZeroValue:Z

.field keyTable:[I

.field private final loadFactor:F

.field protected mask:I

.field protected shift:I

.field public size:I

.field private threshold:I

.field valueTable:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field

.field zeroValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 75
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IntMap;, "Lcom/esotericsoftware/kryo/util/IntMap<TV;>;"
    const/16 v0, 0x33

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, v0, v1}, Lcom/esotericsoftware/kryo/util/IntMap;-><init>(IF)V

    .line 76
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .line 82
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IntMap;, "Lcom/esotericsoftware/kryo/util/IntMap<TV;>;"
    const v0, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, p1, v0}, Lcom/esotericsoftware/kryo/util/IntMap;-><init>(IF)V

    .line 83
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 3
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .line 88
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IntMap;, "Lcom/esotericsoftware/kryo/util/IntMap<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-gez v0, :cond_0

    .line 91
    iput p2, p0, Lcom/esotericsoftware/kryo/util/IntMap;->loadFactor:F

    .line 93
    invoke-static {p1, p2}, Lcom/esotericsoftware/kryo/util/ObjectMap;->tableSize(IF)I

    move-result v0

    .line 94
    .local v0, "tableSize":I
    int-to-float v1, v0

    mul-float v1, v1, p2

    float-to-int v1, v1

    iput v1, p0, Lcom/esotericsoftware/kryo/util/IntMap;->threshold:I

    .line 95
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/esotericsoftware/kryo/util/IntMap;->mask:I

    .line 96
    iget v1, p0, Lcom/esotericsoftware/kryo/util/IntMap;->mask:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    iput v1, p0, Lcom/esotericsoftware/kryo/util/IntMap;->shift:I

    .line 98
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/esotericsoftware/kryo/util/IntMap;->keyTable:[I

    .line 99
    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/esotericsoftware/kryo/util/IntMap;->valueTable:[Ljava/lang/Object;

    .line 100
    return-void

    .line 90
    .end local v0    # "tableSize":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadFactor must be > 0 and < 1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lcom/esotericsoftware/kryo/util/IntMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/util/IntMap<",
            "+TV;>;)V"
        }
    .end annotation

    .line 104
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IntMap;, "Lcom/esotericsoftware/kryo/util/IntMap<TV;>;"
    .local p1, "map":Lcom/esotericsoftware/kryo/util/IntMap;, "Lcom/esotericsoftware/kryo/util/IntMap<+TV;>;"
    iget-object v0, p1, Lcom/esotericsoftware/kryo/util/IntMap;->keyTable:[I

    array-length v0, v0

    int-to-float v0, v0

    iget v1, p1, Lcom/esotericsoftware/kryo/util/IntMap;->loadFactor:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    iget v1, p1, Lcom/esotericsoftware/kryo/util/IntMap;->loadFactor:F

    invoke-direct {p0, v0, v1}, Lcom/esotericsoftware/kryo/util/IntMap;-><init>(IF)V

    .line 105
    iget-object v0, p1, Lcom/esotericsoftware/kryo/util/IntMap;->keyTable:[I

    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/IntMap;->keyTable:[I

    iget-object v2, p1, Lcom/esotericsoftware/kryo/util/IntMap;->keyTable:[I

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    iget-object v0, p1, Lcom/esotericsoftware/kryo/util/IntMap;->valueTable:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/IntMap;->valueTable:[Ljava/lang/Object;

    iget-object v2, p1, Lcom/esotericsoftware/kryo/util/IntMap;->valueTable:[Ljava/lang/Object;

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    iget v0, p1, Lcom/esotericsoftware/kryo/util/IntMap;->size:I

    iput v0, p0, Lcom/esotericsoftware/kryo/util/IntMap;->size:I

    .line 108
    iget-object v0, p1, Lcom/esotericsoftware/kryo/util/IntMap;->zeroValue:Ljava/lang/Object;

    iput-object v0, p0, Lcom/esotericsoftware/kryo/util/IntMap;->zeroValue:Ljava/lang/Object;

    .line 109
    iget-boolean v0, p1, Lcom/esotericsoftware/kryo/util/IntMap;->hasZeroValue:Z

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/util/IntMap;->hasZeroValue:Z

    .line 110
    return-void
.end method

.method private locateKey(I)I
    .locals 4
    .param p1, "key"    # I

    .line 133
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IntMap;, "Lcom/esotericsoftware/kryo/util/IntMap<TV;>;"
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/IntMap;->keyTable:[I

    .line 134
    .local v0, "keyTable":[I
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/util/IntMap;->place(I)I

    move-result v1

    .line 135
    .local v1, "i":I
    :goto_0
    aget v2, v0, v1

    .line 136
    .local v2, "other":I
    if-nez v2, :cond_0

    add-int/lit8 v3, v1, 0x1

    neg-int v3, v3

    return v3

    .line 137
    :cond_0
    if-ne v2, p1, :cond_1

    return v1

    .line 134
    .end local v2    # "other":I
    :cond_1
    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Lcom/esotericsoftware/kryo/util/IntMap;->mask:I

    and-int v1, v2, v3

    goto :goto_0
.end method

.method private putResize(ILjava/lang/Object;)V
    .locals 4
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    .line 178
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IntMap;, "Lcom/esotericsoftware/kryo/util/IntMap<TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/IntMap;->keyTable:[I

    .line 179
    .local v0, "keyTable":[I
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/util/IntMap;->place(I)I

    move-result v1

    .line 180
    .local v1, "i":I
    :goto_0
    aget v2, v0, v1

    if-nez v2, :cond_0

    .line 181
    aput p1, v0, v1

    .line 182
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/IntMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v2, v1

    .line 183
    return-void

    .line 179
    :cond_0
    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Lcom/esotericsoftware/kryo/util/IntMap;->mask:I

    and-int v1, v2, v3

    goto :goto_0
.end method

.method private resize(I)V
    .locals 6
    .param p1, "newSize"    # I

    .line 332
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IntMap;, "Lcom/esotericsoftware/kryo/util/IntMap<TV;>;"
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/IntMap;->keyTable:[I

    array-length v0, v0

    .line 333
    .local v0, "oldCapacity":I
    int-to-float v1, p1

    iget v2, p0, Lcom/esotericsoftware/kryo/util/IntMap;->loadFactor:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/esotericsoftware/kryo/util/IntMap;->threshold:I

    .line 334
    add-int/lit8 v1, p1, -0x1

    iput v1, p0, Lcom/esotericsoftware/kryo/util/IntMap;->mask:I

    .line 335
    iget v1, p0, Lcom/esotericsoftware/kryo/util/IntMap;->mask:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    iput v1, p0, Lcom/esotericsoftware/kryo/util/IntMap;->shift:I

    .line 337
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/IntMap;->keyTable:[I

    .line 338
    .local v1, "oldKeyTable":[I
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/IntMap;->valueTable:[Ljava/lang/Object;

    .line 340
    .local v2, "oldValueTable":[Ljava/lang/Object;, "[TV;"
    new-array v3, p1, [I

    iput-object v3, p0, Lcom/esotericsoftware/kryo/util/IntMap;->keyTable:[I

    .line 341
    new-array v3, p1, [Ljava/lang/Object;

    iput-object v3, p0, Lcom/esotericsoftware/kryo/util/IntMap;->valueTable:[Ljava/lang/Object;

    .line 343
    iget v3, p0, Lcom/esotericsoftware/kryo/util/IntMap;->size:I

    if-lez v3, :cond_1

    .line 344
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 345
    aget v4, v1, v3

    .line 346
    .local v4, "key":I
    if-eqz v4, :cond_0

    aget-object v5, v2, v3

    invoke-direct {p0, v4, v5}, Lcom/esotericsoftware/kryo/util/IntMap;->putResize(ILjava/lang/Object;)V

    .line 344
    .end local v4    # "key":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 349
    .end local v3    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 264
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IntMap;, "Lcom/esotericsoftware/kryo/util/IntMap<TV;>;"
    iget v0, p0, Lcom/esotericsoftware/kryo/util/IntMap;->size:I

    if-nez v0, :cond_0

    return-void

    .line 265
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/esotericsoftware/kryo/util/IntMap;->size:I

    .line 266
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/IntMap;->keyTable:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 267
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/IntMap;->valueTable:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 268
    iput-object v2, p0, Lcom/esotericsoftware/kryo/util/IntMap;->zeroValue:Ljava/lang/Object;

    .line 269
    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/util/IntMap;->hasZeroValue:Z

    .line 270
    return-void
.end method

.method public clear(I)V
    .locals 2
    .param p1, "maximumCapacity"    # I

    .line 252
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IntMap;, "Lcom/esotericsoftware/kryo/util/IntMap<TV;>;"
    iget v0, p0, Lcom/esotericsoftware/kryo/util/IntMap;->loadFactor:F

    invoke-static {p1, v0}, Lcom/esotericsoftware/kryo/util/ObjectMap;->tableSize(IF)I

    move-result v0

    .line 253
    .local v0, "tableSize":I
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/IntMap;->keyTable:[I

    array-length v1, v1

    if-gt v1, v0, :cond_0

    .line 254
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/IntMap;->clear()V

    .line 255
    return-void

    .line 257
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/esotericsoftware/kryo/util/IntMap;->size:I

    .line 258
    iput-boolean v1, p0, Lcom/esotericsoftware/kryo/util/IntMap;->hasZeroValue:Z

    .line 259
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/esotericsoftware/kryo/util/IntMap;->zeroValue:Ljava/lang/Object;

    .line 260
    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/util/IntMap;->resize(I)V

    .line 261
    return-void
.end method

.method public containsKey(I)Z
    .locals 1
    .param p1, "key"    # I

    .line 297
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IntMap;, "Lcom/esotericsoftware/kryo/util/IntMap<TV;>;"
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/util/IntMap;->hasZeroValue:Z

    return v0

    .line 298
    :cond_0
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/util/IntMap;->locateKey(I)I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public containsValue(Ljava/lang/Object;Z)Z
    .locals 5
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "identity"    # Z

    .line 277
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IntMap;, "Lcom/esotericsoftware/kryo/util/IntMap<TV;>;"
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/IntMap;->valueTable:[Ljava/lang/Object;

    .line 278
    .local v0, "valueTable":[Ljava/lang/Object;, "[TV;"
    const/4 v1, 0x1

    if-nez p1, :cond_3

    .line 279
    iget-boolean v2, p0, Lcom/esotericsoftware/kryo/util/IntMap;->hasZeroValue:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/IntMap;->zeroValue:Ljava/lang/Object;

    if-nez v2, :cond_0

    return v1

    .line 280
    :cond_0
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/IntMap;->keyTable:[I

    .line 281
    .local v2, "keyTable":[I
    array-length v3, v0

    sub-int/2addr v3, v1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    .line 282
    aget v4, v2, v3

    if-eqz v4, :cond_1

    aget-object v4, v0, v3

    if-nez v4, :cond_1

    return v1

    .line 281
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 283
    .end local v2    # "keyTable":[I
    .end local v3    # "i":I
    :cond_2
    goto :goto_3

    :cond_3
    if-eqz p2, :cond_7

    .line 284
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/IntMap;->zeroValue:Ljava/lang/Object;

    if-ne p1, v2, :cond_4

    return v1

    .line 285
    :cond_4
    array-length v2, v0

    sub-int/2addr v2, v1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_6

    .line 286
    aget-object v3, v0, v2

    if-ne v3, p1, :cond_5

    return v1

    .line 285
    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .end local v2    # "i":I
    :cond_6
    goto :goto_3

    .line 288
    :cond_7
    iget-boolean v2, p0, Lcom/esotericsoftware/kryo/util/IntMap;->hasZeroValue:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/IntMap;->zeroValue:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    return v1

    .line 289
    :cond_8
    array-length v2, v0

    sub-int/2addr v2, v1

    .restart local v2    # "i":I
    :goto_2
    if-ltz v2, :cond_a

    .line 290
    aget-object v3, v0, v2

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    return v1

    .line 289
    :cond_9
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 292
    .end local v2    # "i":I
    :cond_a
    :goto_3
    const/4 v1, 0x0

    return v1
.end method

.method public ensureCapacity(I)V
    .locals 2
    .param p1, "additionalCapacity"    # I

    .line 327
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IntMap;, "Lcom/esotericsoftware/kryo/util/IntMap<TV;>;"
    iget v0, p0, Lcom/esotericsoftware/kryo/util/IntMap;->size:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/esotericsoftware/kryo/util/IntMap;->loadFactor:F

    invoke-static {v0, v1}, Lcom/esotericsoftware/kryo/util/ObjectMap;->tableSize(IF)I

    move-result v0

    .line 328
    .local v0, "tableSize":I
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/IntMap;->keyTable:[I

    array-length v1, v1

    if-ge v1, v0, :cond_0

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/util/IntMap;->resize(I)V

    .line 329
    :cond_0
    return-void
.end method

.method public entries()Lcom/esotericsoftware/kryo/util/IntMap$Entries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/esotericsoftware/kryo/util/IntMap$Entries<",
            "TV;>;"
        }
    .end annotation

    .line 451
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IntMap;, "Lcom/esotericsoftware/kryo/util/IntMap<TV;>;"
    new-instance v0, Lcom/esotericsoftware/kryo/util/IntMap$Entries;

    invoke-direct {v0, p0}, Lcom/esotericsoftware/kryo/util/IntMap$Entries;-><init>(Lcom/esotericsoftware/kryo/util/IntMap;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "obj"    # Ljava/lang/Object;

    .line 368
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IntMap;, "Lcom/esotericsoftware/kryo/util/IntMap<TV;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 369
    :cond_0
    instance-of v1, p1, Lcom/esotericsoftware/kryo/util/IntMap;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 370
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/esotericsoftware/kryo/util/IntMap;

    .line 371
    .local v1, "other":Lcom/esotericsoftware/kryo/util/IntMap;
    iget v3, v1, Lcom/esotericsoftware/kryo/util/IntMap;->size:I

    iget v4, p0, Lcom/esotericsoftware/kryo/util/IntMap;->size:I

    if-eq v3, v4, :cond_2

    return v2

    .line 372
    :cond_2
    iget-boolean v3, v1, Lcom/esotericsoftware/kryo/util/IntMap;->hasZeroValue:Z

    iget-boolean v4, p0, Lcom/esotericsoftware/kryo/util/IntMap;->hasZeroValue:Z

    if-eq v3, v4, :cond_3

    return v2

    .line 373
    :cond_3
    iget-boolean v3, p0, Lcom/esotericsoftware/kryo/util/IntMap;->hasZeroValue:Z

    if-eqz v3, :cond_5

    .line 374
    iget-object v3, v1, Lcom/esotericsoftware/kryo/util/IntMap;->zeroValue:Ljava/lang/Object;

    if-nez v3, :cond_4

    .line 375
    iget-object v3, p0, Lcom/esotericsoftware/kryo/util/IntMap;->zeroValue:Ljava/lang/Object;

    if-eqz v3, :cond_5

    return v2

    .line 377
    :cond_4
    iget-object v3, v1, Lcom/esotericsoftware/kryo/util/IntMap;->zeroValue:Ljava/lang/Object;

    iget-object v4, p0, Lcom/esotericsoftware/kryo/util/IntMap;->zeroValue:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    .line 380
    :cond_5
    iget-object v3, p0, Lcom/esotericsoftware/kryo/util/IntMap;->keyTable:[I

    .line 381
    .local v3, "keyTable":[I
    iget-object v4, p0, Lcom/esotericsoftware/kryo/util/IntMap;->valueTable:[Ljava/lang/Object;

    .line 382
    .local v4, "valueTable":[Ljava/lang/Object;, "[TV;"
    const/4 v5, 0x0

    .local v5, "i":I
    array-length v6, v3

    .local v6, "n":I
    :goto_0
    if-ge v5, v6, :cond_8

    .line 383
    aget v7, v3, v5

    .line 384
    .local v7, "key":I
    if-eqz v7, :cond_7

    .line 385
    aget-object v8, v4, v5

    .line 386
    .local v8, "value":Ljava/lang/Object;, "TV;"
    if-nez v8, :cond_6

    .line 387
    sget-object v9, Lcom/esotericsoftware/kryo/util/ObjectMap;->dummy:Ljava/lang/Object;

    invoke-virtual {v1, v7, v9}, Lcom/esotericsoftware/kryo/util/IntMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_7

    return v2

    .line 389
    :cond_6
    invoke-virtual {v1, v7}, Lcom/esotericsoftware/kryo/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    return v2

    .line 382
    .end local v7    # "key":I
    .end local v8    # "value":Ljava/lang/Object;, "TV;"
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 393
    .end local v5    # "i":I
    .end local v6    # "n":I
    :cond_8
    return v0
.end method

.method public equalsIdentity(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "obj"    # Ljava/lang/Object;

    .line 398
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IntMap;, "Lcom/esotericsoftware/kryo/util/IntMap<TV;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 399
    :cond_0
    instance-of v1, p1, Lcom/esotericsoftware/kryo/util/IntMap;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 400
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/esotericsoftware/kryo/util/IntMap;

    .line 401
    .local v1, "other":Lcom/esotericsoftware/kryo/util/IntMap;
    iget v3, v1, Lcom/esotericsoftware/kryo/util/IntMap;->size:I

    iget v4, p0, Lcom/esotericsoftware/kryo/util/IntMap;->size:I

    if-eq v3, v4, :cond_2

    return v2

    .line 402
    :cond_2
    iget-boolean v3, v1, Lcom/esotericsoftware/kryo/util/IntMap;->hasZeroValue:Z

    iget-boolean v4, p0, Lcom/esotericsoftware/kryo/util/IntMap;->hasZeroValue:Z

    if-eq v3, v4, :cond_3

    return v2

    .line 403
    :cond_3
    iget-boolean v3, p0, Lcom/esotericsoftware/kryo/util/IntMap;->hasZeroValue:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/esotericsoftware/kryo/util/IntMap;->zeroValue:Ljava/lang/Object;

    iget-object v4, v1, Lcom/esotericsoftware/kryo/util/IntMap;->zeroValue:Ljava/lang/Object;

    if-eq v3, v4, :cond_4

    return v2

    .line 404
    :cond_4
    iget-object v3, p0, Lcom/esotericsoftware/kryo/util/IntMap;->keyTable:[I

    .line 405
    .local v3, "keyTable":[I
    iget-object v4, p0, Lcom/esotericsoftware/kryo/util/IntMap;->valueTable:[Ljava/lang/Object;

    .line 406
    .local v4, "valueTable":[Ljava/lang/Object;, "[TV;"
    const/4 v5, 0x0

    .local v5, "i":I
    array-length v6, v3

    .local v6, "n":I
    :goto_0
    if-ge v5, v6, :cond_6

    .line 407
    aget v7, v3, v5

    .line 408
    .local v7, "key":I
    if-eqz v7, :cond_5

    aget-object v8, v4, v5

    sget-object v9, Lcom/esotericsoftware/kryo/util/ObjectMap;->dummy:Ljava/lang/Object;

    invoke-virtual {v1, v7, v9}, Lcom/esotericsoftware/kryo/util/IntMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eq v8, v9, :cond_5

    return v2

    .line 406
    .end local v7    # "key":I
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 410
    .end local v5    # "i":I
    .end local v6    # "n":I
    :cond_6
    return v0
.end method

.method public findKey(Ljava/lang/Object;ZI)I
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "identity"    # Z
    .param p3, "notFound"    # I

    .line 306
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IntMap;, "Lcom/esotericsoftware/kryo/util/IntMap<TV;>;"
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/IntMap;->valueTable:[Ljava/lang/Object;

    .line 307
    .local v0, "valueTable":[Ljava/lang/Object;, "[TV;"
    const/4 v1, 0x0

    if-nez p1, :cond_3

    .line 308
    iget-boolean v2, p0, Lcom/esotericsoftware/kryo/util/IntMap;->hasZeroValue:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/IntMap;->zeroValue:Ljava/lang/Object;

    if-nez v2, :cond_0

    return v1

    .line 309
    :cond_0
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/IntMap;->keyTable:[I

    .line 310
    .local v1, "keyTable":[I
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 311
    aget v3, v1, v2

    if-eqz v3, :cond_1

    aget-object v3, v0, v2

    if-nez v3, :cond_1

    aget v3, v1, v2

    return v3

    .line 310
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 312
    .end local v1    # "keyTable":[I
    .end local v2    # "i":I
    :cond_2
    goto :goto_3

    :cond_3
    if-eqz p2, :cond_7

    .line 313
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/IntMap;->zeroValue:Ljava/lang/Object;

    if-ne p1, v2, :cond_4

    return v1

    .line 314
    :cond_4
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_6

    .line 315
    aget-object v2, v0, v1

    if-ne v2, p1, :cond_5

    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/IntMap;->keyTable:[I

    aget v2, v2, v1

    return v2

    .line 314
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .end local v1    # "i":I
    :cond_6
    goto :goto_3

    .line 317
    :cond_7
    iget-boolean v2, p0, Lcom/esotericsoftware/kryo/util/IntMap;->hasZeroValue:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/IntMap;->zeroValue:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    return v1

    .line 318
    :cond_8
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_2
    if-ltz v1, :cond_a

    .line 319
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/IntMap;->keyTable:[I

    aget v2, v2, v1

    return v2

    .line 318
    :cond_9
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 321
    .end local v1    # "i":I
    :cond_a
    :goto_3
    return p3
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 189
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IntMap;, "Lcom/esotericsoftware/kryo/util/IntMap<TV;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-boolean v1, p0, Lcom/esotericsoftware/kryo/util/IntMap;->hasZeroValue:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/IntMap;->zeroValue:Ljava/lang/Object;

    :cond_0
    return-object v0

    .line 190
    :cond_1
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/util/IntMap;->locateKey(I)I

    move-result v1

    .line 191
    .local v1, "i":I
    if-ltz v1, :cond_2

    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/IntMap;->valueTable:[Ljava/lang/Object;

    aget-object v0, v0, v1

    :cond_2
    return-object v0
.end method

.method public get(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .line 195
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IntMap;, "Lcom/esotericsoftware/kryo/util/IntMap<TV;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/util/IntMap;->hasZeroValue:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/IntMap;->zeroValue:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    return-object v0

    .line 196
    :cond_1
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/util/IntMap;->locateKey(I)I

    move-result v0

    .line 197
    .local v0, "i":I
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/IntMap;->valueTable:[Ljava/lang/Object;

    aget-object v1, v1, v0

    goto :goto_1

    :cond_2
    move-object v1, p2

    :goto_1
    return-object v1
.end method

.method public hashCode()I
    .locals 8

    .line 352
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IntMap;, "Lcom/esotericsoftware/kryo/util/IntMap<TV;>;"
    iget v0, p0, Lcom/esotericsoftware/kryo/util/IntMap;->size:I

    .line 353
    .local v0, "h":I
    iget-boolean v1, p0, Lcom/esotericsoftware/kryo/util/IntMap;->hasZeroValue:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/IntMap;->zeroValue:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/IntMap;->zeroValue:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 354
    :cond_0
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/IntMap;->keyTable:[I

    .line 355
    .local v1, "keyTable":[I
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/IntMap;->valueTable:[Ljava/lang/Object;

    .line 356
    .local v2, "valueTable":[Ljava/lang/Object;, "[TV;"
    const/4 v3, 0x0

    .local v3, "i":I
    array-length v4, v1

    .local v4, "n":I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 357
    aget v5, v1, v3

    .line 358
    .local v5, "key":I
    if-eqz v5, :cond_1

    .line 359
    mul-int/lit8 v6, v5, 0x1f

    add-int/2addr v0, v6

    .line 360
    aget-object v6, v2, v3

    .line 361
    .local v6, "value":Ljava/lang/Object;, "TV;"
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v7

    add-int/2addr v0, v7

    .line 356
    .end local v5    # "key":I
    .end local v6    # "value":Ljava/lang/Object;, "TV;"
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 364
    .end local v3    # "i":I
    .end local v4    # "n":I
    :cond_2
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 238
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IntMap;, "Lcom/esotericsoftware/kryo/util/IntMap<TV;>;"
    iget v0, p0, Lcom/esotericsoftware/kryo/util/IntMap;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/esotericsoftware/kryo/util/IntMap$Entry<",
            "TV;>;>;"
        }
    .end annotation

    .line 446
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IntMap;, "Lcom/esotericsoftware/kryo/util/IntMap<TV;>;"
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/IntMap;->entries()Lcom/esotericsoftware/kryo/util/IntMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public keys()Lcom/esotericsoftware/kryo/util/IntMap$Keys;
    .locals 1

    .line 461
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IntMap;, "Lcom/esotericsoftware/kryo/util/IntMap<TV;>;"
    new-instance v0, Lcom/esotericsoftware/kryo/util/IntMap$Keys;

    invoke-direct {v0, p0}, Lcom/esotericsoftware/kryo/util/IntMap$Keys;-><init>(Lcom/esotericsoftware/kryo/util/IntMap;)V

    return-object v0
.end method

.method public notEmpty()Z
    .locals 1

    .line 233
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IntMap;, "Lcom/esotericsoftware/kryo/util/IntMap<TV;>;"
    iget v0, p0, Lcom/esotericsoftware/kryo/util/IntMap;->size:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected place(I)I
    .locals 4
    .param p1, "item"    # I

    .line 127
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IntMap;, "Lcom/esotericsoftware/kryo/util/IntMap<TV;>;"
    int-to-long v0, p1

    const-wide v2, -0x61c8864680b583ebL

    mul-long v0, v0, v2

    iget v2, p0, Lcom/esotericsoftware/kryo/util/IntMap;->shift:I

    ushr-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public put(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .line 143
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IntMap;, "Lcom/esotericsoftware/kryo/util/IntMap<TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 144
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/IntMap;->zeroValue:Ljava/lang/Object;

    .line 145
    .local v1, "oldValue":Ljava/lang/Object;, "TV;"
    iput-object p2, p0, Lcom/esotericsoftware/kryo/util/IntMap;->zeroValue:Ljava/lang/Object;

    .line 146
    iget-boolean v2, p0, Lcom/esotericsoftware/kryo/util/IntMap;->hasZeroValue:Z

    if-nez v2, :cond_0

    .line 147
    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/util/IntMap;->hasZeroValue:Z

    .line 148
    iget v2, p0, Lcom/esotericsoftware/kryo/util/IntMap;->size:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/esotericsoftware/kryo/util/IntMap;->size:I

    .line 150
    :cond_0
    return-object v1

    .line 152
    .end local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_1
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/util/IntMap;->locateKey(I)I

    move-result v1

    .line 153
    .local v1, "i":I
    if-ltz v1, :cond_2

    .line 154
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/IntMap;->valueTable:[Ljava/lang/Object;

    aget-object v0, v0, v1

    .line 155
    .local v0, "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/IntMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v2, v1

    .line 156
    return-object v0

    .line 158
    .end local v0    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_2
    add-int/lit8 v2, v1, 0x1

    neg-int v1, v2

    .line 159
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/IntMap;->keyTable:[I

    aput p1, v2, v1

    .line 160
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/IntMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v2, v1

    .line 161
    iget v2, p0, Lcom/esotericsoftware/kryo/util/IntMap;->size:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/esotericsoftware/kryo/util/IntMap;->size:I

    iget v3, p0, Lcom/esotericsoftware/kryo/util/IntMap;->threshold:I

    if-lt v2, v3, :cond_3

    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/IntMap;->keyTable:[I

    array-length v2, v2

    shl-int/lit8 v0, v2, 0x1

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/util/IntMap;->resize(I)V

    .line 162
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public putAll(Lcom/esotericsoftware/kryo/util/IntMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/util/IntMap<",
            "+TV;>;)V"
        }
    .end annotation

    .line 166
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IntMap;, "Lcom/esotericsoftware/kryo/util/IntMap<TV;>;"
    .local p1, "map":Lcom/esotericsoftware/kryo/util/IntMap;, "Lcom/esotericsoftware/kryo/util/IntMap<+TV;>;"
    iget v0, p1, Lcom/esotericsoftware/kryo/util/IntMap;->size:I

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/util/IntMap;->ensureCapacity(I)V

    .line 167
    iget-boolean v0, p1, Lcom/esotericsoftware/kryo/util/IntMap;->hasZeroValue:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/esotericsoftware/kryo/util/IntMap;->zeroValue:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/util/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 168
    :cond_0
    iget-object v0, p1, Lcom/esotericsoftware/kryo/util/IntMap;->keyTable:[I

    .line 169
    .local v0, "keyTable":[I
    iget-object v1, p1, Lcom/esotericsoftware/kryo/util/IntMap;->valueTable:[Ljava/lang/Object;

    .line 170
    .local v1, "valueTable":[Ljava/lang/Object;, "[TV;"
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, v0

    .local v3, "n":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 171
    aget v4, v0, v2

    .line 172
    .local v4, "key":I
    if-eqz v4, :cond_1

    aget-object v5, v1, v2

    invoke-virtual {p0, v4, v5}, Lcom/esotericsoftware/kryo/util/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 170
    .end local v4    # "key":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 174
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_2
    return-void
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 10
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 202
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IntMap;, "Lcom/esotericsoftware/kryo/util/IntMap<TV;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 203
    iget-boolean v2, p0, Lcom/esotericsoftware/kryo/util/IntMap;->hasZeroValue:Z

    if-nez v2, :cond_0

    return-object v1

    .line 204
    :cond_0
    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/util/IntMap;->hasZeroValue:Z

    .line 205
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/IntMap;->zeroValue:Ljava/lang/Object;

    .line 206
    .local v0, "oldValue":Ljava/lang/Object;, "TV;"
    iput-object v1, p0, Lcom/esotericsoftware/kryo/util/IntMap;->zeroValue:Ljava/lang/Object;

    .line 207
    iget v1, p0, Lcom/esotericsoftware/kryo/util/IntMap;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/esotericsoftware/kryo/util/IntMap;->size:I

    .line 208
    return-object v0

    .line 211
    .end local v0    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_1
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/util/IntMap;->locateKey(I)I

    move-result v2

    .line 212
    .local v2, "i":I
    if-gez v2, :cond_2

    return-object v1

    .line 213
    :cond_2
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/IntMap;->keyTable:[I

    .line 214
    .local v1, "keyTable":[I
    iget-object v3, p0, Lcom/esotericsoftware/kryo/util/IntMap;->valueTable:[Ljava/lang/Object;

    .line 215
    .local v3, "valueTable":[Ljava/lang/Object;, "[TV;"
    aget-object v4, v3, v2

    .line 216
    .local v4, "oldValue":Ljava/lang/Object;, "TV;"
    iget v5, p0, Lcom/esotericsoftware/kryo/util/IntMap;->mask:I

    .local v5, "mask":I
    add-int/lit8 v6, v2, 0x1

    and-int/2addr v6, v5

    .line 217
    .local v6, "next":I
    :goto_0
    aget v7, v1, v6

    move p1, v7

    if-eqz v7, :cond_4

    .line 218
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/util/IntMap;->place(I)I

    move-result v7

    .line 219
    .local v7, "placement":I
    sub-int v8, v6, v7

    and-int/2addr v8, v5

    sub-int v9, v2, v7

    and-int/2addr v9, v5

    if-le v8, v9, :cond_3

    .line 220
    aput p1, v1, v2

    .line 221
    aget-object v8, v3, v6

    aput-object v8, v3, v2

    .line 222
    move v2, v6

    .line 224
    :cond_3
    add-int/lit8 v8, v6, 0x1

    and-int v6, v8, v5

    .line 225
    .end local v7    # "placement":I
    goto :goto_0

    .line 226
    :cond_4
    aput v0, v1, v2

    .line 227
    iget v0, p0, Lcom/esotericsoftware/kryo/util/IntMap;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/esotericsoftware/kryo/util/IntMap;->size:I

    .line 228
    return-object v4
.end method

.method public shrink(I)V
    .locals 3
    .param p1, "maximumCapacity"    # I

    .line 245
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IntMap;, "Lcom/esotericsoftware/kryo/util/IntMap<TV;>;"
    if-ltz p1, :cond_1

    .line 246
    iget v0, p0, Lcom/esotericsoftware/kryo/util/IntMap;->loadFactor:F

    invoke-static {p1, v0}, Lcom/esotericsoftware/kryo/util/ObjectMap;->tableSize(IF)I

    move-result v0

    .line 247
    .local v0, "tableSize":I
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/IntMap;->keyTable:[I

    array-length v1, v1

    if-le v1, v0, :cond_0

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/util/IntMap;->resize(I)V

    .line 248
    :cond_0
    return-void

    .line 245
    .end local v0    # "tableSize":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maximumCapacity must be >= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 414
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IntMap;, "Lcom/esotericsoftware/kryo/util/IntMap<TV;>;"
    iget v0, p0, Lcom/esotericsoftware/kryo/util/IntMap;->size:I

    if-nez v0, :cond_0

    const-string v0, "[]"

    return-object v0

    .line 415
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 416
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 417
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/IntMap;->keyTable:[I

    .line 418
    .local v1, "keyTable":[I
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/IntMap;->valueTable:[Ljava/lang/Object;

    .line 419
    .local v2, "valueTable":[Ljava/lang/Object;, "[TV;"
    array-length v3, v1

    .line 420
    .local v3, "i":I
    iget-boolean v4, p0, Lcom/esotericsoftware/kryo/util/IntMap;->hasZeroValue:Z

    const/16 v5, 0x3d

    if-eqz v4, :cond_1

    .line 421
    const-string v4, "0="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    iget-object v4, p0, Lcom/esotericsoftware/kryo/util/IntMap;->zeroValue:Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 424
    :cond_1
    :goto_0
    add-int/lit8 v4, v3, -0x1

    .end local v3    # "i":I
    .local v4, "i":I
    if-lez v3, :cond_3

    .line 425
    aget v3, v1, v4

    .line 426
    .local v3, "key":I
    if-nez v3, :cond_2

    move v3, v4

    goto :goto_0

    .line 427
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 428
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 429
    aget-object v6, v2, v4

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 430
    nop

    .line 433
    .end local v3    # "key":I
    :cond_3
    :goto_1
    move v3, v4

    .end local v4    # "i":I
    .local v3, "i":I
    :goto_2
    add-int/lit8 v4, v3, -0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    if-lez v3, :cond_5

    .line 434
    aget v3, v1, v4

    .line 435
    .local v3, "key":I
    if-nez v3, :cond_4

    goto :goto_1

    .line 436
    :cond_4
    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 438
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 439
    aget-object v6, v2, v4

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 440
    .end local v3    # "key":I
    goto :goto_1

    .line 441
    :cond_5
    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 442
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public values()Lcom/esotericsoftware/kryo/util/IntMap$Values;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/esotericsoftware/kryo/util/IntMap$Values<",
            "TV;>;"
        }
    .end annotation

    .line 456
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IntMap;, "Lcom/esotericsoftware/kryo/util/IntMap<TV;>;"
    new-instance v0, Lcom/esotericsoftware/kryo/util/IntMap$Values;

    invoke-direct {v0, p0}, Lcom/esotericsoftware/kryo/util/IntMap$Values;-><init>(Lcom/esotericsoftware/kryo/util/IntMap;)V

    return-object v0
.end method
