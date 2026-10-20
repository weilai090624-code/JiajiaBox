.class public Lcom/google/zxing/common/GlobalHistogramBinarizer;
.super Lcom/google/zxing/Binarizer;
.source "GlobalHistogramBinarizer.java"


# static fields
.field private static final EMPTY:[B

.field private static final LUMINANCE_BITS:I = 0x5

.field private static final LUMINANCE_BUCKETS:I = 0x20

.field private static final LUMINANCE_SHIFT:I = 0x3


# instance fields
.field private final buckets:[I

.field private luminances:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->EMPTY:[B

    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/LuminanceSource;)V
    .locals 1
    .param p1, "source"    # Lcom/google/zxing/LuminanceSource;

    .line 45
    invoke-direct {p0, p1}, Lcom/google/zxing/Binarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    .line 46
    sget-object v0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->EMPTY:[B

    iput-object v0, p0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->luminances:[B

    .line 47
    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->buckets:[I

    .line 48
    return-void
.end method

.method private static estimateBlackPoint([I)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 148
    array-length v0, p0

    .line 149
    nop

    .line 150
    nop

    .line 151
    nop

    .line 152
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 153
    aget v6, p0, v2

    if-le v6, v3, :cond_0

    .line 154
    nop

    .line 155
    aget v3, p0, v2

    move v5, v2

    .line 157
    :cond_0
    aget v6, p0, v2

    if-le v6, v4, :cond_1

    .line 158
    aget v4, p0, v2

    .line 152
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 163
    :cond_2
    nop

    .line 164
    nop

    .line 165
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v1, v0, :cond_4

    .line 166
    sub-int v6, v1, v5

    .line 168
    aget v7, p0, v1

    mul-int v7, v7, v6

    mul-int v7, v7, v6

    .line 169
    if-le v7, v3, :cond_3

    .line 170
    nop

    .line 171
    move v2, v1

    move v3, v7

    .line 165
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 176
    :cond_4
    if-le v5, v2, :cond_5

    .line 177
    nop

    .line 178
    nop

    .line 179
    goto :goto_2

    .line 176
    :cond_5
    move v8, v5

    move v5, v2

    move v2, v8

    .line 184
    :goto_2
    sub-int v1, v5, v2

    div-int/lit8 v0, v0, 0x10

    if-le v1, v0, :cond_8

    .line 189
    add-int/lit8 v0, v5, -0x1

    .line 190
    nop

    .line 191
    const/4 v1, -0x1

    move v1, v0

    const/4 v3, -0x1

    :goto_3
    if-le v0, v2, :cond_7

    .line 192
    sub-int v6, v0, v2

    .line 193
    mul-int v6, v6, v6

    sub-int v7, v5, v0

    mul-int v6, v6, v7

    aget v7, p0, v0

    sub-int v7, v4, v7

    mul-int v6, v6, v7

    .line 194
    if-le v6, v3, :cond_6

    .line 195
    nop

    .line 196
    move v1, v0

    move v3, v6

    .line 191
    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 200
    :cond_7
    shl-int/lit8 p0, v1, 0x3

    return p0

    .line 185
    :cond_8
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method

.method private initArrays(I)V
    .locals 3
    .param p1, "luminanceSize"    # I

    .line 138
    iget-object v0, p0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->luminances:[B

    array-length v0, v0

    if-ge v0, p1, :cond_0

    .line 139
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->luminances:[B

    .line 141
    :cond_0
    const/4 v0, 0x0

    .local v0, "x":I
    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_1

    .line 142
    iget-object v1, p0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->buckets:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    .end local v0    # "x":I
    :cond_1
    return-void
.end method


# virtual methods
.method public createBinarizer(Lcom/google/zxing/LuminanceSource;)Lcom/google/zxing/Binarizer;
    .locals 1
    .param p1, "source"    # Lcom/google/zxing/LuminanceSource;

    .line 134
    new-instance v0, Lcom/google/zxing/common/GlobalHistogramBinarizer;

    invoke-direct {v0, p1}, Lcom/google/zxing/common/GlobalHistogramBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    return-object v0
.end method

.method public getBlackMatrix()Lcom/google/zxing/common/BitMatrix;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 95
    invoke-virtual {p0}, Lcom/google/zxing/common/GlobalHistogramBinarizer;->getLuminanceSource()Lcom/google/zxing/LuminanceSource;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Lcom/google/zxing/LuminanceSource;->getWidth()I

    move-result v1

    .line 97
    invoke-virtual {v0}, Lcom/google/zxing/LuminanceSource;->getHeight()I

    move-result v2

    .line 98
    new-instance v3, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v3, v1, v2}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 102
    invoke-direct {p0, v1}, Lcom/google/zxing/common/GlobalHistogramBinarizer;->initArrays(I)V

    .line 103
    iget-object v4, p0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->buckets:[I

    .line 104
    const/4 v5, 0x1

    const/4 v6, 0x1

    :goto_0
    const/4 v7, 0x5

    if-ge v6, v7, :cond_1

    .line 105
    mul-int v8, v2, v6

    div-int/2addr v8, v7

    .line 106
    iget-object v9, p0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->luminances:[B

    invoke-virtual {v0, v8, v9}, Lcom/google/zxing/LuminanceSource;->getRow(I[B)[B

    move-result-object v8

    .line 107
    shl-int/lit8 v9, v1, 0x2

    div-int/2addr v9, v7

    .line 108
    div-int/lit8 v7, v1, 0x5

    :goto_1
    if-ge v7, v9, :cond_0

    .line 109
    aget-byte v10, v8, v7

    and-int/lit16 v10, v10, 0xff

    .line 110
    shr-int/lit8 v10, v10, 0x3

    aget v11, v4, v10

    add-int/2addr v11, v5

    aput v11, v4, v10

    .line 108
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 104
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 113
    :cond_1
    invoke-static {v4}, Lcom/google/zxing/common/GlobalHistogramBinarizer;->estimateBlackPoint([I)I

    move-result v4

    .line 118
    invoke-virtual {v0}, Lcom/google/zxing/LuminanceSource;->getMatrix()[B

    move-result-object v0

    .line 119
    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v2, :cond_4

    .line 120
    mul-int v7, v6, v1

    .line 121
    const/4 v8, 0x0

    :goto_3
    if-ge v8, v1, :cond_3

    .line 122
    add-int v9, v7, v8

    aget-byte v9, v0, v9

    and-int/lit16 v9, v9, 0xff

    .line 123
    if-ge v9, v4, :cond_2

    .line 124
    invoke-virtual {v3, v8, v6}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 121
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 119
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 129
    :cond_4
    return-object v3
.end method

.method public getBlackRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;
    .locals 10
    .param p1, "y"    # I
    .param p2, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 53
    invoke-virtual {p0}, Lcom/google/zxing/common/GlobalHistogramBinarizer;->getLuminanceSource()Lcom/google/zxing/LuminanceSource;

    move-result-object v0

    const/4 v1, 0x0

    .line 54
    .local v1, "source":Lcom/google/zxing/LuminanceSource;
    move-object v1, v0

    invoke-virtual {v0}, Lcom/google/zxing/LuminanceSource;->getWidth()I

    move-result v0

    .line 55
    .local v0, "width":I
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    if-ge v2, v0, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->clear()V

    goto :goto_1

    .line 56
    :cond_1
    :goto_0
    new-instance v2, Lcom/google/zxing/common/BitArray;

    invoke-direct {v2, v0}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    move-object p2, v2

    .line 61
    :goto_1
    invoke-direct {p0, v0}, Lcom/google/zxing/common/GlobalHistogramBinarizer;->initArrays(I)V

    .line 62
    iget-object v2, p0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->luminances:[B

    invoke-virtual {v1, p1, v2}, Lcom/google/zxing/LuminanceSource;->getRow(I[B)[B

    move-result-object v2

    .line 63
    .local v2, "localLuminances":[B
    iget-object v3, p0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->buckets:[I

    .line 64
    .local v3, "localBuckets":[I
    const/4 v4, 0x0

    .local v4, "x":I
    :goto_2
    const/4 v5, 0x3

    const/4 v6, 0x1

    if-ge v4, v0, :cond_2

    .line 65
    aget-byte v7, v2, v4

    and-int/lit16 v7, v7, 0xff

    shr-int/lit8 v5, v7, 0x3

    aget v7, v3, v5

    add-int/2addr v7, v6

    aput v7, v3, v5

    .line 64
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 67
    .end local v4    # "x":I
    :cond_2
    invoke-static {v3}, Lcom/google/zxing/common/GlobalHistogramBinarizer;->estimateBlackPoint([I)I

    move-result v4

    .line 69
    .local v4, "blackPoint":I
    if-ge v0, v5, :cond_5

    .line 71
    const/4 v5, 0x0

    .local v5, "x":I
    :goto_3
    if-ge v5, v0, :cond_4

    .line 72
    aget-byte v6, v2, v5

    and-int/lit16 v6, v6, 0xff

    if-ge v6, v4, :cond_3

    .line 73
    invoke-virtual {p2, v5}, Lcom/google/zxing/common/BitArray;->set(I)V

    .line 71
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .end local v5    # "x":I
    :cond_4
    goto :goto_5

    .line 77
    :cond_5
    const/4 v5, 0x0

    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    .line 78
    .local v5, "left":I
    aget-byte v6, v2, v6

    and-int/lit16 v6, v6, 0xff

    .line 79
    .local v6, "center":I
    const/4 v7, 0x1

    .local v7, "x":I
    :goto_4
    add-int/lit8 v8, v0, -0x1

    if-ge v7, v8, :cond_7

    .line 80
    add-int/lit8 v8, v7, 0x1

    aget-byte v8, v2, v8

    and-int/lit16 v8, v8, 0xff

    .line 82
    .local v8, "right":I
    shl-int/lit8 v9, v6, 0x2

    sub-int/2addr v9, v5

    sub-int/2addr v9, v8

    div-int/lit8 v9, v9, 0x2

    if-ge v9, v4, :cond_6

    .line 83
    invoke-virtual {p2, v7}, Lcom/google/zxing/common/BitArray;->set(I)V

    .line 85
    :cond_6
    move v5, v6

    .line 86
    move v6, v8

    .line 79
    .end local v8    # "right":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 89
    .end local v5    # "left":I
    .end local v6    # "center":I
    .end local v7    # "x":I
    :cond_7
    :goto_5
    return-object p2
.end method
