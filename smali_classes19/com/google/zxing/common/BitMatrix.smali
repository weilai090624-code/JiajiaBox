.class public final Lcom/google/zxing/common/BitMatrix;
.super Ljava/lang/Object;
.source "BitMatrix.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private final bits:[I

.field private final height:I

.field private final rowSize:I

.field private final width:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "dimension"    # I

    .line 49
    invoke-direct {p0, p1, p1}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 50
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 62
    iput p1, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    .line 63
    iput p2, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    .line 64
    add-int/lit8 v0, p1, 0x1f

    div-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    .line 65
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int v0, v0, p2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    .line 66
    return-void

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Both dimensions must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(III[I)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "rowSize"    # I
    .param p4, "bits"    # [I

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput p1, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    .line 70
    iput p2, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    .line 71
    iput p3, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    .line 72
    iput-object p4, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    .line 73
    return-void
.end method

.method private buildToString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "setString"    # Ljava/lang/String;
    .param p2, "unsetString"    # Ljava/lang/String;
    .param p3, "lineSeparator"    # Ljava/lang/String;

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    add-int/lit8 v2, v2, 0x1

    mul-int v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 467
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "y":I
    :goto_0
    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    if-ge v1, v2, :cond_2

    .line 468
    const/4 v2, 0x0

    .local v2, "x":I
    :goto_1
    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    if-ge v2, v3, :cond_1

    .line 469
    invoke-virtual {p0, v2, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, p1

    goto :goto_2

    :cond_0
    move-object v3, p2

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 471
    .end local v2    # "x":I
    :cond_1
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 473
    .end local v1    # "y":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/zxing/common/BitMatrix;
    .locals 10
    .param p0, "stringRepresentation"    # Ljava/lang/String;
    .param p1, "setString"    # Ljava/lang/String;
    .param p2, "unsetString"    # Ljava/lang/String;

    .line 97
    if-eqz p0, :cond_d

    .line 101
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [Z

    .line 102
    .local v0, "bits":[Z
    const/4 v1, 0x0

    .line 103
    .local v1, "bitsPos":I
    const/4 v2, 0x0

    .line 104
    .local v2, "rowStartPos":I
    const/4 v3, -0x1

    .line 105
    .local v3, "rowLength":I
    const/4 v4, 0x0

    .line 106
    .local v4, "nRows":I
    const/4 v5, 0x0

    .line 107
    .local v5, "pos":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    const-string v7, "row lengths do not match"

    const/4 v8, -0x1

    if-ge v5, v6, :cond_7

    .line 108
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v9, 0xa

    if-eq v6, v9, :cond_3

    .line 109
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v9, 0xd

    if-ne v6, v9, :cond_0

    goto :goto_1

    .line 120
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 121
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    .line 122
    const/4 v6, 0x1

    aput-boolean v6, v0, v1

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 125
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    .line 126
    const/4 v6, 0x0

    aput-boolean v6, v0, v1

    .line 127
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    :cond_2
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "illegal character encountered: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 110
    :cond_3
    :goto_1
    if-le v1, v2, :cond_6

    .line 111
    if-ne v3, v8, :cond_4

    .line 112
    sub-int v3, v1, v2

    goto :goto_2

    .line 113
    :cond_4
    sub-int v6, v1, v2

    if-ne v6, v3, :cond_5

    .line 116
    :goto_2
    move v2, v1

    .line 117
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 114
    :cond_5
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 119
    :cond_6
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 135
    :cond_7
    if-le v1, v2, :cond_a

    .line 136
    if-ne v3, v8, :cond_8

    .line 137
    sub-int v3, v1, v2

    goto :goto_4

    .line 138
    :cond_8
    sub-int v6, v1, v2

    if-ne v6, v3, :cond_9

    .line 141
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 139
    :cond_9
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 144
    :cond_a
    :goto_5
    new-instance v6, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v6, v3, v4}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 145
    .local v6, "matrix":Lcom/google/zxing/common/BitMatrix;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_6
    if-ge v7, v1, :cond_c

    .line 146
    aget-boolean v8, v0, v7

    if-eqz v8, :cond_b

    .line 147
    rem-int v8, v7, v3

    div-int v9, v7, v3

    invoke-virtual {v6, v8, v9}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 145
    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 150
    .end local v7    # "i":I
    :cond_c
    return-object v6

    .line 98
    .end local v0    # "bits":[Z
    .end local v1    # "bitsPos":I
    .end local v2    # "rowStartPos":I
    .end local v3    # "rowLength":I
    .end local v4    # "nRows":I
    .end local v5    # "pos":I
    .end local v6    # "matrix":Lcom/google/zxing/common/BitMatrix;
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static parse([[Z)Lcom/google/zxing/common/BitMatrix;
    .locals 7
    .param p0, "image"    # [[Z

    .line 82
    array-length v0, p0

    .line 83
    .local v0, "height":I
    const/4 v1, 0x0

    aget-object v1, p0, v1

    array-length v1, v1

    .line 84
    .local v1, "width":I
    new-instance v2, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v2, v1, v0}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 85
    .local v2, "bits":Lcom/google/zxing/common/BitMatrix;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 86
    aget-object v4, p0, v3

    .line 87
    .local v4, "imageI":[Z
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v5, v1, :cond_1

    .line 88
    aget-boolean v6, v4, v5

    if-eqz v6, :cond_0

    .line 89
    invoke-virtual {v2, v5, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 87
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 85
    .end local v4    # "imageI":[Z
    .end local v5    # "j":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 93
    .end local v3    # "i":I
    :cond_2
    return-object v2
.end method


# virtual methods
.method public clear()V
    .locals 4

    .line 217
    iget-object v0, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    array-length v0, v0

    .line 218
    .local v0, "max":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 219
    iget-object v2, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    const/4 v3, 0x0

    aput v3, v2, v1

    .line 218
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 221
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public clone()Lcom/google/zxing/common/BitMatrix;
    .locals 5

    .line 478
    new-instance v0, Lcom/google/zxing/common/BitMatrix;

    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    iget-object v4, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    invoke-virtual {v4}, [I->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/zxing/common/BitMatrix;-><init>(III[I)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->clone()Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 418
    instance-of v0, p1, Lcom/google/zxing/common/BitMatrix;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 419
    return v1

    .line 421
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/zxing/common/BitMatrix;

    .line 422
    .local v0, "other":Lcom/google/zxing/common/BitMatrix;
    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    iget v3, v0, Lcom/google/zxing/common/BitMatrix;->width:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    iget v3, v0, Lcom/google/zxing/common/BitMatrix;->height:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    iget v3, v0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    iget-object v3, v0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    .line 423
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    nop

    .line 422
    return v1
.end method

.method public flip(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 188
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int v0, v0, p2

    div-int/lit8 v1, p1, 0x20

    add-int/2addr v0, v1

    .line 189
    .local v0, "offset":I
    iget-object v1, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v2, v1, v0

    and-int/lit8 v3, p1, 0x1f

    const/4 v4, 0x1

    shl-int v3, v4, v3

    xor-int/2addr v2, v3

    aput v2, v1, v0

    .line 190
    return-void
.end method

.method public get(II)Z
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 161
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int v0, v0, p2

    div-int/lit8 v1, p1, 0x20

    add-int/2addr v0, v1

    .line 162
    .local v0, "offset":I
    iget-object v1, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v1, v1, v0

    and-int/lit8 v2, p1, 0x1f

    ushr-int/2addr v1, v2

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getBottomRightOnBit()[I
    .locals 6

    .line 374
    iget-object v0, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 375
    .local v0, "bitsOffset":I
    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v1, v1, v0

    if-nez v1, :cond_0

    .line 376
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 378
    :cond_0
    if-gez v0, :cond_1

    .line 379
    const/4 v1, 0x0

    return-object v1

    .line 382
    :cond_1
    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    div-int v1, v0, v1

    .line 383
    .local v1, "y":I
    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    rem-int v2, v0, v2

    shl-int/lit8 v2, v2, 0x5

    .line 385
    .local v2, "x":I
    iget-object v3, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v3, v3, v0

    .line 386
    .local v3, "theBits":I
    const/16 v4, 0x1f

    .line 387
    .local v4, "bit":I
    :goto_1
    ushr-int v5, v3, v4

    if-nez v5, :cond_2

    .line 388
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 390
    :cond_2
    add-int/2addr v2, v4

    .line 392
    filled-new-array {v2, v1}, [I

    move-result-object v5

    return-object v5
.end method

.method public getEnclosingRectangle()[I
    .locals 9

    .line 304
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    .line 305
    .local v0, "left":I
    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    .line 306
    .local v1, "top":I
    const/4 v2, -0x1

    .line 307
    .local v2, "right":I
    const/4 v3, -0x1

    .line 309
    .local v3, "bottom":I
    const/4 v4, 0x0

    .local v4, "y":I
    const/4 v5, 0x0

    :goto_0
    iget v6, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    if-ge v4, v6, :cond_7

    .line 310
    const/4 v6, 0x0

    .local v6, "x32":I
    :goto_1
    iget v7, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    if-ge v6, v7, :cond_6

    .line 311
    iget-object v7, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    iget v8, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int v8, v8, v4

    add-int/2addr v8, v6

    aget v7, v7, v8

    .line 312
    .local v5, "theBits":I
    move v5, v7

    if-eqz v7, :cond_5

    .line 313
    if-ge v4, v1, :cond_0

    .line 314
    move v1, v4

    .line 316
    :cond_0
    if-le v4, v3, :cond_1

    .line 317
    move v3, v4

    .line 319
    :cond_1
    shl-int/lit8 v7, v6, 0x5

    if-ge v7, v0, :cond_3

    .line 320
    const/4 v7, 0x0

    .line 321
    .local v7, "bit":I
    :goto_2
    rsub-int/lit8 v8, v7, 0x1f

    shl-int v8, v5, v8

    if-nez v8, :cond_2

    .line 322
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 324
    :cond_2
    shl-int/lit8 v8, v6, 0x5

    add-int/2addr v8, v7

    if-ge v8, v0, :cond_3

    .line 325
    shl-int/lit8 v8, v6, 0x5

    add-int v0, v8, v7

    .line 328
    .end local v7    # "bit":I
    :cond_3
    shl-int/lit8 v7, v6, 0x5

    add-int/lit8 v7, v7, 0x1f

    if-le v7, v2, :cond_5

    .line 329
    const/16 v7, 0x1f

    .line 330
    .restart local v7    # "bit":I
    :goto_3
    ushr-int v8, v5, v7

    if-nez v8, :cond_4

    .line 331
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 333
    :cond_4
    shl-int/lit8 v8, v6, 0x5

    add-int/2addr v8, v7

    if-le v8, v2, :cond_5

    .line 334
    shl-int/lit8 v8, v6, 0x5

    add-int v2, v8, v7

    .line 310
    .end local v5    # "theBits":I
    .end local v7    # "bit":I
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 309
    .end local v6    # "x32":I
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 341
    .end local v4    # "y":I
    :cond_7
    if-lt v2, v0, :cond_9

    if-ge v3, v1, :cond_8

    goto :goto_4

    .line 345
    :cond_8
    sub-int v4, v2, v0

    add-int/lit8 v4, v4, 0x1

    sub-int v5, v3, v1

    add-int/lit8 v5, v5, 0x1

    filled-new-array {v0, v1, v4, v5}, [I

    move-result-object v4

    return-object v4

    .line 342
    :cond_9
    :goto_4
    const/4 v4, 0x0

    return-object v4
.end method

.method public getHeight()I
    .locals 1

    .line 406
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    return v0
.end method

.method public getRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;
    .locals 5
    .param p1, "y"    # I
    .param p2, "row"    # Lcom/google/zxing/common/BitArray;

    .line 260
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 263
    :cond_0
    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->clear()V

    goto :goto_1

    .line 261
    :cond_1
    :goto_0
    new-instance v0, Lcom/google/zxing/common/BitArray;

    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    invoke-direct {v0, v1}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    move-object p2, v0

    .line 265
    :goto_1
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int v0, v0, p1

    .line 266
    .local v0, "offset":I
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_2
    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    if-ge v1, v2, :cond_2

    .line 267
    shl-int/lit8 v2, v1, 0x5

    iget-object v3, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    add-int v4, v0, v1

    aget v3, v3, v4

    invoke-virtual {p2, v2, v3}, Lcom/google/zxing/common/BitArray;->setBulk(II)V

    .line 266
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 269
    .end local v1    # "x":I
    :cond_2
    return-object p2
.end method

.method public getRowSize()I
    .locals 1

    .line 413
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    return v0
.end method

.method public getTopLeftOnBit()[I
    .locals 6

    .line 354
    const/4 v0, 0x0

    .line 355
    .local v0, "bitsOffset":I
    :goto_0
    iget-object v1, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v1, v1, v0

    if-nez v1, :cond_0

    .line 356
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 358
    :cond_0
    iget-object v1, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    array-length v1, v1

    if-ne v0, v1, :cond_1

    .line 359
    const/4 v1, 0x0

    return-object v1

    .line 361
    :cond_1
    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    div-int v1, v0, v1

    .line 362
    .local v1, "y":I
    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    rem-int v2, v0, v2

    shl-int/lit8 v2, v2, 0x5

    .line 364
    .local v2, "x":I
    iget-object v3, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v3, v3, v0

    .line 365
    .local v3, "theBits":I
    const/4 v4, 0x0

    .line 366
    .local v4, "bit":I
    :goto_1
    rsub-int/lit8 v5, v4, 0x1f

    shl-int v5, v3, v5

    if-nez v5, :cond_2

    .line 367
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 369
    :cond_2
    add-int/2addr v2, v4

    .line 370
    filled-new-array {v2, v1}, [I

    move-result-object v5

    return-object v5
.end method

.method public getWidth()I
    .locals 1

    .line 399
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 428
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    .line 429
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    add-int/2addr v0, v1

    .line 430
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    add-int/2addr v0, v1

    .line 431
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    add-int/2addr v0, v1

    .line 432
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    .line 433
    return v0
.end method

.method public rotate180()V
    .locals 6

    .line 284
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v0

    .line 285
    .local v0, "width":I
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v1

    .line 286
    .local v1, "height":I
    new-instance v2, Lcom/google/zxing/common/BitArray;

    invoke-direct {v2, v0}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    .line 287
    .local v2, "topRow":Lcom/google/zxing/common/BitArray;
    new-instance v3, Lcom/google/zxing/common/BitArray;

    invoke-direct {v3, v0}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    .line 288
    .local v3, "bottomRow":Lcom/google/zxing/common/BitArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    add-int/lit8 v5, v1, 0x1

    div-int/lit8 v5, v5, 0x2

    if-ge v4, v5, :cond_0

    .line 289
    invoke-virtual {p0, v4, v2}, Lcom/google/zxing/common/BitMatrix;->getRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;

    move-result-object v2

    .line 290
    add-int/lit8 v5, v1, -0x1

    sub-int/2addr v5, v4

    invoke-virtual {p0, v5, v3}, Lcom/google/zxing/common/BitMatrix;->getRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;

    move-result-object v3

    .line 291
    invoke-virtual {v2}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 292
    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 293
    invoke-virtual {p0, v4, v3}, Lcom/google/zxing/common/BitMatrix;->setRow(ILcom/google/zxing/common/BitArray;)V

    .line 294
    add-int/lit8 v5, v1, -0x1

    sub-int/2addr v5, v4

    invoke-virtual {p0, v5, v2}, Lcom/google/zxing/common/BitMatrix;->setRow(ILcom/google/zxing/common/BitArray;)V

    .line 288
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 296
    .end local v4    # "i":I
    :cond_0
    return-void
.end method

.method public set(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 172
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int v0, v0, p2

    div-int/lit8 v1, p1, 0x20

    add-int/2addr v0, v1

    .line 173
    .local v0, "offset":I
    iget-object v1, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v2, v1, v0

    and-int/lit8 v3, p1, 0x1f

    const/4 v4, 0x1

    shl-int v3, v4, v3

    or-int/2addr v2, v3

    aput v2, v1, v0

    .line 174
    return-void
.end method

.method public setRegion(IIII)V
    .locals 10
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 232
    if-ltz p2, :cond_4

    if-ltz p1, :cond_4

    .line 235
    if-lez p4, :cond_3

    if-lez p3, :cond_3

    .line 238
    add-int v0, p1, p3

    .line 239
    .local v0, "right":I
    add-int v1, p2, p4

    const/4 v2, 0x0

    .line 240
    .local v2, "bottom":I
    move v2, v1

    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    if-gt v1, v3, :cond_2

    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    if-gt v0, v1, :cond_2

    .line 243
    move v1, p2

    .local v1, "y":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 244
    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int v3, v3, v1

    .line 245
    .local v3, "offset":I
    move v4, p1

    .local v4, "x":I
    :goto_1
    if-ge v4, v0, :cond_0

    .line 246
    iget-object v5, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    div-int/lit8 v6, v4, 0x20

    add-int/2addr v6, v3

    aget v7, v5, v6

    and-int/lit8 v8, v4, 0x1f

    const/4 v9, 0x1

    shl-int v8, v9, v8

    or-int/2addr v7, v8

    aput v7, v5, v6

    .line 245
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 243
    .end local v3    # "offset":I
    .end local v4    # "x":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 249
    .end local v1    # "y":I
    :cond_1
    return-void

    .line 241
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "The region must fit inside the matrix"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 236
    .end local v0    # "right":I
    .end local v2    # "bottom":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Height and width must be at least 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Left and top must be nonnegative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRow(ILcom/google/zxing/common/BitArray;)V
    .locals 5
    .param p1, "y"    # I
    .param p2, "row"    # Lcom/google/zxing/common/BitArray;

    .line 277
    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getBitArray()[I

    move-result-object v0

    iget-object v1, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int v2, v2, p1

    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 278
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 441
    const-string v0, "X "

    const-string v1, "  "

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/common/BitMatrix;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "setString"    # Ljava/lang/String;
    .param p2, "unsetString"    # Ljava/lang/String;

    .line 450
    const-string v0, "\n"

    invoke-direct {p0, p1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->buildToString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "setString"    # Ljava/lang/String;
    .param p2, "unsetString"    # Ljava/lang/String;
    .param p3, "lineSeparator"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 462
    invoke-direct {p0, p1, p2, p3}, Lcom/google/zxing/common/BitMatrix;->buildToString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unset(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 177
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int v0, v0, p2

    div-int/lit8 v1, p1, 0x20

    add-int/2addr v0, v1

    .line 178
    .local v0, "offset":I
    iget-object v1, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v2, v1, v0

    and-int/lit8 v3, p1, 0x1f

    const/4 v4, 0x1

    shl-int v3, v4, v3

    not-int v3, v3

    and-int/2addr v2, v3

    aput v2, v1, v0

    .line 179
    return-void
.end method

.method public xor(Lcom/google/zxing/common/BitMatrix;)V
    .locals 9
    .param p1, "mask"    # Lcom/google/zxing/common/BitMatrix;

    .line 199
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    .line 200
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getRowSize()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 203
    new-instance v0, Lcom/google/zxing/common/BitArray;

    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    invoke-direct {v0, v1}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    .line 204
    .local v0, "rowArray":Lcom/google/zxing/common/BitArray;
    const/4 v1, 0x0

    .local v1, "y":I
    :goto_0
    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    if-ge v1, v2, :cond_1

    .line 205
    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int v2, v2, v1

    .line 206
    .local v2, "offset":I
    invoke-virtual {p1, v1, v0}, Lcom/google/zxing/common/BitMatrix;->getRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getBitArray()[I

    move-result-object v3

    .line 207
    .local v3, "row":[I
    const/4 v4, 0x0

    .local v4, "x":I
    :goto_1
    iget v5, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    if-ge v4, v5, :cond_0

    .line 208
    iget-object v5, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    add-int v6, v2, v4

    aget v7, v5, v6

    aget v8, v3, v4

    xor-int/2addr v7, v8

    aput v7, v5, v6

    .line 207
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 204
    .end local v2    # "offset":I
    .end local v3    # "row":[I
    .end local v4    # "x":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    .end local v1    # "y":I
    :cond_1
    return-void

    .line 201
    .end local v0    # "rowArray":Lcom/google/zxing/common/BitArray;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input matrix dimensions do not match"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
