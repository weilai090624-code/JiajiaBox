.class public final Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;
.super Ljava/lang/Object;
.source "HighLevelEncoder.java"


# static fields
.field static final ASCII_ENCODATION:I = 0x0

.field static final BASE256_ENCODATION:I = 0x5

.field static final C40_ENCODATION:I = 0x1

.field static final C40_UNLATCH:C = '\u00fe'

.field static final EDIFACT_ENCODATION:I = 0x4

.field static final LATCH_TO_ANSIX12:C = '\u00ee'

.field static final LATCH_TO_BASE256:C = '\u00e7'

.field static final LATCH_TO_C40:C = '\u00e6'

.field static final LATCH_TO_EDIFACT:C = '\u00f0'

.field static final LATCH_TO_TEXT:C = '\u00ef'

.field private static final MACRO_05:C = '\u00ec'

.field private static final MACRO_05_HEADER:Ljava/lang/String; = "[)>\u001e05\u001d"

.field private static final MACRO_06:C = '\u00ed'

.field private static final MACRO_06_HEADER:Ljava/lang/String; = "[)>\u001e06\u001d"

.field private static final MACRO_TRAILER:Ljava/lang/String; = "\u001e\u0004"

.field private static final PAD:C = '\u0081'

.field static final TEXT_ENCODATION:I = 0x2

.field static final UPPER_SHIFT:C = '\u00eb'

.field static final X12_ENCODATION:I = 0x3

.field static final X12_UNLATCH:C = '\u00fe'


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    return-void
.end method

.method public static determineConsecutiveDigitCount(Ljava/lang/CharSequence;I)I
    .locals 5
    .param p0, "msg"    # Ljava/lang/CharSequence;
    .param p1, "startpos"    # I

    .line 427
    const/4 v0, 0x0

    .line 428
    .local v0, "count":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 429
    .local v1, "len":I
    move v2, p1

    .line 430
    .local v2, "idx":I
    if-ge p1, v1, :cond_1

    .line 431
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 432
    .local v3, "ch":C
    :cond_0
    :goto_0
    invoke-static {v3}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_1

    if-ge v2, v1, :cond_1

    .line 433
    add-int/lit8 v0, v0, 0x1

    .line 434
    add-int/lit8 v2, v2, 0x1

    .line 435
    if-ge v2, v1, :cond_0

    .line 436
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    goto :goto_0

    .line 440
    .end local v3    # "ch":C
    :cond_1
    return v0
.end method

.method public static encodeHighLevel(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 142
    sget-object v0, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->FORCE_NONE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->encodeHighLevel(Ljava/lang/String;Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeHighLevel(Ljava/lang/String;Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;)Ljava/lang/String;
    .locals 9
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "shape"    # Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;
    .param p2, "minSize"    # Lcom/google/zxing/Dimension;
    .param p3, "maxSize"    # Lcom/google/zxing/Dimension;

    .line 161
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/zxing/datamatrix/encoder/Encoder;

    new-instance v1, Lcom/google/zxing/datamatrix/encoder/ASCIIEncoder;

    invoke-direct {v1}, Lcom/google/zxing/datamatrix/encoder/ASCIIEncoder;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/zxing/datamatrix/encoder/C40Encoder;

    invoke-direct {v1}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/zxing/datamatrix/encoder/TextEncoder;

    invoke-direct {v1}, Lcom/google/zxing/datamatrix/encoder/TextEncoder;-><init>()V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/datamatrix/encoder/X12Encoder;

    invoke-direct {v1}, Lcom/google/zxing/datamatrix/encoder/X12Encoder;-><init>()V

    const/4 v4, 0x3

    aput-object v1, v0, v4

    new-instance v1, Lcom/google/zxing/datamatrix/encoder/EdifactEncoder;

    invoke-direct {v1}, Lcom/google/zxing/datamatrix/encoder/EdifactEncoder;-><init>()V

    const/4 v4, 0x4

    aput-object v1, v0, v4

    new-instance v1, Lcom/google/zxing/datamatrix/encoder/Base256Encoder;

    invoke-direct {v1}, Lcom/google/zxing/datamatrix/encoder/Base256Encoder;-><init>()V

    const/4 v5, 0x5

    aput-object v1, v0, v5

    .line 166
    .local v0, "encoders":[Lcom/google/zxing/datamatrix/encoder/Encoder;
    new-instance v1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;

    invoke-direct {v1, p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    move-object v7, v6

    .line 167
    .local v7, "context":Lcom/google/zxing/datamatrix/encoder/EncoderContext;
    move-object v7, v1

    invoke-virtual {v1, p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->setSymbolShape(Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;)V

    .line 168
    invoke-virtual {v7, p2, p3}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->setSizeConstraints(Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;)V

    .line 170
    const-string v1, "[)>\u001e05\u001d"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v8, "\u001e\u0004"

    if-eqz v1, :cond_0

    invoke-virtual {p0, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    const/16 v1, 0xec

    invoke-virtual {v7, v1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 172
    invoke-virtual {v7, v3}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->setSkipAtEnd(I)V

    .line 173
    iget v1, v7, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    add-int/lit8 v1, v1, 0x7

    iput v1, v7, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    goto :goto_0

    .line 174
    :cond_0
    const-string v1, "[)>\u001e06\u001d"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 175
    const/16 v1, 0xed

    invoke-virtual {v7, v1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 176
    invoke-virtual {v7, v3}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->setSkipAtEnd(I)V

    .line 177
    iget v1, v7, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    add-int/lit8 v1, v1, 0x7

    iput v1, v7, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 180
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 181
    .local v1, "encodingMode":I
    :cond_2
    :goto_1
    invoke-virtual {v7}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 182
    aget-object v3, v0, v1

    invoke-interface {v3, v7}, Lcom/google/zxing/datamatrix/encoder/Encoder;->encode(Lcom/google/zxing/datamatrix/encoder/EncoderContext;)V

    .line 183
    invoke-virtual {v7}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getNewEncoding()I

    move-result v3

    if-ltz v3, :cond_2

    .line 184
    invoke-virtual {v7}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getNewEncoding()I

    move-result v1

    .line 185
    invoke-virtual {v7}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->resetEncoderSignal()V

    goto :goto_1

    .line 188
    :cond_3
    invoke-virtual {v7}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    move-result v3

    .line 189
    .local v3, "len":I
    invoke-virtual {v7}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->updateSymbolInfo()V

    .line 190
    invoke-virtual {v7}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getSymbolInfo()Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataCapacity()I

    move-result v8

    .line 191
    .local v8, "capacity":I
    if-ge v3, v8, :cond_4

    if-eqz v1, :cond_4

    if-eq v1, v5, :cond_4

    if-eq v1, v4, :cond_4

    .line 195
    const/16 v4, 0xfe

    invoke-virtual {v7, v4}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 198
    :cond_4
    invoke-virtual {v7}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewords()Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v6

    .line 199
    .local v5, "codewords":Ljava/lang/StringBuilder;
    move-object v5, v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/16 v6, 0x81

    if-ge v4, v8, :cond_5

    .line 200
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 202
    :cond_5
    :goto_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-ge v4, v8, :cond_6

    .line 203
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v6, v4}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->randomize253State(CI)C

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 206
    :cond_6
    invoke-virtual {v7}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewords()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static findMinimums([F[II[B)I
    .locals 4
    .param p0, "charCounts"    # [F
    .param p1, "intCharCounts"    # [I
    .param p2, "min"    # I
    .param p3, "mins"    # [B

    .line 361
    const/4 v0, 0x0

    invoke-static {p3, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 362
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_2

    .line 363
    aget v2, p0, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    aput v2, p1, v1

    .line 364
    aget v2, p1, v1

    .line 365
    .local v2, "current":I
    if-le p2, v2, :cond_0

    .line 366
    move p2, v2

    .line 367
    invoke-static {p3, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 369
    :cond_0
    if-ne p2, v2, :cond_1

    .line 370
    aget-byte v3, p3, v1

    add-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    aput-byte v3, p3, v1

    .line 362
    .end local v2    # "current":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 374
    .end local v1    # "i":I
    :cond_2
    return p2
.end method

.method private static getMinimumCount([B)I
    .locals 3
    .param p0, "mins"    # [B

    .line 378
    const/4 v0, 0x0

    .line 379
    .local v0, "minCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    .line 380
    aget-byte v2, p0, v1

    add-int/2addr v0, v2

    .line 379
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 382
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method static illegalCharacter(C)V
    .locals 5
    .param p0, "c"    # C

    .line 444
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 445
    .local v0, "hex":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x4

    const-string v3, "0000"

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 446
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Illegal character: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static isDigit(C)Z
    .locals 1
    .param p0, "ch"    # C

    .line 386
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static isExtendedASCII(C)Z
    .locals 1
    .param p0, "ch"    # C

    .line 390
    const/16 v0, 0x80

    if-lt p0, v0, :cond_0

    const/16 v0, 0xff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static isNativeC40(C)Z
    .locals 1
    .param p0, "ch"    # C

    .line 394
    const/16 v0, 0x20

    if-eq p0, v0, :cond_2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private static isNativeEDIFACT(C)Z
    .locals 1
    .param p0, "ch"    # C

    .line 412
    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5e

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static isNativeText(C)Z
    .locals 1
    .param p0, "ch"    # C

    .line 398
    const/16 v0, 0x20

    if-eq p0, v0, :cond_2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private static isNativeX12(C)Z
    .locals 1
    .param p0, "ch"    # C

    .line 402
    invoke-static {p0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isX12TermSep(C)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x20

    if-eq p0, v0, :cond_2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private static isSpecialB256(C)Z
    .locals 1
    .param p0, "ch"    # C

    .line 416
    const/4 v0, 0x0

    return v0
.end method

.method private static isX12TermSep(C)Z
    .locals 1
    .param p0, "ch"    # C

    .line 406
    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3e

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method static lookAheadTest(Ljava/lang/CharSequence;II)I
    .locals 18

    .line 210
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 211
    return p2

    .line 215
    :cond_0
    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x6

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x5

    const/4 v7, 0x2

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez p2, :cond_1

    .line 216
    new-array v12, v4, [F

    aput v2, v12, v10

    aput v5, v12, v11

    aput v5, v12, v7

    aput v5, v12, v9

    aput v5, v12, v8

    const/high16 v2, 0x3fa00000    # 1.25f

    aput v2, v12, v6

    goto :goto_0

    .line 218
    :cond_1
    new-array v12, v4, [F

    aput v5, v12, v10

    aput v3, v12, v11

    aput v3, v12, v7

    aput v3, v12, v9

    aput v3, v12, v8

    const/high16 v13, 0x40100000    # 2.25f

    aput v13, v12, v6

    .line 219
    aput v2, v12, p2

    .line 222
    :goto_0
    const/4 v2, 0x0

    .line 225
    :goto_1
    add-int v13, v1, v2

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v14

    const v15, 0x7fffffff

    if-ne v13, v14, :cond_7

    .line 227
    new-array v0, v4, [B

    .line 228
    new-array v1, v4, [I

    .line 229
    invoke-static {v12, v1, v15, v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->findMinimums([F[II[B)I

    move-result v2

    .line 230
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->getMinimumCount([B)I

    move-result v3

    .line 232
    aget v1, v1, v10

    if-ne v1, v2, :cond_2

    .line 233
    return v10

    .line 235
    :cond_2
    if-ne v3, v11, :cond_3

    aget-byte v1, v0, v6

    if-lez v1, :cond_3

    .line 236
    return v6

    .line 238
    :cond_3
    if-ne v3, v11, :cond_4

    aget-byte v1, v0, v8

    if-lez v1, :cond_4

    .line 239
    return v8

    .line 241
    :cond_4
    if-ne v3, v11, :cond_5

    aget-byte v1, v0, v7

    if-lez v1, :cond_5

    .line 242
    return v7

    .line 244
    :cond_5
    if-ne v3, v11, :cond_6

    aget-byte v0, v0, v9

    if-lez v0, :cond_6

    .line 245
    return v9

    .line 247
    :cond_6
    return v11

    .line 250
    :cond_7
    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    .line 251
    add-int/lit8 v2, v2, 0x1

    .line 254
    invoke-static {v13}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 255
    aget v14, v12, v10

    const/high16 v16, 0x3f000000    # 0.5f

    add-float v14, v14, v16

    aput v14, v12, v10

    goto :goto_2

    .line 256
    :cond_8
    invoke-static {v13}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 257
    aget v14, v12, v10

    float-to-double v8, v14

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-float v8, v8

    aput v8, v12, v10

    .line 258
    aget v8, v12, v10

    add-float/2addr v8, v3

    aput v8, v12, v10

    goto :goto_2

    .line 260
    :cond_9
    aget v8, v12, v10

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-float v8, v8

    aput v8, v12, v10

    .line 261
    aget v8, v12, v10

    add-float/2addr v8, v5

    aput v8, v12, v10

    .line 265
    :goto_2
    invoke-static {v13}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeC40(C)Z

    move-result v8

    const v9, 0x402aaaab

    const v14, 0x3faaaaab

    const v17, 0x3f2aaaab

    if-eqz v8, :cond_a

    .line 266
    aget v8, v12, v11

    add-float v8, v8, v17

    aput v8, v12, v11

    goto :goto_3

    .line 267
    :cond_a
    invoke-static {v13}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 268
    aget v8, v12, v11

    add-float/2addr v8, v9

    aput v8, v12, v11

    goto :goto_3

    .line 270
    :cond_b
    aget v8, v12, v11

    add-float/2addr v8, v14

    aput v8, v12, v11

    .line 274
    :goto_3
    invoke-static {v13}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeText(C)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 275
    aget v8, v12, v7

    add-float v8, v8, v17

    aput v8, v12, v7

    goto :goto_4

    .line 276
    :cond_c
    invoke-static {v13}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 277
    aget v8, v12, v7

    add-float/2addr v8, v9

    aput v8, v12, v7

    goto :goto_4

    .line 279
    :cond_d
    aget v8, v12, v7

    add-float/2addr v8, v14

    aput v8, v12, v7

    .line 283
    :goto_4
    invoke-static {v13}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeX12(C)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 284
    const/4 v8, 0x3

    aget v9, v12, v8

    add-float v9, v9, v17

    aput v9, v12, v8

    goto :goto_5

    .line 285
    :cond_e
    const/4 v8, 0x3

    invoke-static {v13}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 286
    aget v9, v12, v8

    const v14, 0x408aaaab

    add-float/2addr v9, v14

    aput v9, v12, v8

    goto :goto_5

    .line 288
    :cond_f
    aget v9, v12, v8

    const v14, 0x40555555

    add-float/2addr v9, v14

    aput v9, v12, v8

    .line 292
    :goto_5
    invoke-static {v13}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeEDIFACT(C)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 293
    const/4 v8, 0x4

    aget v9, v12, v8

    const/high16 v14, 0x3f400000    # 0.75f

    add-float/2addr v9, v14

    aput v9, v12, v8

    goto :goto_6

    .line 294
    :cond_10
    const/4 v8, 0x4

    invoke-static {v13}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 295
    aget v9, v12, v8

    const/high16 v14, 0x40880000    # 4.25f

    add-float/2addr v9, v14

    aput v9, v12, v8

    goto :goto_6

    .line 297
    :cond_11
    aget v9, v12, v8

    const/high16 v14, 0x40500000    # 3.25f

    add-float/2addr v9, v14

    aput v9, v12, v8

    .line 301
    :goto_6
    invoke-static {v13}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isSpecialB256(C)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 302
    aget v8, v12, v6

    const/high16 v9, 0x40800000    # 4.0f

    add-float/2addr v8, v9

    aput v8, v12, v6

    goto :goto_7

    .line 304
    :cond_12
    aget v8, v12, v6

    add-float/2addr v8, v5

    aput v8, v12, v6

    .line 308
    :goto_7
    const/4 v8, 0x4

    if-lt v2, v8, :cond_1f

    .line 309
    new-array v8, v4, [I

    .line 310
    new-array v9, v4, [B

    .line 311
    invoke-static {v12, v8, v15, v9}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->findMinimums([F[II[B)I

    .line 312
    invoke-static {v9}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->getMinimumCount([B)I

    move-result v13

    .line 314
    aget v14, v8, v10

    aget v15, v8, v6

    if-ge v14, v15, :cond_13

    aget v14, v8, v10

    aget v15, v8, v11

    if-ge v14, v15, :cond_13

    aget v14, v8, v10

    aget v15, v8, v7

    if-ge v14, v15, :cond_13

    aget v14, v8, v10

    const/4 v15, 0x3

    aget v3, v8, v15

    if-ge v14, v3, :cond_13

    aget v3, v8, v10

    const/4 v14, 0x4

    aget v15, v8, v14

    if-ge v3, v15, :cond_13

    .line 319
    return v10

    .line 321
    :cond_13
    aget v3, v8, v6

    aget v14, v8, v10

    if-lt v3, v14, :cond_1e

    aget-byte v3, v9, v11

    aget-byte v14, v9, v7

    add-int/2addr v3, v14

    const/4 v14, 0x3

    aget-byte v15, v9, v14

    add-int/2addr v3, v15

    const/4 v14, 0x4

    aget-byte v15, v9, v14

    add-int/2addr v3, v15

    if-nez v3, :cond_14

    goto/16 :goto_9

    .line 325
    :cond_14
    if-ne v13, v11, :cond_15

    aget-byte v3, v9, v14

    if-lez v3, :cond_15

    .line 326
    return v14

    .line 328
    :cond_15
    if-ne v13, v11, :cond_16

    aget-byte v3, v9, v7

    if-lez v3, :cond_16

    .line 329
    return v7

    .line 331
    :cond_16
    if-ne v13, v11, :cond_17

    const/4 v3, 0x3

    aget-byte v9, v9, v3

    if-lez v9, :cond_17

    .line 332
    return v3

    .line 334
    :cond_17
    aget v3, v8, v11

    add-int/2addr v3, v11

    aget v9, v8, v10

    if-ge v3, v9, :cond_1d

    aget v3, v8, v11

    add-int/2addr v3, v11

    aget v9, v8, v6

    if-ge v3, v9, :cond_1d

    aget v3, v8, v11

    add-int/2addr v3, v11

    const/4 v9, 0x4

    aget v13, v8, v9

    if-ge v3, v13, :cond_1c

    aget v3, v8, v11

    add-int/2addr v3, v11

    aget v13, v8, v7

    if-ge v3, v13, :cond_1c

    .line 338
    aget v3, v8, v11

    const/4 v13, 0x3

    aget v14, v8, v13

    if-ge v3, v14, :cond_18

    .line 339
    return v11

    .line 341
    :cond_18
    aget v3, v8, v11

    aget v8, v8, v13

    if-ne v3, v8, :cond_1b

    .line 342
    add-int/2addr v1, v2

    add-int/2addr v1, v11

    .line 343
    :goto_8
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 344
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 345
    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isX12TermSep(C)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 346
    const/4 v3, 0x3

    return v3

    .line 348
    :cond_19
    const/4 v3, 0x3

    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeX12(C)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 351
    add-int/lit8 v1, v1, 0x1

    .line 352
    goto :goto_8

    .line 353
    :cond_1a
    return v11

    .line 341
    :cond_1b
    const/4 v3, 0x3

    goto :goto_a

    .line 334
    :cond_1c
    const/4 v3, 0x3

    goto :goto_a

    :cond_1d
    const/4 v3, 0x3

    const/4 v9, 0x4

    goto :goto_a

    .line 323
    :cond_1e
    :goto_9
    return v6

    .line 308
    :cond_1f
    const/4 v3, 0x3

    const/4 v9, 0x4

    .line 357
    :goto_a
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v8, 0x4

    const/4 v9, 0x3

    goto/16 :goto_1
.end method

.method private static randomize253State(CI)C
    .locals 4
    .param p0, "ch"    # C
    .param p1, "codewordPosition"    # I

    .line 129
    mul-int/lit16 v0, p1, 0x95

    rem-int/lit16 v0, v0, 0xfd

    add-int/lit8 v0, v0, 0x1

    .line 130
    .local v0, "pseudoRandom":I
    add-int v1, p0, v0

    const/4 v2, 0x0

    .line 131
    .local v2, "tempVariable":I
    move v2, v1

    const/16 v3, 0xfe

    if-gt v1, v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    add-int/lit16 v1, v2, -0xfe

    :goto_0
    int-to-char v1, v1

    return v1
.end method
