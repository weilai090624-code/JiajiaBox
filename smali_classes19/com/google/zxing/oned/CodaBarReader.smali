.class public final Lcom/google/zxing/oned/CodaBarReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "CodaBarReader.java"


# static fields
.field static final ALPHABET:[C

.field private static final ALPHABET_STRING:Ljava/lang/String; = "0123456789-$:/.+ABCD"

.field static final CHARACTER_ENCODINGS:[I

.field private static final MAX_ACCEPTABLE:F = 2.0f

.field private static final MIN_CHARACTER_LENGTH:I = 0x3

.field private static final PADDING:F = 1.5f

.field private static final STARTEND_ENCODING:[C


# instance fields
.field private counterLength:I

.field private counters:[I

.field private final decodeRowResult:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-string v0, "0123456789-$:/.+ABCD"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    .line 50
    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    .line 61
    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C

    return-void

    :array_0
    .array-data 4
        0x3
        0x6
        0x9
        0x60
        0x12
        0x42
        0x21
        0x24
        0x30
        0x48
        0xc
        0x18
        0x45
        0x51
        0x54
        0x15
        0x1a
        0x29
        0xb
        0xe
    .end array-data

    :array_1
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 73
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    .line 75
    const/16 v0, 0x50

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    .line 77
    return-void
.end method

.method static arrayContains([CC)Z
    .locals 4
    .param p0, "array"    # [C
    .param p1, "key"    # C

    .line 282
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 283
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-char v3, p0, v2

    .line 284
    if-ne v3, p1, :cond_0

    .line 285
    const/4 v0, 0x1

    return v0

    .line 283
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 289
    :cond_1
    return v0
.end method

.method private counterAppend(I)V
    .locals 4
    .param p1, "e"    # I

    .line 254
    iget-object v0, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    iget v1, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    aput p1, v0, v1

    .line 255
    iget v0, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    .line 256
    iget v0, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    iget-object v1, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 257
    iget v0, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    shl-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    .line 258
    .local v0, "temp":[I
    iget-object v1, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    iget v2, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 259
    iput-object v0, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    .line 261
    .end local v0    # "temp":[I
    :cond_0
    return-void
.end method

.method private findStartPattern()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 264
    const/4 v0, 0x1

    .local v0, "i":I
    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    if-ge v0, v2, :cond_3

    .line 265
    invoke-direct {p0, v0}, Lcom/google/zxing/oned/CodaBarReader;->toNarrowWidePattern(I)I

    move-result v2

    .line 266
    .local v1, "charOffset":I
    move v1, v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    sget-object v2, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C

    sget-object v3, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    aget-char v3, v3, v1

    invoke-static {v2, v3}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 269
    const/4 v2, 0x0

    .line 270
    .local v2, "patternSize":I
    move v3, v0

    .local v3, "j":I
    :goto_1
    add-int/lit8 v4, v0, 0x7

    if-ge v3, v4, :cond_0

    .line 271
    iget-object v4, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    aget v4, v4, v3

    add-int/2addr v2, v4

    .line 270
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 273
    .end local v3    # "j":I
    :cond_0
    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    iget-object v3, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    div-int/lit8 v4, v2, 0x2

    if-lt v3, v4, :cond_2

    .line 274
    :cond_1
    return v0

    .line 264
    .end local v1    # "charOffset":I
    .end local v2    # "patternSize":I
    :cond_2
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 278
    .end local v0    # "i":I
    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method private setCounters(Lcom/google/zxing/common/BitArray;)V
    .locals 6
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 231
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    .line 233
    invoke-virtual {p1, v0}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v1

    .line 234
    .local v1, "i":I
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    .line 235
    .local v2, "end":I
    if-ge v1, v2, :cond_3

    .line 238
    const/4 v3, 0x1

    .line 239
    .local v3, "isWhite":Z
    const/4 v4, 0x0

    .line 240
    .local v4, "count":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 241
    invoke-virtual {p1, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v5

    if-eq v5, v3, :cond_0

    .line 242
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 244
    :cond_0
    invoke-direct {p0, v4}, Lcom/google/zxing/oned/CodaBarReader;->counterAppend(I)V

    .line 245
    const/4 v4, 0x1

    .line 246
    if-nez v3, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    move v3, v5

    .line 248
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 250
    :cond_2
    invoke-direct {p0, v4}, Lcom/google/zxing/oned/CodaBarReader;->counterAppend(I)V

    .line 251
    return-void

    .line 236
    .end local v3    # "isWhite":Z
    .end local v4    # "count":I
    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method private toNarrowWidePattern(I)I
    .locals 10

    .line 294
    add-int/lit8 v0, p1, 0x7

    .line 295
    iget v1, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    const/4 v2, -0x1

    if-lt v0, v1, :cond_0

    .line 296
    return v2

    .line 299
    :cond_0
    iget-object v1, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    .line 301
    nop

    .line 302
    nop

    .line 303
    const v3, 0x7fffffff

    const/4 v4, 0x0

    move v5, p1

    const v6, 0x7fffffff

    const/4 v7, 0x0

    :goto_0
    if-ge v5, v0, :cond_3

    .line 304
    aget v8, v1, v5

    .line 305
    if-ge v8, v6, :cond_1

    .line 306
    move v6, v8

    .line 308
    :cond_1
    if-le v8, v7, :cond_2

    .line 309
    move v7, v8

    .line 303
    :cond_2
    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    .line 312
    :cond_3
    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    .line 314
    nop

    .line 315
    nop

    .line 316
    add-int/lit8 v5, p1, 0x1

    const/4 v7, 0x0

    :goto_1
    if-ge v5, v0, :cond_6

    .line 317
    aget v8, v1, v5

    .line 318
    if-ge v8, v3, :cond_4

    .line 319
    move v3, v8

    .line 321
    :cond_4
    if-le v8, v7, :cond_5

    .line 322
    move v7, v8

    .line 316
    :cond_5
    add-int/lit8 v5, v5, 0x2

    goto :goto_1

    .line 325
    :cond_6
    add-int/2addr v3, v7

    div-int/lit8 v3, v3, 0x2

    .line 327
    nop

    .line 328
    nop

    .line 329
    const/16 v0, 0x80

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_2
    const/4 v8, 0x7

    if-ge v5, v8, :cond_9

    .line 330
    and-int/lit8 v8, v5, 0x1

    if-nez v8, :cond_7

    move v8, v6

    goto :goto_3

    :cond_7
    move v8, v3

    .line 331
    :goto_3
    shr-int/lit8 v0, v0, 0x1

    .line 332
    add-int v9, p1, v5

    aget v9, v1, v9

    if-le v9, v8, :cond_8

    .line 333
    or-int/2addr v7, v0

    .line 329
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 337
    :cond_9
    nop

    :goto_4
    sget-object p1, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    array-length p1, p1

    if-ge v4, p1, :cond_b

    .line 338
    sget-object p1, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    aget p1, p1, v4

    if-ne p1, v7, :cond_a

    .line 339
    return v4

    .line 337
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 342
    :cond_b
    return v2
.end method

.method private validatePattern(I)V
    .locals 13
    .param p1, "start"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 166
    const/4 v0, 0x0

    filled-new-array {v0, v0, v0, v0}, [I

    move-result-object v1

    .line 167
    .local v1, "sizes":[I
    filled-new-array {v0, v0, v0, v0}, [I

    move-result-object v0

    .line 168
    .local v0, "counts":[I
    iget-object v2, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 172
    .local v2, "end":I
    move v3, p1

    .line 173
    .local v3, "pos":I
    const/4 v4, 0x0

    .line 174
    .local v4, "i":I
    :goto_0
    sget-object v5, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    iget-object v6, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    aget v5, v5, v6

    .line 175
    .local v5, "pattern":I
    const/4 v6, 0x6

    .local v6, "j":I
    :goto_1
    if-ltz v6, :cond_0

    .line 178
    and-int/lit8 v7, v6, 0x1

    and-int/lit8 v8, v5, 0x1

    shl-int/lit8 v8, v8, 0x1

    add-int/2addr v7, v8

    .line 179
    .local v7, "category":I
    aget v8, v1, v7

    iget-object v9, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    add-int v10, v3, v6

    aget v9, v9, v10

    add-int/2addr v8, v9

    aput v8, v1, v7

    .line 180
    aget v8, v0, v7

    add-int/lit8 v8, v8, 0x1

    aput v8, v0, v7

    .line 181
    shr-int/lit8 v5, v5, 0x1

    .line 175
    .end local v7    # "category":I
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 183
    .end local v6    # "j":I
    :cond_0
    if-ge v4, v2, :cond_1

    .line 187
    nop

    .end local v5    # "pattern":I
    add-int/lit8 v3, v3, 0x8

    .line 173
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 191
    .end local v4    # "i":I
    :cond_1
    const/4 v4, 0x4

    new-array v5, v4, [F

    .line 192
    .local v5, "maxes":[F
    new-array v4, v4, [F

    .line 196
    .local v4, "mins":[F
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    const/4 v7, 0x2

    if-ge v6, v7, :cond_2

    .line 197
    const/4 v7, 0x0

    aput v7, v4, v6

    .line 198
    add-int/lit8 v7, v6, 0x2

    aget v8, v1, v6

    int-to-float v8, v8

    aget v9, v0, v6

    int-to-float v9, v9

    div-float/2addr v8, v9

    add-int/lit8 v9, v6, 0x2

    aget v9, v1, v9

    int-to-float v9, v9

    add-int/lit8 v10, v6, 0x2

    aget v10, v0, v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    aput v8, v4, v7

    .line 199
    add-int/lit8 v7, v6, 0x2

    aget v7, v4, v7

    aput v7, v5, v6

    .line 200
    add-int/lit8 v7, v6, 0x2

    add-int/lit8 v8, v6, 0x2

    aget v8, v1, v8

    int-to-float v8, v8

    mul-float v8, v8, v9

    const/high16 v9, 0x3fc00000    # 1.5f

    add-float/2addr v8, v9

    add-int/lit8 v9, v6, 0x2

    aget v9, v0, v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    aput v8, v5, v7

    .line 196
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 204
    .end local v6    # "i":I
    :cond_2
    move v3, p1

    .line 205
    const/4 v6, 0x0

    .restart local v6    # "i":I
    const/4 v7, 0x0

    .line 206
    :goto_3
    sget-object v8, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    iget-object v9, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    aget v8, v8, v9

    .line 207
    .local v8, "pattern":I
    const/4 v9, 0x6

    .local v9, "j":I
    :goto_4
    if-ltz v9, :cond_4

    .line 210
    and-int/lit8 v10, v9, 0x1

    and-int/lit8 v11, v8, 0x1

    shl-int/lit8 v11, v11, 0x1

    add-int/2addr v10, v11

    .line 211
    .local v10, "category":I
    iget-object v11, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    add-int v12, v3, v9

    aget v11, v11, v12

    .line 212
    .local v7, "size":I
    move v7, v11

    int-to-float v11, v11

    aget v12, v4, v10

    cmpg-float v11, v11, v12

    if-ltz v11, :cond_3

    int-to-float v11, v7

    aget v12, v5, v10

    cmpl-float v11, v11, v12

    if-gtz v11, :cond_3

    .line 215
    shr-int/lit8 v8, v8, 0x1

    .line 207
    .end local v7    # "size":I
    .end local v10    # "category":I
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    .line 213
    .restart local v7    # "size":I
    .restart local v10    # "category":I
    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v11

    throw v11

    .line 217
    .end local v7    # "size":I
    .end local v9    # "j":I
    .end local v10    # "category":I
    :cond_4
    if-ge v6, v2, :cond_5

    .line 220
    nop

    .end local v8    # "pattern":I
    add-int/lit8 v3, v3, 0x8

    .line 205
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 222
    .end local v6    # "i":I
    :cond_5
    return-void
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 10
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
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 83
    invoke-direct {p0, p2}, Lcom/google/zxing/oned/CodaBarReader;->setCounters(Lcom/google/zxing/common/BitArray;)V

    .line 84
    invoke-direct {p0}, Lcom/google/zxing/oned/CodaBarReader;->findStartPattern()I

    move-result p2

    .line 85
    nop

    .line 87
    iget-object v0, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    move v0, p2

    .line 89
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/zxing/oned/CodaBarReader;->toNarrowWidePattern(I)I

    move-result v2

    .line 90
    const/4 v3, -0x1

    if-eq v2, v3, :cond_e

    .line 96
    iget-object v4, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    int-to-char v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    add-int/lit8 v0, v0, 0x8

    .line 99
    iget-object v4, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    sget-object v4, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C

    sget-object v6, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    aget-char v2, v6, v2

    .line 100
    invoke-static {v4, v2}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v2

    if-nez v2, :cond_2

    .line 103
    :cond_1
    iget v2, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    if-lt v0, v2, :cond_0

    .line 106
    :cond_2
    iget-object v2, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    add-int/lit8 v4, v0, -0x1

    aget v2, v2, v4

    .line 107
    nop

    .line 108
    const/4 v6, -0x8

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v3, :cond_3

    .line 109
    iget-object v8, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    add-int v9, v0, v6

    aget v8, v8, v9

    add-int/2addr v7, v8

    .line 108
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 115
    :cond_3
    iget v3, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    const/4 v6, 0x2

    if-ge v0, v3, :cond_5

    div-int/2addr v7, v6

    if-lt v2, v7, :cond_4

    goto :goto_1

    .line 116
    :cond_4
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1

    .line 119
    :cond_5
    :goto_1
    invoke-direct {p0, p2}, Lcom/google/zxing/oned/CodaBarReader;->validatePattern(I)V

    .line 122
    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 123
    iget-object v2, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    sget-object v3, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    iget-object v7, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    aget-char v3, v3, v7

    invoke-virtual {v2, v0, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 126
    :cond_6
    iget-object v0, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 127
    sget-object v2, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C

    invoke-static {v2, v0}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 130
    iget-object v0, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 131
    sget-object v2, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C

    invoke-static {v2, v0}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 136
    iget-object v0, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v2, 0x3

    if-le v0, v2, :cond_b

    .line 141
    if-eqz p3, :cond_7

    sget-object v0, Lcom/google/zxing/DecodeHintType;->RETURN_CODABAR_START_END:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_8

    .line 142
    :cond_7
    iget-object p3, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 143
    iget-object p3, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 146
    :cond_8
    nop

    .line 147
    const/4 p3, 0x0

    const/4 v0, 0x0

    :goto_3
    if-ge p3, p2, :cond_9

    .line 148
    iget-object v2, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    aget v2, v2, p3

    add-int/2addr v0, v2

    .line 147
    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    .line 150
    :cond_9
    int-to-float p3, v0

    .line 151
    nop

    :goto_4
    if-ge p2, v4, :cond_a

    .line 152
    iget-object v2, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    aget v2, v2, p2

    add-int/2addr v0, v2

    .line 151
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 154
    :cond_a
    int-to-float p2, v0

    .line 155
    new-instance v0, Lcom/google/zxing/Result;

    iget-object v2, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Lcom/google/zxing/ResultPoint;

    new-instance v4, Lcom/google/zxing/ResultPoint;

    int-to-float p1, p1

    invoke-direct {v4, p3, p1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v4, v3, v1

    new-instance p3, Lcom/google/zxing/ResultPoint;

    invoke-direct {p3, p2, p1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object p3, v3, v5

    sget-object p1, Lcom/google/zxing/BarcodeFormat;->CODABAR:Lcom/google/zxing/BarcodeFormat;

    const/4 p2, 0x0

    invoke-direct {v0, v2, p2, v3, p1}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 155
    return-object v0

    .line 138
    :cond_b
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1

    .line 132
    :cond_c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1

    .line 128
    :cond_d
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1

    .line 91
    :cond_e
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1
.end method
