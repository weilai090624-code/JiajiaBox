.class public Lcom/esotericsoftware/kryo/util/CuckooObjectMap;
.super Ljava/lang/Object;
.source "CuckooObjectMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Keys;,
        Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Values;,
        Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Entries;,
        Lcom/esotericsoftware/kryo/util/CuckooObjectMap$MapIterator;,
        Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final PRIME2:I = -0x41e0eb4f

.field private static final PRIME3:I = -0x4b47d1c7

.field private static final PRIME4:I = -0x312e3dbf

.field static random:Ljava/util/Random;


# instance fields
.field capacity:I

.field private hashShift:I

.field private isBigTable:Z

.field keyTable:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field private loadFactor:F

.field private mask:I

.field private pushIterations:I

.field public size:I

.field private stashCapacity:I

.field stashSize:I

.field private threshold:I

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

    .line 41
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->random:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 58
    .local p0, "this":Lcom/esotericsoftware/kryo/util/CuckooObjectMap;, "Lcom/esotericsoftware/kryo/util/CuckooObjectMap<TK;TV;>;"
    const/16 v0, 0x20

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, v0, v1}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;-><init>(IF)V

    .line 59
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .line 64
    .local p0, "this":Lcom/esotericsoftware/kryo/util/CuckooObjectMap;, "Lcom/esotericsoftware/kryo/util/CuckooObjectMap<TK;TV;>;"
    const v0, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, p1, v0}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;-><init>(IF)V

    .line 65
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 4
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .line 69
    .local p0, "this":Lcom/esotericsoftware/kryo/util/CuckooObjectMap;, "Lcom/esotericsoftware/kryo/util/CuckooObjectMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    if-ltz p1, :cond_3

    .line 71
    const/high16 v0, 0x40000000    # 2.0f

    if-gt p1, v0, :cond_2

    .line 72
    invoke-static {p1}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->nextPowerOfTwo(I)I

    move-result v0

    iput v0, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->capacity:I

    .line 74
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_1

    .line 75
    iput p2, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->loadFactor:F

    .line 78
    iget v0, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->capacity:I

    ushr-int/lit8 v0, v0, 0x10

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->isBigTable:Z

    .line 80
    iget v0, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->capacity:I

    int-to-float v0, v0

    mul-float v0, v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->threshold:I

    .line 81
    iget v0, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->capacity:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->mask:I

    .line 82
    iget v0, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->capacity:I

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1f

    iput v0, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->hashShift:I

    .line 83
    iget v0, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->capacity:I

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    const/4 v1, 0x3

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->stashCapacity:I

    .line 84
    iget v0, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->capacity:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v2, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->capacity:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    div-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->pushIterations:I

    .line 86
    iget v0, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->capacity:I

    iget v1, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->stashCapacity:I

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->keyTable:[Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->keyTable:[Ljava/lang/Object;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->valueTable:[Ljava/lang/Object;

    .line 88
    return-void

    .line 74
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadFactor must be > 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialCapacity is too large: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialCapacity must be >= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lcom/esotericsoftware/kryo/util/CuckooObjectMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/util/CuckooObjectMap<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 92
    .local p0, "this":Lcom/esotericsoftware/kryo/util/CuckooObjectMap;, "Lcom/esotericsoftware/kryo/util/CuckooObjectMap<TK;TV;>;"
    .local p1, "map":Lcom/esotericsoftware/kryo/util/CuckooObjectMap;, "Lcom/esotericsoftware/kryo/util/CuckooObjectMap<+TK;+TV;>;"
    iget v0, p1, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->capacity:I

    iget v1, p1, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->loadFactor:F

    invoke-direct {p0, v0, v1}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;-><init>(IF)V

    .line 93
    iget v0, p1, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->stashSize:I

    iput v0, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->stashSize:I

    .line 94
    iget-object v0, p1, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->keyTable:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->keyTable:[Ljava/lang/Object;

    iget-object v2, p1, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->keyTable:[Ljava/lang/Object;

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    iget-object v0, p1, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->valueTable:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->valueTable:[Ljava/lang/Object;

    iget-object v2, p1, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->valueTable:[Ljava/lang/Object;

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    iget v0, p1, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->size:I

    iput v0, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->size:I

    .line 97
    return-void
.end method

.method private containsKeyStash(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 545
    .local p0, "this":Lcom/esotericsoftware/kryo/util/CuckooObjectMap;, "Lcom/esotericsoftware/kryo/util/CuckooObjectMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->keyTable:[Ljava/lang/Object;

    .line 546
    .local v0, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget v1, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->capacity:I

    .local v1, "i":I
    iget v2, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->stashSize:I

    add-int/2addr v2, v1

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 547
    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    return v3

    .line 546
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 548
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private getStash(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 371
    .local p0, "this":Lcom/esotericsoftware/kryo/util/CuckooObjectMap;, "Lcom/esotericsoftware/kryo/util/CuckooObjectMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->keyTable:[Ljava/lang/Object;

    .line 372
    .local v0, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget v1, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->capacity:I

    .local v1, "i":I
    iget v2, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->stashSize:I

    add-int/2addr v2, v1

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 373
    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->valueTable:[Ljava/lang/Object;

    aget-object v3, v3, v1

    return-object v3

    .line 372
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 374
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private getStash(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 399
    .local p0, "this":Lcom/esotericsoftware/kryo/util/CuckooObjectMap;, "Lcom/esotericsoftware/kryo/util/CuckooObjectMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->keyTable:[Ljava/lang/Object;

    .line 400
    .local v0, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget v1, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->capacity:I

    .local v1, "i":I
    iget v2, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->stashSize:I

    add-int/2addr v2, v1

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 401
    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->valueTable:[Ljava/lang/Object;

    aget-object v3, v3, v1

    return-object v3

    .line 400
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 402
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    return-object p2
.end method

.method private hash2(I)I
    .locals 2
    .param p1, "h"    # I

    .line 609
    .local p0, "this":Lcom/esotericsoftware/kryo/util/CuckooObjectMap;, "Lcom/esotericsoftware/kryo/util/CuckooObjectMap<TK;TV;>;"
    const v0, -0x41e0eb4f

    mul-int p1, p1, v0

    .line 610
    iget v0, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->hashShift:I

    ushr-int v0, p1, v0

    xor-int/2addr v0, p1

    iget v1, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->mask:I

    and-int/2addr v0, v1

    return v0
.end method

.method private hash3(I)I
    .locals 2
    .param p1, "h"    # I

    .line 614
    .local p0, "this":Lcom/esotericsoftware/kryo/util/CuckooObjectMap;, "Lcom/esotericsoftware/kryo/util/CuckooObjectMap<TK;TV;>;"
    const v0, -0x4b47d1c7

    mul-int p1, p1, v0

    .line 615
    iget v0, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->hashShift:I

    ushr-int v0, p1, v0

    xor-int/2addr v0, p1

    iget v1, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->mask:I

    and-int/2addr v0, v1

    return v0
.end method

.method private hash4(I)I
    .locals 2
    .param p1, "h"    # I

    .line 619
    .local p0, "this":Lcom/esotericsoftware/kryo/util/CuckooObjectMap;, "Lcom/esotericsoftware/kryo/util/CuckooObjectMap<TK;TV;>;"
    const v0, -0x312e3dbf

    mul-int p1, p1, v0

    .line 620
    iget v0, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->hashShift:I

    ushr-int v0, p1, v0

    xor-int/2addr v0, p1

    iget v1, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->mask:I

    and-int/2addr v0, v1

    return v0
.end method

.method public static nextPowerOfTwo(I)I
    .locals 1
    .param p0, "value"    # I

    .line 811
    if-nez p0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 812
    :cond_0
    add-int/lit8 p0, p0, -0x1

    .line 813
    shr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 814
    shr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 815
    shr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 816
    shr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 817
    shr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 818
    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method private push(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;)V
    .locals 22
    .param p3, "index1"    # I
    .param p5, "index2"    # I
    .param p7, "index3"    # I
    .param p9, "index4"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;ITK;ITK;ITK;ITK;)V"
        }
    .end annotation

    .line 247
    .local p0, "this":Lcom/esotericsoftware/kryo/util/CuckooObjectMap;, "Lcom/esotericsoftware/kryo/util/CuckooObjectMap<TK;TV;>;"
    .local p1, "insertKey":Ljava/lang/Object;, "TK;"
    .local p2, "insertValue":Ljava/lang/Object;, "TV;"
    .local p4, "key1":Ljava/lang/Object;, "TK;"
    .local p6, "key2":Ljava/lang/Object;, "TK;"
    .local p8, "key3":Ljava/lang/Object;, "TK;"
    .local p10, "key4":Ljava/lang/Object;, "TK;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->keyTable:[Ljava/lang/Object;

    .line 248
    .local v1, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v2, v0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->valueTable:[Ljava/lang/Object;

    .line 249
    .local v2, "valueTable":[Ljava/lang/Object;, "[TV;"
    iget v3, v0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->mask:I

    .line 250
    .local v3, "mask":I
    iget-boolean v4, v0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->isBigTable:Z

    .line 255
    .local v4, "isBigTable":Z
    const/4 v5, 0x0

    .local v5, "i":I
    iget v6, v0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->pushIterations:I

    .line 256
    .local v6, "pushIterations":I
    if-eqz v4, :cond_0

    const/4 v7, 0x4

    goto :goto_0

    :cond_0
    const/4 v7, 0x3

    :goto_0
    move-object/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p6

    move/from16 v13, p7

    move-object/from16 v14, p8

    move/from16 v15, p9

    move-object/from16 v16, p10

    move/from16 v17, v5

    move-object/from16 v5, p1

    .line 259
    .end local p1    # "insertKey":Ljava/lang/Object;, "TK;"
    .end local p2    # "insertValue":Ljava/lang/Object;, "TV;"
    .end local p3    # "index1":I
    .end local p4    # "key1":Ljava/lang/Object;, "TK;"
    .end local p5    # "index2":I
    .end local p6    # "key2":Ljava/lang/Object;, "TK;"
    .end local p7    # "index3":I
    .end local p8    # "key3":Ljava/lang/Object;, "TK;"
    .end local p9    # "index4":I
    .end local p10    # "key4":Ljava/lang/Object;, "TK;"
    .local v5, "insertKey":Ljava/lang/Object;, "TK;"
    .local v7, "n":I
    .local v8, "insertValue":Ljava/lang/Object;, "TV;"
    .local v9, "index1":I
    .local v10, "key1":Ljava/lang/Object;, "TK;"
    .local v11, "index2":I
    .local v12, "key2":Ljava/lang/Object;, "TK;"
    .local v13, "index3":I
    .local v14, "key3":Ljava/lang/Object;, "TK;"
    .local v15, "index4":I
    .local v16, "key4":Ljava/lang/Object;, "TK;"
    .local v17, "i":I
    :goto_1
    move/from16 v18, v6

    .end local v6    # "pushIterations":I
    .local v18, "pushIterations":I
    sget-object v6, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->random:Ljava/util/Random;

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 279
    move-object/from16 v6, v16

    .line 280
    .local v6, "evictedKey":Ljava/lang/Object;, "TK;"
    aget-object v19, v2, v15

    .line 281
    .local v19, "evictedValue":Ljava/lang/Object;, "TV;"
    aput-object v5, v1, v15

    .line 282
    aput-object v8, v2, v15

    move-object/from16 p1, v5

    move-object/from16 v5, v19

    goto :goto_2

    .line 273
    .end local v6    # "evictedKey":Ljava/lang/Object;, "TK;"
    .end local v19    # "evictedValue":Ljava/lang/Object;, "TV;"
    :pswitch_0
    move-object v6, v14

    .line 274
    .restart local v6    # "evictedKey":Ljava/lang/Object;, "TK;"
    aget-object v19, v2, v13

    .line 275
    .restart local v19    # "evictedValue":Ljava/lang/Object;, "TV;"
    aput-object v5, v1, v13

    .line 276
    aput-object v8, v2, v13

    .line 277
    move-object/from16 p1, v5

    move-object/from16 v5, v19

    goto :goto_2

    .line 267
    .end local v6    # "evictedKey":Ljava/lang/Object;, "TK;"
    .end local v19    # "evictedValue":Ljava/lang/Object;, "TV;"
    :pswitch_1
    move-object v6, v12

    .line 268
    .restart local v6    # "evictedKey":Ljava/lang/Object;, "TK;"
    aget-object v19, v2, v11

    .line 269
    .restart local v19    # "evictedValue":Ljava/lang/Object;, "TV;"
    aput-object v5, v1, v11

    .line 270
    aput-object v8, v2, v11

    .line 271
    move-object/from16 p1, v5

    move-object/from16 v5, v19

    goto :goto_2

    .line 261
    .end local v6    # "evictedKey":Ljava/lang/Object;, "TK;"
    .end local v19    # "evictedValue":Ljava/lang/Object;, "TV;"
    :pswitch_2
    move-object v6, v10

    .line 262
    .restart local v6    # "evictedKey":Ljava/lang/Object;, "TK;"
    aget-object v19, v2, v9

    .line 263
    .restart local v19    # "evictedValue":Ljava/lang/Object;, "TV;"
    aput-object v5, v1, v9

    .line 264
    aput-object v8, v2, v9

    .line 265
    move-object/from16 p1, v5

    move-object/from16 v5, v19

    .line 287
    .end local v19    # "evictedValue":Ljava/lang/Object;, "TV;"
    .local v5, "evictedValue":Ljava/lang/Object;, "TV;"
    .restart local p1    # "insertKey":Ljava/lang/Object;, "TK;"
    :goto_2
    move/from16 v19, v7

    .end local v7    # "n":I
    .local v19, "n":I
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v7

    .line 288
    .local v7, "hashCode":I
    and-int v9, v7, v3

    .line 289
    aget-object v10, v1, v9

    .line 290
    if-nez v10, :cond_2

    .line 291
    aput-object v6, v1, v9

    .line 292
    aput-object v5, v2, v9

    .line 293
    move/from16 v20, v3

    .end local v3    # "mask":I
    .local v20, "mask":I
    iget v3, v0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->size:I

    move-object/from16 p2, v8

    .end local v8    # "insertValue":Ljava/lang/Object;, "TV;"
    .restart local p2    # "insertValue":Ljava/lang/Object;, "TV;"
    add-int/lit8 v8, v3, 0x1

    iput v8, v0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->size:I

    iget v8, v0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->threshold:I

    if-lt v3, v8, :cond_1

    iget v3, v0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->capacity:I

    shl-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v3}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->resize(I)V

    .line 294
    :cond_1
    return-void

    .line 297
    .end local v20    # "mask":I
    .end local p2    # "insertValue":Ljava/lang/Object;, "TV;"
    .restart local v3    # "mask":I
    .restart local v8    # "insertValue":Ljava/lang/Object;, "TV;"
    :cond_2
    move/from16 v20, v3

    move-object/from16 p2, v8

    .end local v3    # "mask":I
    .end local v8    # "insertValue":Ljava/lang/Object;, "TV;"
    .restart local v20    # "mask":I
    .restart local p2    # "insertValue":Ljava/lang/Object;, "TV;"
    invoke-direct {v0, v7}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->hash2(I)I

    move-result v11

    .line 298
    aget-object v12, v1, v11

    .line 299
    if-nez v12, :cond_4

    .line 300
    aput-object v6, v1, v11

    .line 301
    aput-object v5, v2, v11

    .line 302
    iget v3, v0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->size:I

    add-int/lit8 v8, v3, 0x1

    iput v8, v0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->size:I

    iget v8, v0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->threshold:I

    if-lt v3, v8, :cond_3

    iget v3, v0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->capacity:I

    shl-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v3}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->resize(I)V

    .line 303
    :cond_3
    return-void

    .line 306
    :cond_4
    invoke-direct {v0, v7}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->hash3(I)I

    move-result v13

    .line 307
    aget-object v14, v1, v13

    .line 308
    if-nez v14, :cond_6

    .line 309
    aput-object v6, v1, v13

    .line 310
    aput-object v5, v2, v13

    .line 311
    iget v3, v0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->size:I

    add-int/lit8 v8, v3, 0x1

    iput v8, v0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->size:I

    iget v8, v0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->threshold:I

    if-lt v3, v8, :cond_5

    iget v3, v0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->capacity:I

    shl-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v3}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->resize(I)V

    .line 312
    :cond_5
    return-void

    .line 315
    :cond_6
    if-eqz v4, :cond_9

    .line 316
    invoke-direct {v0, v7}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->hash4(I)I

    move-result v3

    .line 317
    .end local v15    # "index4":I
    .local v3, "index4":I
    aget-object v8, v1, v3

    .line 318
    .end local v16    # "key4":Ljava/lang/Object;, "TK;"
    .local v8, "key4":Ljava/lang/Object;, "TK;"
    if-nez v8, :cond_8

    .line 319
    aput-object v6, v1, v3

    .line 320
    aput-object v5, v2, v3

    .line 321
    iget v15, v0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->size:I

    move-object/from16 v21, v1

    .end local v1    # "keyTable":[Ljava/lang/Object;, "[TK;"
    .local v21, "keyTable":[Ljava/lang/Object;, "[TK;"
    add-int/lit8 v1, v15, 0x1

    iput v1, v0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->size:I

    iget v1, v0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->threshold:I

    if-lt v15, v1, :cond_7

    iget v1, v0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->capacity:I

    shl-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->resize(I)V

    .line 322
    :cond_7
    return-void

    .line 318
    .end local v21    # "keyTable":[Ljava/lang/Object;, "[TK;"
    .restart local v1    # "keyTable":[Ljava/lang/Object;, "[TK;"
    :cond_8
    move-object/from16 v21, v1

    .end local v1    # "keyTable":[Ljava/lang/Object;, "[TK;"
    .restart local v21    # "keyTable":[Ljava/lang/Object;, "[TK;"
    move v15, v3

    move-object/from16 v16, v8

    goto :goto_3

    .line 315
    .end local v3    # "index4":I
    .end local v8    # "key4":Ljava/lang/Object;, "TK;"
    .end local v21    # "keyTable":[Ljava/lang/Object;, "[TK;"
    .restart local v1    # "keyTable":[Ljava/lang/Object;, "[TK;"
    .restart local v15    # "index4":I
    .restart local v16    # "key4":Ljava/lang/Object;, "TK;"
    :cond_9
    move-object/from16 v21, v1

    .line 326
    .end local v1    # "keyTable":[Ljava/lang/Object;, "[TK;"
    .restart local v21    # "keyTable":[Ljava/lang/Object;, "[TK;"
    :goto_3
    add-int/lit8 v1, v17, 0x1

    move/from16 v3, v18

    .end local v17    # "i":I
    .end local v18    # "pushIterations":I
    .local v1, "i":I
    .local v3, "pushIterations":I
    if-ne v1, v3, :cond_a

    .line 332
    .end local v7    # "hashCode":I
    invoke-direct {v0, v6, v5}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->putStash(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 333
    return-void

    .line 328
    .restart local v7    # "hashCode":I
    :cond_a
    move-object v8, v6

    .line 329
    .end local p1    # "insertKey":Ljava/lang/Object;, "TK;"
    .local v8, "insertKey":Ljava/lang/Object;, "TK;"
    move-object v7, v5

    .line 330
    .end local p2    # "insertValue":Ljava/lang/Object;, "TV;"
    .local v7, "insertValue":Ljava/lang/Object;, "TV;"
    move/from16 v17, v1

    move v6, v3

    move-object v5, v8

    move/from16 v3, v20

    move-object/from16 v1, v21

    move-object v8, v7

    move/from16 v7, v19

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private putResize(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 200
    .local p0, "this":Lcom/esotericsoftware/kryo/util/CuckooObjectMap;, "Lcom/esotericsoftware/kryo/util/CuckooObjectMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    move-object/from16 v11, p0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v12

    .line 201
    .local v12, "hashCode":I
    iget v0, v11, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->mask:I

    and-int v13, v12, v0

    .line 202
    .local v13, "index1":I
    iget-object v0, v11, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->keyTable:[Ljava/lang/Object;

    aget-object v14, v0, v13

    .line 203
    .local v14, "key1":Ljava/lang/Object;, "TK;"
    if-nez v14, :cond_1

    .line 204
    iget-object v0, v11, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->keyTable:[Ljava/lang/Object;

    aput-object p1, v0, v13

    .line 205
    iget-object v0, v11, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v13

    .line 206
    iget v0, v11, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, v11, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->size:I

    iget v1, v11, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->threshold:I

    if-lt v0, v1, :cond_0

    iget v0, v11, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {v11, v0}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->resize(I)V

    .line 207
    :cond_0
    return-void

    .line 210
    :cond_1
    invoke-direct {v11, v12}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->hash2(I)I

    move-result v15

    .line 211
    .local v15, "index2":I
    iget-object v0, v11, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->keyTable:[Ljava/lang/Object;

    aget-object v16, v0, v15

    .line 212
    .local v16, "key2":Ljava/lang/Object;, "TK;"
    if-nez v16, :cond_3

    .line 213
    iget-object v0, v11, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->keyTable:[Ljava/lang/Object;

    aput-object p1, v0, v15

    .line 214
    iget-object v0, v11, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v15

    .line 215
    iget v0, v11, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, v11, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->size:I

    iget v1, v11, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->threshold:I

    if-lt v0, v1, :cond_2

    iget v0, v11, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {v11, v0}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->resize(I)V

    .line 216
    :cond_2
    return-void

    .line 219
    :cond_3
    invoke-direct {v11, v12}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->hash3(I)I

    move-result v17

    .line 220
    .local v17, "index3":I
    iget-object v0, v11, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->keyTable:[Ljava/lang/Object;

    aget-object v18, v0, v17

    .line 221
    .local v18, "key3":Ljava/lang/Object;, "TK;"
    if-nez v18, :cond_5

    .line 222
    iget-object v0, v11, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->keyTable:[Ljava/lang/Object;

    aput-object p1, v0, v17

    .line 223
    iget-object v0, v11, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v17

    .line 224
    iget v0, v11, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, v11, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->size:I

    iget v1, v11, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->threshold:I

    if-lt v0, v1, :cond_4

    iget v0, v11, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {v11, v0}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->resize(I)V

    .line 225
    :cond_4
    return-void

    .line 228
    :cond_5
    const/4 v0, -0x1

    .line 229
    .local v0, "index4":I
    const/4 v1, 0x0

    .line 230
    .local v1, "key4":Ljava/lang/Object;, "TK;"
    iget-boolean v2, v11, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->isBigTable:Z

    if-eqz v2, :cond_8

    .line 231
    invoke-direct {v11, v12}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->hash4(I)I

    move-result v0

    .line 232
    iget-object v2, v11, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->keyTable:[Ljava/lang/Object;

    aget-object v1, v2, v0

    .line 233
    if-nez v1, :cond_7

    .line 234
    iget-object v2, v11, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->keyTable:[Ljava/lang/Object;

    aput-object p1, v2, v0

    .line 235
    iget-object v2, v11, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v2, v0

    .line 236
    iget v2, v11, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->size:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v11, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->size:I

    iget v3, v11, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->threshold:I

    if-lt v2, v3, :cond_6

    iget v2, v11, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->capacity:I

    shl-int/lit8 v2, v2, 0x1

    invoke-direct {v11, v2}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->resize(I)V

    .line 237
    :cond_6
    return-void

    .line 233
    :cond_7
    move/from16 v19, v0

    move-object/from16 v20, v1

    goto :goto_0

    .line 230
    :cond_8
    move/from16 v19, v0

    move-object/from16 v20, v1

    .line 241
    .end local v0    # "index4":I
    .end local v1    # "key4":Ljava/lang/Object;, "TK;"
    .local v19, "index4":I
    .local v20, "key4":Ljava/lang/Object;, "TK;"
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v13

    move-object v4, v14

    move v5, v15

    move-object/from16 v6, v16

    move/from16 v7, v17

    move-object/from16 v8, v18

    move/from16 v9, v19

    move-object/from16 v10, v20

    invoke-direct/range {v0 .. v10}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->push(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;)V

    .line 242
    return-void
.end method

.method private putStash(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 336
    .local p0, "this":Lcom/esotericsoftware/kryo/util/CuckooObjectMap;, "Lcom/esotericsoftware/kryo/util/CuckooObjectMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget v0, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->stashSize:I

    iget v1, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->stashCapacity:I

    if-ne v0, v1, :cond_0

    .line 338
    iget v0, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->resize(I)V

    .line 339
    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->put_internal(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    return-void

    .line 343
    :cond_0
    iget v0, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->capacity:I

    iget v1, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->stashSize:I

    add-int/2addr v0, v1

    .line 344
    .local v0, "index":I
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->keyTable:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 345
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 346
    iget v1, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->stashSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->stashSize:I

    .line 347
    iget v1, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->size:I

    .line 348
    return-void
.end method

.method private put_internal(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 107
    .local p0, "this":Lcom/esotericsoftware/kryo/util/CuckooObjectMap;, "Lcom/esotericsoftware/kryo/util/CuckooObjectMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    iget-object v13, v11, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->keyTable:[Ljava/lang/Object;

    .line 108
    .local v13, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget v14, v11, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->mask:I

    .line 109
    .local v14, "mask":I
    iget-boolean v15, v11, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->isBigTable:Z

    .line 112
    .local v15, "isBigTable":Z
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v10

    .line 113
    .local v10, "hashCode":I
    and-int v16, v10, v14

    .line 114
    .local v16, "index1":I
    aget-object v9, v13, v16

    .line 115
    .local v9, "key1":Ljava/lang/Object;, "TK;"
    invoke-virtual {v12, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, v11, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->valueTable:[Ljava/lang/Object;

    aget-object v0, v0, v16

    .line 117
    .local v0, "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v1, v11, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v1, v16

    .line 118
    return-object v0

    .line 121
    .end local v0    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_0
    invoke-direct {v11, v10}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->hash2(I)I

    move-result v17

    .line 122
    .local v17, "index2":I
    aget-object v8, v13, v17

    .line 123
    .local v8, "key2":Ljava/lang/Object;, "TK;"
    invoke-virtual {v12, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, v11, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->valueTable:[Ljava/lang/Object;

    aget-object v0, v0, v17

    .line 125
    .restart local v0    # "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v1, v11, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v1, v17

    .line 126
    return-object v0

    .line 129
    .end local v0    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_1
    invoke-direct {v11, v10}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->hash3(I)I

    move-result v18

    .line 130
    .local v18, "index3":I
    aget-object v7, v13, v18

    .line 131
    .local v7, "key3":Ljava/lang/Object;, "TK;"
    invoke-virtual {v12, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    iget-object v0, v11, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->valueTable:[Ljava/lang/Object;

    aget-object v0, v0, v18

    .line 133
    .restart local v0    # "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v1, v11, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v1, v18

    .line 134
    return-object v0

    .line 137
    .end local v0    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_2
    const/4 v0, -0x1

    .line 138
    .local v0, "index4":I
    const/4 v1, 0x0

    .line 139
    .local v1, "key4":Ljava/lang/Object;, "TK;"
    if-eqz v15, :cond_4

    .line 140
    invoke-direct {v11, v10}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->hash4(I)I

    move-result v0

    .line 141
    aget-object v1, v13, v0

    .line 142
    invoke-virtual {v12, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 143
    iget-object v2, v11, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->valueTable:[Ljava/lang/Object;

    aget-object v2, v2, v0

    .line 144
    .local v2, "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v3, v11, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v3, v0

    .line 145
    return-object v2

    .line 142
    .end local v2    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_3
    move/from16 v19, v0

    move-object/from16 v20, v1

    goto :goto_0

    .line 139
    :cond_4
    move/from16 v19, v0

    move-object/from16 v20, v1

    .line 150
    .end local v0    # "index4":I
    .end local v1    # "key4":Ljava/lang/Object;, "TK;"
    .local v19, "index4":I
    .local v20, "key4":Ljava/lang/Object;, "TK;"
    :goto_0
    iget v0, v11, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->capacity:I

    .local v0, "i":I
    iget v1, v11, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->stashSize:I

    add-int/2addr v1, v0

    .local v1, "n":I
    :goto_1
    if-ge v0, v1, :cond_6

    .line 151
    aget-object v2, v13, v0

    invoke-virtual {v12, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 152
    iget-object v2, v11, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->valueTable:[Ljava/lang/Object;

    aget-object v2, v2, v0

    .line 153
    .restart local v2    # "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v3, v11, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v3, v0

    .line 154
    return-object v2

    .line 150
    .end local v2    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 159
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_6
    const/16 v21, 0x0

    if-nez v9, :cond_8

    .line 160
    aput-object v12, v13, v16

    .line 161
    iget-object v0, v11, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v16

    .line 162
    iget v0, v11, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, v11, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->size:I

    iget v1, v11, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->threshold:I

    if-lt v0, v1, :cond_7

    iget v0, v11, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {v11, v0}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->resize(I)V

    .line 163
    :cond_7
    return-object v21

    .line 166
    :cond_8
    if-nez v8, :cond_a

    .line 167
    aput-object v12, v13, v17

    .line 168
    iget-object v0, v11, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v17

    .line 169
    iget v0, v11, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, v11, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->size:I

    iget v1, v11, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->threshold:I

    if-lt v0, v1, :cond_9

    iget v0, v11, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {v11, v0}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->resize(I)V

    .line 170
    :cond_9
    return-object v21

    .line 173
    :cond_a
    if-nez v7, :cond_c

    .line 174
    aput-object v12, v13, v18

    .line 175
    iget-object v0, v11, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v18

    .line 176
    iget v0, v11, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, v11, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->size:I

    iget v1, v11, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->threshold:I

    if-lt v0, v1, :cond_b

    iget v0, v11, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {v11, v0}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->resize(I)V

    .line 177
    :cond_b
    return-object v21

    .line 180
    :cond_c
    if-eqz v15, :cond_e

    if-nez v20, :cond_e

    .line 181
    aput-object v12, v13, v19

    .line 182
    iget-object v0, v11, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v19

    .line 183
    iget v0, v11, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, v11, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->size:I

    iget v1, v11, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->threshold:I

    if-lt v0, v1, :cond_d

    iget v0, v11, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {v11, v0}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->resize(I)V

    .line 184
    :cond_d
    return-object v21

    .line 187
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v16

    move-object v4, v9

    move/from16 v5, v17

    move-object v6, v8

    move-object/from16 v22, v7

    .end local v7    # "key3":Ljava/lang/Object;, "TK;"
    .local v22, "key3":Ljava/lang/Object;, "TK;"
    move/from16 v7, v18

    move-object/from16 v23, v8

    .end local v8    # "key2":Ljava/lang/Object;, "TK;"
    .local v23, "key2":Ljava/lang/Object;, "TK;"
    move-object/from16 v8, v22

    move-object/from16 v24, v9

    .end local v9    # "key1":Ljava/lang/Object;, "TK;"
    .local v24, "key1":Ljava/lang/Object;, "TK;"
    move/from16 v9, v19

    move/from16 v25, v10

    .end local v10    # "hashCode":I
    .local v25, "hashCode":I
    move-object/from16 v10, v20

    invoke-direct/range {v0 .. v10}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->push(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;)V

    .line 188
    return-object v21
.end method

.method private resize(I)V
    .locals 7
    .param p1, "newSize"    # I

    .line 579
    .local p0, "this":Lcom/esotericsoftware/kryo/util/CuckooObjectMap;, "Lcom/esotericsoftware/kryo/util/CuckooObjectMap<TK;TV;>;"
    iget v0, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->capacity:I

    iget v1, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->stashSize:I

    add-int/2addr v0, v1

    .line 581
    .local v0, "oldEndIndex":I
    iput p1, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->capacity:I

    .line 582
    int-to-float v1, p1

    iget v2, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->loadFactor:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->threshold:I

    .line 583
    add-int/lit8 v1, p1, -0x1

    iput v1, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->mask:I

    .line 584
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x1f

    iput v1, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->hashShift:I

    .line 585
    int-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    const/4 v2, 0x3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->stashCapacity:I

    .line 586
    const/16 v1, 0x8

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-int v3, v3

    div-int/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->pushIterations:I

    .line 589
    iget v1, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->capacity:I

    ushr-int/lit8 v1, v1, 0x10

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->isBigTable:Z

    .line 591
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->keyTable:[Ljava/lang/Object;

    .line 592
    .local v1, "oldKeyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v3, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->valueTable:[Ljava/lang/Object;

    .line 594
    .local v3, "oldValueTable":[Ljava/lang/Object;, "[TV;"
    iget v4, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->stashCapacity:I

    add-int/2addr v4, p1

    new-array v4, v4, [Ljava/lang/Object;

    iput-object v4, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->keyTable:[Ljava/lang/Object;

    .line 595
    iget v4, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->stashCapacity:I

    add-int/2addr v4, p1

    new-array v4, v4, [Ljava/lang/Object;

    iput-object v4, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->valueTable:[Ljava/lang/Object;

    .line 597
    iget v4, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->size:I

    .line 598
    .local v4, "oldSize":I
    iput v2, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->size:I

    .line 599
    iput v2, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->stashSize:I

    .line 600
    if-lez v4, :cond_2

    .line 601
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 602
    aget-object v5, v1, v2

    .line 603
    .local v5, "key":Ljava/lang/Object;, "TK;"
    if-eqz v5, :cond_1

    aget-object v6, v3, v2

    invoke-direct {p0, v5, v6}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->putResize(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 601
    .end local v5    # "key":Ljava/lang/Object;, "TK;"
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 606
    .end local v2    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .line 494
    .local p0, "this":Lcom/esotericsoftware/kryo/util/CuckooObjectMap;, "Lcom/esotericsoftware/kryo/util/CuckooObjectMap<TK;TV;>;"
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->keyTable:[Ljava/lang/Object;

    .line 495
    .local v0, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->valueTable:[Ljava/lang/Object;

    .line 496
    .local v1, "valueTable":[Ljava/lang/Object;, "[TV;"
    iget v2, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->capacity:I

    iget v3, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->stashSize:I

    add-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    add-int/lit8 v3, v2, -0x1

    .end local v2    # "i":I
    .local v3, "i":I
    if-lez v2, :cond_0

    .line 497
    const/4 v2, 0x0

    aput-object v2, v0, v3

    .line 498
    aput-object v2, v1, v3

    move v2, v3

    goto :goto_0

    .line 500
    .end local v3    # "i":I
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->size:I

    .line 501
    iput v2, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->stashSize:I

    .line 502
    return-void
.end method

.method public clear(I)V
    .locals 1
    .param p1, "maximumCapacity"    # I

    .line 485
    .local p0, "this":Lcom/esotericsoftware/kryo/util/CuckooObjectMap;, "Lcom/esotericsoftware/kryo/util/CuckooObjectMap<TK;TV;>;"
    iget v0, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->capacity:I

    if-gt v0, p1, :cond_0

    .line 486
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->clear()V

    .line 487
    return-void

    .line 489
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->size:I

    .line 490
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->resize(I)V

    .line 491
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 525
    .local p0, "this":Lcom/esotericsoftware/kryo/util/CuckooObjectMap;, "Lcom/esotericsoftware/kryo/util/CuckooObjectMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 526
    .local v0, "hashCode":I
    iget v1, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->mask:I

    and-int/2addr v1, v0

    .line 527
    .local v1, "index":I
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 528
    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->hash2(I)I

    move-result v1

    .line 529
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 530
    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->hash3(I)I

    move-result v1

    .line 531
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 532
    iget-boolean v2, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->isBigTable:Z

    if-eqz v2, :cond_0

    .line 533
    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->hash4(I)I

    move-result v1

    .line 534
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->containsKeyStash(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 536
    :cond_0
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->containsKeyStash(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 541
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method public containsValue(Ljava/lang/Object;Z)Z
    .locals 5
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "identity"    # Z

    .line 509
    .local p0, "this":Lcom/esotericsoftware/kryo/util/CuckooObjectMap;, "Lcom/esotericsoftware/kryo/util/CuckooObjectMap<TK;TV;>;"
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->valueTable:[Ljava/lang/Object;

    .line 510
    .local v0, "valueTable":[Ljava/lang/Object;, "[TV;"
    const/4 v1, 0x1

    if-nez p1, :cond_2

    .line 511
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->keyTable:[Ljava/lang/Object;

    .line 512
    .local v2, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget v3, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->capacity:I

    iget v4, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->stashSize:I

    add-int/2addr v3, v4

    .local v3, "i":I
    :goto_0
    add-int/lit8 v4, v3, -0x1

    .end local v3    # "i":I
    .local v4, "i":I
    if-lez v3, :cond_1

    .line 513
    aget-object v3, v2, v4

    if-eqz v3, :cond_0

    aget-object v3, v0, v4

    if-nez v3, :cond_0

    return v1

    .line 512
    :cond_0
    move v3, v4

    goto :goto_0

    .line 514
    .end local v2    # "keyTable":[Ljava/lang/Object;, "[TK;"
    .end local v4    # "i":I
    :cond_1
    goto :goto_3

    :cond_2
    if-eqz p2, :cond_5

    .line 515
    iget v2, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->capacity:I

    iget v3, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->stashSize:I

    add-int/2addr v2, v3

    .local v2, "i":I
    :goto_1
    add-int/lit8 v3, v2, -0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    if-lez v2, :cond_4

    .line 516
    aget-object v2, v0, v3

    if-ne v2, p1, :cond_3

    return v1

    :cond_3
    move v2, v3

    goto :goto_1

    .end local v3    # "i":I
    :cond_4
    goto :goto_3

    .line 518
    :cond_5
    iget v2, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->capacity:I

    iget v3, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->stashSize:I

    add-int/2addr v2, v3

    .restart local v2    # "i":I
    :goto_2
    add-int/lit8 v3, v2, -0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    if-lez v2, :cond_7

    .line 519
    aget-object v2, v0, v3

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    return v1

    :cond_6
    move v2, v3

    goto :goto_2

    .line 521
    .end local v3    # "i":I
    :cond_7
    :goto_3
    const/4 v1, 0x0

    return v1
.end method

.method public ensureCapacity(I)V
    .locals 3
    .param p1, "additionalCapacity"    # I

    .line 574
    .local p0, "this":Lcom/esotericsoftware/kryo/util/CuckooObjectMap;, "Lcom/esotericsoftware/kryo/util/CuckooObjectMap<TK;TV;>;"
    iget v0, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->size:I

    add-int/2addr v0, p1

    .line 575
    .local v0, "sizeNeeded":I
    iget v1, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->threshold:I

    if-lt v0, v1, :cond_0

    int-to-float v1, v0

    iget v2, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->loadFactor:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->nextPowerOfTwo(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->resize(I)V

    .line 576
    :cond_0
    return-void
.end method

.method public entries()Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Entries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Entries<",
            "TK;TV;>;"
        }
    .end annotation

    .line 652
    .local p0, "this":Lcom/esotericsoftware/kryo/util/CuckooObjectMap;, "Lcom/esotericsoftware/kryo/util/CuckooObjectMap<TK;TV;>;"
    new-instance v0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Entries;

    invoke-direct {v0, p0}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Entries;-><init>(Lcom/esotericsoftware/kryo/util/CuckooObjectMap;)V

    return-object v0
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

    .line 556
    .local p0, "this":Lcom/esotericsoftware/kryo/util/CuckooObjectMap;, "Lcom/esotericsoftware/kryo/util/CuckooObjectMap<TK;TV;>;"
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->valueTable:[Ljava/lang/Object;

    .line 557
    .local v0, "valueTable":[Ljava/lang/Object;, "[TV;"
    if-nez p1, :cond_2

    .line 558
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->keyTable:[Ljava/lang/Object;

    .line 559
    .local v1, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget v2, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->capacity:I

    iget v3, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->stashSize:I

    add-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    add-int/lit8 v3, v2, -0x1

    .end local v2    # "i":I
    .local v3, "i":I
    if-lez v2, :cond_1

    .line 560
    aget-object v2, v1, v3

    if-eqz v2, :cond_0

    aget-object v2, v0, v3

    if-nez v2, :cond_0

    aget-object v2, v1, v3

    return-object v2

    .line 559
    :cond_0
    move v2, v3

    goto :goto_0

    .line 561
    .end local v1    # "keyTable":[Ljava/lang/Object;, "[TK;"
    .end local v3    # "i":I
    :cond_1
    goto :goto_3

    :cond_2
    if-eqz p2, :cond_5

    .line 562
    iget v1, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->capacity:I

    iget v2, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->stashSize:I

    add-int/2addr v1, v2

    .local v1, "i":I
    :goto_1
    add-int/lit8 v2, v1, -0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    if-lez v1, :cond_4

    .line 563
    aget-object v1, v0, v2

    if-ne v1, p1, :cond_3

    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->keyTable:[Ljava/lang/Object;

    aget-object v1, v1, v2

    return-object v1

    :cond_3
    move v1, v2

    goto :goto_1

    .end local v2    # "i":I
    :cond_4
    goto :goto_3

    .line 565
    :cond_5
    iget v1, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->capacity:I

    iget v2, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->stashSize:I

    add-int/2addr v1, v2

    .restart local v1    # "i":I
    :goto_2
    add-int/lit8 v2, v1, -0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    if-lez v1, :cond_7

    .line 566
    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->keyTable:[Ljava/lang/Object;

    aget-object v1, v1, v2

    return-object v1

    :cond_6
    move v1, v2

    goto :goto_2

    .line 568
    .end local v2    # "i":I
    :cond_7
    :goto_3
    const/4 v1, 0x0

    return-object v1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 351
    .local p0, "this":Lcom/esotericsoftware/kryo/util/CuckooObjectMap;, "Lcom/esotericsoftware/kryo/util/CuckooObjectMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 352
    .local v0, "hashCode":I
    iget v1, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->mask:I

    and-int/2addr v1, v0

    .line 353
    .local v1, "index":I
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 354
    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->hash2(I)I

    move-result v1

    .line 355
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 356
    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->hash3(I)I

    move-result v1

    .line 357
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 358
    iget-boolean v2, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->isBigTable:Z

    if-eqz v2, :cond_0

    .line 359
    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->hash4(I)I

    move-result v1

    .line 360
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->getStash(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 362
    :cond_0
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->getStash(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 367
    :cond_1
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->valueTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    return-object v2
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 379
    .local p0, "this":Lcom/esotericsoftware/kryo/util/CuckooObjectMap;, "Lcom/esotericsoftware/kryo/util/CuckooObjectMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 380
    .local v0, "hashCode":I
    iget v1, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->mask:I

    and-int/2addr v1, v0

    .line 381
    .local v1, "index":I
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 382
    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->hash2(I)I

    move-result v1

    .line 383
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 384
    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->hash3(I)I

    move-result v1

    .line 385
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 386
    iget-boolean v2, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->isBigTable:Z

    if-eqz v2, :cond_0

    .line 387
    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->hash4(I)I

    move-result v1

    .line 388
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->getStash(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 390
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->getStash(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 395
    :cond_1
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->valueTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    return-object v2
.end method

.method public keys()Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Keys;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Keys<",
            "TK;>;"
        }
    .end annotation

    .line 662
    .local p0, "this":Lcom/esotericsoftware/kryo/util/CuckooObjectMap;, "Lcom/esotericsoftware/kryo/util/CuckooObjectMap<TK;TV;>;"
    new-instance v0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Keys;

    invoke-direct {v0, p0}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Keys;-><init>(Lcom/esotericsoftware/kryo/util/CuckooObjectMap;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 101
    .local p0, "this":Lcom/esotericsoftware/kryo/util/CuckooObjectMap;, "Lcom/esotericsoftware/kryo/util/CuckooObjectMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_0

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->put_internal(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 101
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public putAll(Lcom/esotericsoftware/kryo/util/CuckooObjectMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/util/CuckooObjectMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 192
    .local p0, "this":Lcom/esotericsoftware/kryo/util/CuckooObjectMap;, "Lcom/esotericsoftware/kryo/util/CuckooObjectMap<TK;TV;>;"
    .local p1, "map":Lcom/esotericsoftware/kryo/util/CuckooObjectMap;, "Lcom/esotericsoftware/kryo/util/CuckooObjectMap<TK;TV;>;"
    iget v0, p1, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->size:I

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->ensureCapacity(I)V

    .line 193
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->entries()Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Entries;

    move-result-object v0

    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Entries;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Entry;

    .line 194
    .local v1, "entry":Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Entry;, "Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Entry<TK;TV;>;"
    iget-object v2, v1, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Entry;->key:Ljava/lang/Object;

    iget-object v3, v1, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 195
    .end local v1    # "entry":Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Entry;, "Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Entry<TK;TV;>;"
    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 406
    .local p0, "this":Lcom/esotericsoftware/kryo/util/CuckooObjectMap;, "Lcom/esotericsoftware/kryo/util/CuckooObjectMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 407
    .local v0, "hashCode":I
    iget v1, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->mask:I

    and-int/2addr v1, v0

    .line 408
    .local v1, "index":I
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 409
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->keyTable:[Ljava/lang/Object;

    aput-object v3, v2, v1

    .line 410
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->valueTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    .line 411
    .local v2, "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v4, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->valueTable:[Ljava/lang/Object;

    aput-object v3, v4, v1

    .line 412
    iget v3, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->size:I

    .line 413
    return-object v2

    .line 416
    .end local v2    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_0
    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->hash2(I)I

    move-result v1

    .line 417
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 418
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->keyTable:[Ljava/lang/Object;

    aput-object v3, v2, v1

    .line 419
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->valueTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    .line 420
    .restart local v2    # "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v4, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->valueTable:[Ljava/lang/Object;

    aput-object v3, v4, v1

    .line 421
    iget v3, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->size:I

    .line 422
    return-object v2

    .line 425
    .end local v2    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_1
    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->hash3(I)I

    move-result v1

    .line 426
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 427
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->keyTable:[Ljava/lang/Object;

    aput-object v3, v2, v1

    .line 428
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->valueTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    .line 429
    .restart local v2    # "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v4, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->valueTable:[Ljava/lang/Object;

    aput-object v3, v4, v1

    .line 430
    iget v3, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->size:I

    .line 431
    return-object v2

    .line 434
    .end local v2    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_2
    iget-boolean v2, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->isBigTable:Z

    if-eqz v2, :cond_3

    .line 435
    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->hash4(I)I

    move-result v1

    .line 436
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 437
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->keyTable:[Ljava/lang/Object;

    aput-object v3, v2, v1

    .line 438
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->valueTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    .line 439
    .restart local v2    # "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v4, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->valueTable:[Ljava/lang/Object;

    aput-object v3, v4, v1

    .line 440
    iget v3, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->size:I

    .line 441
    return-object v2

    .line 445
    .end local v2    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_3
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->removeStash(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method removeStash(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 449
    .local p0, "this":Lcom/esotericsoftware/kryo/util/CuckooObjectMap;, "Lcom/esotericsoftware/kryo/util/CuckooObjectMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->keyTable:[Ljava/lang/Object;

    .line 450
    .local v0, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget v1, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->capacity:I

    .local v1, "i":I
    iget v2, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->stashSize:I

    add-int/2addr v2, v1

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 451
    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 452
    iget-object v3, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->valueTable:[Ljava/lang/Object;

    aget-object v3, v3, v1

    .line 453
    .local v3, "oldValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->removeStashIndex(I)V

    .line 454
    iget v4, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->size:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->size:I

    .line 455
    return-object v3

    .line 450
    .end local v3    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 458
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method removeStashIndex(I)V
    .locals 4
    .param p1, "index"    # I

    .line 463
    .local p0, "this":Lcom/esotericsoftware/kryo/util/CuckooObjectMap;, "Lcom/esotericsoftware/kryo/util/CuckooObjectMap<TK;TV;>;"
    iget v0, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->stashSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->stashSize:I

    .line 464
    iget v0, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->capacity:I

    iget v1, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->stashSize:I

    add-int/2addr v0, v1

    .line 465
    .local v0, "lastIndex":I
    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    .line 466
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->keyTable:[Ljava/lang/Object;

    iget-object v3, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->keyTable:[Ljava/lang/Object;

    aget-object v3, v3, v0

    aput-object v3, v2, p1

    .line 467
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->valueTable:[Ljava/lang/Object;

    iget-object v3, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->valueTable:[Ljava/lang/Object;

    aget-object v3, v3, v0

    aput-object v3, v2, p1

    .line 468
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->valueTable:[Ljava/lang/Object;

    aput-object v1, v2, v0

    goto :goto_0

    .line 470
    :cond_0
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->valueTable:[Ljava/lang/Object;

    aput-object v1, v2, p1

    .line 471
    :goto_0
    return-void
.end method

.method public shrink(I)V
    .locals 3
    .param p1, "maximumCapacity"    # I

    .line 476
    .local p0, "this":Lcom/esotericsoftware/kryo/util/CuckooObjectMap;, "Lcom/esotericsoftware/kryo/util/CuckooObjectMap<TK;TV;>;"
    if-ltz p1, :cond_2

    .line 477
    iget v0, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->size:I

    if-le v0, p1, :cond_0

    iget p1, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->size:I

    .line 478
    :cond_0
    iget v0, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->capacity:I

    if-gt v0, p1, :cond_1

    return-void

    .line 479
    :cond_1
    invoke-static {p1}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->nextPowerOfTwo(I)I

    move-result p1

    .line 480
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->resize(I)V

    .line 481
    return-void

    .line 476
    :cond_2
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

    .line 624
    .local p0, "this":Lcom/esotericsoftware/kryo/util/CuckooObjectMap;, "Lcom/esotericsoftware/kryo/util/CuckooObjectMap<TK;TV;>;"
    iget v0, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->size:I

    if-nez v0, :cond_0

    const-string/jumbo v0, "{}"

    return-object v0

    .line 625
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 626
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 627
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->keyTable:[Ljava/lang/Object;

    .line 628
    .local v1, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->valueTable:[Ljava/lang/Object;

    .line 629
    .local v2, "valueTable":[Ljava/lang/Object;, "[TV;"
    array-length v3, v1

    .line 630
    .local v3, "i":I
    :goto_0
    add-int/lit8 v4, v3, -0x1

    .end local v3    # "i":I
    .local v4, "i":I
    const/16 v5, 0x3d

    if-lez v3, :cond_2

    .line 631
    aget-object v3, v1, v4

    .line 632
    .local v3, "key":Ljava/lang/Object;, "TK;"
    if-nez v3, :cond_1

    move v3, v4

    goto :goto_0

    .line 633
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 634
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 635
    aget-object v6, v2, v4

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 636
    nop

    .line 638
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    :cond_2
    :goto_1
    add-int/lit8 v3, v4, -0x1

    .end local v4    # "i":I
    .local v3, "i":I
    if-lez v4, :cond_4

    .line 639
    aget-object v4, v1, v3

    .line 640
    .local v4, "key":Ljava/lang/Object;, "TK;"
    if-nez v4, :cond_3

    goto :goto_2

    .line 641
    :cond_3
    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 643
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 644
    aget-object v6, v2, v3

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 645
    .end local v4    # "key":Ljava/lang/Object;, "TK;"
    nop

    .line 638
    :goto_2
    move v4, v3

    goto :goto_1

    .line 646
    :cond_4
    const/16 v4, 0x7d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 647
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public values()Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Values;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Values<",
            "TV;>;"
        }
    .end annotation

    .line 657
    .local p0, "this":Lcom/esotericsoftware/kryo/util/CuckooObjectMap;, "Lcom/esotericsoftware/kryo/util/CuckooObjectMap<TK;TV;>;"
    new-instance v0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Values;

    invoke-direct {v0, p0}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$Values;-><init>(Lcom/esotericsoftware/kryo/util/CuckooObjectMap;)V

    return-object v0
.end method
