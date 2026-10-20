.class public Lcom/esotericsoftware/kryo/util/ObjectMap;
.super Ljava/lang/Object;
.source "ObjectMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/esotericsoftware/kryo/util/ObjectMap$Keys;,
        Lcom/esotericsoftware/kryo/util/ObjectMap$Values;,
        Lcom/esotericsoftware/kryo/util/ObjectMap$Entries;,
        Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;,
        Lcom/esotericsoftware/kryo/util/ObjectMap$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/esotericsoftware/kryo/util/ObjectMap$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field static final dummy:Ljava/lang/Object;


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

.field valueTable:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/esotericsoftware/kryo/util/ObjectMap;->dummy:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 71
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectMap;, "Lcom/esotericsoftware/kryo/util/ObjectMap<TK;TV;>;"
    const/16 v0, 0x33

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, v0, v1}, Lcom/esotericsoftware/kryo/util/ObjectMap;-><init>(IF)V

    .line 72
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .line 77
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectMap;, "Lcom/esotericsoftware/kryo/util/ObjectMap<TK;TV;>;"
    const v0, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, p1, v0}, Lcom/esotericsoftware/kryo/util/ObjectMap;-><init>(IF)V

    .line 78
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 3
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .line 83
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectMap;, "Lcom/esotericsoftware/kryo/util/ObjectMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-gez v0, :cond_0

    .line 86
    iput p2, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->loadFactor:F

    .line 88
    invoke-static {p1, p2}, Lcom/esotericsoftware/kryo/util/ObjectMap;->tableSize(IF)I

    move-result v0

    .line 89
    .local v0, "tableSize":I
    int-to-float v1, v0

    mul-float v1, v1, p2

    float-to-int v1, v1

    iput v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->threshold:I

    .line 90
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->mask:I

    .line 91
    iget v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->mask:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    iput v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->shift:I

    .line 93
    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->keyTable:[Ljava/lang/Object;

    .line 94
    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->valueTable:[Ljava/lang/Object;

    .line 95
    return-void

    .line 85
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

.method public constructor <init>(Lcom/esotericsoftware/kryo/util/ObjectMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/util/ObjectMap<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 99
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectMap;, "Lcom/esotericsoftware/kryo/util/ObjectMap<TK;TV;>;"
    .local p1, "map":Lcom/esotericsoftware/kryo/util/ObjectMap;, "Lcom/esotericsoftware/kryo/util/ObjectMap<+TK;+TV;>;"
    iget-object v0, p1, Lcom/esotericsoftware/kryo/util/ObjectMap;->keyTable:[Ljava/lang/Object;

    array-length v0, v0

    int-to-float v0, v0

    iget v1, p1, Lcom/esotericsoftware/kryo/util/ObjectMap;->loadFactor:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    iget v1, p1, Lcom/esotericsoftware/kryo/util/ObjectMap;->loadFactor:F

    invoke-direct {p0, v0, v1}, Lcom/esotericsoftware/kryo/util/ObjectMap;-><init>(IF)V

    .line 100
    iget-object v0, p1, Lcom/esotericsoftware/kryo/util/ObjectMap;->keyTable:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->keyTable:[Ljava/lang/Object;

    iget-object v2, p1, Lcom/esotericsoftware/kryo/util/ObjectMap;->keyTable:[Ljava/lang/Object;

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    iget-object v0, p1, Lcom/esotericsoftware/kryo/util/ObjectMap;->valueTable:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->valueTable:[Ljava/lang/Object;

    iget-object v2, p1, Lcom/esotericsoftware/kryo/util/ObjectMap;->valueTable:[Ljava/lang/Object;

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    iget v0, p1, Lcom/esotericsoftware/kryo/util/ObjectMap;->size:I

    iput v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->size:I

    .line 103
    return-void
.end method

.method public static nextPowerOfTwo(I)I
    .locals 1
    .param p0, "value"    # I

    .line 434
    if-nez p0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 435
    :cond_0
    add-int/lit8 p0, p0, -0x1

    .line 436
    shr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 437
    shr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 438
    shr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 439
    shr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 440
    shr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 441
    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method private putResize(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 164
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectMap;, "Lcom/esotericsoftware/kryo/util/ObjectMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->keyTable:[Ljava/lang/Object;

    .line 165
    .local v0, "keyTable":[Ljava/lang/Object;, "[TK;"
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/util/ObjectMap;->place(Ljava/lang/Object;)I

    move-result v1

    .line 166
    .local v1, "i":I
    :goto_0
    aget-object v2, v0, v1

    if-nez v2, :cond_0

    .line 167
    aput-object p1, v0, v1

    .line 168
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v2, v1

    .line 169
    return-void

    .line 165
    :cond_0
    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->mask:I

    and-int v1, v2, v3

    goto :goto_0
.end method

.method public static tableSize(IF)I
    .locals 4
    .param p0, "capacity"    # I
    .param p1, "loadFactor"    # F

    .line 427
    if-ltz p0, :cond_1

    .line 428
    int-to-float v0, p0

    div-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Lcom/esotericsoftware/kryo/util/ObjectMap;->nextPowerOfTwo(I)I

    move-result v0

    .line 429
    .local v0, "tableSize":I
    const/high16 v1, 0x40000000    # 2.0f

    if-gt v0, v1, :cond_0

    .line 430
    return v0

    .line 429
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The required capacity is too large: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 427
    .end local v0    # "tableSize":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "capacity must be >= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private toString(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "braces"    # Z

    .line 379
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectMap;, "Lcom/esotericsoftware/kryo/util/ObjectMap<TK;TV;>;"
    iget v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->size:I

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const-string/jumbo v0, "{}"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    .line 380
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 381
    .local v0, "buffer":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_2

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 382
    :cond_2
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->keyTable:[Ljava/lang/Object;

    .line 383
    .local v1, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->valueTable:[Ljava/lang/Object;

    .line 384
    .local v2, "valueTable":[Ljava/lang/Object;, "[TV;"
    array-length v3, v1

    .line 385
    .local v3, "i":I
    :goto_1
    add-int/lit8 v4, v3, -0x1

    .end local v3    # "i":I
    .local v4, "i":I
    const/16 v5, 0x3d

    const-string v6, "(this)"

    if-lez v3, :cond_6

    .line 386
    aget-object v3, v1, v4

    .line 387
    .local v3, "key":Ljava/lang/Object;, "TK;"
    if-nez v3, :cond_3

    move v3, v4

    goto :goto_1

    .line 388
    :cond_3
    if-ne v3, p0, :cond_4

    move-object v7, v6

    goto :goto_2

    :cond_4
    move-object v7, v3

    :goto_2
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 390
    aget-object v7, v2, v4

    .line 391
    .local v7, "value":Ljava/lang/Object;, "TV;"
    if-ne v7, p0, :cond_5

    move-object v8, v6

    goto :goto_3

    :cond_5
    move-object v8, v7

    :goto_3
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 392
    nop

    .line 394
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    .end local v7    # "value":Ljava/lang/Object;, "TV;"
    :cond_6
    :goto_4
    add-int/lit8 v3, v4, -0x1

    .end local v4    # "i":I
    .local v3, "i":I
    if-lez v4, :cond_a

    .line 395
    aget-object v4, v1, v3

    .line 396
    .local v4, "key":Ljava/lang/Object;, "TK;"
    if-nez v4, :cond_7

    goto :goto_7

    .line 397
    :cond_7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    if-ne v4, p0, :cond_8

    move-object v7, v6

    goto :goto_5

    :cond_8
    move-object v7, v4

    :goto_5
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 399
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 400
    aget-object v7, v2, v3

    .line 401
    .restart local v7    # "value":Ljava/lang/Object;, "TV;"
    if-ne v7, p0, :cond_9

    move-object v8, v6

    goto :goto_6

    :cond_9
    move-object v8, v7

    :goto_6
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 402
    .end local v4    # "key":Ljava/lang/Object;, "TK;"
    .end local v7    # "value":Ljava/lang/Object;, "TV;"
    nop

    .line 394
    :goto_7
    move v4, v3

    goto :goto_4

    .line 403
    :cond_a
    if-eqz p2, :cond_b

    const/16 v4, 0x7d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 404
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 241
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectMap;, "Lcom/esotericsoftware/kryo/util/ObjectMap<TK;TV;>;"
    iget v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->size:I

    if-nez v0, :cond_0

    return-void

    .line 242
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->size:I

    .line 243
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->keyTable:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 244
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->valueTable:[Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 245
    return-void
.end method

.method public clear(I)V
    .locals 2
    .param p1, "maximumCapacity"    # I

    .line 231
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectMap;, "Lcom/esotericsoftware/kryo/util/ObjectMap<TK;TV;>;"
    iget v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->loadFactor:F

    invoke-static {p1, v0}, Lcom/esotericsoftware/kryo/util/ObjectMap;->tableSize(IF)I

    move-result v0

    .line 232
    .local v0, "tableSize":I
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->keyTable:[Ljava/lang/Object;

    array-length v1, v1

    if-gt v1, v0, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/ObjectMap;->clear()V

    .line 234
    return-void

    .line 236
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->size:I

    .line 237
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/util/ObjectMap;->resize(I)V

    .line 238
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 268
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectMap;, "Lcom/esotericsoftware/kryo/util/ObjectMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/util/ObjectMap;->locateKey(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public containsValue(Ljava/lang/Object;Z)Z
    .locals 5
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "identity"    # Z

    .line 252
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectMap;, "Lcom/esotericsoftware/kryo/util/ObjectMap<TK;TV;>;"
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->valueTable:[Ljava/lang/Object;

    .line 253
    .local v0, "valueTable":[Ljava/lang/Object;, "[TV;"
    const/4 v1, 0x1

    if-nez p1, :cond_2

    .line 254
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->keyTable:[Ljava/lang/Object;

    .line 255
    .local v2, "keyTable":[Ljava/lang/Object;, "[TK;"
    array-length v3, v0

    sub-int/2addr v3, v1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 256
    aget-object v4, v2, v3

    if-eqz v4, :cond_0

    aget-object v4, v0, v3

    if-nez v4, :cond_0

    return v1

    .line 255
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 257
    .end local v2    # "keyTable":[Ljava/lang/Object;, "[TK;"
    .end local v3    # "i":I
    :cond_1
    goto :goto_3

    :cond_2
    if-eqz p2, :cond_5

    .line 258
    array-length v2, v0

    sub-int/2addr v2, v1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_4

    .line 259
    aget-object v3, v0, v2

    if-ne v3, p1, :cond_3

    return v1

    .line 258
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .end local v2    # "i":I
    :cond_4
    goto :goto_3

    .line 261
    :cond_5
    array-length v2, v0

    sub-int/2addr v2, v1

    .restart local v2    # "i":I
    :goto_2
    if-ltz v2, :cond_7

    .line 262
    aget-object v3, v0, v2

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    return v1

    .line 261
    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 264
    .end local v2    # "i":I
    :cond_7
    :goto_3
    const/4 v1, 0x0

    return v1
.end method

.method public ensureCapacity(I)V
    .locals 2
    .param p1, "additionalCapacity"    # I

    .line 295
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectMap;, "Lcom/esotericsoftware/kryo/util/ObjectMap<TK;TV;>;"
    iget v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->size:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->loadFactor:F

    invoke-static {v0, v1}, Lcom/esotericsoftware/kryo/util/ObjectMap;->tableSize(IF)I

    move-result v0

    .line 296
    .local v0, "tableSize":I
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->keyTable:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/util/ObjectMap;->resize(I)V

    .line 297
    :cond_0
    return-void
.end method

.method public entries()Lcom/esotericsoftware/kryo/util/ObjectMap$Entries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/esotericsoftware/kryo/util/ObjectMap$Entries<",
            "TK;TV;>;"
        }
    .end annotation

    .line 413
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectMap;, "Lcom/esotericsoftware/kryo/util/ObjectMap<TK;TV;>;"
    new-instance v0, Lcom/esotericsoftware/kryo/util/ObjectMap$Entries;

    invoke-direct {v0, p0}, Lcom/esotericsoftware/kryo/util/ObjectMap$Entries;-><init>(Lcom/esotericsoftware/kryo/util/ObjectMap;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "obj"    # Ljava/lang/Object;

    .line 335
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectMap;, "Lcom/esotericsoftware/kryo/util/ObjectMap<TK;TV;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 336
    :cond_0
    instance-of v1, p1, Lcom/esotericsoftware/kryo/util/ObjectMap;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 337
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/esotericsoftware/kryo/util/ObjectMap;

    .line 338
    .local v1, "other":Lcom/esotericsoftware/kryo/util/ObjectMap;
    iget v3, v1, Lcom/esotericsoftware/kryo/util/ObjectMap;->size:I

    iget v4, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->size:I

    if-eq v3, v4, :cond_2

    return v2

    .line 339
    :cond_2
    iget-object v3, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->keyTable:[Ljava/lang/Object;

    .line 340
    .local v3, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v4, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->valueTable:[Ljava/lang/Object;

    .line 341
    .local v4, "valueTable":[Ljava/lang/Object;, "[TV;"
    const/4 v5, 0x0

    .local v5, "i":I
    array-length v6, v3

    .local v6, "n":I
    :goto_0
    if-ge v5, v6, :cond_5

    .line 342
    aget-object v7, v3, v5

    .line 343
    .local v7, "key":Ljava/lang/Object;, "TK;"
    if-eqz v7, :cond_4

    .line 344
    aget-object v8, v4, v5

    .line 345
    .local v8, "value":Ljava/lang/Object;, "TV;"
    if-nez v8, :cond_3

    .line 346
    sget-object v9, Lcom/esotericsoftware/kryo/util/ObjectMap;->dummy:Ljava/lang/Object;

    invoke-virtual {v1, v7, v9}, Lcom/esotericsoftware/kryo/util/ObjectMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_4

    return v2

    .line 348
    :cond_3
    invoke-virtual {v1, v7}, Lcom/esotericsoftware/kryo/util/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    return v2

    .line 341
    .end local v7    # "key":Ljava/lang/Object;, "TK;"
    .end local v8    # "value":Ljava/lang/Object;, "TV;"
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 352
    .end local v5    # "i":I
    .end local v6    # "n":I
    :cond_5
    return v0
.end method

.method public equalsIdentity(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "obj"    # Ljava/lang/Object;

    .line 357
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectMap;, "Lcom/esotericsoftware/kryo/util/ObjectMap<TK;TV;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 358
    :cond_0
    instance-of v1, p1, Lcom/esotericsoftware/kryo/util/ObjectMap;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 359
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/esotericsoftware/kryo/util/ObjectMap;

    .line 360
    .local v1, "other":Lcom/esotericsoftware/kryo/util/ObjectMap;
    iget v3, v1, Lcom/esotericsoftware/kryo/util/ObjectMap;->size:I

    iget v4, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->size:I

    if-eq v3, v4, :cond_2

    return v2

    .line 361
    :cond_2
    iget-object v3, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->keyTable:[Ljava/lang/Object;

    .line 362
    .local v3, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v4, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->valueTable:[Ljava/lang/Object;

    .line 363
    .local v4, "valueTable":[Ljava/lang/Object;, "[TV;"
    const/4 v5, 0x0

    .local v5, "i":I
    array-length v6, v3

    .local v6, "n":I
    :goto_0
    if-ge v5, v6, :cond_4

    .line 364
    aget-object v7, v3, v5

    .line 365
    .local v7, "key":Ljava/lang/Object;, "TK;"
    if-eqz v7, :cond_3

    aget-object v8, v4, v5

    sget-object v9, Lcom/esotericsoftware/kryo/util/ObjectMap;->dummy:Ljava/lang/Object;

    invoke-virtual {v1, v7, v9}, Lcom/esotericsoftware/kryo/util/ObjectMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eq v8, v9, :cond_3

    return v2

    .line 363
    .end local v7    # "key":Ljava/lang/Object;, "TK;"
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 367
    .end local v5    # "i":I
    .end local v6    # "n":I
    :cond_4
    return v0
.end method

.method public findKey(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "identity"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Z)TK;"
        }
    .end annotation

    .line 277
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectMap;, "Lcom/esotericsoftware/kryo/util/ObjectMap<TK;TV;>;"
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->valueTable:[Ljava/lang/Object;

    .line 278
    .local v0, "valueTable":[Ljava/lang/Object;, "[TV;"
    if-nez p1, :cond_2

    .line 279
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->keyTable:[Ljava/lang/Object;

    .line 280
    .local v1, "keyTable":[Ljava/lang/Object;, "[TK;"
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 281
    aget-object v3, v1, v2

    if-eqz v3, :cond_0

    aget-object v3, v0, v2

    if-nez v3, :cond_0

    aget-object v3, v1, v2

    return-object v3

    .line 280
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 282
    .end local v1    # "keyTable":[Ljava/lang/Object;, "[TK;"
    .end local v2    # "i":I
    :cond_1
    goto :goto_3

    :cond_2
    if-eqz p2, :cond_5

    .line 283
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_4

    .line 284
    aget-object v2, v0, v1

    if-ne v2, p1, :cond_3

    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    return-object v2

    .line 283
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .end local v1    # "i":I
    :cond_4
    goto :goto_3

    .line 286
    :cond_5
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_2
    if-ltz v1, :cond_7

    .line 287
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    return-object v2

    .line 286
    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 289
    .end local v1    # "i":I
    :cond_7
    :goto_3
    const/4 v1, 0x0

    return-object v1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TK;>(TT;)TV;"
        }
    .end annotation

    .line 177
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectMap;, "Lcom/esotericsoftware/kryo/util/ObjectMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/util/ObjectMap;->locateKey(Ljava/lang/Object;)I

    move-result v0

    .line 178
    .local v0, "i":I
    if-gez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->valueTable:[Ljava/lang/Object;

    aget-object v1, v1, v0

    :goto_0
    return-object v1
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 183
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectMap;, "Lcom/esotericsoftware/kryo/util/ObjectMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/util/ObjectMap;->locateKey(Ljava/lang/Object;)I

    move-result v0

    .line 184
    .local v0, "i":I
    if-gez v0, :cond_0

    move-object v1, p2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->valueTable:[Ljava/lang/Object;

    aget-object v1, v1, v0

    :goto_0
    return-object v1
.end method

.method public hashCode()I
    .locals 8

    .line 320
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectMap;, "Lcom/esotericsoftware/kryo/util/ObjectMap<TK;TV;>;"
    iget v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->size:I

    .line 321
    .local v0, "h":I
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->keyTable:[Ljava/lang/Object;

    .line 322
    .local v1, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->valueTable:[Ljava/lang/Object;

    .line 323
    .local v2, "valueTable":[Ljava/lang/Object;, "[TV;"
    const/4 v3, 0x0

    .local v3, "i":I
    array-length v4, v1

    .local v4, "n":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 324
    aget-object v5, v1, v3

    .line 325
    .local v5, "key":Ljava/lang/Object;, "TK;"
    if-eqz v5, :cond_0

    .line 326
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v6

    add-int/2addr v0, v6

    .line 327
    aget-object v6, v2, v3

    .line 328
    .local v6, "value":Ljava/lang/Object;, "TV;"
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v7

    add-int/2addr v0, v7

    .line 323
    .end local v5    # "key":Ljava/lang/Object;, "TK;"
    .end local v6    # "value":Ljava/lang/Object;, "TV;"
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 331
    .end local v3    # "i":I
    .end local v4    # "n":I
    :cond_1
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 217
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectMap;, "Lcom/esotericsoftware/kryo/util/ObjectMap<TK;TV;>;"
    iget v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Lcom/esotericsoftware/kryo/util/ObjectMap$Entries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/esotericsoftware/kryo/util/ObjectMap$Entries<",
            "TK;TV;>;"
        }
    .end annotation

    .line 408
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectMap;, "Lcom/esotericsoftware/kryo/util/ObjectMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/ObjectMap;->entries()Lcom/esotericsoftware/kryo/util/ObjectMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 43
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectMap;, "Lcom/esotericsoftware/kryo/util/ObjectMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/ObjectMap;->iterator()Lcom/esotericsoftware/kryo/util/ObjectMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public keys()Lcom/esotericsoftware/kryo/util/ObjectMap$Keys;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/esotericsoftware/kryo/util/ObjectMap$Keys<",
            "TK;>;"
        }
    .end annotation

    .line 423
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectMap;, "Lcom/esotericsoftware/kryo/util/ObjectMap<TK;TV;>;"
    new-instance v0, Lcom/esotericsoftware/kryo/util/ObjectMap$Keys;

    invoke-direct {v0, p0}, Lcom/esotericsoftware/kryo/util/ObjectMap$Keys;-><init>(Lcom/esotericsoftware/kryo/util/ObjectMap;)V

    return-object v0
.end method

.method locateKey(Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .line 126
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectMap;, "Lcom/esotericsoftware/kryo/util/ObjectMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-eqz p1, :cond_2

    .line 127
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->keyTable:[Ljava/lang/Object;

    .line 128
    .local v0, "keyTable":[Ljava/lang/Object;, "[TK;"
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/util/ObjectMap;->place(Ljava/lang/Object;)I

    move-result v1

    .line 129
    .local v1, "i":I
    :goto_0
    aget-object v2, v0, v1

    .line 130
    .local v2, "other":Ljava/lang/Object;, "TK;"
    if-nez v2, :cond_0

    add-int/lit8 v3, v1, 0x1

    neg-int v3, v3

    return v3

    .line 131
    :cond_0
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    .line 128
    .end local v2    # "other":Ljava/lang/Object;, "TK;"
    :cond_1
    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->mask:I

    and-int v1, v2, v3

    goto :goto_0

    .line 126
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

    .line 212
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectMap;, "Lcom/esotericsoftware/kryo/util/ObjectMap<TK;TV;>;"
    iget v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->size:I

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

    .line 120
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectMap;, "Lcom/esotericsoftware/kryo/util/ObjectMap<TK;TV;>;"
    .local p1, "item":Ljava/lang/Object;, "TK;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, -0x61c8864680b583ebL

    mul-long v0, v0, v2

    iget v2, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->shift:I

    ushr-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 138
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectMap;, "Lcom/esotericsoftware/kryo/util/ObjectMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/util/ObjectMap;->locateKey(Ljava/lang/Object;)I

    move-result v0

    .line 139
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 140
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->valueTable:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 141
    .local v1, "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v2, v0

    .line 142
    return-object v1

    .line 144
    .end local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_0
    add-int/lit8 v1, v0, 0x1

    neg-int v0, v1

    .line 145
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->keyTable:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 146
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 147
    iget v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->size:I

    iget v2, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->threshold:I

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->keyTable:[Ljava/lang/Object;

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/util/ObjectMap;->resize(I)V

    .line 148
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public putAll(Lcom/esotericsoftware/kryo/util/ObjectMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/util/ObjectMap<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 152
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectMap;, "Lcom/esotericsoftware/kryo/util/ObjectMap<TK;TV;>;"
    .local p1, "map":Lcom/esotericsoftware/kryo/util/ObjectMap;, "Lcom/esotericsoftware/kryo/util/ObjectMap<+TK;+TV;>;"
    iget v0, p1, Lcom/esotericsoftware/kryo/util/ObjectMap;->size:I

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/util/ObjectMap;->ensureCapacity(I)V

    .line 153
    iget-object v0, p1, Lcom/esotericsoftware/kryo/util/ObjectMap;->keyTable:[Ljava/lang/Object;

    .line 154
    .local v0, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v1, p1, Lcom/esotericsoftware/kryo/util/ObjectMap;->valueTable:[Ljava/lang/Object;

    .line 156
    .local v1, "valueTable":[Ljava/lang/Object;, "[TV;"
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

    aget-object v5, v1, v2

    invoke-virtual {p0, v4, v5}, Lcom/esotericsoftware/kryo/util/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 189
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectMap;, "Lcom/esotericsoftware/kryo/util/ObjectMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/util/ObjectMap;->locateKey(Ljava/lang/Object;)I

    move-result v0

    .line 190
    .local v0, "i":I
    const/4 v1, 0x0

    if-gez v0, :cond_0

    return-object v1

    .line 191
    :cond_0
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->keyTable:[Ljava/lang/Object;

    .line 192
    .local v2, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v3, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->valueTable:[Ljava/lang/Object;

    .line 193
    .local v3, "valueTable":[Ljava/lang/Object;, "[TV;"
    aget-object v4, v3, v0

    .line 194
    .local v4, "oldValue":Ljava/lang/Object;, "TV;"
    iget v5, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->mask:I

    .local v5, "mask":I
    add-int/lit8 v6, v0, 0x1

    and-int/2addr v6, v5

    .line 195
    .local v6, "next":I
    :goto_0
    aget-object v7, v2, v6

    move-object p1, v7

    if-eqz v7, :cond_2

    .line 196
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/util/ObjectMap;->place(Ljava/lang/Object;)I

    move-result v7

    .line 197
    .local v7, "placement":I
    sub-int v8, v6, v7

    and-int/2addr v8, v5

    sub-int v9, v0, v7

    and-int/2addr v9, v5

    if-le v8, v9, :cond_1

    .line 198
    aput-object p1, v2, v0

    .line 199
    aget-object v8, v3, v6

    aput-object v8, v3, v0

    .line 200
    move v0, v6

    .line 202
    :cond_1
    add-int/lit8 v8, v6, 0x1

    and-int v6, v8, v5

    .line 203
    .end local v7    # "placement":I
    goto :goto_0

    .line 204
    :cond_2
    aput-object v1, v2, v0

    .line 205
    aput-object v1, v3, v0

    .line 206
    iget v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->size:I

    .line 207
    return-object v4
.end method

.method final resize(I)V
    .locals 6
    .param p1, "newSize"    # I

    .line 300
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectMap;, "Lcom/esotericsoftware/kryo/util/ObjectMap<TK;TV;>;"
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->keyTable:[Ljava/lang/Object;

    array-length v0, v0

    .line 301
    .local v0, "oldCapacity":I
    int-to-float v1, p1

    iget v2, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->loadFactor:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->threshold:I

    .line 302
    add-int/lit8 v1, p1, -0x1

    iput v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->mask:I

    .line 303
    iget v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->mask:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    iput v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->shift:I

    .line 305
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->keyTable:[Ljava/lang/Object;

    .line 306
    .local v1, "oldKeyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->valueTable:[Ljava/lang/Object;

    .line 308
    .local v2, "oldValueTable":[Ljava/lang/Object;, "[TV;"
    new-array v3, p1, [Ljava/lang/Object;

    iput-object v3, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->keyTable:[Ljava/lang/Object;

    .line 309
    new-array v3, p1, [Ljava/lang/Object;

    iput-object v3, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->valueTable:[Ljava/lang/Object;

    .line 311
    iget v3, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->size:I

    if-lez v3, :cond_1

    .line 312
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 313
    aget-object v4, v1, v3

    .line 314
    .local v4, "key":Ljava/lang/Object;, "TK;"
    if-eqz v4, :cond_0

    aget-object v5, v2, v3

    invoke-direct {p0, v4, v5}, Lcom/esotericsoftware/kryo/util/ObjectMap;->putResize(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 312
    .end local v4    # "key":Ljava/lang/Object;, "TK;"
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 317
    .end local v3    # "i":I
    :cond_1
    return-void
.end method

.method public shrink(I)V
    .locals 3
    .param p1, "maximumCapacity"    # I

    .line 224
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectMap;, "Lcom/esotericsoftware/kryo/util/ObjectMap<TK;TV;>;"
    if-ltz p1, :cond_1

    .line 225
    iget v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->loadFactor:F

    invoke-static {p1, v0}, Lcom/esotericsoftware/kryo/util/ObjectMap;->tableSize(IF)I

    move-result v0

    .line 226
    .local v0, "tableSize":I
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->keyTable:[Ljava/lang/Object;

    array-length v1, v1

    if-le v1, v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/util/ObjectMap;->resize(I)V

    .line 227
    :cond_0
    return-void

    .line 224
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

    .line 375
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectMap;, "Lcom/esotericsoftware/kryo/util/ObjectMap<TK;TV;>;"
    const-string v0, ", "

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/esotericsoftware/kryo/util/ObjectMap;->toString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "separator"    # Ljava/lang/String;

    .line 371
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectMap;, "Lcom/esotericsoftware/kryo/util/ObjectMap<TK;TV;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/esotericsoftware/kryo/util/ObjectMap;->toString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Lcom/esotericsoftware/kryo/util/ObjectMap$Values;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/esotericsoftware/kryo/util/ObjectMap$Values<",
            "TV;>;"
        }
    .end annotation

    .line 418
    .local p0, "this":Lcom/esotericsoftware/kryo/util/ObjectMap;, "Lcom/esotericsoftware/kryo/util/ObjectMap<TK;TV;>;"
    new-instance v0, Lcom/esotericsoftware/kryo/util/ObjectMap$Values;

    invoke-direct {v0, p0}, Lcom/esotericsoftware/kryo/util/ObjectMap$Values;-><init>(Lcom/esotericsoftware/kryo/util/ObjectMap;)V

    return-object v0
.end method
