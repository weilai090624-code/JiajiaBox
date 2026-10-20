.class public final Lcom/google/zxing/oned/ITFReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "ITFReader.java"


# static fields
.field private static final DEFAULT_ALLOWED_LENGTHS:[I

.field private static final END_PATTERN_REVERSED:[[I

.field private static final MAX_AVG_VARIANCE:F = 0.38f

.field private static final MAX_INDIVIDUAL_VARIANCE:F = 0.5f

.field private static final N:I = 0x1

.field private static final PATTERNS:[[I

.field private static final START_PATTERN:[I

.field private static final W:I = 0x3

.field private static final w:I = 0x2


# instance fields
.field private narrowLineWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 55
    const/4 v0, 0x6

    const/16 v1, 0x8

    const/16 v2, 0xa

    const/16 v3, 0xc

    const/16 v4, 0xe

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v5

    sput-object v5, Lcom/google/zxing/oned/ITFReader;->DEFAULT_ALLOWED_LENGTHS:[I

    .line 66
    const/4 v5, 0x1

    filled-new-array {v5, v5, v5, v5}, [I

    move-result-object v6

    sput-object v6, Lcom/google/zxing/oned/ITFReader;->START_PATTERN:[I

    .line 67
    const/4 v6, 0x2

    new-array v7, v6, [[I

    filled-new-array {v5, v5, v6}, [I

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const/4 v8, 0x3

    filled-new-array {v5, v5, v8}, [I

    move-result-object v10

    aput-object v10, v7, v5

    sput-object v7, Lcom/google/zxing/oned/ITFReader;->END_PATTERN_REVERSED:[[I

    .line 77
    const/16 v7, 0x14

    new-array v7, v7, [[I

    filled-new-array {v5, v5, v6, v6, v5}, [I

    move-result-object v10

    aput-object v10, v7, v9

    filled-new-array {v6, v5, v5, v5, v6}, [I

    move-result-object v9

    aput-object v9, v7, v5

    filled-new-array {v5, v6, v5, v5, v6}, [I

    move-result-object v9

    aput-object v9, v7, v6

    filled-new-array {v6, v6, v5, v5, v5}, [I

    move-result-object v9

    aput-object v9, v7, v8

    filled-new-array {v5, v5, v6, v5, v6}, [I

    move-result-object v9

    const/4 v10, 0x4

    aput-object v9, v7, v10

    filled-new-array {v6, v5, v6, v5, v5}, [I

    move-result-object v9

    const/4 v10, 0x5

    aput-object v9, v7, v10

    filled-new-array {v5, v6, v6, v5, v5}, [I

    move-result-object v9

    aput-object v9, v7, v0

    filled-new-array {v5, v5, v5, v6, v6}, [I

    move-result-object v0

    const/4 v9, 0x7

    aput-object v0, v7, v9

    filled-new-array {v6, v5, v5, v6, v5}, [I

    move-result-object v0

    aput-object v0, v7, v1

    filled-new-array {v5, v6, v5, v6, v5}, [I

    move-result-object v0

    const/16 v1, 0x9

    aput-object v0, v7, v1

    filled-new-array {v5, v5, v8, v8, v5}, [I

    move-result-object v0

    aput-object v0, v7, v2

    filled-new-array {v8, v5, v5, v5, v8}, [I

    move-result-object v0

    const/16 v1, 0xb

    aput-object v0, v7, v1

    filled-new-array {v5, v8, v5, v5, v8}, [I

    move-result-object v0

    aput-object v0, v7, v3

    filled-new-array {v8, v8, v5, v5, v5}, [I

    move-result-object v0

    const/16 v1, 0xd

    aput-object v0, v7, v1

    filled-new-array {v5, v5, v8, v5, v8}, [I

    move-result-object v0

    aput-object v0, v7, v4

    filled-new-array {v8, v5, v8, v5, v5}, [I

    move-result-object v0

    const/16 v1, 0xf

    aput-object v0, v7, v1

    filled-new-array {v5, v8, v8, v5, v5}, [I

    move-result-object v0

    const/16 v1, 0x10

    aput-object v0, v7, v1

    filled-new-array {v5, v5, v5, v8, v8}, [I

    move-result-object v0

    const/16 v1, 0x11

    aput-object v0, v7, v1

    filled-new-array {v8, v5, v5, v8, v5}, [I

    move-result-object v0

    const/16 v1, 0x12

    aput-object v0, v7, v1

    filled-new-array {v5, v8, v5, v8, v5}, [I

    move-result-object v0

    const/16 v1, 0x13

    aput-object v0, v7, v1

    sput-object v7, Lcom/google/zxing/oned/ITFReader;->PATTERNS:[[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/zxing/oned/ITFReader;->narrowLineWidth:I

    return-void
.end method

.method private static decodeDigit([I)I
    .locals 7
    .param p0, "counters"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 355
    const v0, 0x3ec28f5c    # 0.38f

    .line 356
    .local v0, "bestVariance":F
    const/4 v1, -0x1

    .line 357
    .local v1, "bestMatch":I
    sget-object v2, Lcom/google/zxing/oned/ITFReader;->PATTERNS:[[I

    array-length v2, v2

    .line 358
    .local v2, "max":I
    const/4 v3, 0x0

    .local v3, "i":I
    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 359
    sget-object v5, Lcom/google/zxing/oned/ITFReader;->PATTERNS:[[I

    aget-object v5, v5, v3

    .line 360
    .local v5, "pattern":[I
    const/high16 v6, 0x3f000000    # 0.5f

    invoke-static {p0, v5, v6}, Lcom/google/zxing/oned/ITFReader;->patternMatchVariance([I[IF)F

    move-result v6

    .line 361
    .local v4, "variance":F
    move v4, v6

    cmpg-float v6, v6, v0

    if-gez v6, :cond_0

    .line 362
    move v0, v4

    .line 363
    move v1, v3

    goto :goto_1

    .line 364
    :cond_0
    cmpl-float v6, v4, v0

    if-nez v6, :cond_1

    .line 366
    const/4 v1, -0x1

    .line 358
    .end local v4    # "variance":F
    .end local v5    # "pattern":[I
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 369
    .end local v3    # "i":I
    :cond_2
    if-ltz v1, :cond_3

    .line 370
    rem-int/lit8 v3, v1, 0xa

    return v3

    .line 372
    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v3

    throw v3
.end method

.method private decodeEnd(Lcom/google/zxing/common/BitArray;)[I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 275
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 277
    :try_start_0
    invoke-static {p1}, Lcom/google/zxing/oned/ITFReader;->skipWhiteSpace(Lcom/google/zxing/common/BitArray;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_1
    sget-object v3, Lcom/google/zxing/oned/ITFReader;->END_PATTERN_REVERSED:[[I

    aget-object v3, v3, v2

    invoke-static {p1, v0, v3}, Lcom/google/zxing/oned/ITFReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;I[I)[I

    move-result-object v0
    :try_end_1
    .catch Lcom/google/zxing/NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 283
    goto :goto_0

    .line 281
    :catch_0
    move-exception v3

    .line 282
    :try_start_2
    sget-object v3, Lcom/google/zxing/oned/ITFReader;->END_PATTERN_REVERSED:[[I

    aget-object v3, v3, v1

    invoke-static {p1, v0, v3}, Lcom/google/zxing/oned/ITFReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;I[I)[I

    move-result-object v0

    .line 288
    :goto_0
    aget v3, v0, v2

    invoke-direct {p0, p1, v3}, Lcom/google/zxing/oned/ITFReader;->validateQuietZone(Lcom/google/zxing/common/BitArray;I)V

    .line 293
    aget v3, v0, v2

    .line 294
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    aget v5, v0, v1

    sub-int/2addr v4, v5

    aput v4, v0, v2

    .line 295
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    sub-int/2addr v2, v3

    aput v2, v0, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 297
    nop

    .line 300
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 297
    return-object v0

    .line 300
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 301
    throw v0
.end method

.method private static decodeMiddle(Lcom/google/zxing/common/BitArray;IILjava/lang/StringBuilder;)V
    .locals 8
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .param p1, "payloadStart"    # I
    .param p2, "payloadEnd"    # I
    .param p3, "resultString"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 166
    const/16 v0, 0xa

    new-array v1, v0, [I

    .line 167
    .local v1, "counterDigitPair":[I
    const/4 v2, 0x5

    new-array v3, v2, [I

    .line 168
    .local v3, "counterBlack":[I
    new-array v4, v2, [I

    .line 170
    .local v4, "counterWhite":[I
    :goto_0
    if-ge p1, p2, :cond_2

    .line 173
    invoke-static {p0, p1, v1}, Lcom/google/zxing/oned/ITFReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 175
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_1
    if-ge v5, v2, :cond_0

    .line 176
    mul-int/lit8 v6, v5, 0x2

    .line 177
    .local v6, "twoK":I
    aget v7, v1, v6

    aput v7, v3, v5

    .line 178
    add-int/lit8 v7, v6, 0x1

    aget v7, v1, v7

    aput v7, v4, v5

    .line 175
    .end local v6    # "twoK":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 181
    .end local v5    # "k":I
    :cond_0
    invoke-static {v3}, Lcom/google/zxing/oned/ITFReader;->decodeDigit([I)I

    move-result v5

    .line 182
    .local v5, "bestMatch":I
    add-int/lit8 v6, v5, 0x30

    int-to-char v6, v6

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 183
    invoke-static {v4}, Lcom/google/zxing/oned/ITFReader;->decodeDigit([I)I

    move-result v5

    .line 184
    add-int/lit8 v6, v5, 0x30

    int-to-char v6, v6

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 186
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v0, :cond_1

    aget v7, v1, v6

    .line 187
    .local v7, "counterDigit":I
    add-int/2addr p1, v7

    .line 186
    .end local v7    # "counterDigit":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 189
    .end local v5    # "bestMatch":I
    :cond_1
    goto :goto_0

    .line 190
    :cond_2
    return-void
.end method

.method private decodeStart(Lcom/google/zxing/common/BitArray;)[I
    .locals 5
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 200
    invoke-static {p1}, Lcom/google/zxing/oned/ITFReader;->skipWhiteSpace(Lcom/google/zxing/common/BitArray;)I

    move-result v0

    .line 201
    .local v0, "endStart":I
    sget-object v1, Lcom/google/zxing/oned/ITFReader;->START_PATTERN:[I

    invoke-static {p1, v0, v1}, Lcom/google/zxing/oned/ITFReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;I[I)[I

    move-result-object v1

    .line 206
    .local v1, "startPattern":[I
    const/4 v2, 0x1

    aget v2, v1, v2

    const/4 v3, 0x0

    aget v4, v1, v3

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/zxing/oned/ITFReader;->narrowLineWidth:I

    .line 208
    aget v2, v1, v3

    invoke-direct {p0, p1, v2}, Lcom/google/zxing/oned/ITFReader;->validateQuietZone(Lcom/google/zxing/common/BitArray;I)V

    .line 210
    return-object v1
.end method

.method private static findGuardPattern(Lcom/google/zxing/common/BitArray;I[I)[I
    .locals 11
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .param p1, "rowOffset"    # I
    .param p2, "pattern"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 316
    array-length v0, p2

    const/4 v1, 0x0

    .line 317
    .local v1, "patternLength":I
    move v1, v0

    new-array v0, v0, [I

    .line 318
    .local v0, "counters":[I
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    .line 319
    .local v2, "width":I
    const/4 v3, 0x0

    .line 321
    .local v3, "isWhite":Z
    const/4 v4, 0x0

    .line 322
    .local v4, "counterPosition":I
    move v5, p1

    .line 323
    .local v5, "patternStart":I
    move v6, p1

    .local v6, "x":I
    :goto_0
    if-ge v6, v2, :cond_4

    .line 324
    invoke-virtual {p0, v6}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v3, :cond_0

    .line 325
    aget v7, v0, v4

    add-int/2addr v7, v8

    aput v7, v0, v4

    goto :goto_3

    .line 327
    :cond_0
    add-int/lit8 v7, v1, -0x1

    const/4 v9, 0x0

    if-ne v4, v7, :cond_2

    .line 328
    const/high16 v7, 0x3f000000    # 0.5f

    invoke-static {v0, p2, v7}, Lcom/google/zxing/oned/ITFReader;->patternMatchVariance([I[IF)F

    move-result v7

    const v10, 0x3ec28f5c    # 0.38f

    cmpg-float v7, v7, v10

    if-gez v7, :cond_1

    .line 329
    filled-new-array {v5, v6}, [I

    move-result-object v7

    return-object v7

    .line 331
    :cond_1
    aget v7, v0, v9

    aget v10, v0, v8

    add-int/2addr v7, v10

    add-int/2addr v5, v7

    .line 332
    add-int/lit8 v7, v4, -0x1

    const/4 v10, 0x2

    invoke-static {v0, v10, v0, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 333
    add-int/lit8 v7, v4, -0x1

    aput v9, v0, v7

    .line 334
    aput v9, v0, v4

    .line 335
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 337
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 339
    :goto_1
    aput v8, v0, v4

    .line 340
    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    :goto_2
    move v3, v8

    .line 323
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 343
    .end local v6    # "x":I
    :cond_4
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v6

    throw v6
.end method

.method private static skipWhiteSpace(Lcom/google/zxing/common/BitArray;)I
    .locals 3
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 255
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    .line 256
    .local v0, "width":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v1

    const/4 v2, 0x0

    .line 257
    .local v2, "endStart":I
    move v2, v1

    if-eq v1, v0, :cond_0

    .line 261
    return v2

    .line 258
    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1
.end method

.method private validateQuietZone(Lcom/google/zxing/common/BitArray;I)V
    .locals 3
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "startPattern"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 230
    iget v0, p0, Lcom/google/zxing/oned/ITFReader;->narrowLineWidth:I

    mul-int/lit8 v0, v0, 0xa

    const/4 v1, 0x0

    .line 233
    .local v1, "quietCount":I
    move v1, v0

    if-ge v0, p2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, p2

    .line 235
    .end local v1    # "quietCount":I
    .local v0, "quietCount":I
    :goto_0
    add-int/lit8 v1, p2, -0x1

    .local v1, "i":I
    :goto_1
    if-lez v0, :cond_1

    if-ltz v1, :cond_1

    .line 236
    invoke-virtual {p1, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 239
    add-int/lit8 v0, v0, -0x1

    .line 235
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 241
    .end local v1    # "i":I
    :cond_1
    if-nez v0, :cond_2

    .line 245
    return-void

    .line 243
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 16
    .param p1, "rowNumber"    # I
    .param p2, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 105
    .local p3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v2}, Lcom/google/zxing/oned/ITFReader;->decodeStart(Lcom/google/zxing/common/BitArray;)[I

    move-result-object v4

    .line 106
    .local v4, "startRange":[I
    invoke-direct {v0, v2}, Lcom/google/zxing/oned/ITFReader;->decodeEnd(Lcom/google/zxing/common/BitArray;)[I

    move-result-object v5

    .line 108
    .local v5, "endRange":[I
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x14

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 109
    .local v6, "result":Ljava/lang/StringBuilder;
    const/4 v7, 0x1

    aget v8, v4, v7

    const/4 v9, 0x0

    aget v10, v5, v9

    invoke-static {v2, v8, v10, v6}, Lcom/google/zxing/oned/ITFReader;->decodeMiddle(Lcom/google/zxing/common/BitArray;IILjava/lang/StringBuilder;)V

    .line 110
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 112
    .local v8, "resultString":Ljava/lang/String;
    const/4 v10, 0x0

    .line 113
    .local v10, "allowedLengths":[I
    if-eqz v3, :cond_0

    .line 114
    sget-object v11, Lcom/google/zxing/DecodeHintType;->ALLOWED_LENGTHS:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v3, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [I

    move-object v10, v11

    check-cast v10, [I

    .line 117
    :cond_0
    if-nez v10, :cond_1

    .line 118
    sget-object v10, Lcom/google/zxing/oned/ITFReader;->DEFAULT_ALLOWED_LENGTHS:[I

    .line 123
    :cond_1
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    .line 124
    .local v11, "length":I
    const/4 v12, 0x0

    .line 125
    .local v12, "lengthOK":Z
    const/4 v13, 0x0

    .line 126
    .local v13, "maxAllowedLength":I
    array-length v14, v10

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v14, :cond_4

    aget v9, v10, v15

    .line 127
    .local v9, "allowedLength":I
    if-ne v11, v9, :cond_2

    .line 128
    const/4 v12, 0x1

    .line 129
    goto :goto_1

    .line 131
    :cond_2
    if-le v9, v13, :cond_3

    .line 132
    move v13, v9

    .line 126
    .end local v9    # "allowedLength":I
    :cond_3
    add-int/lit8 v15, v15, 0x1

    const/4 v9, 0x0

    goto :goto_0

    .line 135
    :cond_4
    :goto_1
    if-nez v12, :cond_5

    if-le v11, v13, :cond_5

    .line 136
    const/4 v12, 0x1

    .line 138
    :cond_5
    if-eqz v12, :cond_6

    .line 142
    new-instance v9, Lcom/google/zxing/Result;

    const/4 v14, 0x2

    new-array v14, v14, [Lcom/google/zxing/ResultPoint;

    new-instance v15, Lcom/google/zxing/ResultPoint;

    aget v0, v4, v7

    int-to-float v0, v0

    int-to-float v7, v1

    invoke-direct {v15, v0, v7}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    const/4 v0, 0x0

    aput-object v15, v14, v0

    new-instance v7, Lcom/google/zxing/ResultPoint;

    aget v0, v5, v0

    int-to-float v0, v0

    int-to-float v15, v1

    invoke-direct {v7, v0, v15}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    const/4 v0, 0x1

    aput-object v7, v14, v0

    sget-object v0, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    const/4 v7, 0x0

    invoke-direct {v9, v8, v7, v14, v0}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v9

    .line 139
    :cond_6
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0
.end method
