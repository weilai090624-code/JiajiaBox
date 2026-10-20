.class public final Lcom/google/zxing/common/BitSource;
.super Ljava/lang/Object;
.source "BitSource.java"


# instance fields
.field private bitOffset:I

.field private byteOffset:I

.field private final bytes:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .param p1, "bytes"    # [B

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/zxing/common/BitSource;->bytes:[B

    .line 40
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/google/zxing/common/BitSource;->bytes:[B

    array-length v0, v0

    iget v1, p0, Lcom/google/zxing/common/BitSource;->byteOffset:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/google/zxing/common/BitSource;->bitOffset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getBitOffset()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/google/zxing/common/BitSource;->bitOffset:I

    return v0
.end method

.method public getByteOffset()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/google/zxing/common/BitSource;->byteOffset:I

    return v0
.end method

.method public readBits(I)I
    .locals 9
    .param p1, "numBits"    # I

    .line 63
    if-lez p1, :cond_4

    const/16 v0, 0x20

    if-gt p1, v0, :cond_4

    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v0

    if-gt p1, v0, :cond_4

    .line 67
    const/4 v0, 0x0

    .line 70
    .local v0, "result":I
    iget v1, p0, Lcom/google/zxing/common/BitSource;->bitOffset:I

    const/16 v2, 0xff

    const/16 v3, 0x8

    if-lez v1, :cond_1

    .line 71
    iget v1, p0, Lcom/google/zxing/common/BitSource;->bitOffset:I

    rsub-int/lit8 v1, v1, 0x8

    .line 72
    .local v1, "bitsLeft":I
    if-ge p1, v1, :cond_0

    move v4, p1

    goto :goto_0

    :cond_0
    move v4, v1

    .line 73
    .local v4, "toRead":I
    :goto_0
    sub-int v5, v1, v4

    .line 74
    .local v5, "bitsToNotRead":I
    rsub-int/lit8 v6, v4, 0x8

    shr-int v6, v2, v6

    shl-int/2addr v6, v5

    .line 75
    .local v6, "mask":I
    iget-object v7, p0, Lcom/google/zxing/common/BitSource;->bytes:[B

    iget v8, p0, Lcom/google/zxing/common/BitSource;->byteOffset:I

    aget-byte v7, v7, v8

    and-int/2addr v7, v6

    shr-int v0, v7, v5

    .line 76
    sub-int/2addr p1, v4

    .line 77
    iget v7, p0, Lcom/google/zxing/common/BitSource;->bitOffset:I

    add-int/2addr v7, v4

    iput v7, p0, Lcom/google/zxing/common/BitSource;->bitOffset:I

    .line 78
    iget v7, p0, Lcom/google/zxing/common/BitSource;->bitOffset:I

    if-ne v7, v3, :cond_1

    .line 79
    const/4 v7, 0x0

    iput v7, p0, Lcom/google/zxing/common/BitSource;->bitOffset:I

    .line 80
    iget v7, p0, Lcom/google/zxing/common/BitSource;->byteOffset:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/zxing/common/BitSource;->byteOffset:I

    .line 85
    .end local v1    # "bitsLeft":I
    .end local v4    # "toRead":I
    .end local v5    # "bitsToNotRead":I
    .end local v6    # "mask":I
    :cond_1
    if-lez p1, :cond_3

    .line 86
    :goto_1
    if-lt p1, v3, :cond_2

    .line 87
    shl-int/lit8 v1, v0, 0x8

    iget-object v4, p0, Lcom/google/zxing/common/BitSource;->bytes:[B

    iget v5, p0, Lcom/google/zxing/common/BitSource;->byteOffset:I

    aget-byte v4, v4, v5

    and-int/2addr v4, v2

    or-int v0, v1, v4

    .line 88
    iget v1, p0, Lcom/google/zxing/common/BitSource;->byteOffset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/zxing/common/BitSource;->byteOffset:I

    .line 89
    add-int/lit8 p1, p1, -0x8

    goto :goto_1

    .line 93
    :cond_2
    if-lez p1, :cond_3

    .line 94
    rsub-int/lit8 v1, p1, 0x8

    .line 95
    .local v1, "bitsToNotRead":I
    shr-int/2addr v2, v1

    shl-int/2addr v2, v1

    .line 96
    .local v2, "mask":I
    shl-int v3, v0, p1

    iget-object v4, p0, Lcom/google/zxing/common/BitSource;->bytes:[B

    iget v5, p0, Lcom/google/zxing/common/BitSource;->byteOffset:I

    aget-byte v4, v4, v5

    and-int/2addr v4, v2

    shr-int/2addr v4, v1

    or-int v0, v3, v4

    .line 97
    iget v3, p0, Lcom/google/zxing/common/BitSource;->bitOffset:I

    add-int/2addr v3, p1

    iput v3, p0, Lcom/google/zxing/common/BitSource;->bitOffset:I

    .line 101
    .end local v1    # "bitsToNotRead":I
    .end local v2    # "mask":I
    :cond_3
    return v0

    .line 64
    .end local v0    # "result":I
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
