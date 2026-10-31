.class final Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    }
.end annotation


# static fields
.field private static final AL:I = 0x1c

.field private static final AS:I = 0x1b

.field private static final BEGIN_MACRO_PDF417_CONTROL_BLOCK:I = 0x3a0

.field private static final BEGIN_MACRO_PDF417_OPTIONAL_FIELD:I = 0x39b

.field private static final BYTE_COMPACTION_MODE_LATCH:I = 0x385

.field private static final BYTE_COMPACTION_MODE_LATCH_6:I = 0x39c

.field private static final ECI_CHARSET:I = 0x39f

.field private static final ECI_GENERAL_PURPOSE:I = 0x39e

.field private static final ECI_USER_DEFINED:I = 0x39d

.field private static final EXP900:[Ljava/math/BigInteger;

.field private static final LL:I = 0x1b

.field private static final MACRO_PDF417_OPTIONAL_FIELD_ADDRESSEE:I = 0x4

.field private static final MACRO_PDF417_OPTIONAL_FIELD_CHECKSUM:I = 0x6

.field private static final MACRO_PDF417_OPTIONAL_FIELD_FILE_NAME:I = 0x0

.field private static final MACRO_PDF417_OPTIONAL_FIELD_FILE_SIZE:I = 0x5

.field private static final MACRO_PDF417_OPTIONAL_FIELD_SEGMENT_COUNT:I = 0x1

.field private static final MACRO_PDF417_OPTIONAL_FIELD_SENDER:I = 0x3

.field private static final MACRO_PDF417_OPTIONAL_FIELD_TIME_STAMP:I = 0x2

.field private static final MACRO_PDF417_TERMINATOR:I = 0x39a

.field private static final MAX_NUMERIC_CODEWORDS:I = 0xf

.field private static final MIXED_CHARS:[C

.field private static final ML:I = 0x1c

.field private static final MODE_SHIFT_TO_BYTE_COMPACTION_MODE:I = 0x391

.field private static final NUMBER_OF_SEQUENCE_CODEWORDS:I = 0x2

.field private static final NUMERIC_COMPACTION_MODE_LATCH:I = 0x386

.field private static final PAL:I = 0x1d

.field private static final PL:I = 0x19

.field private static final PS:I = 0x1d

.field private static final PUNCT_CHARS:[C

.field private static final TEXT_COMPACTION_MODE_LATCH:I = 0x384


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 76
    nop

    .line 77
    const-string v0, ";<>@[\\]_`~!\r\t,:\n-.$/\"|*()?{}\'"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    .line 79
    nop

    .line 80
    const-string v0, "0123456789&\r\t,:#-.$/+%*=^"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    .line 89
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/math/BigInteger;

    .line 90
    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    const/4 v1, 0x0

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    aput-object v2, v0, v1

    .line 91
    const-wide/16 v0, 0x384

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 92
    .local v0, "nineHundred":Ljava/math/BigInteger;
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 93
    const/4 v1, 0x2

    .local v1, "i":I
    :goto_29
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    array-length v2, v2

    if-ge v1, v2, :cond_3d

    .line 94
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    add-int/lit8 v3, v1, -0x1

    aget-object v3, v2, v3

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    aput-object v3, v2, v1

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 96
    .end local v0    # "nineHundred":Ljava/math/BigInteger;
    .end local v1    # "i":I
    :cond_3d
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    return-void
.end method

.method private static byteCompaction(I[ILjava/nio/charset/Charset;ILjava/lang/StringBuilder;)I
    .registers 21

    .line 524
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 525
    nop

    .line 526
    nop

    .line 527
    nop

    .line 529
    const-wide/16 v1, 0x384

    const/16 v3, 0x384

    const/4 v4, 0x6

    const/4 v5, 0x1

    const/4 v6, 0x0

    sparse-switch p0, :sswitch_data_d4

    move/from16 v2, p3

    goto/16 :goto_c3

    :sswitch_16
    move/from16 v9, p3

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    .line 584
    :goto_1c
    aget v14, p1, v6

    if-ge v9, v14, :cond_59

    if-nez v10, :cond_59

    .line 585
    add-int/lit8 v14, v9, 0x1

    aget v9, p1, v9

    .line 586
    if-ge v9, v3, :cond_30

    .line 587
    add-int/lit8 v11, v11, 0x1

    .line 589
    mul-long v12, v12, v1

    int-to-long v7, v9

    add-long/2addr v12, v7

    move v9, v14

    goto :goto_39

    .line 591
    :cond_30
    sparse-switch v9, :sswitch_data_de

    move v9, v14

    goto :goto_39

    .line 599
    :sswitch_35
    add-int/lit8 v14, v14, -0x1

    .line 600
    move v9, v14

    const/4 v10, 0x1

    .line 604
    :goto_39
    rem-int/lit8 v7, v11, 0x5

    if-nez v7, :cond_56

    if-lez v11, :cond_56

    .line 607
    const/4 v7, 0x0

    :goto_40
    if-ge v7, v4, :cond_52

    .line 608
    rsub-int/lit8 v8, v7, 0x5

    mul-int/lit8 v8, v8, 0x8

    shr-long v1, v12, v8

    long-to-int v2, v1

    int-to-byte v1, v2

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 607
    add-int/lit8 v7, v7, 0x1

    const-wide/16 v1, 0x384

    goto :goto_40

    .line 610
    :cond_52
    nop

    .line 611
    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    .line 613
    :cond_56
    const-wide/16 v1, 0x384

    goto :goto_1c

    .line 616
    :cond_59
    move v2, v9

    goto/16 :goto_c3

    .line 534
    :sswitch_5c
    new-array v1, v4, [I

    .line 535
    add-int/lit8 v2, p3, 0x1

    aget v7, p1, p3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    .line 536
    :goto_66
    aget v12, p1, v6

    if-ge v2, v12, :cond_ab

    if-nez v8, :cond_ab

    .line 537
    add-int/lit8 v12, v9, 0x1

    aput v7, v1, v9

    .line 539
    const-wide/16 v13, 0x384

    mul-long v10, v10, v13

    int-to-long v13, v7

    add-long/2addr v10, v13

    .line 540
    add-int/lit8 v7, v2, 0x1

    aget v2, p1, v2

    .line 542
    sparse-switch v2, :sswitch_data_fc

    .line 554
    rem-int/lit8 v9, v12, 0x5

    if-nez v9, :cond_a6

    if-lez v12, :cond_a6

    .line 557
    const/4 v9, 0x0

    goto :goto_8e

    .line 550
    :sswitch_85
    add-int/lit8 v7, v7, -0x1

    .line 551
    nop

    .line 552
    move v9, v12

    const/4 v8, 0x1

    move v15, v7

    move v7, v2

    move v2, v15

    goto :goto_66

    .line 557
    :goto_8e
    if-ge v9, v4, :cond_9e

    .line 558
    rsub-int/lit8 v12, v9, 0x5

    mul-int/lit8 v12, v12, 0x8

    shr-long v12, v10, v12

    long-to-int v13, v12

    int-to-byte v12, v13

    invoke-virtual {v0, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 557
    add-int/lit8 v9, v9, 0x1

    goto :goto_8e

    .line 560
    :cond_9e
    nop

    .line 561
    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    move v15, v7

    move v7, v2

    move v2, v15

    goto :goto_66

    .line 536
    :cond_a6
    move v9, v12

    move v15, v7

    move v7, v2

    move v2, v15

    goto :goto_66

    .line 568
    :cond_ab
    aget v4, p1, v6

    if-ne v2, v4, :cond_b6

    if-ge v7, v3, :cond_b6

    .line 569
    add-int/lit8 v3, v9, 0x1

    aput v7, v1, v9

    move v9, v3

    .line 575
    :cond_b6
    nop

    :goto_b7
    if-ge v6, v9, :cond_c2

    .line 576
    aget v3, v1, v6

    int-to-byte v3, v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 575
    add-int/lit8 v6, v6, 0x1

    goto :goto_b7

    .line 579
    :cond_c2
    nop

    .line 616
    :goto_c3
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    move-object/from16 v3, p2

    invoke-direct {v1, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    return v2

    :sswitch_data_d4
    .sparse-switch
        0x385 -> :sswitch_5c
        0x39c -> :sswitch_16
    .end sparse-switch

    :sswitch_data_de
    .sparse-switch
        0x384 -> :sswitch_35
        0x385 -> :sswitch_35
        0x386 -> :sswitch_35
        0x39a -> :sswitch_35
        0x39b -> :sswitch_35
        0x39c -> :sswitch_35
        0x3a0 -> :sswitch_35
    .end sparse-switch

    :sswitch_data_fc
    .sparse-switch
        0x384 -> :sswitch_85
        0x385 -> :sswitch_85
        0x386 -> :sswitch_85
        0x39a -> :sswitch_85
        0x39b -> :sswitch_85
        0x39c -> :sswitch_85
        0x3a0 -> :sswitch_85
    .end sparse-switch
.end method

.method static decode([ILjava/lang/String;)Lcom/google/zxing/common/DecoderResult;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 105
    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 107
    nop

    .line 108
    aget v2, p0, v2

    .line 109
    new-instance v3, Lcom/google/zxing/pdf417/PDF417ResultMetadata;

    invoke-direct {v3}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;-><init>()V

    const/4 v4, 0x2

    .line 110
    :goto_13
    const/4 v5, 0x0

    aget v5, p0, v5

    if-ge v4, v5, :cond_68

    .line 111
    sparse-switch v2, :sswitch_data_82

    .line 149
    add-int/lit8 v4, v4, -0x1

    .line 150
    invoke-static {p0, v4, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result v2

    goto :goto_5b

    .line 139
    :sswitch_22
    invoke-static {p0, v4, v3}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeMacroBlock([IILcom/google/zxing/pdf417/PDF417ResultMetadata;)I

    move-result v2

    .line 140
    goto :goto_5b

    .line 126
    :sswitch_27
    add-int/lit8 v2, v4, 0x1

    aget v1, p0, v4

    .line 127
    invoke-static {v1}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECIByValue(I)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v1

    .line 128
    invoke-virtual {v1}, Lcom/google/zxing/common/CharacterSetECI;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 129
    goto :goto_5b

    .line 132
    :sswitch_38
    add-int/lit8 v2, v4, 0x2

    .line 133
    goto :goto_5b

    .line 136
    :sswitch_3b
    add-int/lit8 v2, v4, 0x1

    .line 137
    goto :goto_5b

    .line 144
    :sswitch_3e
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 120
    :sswitch_43
    add-int/lit8 v2, v4, 0x1

    aget v4, p0, v4

    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    goto :goto_5b

    .line 123
    :sswitch_4c
    invoke-static {p0, v4, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILjava/lang/StringBuilder;)I

    move-result v2

    .line 124
    goto :goto_5b

    .line 117
    :sswitch_51
    invoke-static {v2, p0, v1, v4, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->byteCompaction(I[ILjava/nio/charset/Charset;ILjava/lang/StringBuilder;)I

    move-result v2

    .line 118
    goto :goto_5b

    .line 113
    :sswitch_56
    invoke-static {p0, v4, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result v2

    .line 114
    nop

    .line 153
    :goto_5b
    array-length v4, p0

    if-ge v2, v4, :cond_63

    .line 154
    add-int/lit8 v4, v2, 0x1

    aget v2, p0, v2

    goto :goto_13

    .line 156
    :cond_63
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 159
    :cond_68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-eqz p0, :cond_7c

    .line 162
    new-instance p0, Lcom/google/zxing/common/DecoderResult;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v1, p1}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0, v3}, Lcom/google/zxing/common/DecoderResult;->setOther(Ljava/lang/Object;)V

    .line 164
    return-object p0

    .line 160
    :cond_7c
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    nop

    :sswitch_data_82
    .sparse-switch
        0x384 -> :sswitch_56
        0x385 -> :sswitch_51
        0x386 -> :sswitch_4c
        0x391 -> :sswitch_43
        0x39a -> :sswitch_3e
        0x39b -> :sswitch_3e
        0x39c -> :sswitch_51
        0x39d -> :sswitch_3b
        0x39e -> :sswitch_38
        0x39f -> :sswitch_27
        0x3a0 -> :sswitch_22
    .end sparse-switch
.end method

.method private static decodeBase900toBase10([II)Ljava/lang/String;
    .registers 7
    .param p0, "codewords"    # [I
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 711
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 712
    .local v0, "result":Ljava/math/BigInteger;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    const/4 v2, 0x1

    if-ge v1, p1, :cond_1f

    .line 713
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    sub-int v4, p1, v1

    sub-int/2addr v4, v2

    aget-object v2, v3, v4

    aget v3, p0, v1

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 712
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 715
    .end local v1    # "i":I
    :cond_1f
    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v3

    .line 716
    .local v1, "resultString":Ljava/lang/String;
    move-object v1, v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x31

    if-ne v3, v4, :cond_32

    .line 719
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 717
    :cond_32
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v2

    throw v2
.end method

.method static decodeMacroBlock([IILcom/google/zxing/pdf417/PDF417ResultMetadata;)I
    .registers 10
    .param p0, "codewords"    # [I
    .param p1, "codeIndex"    # I
    .param p2, "resultMetadata"    # Lcom/google/zxing/pdf417/PDF417ResultMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 169
    add-int/lit8 v0, p1, 0x2

    const/4 v1, 0x0

    aget v2, p0, v1

    if-gt v0, v2, :cond_10b

    .line 173
    const/4 v0, 0x2

    new-array v2, v0, [I

    .line 174
    .local v2, "segmentIndexArray":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    if-ge v3, v0, :cond_16

    .line 175
    aget v4, p0, p1

    aput v4, v2, v3

    .line 174
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    .line 177
    .end local v3    # "i":I
    :cond_16
    invoke-static {v2, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10([II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setSegmentIndex(I)V

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .local v0, "fileId":Ljava/lang/StringBuilder;
    invoke-static {p0, p1, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result p1

    .line 182
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setFileId(Ljava/lang/String;)V

    .line 184
    const/4 v3, -0x1

    .line 185
    .local v3, "optionalFieldsStart":I
    aget v4, p0, p1

    const/16 v5, 0x39b

    if-ne v4, v5, :cond_3a

    .line 186
    add-int/lit8 v3, p1, 0x1

    .line 189
    :cond_3a
    :goto_3a
    aget v4, p0, v1

    if-ge p1, v4, :cond_f4

    .line 190
    aget v4, p0, p1

    packed-switch v4, :pswitch_data_110

    .line 238
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 192
    :pswitch_48
    add-int/lit8 p1, p1, 0x1

    .line 193
    aget v4, p0, p1

    packed-switch v4, :pswitch_data_118

    .line 230
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 220
    :pswitch_54
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    .local v4, "checksum":Ljava/lang/StringBuilder;
    add-int/lit8 v5, p1, 0x1

    invoke-static {p0, v5, v4}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILjava/lang/StringBuilder;)I

    move-result p1

    .line 222
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p2, v5}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setChecksum(I)V

    .line 223
    goto :goto_3a

    .line 225
    .end local v4    # "checksum":Ljava/lang/StringBuilder;
    :pswitch_6b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    .local v4, "fileSize":Ljava/lang/StringBuilder;
    add-int/lit8 v5, p1, 0x1

    invoke-static {p0, v5, v4}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILjava/lang/StringBuilder;)I

    move-result p1

    .line 227
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {p2, v5, v6}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setFileSize(J)V

    .line 228
    goto :goto_3a

    .line 205
    .end local v4    # "fileSize":Ljava/lang/StringBuilder;
    :pswitch_82
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .local v4, "addressee":Ljava/lang/StringBuilder;
    add-int/lit8 v5, p1, 0x1

    invoke-static {p0, v5, v4}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result p1

    .line 207
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setAddressee(Ljava/lang/String;)V

    .line 208
    goto :goto_3a

    .line 200
    .end local v4    # "addressee":Ljava/lang/StringBuilder;
    :pswitch_95
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .local v4, "sender":Ljava/lang/StringBuilder;
    add-int/lit8 v5, p1, 0x1

    invoke-static {p0, v5, v4}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result p1

    .line 202
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setSender(Ljava/lang/String;)V

    .line 203
    goto :goto_3a

    .line 215
    .end local v4    # "sender":Ljava/lang/StringBuilder;
    :pswitch_a8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .local v4, "timestamp":Ljava/lang/StringBuilder;
    add-int/lit8 v5, p1, 0x1

    invoke-static {p0, v5, v4}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILjava/lang/StringBuilder;)I

    move-result p1

    .line 217
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {p2, v5, v6}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setTimestamp(J)V

    .line 218
    goto/16 :goto_3a

    .line 210
    .end local v4    # "timestamp":Ljava/lang/StringBuilder;
    :pswitch_c0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    .local v4, "segmentCount":Ljava/lang/StringBuilder;
    add-int/lit8 v5, p1, 0x1

    invoke-static {p0, v5, v4}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILjava/lang/StringBuilder;)I

    move-result p1

    .line 212
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p2, v5}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setSegmentCount(I)V

    .line 213
    goto/16 :goto_3a

    .line 195
    .end local v4    # "segmentCount":Ljava/lang/StringBuilder;
    :pswitch_d8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .local v4, "fileName":Ljava/lang/StringBuilder;
    add-int/lit8 v5, p1, 0x1

    invoke-static {p0, v5, v4}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result p1

    .line 197
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setFileName(Ljava/lang/String;)V

    .line 198
    goto/16 :goto_3a

    .line 234
    .end local v4    # "fileName":Ljava/lang/StringBuilder;
    :pswitch_ec
    add-int/lit8 p1, p1, 0x1

    .line 235
    const/4 v4, 0x1

    invoke-virtual {p2, v4}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setLastSegment(Z)V

    .line 236
    goto/16 :goto_3a

    .line 243
    :cond_f4
    const/4 v1, -0x1

    if-eq v3, v1, :cond_10a

    .line 244
    sub-int v1, p1, v3

    .line 245
    .local v1, "optionalFieldsLength":I
    invoke-virtual {p2}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->isLastSegment()Z

    move-result v4

    if-eqz v4, :cond_101

    .line 247
    add-int/lit8 v1, v1, -0x1

    .line 249
    :cond_101
    add-int v4, v3, v1

    invoke-static {p0, v3, v4}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setOptionalData([I)V

    .line 252
    .end local v1    # "optionalFieldsLength":I
    :cond_10a
    return p1

    .line 171
    .end local v0    # "fileId":Ljava/lang/StringBuilder;
    .end local v2    # "segmentIndexArray":[I
    .end local v3    # "optionalFieldsStart":I
    :cond_10b
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :pswitch_data_110
    .packed-switch 0x39a
        :pswitch_ec
        :pswitch_48
    .end packed-switch

    :pswitch_data_118
    .packed-switch 0x0
        :pswitch_d8
        :pswitch_c0
        :pswitch_a8
        :pswitch_95
        :pswitch_82
        :pswitch_6b
        :pswitch_54
    .end packed-switch
.end method

.method private static decodeTextCompaction([I[IILjava/lang/StringBuilder;)V
    .registers 12
    .param p0, "textCompactionData"    # [I
    .param p1, "byteCompactionData"    # [I
    .param p2, "length"    # I
    .param p3, "result"    # Ljava/lang/StringBuilder;

    .line 337
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 338
    .local v0, "subMode":Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 339
    .local v1, "priorToShiftMode":Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    const/4 v2, 0x0

    .line 340
    .local v2, "i":I
    :goto_5
    if-ge v2, p2, :cond_e6

    .line 341
    aget v3, p0, v2

    .line 342
    .local v3, "subModeCh":I
    const/4 v4, 0x0

    .line 343
    .local v4, "ch":C
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode:[I

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/16 v6, 0x1d

    const/16 v7, 0x1a

    packed-switch v5, :pswitch_data_e8

    goto/16 :goto_dc

    .line 479
    :pswitch_1b
    move-object v0, v1

    .line 480
    if-ge v3, v6, :cond_24

    .line 481
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    aget-char v4, v5, v3

    goto/16 :goto_dc

    .line 483
    :cond_24
    sparse-switch v3, :sswitch_data_f8

    goto/16 :goto_dc

    .line 490
    :sswitch_29
    aget v5, p1, v2

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 491
    goto/16 :goto_dc

    .line 493
    :sswitch_31
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_dc

    .line 485
    :sswitch_35
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 486
    goto/16 :goto_dc

    .line 462
    :pswitch_39
    move-object v0, v1

    .line 463
    if-ge v3, v7, :cond_41

    .line 464
    add-int/lit8 v5, v3, 0x41

    int-to-char v4, v5

    goto/16 :goto_dc

    .line 466
    :cond_41
    sparse-switch v3, :sswitch_data_106

    goto :goto_4c

    .line 471
    :sswitch_45
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_4c

    .line 468
    :sswitch_48
    const/16 v4, 0x20

    .line 469
    goto/16 :goto_dc

    .line 475
    :goto_4c
    goto/16 :goto_dc

    .line 443
    :pswitch_4e
    if-ge v3, v6, :cond_56

    .line 444
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    aget-char v4, v5, v3

    goto/16 :goto_dc

    .line 446
    :cond_56
    sparse-switch v3, :sswitch_data_110

    goto :goto_69

    .line 451
    :sswitch_5a
    aget v5, p1, v2

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 452
    goto/16 :goto_dc

    .line 454
    :sswitch_62
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_69

    .line 448
    :sswitch_65
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 449
    goto/16 :goto_dc

    .line 458
    :goto_69
    goto/16 :goto_dc

    .line 410
    :pswitch_6b
    const/16 v5, 0x19

    if-ge v3, v5, :cond_75

    .line 411
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    aget-char v4, v5, v3

    goto/16 :goto_dc

    .line 413
    :cond_75
    sparse-switch v3, :sswitch_data_11e

    goto :goto_96

    .line 432
    :sswitch_79
    aget v5, p1, v2

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 433
    goto/16 :goto_dc

    .line 435
    :sswitch_81
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_96

    .line 428
    :sswitch_84
    move-object v1, v0

    .line 429
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 430
    goto/16 :goto_dc

    .line 424
    :sswitch_89
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 425
    goto/16 :goto_dc

    .line 421
    :sswitch_8d
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 422
    goto :goto_dc

    .line 418
    :sswitch_90
    const/16 v4, 0x20

    .line 419
    goto :goto_dc

    .line 415
    :sswitch_93
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 416
    goto :goto_dc

    .line 439
    :goto_96
    goto :goto_dc

    .line 377
    :pswitch_97
    if-ge v3, v7, :cond_9d

    .line 378
    add-int/lit8 v5, v3, 0x61

    int-to-char v4, v5

    goto :goto_dc

    .line 380
    :cond_9d
    sparse-switch v3, :sswitch_data_13c

    goto :goto_b9

    .line 399
    :sswitch_a1
    aget v5, p1, v2

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 400
    goto :goto_dc

    .line 402
    :sswitch_a8
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_b9

    .line 394
    :sswitch_ab
    move-object v1, v0

    .line 395
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 396
    goto :goto_dc

    .line 390
    :sswitch_af
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 391
    goto :goto_dc

    .line 386
    :sswitch_b2
    move-object v1, v0

    .line 387
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 388
    goto :goto_dc

    .line 382
    :sswitch_b6
    const/16 v4, 0x20

    .line 383
    goto :goto_dc

    .line 406
    :goto_b9
    goto :goto_dc

    .line 346
    :pswitch_ba
    if-ge v3, v7, :cond_c0

    .line 348
    add-int/lit8 v5, v3, 0x41

    int-to-char v4, v5

    goto :goto_dc

    .line 350
    :cond_c0
    sparse-switch v3, :sswitch_data_156

    goto :goto_db

    .line 366
    :sswitch_c4
    aget v5, p1, v2

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 367
    goto :goto_dc

    .line 369
    :sswitch_cb
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_db

    .line 362
    :sswitch_ce
    move-object v1, v0

    .line 363
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 364
    goto :goto_dc

    .line 358
    :sswitch_d2
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 359
    goto :goto_dc

    .line 355
    :sswitch_d5
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 356
    goto :goto_dc

    .line 352
    :sswitch_d8
    const/16 v4, 0x20

    .line 353
    goto :goto_dc

    .line 373
    :goto_db
    nop

    .line 499
    :goto_dc
    if-eqz v4, :cond_e1

    .line 501
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 503
    :cond_e1
    nop

    .end local v3    # "subModeCh":I
    .end local v4    # "ch":C
    add-int/lit8 v2, v2, 0x1

    .line 504
    goto/16 :goto_5

    .line 505
    :cond_e6
    return-void

    nop

    :pswitch_data_e8
    .packed-switch 0x1
        :pswitch_ba
        :pswitch_97
        :pswitch_6b
        :pswitch_4e
        :pswitch_39
        :pswitch_1b
    .end packed-switch

    :sswitch_data_f8
    .sparse-switch
        0x1d -> :sswitch_35
        0x384 -> :sswitch_31
        0x391 -> :sswitch_29
    .end sparse-switch

    :sswitch_data_106
    .sparse-switch
        0x1a -> :sswitch_48
        0x384 -> :sswitch_45
    .end sparse-switch

    :sswitch_data_110
    .sparse-switch
        0x1d -> :sswitch_65
        0x384 -> :sswitch_62
        0x391 -> :sswitch_5a
    .end sparse-switch

    :sswitch_data_11e
    .sparse-switch
        0x19 -> :sswitch_93
        0x1a -> :sswitch_90
        0x1b -> :sswitch_8d
        0x1c -> :sswitch_89
        0x1d -> :sswitch_84
        0x384 -> :sswitch_81
        0x391 -> :sswitch_79
    .end sparse-switch

    :sswitch_data_13c
    .sparse-switch
        0x1a -> :sswitch_b6
        0x1b -> :sswitch_b2
        0x1c -> :sswitch_af
        0x1d -> :sswitch_ab
        0x384 -> :sswitch_a8
        0x391 -> :sswitch_a1
    .end sparse-switch

    :sswitch_data_156
    .sparse-switch
        0x1a -> :sswitch_d8
        0x1b -> :sswitch_d5
        0x1c -> :sswitch_d2
        0x1d -> :sswitch_ce
        0x384 -> :sswitch_cb
        0x391 -> :sswitch_c4
    .end sparse-switch
.end method

.method private static numericCompaction([IILjava/lang/StringBuilder;)I
    .registers 8
    .param p0, "codewords"    # [I
    .param p1, "codeIndex"    # I
    .param p2, "result"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 629
    const/4 v0, 0x0

    .line 630
    .local v0, "count":I
    const/4 v1, 0x0

    .line 632
    .local v1, "end":Z
    const/16 v2, 0xf

    new-array v2, v2, [I

    .line 634
    .local v2, "numericCodewords":[I
    :goto_6
    const/4 v3, 0x0

    aget v4, p0, v3

    if-ge p1, v4, :cond_3c

    if-nez v1, :cond_3c

    .line 635
    add-int/lit8 v4, p1, 0x1

    .end local p1    # "codeIndex":I
    .local v4, "codeIndex":I
    aget p1, p0, p1

    .line 636
    .local p1, "code":I
    aget v3, p0, v3

    if-ne v4, v3, :cond_16

    .line 637
    const/4 v1, 0x1

    .line 639
    :cond_16
    const/16 v3, 0x384

    if-ge p1, v3, :cond_1f

    .line 640
    aput p1, v2, v0

    .line 641
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 643
    :cond_1f
    sparse-switch p1, :sswitch_data_3e

    goto :goto_26

    .line 650
    :sswitch_23
    add-int/lit8 v4, v4, -0x1

    .line 651
    const/4 v1, 0x1

    .line 655
    :goto_26
    rem-int/lit8 v3, v0, 0xf

    if-eqz v3, :cond_30

    const/16 v3, 0x386

    if-eq p1, v3, :cond_30

    if-eqz v1, :cond_3a

    :cond_30
    if-lez v0, :cond_3a

    .line 660
    invoke-static {v2, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10([II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    const/4 v0, 0x0

    .line 663
    .end local p1    # "code":I
    :cond_3a
    move p1, v4

    goto :goto_6

    .line 664
    .end local v4    # "codeIndex":I
    .local p1, "codeIndex":I
    :cond_3c
    return p1

    nop

    :sswitch_data_3e
    .sparse-switch
        0x384 -> :sswitch_23
        0x385 -> :sswitch_23
        0x39a -> :sswitch_23
        0x39b -> :sswitch_23
        0x39c -> :sswitch_23
        0x3a0 -> :sswitch_23
    .end sparse-switch
.end method

.method private static textCompaction([IILjava/lang/StringBuilder;)I
    .registers 11
    .param p0, "codewords"    # [I
    .param p1, "codeIndex"    # I
    .param p2, "result"    # Ljava/lang/StringBuilder;

    .line 267
    const/4 v0, 0x0

    aget v1, p0, v0

    sub-int/2addr v1, p1

    shl-int/lit8 v1, v1, 0x1

    new-array v1, v1, [I

    .line 269
    .local v1, "textCompactionData":[I
    aget v2, p0, v0

    sub-int/2addr v2, p1

    shl-int/lit8 v2, v2, 0x1

    new-array v2, v2, [I

    .line 271
    .local v2, "byteCompactionData":[I
    const/4 v3, 0x0

    .line 272
    .local v3, "index":I
    const/4 v4, 0x0

    .local v4, "end":Z
    const/4 v5, 0x0

    .line 273
    :goto_12
    aget v6, p0, v0

    if-ge p1, v6, :cond_4d

    if-nez v4, :cond_4d

    .line 274
    add-int/lit8 v6, p1, 0x1

    .end local p1    # "codeIndex":I
    .local v6, "codeIndex":I
    aget p1, p0, p1

    .line 275
    .local v5, "code":I
    move v5, p1

    const/16 v7, 0x384

    if-ge p1, v7, :cond_2f

    .line 276
    div-int/lit8 p1, v5, 0x1e

    aput p1, v1, v3

    .line 277
    add-int/lit8 p1, v3, 0x1

    rem-int/lit8 v7, v5, 0x1e

    aput v7, v1, p1

    .line 278
    add-int/lit8 v3, v3, 0x2

    move p1, v6

    goto :goto_12

    .line 280
    :cond_2f
    sparse-switch v5, :sswitch_data_52

    move p1, v6

    goto :goto_4c

    .line 301
    :sswitch_34
    const/16 p1, 0x391

    aput p1, v1, v3

    .line 302
    add-int/lit8 p1, v6, 0x1

    .end local v6    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    aget v5, p0, v6

    .line 303
    aput v5, v2, v3

    .line 304
    add-int/lit8 v3, v3, 0x1

    goto :goto_4c

    .line 291
    .end local p1    # "codeIndex":I
    .restart local v6    # "codeIndex":I
    :sswitch_41
    add-int/lit8 p1, v6, -0x1

    .line 292
    .end local v6    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    const/4 v4, 0x1

    .line 293
    goto :goto_12

    .line 283
    .end local p1    # "codeIndex":I
    .restart local v6    # "codeIndex":I
    :sswitch_45
    add-int/lit8 p1, v3, 0x1

    .end local v3    # "index":I
    .local p1, "index":I
    aput v7, v1, v3

    .line 284
    move v3, p1

    move p1, v6

    goto :goto_12

    .line 308
    .end local v5    # "code":I
    .end local v6    # "codeIndex":I
    .restart local v3    # "index":I
    .local p1, "codeIndex":I
    :goto_4c
    goto :goto_12

    .line 309
    :cond_4d
    invoke-static {v1, v2, v3, p2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeTextCompaction([I[IILjava/lang/StringBuilder;)V

    .line 310
    return p1

    nop

    :sswitch_data_52
    .sparse-switch
        0x384 -> :sswitch_45
        0x385 -> :sswitch_41
        0x386 -> :sswitch_41
        0x391 -> :sswitch_34
        0x39a -> :sswitch_41
        0x39b -> :sswitch_41
        0x39c -> :sswitch_41
        0x3a0 -> :sswitch_41
    .end sparse-switch
.end method
