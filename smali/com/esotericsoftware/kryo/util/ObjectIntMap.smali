.class public Lcom/esotericsoftware/kryo/util/ObjectIntMap;
.super Ljava/lang/Object;
.source "ObjectIntMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/esotericsoftware/kryo/util/ObjectIntMap$Keys;,
        Lcom/esotericsoftware/kryo/util/ObjectIntMap$Values;,
        Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entries;,
        Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;,
        Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entry<",
        "TK;>;>;"
    }
.end annotation


# instance fields
.field keyTable:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field loadFactor:F

.field protected mask:I

.field protected shift:I

.field public size:I

.field threshold:I

.field valueTable:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 74
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectIntMap;, "Lcom/esotericsoftware/kryo/util/ObjectIntMap<TK;>;"
    const/16 v0, 0x33

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, v0, v1}, Lcom/esotericsoftware/kryo/util/ObjectIntMap;-><init>(IF)V

    .line 75
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .line 80
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectIntMap;, "Lcom/esotericsoftware/kryo/util/ObjectIntMap<TK;>;"
    const v0, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, p1, v0}, Lcom/esotericsoftware/kryo/util/ObjectIntMap;-><init>(IF)V

    .line 81
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 3
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .line 86
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectIntMap;, "Lcom/esotericsoftware/kryo/util/ObjectIntMap<TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-gez v0, :cond_0

    .line 89
    iput p2, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->loadFactor:F

    .line 91
    invoke-static {p1, p2}, Lcom/esotericsoftware/kryo/util/ObjectMap;->tableSize(IF)I

    move-result v0

    .line 92
    .local v0, "tableSize":I
    int-to-float v1, v0

    mul-float v1, v1, p2

    float-to-int v1, v1

    iput v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->threshold:I

    .line 93
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->mask:I

    .line 94
    iget v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->mask:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    iput v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->shift:I

    .line 96
    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 97
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->valueTable:[I

    .line 98
    return-void

    .line 88
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

.method public constructor <init>(Lcom/esotericsoftware/kryo/util/ObjectIntMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/util/ObjectIntMap<",
            "+TK;>;)V"
        }
    .end annotation

    .line 102
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectIntMap;, "Lcom/esotericsoftware/kryo/util/ObjectIntMap<TK;>;"
    .local p1, "map":Lcom/esotericsoftware/kryo/util/ObjectIntMap;, "Lcom/esotericsoftware/kryo/util/ObjectIntMap<+TK;>;"
    iget-object v0, p1, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    array-length v0, v0

    int-to-float v0, v0

    iget v1, p1, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->loadFactor:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    iget v1, p1, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->loadFactor:F

    invoke-direct {p0, v0, v1}, Lcom/esotericsoftware/kryo/util/ObjectIntMap;-><init>(IF)V

    .line 103
    iget-object v0, p1, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    iget-object v2, p1, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    iget-object v0, p1, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->valueTable:[I

    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->valueTable:[I

    iget-object v2, p1, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->valueTable:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    iget v0, p1, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->size:I

    iput v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->size:I

    .line 106
    return-void
.end method

.method private putResize(Ljava/lang/Object;I)V
    .locals 4
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)V"
        }
    .end annotation

    .line 164
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectIntMap;, "Lcom/esotericsoftware/kryo/util/ObjectIntMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 165
    .local v0, "keyTable":[Ljava/lang/Object;, "[TK;"
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->place(Ljava/lang/Object;)I

    move-result v1

    .line 166
    .local v1, "i":I
    :goto_0
    aget-object v2, v0, v1

    if-nez v2, :cond_0

    .line 167
    aput-object p1, v0, v1

    .line 168
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->valueTable:[I

    aput p2, v2, v1

    .line 169
    return-void

    .line 165
    :cond_0
    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->mask:I

    and-int v1, v2, v3

    goto :goto_0
.end method

.method private toString(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "braces"    # Z

    .line 345
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectIntMap;, "Lcom/esotericsoftware/kryo/util/ObjectIntMap<TK;>;"
    iget v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->size:I

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const-string/jumbo v0, "{}"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    .line 346
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 347
    .local v0, "buffer":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_2

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 348
    :cond_2
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 349
    .local v1, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->valueTable:[I

    .line 350
    .local v2, "valueTable":[I
    array-length v3, v1

    .line 351
    .local v3, "i":I
    :goto_1
    add-int/lit8 v4, v3, -0x1

    .end local v3    # "i":I
    .local v4, "i":I
    const/16 v5, 0x3d

    if-lez v3, :cond_4

    .line 352
    aget-object v3, v1, v4

    .line 353
    .local v3, "key":Ljava/lang/Object;, "TK;"
    if-nez v3, :cond_3

    move v3, v4

    goto :goto_1

    .line 354
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 355
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 356
    aget v6, v2, v4

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 357
    nop

    .line 359
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    :cond_4
    :goto_2
    add-int/lit8 v3, v4, -0x1

    .end local v4    # "i":I
    .local v3, "i":I
    if-lez v4, :cond_6

    .line 360
    aget-object v4, v1, v3

    .line 361
    .local v4, "key":Ljava/lang/Object;, "TK;"
    if-nez v4, :cond_5

    goto :goto_3

    .line 362
    :cond_5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 364
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 365
    aget v6, v2, v3

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 366
    .end local v4    # "key":Ljava/lang/Object;, "TK;"
    nop

    .line 359
    :goto_3
    move v4, v3

    goto :goto_2

    .line 367
    :cond_6
    if-eqz p2, :cond_7

    const/16 v4, 0x7d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 368
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 248
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectIntMap;, "Lcom/esotericsoftware/kryo/util/ObjectIntMap<TK;>;"
    iget v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->size:I

    if-nez v0, :cond_0

    return-void

    .line 249
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->size:I

    .line 250
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 251
    return-void
.end method

.method public clear(I)V
    .locals 2
    .param p1, "maximumCapacity"    # I

    .line 238
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectIntMap;, "Lcom/esotericsoftware/kryo/util/ObjectIntMap<TK;>;"
    iget v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->loadFactor:F

    invoke-static {p1, v0}, Lcom/esotericsoftware/kryo/util/ObjectMap;->tableSize(IF)I

    move-result v0

    .line 239
    .local v0, "tableSize":I
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    array-length v1, v1

    if-gt v1, v0, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->clear()V

    .line 241
    return-void

    .line 243
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->size:I

    .line 244
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->resize(I)V

    .line 245
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 264
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectIntMap;, "Lcom/esotericsoftware/kryo/util/ObjectIntMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->locateKey(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public containsValue(I)Z
    .locals 5
    .param p1, "value"    # I

    .line 256
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectIntMap;, "Lcom/esotericsoftware/kryo/util/ObjectIntMap<TK;>;"
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 257
    .local v0, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->valueTable:[I

    .line 258
    .local v1, "valueTable":[I
    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 259
    aget-object v4, v0, v2

    if-eqz v4, :cond_0

    aget v4, v1, v2

    if-ne v4, p1, :cond_0

    return v3

    .line 258
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 260
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public ensureCapacity(I)V
    .locals 2
    .param p1, "additionalCapacity"    # I

    .line 283
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectIntMap;, "Lcom/esotericsoftware/kryo/util/ObjectIntMap<TK;>;"
    iget v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->size:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->loadFactor:F

    invoke-static {v0, v1}, Lcom/esotericsoftware/kryo/util/ObjectMap;->tableSize(IF)I

    move-result v0

    .line 284
    .local v0, "tableSize":I
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->resize(I)V

    .line 285
    :cond_0
    return-void
.end method

.method public entries()Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entries<",
            "TK;>;"
        }
    .end annotation

    .line 377
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectIntMap;, "Lcom/esotericsoftware/kryo/util/ObjectIntMap<TK;>;"
    new-instance v0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entries;

    invoke-direct {v0, p0}, Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entries;-><init>(Lcom/esotericsoftware/kryo/util/ObjectIntMap;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "obj"    # Ljava/lang/Object;

    .line 319
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectIntMap;, "Lcom/esotericsoftware/kryo/util/ObjectIntMap<TK;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 320
    :cond_0
    instance-of v1, p1, Lcom/esotericsoftware/kryo/util/ObjectIntMap;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 321
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/esotericsoftware/kryo/util/ObjectIntMap;

    .line 322
    .local v1, "other":Lcom/esotericsoftware/kryo/util/ObjectIntMap;
    iget v3, v1, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->size:I

    iget v4, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->size:I

    if-eq v3, v4, :cond_2

    return v2

    .line 323
    :cond_2
    iget-object v3, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 324
    .local v3, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v4, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->valueTable:[I

    .line 325
    .local v4, "valueTable":[I
    const/4 v5, 0x0

    .local v5, "i":I
    array-length v6, v3

    .local v6, "n":I
    :goto_0
    if-ge v5, v6, :cond_5

    .line 326
    aget-object v7, v3, v5

    .line 327
    .local v7, "key":Ljava/lang/Object;, "TK;"
    if-eqz v7, :cond_4

    .line 328
    invoke-virtual {v1, v7, v2}, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->get(Ljava/lang/Object;I)I

    move-result v8

    .line 329
    .local v8, "otherValue":I
    if-nez v8, :cond_3

    invoke-virtual {v1, v7}, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    return v2

    .line 330
    :cond_3
    aget v9, v4, v5

    if-eq v8, v9, :cond_4

    return v2

    .line 325
    .end local v7    # "key":Ljava/lang/Object;, "TK;"
    .end local v8    # "otherValue":I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 333
    .end local v5    # "i":I
    .end local v6    # "n":I
    :cond_5
    return v0
.end method

.method public findKey(I)Ljava/lang/Object;
    .locals 5
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .line 271
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectIntMap;, "Lcom/esotericsoftware/kryo/util/ObjectIntMap<TK;>;"
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 272
    .local v0, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->valueTable:[I

    .line 273
    .local v1, "valueTable":[I
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 274
    aget-object v3, v0, v2

    .line 275
    .local v3, "key":Ljava/lang/Object;, "TK;"
    if-eqz v3, :cond_0

    aget v4, v1, v2

    if-ne v4, p1, :cond_0

    return-object v3

    .line 273
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 277
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public get(Ljava/lang/Object;I)I
    .locals 2
    .param p2, "defaultValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)I"
        }
    .end annotation

    .line 176
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectIntMap;, "Lcom/esotericsoftware/kryo/util/ObjectIntMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->locateKey(Ljava/lang/Object;)I

    move-result v0

    .line 177
    .local v0, "i":I
    if-gez v0, :cond_0

    move v1, p2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->valueTable:[I

    aget v1, v1, v0

    :goto_0
    return v1
.end method

.method public getAndIncrement(Ljava/lang/Object;II)I
    .locals 4
    .param p2, "defaultValue"    # I
    .param p3, "increment"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;II)I"
        }
    .end annotation

    .line 183
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectIntMap;, "Lcom/esotericsoftware/kryo/util/ObjectIntMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->locateKey(Ljava/lang/Object;)I

    move-result v0

    .line 184
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 185
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->valueTable:[I

    aget v1, v1, v0

    .line 186
    .local v1, "oldValue":I
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->valueTable:[I

    aget v3, v2, v0

    add-int/2addr v3, p3

    aput v3, v2, v0

    .line 187
    return v1

    .line 189
    .end local v1    # "oldValue":I
    :cond_0
    add-int/lit8 v1, v0, 0x1

    neg-int v0, v1

    .line 190
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 191
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->valueTable:[I

    add-int v2, p2, p3

    aput v2, v1, v0

    .line 192
    iget v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->size:I

    iget v2, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->threshold:I

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->resize(I)V

    .line 193
    :cond_1
    return p2
.end method

.method public hashCode()I
    .locals 8

    .line 308
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectIntMap;, "Lcom/esotericsoftware/kryo/util/ObjectIntMap<TK;>;"
    iget v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->size:I

    .line 309
    .local v0, "h":I
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 310
    .local v1, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->valueTable:[I

    .line 311
    .local v2, "valueTable":[I
    const/4 v3, 0x0

    .local v3, "i":I
    array-length v4, v1

    .local v4, "n":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 312
    aget-object v5, v1, v3

    .line 313
    .local v5, "key":Ljava/lang/Object;, "TK;"
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v6

    aget v7, v2, v3

    add-int/2addr v6, v7

    add-int/2addr v0, v6

    .line 311
    .end local v5    # "key":Ljava/lang/Object;, "TK;"
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 315
    .end local v3    # "i":I
    .end local v4    # "n":I
    :cond_1
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 224
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectIntMap;, "Lcom/esotericsoftware/kryo/util/ObjectIntMap<TK;>;"
    iget v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entries<",
            "TK;>;"
        }
    .end annotation

    .line 372
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectIntMap;, "Lcom/esotericsoftware/kryo/util/ObjectIntMap<TK;>;"
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->entries()Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 48
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectIntMap;, "Lcom/esotericsoftware/kryo/util/ObjectIntMap<TK;>;"
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->iterator()Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public keys()Lcom/esotericsoftware/kryo/util/ObjectIntMap$Keys;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/esotericsoftware/kryo/util/ObjectIntMap$Keys<",
            "TK;>;"
        }
    .end annotation

    .line 387
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectIntMap;, "Lcom/esotericsoftware/kryo/util/ObjectIntMap<TK;>;"
    new-instance v0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$Keys;

    invoke-direct {v0, p0}, Lcom/esotericsoftware/kryo/util/ObjectIntMap$Keys;-><init>(Lcom/esotericsoftware/kryo/util/ObjectIntMap;)V

    return-object v0
.end method

.method locateKey(Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .line 129
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectIntMap;, "Lcom/esotericsoftware/kryo/util/ObjectIntMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-eqz p1, :cond_2

    .line 130
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 131
    .local v0, "keyTable":[Ljava/lang/Object;, "[TK;"
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->place(Ljava/lang/Object;)I

    move-result v1

    .line 132
    .local v1, "i":I
    :goto_0
    aget-object v2, v0, v1

    .line 133
    .local v2, "other":Ljava/lang/Object;, "TK;"
    if-nez v2, :cond_0

    add-int/lit8 v3, v1, 0x1

    neg-int v3, v3

    return v3

    .line 134
    :cond_0
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    .line 131
    .end local v2    # "other":Ljava/lang/Object;, "TK;"
    :cond_1
    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->mask:I

    and-int v1, v2, v3

    goto :goto_0

    .line 129
    .end local v0    # "keyTable":[Ljava/lang/Object;, "[TK;"
    .end local v1    # "i":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public notEmpty()Z
    .locals 1

    .line 219
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectIntMap;, "Lcom/esotericsoftware/kryo/util/ObjectIntMap<TK;>;"
    iget v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->size:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected place(Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .line 123
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectIntMap;, "Lcom/esotericsoftware/kryo/util/ObjectIntMap<TK;>;"
    .local p1, "item":Ljava/lang/Object;, "TK;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, -0x61c8864680b583ebL

    mul-long v0, v0, v2

    iget v2, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->shift:I

    ushr-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public put(Ljava/lang/Object;I)V
    .locals 3
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)V"
        }
    .end annotation

    .line 140
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectIntMap;, "Lcom/esotericsoftware/kryo/util/ObjectIntMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->locateKey(Ljava/lang/Object;)I

    move-result v0

    .line 141
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 142
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->valueTable:[I

    aput p2, v1, v0

    .line 143
    return-void

    .line 145
    :cond_0
    add-int/lit8 v1, v0, 0x1

    neg-int v0, v1

    .line 146
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 147
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->valueTable:[I

    aput p2, v1, v0

    .line 148
    iget v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->size:I

    iget v2, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->threshold:I

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->resize(I)V

    .line 149
    :cond_1
    return-void
.end method

.method public putAll(Lcom/esotericsoftware/kryo/util/ObjectIntMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/util/ObjectIntMap<",
            "+TK;>;)V"
        }
    .end annotation

    .line 152
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectIntMap;, "Lcom/esotericsoftware/kryo/util/ObjectIntMap<TK;>;"
    .local p1, "map":Lcom/esotericsoftware/kryo/util/ObjectIntMap;, "Lcom/esotericsoftware/kryo/util/ObjectIntMap<+TK;>;"
    iget v0, p1, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->size:I

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->ensureCapacity(I)V

    .line 153
    iget-object v0, p1, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 154
    .local v0, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v1, p1, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->valueTable:[I

    .line 156
    .local v1, "valueTable":[I
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, v0

    .local v3, "n":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 157
    aget-object v4, v0, v2

    .line 158
    .local v4, "key":Ljava/lang/Object;, "TK;"
    if-eqz v4, :cond_0

    aget v5, v1, v2

    invoke-virtual {p0, v4, v5}, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->put(Ljava/lang/Object;I)V

    .line 156
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 160
    .end local v2    # "i":I
    .end local v3    # "n":I
    .end local v4    # "key":Ljava/lang/Object;, "TK;"
    :cond_1
    return-void
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 9
    .param p2, "defaultValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)I"
        }
    .end annotation

    .line 197
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectIntMap;, "Lcom/esotericsoftware/kryo/util/ObjectIntMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->locateKey(Ljava/lang/Object;)I

    move-result v0

    .line 198
    .local v0, "i":I
    if-gez v0, :cond_0

    return p2

    .line 199
    :cond_0
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 200
    .local v1, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->valueTable:[I

    .line 201
    .local v2, "valueTable":[I
    aget v3, v2, v0

    .line 202
    .local v3, "oldValue":I
    iget v4, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->mask:I

    .local v4, "mask":I
    add-int/lit8 v5, v0, 0x1

    and-int/2addr v5, v4

    .line 203
    .local v5, "next":I
    :goto_0
    aget-object v6, v1, v5

    move-object p1, v6

    if-eqz v6, :cond_2

    .line 204
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->place(Ljava/lang/Object;)I

    move-result v6

    .line 205
    .local v6, "placement":I
    sub-int v7, v5, v6

    and-int/2addr v7, v4

    sub-int v8, v0, v6

    and-int/2addr v8, v4

    if-le v7, v8, :cond_1

    .line 206
    aput-object p1, v1, v0

    .line 207
    aget v7, v2, v5

    aput v7, v2, v0

    .line 208
    move v0, v5

    .line 210
    :cond_1
    add-int/lit8 v7, v5, 0x1

    and-int v5, v7, v4

    .line 211
    .end local v6    # "placement":I
    goto :goto_0

    .line 212
    :cond_2
    const/4 v6, 0x0

    aput-object v6, v1, v0

    .line 213
    iget v6, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->size:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->size:I

    .line 214
    return v3
.end method

.method final resize(I)V
    .locals 6
    .param p1, "newSize"    # I

    .line 288
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectIntMap;, "Lcom/esotericsoftware/kryo/util/ObjectIntMap<TK;>;"
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    array-length v0, v0

    .line 289
    .local v0, "oldCapacity":I
    int-to-float v1, p1

    iget v2, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->loadFactor:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->threshold:I

    .line 290
    add-int/lit8 v1, p1, -0x1

    iput v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->mask:I

    .line 291
    iget v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->mask:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    iput v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->shift:I

    .line 293
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 294
    .local v1, "oldKeyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->valueTable:[I

    .line 296
    .local v2, "oldValueTable":[I
    new-array v3, p1, [Ljava/lang/Object;

    iput-object v3, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 297
    new-array v3, p1, [I

    iput-object v3, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->valueTable:[I

    .line 299
    iget v3, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->size:I

    if-lez v3, :cond_1

    .line 300
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 301
    aget-object v4, v1, v3

    .line 302
    .local v4, "key":Ljava/lang/Object;, "TK;"
    if-eqz v4, :cond_0

    aget v5, v2, v3

    invoke-direct {p0, v4, v5}, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->putResize(Ljava/lang/Object;I)V

    .line 300
    .end local v4    # "key":Ljava/lang/Object;, "TK;"
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 305
    .end local v3    # "i":I
    :cond_1
    return-void
.end method

.method public shrink(I)V
    .locals 3
    .param p1, "maximumCapacity"    # I

    .line 231
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectIntMap;, "Lcom/esotericsoftware/kryo/util/ObjectIntMap<TK;>;"
    if-ltz p1, :cond_1

    .line 232
    iget v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->loadFactor:F

    invoke-static {p1, v0}, Lcom/esotericsoftware/kryo/util/ObjectMap;->tableSize(IF)I

    move-result v0

    .line 233
    .local v0, "tableSize":I
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    array-length v1, v1

    if-le v1, v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->resize(I)V

    .line 234
    :cond_0
    return-void

    .line 231
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
    .locals 2

    .line 341
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectIntMap;, "Lcom/esotericsoftware/kryo/util/ObjectIntMap<TK;>;"
    const-string v0, ", "

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->toString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "separator"    # Ljava/lang/String;

    .line 337
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectIntMap;, "Lcom/esotericsoftware/kryo/util/ObjectIntMap<TK;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->toString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Lcom/esotericsoftware/kryo/util/ObjectIntMap$Values;
    .locals 1

    .line 382
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectIntMap;, "Lcom/esotericsoftware/kryo/util/ObjectIntMap<TK;>;"
    new-instance v0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$Values;

    invoke-direct {v0, p0}, Lcom/esotericsoftware/kryo/util/ObjectIntMap$Values;-><init>(Lcom/esotericsoftware/kryo/util/ObjectIntMap;)V

    return-object v0
.end method
