.class public final Lcom/google/zxing/common/BitArray;
.super Ljava/lang/Object;
.source "BitArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private bits:[I

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    .line 33
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    .line 34
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/google/zxing/common/BitArray;->size:I

    .line 38
    invoke-static {p1}, Lcom/google/zxing/common/BitArray;->makeArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    .line 39
    return-void
.end method

.method constructor <init>([II)V
    .locals 0
    .param p1, "bits"    # [I
    .param p2, "size"    # I

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    .line 44
    iput p2, p0, Lcom/google/zxing/common/BitArray;->size:I

    .line 45
    return-void
.end method

.method private ensureCapacity(I)V
    .locals 4
    .param p1, "size"    # I

    .line 56
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x5

    if-le p1, v0, :cond_0

    .line 57
    invoke-static {p1}, Lcom/google/zxing/common/BitArray;->makeArray(I)[I

    move-result-object v0

    .line 58
    .local v0, "newBits":[I
    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    iget-object v2, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    iput-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    .line 61
    .end local v0    # "newBits":[I
    :cond_0
    return-void
.end method

.method private static makeArray(I)[I
    .locals 1
    .param p0, "size"    # I

    .line 323
    add-int/lit8 v0, p0, 0x1f

    div-int/lit8 v0, v0, 0x20

    new-array v0, v0, [I

    return-object v0
.end method


# virtual methods
.method public appendBit(Z)V
    .locals 5
    .param p1, "bit"    # Z

    .line 217
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/zxing/common/BitArray;->ensureCapacity(I)V

    .line 218
    if-eqz p1, :cond_0

    .line 219
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    iget v2, p0, Lcom/google/zxing/common/BitArray;->size:I

    div-int/lit8 v2, v2, 0x20

    aget v3, v0, v2

    iget v4, p0, Lcom/google/zxing/common/BitArray;->size:I

    and-int/lit8 v4, v4, 0x1f

    shl-int v4, v1, v4

    or-int/2addr v3, v4

    aput v3, v0, v2

    .line 221
    :cond_0
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    .line 222
    return-void
.end method

.method public appendBitArray(Lcom/google/zxing/common/BitArray;)V
    .locals 3
    .param p1, "other"    # Lcom/google/zxing/common/BitArray;

    .line 243
    iget v0, p1, Lcom/google/zxing/common/BitArray;->size:I

    .line 244
    .local v0, "otherSize":I
    iget v1, p0, Lcom/google/zxing/common/BitArray;->size:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/google/zxing/common/BitArray;->ensureCapacity(I)V

    .line 245
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 246
    invoke-virtual {p1, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    .line 245
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 248
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public appendBits(II)V
    .locals 3
    .param p1, "value"    # I
    .param p2, "numBits"    # I

    .line 233
    if-ltz p2, :cond_2

    const/16 v0, 0x20

    if-gt p2, v0, :cond_2

    .line 236
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    add-int/2addr v0, p2

    invoke-direct {p0, v0}, Lcom/google/zxing/common/BitArray;->ensureCapacity(I)V

    .line 237
    move v0, p2

    .local v0, "numBitsLeft":I
    :goto_0
    if-lez v0, :cond_1

    .line 238
    add-int/lit8 v1, v0, -0x1

    shr-int v1, p1, v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    .line 237
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 240
    .end local v0    # "numBitsLeft":I
    :cond_1
    return-void

    .line 234
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Num bits must be between 0 and 32"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clear()V
    .locals 4

    .line 176
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v0, v0

    .line 177
    .local v0, "max":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 178
    iget-object v2, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    const/4 v3, 0x0

    aput v3, v2, v1

    .line 177
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 180
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public clone()Lcom/google/zxing/common/BitArray;
    .locals 3

    .line 354
    new-instance v0, Lcom/google/zxing/common/BitArray;

    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iget v2, p0, Lcom/google/zxing/common/BitArray;->size:I

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/common/BitArray;-><init>([II)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 26
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->clone()Lcom/google/zxing/common/BitArray;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 328
    instance-of v0, p1, Lcom/google/zxing/common/BitArray;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 329
    return v1

    .line 331
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/zxing/common/BitArray;

    .line 332
    .local v0, "other":Lcom/google/zxing/common/BitArray;
    iget v2, p0, Lcom/google/zxing/common/BitArray;->size:I

    iget v3, v0, Lcom/google/zxing/common/BitArray;->size:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    iget-object v3, v0, Lcom/google/zxing/common/BitArray;->bits:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public flip(I)V
    .locals 5
    .param p1, "i"    # I

    .line 86
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    div-int/lit8 v1, p1, 0x20

    aget v2, v0, v1

    and-int/lit8 v3, p1, 0x1f

    const/4 v4, 0x1

    shl-int v3, v4, v3

    xor-int/2addr v2, v3

    aput v2, v0, v1

    .line 87
    return-void
.end method

.method public get(I)Z
    .locals 3
    .param p1, "i"    # I

    .line 68
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    div-int/lit8 v1, p1, 0x20

    aget v0, v0, v1

    and-int/lit8 v1, p1, 0x1f

    const/4 v2, 0x1

    shl-int v1, v2, v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getBitArray()[I
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    return-object v0
.end method

.method public getNextSet(I)I
    .locals 6
    .param p1, "from"    # I

    .line 96
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    if-lt p1, v0, :cond_0

    .line 97
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    return v0

    .line 99
    :cond_0
    div-int/lit8 v0, p1, 0x20

    .line 100
    .local v0, "bitsOffset":I
    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v1, v1, v0

    const/4 v2, 0x0

    move v3, v2

    .line 102
    .local v3, "currentBits":I
    and-int/lit8 v4, p1, 0x1f

    const/4 v5, 0x1

    shl-int v4, v5, v4

    sub-int/2addr v4, v5

    not-int v4, v4

    and-int/2addr v1, v4

    .line 103
    .end local v3    # "currentBits":I
    .local v1, "currentBits":I
    :goto_0
    if-nez v1, :cond_2

    .line 104
    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v3, v3

    if-ne v0, v3, :cond_1

    .line 105
    iget v2, p0, Lcom/google/zxing/common/BitArray;->size:I

    return v2

    .line 107
    :cond_1
    iget-object v3, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v1, v3, v0

    goto :goto_0

    .line 109
    :cond_2
    shl-int/lit8 v3, v0, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 110
    .local v2, "result":I
    move v2, v3

    iget v4, p0, Lcom/google/zxing/common/BitArray;->size:I

    if-le v3, v4, :cond_3

    iget v3, p0, Lcom/google/zxing/common/BitArray;->size:I

    return v3

    :cond_3
    return v2
.end method

.method public getNextUnset(I)I
    .locals 6
    .param p1, "from"    # I

    .line 119
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    if-lt p1, v0, :cond_0

    .line 120
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    return v0

    .line 122
    :cond_0
    div-int/lit8 v0, p1, 0x20

    .line 123
    .local v0, "bitsOffset":I
    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v1, v1, v0

    not-int v1, v1

    const/4 v2, 0x0

    move v3, v2

    .line 125
    .local v3, "currentBits":I
    and-int/lit8 v4, p1, 0x1f

    const/4 v5, 0x1

    shl-int v4, v5, v4

    sub-int/2addr v4, v5

    not-int v4, v4

    and-int/2addr v1, v4

    .line 126
    .end local v3    # "currentBits":I
    .local v1, "currentBits":I
    :goto_0
    if-nez v1, :cond_2

    .line 127
    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v3, v3

    if-ne v0, v3, :cond_1

    .line 128
    iget v2, p0, Lcom/google/zxing/common/BitArray;->size:I

    return v2

    .line 130
    :cond_1
    iget-object v3, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v3, v3, v0

    not-int v1, v3

    goto :goto_0

    .line 132
    :cond_2
    shl-int/lit8 v3, v0, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 133
    .local v2, "result":I
    move v2, v3

    iget v4, p0, Lcom/google/zxing/common/BitArray;->size:I

    if-le v3, v4, :cond_3

    iget v3, p0, Lcom/google/zxing/common/BitArray;->size:I

    return v3

    :cond_3
    return v2
.end method

.method public getSize()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    return v0
.end method

.method public getSizeInBytes()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 337
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isRange(IIZ)Z
    .locals 10
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "value"    # Z

    .line 192
    if-lt p2, p1, :cond_6

    if-ltz p1, :cond_6

    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    if-gt p2, v0, :cond_6

    .line 195
    const/4 v0, 0x1

    if-ne p2, p1, :cond_0

    .line 196
    return v0

    .line 198
    :cond_0
    add-int/lit8 p2, p2, -0x1

    .line 199
    div-int/lit8 v1, p1, 0x20

    .line 200
    .local v1, "firstInt":I
    div-int/lit8 v2, p2, 0x20

    .line 201
    .local v2, "lastInt":I
    move v3, v1

    .local v3, "i":I
    :goto_0
    if-gt v3, v2, :cond_5

    .line 202
    const/4 v4, 0x0

    if-le v3, v1, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    and-int/lit8 v5, p1, 0x1f

    .line 203
    .local v5, "firstBit":I
    :goto_1
    if-ge v3, v2, :cond_2

    const/16 v6, 0x1f

    goto :goto_2

    :cond_2
    and-int/lit8 v6, p2, 0x1f

    .line 205
    .local v6, "lastBit":I
    :goto_2
    const/4 v7, 0x2

    shl-int/2addr v7, v6

    shl-int v8, v0, v5

    sub-int/2addr v7, v8

    .line 209
    .local v7, "mask":I
    iget-object v8, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v8, v8, v3

    and-int/2addr v8, v7

    if-eqz p3, :cond_3

    move v9, v7

    goto :goto_3

    :cond_3
    const/4 v9, 0x0

    :goto_3
    if-eq v8, v9, :cond_4

    .line 210
    return v4

    .line 201
    .end local v5    # "firstBit":I
    .end local v6    # "lastBit":I
    .end local v7    # "mask":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 213
    .end local v3    # "i":I
    :cond_5
    return v0

    .line 193
    .end local v1    # "firstInt":I
    .end local v2    # "lastInt":I
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public reverse()V
    .locals 13

    .line 294
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v0, v0

    new-array v0, v0, [I

    .line 296
    iget v1, p0, Lcom/google/zxing/common/BitArray;->size:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x20

    .line 297
    add-int/lit8 v3, v1, 0x1

    .line 298
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    .line 299
    iget-object v6, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v6, v6, v5

    int-to-long v6, v6

    .line 300
    shr-long v8, v6, v2

    const-wide/32 v10, 0x55555555

    and-long/2addr v8, v10

    and-long/2addr v6, v10

    shl-long/2addr v6, v2

    or-long/2addr v6, v8

    .line 301
    const/4 v8, 0x2

    shr-long v9, v6, v8

    const-wide/32 v11, 0x33333333

    and-long/2addr v9, v11

    and-long/2addr v6, v11

    shl-long/2addr v6, v8

    or-long/2addr v6, v9

    .line 302
    const/4 v8, 0x4

    shr-long v9, v6, v8

    const-wide/32 v11, 0xf0f0f0f

    and-long/2addr v9, v11

    and-long/2addr v6, v11

    shl-long/2addr v6, v8

    or-long/2addr v6, v9

    .line 303
    const/16 v8, 0x8

    shr-long v9, v6, v8

    const-wide/32 v11, 0xff00ff

    and-long/2addr v9, v11

    and-long/2addr v6, v11

    shl-long/2addr v6, v8

    or-long/2addr v6, v9

    .line 304
    const/16 v8, 0x10

    shr-long v9, v6, v8

    const-wide/32 v11, 0xffff

    and-long/2addr v9, v11

    and-long/2addr v6, v11

    shl-long/2addr v6, v8

    or-long/2addr v6, v9

    .line 305
    sub-int v8, v1, v5

    long-to-int v7, v6

    aput v7, v0, v8

    .line 298
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 308
    :cond_0
    iget v1, p0, Lcom/google/zxing/common/BitArray;->size:I

    shl-int/lit8 v5, v3, 0x5

    if-eq v1, v5, :cond_2

    .line 309
    iget v1, p0, Lcom/google/zxing/common/BitArray;->size:I

    sub-int/2addr v5, v1

    .line 310
    aget v1, v0, v4

    ushr-int/2addr v1, v5

    .line 311
    const/4 v4, 0x1

    :goto_1
    if-ge v4, v3, :cond_1

    .line 312
    aget v6, v0, v4

    .line 313
    rsub-int/lit8 v7, v5, 0x20

    shl-int v7, v6, v7

    or-int/2addr v1, v7

    .line 314
    add-int/lit8 v7, v4, -0x1

    aput v1, v0, v7

    .line 315
    ushr-int v1, v6, v5

    .line 311
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 317
    :cond_1
    sub-int/2addr v3, v2

    aput v1, v0, v3

    .line 319
    :cond_2
    iput-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    .line 320
    return-void
.end method

.method public set(I)V
    .locals 5
    .param p1, "i"    # I

    .line 77
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    div-int/lit8 v1, p1, 0x20

    aget v2, v0, v1

    and-int/lit8 v3, p1, 0x1f

    const/4 v4, 0x1

    shl-int v3, v4, v3

    or-int/2addr v2, v3

    aput v2, v0, v1

    .line 78
    return-void
.end method

.method public setBulk(II)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "newBits"    # I

    .line 144
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    div-int/lit8 v1, p1, 0x20

    aput p2, v0, v1

    .line 145
    return-void
.end method

.method public setRange(II)V
    .locals 8
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 154
    if-lt p2, p1, :cond_4

    if-ltz p1, :cond_4

    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    if-gt p2, v0, :cond_4

    .line 157
    if-ne p2, p1, :cond_0

    .line 158
    return-void

    .line 160
    :cond_0
    add-int/lit8 p2, p2, -0x1

    .line 161
    div-int/lit8 v0, p1, 0x20

    .line 162
    .local v0, "firstInt":I
    div-int/lit8 v1, p2, 0x20

    .line 163
    .local v1, "lastInt":I
    move v2, v0

    .local v2, "i":I
    :goto_0
    if-gt v2, v1, :cond_3

    .line 164
    if-le v2, v0, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    and-int/lit8 v3, p1, 0x1f

    .line 165
    .local v3, "firstBit":I
    :goto_1
    if-ge v2, v1, :cond_2

    const/16 v4, 0x1f

    goto :goto_2

    :cond_2
    and-int/lit8 v4, p2, 0x1f

    .line 167
    .local v4, "lastBit":I
    :goto_2
    const/4 v5, 0x2

    shl-int/2addr v5, v4

    const/4 v6, 0x1

    shl-int/2addr v6, v3

    sub-int/2addr v5, v6

    .line 168
    .local v5, "mask":I
    iget-object v6, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v7, v6, v2

    or-int/2addr v7, v5

    aput v7, v6, v2

    .line 163
    .end local v3    # "firstBit":I
    .end local v4    # "lastBit":I
    .end local v5    # "mask":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 170
    .end local v2    # "i":I
    :cond_3
    return-void

    .line 155
    .end local v0    # "firstInt":I
    .end local v1    # "lastInt":I
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public toBytes(I[BII)V
    .locals 5
    .param p1, "bitOffset"    # I
    .param p2, "array"    # [B
    .param p3, "offset"    # I
    .param p4, "numBytes"    # I

    .line 270
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_2

    .line 271
    const/4 v1, 0x0

    .line 272
    .local v1, "theByte":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    const/16 v3, 0x8

    if-ge v2, v3, :cond_1

    .line 273
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 274
    rsub-int/lit8 v3, v2, 0x7

    const/4 v4, 0x1

    shl-int v3, v4, v3

    or-int/2addr v1, v3

    .line 276
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 272
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 278
    .end local v2    # "j":I
    :cond_1
    add-int v2, p3, v0

    int-to-byte v3, v1

    aput-byte v3, p2, v2

    .line 270
    .end local v1    # "theByte":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 280
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/zxing/common/BitArray;->size:I

    iget v2, p0, Lcom/google/zxing/common/BitArray;->size:I

    div-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 343
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/google/zxing/common/BitArray;->size:I

    if-ge v1, v2, :cond_2

    .line 344
    and-int/lit8 v2, v1, 0x7

    if-nez v2, :cond_0

    .line 345
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 347
    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x58

    goto :goto_1

    :cond_1
    const/16 v2, 0x2e

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 343
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 349
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public xor(Lcom/google/zxing/common/BitArray;)V
    .locals 4
    .param p1, "other"    # Lcom/google/zxing/common/BitArray;

    .line 251
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    iget v1, p1, Lcom/google/zxing/common/BitArray;->size:I

    if-ne v0, v1, :cond_1

    .line 254
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 257
    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v2, v1, v0

    iget-object v3, p1, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v3, v3, v0

    xor-int/2addr v2, v3

    aput v2, v1, v0

    .line 254
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 259
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 252
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Sizes don\'t match"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
