.class final Lcom/google/zxing/datamatrix/decoder/DataBlock;
.super Ljava/lang/Object;
.source "DataBlock.java"


# instance fields
.field private final codewords:[B

.field private final numDataCodewords:I


# direct methods
.method private constructor <init>(I[B)V
    .registers 3
    .param p1, "numDataCodewords"    # I
    .param p2, "codewords"    # [B

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->numDataCodewords:I

    .line 33
    iput-object p2, p0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    .line 34
    return-void
.end method

.method static getDataBlocks([BLcom/google/zxing/datamatrix/decoder/Version;)[Lcom/google/zxing/datamatrix/decoder/DataBlock;
    .registers 15

    .line 49
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/decoder/Version;->getECBlocks()Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    move-result-object v0

    .line 52
    nop

    .line 53
    invoke-virtual {v0}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->getECBlocks()[Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    move-result-object v1

    .line 54
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_d
    if-ge v4, v2, :cond_19

    aget-object v6, v1, v4

    .line 55
    invoke-virtual {v6}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->getCount()I

    move-result v6

    add-int/2addr v5, v6

    .line 54
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 59
    :cond_19
    new-array v2, v5, [Lcom/google/zxing/datamatrix/decoder/DataBlock;

    .line 60
    nop

    .line 61
    array-length v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1f
    if-ge v5, v4, :cond_45

    aget-object v7, v1, v5

    .line 62
    const/4 v8, 0x0

    :goto_24
    invoke-virtual {v7}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->getCount()I

    move-result v9

    if-ge v8, v9, :cond_42

    .line 63
    invoke-virtual {v7}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->getDataCodewords()I

    move-result v9

    .line 64
    invoke-virtual {v0}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->getECCodewords()I

    move-result v10

    add-int/2addr v10, v9

    .line 65
    add-int/lit8 v11, v6, 0x1

    new-instance v12, Lcom/google/zxing/datamatrix/decoder/DataBlock;

    new-array v10, v10, [B

    invoke-direct {v12, v9, v10}, Lcom/google/zxing/datamatrix/decoder/DataBlock;-><init>(I[B)V

    aput-object v12, v2, v6

    .line 62
    add-int/lit8 v8, v8, 0x1

    move v6, v11

    goto :goto_24

    .line 61
    :cond_42
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    .line 72
    :cond_45
    aget-object v1, v2, v3

    iget-object v1, v1, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    array-length v1, v1

    .line 75
    invoke-virtual {v0}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->getECCodewords()I

    move-result v0

    sub-int/2addr v1, v0

    .line 76
    add-int/lit8 v0, v1, -0x1

    .line 79
    nop

    .line 80
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_54
    if-ge v4, v0, :cond_6a

    .line 81
    const/4 v7, 0x0

    :goto_57
    if-ge v7, v6, :cond_67

    .line 82
    aget-object v8, v2, v7

    iget-object v8, v8, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    add-int/lit8 v9, v5, 0x1

    aget-byte v5, p0, v5

    aput-byte v5, v8, v4

    .line 81
    add-int/lit8 v7, v7, 0x1

    move v5, v9

    goto :goto_57

    .line 80
    :cond_67
    add-int/lit8 v4, v4, 0x1

    goto :goto_54

    .line 87
    :cond_6a
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/decoder/Version;->getVersionNumber()I

    move-result p1

    const/16 v4, 0x18

    if-ne p1, v4, :cond_74

    const/4 p1, 0x1

    goto :goto_75

    :cond_74
    const/4 p1, 0x0

    .line 88
    :goto_75
    if-eqz p1, :cond_7a

    const/16 v4, 0x8

    goto :goto_7b

    :cond_7a
    move v4, v6

    .line 89
    :goto_7b
    const/4 v7, 0x0

    :goto_7c
    if-ge v7, v4, :cond_8c

    .line 90
    aget-object v8, v2, v7

    iget-object v8, v8, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    add-int/lit8 v9, v5, 0x1

    aget-byte v5, p0, v5

    aput-byte v5, v8, v0

    .line 89
    add-int/lit8 v7, v7, 0x1

    move v5, v9

    goto :goto_7c

    .line 94
    :cond_8c
    aget-object v0, v2, v3

    iget-object v0, v0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    array-length v0, v0

    .line 95
    nop

    :goto_92
    if-ge v1, v0, :cond_b8

    .line 96
    const/4 v4, 0x0

    :goto_95
    if-ge v4, v6, :cond_b5

    .line 97
    if-eqz p1, :cond_9d

    add-int/lit8 v7, v4, 0x8

    rem-int/2addr v7, v6

    goto :goto_9e

    :cond_9d
    move v7, v4

    .line 98
    :goto_9e
    if-eqz p1, :cond_a6

    const/4 v8, 0x7

    if-le v7, v8, :cond_a6

    add-int/lit8 v8, v1, -0x1

    goto :goto_a7

    :cond_a6
    move v8, v1

    .line 99
    :goto_a7
    aget-object v7, v2, v7

    iget-object v7, v7, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    add-int/lit8 v9, v5, 0x1

    aget-byte v5, p0, v5

    aput-byte v5, v7, v8

    .line 96
    add-int/lit8 v4, v4, 0x1

    move v5, v9

    goto :goto_95

    .line 95
    :cond_b5
    add-int/lit8 v1, v1, 0x1

    goto :goto_92

    .line 103
    :cond_b8
    array-length p0, p0

    if-ne v5, p0, :cond_bc

    .line 107
    return-object v2

    .line 104
    :cond_bc
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method getCodewords()[B
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    return-object v0
.end method

.method getNumDataCodewords()I
    .registers 2

    .line 111
    iget v0, p0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->numDataCodewords:I

    return v0
.end method
