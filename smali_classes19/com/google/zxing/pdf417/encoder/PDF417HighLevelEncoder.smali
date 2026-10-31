.class final Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;
.super Ljava/lang/Object;
.source "PDF417HighLevelEncoder.java"


# static fields
.field private static final BYTE_COMPACTION:I = 0x1

.field private static final DEFAULT_ENCODING:Ljava/nio/charset/Charset;

.field private static final ECI_CHARSET:I = 0x39f

.field private static final ECI_GENERAL_PURPOSE:I = 0x39e

.field private static final ECI_USER_DEFINED:I = 0x39d

.field private static final LATCH_TO_BYTE:I = 0x39c

.field private static final LATCH_TO_BYTE_PADDED:I = 0x385

.field private static final LATCH_TO_NUMERIC:I = 0x386

.field private static final LATCH_TO_TEXT:I = 0x384

.field private static final MIXED:[B

.field private static final NUMERIC_COMPACTION:I = 0x2

.field private static final PUNCTUATION:[B

.field private static final SHIFT_TO_BYTE:I = 0x391

.field private static final SUBMODE_ALPHA:I = 0x0

.field private static final SUBMODE_LOWER:I = 0x1

.field private static final SUBMODE_MIXED:I = 0x2

.field private static final SUBMODE_PUNCTUATION:I = 0x3

.field private static final TEXT_COMPACTION:I

.field private static final TEXT_MIXED_RAW:[B

.field private static final TEXT_PUNCTUATION_RAW:[B


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 116
    const/16 v0, 0x1e

    new-array v1, v0, [B

    fill-array-data v1, :array_54

    sput-object v1, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_MIXED_RAW:[B

    .line 123
    new-array v0, v0, [B

    fill-array-data v0, :array_68

    sput-object v0, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_PUNCTUATION_RAW:[B

    .line 127
    const/16 v0, 0x80

    new-array v1, v0, [B

    sput-object v1, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->MIXED:[B

    .line 128
    new-array v0, v0, [B

    sput-object v0, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    .line 130
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    sput-object v0, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    .line 137
    sget-object v0, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->MIXED:[B

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 138
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_26
    sget-object v3, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_MIXED_RAW:[B

    array-length v3, v3

    if-ge v2, v3, :cond_39

    .line 139
    sget-object v3, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_MIXED_RAW:[B

    aget-byte v3, v3, v2

    .line 140
    if-lez v3, :cond_36

    .line 141
    sget-object v4, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->MIXED:[B

    int-to-byte v5, v2

    aput-byte v5, v4, v3

    .line 138
    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 144
    :cond_39
    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 145
    nop

    :goto_3f
    sget-object v1, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_PUNCTUATION_RAW:[B

    array-length v1, v1

    if-ge v0, v1, :cond_52

    .line 146
    sget-object v1, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_PUNCTUATION_RAW:[B

    aget-byte v1, v1, v0

    .line 147
    if-lez v1, :cond_4f

    .line 148
    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    int-to-byte v3, v0

    aput-byte v3, v2, v1

    .line 145
    :cond_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    .line 151
    :cond_52
    return-void

    nop

    :array_54
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x26t
        0xdt
        0x9t
        0x2ct
        0x3at
        0x23t
        0x2dt
        0x2et
        0x24t
        0x2ft
        0x2bt
        0x25t
        0x2at
        0x3dt
        0x5et
        0x0t
        0x20t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_68
    .array-data 1
        0x3bt
        0x3ct
        0x3et
        0x40t
        0x5bt
        0x5ct
        0x5dt
        0x5ft
        0x60t
        0x7et
        0x21t
        0xdt
        0x9t
        0x2ct
        0x3at
        0xat
        0x2dt
        0x2et
        0x24t
        0x2ft
        0x22t
        0x7ct
        0x2at
        0x28t
        0x29t
        0x3ft
        0x7bt
        0x7dt
        0x27t
        0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    return-void
.end method

.method private static determineConsecutiveBinaryCount(Ljava/lang/String;ILjava/nio/charset/Charset;)I
    .registers 11
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "startpos"    # I
    .param p2, "encoding"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 539
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    .line 540
    .local v0, "encoder":Ljava/nio/charset/CharsetEncoder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 541
    .local v1, "len":I
    move v2, p1

    .local v2, "idx":I
    const/4 v3, 0x0

    .line 542
    :goto_a
    if-ge v2, v1, :cond_5f

    .line 543
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 544
    .local v4, "ch":C
    const/4 v5, 0x0

    .line 546
    .local v5, "numericCount":I
    :goto_11
    const/16 v6, 0xd

    if-ge v5, v6, :cond_27

    invoke-static {v4}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_27

    .line 547
    add-int/lit8 v5, v5, 0x1

    .line 549
    add-int v7, v2, v5

    .line 550
    .local v3, "i":I
    move v3, v7

    if-ge v7, v1, :cond_27

    .line 553
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 554
    .end local v3    # "i":I
    goto :goto_11

    .line 555
    :cond_27
    if-lt v5, v6, :cond_2c

    .line 556
    sub-int v3, v2, p1

    return v3

    .line 558
    :cond_2c
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 560
    invoke-virtual {v0, v4}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 563
    nop

    .end local v4    # "ch":C
    .end local v5    # "numericCount":I
    add-int/lit8 v2, v2, 0x1

    .line 564
    goto :goto_a

    .line 561
    .restart local v4    # "ch":C
    .restart local v5    # "numericCount":I
    :cond_3a
    new-instance v3, Lcom/google/zxing/WriterException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Non-encodable character detected: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (Unicode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x29

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 565
    .end local v4    # "ch":C
    .end local v5    # "numericCount":I
    :cond_5f
    sub-int v3, v2, p1

    return v3
.end method

.method private static determineConsecutiveDigitCount(Ljava/lang/CharSequence;I)I
    .registers 7
    .param p0, "msg"    # Ljava/lang/CharSequence;
    .param p1, "startpos"    # I

    .line 475
    const/4 v0, 0x0

    .line 476
    .local v0, "count":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 477
    .local v1, "len":I
    move v2, p1

    .line 478
    .local v2, "idx":I
    if-ge p1, v1, :cond_1f

    .line 479
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 480
    .local v3, "ch":C
    :cond_c
    :goto_c
    invoke-static {v3}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_1f

    if-ge v2, v1, :cond_1f

    .line 481
    add-int/lit8 v0, v0, 0x1

    .line 482
    add-int/lit8 v2, v2, 0x1

    .line 483
    if-ge v2, v1, :cond_c

    .line 484
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    goto :goto_c

    .line 488
    .end local v3    # "ch":C
    :cond_1f
    return v0
.end method

.method private static determineConsecutiveTextCount(Ljava/lang/CharSequence;I)I
    .registers 8
    .param p0, "msg"    # Ljava/lang/CharSequence;
    .param p1, "startpos"    # I

    .line 499
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 500
    .local v0, "len":I
    move v1, p1

    .line 501
    .local v1, "idx":I
    :cond_5
    :goto_5
    if-ge v1, v0, :cond_39

    .line 502
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 503
    .local v2, "ch":C
    const/4 v3, 0x0

    .line 504
    .local v3, "numericCount":I
    :cond_c
    :goto_c
    const/16 v4, 0xd

    if-ge v3, v4, :cond_23

    invoke-static {v2}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_23

    if-ge v1, v0, :cond_23

    .line 505
    add-int/lit8 v3, v3, 0x1

    .line 506
    add-int/lit8 v1, v1, 0x1

    .line 507
    if-ge v1, v0, :cond_c

    .line 508
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    goto :goto_c

    .line 511
    :cond_23
    if-lt v3, v4, :cond_29

    .line 512
    sub-int v4, v1, p1

    sub-int/2addr v4, v3

    return v4

    .line 514
    :cond_29
    if-gtz v3, :cond_5

    .line 518
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 521
    invoke-static {v4}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isText(C)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 524
    nop

    .end local v2    # "ch":C
    .end local v3    # "numericCount":I
    add-int/lit8 v1, v1, 0x1

    .line 525
    goto :goto_5

    .line 526
    :cond_39
    sub-int v2, v1, p1

    return v2
.end method

.method private static encodeBinary([BIIILjava/lang/StringBuilder;)V
    .registers 16
    .param p0, "bytes"    # [B
    .param p1, "startpos"    # I
    .param p2, "count"    # I
    .param p3, "startmode"    # I
    .param p4, "sb"    # Ljava/lang/StringBuilder;

    .line 382
    const/4 v0, 0x1

    if-ne p2, v0, :cond_b

    if-nez p3, :cond_b

    .line 383
    const/16 v0, 0x391

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1a

    .line 385
    :cond_b
    rem-int/lit8 v0, p2, 0x6

    if-nez v0, :cond_15

    .line 386
    const/16 v0, 0x39c

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1a

    .line 388
    :cond_15
    const/16 v0, 0x385

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 392
    :goto_1a
    move v0, p1

    .line 394
    .local v0, "idx":I
    const/4 v1, 0x6

    if-lt p2, v1, :cond_59

    .line 395
    const/4 v2, 0x5

    new-array v3, v2, [C

    .line 396
    .local v3, "chars":[C
    :goto_21
    add-int v4, p1, p2

    sub-int/2addr v4, v0

    if-lt v4, v1, :cond_59

    .line 397
    const-wide/16 v4, 0x0

    .line 398
    .local v4, "t":J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_29
    if-ge v6, v1, :cond_3b

    .line 399
    const/16 v7, 0x8

    shl-long v7, v4, v7

    .line 400
    add-int v9, v0, v6

    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    int-to-long v9, v9

    add-long v4, v7, v9

    .line 398
    add-int/lit8 v6, v6, 0x1

    goto :goto_29

    .line 402
    .end local v6    # "i":I
    :cond_3b
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_3c
    if-ge v6, v2, :cond_4a

    .line 403
    const-wide/16 v7, 0x384

    rem-long v9, v4, v7

    long-to-int v10, v9

    int-to-char v9, v10

    aput-char v9, v3, v6

    .line 404
    div-long/2addr v4, v7

    .line 402
    add-int/lit8 v6, v6, 0x1

    goto :goto_3c

    .line 406
    .end local v6    # "i":I
    :cond_4a
    const/4 v6, 0x4

    .restart local v6    # "i":I
    :goto_4b
    if-ltz v6, :cond_55

    .line 407
    aget-char v7, v3, v6

    invoke-virtual {p4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 406
    add-int/lit8 v6, v6, -0x1

    goto :goto_4b

    .line 409
    .end local v6    # "i":I
    :cond_55
    nop

    .end local v4    # "t":J
    add-int/lit8 v0, v0, 0x6

    .line 410
    goto :goto_21

    .line 413
    .end local v3    # "chars":[C
    :cond_59
    move v1, v0

    .local v1, "i":I
    :goto_5a
    add-int v2, p1, p2

    if-ge v1, v2, :cond_69

    .line 414
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    .line 415
    .local v2, "ch":I
    int-to-char v3, v2

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 413
    .end local v2    # "ch":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_5a

    .line 417
    .end local v1    # "i":I
    :cond_69
    return-void
.end method

.method static encodeHighLevel(Ljava/lang/String;Lcom/google/zxing/pdf417/encoder/Compaction;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 19
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "compaction"    # Lcom/google/zxing/pdf417/encoder/Compaction;
    .param p2, "encoding"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 167
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 169
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    if-nez v1, :cond_13

    .line 170
    sget-object v1, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    .end local p2    # "encoding":Ljava/nio/charset/Charset;
    .local v1, "encoding":Ljava/nio/charset/Charset;
    goto :goto_2e

    .line 171
    .end local v1    # "encoding":Ljava/nio/charset/Charset;
    .restart local p2    # "encoding":Ljava/nio/charset/Charset;
    :cond_13
    sget-object v4, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2e

    .line 172
    invoke-virtual/range {p2 .. p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECIByName(Ljava/lang/String;)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v4

    move-object v5, v3

    .line 173
    .local v5, "eci":Lcom/google/zxing/common/CharacterSetECI;
    move-object v5, v4

    if-eqz v4, :cond_2e

    .line 174
    invoke-virtual {v5}, Lcom/google/zxing/common/CharacterSetECI;->getValue()I

    move-result v4

    invoke-static {v4, v2}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodingECI(ILjava/lang/StringBuilder;)V

    .line 178
    .end local v5    # "eci":Lcom/google/zxing/common/CharacterSetECI;
    .end local p2    # "encoding":Ljava/nio/charset/Charset;
    .restart local v1    # "encoding":Ljava/nio/charset/Charset;
    :cond_2e
    :goto_2e
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 179
    .local v4, "len":I
    const/4 v5, 0x0

    .line 180
    .local v5, "p":I
    const/4 v6, 0x0

    .line 183
    .local v6, "textSubMode":I
    sget-object v7, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder$1;->$SwitchMap$com$google$zxing$pdf417$encoder$Compaction:[I

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/pdf417/encoder/Compaction;->ordinal()I

    move-result v8

    aget v7, v7, v8

    const/16 v8, 0x386

    const/4 v9, 0x1

    const/4 v10, 0x0

    packed-switch v7, :pswitch_data_b6

    .line 196
    const/4 v7, 0x0

    .local v7, "encodingMode":I
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    goto :goto_5e

    .line 192
    .end local v7    # "encodingMode":I
    :pswitch_48
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 193
    invoke-static {v0, v10, v4, v2}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeNumeric(Ljava/lang/String;IILjava/lang/StringBuilder;)V

    .line 194
    goto/16 :goto_b1

    .line 188
    :pswitch_50
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    .line 189
    .local v3, "msgBytes":[B
    move-object v3, v7

    array-length v8, v3

    invoke-static {v7, v10, v8, v9, v2}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeBinary([BIIILjava/lang/StringBuilder;)V

    .line 190
    goto :goto_b1

    .line 185
    .end local v3    # "msgBytes":[B
    :pswitch_5a
    invoke-static {v0, v10, v4, v2, v10}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeText(Ljava/lang/CharSequence;IILjava/lang/StringBuilder;I)I

    .line 186
    goto :goto_b1

    .line 197
    .restart local v7    # "encodingMode":I
    :goto_5e
    if-ge v5, v4, :cond_b1

    .line 198
    invoke-static {v0, v5}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->determineConsecutiveDigitCount(Ljava/lang/CharSequence;I)I

    move-result v14

    .line 199
    .local v11, "n":I
    move v11, v14

    const/16 v15, 0xd

    if-lt v14, v15, :cond_73

    .line 200
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 201
    const/4 v7, 0x2

    .line 202
    const/4 v6, 0x0

    .line 203
    invoke-static {v0, v5, v11, v2}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeNumeric(Ljava/lang/String;IILjava/lang/StringBuilder;)V

    .line 204
    add-int/2addr v5, v11

    goto :goto_5e

    .line 206
    :cond_73
    invoke-static {v0, v5}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->determineConsecutiveTextCount(Ljava/lang/CharSequence;I)I

    move-result v14

    .line 207
    .local v12, "t":I
    move v12, v14

    const/4 v15, 0x5

    if-ge v14, v15, :cond_a2

    if-ne v11, v4, :cond_7e

    goto :goto_a2

    .line 216
    :cond_7e
    invoke-static {v0, v5, v1}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->determineConsecutiveBinaryCount(Ljava/lang/String;ILjava/nio/charset/Charset;)I

    move-result v14

    .line 217
    .local v13, "b":I
    move v13, v14

    if-nez v14, :cond_86

    .line 218
    const/4 v13, 0x1

    .line 220
    :cond_86
    add-int v14, v5, v13

    invoke-virtual {v0, v5, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v14

    .line 221
    .local v3, "bytes":[B
    move-object v3, v14

    array-length v14, v14

    if-ne v14, v9, :cond_9a

    if-nez v7, :cond_9a

    .line 223
    invoke-static {v3, v10, v9, v10, v2}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeBinary([BIIILjava/lang/StringBuilder;)V

    goto :goto_a0

    .line 226
    :cond_9a
    array-length v14, v3

    invoke-static {v3, v10, v14, v7, v2}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeBinary([BIIILjava/lang/StringBuilder;)V

    .line 227
    const/4 v7, 0x1

    .line 228
    const/4 v6, 0x0

    .line 230
    :goto_a0
    add-int/2addr v5, v13

    .line 233
    .end local v3    # "bytes":[B
    .end local v11    # "n":I
    .end local v12    # "t":I
    .end local v13    # "b":I
    goto :goto_5e

    .line 208
    .restart local v11    # "n":I
    .restart local v12    # "t":I
    :cond_a2
    :goto_a2
    if-eqz v7, :cond_ab

    .line 209
    const/16 v14, 0x384

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 210
    const/4 v7, 0x0

    .line 211
    const/4 v6, 0x0

    .line 213
    :cond_ab
    invoke-static {v0, v5, v12, v2, v6}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeText(Ljava/lang/CharSequence;IILjava/lang/StringBuilder;I)I

    move-result v6

    .line 214
    add-int/2addr v5, v12

    goto :goto_5e

    .line 237
    .end local v7    # "encodingMode":I
    .end local v11    # "n":I
    .end local v12    # "t":I
    :cond_b1
    :goto_b1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_5a
        :pswitch_50
        :pswitch_48
    .end packed-switch
.end method

.method private static encodeNumeric(Ljava/lang/String;IILjava/lang/StringBuilder;)V
    .registers 13
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "startpos"    # I
    .param p2, "count"    # I
    .param p3, "sb"    # Ljava/lang/StringBuilder;

    .line 420
    const/4 v0, 0x0

    .line 421
    .local v0, "idx":I
    new-instance v1, Ljava/lang/StringBuilder;

    div-int/lit8 v2, p2, 0x3

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 422
    .local v1, "tmp":Ljava/lang/StringBuilder;
    const-wide/16 v2, 0x384

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    .line 423
    .local v2, "num900":Ljava/math/BigInteger;
    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    .line 424
    .local v3, "num0":Ljava/math/BigInteger;
    :goto_16
    if-ge v0, p2, :cond_6c

    .line 425
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 426
    const/16 v4, 0x2c

    sub-int v5, p2, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 427
    .local v4, "len":I
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "1"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int v6, p1, v0

    add-int v7, p1, v0

    add-int/2addr v7, v4

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 428
    .local v5, "part":Ljava/lang/String;
    new-instance v6, Ljava/math/BigInteger;

    invoke-direct {v6, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 430
    .local v6, "bigint":Ljava/math/BigInteger;
    :cond_41
    invoke-virtual {v6, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v7

    int-to-char v7, v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 431
    invoke-virtual {v6, v2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 432
    move-object v6, v7

    invoke-virtual {v7, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_41

    .line 435
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .local v7, "i":I
    :goto_5e
    if-ltz v7, :cond_6a

    .line 436
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 435
    add-int/lit8 v7, v7, -0x1

    goto :goto_5e

    .line 438
    .end local v7    # "i":I
    :cond_6a
    add-int/2addr v0, v4

    .line 439
    .end local v4    # "len":I
    .end local v5    # "part":Ljava/lang/String;
    .end local v6    # "bigint":Ljava/math/BigInteger;
    goto :goto_16

    .line 440
    :cond_6c
    return-void
.end method

.method private static encodeText(Ljava/lang/CharSequence;IILjava/lang/StringBuilder;I)I
    .registers 21

    .line 256
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 257
    nop

    .line 258
    const/4 v4, 0x0

    move/from16 v5, p4

    const/4 v6, 0x0

    .line 260
    :cond_10
    :goto_10
    add-int v7, p1, v6

    invoke-interface {v0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    .line 261
    const/16 v9, 0x1a

    const/16 v10, 0x20

    const/16 v11, 0x1c

    const/16 v12, 0x1b

    const/4 v13, 0x2

    const/16 v14, 0x1d

    const/4 v15, 0x1

    packed-switch v5, :pswitch_data_130

    .line 336
    invoke-static {v8}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isPunctuation(C)Z

    move-result v7

    if-eqz v7, :cond_129

    .line 337
    sget-object v7, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    aget-byte v7, v7, v8

    int-to-char v7, v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_f5

    .line 310
    :pswitch_35
    invoke-static {v8}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isMixed(C)Z

    move-result v9

    if-eqz v9, :cond_45

    .line 311
    sget-object v7, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->MIXED:[B

    aget-byte v7, v7, v8

    int-to-char v7, v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_f5

    .line 313
    :cond_45
    invoke-static {v8}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaUpper(C)Z

    move-result v9

    if-eqz v9, :cond_51

    .line 314
    nop

    .line 315
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 316
    const/4 v5, 0x0

    goto :goto_10

    .line 317
    :cond_51
    invoke-static {v8}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaLower(C)Z

    move-result v9

    if-eqz v9, :cond_5d

    .line 318
    nop

    .line 319
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 320
    const/4 v5, 0x1

    goto :goto_10

    .line 322
    :cond_5d
    add-int/lit8 v7, v7, 0x1

    if-ge v7, v1, :cond_73

    .line 323
    invoke-interface {v0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .line 324
    invoke-static {v7}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isPunctuation(C)Z

    move-result v7

    if-eqz v7, :cond_73

    .line 325
    nop

    .line 326
    const/16 v5, 0x19

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 327
    const/4 v5, 0x3

    goto :goto_10

    .line 330
    :cond_73
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 331
    sget-object v7, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    aget-byte v7, v7, v8

    int-to-char v7, v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 334
    goto/16 :goto_f5

    .line 286
    :pswitch_80
    invoke-static {v8}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaLower(C)Z

    move-result v7

    if-eqz v7, :cond_93

    .line 287
    if-ne v8, v10, :cond_8c

    .line 288
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_f5

    .line 290
    :cond_8c
    add-int/lit8 v8, v8, -0x61

    int-to-char v7, v8

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_f5

    .line 293
    :cond_93
    invoke-static {v8}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaUpper(C)Z

    move-result v7

    if-eqz v7, :cond_a3

    .line 294
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 295
    add-int/lit8 v8, v8, -0x41

    int-to-char v7, v8

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 297
    goto :goto_f5

    .line 298
    :cond_a3
    invoke-static {v8}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isMixed(C)Z

    move-result v7

    if-eqz v7, :cond_b0

    .line 299
    nop

    .line 300
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 301
    const/4 v5, 0x2

    goto/16 :goto_10

    .line 303
    :cond_b0
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 304
    sget-object v7, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    aget-byte v7, v7, v8

    int-to-char v7, v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 305
    goto :goto_f5

    .line 263
    :pswitch_bc
    invoke-static {v8}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaUpper(C)Z

    move-result v7

    if-eqz v7, :cond_cf

    .line 264
    if-ne v8, v10, :cond_c8

    .line 265
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_f5

    .line 267
    :cond_c8
    add-int/lit8 v8, v8, -0x41

    int-to-char v7, v8

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_f5

    .line 270
    :cond_cf
    invoke-static {v8}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaLower(C)Z

    move-result v7

    if-eqz v7, :cond_dc

    .line 271
    nop

    .line 272
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 273
    const/4 v5, 0x1

    goto/16 :goto_10

    .line 274
    :cond_dc
    invoke-static {v8}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isMixed(C)Z

    move-result v7

    if-eqz v7, :cond_e9

    .line 275
    nop

    .line 276
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 277
    const/4 v5, 0x2

    goto/16 :goto_10

    .line 279
    :cond_e9
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 280
    sget-object v7, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    aget-byte v7, v7, v8

    int-to-char v7, v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 281
    nop

    .line 344
    :goto_f5
    add-int/lit8 v6, v6, 0x1

    .line 345
    if-lt v6, v1, :cond_10

    .line 349
    nop

    .line 350
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 351
    const/4 v1, 0x0

    const/4 v6, 0x0

    :goto_100
    if-ge v1, v0, :cond_11e

    .line 352
    rem-int/lit8 v7, v1, 0x2

    if-eqz v7, :cond_108

    const/4 v7, 0x1

    goto :goto_109

    :cond_108
    const/4 v7, 0x0

    .line 353
    :goto_109
    if-eqz v7, :cond_117

    .line 354
    mul-int/lit8 v6, v6, 0x1e

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    add-int/2addr v6, v7

    int-to-char v6, v6

    .line 355
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_11b

    .line 357
    :cond_117
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    .line 351
    :goto_11b
    add-int/lit8 v1, v1, 0x1

    goto :goto_100

    .line 360
    :cond_11e
    rem-int/2addr v0, v13

    if-eqz v0, :cond_128

    .line 361
    mul-int/lit8 v6, v6, 0x1e

    add-int/2addr v6, v14

    int-to-char v0, v6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 363
    :cond_128
    return v5

    .line 339
    :cond_129
    nop

    .line 340
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 341
    const/4 v5, 0x0

    goto/16 :goto_10

    :pswitch_data_130
    .packed-switch 0x0
        :pswitch_bc
        :pswitch_80
        :pswitch_35
    .end packed-switch
.end method

.method private static encodingECI(ILjava/lang/StringBuilder;)V
    .registers 5
    .param p0, "eci"    # I
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 569
    if-ltz p0, :cond_10

    const/16 v0, 0x384

    if-ge p0, v0, :cond_10

    .line 570
    const/16 v0, 0x39f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 571
    int-to-char v0, p0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    .line 572
    :cond_10
    const v0, 0xc5f94

    if-ge p0, v0, :cond_29

    .line 573
    const/16 v0, 0x39e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 574
    div-int/lit16 v0, p0, 0x384

    add-int/lit8 v0, v0, -0x1

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 575
    rem-int/lit16 v0, p0, 0x384

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    .line 576
    :cond_29
    const v1, 0xc6318

    if-ge p0, v1, :cond_39

    .line 577
    const/16 v1, 0x39d

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 578
    sub-int/2addr v0, p0

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    .line 580
    :cond_39
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "ECI number not in valid range from 0..811799, but was "

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isAlphaLower(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 452
    const/16 v0, 0x20

    if-eq p0, v0, :cond_f

    const/16 v0, 0x61

    if-lt p0, v0, :cond_d

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    return v0

    :cond_f
    :goto_f
    const/4 v0, 0x1

    return v0
.end method

.method private static isAlphaUpper(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 448
    const/16 v0, 0x20

    if-eq p0, v0, :cond_f

    const/16 v0, 0x41

    if-lt p0, v0, :cond_d

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    return v0

    :cond_f
    :goto_f
    const/4 v0, 0x1

    return v0
.end method

.method private static isDigit(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 444
    const/16 v0, 0x30

    if-lt p0, v0, :cond_a

    const/16 v0, 0x39

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private static isMixed(C)Z
    .registers 3
    .param p0, "ch"    # C

    .line 456
    sget-object v0, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->MIXED:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method private static isPunctuation(C)Z
    .registers 3
    .param p0, "ch"    # C

    .line 460
    sget-object v0, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method private static isText(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 464
    const/16 v0, 0x9

    if-eq p0, v0, :cond_17

    const/16 v0, 0xa

    if-eq p0, v0, :cond_17

    const/16 v0, 0xd

    if-eq p0, v0, :cond_17

    const/16 v0, 0x20

    if-lt p0, v0, :cond_15

    const/16 v0, 0x7e

    if-gt p0, v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    return v0

    :cond_17
    :goto_17
    const/4 v0, 0x1

    return v0
.end method
