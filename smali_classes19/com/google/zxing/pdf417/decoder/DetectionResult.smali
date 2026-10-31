.class final Lcom/google/zxing/pdf417/decoder/DetectionResult;
.super Ljava/lang/Object;
.source "DetectionResult.java"


# static fields
.field private static final ADJUST_ROW_NUMBER_SKIP:I = 0x2


# instance fields
.field private final barcodeColumnCount:I

.field private final barcodeMetadata:Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

.field private boundingBox:Lcom/google/zxing/pdf417/decoder/BoundingBox;

.field private final detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;


# direct methods
.method constructor <init>(Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;Lcom/google/zxing/pdf417/decoder/BoundingBox;)V
    .registers 4
    .param p1, "barcodeMetadata"    # Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    .param p2, "boundingBox"    # Lcom/google/zxing/pdf417/decoder/BoundingBox;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeMetadata:Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    .line 37
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getColumnCount()I

    move-result v0

    iput v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    .line 38
    iput-object p2, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->boundingBox:Lcom/google/zxing/pdf417/decoder/BoundingBox;

    .line 39
    iget v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    iput-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    .line 40
    return-void
.end method

.method private adjustIndicatorColumnRowNumbers(Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V
    .registers 4
    .param p1, "detectionResultColumn"    # Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    .line 55
    if-eqz p1, :cond_a

    .line 56
    move-object v0, p1

    check-cast v0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    iget-object v1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeMetadata:Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    .line 57
    invoke-virtual {v0, v1}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->adjustCompleteIndicatorColumnRowNumbers(Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;)V

    .line 59
    :cond_a
    return-void
.end method

.method private static adjustRowNumber(Lcom/google/zxing/pdf417/decoder/Codeword;Lcom/google/zxing/pdf417/decoder/Codeword;)Z
    .registers 5
    .param p0, "codeword"    # Lcom/google/zxing/pdf417/decoder/Codeword;
    .param p1, "otherCodeword"    # Lcom/google/zxing/pdf417/decoder/Codeword;

    .line 230
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 231
    return v0

    .line 233
    :cond_4
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/Codeword;->hasValidRowNumber()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getBucket()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/Codeword;->getBucket()I

    move-result v2

    if-ne v1, v2, :cond_1d

    .line 234
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/zxing/pdf417/decoder/Codeword;->setRowNumber(I)V

    .line 235
    const/4 v0, 0x1

    return v0

    .line 237
    :cond_1d
    return v0
.end method

.method private static adjustRowNumberIfValid(IILcom/google/zxing/pdf417/decoder/Codeword;)I
    .registers 4
    .param p0, "rowIndicatorRowNumber"    # I
    .param p1, "invalidRowCounts"    # I
    .param p2, "codeword"    # Lcom/google/zxing/pdf417/decoder/Codeword;

    .line 172
    if-nez p2, :cond_3

    .line 173
    return p1

    .line 175
    :cond_3
    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/Codeword;->hasValidRowNumber()Z

    move-result v0

    if-nez v0, :cond_16

    .line 176
    invoke-virtual {p2, p0}, Lcom/google/zxing/pdf417/decoder/Codeword;->isValidRowNumber(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 177
    invoke-virtual {p2, p0}, Lcom/google/zxing/pdf417/decoder/Codeword;->setRowNumber(I)V

    .line 178
    const/4 p1, 0x0

    goto :goto_16

    .line 180
    :cond_14
    add-int/lit8 p1, p1, 0x1

    .line 183
    :cond_16
    :goto_16
    return p1
.end method

.method private adjustRowNumbers()I
    .registers 6

    .line 69
    invoke-direct {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumbersByRow()I

    move-result v0

    const/4 v1, 0x0

    .line 70
    .local v1, "unadjustedCount":I
    move v1, v0

    if-nez v0, :cond_a

    .line 71
    const/4 v0, 0x0

    return v0

    .line 73
    :cond_a
    const/4 v0, 0x1

    .local v0, "barcodeColumn":I
    :goto_b
    iget v2, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_32

    .line 74
    iget-object v2, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v2

    .line 75
    .local v2, "codewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    const/4 v3, 0x0

    .local v3, "codewordsRow":I
    :goto_1a
    array-length v4, v2

    if-ge v3, v4, :cond_2f

    .line 76
    aget-object v4, v2, v3

    if-eqz v4, :cond_2c

    .line 79
    aget-object v4, v2, v3

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/Codeword;->hasValidRowNumber()Z

    move-result v4

    if-nez v4, :cond_2c

    .line 80
    invoke-direct {p0, v0, v3, v2}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumbers(II[Lcom/google/zxing/pdf417/decoder/Codeword;)V

    .line 75
    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 73
    .end local v2    # "codewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v3    # "codewordsRow":I
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 84
    .end local v0    # "barcodeColumn":I
    :cond_32
    return v1
.end method

.method private adjustRowNumbers(II[Lcom/google/zxing/pdf417/decoder/Codeword;)V
    .registers 14
    .param p1, "barcodeColumn"    # I
    .param p2, "codewordsRow"    # I
    .param p3, "codewords"    # [Lcom/google/zxing/pdf417/decoder/Codeword;

    .line 187
    aget-object v0, p3, p2

    .line 188
    .local v0, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    iget-object v1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 189
    .local v3, "previousColumnCodewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    move-object v3, v1

    .line 190
    .local v1, "nextColumnCodewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    iget-object v4, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    add-int/lit8 v5, p1, 0x1

    aget-object v4, v4, v5

    if-eqz v4, :cond_21

    .line 191
    iget-object v4, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    add-int/lit8 v5, p1, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v1

    .line 194
    :cond_21
    const/16 v4, 0xe

    new-array v5, v4, [Lcom/google/zxing/pdf417/decoder/Codeword;

    .line 196
    .local v2, "otherCodewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    move-object v2, v5

    aget-object v6, v3, p2

    const/4 v7, 0x2

    aput-object v6, v5, v7

    .line 197
    const/4 v5, 0x3

    aget-object v6, v1, p2

    aput-object v6, v2, v5

    .line 199
    const/4 v5, 0x0

    if-lez p2, :cond_47

    .line 200
    add-int/lit8 v6, p2, -0x1

    aget-object v6, p3, v6

    aput-object v6, v2, v5

    .line 201
    add-int/lit8 v6, p2, -0x1

    aget-object v6, v3, v6

    const/4 v8, 0x4

    aput-object v6, v2, v8

    .line 202
    add-int/lit8 v6, p2, -0x1

    aget-object v6, v1, v6

    const/4 v8, 0x5

    aput-object v6, v2, v8

    .line 204
    :cond_47
    const/4 v6, 0x1

    if-le p2, v6, :cond_62

    .line 205
    add-int/lit8 v8, p2, -0x2

    aget-object v8, p3, v8

    const/16 v9, 0x8

    aput-object v8, v2, v9

    .line 206
    add-int/lit8 v8, p2, -0x2

    aget-object v8, v3, v8

    const/16 v9, 0xa

    aput-object v8, v2, v9

    .line 207
    add-int/lit8 v8, p2, -0x2

    aget-object v8, v1, v8

    const/16 v9, 0xb

    aput-object v8, v2, v9

    .line 209
    :cond_62
    array-length v8, p3

    sub-int/2addr v8, v6

    if-ge p2, v8, :cond_7a

    .line 210
    add-int/lit8 v8, p2, 0x1

    aget-object v8, p3, v8

    aput-object v8, v2, v6

    .line 211
    add-int/lit8 v6, p2, 0x1

    aget-object v6, v3, v6

    const/4 v8, 0x6

    aput-object v6, v2, v8

    .line 212
    add-int/lit8 v6, p2, 0x1

    aget-object v6, v1, v6

    const/4 v8, 0x7

    aput-object v6, v2, v8

    .line 214
    :cond_7a
    array-length v6, p3

    sub-int/2addr v6, v7

    if-ge p2, v6, :cond_96

    .line 215
    add-int/lit8 v6, p2, 0x2

    aget-object v6, p3, v6

    const/16 v7, 0x9

    aput-object v6, v2, v7

    .line 216
    add-int/lit8 v6, p2, 0x2

    aget-object v6, v3, v6

    const/16 v7, 0xc

    aput-object v6, v2, v7

    .line 217
    add-int/lit8 v6, p2, 0x2

    aget-object v6, v1, v6

    const/16 v7, 0xd

    aput-object v6, v2, v7

    .line 219
    :cond_96
    nop

    :goto_97
    if-ge v5, v4, :cond_a5

    aget-object v6, v2, v5

    .line 220
    .local v6, "otherCodeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    invoke-static {v0, v6}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumber(Lcom/google/zxing/pdf417/decoder/Codeword;Lcom/google/zxing/pdf417/decoder/Codeword;)Z

    move-result v7

    if-eqz v7, :cond_a2

    .line 221
    return-void

    .line 219
    .end local v6    # "otherCodeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    :cond_a2
    add-int/lit8 v5, v5, 0x1

    goto :goto_97

    .line 224
    :cond_a5
    return-void
.end method

.method private adjustRowNumbersByRow()I
    .registers 3

    .line 88
    invoke-direct {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumbersFromBothRI()V

    .line 93
    invoke-direct {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumbersFromLRI()I

    move-result v0

    .line 94
    invoke-direct {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumbersFromRRI()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private adjustRowNumbersFromBothRI()V
    .registers 8

    .line 98
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    iget v2, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/lit8 v2, v2, 0x1

    aget-object v0, v0, v2

    if-nez v0, :cond_12

    goto :goto_74

    .line 101
    :cond_12
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v0

    .line 102
    .local v0, "LRIcodewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    iget-object v1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    iget v2, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v1

    .line 103
    .local v1, "RRIcodewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    const/4 v2, 0x0

    .local v2, "codewordsRow":I
    const/4 v3, 0x0

    :goto_28
    array-length v4, v0

    if-ge v2, v4, :cond_73

    .line 104
    aget-object v4, v0, v2

    if-eqz v4, :cond_70

    aget-object v4, v1, v2

    if-eqz v4, :cond_70

    aget-object v4, v0, v2

    .line 106
    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v4

    aget-object v5, v1, v2

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v5

    if-ne v4, v5, :cond_70

    .line 107
    const/4 v4, 0x1

    .local v4, "barcodeColumn":I
    :goto_42
    iget v5, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    if-gt v4, v5, :cond_70

    .line 108
    iget-object v5, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v5

    aget-object v5, v5, v2

    .line 109
    .local v3, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    move-object v3, v5

    if-eqz v5, :cond_6d

    .line 112
    aget-object v5, v0, v2

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/zxing/pdf417/decoder/Codeword;->setRowNumber(I)V

    .line 113
    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/Codeword;->hasValidRowNumber()Z

    move-result v5

    if-nez v5, :cond_6d

    .line 114
    iget-object v5, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v6, v5, v2

    .line 107
    .end local v3    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    :cond_6d
    add-int/lit8 v4, v4, 0x1

    goto :goto_42

    .line 103
    .end local v4    # "barcodeColumn":I
    :cond_70
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 119
    .end local v2    # "codewordsRow":I
    :cond_73
    return-void

    .line 99
    .end local v0    # "LRIcodewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v1    # "RRIcodewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    :cond_74
    :goto_74
    return-void
.end method

.method private adjustRowNumbersFromLRI()I
    .registers 9

    .line 147
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_8

    .line 148
    return v1

    .line 150
    :cond_8
    const/4 v0, 0x0

    .line 151
    .local v0, "unadjustedCount":I
    iget-object v2, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v1, v2, v1

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v1

    .line 152
    .local v1, "codewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    const/4 v2, 0x0

    .local v2, "codewordsRow":I
    const/4 v3, 0x0

    :goto_13
    array-length v4, v1

    if-ge v2, v4, :cond_4a

    .line 153
    aget-object v4, v1, v2

    if-eqz v4, :cond_47

    .line 156
    aget-object v4, v1, v2

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v4

    .line 157
    .local v4, "rowIndicatorRowNumber":I
    const/4 v5, 0x0

    .line 158
    .local v5, "invalidRowCounts":I
    const/4 v6, 0x1

    .local v6, "barcodeColumn":I
    :goto_22
    iget v7, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/lit8 v7, v7, 0x1

    if-ge v6, v7, :cond_47

    const/4 v7, 0x2

    if-ge v5, v7, :cond_47

    .line 159
    iget-object v7, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v7, v7, v6

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v7

    aget-object v7, v7, v2

    .line 160
    .local v3, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    move-object v3, v7

    if-eqz v7, :cond_44

    .line 161
    invoke-static {v4, v5, v3}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumberIfValid(IILcom/google/zxing/pdf417/decoder/Codeword;)I

    move-result v5

    .line 162
    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/Codeword;->hasValidRowNumber()Z

    move-result v7

    if-nez v7, :cond_44

    .line 163
    add-int/lit8 v0, v0, 0x1

    .line 158
    .end local v3    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    :cond_44
    add-int/lit8 v6, v6, 0x1

    goto :goto_22

    .line 152
    .end local v4    # "rowIndicatorRowNumber":I
    .end local v5    # "invalidRowCounts":I
    .end local v6    # "barcodeColumn":I
    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 168
    .end local v2    # "codewordsRow":I
    :cond_4a
    return v0
.end method

.method private adjustRowNumbersFromRRI()I
    .registers 9

    .line 122
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    iget v1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    if-nez v0, :cond_c

    .line 123
    const/4 v0, 0x0

    return v0

    .line 125
    :cond_c
    const/4 v0, 0x0

    .line 126
    .local v0, "unadjustedCount":I
    iget-object v1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    iget v2, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v1

    .line 127
    .local v1, "codewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    const/4 v2, 0x0

    .local v2, "codewordsRow":I
    const/4 v3, 0x0

    :goto_1b
    array-length v4, v1

    if-ge v2, v4, :cond_51

    .line 128
    aget-object v4, v1, v2

    if-eqz v4, :cond_4e

    .line 131
    aget-object v4, v1, v2

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v4

    .line 132
    .local v4, "rowIndicatorRowNumber":I
    const/4 v5, 0x0

    .line 133
    .local v5, "invalidRowCounts":I
    iget v6, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/lit8 v6, v6, 0x1

    .local v6, "barcodeColumn":I
    :goto_2d
    if-lez v6, :cond_4e

    const/4 v7, 0x2

    if-ge v5, v7, :cond_4e

    .line 134
    iget-object v7, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v7, v7, v6

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v7

    aget-object v7, v7, v2

    .line 135
    .local v3, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    move-object v3, v7

    if-eqz v7, :cond_4b

    .line 136
    invoke-static {v4, v5, v3}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumberIfValid(IILcom/google/zxing/pdf417/decoder/Codeword;)I

    move-result v5

    .line 137
    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/Codeword;->hasValidRowNumber()Z

    move-result v7

    if-nez v7, :cond_4b

    .line 138
    add-int/lit8 v0, v0, 0x1

    .line 133
    .end local v3    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    :cond_4b
    add-int/lit8 v6, v6, -0x1

    goto :goto_2d

    .line 127
    .end local v4    # "rowIndicatorRowNumber":I
    .end local v5    # "invalidRowCounts":I
    .end local v6    # "barcodeColumn":I
    :cond_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 143
    .end local v2    # "codewordsRow":I
    :cond_51
    return v0
.end method


# virtual methods
.method getBarcodeColumnCount()I
    .registers 2

    .line 241
    iget v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    return v0
.end method

.method getBarcodeECLevel()I
    .registers 2

    .line 249
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeMetadata:Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getErrorCorrectionLevel()I

    move-result v0

    return v0
.end method

.method getBarcodeRowCount()I
    .registers 2

    .line 245
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeMetadata:Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v0

    return v0
.end method

.method getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .registers 2

    .line 257
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->boundingBox:Lcom/google/zxing/pdf417/decoder/BoundingBox;

    return-object v0
.end method

.method getDetectionResultColumn(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    .registers 3
    .param p1, "barcodeColumn"    # I

    .line 265
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v0, v0, p1

    return-object v0
.end method

.method getDetectionResultColumns()[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    .registers 4

    .line 43
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustIndicatorColumnRowNumbers(Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V

    .line 44
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    iget v1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustIndicatorColumnRowNumbers(Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V

    .line 45
    const/16 v0, 0x3a0

    .line 48
    .local v0, "unadjustedCodewordCount":I
    :cond_15
    move v1, v0

    .line 49
    .local v1, "previousUnadjustedCount":I
    invoke-direct {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumbers()I

    move-result v2

    .line 50
    move v0, v2

    if-lez v2, :cond_1f

    if-lt v0, v1, :cond_15

    .line 51
    :cond_1f
    iget-object v2, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    return-object v2
.end method

.method setBoundingBox(Lcom/google/zxing/pdf417/decoder/BoundingBox;)V
    .registers 2
    .param p1, "boundingBox"    # Lcom/google/zxing/pdf417/decoder/BoundingBox;

    .line 253
    iput-object p1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->boundingBox:Lcom/google/zxing/pdf417/decoder/BoundingBox;

    .line 254
    return-void
.end method

.method setDetectionResultColumn(ILcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V
    .registers 4
    .param p1, "barcodeColumn"    # I
    .param p2, "detectionResultColumn"    # Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    .line 261
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aput-object p2, v0, p1

    .line 262
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 12

    .line 270
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 271
    .local v3, "rowIndicatorColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    move-object v3, v0

    const/4 v4, 0x1

    if-nez v0, :cond_12

    .line 272
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    iget v5, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/2addr v5, v4

    aget-object v3, v0, v5

    .line 274
    :cond_12
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    .line 275
    .local v0, "formatter":Ljava/util/Formatter;
    const/4 v5, 0x0

    .local v5, "codewordsRow":I
    :goto_18
    :try_start_18
    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v6

    array-length v6, v6

    if-ge v5, v6, :cond_7c

    .line 276
    const-string v6, "CW %3d:"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v7, v8, v1

    invoke-virtual {v0, v6, v8}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 277
    const/4 v6, 0x0

    .local v6, "barcodeColumn":I
    :goto_2d
    iget v7, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    const/4 v8, 0x2

    add-int/2addr v7, v8

    if-ge v6, v7, :cond_72

    .line 278
    iget-object v7, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v7, v7, v6
    :try_end_37
    .catchall {:try_start_18 .. :try_end_37} :catchall_84

    const-string v9, "    |   "

    if-nez v7, :cond_41

    .line 279
    :try_start_3b
    new-array v7, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v9, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 280
    goto :goto_6f

    .line 282
    :cond_41
    iget-object v7, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v7, v7, v6

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v7

    aget-object v7, v7, v5

    .line 283
    .local v2, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    move-object v2, v7

    if-nez v7, :cond_54

    .line 284
    new-array v7, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v9, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 285
    goto :goto_6f

    .line 287
    :cond_54
    const-string v7, " %3d|%3d"

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/Codeword;->getValue()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v9, v8, v1

    aput-object v10, v8, v4

    invoke-virtual {v0, v7, v8}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 277
    .end local v2    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    :goto_6f
    add-int/lit8 v6, v6, 0x1

    goto :goto_2d

    .line 289
    .end local v6    # "barcodeColumn":I
    :cond_72
    const-string v6, "%n"

    new-array v7, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 275
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 291
    .end local v5    # "codewordsRow":I
    :cond_7c
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_80
    .catchall {:try_start_3b .. :try_end_80} :catchall_84

    .line 292
    invoke-virtual {v0}, Ljava/util/Formatter;->close()V

    .line 291
    return-object v1

    .line 274
    :catchall_84
    move-exception v1

    .end local v0    # "formatter":Ljava/util/Formatter;
    .end local v3    # "rowIndicatorColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    :try_start_85
    throw v1
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_86

    .line 292
    .restart local v0    # "formatter":Ljava/util/Formatter;
    .restart local v3    # "rowIndicatorColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    :catchall_86
    move-exception v2

    :try_start_87
    invoke-virtual {v0}, Ljava/util/Formatter;->close()V
    :try_end_8a
    .catchall {:try_start_87 .. :try_end_8a} :catchall_8b

    goto :goto_8f

    :catchall_8b
    move-exception v4

    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8f
    throw v2
.end method
