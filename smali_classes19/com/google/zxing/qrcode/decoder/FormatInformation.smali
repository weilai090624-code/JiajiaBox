.class final Lcom/google/zxing/qrcode/decoder/FormatInformation;
.super Ljava/lang/Object;
.source "FormatInformation.java"


# static fields
.field private static final FORMAT_INFO_DECODE_LOOKUP:[[I

.field private static final FORMAT_INFO_MASK_QR:I = 0x5412


# instance fields
.field private final dataMask:B

.field private final errorCorrectionLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 34
    const/16 v0, 0x20

    new-array v0, v0, [[I

    const/16 v1, 0x5412

    const/4 v2, 0x0

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v2

    const/16 v1, 0x5125

    const/4 v2, 0x1

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v2

    const/16 v1, 0x5e7c

    const/4 v2, 0x2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v2

    const/16 v1, 0x5b4b

    const/4 v2, 0x3

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v2

    const/16 v1, 0x45f9

    const/4 v2, 0x4

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v2

    const/16 v1, 0x40ce

    const/4 v2, 0x5

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v2

    const/16 v1, 0x4f97

    const/4 v2, 0x6

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v2

    const/16 v1, 0x4aa0

    const/4 v2, 0x7

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v2

    const/16 v1, 0x77c4

    const/16 v2, 0x8

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v2

    const/16 v1, 0x72f3

    const/16 v2, 0x9

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v2

    const/16 v1, 0x7daa

    const/16 v2, 0xa

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v2

    const/16 v1, 0x789d

    const/16 v2, 0xb

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v2

    const/16 v1, 0x662f

    const/16 v2, 0xc

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v2

    const/16 v1, 0x6318

    const/16 v2, 0xd

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v2

    const/16 v1, 0x6c41

    const/16 v2, 0xe

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v2

    const/16 v1, 0x6976

    const/16 v2, 0xf

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v2

    const/16 v1, 0x1689

    const/16 v2, 0x10

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v2

    const/16 v1, 0x13be

    const/16 v2, 0x11

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v2

    const/16 v1, 0x1ce7

    const/16 v2, 0x12

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v2

    const/16 v1, 0x19d0

    const/16 v2, 0x13

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v2

    const/16 v1, 0x762

    const/16 v2, 0x14

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v2

    const/16 v1, 0x255

    const/16 v2, 0x15

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v2

    const/16 v1, 0xd0c

    const/16 v2, 0x16

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v2

    const/16 v1, 0x83b

    const/16 v2, 0x17

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v2

    const/16 v1, 0x355f

    const/16 v2, 0x18

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v2

    const/16 v1, 0x3068

    const/16 v2, 0x19

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v2

    const/16 v1, 0x3f31

    const/16 v2, 0x1a

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v2

    const/16 v1, 0x3a06

    const/16 v2, 0x1b

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v2

    const/16 v1, 0x24b4

    const/16 v2, 0x1c

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v2

    const/16 v1, 0x2183

    const/16 v2, 0x1d

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v2

    const/16 v1, 0x2eda

    const/16 v2, 0x1e

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v2

    const/16 v1, 0x2bed

    const/16 v2, 0x1f

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->FORMAT_INFO_DECODE_LOOKUP:[[I

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "formatInfo"    # I

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    shr-int/lit8 v0, p1, 0x3

    and-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->forBits(I)Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->errorCorrectionLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 76
    and-int/lit8 v0, p1, 0x7

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->dataMask:B

    .line 77
    return-void
.end method

.method static decodeFormatInformation(II)Lcom/google/zxing/qrcode/decoder/FormatInformation;
    .locals 3
    .param p0, "maskedFormatInfo1"    # I
    .param p1, "maskedFormatInfo2"    # I

    .line 91
    invoke-static {p0, p1}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->doDecodeFormatInformation(II)Lcom/google/zxing/qrcode/decoder/FormatInformation;

    move-result-object v0

    const/4 v1, 0x0

    .line 92
    .local v1, "formatInfo":Lcom/google/zxing/qrcode/decoder/FormatInformation;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 93
    return-object v1

    .line 98
    :cond_0
    xor-int/lit16 v0, p0, 0x5412

    xor-int/lit16 v2, p1, 0x5412

    invoke-static {v0, v2}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->doDecodeFormatInformation(II)Lcom/google/zxing/qrcode/decoder/FormatInformation;

    move-result-object v0

    return-object v0
.end method

.method private static doDecodeFormatInformation(II)Lcom/google/zxing/qrcode/decoder/FormatInformation;
    .locals 11
    .param p0, "maskedFormatInfo1"    # I
    .param p1, "maskedFormatInfo2"    # I

    .line 104
    const v0, 0x7fffffff

    .line 105
    .local v0, "bestDifference":I
    const/4 v1, 0x0

    .line 106
    .local v1, "bestFormatInfo":I
    sget-object v2, Lcom/google/zxing/qrcode/decoder/FormatInformation;->FORMAT_INFO_DECODE_LOOKUP:[[I

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, v5

    const/4 v5, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v3, :cond_4

    aget-object v9, v2, v8

    .line 107
    .local v7, "decodeInfo":[I
    move-object v7, v9

    aget v9, v9, v6

    .line 108
    .local v4, "targetInfo":I
    move v4, v9

    const/4 v10, 0x1

    if-eq v9, p0, :cond_3

    if-ne v4, p1, :cond_0

    goto :goto_1

    .line 112
    :cond_0
    invoke-static {p0, v4}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->numBitsDiffering(II)I

    move-result v9

    .line 113
    .local v5, "bitsDifference":I
    move v5, v9

    if-ge v9, v0, :cond_1

    .line 114
    aget v1, v7, v10

    .line 115
    move v0, v5

    .line 117
    :cond_1
    if-eq p0, p1, :cond_2

    .line 119
    invoke-static {p1, v4}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->numBitsDiffering(II)I

    move-result v9

    .line 120
    move v5, v9

    if-ge v9, v0, :cond_2

    .line 121
    aget v1, v7, v10

    .line 122
    move v0, v5

    .line 106
    .end local v4    # "targetInfo":I
    .end local v5    # "bitsDifference":I
    .end local v7    # "decodeInfo":[I
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 110
    :cond_3
    :goto_1
    new-instance v2, Lcom/google/zxing/qrcode/decoder/FormatInformation;

    aget v3, v7, v10

    invoke-direct {v2, v3}, Lcom/google/zxing/qrcode/decoder/FormatInformation;-><init>(I)V

    return-object v2

    .line 128
    :cond_4
    const/4 v2, 0x3

    if-gt v0, v2, :cond_5

    .line 129
    new-instance v2, Lcom/google/zxing/qrcode/decoder/FormatInformation;

    invoke-direct {v2, v1}, Lcom/google/zxing/qrcode/decoder/FormatInformation;-><init>(I)V

    return-object v2

    .line 131
    :cond_5
    const/4 v2, 0x0

    return-object v2
.end method

.method static numBitsDiffering(II)I
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 80
    xor-int v0, p0, p1

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 149
    instance-of v0, p1, Lcom/google/zxing/qrcode/decoder/FormatInformation;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 150
    return v1

    .line 152
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/zxing/qrcode/decoder/FormatInformation;

    .line 153
    .local v0, "other":Lcom/google/zxing/qrcode/decoder/FormatInformation;
    iget-object v2, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->errorCorrectionLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    iget-object v3, v0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->errorCorrectionLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    if-ne v2, v3, :cond_1

    iget-byte v2, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->dataMask:B

    iget-byte v3, v0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->dataMask:B

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method getDataMask()B
    .locals 1

    .line 139
    iget-byte v0, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->dataMask:B

    return v0
.end method

.method getErrorCorrectionLevel()Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->errorCorrectionLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->errorCorrectionLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->ordinal()I

    move-result v0

    shl-int/lit8 v0, v0, 0x3

    iget-byte v1, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->dataMask:B

    or-int/2addr v0, v1

    return v0
.end method
