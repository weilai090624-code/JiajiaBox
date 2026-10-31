.class final Lcom/google/zxing/qrcode/decoder/DataBlock;
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
    iput p1, p0, Lcom/google/zxing/qrcode/decoder/DataBlock;->numDataCodewords:I

    .line 33
    iput-object p2, p0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    .line 34
    return-void
.end method

.method static getDataBlocks([BLcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)[Lcom/google/zxing/qrcode/decoder/DataBlock;
    .registers 15

    .line 51
    array-length v0, p0

    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v1

    if-ne v0, v1, :cond_b3

    .line 57
    invoke-virtual {p1, p2}, Lcom/google/zxing/qrcode/decoder/Version;->getECBlocksForLevel(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-result-object p1

    .line 60
    nop

    .line 61
    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getECBlocks()[Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object p2

    .line 62
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_14
    if-ge v2, v0, :cond_20

    aget-object v4, p2, v2

    .line 63
    invoke-virtual {v4}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->getCount()I

    move-result v4

    add-int/2addr v3, v4

    .line 62
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 67
    :cond_20
    new-array v0, v3, [Lcom/google/zxing/qrcode/decoder/DataBlock;

    .line 68
    nop

    .line 69
    array-length v2, p2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_26
    if-ge v4, v2, :cond_4c

    aget-object v6, p2, v4

    .line 70
    const/4 v7, 0x0

    :goto_2b
    invoke-virtual {v6}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->getCount()I

    move-result v8

    if-ge v7, v8, :cond_49

    .line 71
    invoke-virtual {v6}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->getDataCodewords()I

    move-result v8

    .line 72
    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getECCodewordsPerBlock()I

    move-result v9

    add-int/2addr v9, v8

    .line 73
    add-int/lit8 v10, v5, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/DataBlock;

    new-array v9, v9, [B

    invoke-direct {v11, v8, v9}, Lcom/google/zxing/qrcode/decoder/DataBlock;-><init>(I[B)V

    aput-object v11, v0, v5

    .line 70
    add-int/lit8 v7, v7, 0x1

    move v5, v10

    goto :goto_2b

    .line 69
    :cond_49
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    .line 79
    :cond_4c
    aget-object p2, v0, v1

    iget-object p2, p2, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    array-length p2, p2

    .line 80
    add-int/lit8 v3, v3, -0x1

    .line 81
    :goto_53
    if-ltz v3, :cond_5f

    .line 82
    aget-object v2, v0, v3

    iget-object v2, v2, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    array-length v2, v2

    .line 83
    if-eq v2, p2, :cond_5f

    .line 86
    add-int/lit8 v3, v3, -0x1

    .line 87
    goto :goto_53

    .line 88
    :cond_5f
    add-int/lit8 v3, v3, 0x1

    .line 90
    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getECCodewordsPerBlock()I

    move-result p1

    sub-int/2addr p2, p1

    .line 93
    nop

    .line 94
    const/4 p1, 0x0

    const/4 v2, 0x0

    :goto_69
    if-ge p1, p2, :cond_7f

    .line 95
    const/4 v4, 0x0

    :goto_6c
    if-ge v4, v5, :cond_7c

    .line 96
    aget-object v6, v0, v4

    iget-object v6, v6, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    add-int/lit8 v7, v2, 0x1

    aget-byte v2, p0, v2

    aput-byte v2, v6, p1

    .line 95
    add-int/lit8 v4, v4, 0x1

    move v2, v7

    goto :goto_6c

    .line 94
    :cond_7c
    add-int/lit8 p1, p1, 0x1

    goto :goto_69

    .line 100
    :cond_7f
    move p1, v3

    :goto_80
    if-ge p1, v5, :cond_90

    .line 101
    aget-object v4, v0, p1

    iget-object v4, v4, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    add-int/lit8 v6, v2, 0x1

    aget-byte v2, p0, v2

    aput-byte v2, v4, p2

    .line 100
    add-int/lit8 p1, p1, 0x1

    move v2, v6

    goto :goto_80

    .line 104
    :cond_90
    aget-object p1, v0, v1

    iget-object p1, p1, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    array-length p1, p1

    .line 105
    nop

    :goto_96
    if-ge p2, p1, :cond_b2

    .line 106
    const/4 v4, 0x0

    :goto_99
    if-ge v4, v5, :cond_af

    .line 107
    if-ge v4, v3, :cond_9f

    move v6, p2

    goto :goto_a1

    :cond_9f
    add-int/lit8 v6, p2, 0x1

    .line 108
    :goto_a1
    aget-object v7, v0, v4

    iget-object v7, v7, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    add-int/lit8 v8, v2, 0x1

    aget-byte v2, p0, v2

    aput-byte v2, v7, v6

    .line 106
    add-int/lit8 v4, v4, 0x1

    move v2, v8

    goto :goto_99

    .line 105
    :cond_af
    add-int/lit8 p2, p2, 0x1

    goto :goto_96

    .line 111
    :cond_b2
    return-object v0

    .line 52
    :cond_b3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method getCodewords()[B
    .registers 2

    .line 119
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    return-object v0
.end method

.method getNumDataCodewords()I
    .registers 2

    .line 115
    iget v0, p0, Lcom/google/zxing/qrcode/decoder/DataBlock;->numDataCodewords:I

    return v0
.end method
