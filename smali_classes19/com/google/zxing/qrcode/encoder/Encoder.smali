.class public final Lcom/google/zxing/qrcode/encoder/Encoder;
.super Ljava/lang/Object;
.source "Encoder.java"


# static fields
.field private static final ALPHANUMERIC_TABLE:[I

.field static final DEFAULT_BYTE_MODE_ENCODING:Ljava/lang/String; = "ISO-8859-1"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 41
    const/16 v0, 0x60

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/zxing/qrcode/encoder/Encoder;->ALPHANUMERIC_TABLE:[I

    return-void

    :array_a
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x24
        -0x1
        -0x1
        -0x1
        0x25
        0x26
        -0x1
        -0x1
        -0x1
        -0x1
        0x27
        0x28
        -0x1
        0x29
        0x2a
        0x2b
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0x2c
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method static append8BitBytes(Ljava/lang/String;Lcom/google/zxing/common/BitArray;Ljava/lang/String;)V
    .registers 8
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "bits"    # Lcom/google/zxing/common/BitArray;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 576
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_4} :catch_14

    .line 579
    .local v0, "bytes":[B
    nop

    .line 580
    array-length v1, v0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_13

    aget-byte v3, v0, v2

    .line 581
    .local v3, "b":B
    const/16 v4, 0x8

    invoke-virtual {p1, v3, v4}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 580
    .end local v3    # "b":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 583
    :cond_13
    return-void

    .line 577
    .end local v0    # "bytes":[B
    :catch_14
    move-exception v0

    .line 578
    .local v0, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/google/zxing/WriterException;

    invoke-direct {v1, v0}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static appendAlphanumericBytes(Ljava/lang/CharSequence;Lcom/google/zxing/common/BitArray;)V
    .registers 8
    .param p0, "content"    # Ljava/lang/CharSequence;
    .param p1, "bits"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 549
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 550
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 551
    :goto_7
    if-ge v1, v0, :cond_46

    .line 552
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/google/zxing/qrcode/encoder/Encoder;->getAlphanumericCode(I)I

    move-result v4

    .line 553
    .local v2, "code1":I
    move v2, v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_40

    .line 556
    add-int/lit8 v4, v1, 0x1

    if-ge v4, v0, :cond_38

    .line 557
    add-int/lit8 v4, v1, 0x1

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/google/zxing/qrcode/encoder/Encoder;->getAlphanumericCode(I)I

    move-result v4

    .line 558
    .local v3, "code2":I
    move v3, v4

    if-eq v4, v5, :cond_32

    .line 562
    mul-int/lit8 v4, v2, 0x2d

    add-int/2addr v4, v3

    const/16 v5, 0xb

    invoke-virtual {p1, v4, v5}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 563
    nop

    .end local v3    # "code2":I
    add-int/lit8 v1, v1, 0x2

    .line 564
    goto :goto_7

    .line 559
    .restart local v3    # "code2":I
    :cond_32
    new-instance v4, Lcom/google/zxing/WriterException;

    invoke-direct {v4}, Lcom/google/zxing/WriterException;-><init>()V

    throw v4

    .line 566
    .end local v3    # "code2":I
    :cond_38
    const/4 v4, 0x6

    invoke-virtual {p1, v2, v4}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 567
    nop

    .end local v2    # "code1":I
    add-int/lit8 v1, v1, 0x1

    .line 569
    goto :goto_7

    .line 554
    .restart local v2    # "code1":I
    :cond_40
    new-instance v3, Lcom/google/zxing/WriterException;

    invoke-direct {v3}, Lcom/google/zxing/WriterException;-><init>()V

    throw v3

    .line 570
    .end local v2    # "code1":I
    :cond_46
    return-void
.end method

.method static appendBytes(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;Ljava/lang/String;)V
    .registers 7
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "mode"    # Lcom/google/zxing/qrcode/decoder/Mode;
    .param p2, "bits"    # Lcom/google/zxing/common/BitArray;
    .param p3, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 506
    sget-object v0, Lcom/google/zxing/qrcode/encoder/Encoder$1;->$SwitchMap$com$google$zxing$qrcode$decoder$Mode:[I

    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2c

    .line 520
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Invalid mode: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 517
    :pswitch_1b
    invoke-static {p0, p2}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendKanjiBytes(Ljava/lang/String;Lcom/google/zxing/common/BitArray;)V

    .line 518
    return-void

    .line 514
    :pswitch_1f
    invoke-static {p0, p2, p3}, Lcom/google/zxing/qrcode/encoder/Encoder;->append8BitBytes(Ljava/lang/String;Lcom/google/zxing/common/BitArray;Ljava/lang/String;)V

    .line 515
    return-void

    .line 511
    :pswitch_23
    invoke-static {p0, p2}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendAlphanumericBytes(Ljava/lang/CharSequence;Lcom/google/zxing/common/BitArray;)V

    .line 512
    return-void

    .line 508
    :pswitch_27
    invoke-static {p0, p2}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendNumericBytes(Ljava/lang/CharSequence;Lcom/google/zxing/common/BitArray;)V

    .line 509
    return-void

    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_27
        :pswitch_23
        :pswitch_1f
        :pswitch_1b
    .end packed-switch
.end method

.method private static appendECI(Lcom/google/zxing/common/CharacterSetECI;Lcom/google/zxing/common/BitArray;)V
    .registers 4
    .param p0, "eci"    # Lcom/google/zxing/common/CharacterSetECI;
    .param p1, "bits"    # Lcom/google/zxing/common/BitArray;

    .line 612
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->ECI:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/Mode;->getBits()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 614
    invoke-virtual {p0}, Lcom/google/zxing/common/CharacterSetECI;->getValue()I

    move-result v0

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 615
    return-void
.end method

.method static appendKanjiBytes(Ljava/lang/String;Lcom/google/zxing/common/BitArray;)V
    .registers 11
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "bits"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 588
    :try_start_0
    const-string v0, "Shift_JIS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_6} :catch_50

    .line 591
    .local v0, "bytes":[B
    nop

    .line 592
    array-length v1, v0

    .line 593
    .local v1, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_4f

    .line 594
    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    .line 595
    .local v3, "byte1":I
    add-int/lit8 v4, v2, 0x1

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    .line 596
    .local v4, "byte2":I
    shl-int/lit8 v5, v3, 0x8

    or-int/2addr v5, v4

    .line 597
    .local v5, "code":I
    const/4 v6, -0x1

    .line 598
    .local v6, "subtracted":I
    const v7, 0x8140

    if-lt v5, v7, :cond_26

    const v8, 0x9ffc

    if-gt v5, v8, :cond_26

    .line 599
    sub-int v6, v5, v7

    goto :goto_35

    .line 600
    :cond_26
    const v7, 0xe040

    if-lt v5, v7, :cond_35

    const v7, 0xebbf

    if-gt v5, v7, :cond_35

    .line 601
    const v7, 0xc140

    sub-int v6, v5, v7

    .line 603
    :cond_35
    :goto_35
    const/4 v7, -0x1

    if-eq v6, v7, :cond_47

    .line 606
    shr-int/lit8 v7, v6, 0x8

    mul-int/lit16 v7, v7, 0xc0

    and-int/lit16 v8, v6, 0xff

    add-int/2addr v7, v8

    .line 607
    .local v7, "encoded":I
    const/16 v8, 0xd

    invoke-virtual {p1, v7, v8}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 593
    .end local v3    # "byte1":I
    .end local v4    # "byte2":I
    .end local v5    # "code":I
    .end local v6    # "subtracted":I
    .end local v7    # "encoded":I
    add-int/lit8 v2, v2, 0x2

    goto :goto_9

    .line 604
    .restart local v3    # "byte1":I
    .restart local v4    # "byte2":I
    .restart local v5    # "code":I
    .restart local v6    # "subtracted":I
    :cond_47
    new-instance v7, Lcom/google/zxing/WriterException;

    const-string v8, "Invalid byte sequence"

    invoke-direct {v7, v8}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 609
    .end local v2    # "i":I
    .end local v3    # "byte1":I
    .end local v4    # "byte2":I
    .end local v5    # "code":I
    .end local v6    # "subtracted":I
    :cond_4f
    return-void

    .line 589
    .end local v0    # "bytes":[B
    .end local v1    # "length":I
    :catch_50
    move-exception v0

    .line 590
    .local v0, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/google/zxing/WriterException;

    invoke-direct {v1, v0}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static appendLengthInfo(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;)V
    .registers 9
    .param p0, "numLetters"    # I
    .param p1, "version"    # Lcom/google/zxing/qrcode/decoder/Version;
    .param p2, "mode"    # Lcom/google/zxing/qrcode/decoder/Mode;
    .param p3, "bits"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 492
    invoke-virtual {p2, p1}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v0

    .line 493
    .local v0, "numBits":I
    const/4 v1, 0x1

    shl-int v2, v1, v0

    if-ge p0, v2, :cond_d

    .line 496
    invoke-virtual {p3, p0, v0}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 497
    return-void

    .line 494
    :cond_d
    new-instance v2, Lcom/google/zxing/WriterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is bigger than "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    shl-int v4, v1, v0

    sub-int/2addr v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static appendModeInfo(Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;)V
    .registers 4
    .param p0, "mode"    # Lcom/google/zxing/qrcode/decoder/Mode;
    .param p1, "bits"    # Lcom/google/zxing/common/BitArray;

    .line 484
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Mode;->getBits()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 485
    return-void
.end method

.method static appendNumericBytes(Ljava/lang/CharSequence;Lcom/google/zxing/common/BitArray;)V
    .registers 9
    .param p0, "content"    # Ljava/lang/CharSequence;
    .param p1, "bits"    # Lcom/google/zxing/common/BitArray;

    .line 525
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 526
    .local v0, "length":I
    const/4 v1, 0x0

    .line 527
    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_4f

    .line 528
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    .line 529
    .local v2, "num1":I
    add-int/lit8 v3, v1, 0x2

    if-ge v3, v0, :cond_30

    .line 531
    add-int/lit8 v3, v1, 0x1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    .line 532
    .local v3, "num2":I
    add-int/lit8 v4, v1, 0x2

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    .line 533
    .local v4, "num3":I
    mul-int/lit8 v5, v2, 0x64

    mul-int/lit8 v6, v3, 0xa

    add-int/2addr v5, v6

    add-int/2addr v5, v4

    const/16 v6, 0xa

    invoke-virtual {p1, v5, v6}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 534
    nop

    .end local v3    # "num2":I
    .end local v4    # "num3":I
    add-int/lit8 v1, v1, 0x3

    .line 535
    goto :goto_5

    :cond_30
    add-int/lit8 v3, v1, 0x1

    if-ge v3, v0, :cond_47

    .line 537
    add-int/lit8 v3, v1, 0x1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    .line 538
    .restart local v3    # "num2":I
    mul-int/lit8 v4, v2, 0xa

    add-int/2addr v4, v3

    const/4 v5, 0x7

    invoke-virtual {p1, v4, v5}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 539
    nop

    .end local v3    # "num2":I
    add-int/lit8 v1, v1, 0x2

    .line 540
    goto :goto_5

    .line 542
    :cond_47
    const/4 v3, 0x4

    invoke-virtual {p1, v2, v3}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 543
    nop

    .end local v2    # "num1":I
    add-int/lit8 v1, v1, 0x1

    .line 545
    goto :goto_5

    .line 546
    :cond_4f
    return-void
.end method

.method private static calculateBitsNeeded(Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/Version;)I
    .registers 6
    .param p0, "mode"    # Lcom/google/zxing/qrcode/decoder/Mode;
    .param p1, "headerBits"    # Lcom/google/zxing/common/BitArray;
    .param p2, "dataBits"    # Lcom/google/zxing/common/BitArray;
    .param p3, "version"    # Lcom/google/zxing/qrcode/decoder/Version;

    .line 192
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    invoke-virtual {p0, p3}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static calculateMaskPenalty(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .registers 3
    .param p0, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    .line 58
    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule1(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v0

    .line 59
    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule2(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v1

    add-int/2addr v0, v1

    .line 60
    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule3(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v1

    add-int/2addr v0, v1

    .line 61
    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule4(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v1

    add-int/2addr v0, v1

    .line 58
    return v0
.end method

.method private static chooseMaskPattern(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .registers 9
    .param p0, "bits"    # Lcom/google/zxing/common/BitArray;
    .param p1, "ecLevel"    # Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .param p2, "version"    # Lcom/google/zxing/qrcode/decoder/Version;
    .param p3, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 265
    const v0, 0x7fffffff

    .line 266
    .local v0, "minPenalty":I
    const/4 v1, -0x1

    .line 268
    .local v1, "bestMaskPattern":I
    const/4 v2, 0x0

    .local v2, "maskPattern":I
    const/4 v3, 0x0

    :goto_6
    const/16 v4, 0x8

    if-ge v2, v4, :cond_19

    .line 269
    invoke-static {p0, p1, p2, v2, p3}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->buildMatrix(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 270
    invoke-static {p3}, Lcom/google/zxing/qrcode/encoder/Encoder;->calculateMaskPenalty(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v4

    .line 271
    .local v3, "penalty":I
    move v3, v4

    if-ge v4, v0, :cond_16

    .line 272
    move v0, v3

    .line 273
    move v1, v2

    .line 268
    .end local v3    # "penalty":I
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 276
    .end local v2    # "maskPattern":I
    :cond_19
    return v1
.end method

.method public static chooseMode(Ljava/lang/String;)Lcom/google/zxing/qrcode/decoder/Mode;
    .registers 2
    .param p0, "content"    # Ljava/lang/String;

    .line 207
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/zxing/qrcode/encoder/Encoder;->chooseMode(Ljava/lang/String;Ljava/lang/String;)Lcom/google/zxing/qrcode/decoder/Mode;

    move-result-object v0

    return-object v0
.end method

.method private static chooseMode(Ljava/lang/String;Ljava/lang/String;)Lcom/google/zxing/qrcode/decoder/Mode;
    .registers 8
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "encoding"    # Ljava/lang/String;

    .line 215
    const-string v0, "Shift_JIS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/Encoder;->isOnlyDoubleByteKanji(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 217
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->KANJI:Lcom/google/zxing/qrcode/decoder/Mode;

    return-object v0

    .line 219
    :cond_11
    const/4 v0, 0x0

    .line 220
    .local v0, "hasNumeric":Z
    const/4 v1, 0x0

    .line 221
    .local v1, "hasAlphanumeric":Z
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    :goto_15
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_38

    .line 222
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 223
    .local v3, "c":C
    move v3, v4

    const/16 v5, 0x30

    if-lt v4, v5, :cond_2a

    const/16 v4, 0x39

    if-gt v3, v4, :cond_2a

    .line 224
    const/4 v0, 0x1

    goto :goto_32

    .line 225
    :cond_2a
    invoke-static {v3}, Lcom/google/zxing/qrcode/encoder/Encoder;->getAlphanumericCode(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_35

    .line 226
    const/4 v1, 0x1

    .line 221
    .end local v3    # "c":C
    :goto_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 228
    :cond_35
    sget-object v4, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    return-object v4

    .line 231
    .end local v2    # "i":I
    :cond_38
    if-eqz v1, :cond_3d

    .line 232
    sget-object v2, Lcom/google/zxing/qrcode/decoder/Mode;->ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    return-object v2

    .line 234
    :cond_3d
    if-eqz v0, :cond_42

    .line 235
    sget-object v2, Lcom/google/zxing/qrcode/decoder/Mode;->NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    return-object v2

    .line 237
    :cond_42
    sget-object v2, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    return-object v2
.end method

.method private static chooseVersion(ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version;
    .registers 5
    .param p0, "numInputBits"    # I
    .param p1, "ecLevel"    # Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 280
    const/4 v0, 0x1

    .local v0, "versionNum":I
    :goto_1
    const/16 v1, 0x28

    if-gt v0, v1, :cond_13

    .line 281
    invoke-static {v0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v1

    .line 282
    .local v1, "version":Lcom/google/zxing/qrcode/decoder/Version;
    invoke-static {p0, v1, p1}, Lcom/google/zxing/qrcode/encoder/Encoder;->willFit(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 283
    return-object v1

    .line 280
    .end local v1    # "version":Lcom/google/zxing/qrcode/decoder/Version;
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 286
    .end local v0    # "versionNum":I
    :cond_13
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Data too big"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static encode(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/encoder/QRCode;
    .registers 3
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "ecLevel"    # Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 72
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/zxing/qrcode/encoder/Encoder;->encode(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/google/zxing/qrcode/encoder/QRCode;

    move-result-object v0

    return-object v0
.end method

.method public static encode(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/google/zxing/qrcode/encoder/QRCode;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/qrcode/encoder/QRCode;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 80
    nop

    .line 81
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_f

    sget-object v2, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v2, 0x1

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    .line 82
    :goto_10
    if-eqz v2, :cond_1d

    .line 83
    sget-object v3, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1f

    .line 82
    :cond_1d
    const-string v3, "ISO-8859-1"

    .line 88
    :goto_1f
    invoke-static {p0, v3}, Lcom/google/zxing/qrcode/encoder/Encoder;->chooseMode(Ljava/lang/String;Ljava/lang/String;)Lcom/google/zxing/qrcode/decoder/Mode;

    move-result-object v4

    .line 92
    new-instance v5, Lcom/google/zxing/common/BitArray;

    invoke-direct {v5}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 95
    sget-object v6, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne v4, v6, :cond_37

    if-eqz v2, :cond_37

    .line 96
    invoke-static {v3}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECIByName(Ljava/lang/String;)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v2

    .line 97
    if-eqz v2, :cond_37

    .line 98
    invoke-static {v2, v5}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendECI(Lcom/google/zxing/common/CharacterSetECI;Lcom/google/zxing/common/BitArray;)V

    .line 103
    :cond_37
    if-eqz p2, :cond_42

    sget-object v2, Lcom/google/zxing/EncodeHintType;->GS1_FORMAT:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    goto :goto_43

    :cond_42
    const/4 v0, 0x0

    .line 104
    :goto_43
    if-eqz v0, :cond_5e

    sget-object v0, Lcom/google/zxing/EncodeHintType;->GS1_FORMAT:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 106
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->FNC1_FIRST_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-static {v0, v5}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendModeInfo(Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;)V

    .line 110
    :cond_5e
    invoke-static {v4, v5}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendModeInfo(Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;)V

    .line 114
    new-instance v0, Lcom/google/zxing/common/BitArray;

    invoke-direct {v0}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 115
    invoke-static {p0, v4, v0, v3}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendBytes(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;Ljava/lang/String;)V

    .line 118
    if-eqz p2, :cond_98

    sget-object v1, Lcom/google/zxing/EncodeHintType;->QR_VERSION:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_98

    .line 119
    sget-object v1, Lcom/google/zxing/EncodeHintType;->QR_VERSION:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 120
    invoke-static {p2}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object p2

    .line 121
    invoke-static {v4, v5, v0, p2}, Lcom/google/zxing/qrcode/encoder/Encoder;->calculateBitsNeeded(Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v1

    .line 122
    invoke-static {v1, p2, p1}, Lcom/google/zxing/qrcode/encoder/Encoder;->willFit(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Z

    move-result v1

    if-eqz v1, :cond_90

    .line 125
    goto :goto_9c

    .line 123
    :cond_90
    new-instance p0, Lcom/google/zxing/WriterException;

    const-string p1, "Data too big for requested version"

    invoke-direct {p0, p1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 126
    :cond_98
    invoke-static {p1, v4, v5, v0}, Lcom/google/zxing/qrcode/encoder/Encoder;->recommendVersion(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;Lcom/google/zxing/common/BitArray;)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object p2

    .line 129
    :goto_9c
    new-instance v1, Lcom/google/zxing/common/BitArray;

    invoke-direct {v1}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 130
    invoke-virtual {v1, v5}, Lcom/google/zxing/common/BitArray;->appendBitArray(Lcom/google/zxing/common/BitArray;)V

    .line 132
    sget-object v2, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne v4, v2, :cond_ad

    invoke-virtual {v0}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result p0

    goto :goto_b1

    :cond_ad
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    .line 133
    :goto_b1
    invoke-static {p0, p2, v4, v1}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendLengthInfo(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;)V

    .line 135
    invoke-virtual {v1, v0}, Lcom/google/zxing/common/BitArray;->appendBitArray(Lcom/google/zxing/common/BitArray;)V

    .line 137
    invoke-virtual {p2, p1}, Lcom/google/zxing/qrcode/decoder/Version;->getECBlocksForLevel(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-result-object p0

    .line 138
    invoke-virtual {p2}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getTotalECCodewords()I

    move-result v2

    sub-int/2addr v0, v2

    .line 141
    invoke-static {v0, v1}, Lcom/google/zxing/qrcode/encoder/Encoder;->terminateBits(ILcom/google/zxing/common/BitArray;)V

    .line 144
    nop

    .line 145
    invoke-virtual {p2}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v2

    .line 147
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getNumBlocks()I

    move-result p0

    .line 144
    invoke-static {v1, v2, v0, p0}, Lcom/google/zxing/qrcode/encoder/Encoder;->interleaveWithECBytes(Lcom/google/zxing/common/BitArray;III)Lcom/google/zxing/common/BitArray;

    move-result-object p0

    .line 149
    new-instance v0, Lcom/google/zxing/qrcode/encoder/QRCode;

    invoke-direct {v0}, Lcom/google/zxing/qrcode/encoder/QRCode;-><init>()V

    .line 151
    invoke-virtual {v0, p1}, Lcom/google/zxing/qrcode/encoder/QRCode;->setECLevel(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)V

    .line 152
    invoke-virtual {v0, v4}, Lcom/google/zxing/qrcode/encoder/QRCode;->setMode(Lcom/google/zxing/qrcode/decoder/Mode;)V

    .line 153
    invoke-virtual {v0, p2}, Lcom/google/zxing/qrcode/encoder/QRCode;->setVersion(Lcom/google/zxing/qrcode/decoder/Version;)V

    .line 156
    invoke-virtual {p2}, Lcom/google/zxing/qrcode/decoder/Version;->getDimensionForVersion()I

    move-result v1

    .line 157
    new-instance v2, Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    invoke-direct {v2, v1, v1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;-><init>(II)V

    .line 158
    invoke-static {p0, p1, p2, v2}, Lcom/google/zxing/qrcode/encoder/Encoder;->chooseMaskPattern(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v1

    .line 159
    invoke-virtual {v0, v1}, Lcom/google/zxing/qrcode/encoder/QRCode;->setMaskPattern(I)V

    .line 162
    invoke-static {p0, p1, p2, v1, v2}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->buildMatrix(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 163
    invoke-virtual {v0, v2}, Lcom/google/zxing/qrcode/encoder/QRCode;->setMatrix(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 165
    return-object v0
.end method

.method static generateECBytes([BI)[B
    .registers 7
    .param p0, "dataBytes"    # [B
    .param p1, "numEcBytesInBlock"    # I

    .line 466
    array-length v0, p0

    const/4 v1, 0x0

    .line 467
    .local v1, "numDataBytes":I
    move v1, v0

    add-int/2addr v0, p1

    new-array v0, v0, [I

    .line 468
    .local v0, "toEncode":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v1, :cond_12

    .line 469
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    aput v3, v0, v2

    .line 468
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 471
    .end local v2    # "i":I
    :cond_12
    new-instance v2, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;

    sget-object v3, Lcom/google/zxing/common/reedsolomon/GenericGF;->QR_CODE_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v2, v3}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    invoke-virtual {v2, v0, p1}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->encode([II)V

    .line 473
    new-array v2, p1, [B

    .line 474
    .local v2, "ecBytes":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1f
    if-ge v3, p1, :cond_2b

    .line 475
    add-int v4, v1, v3

    aget v4, v0, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 474
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 477
    .end local v3    # "i":I
    :cond_2b
    return-object v2
.end method

.method static getAlphanumericCode(I)I
    .registers 2
    .param p0, "code"    # I

    .line 200
    sget-object v0, Lcom/google/zxing/qrcode/encoder/Encoder;->ALPHANUMERIC_TABLE:[I

    array-length v0, v0

    if-ge p0, v0, :cond_a

    .line 201
    sget-object v0, Lcom/google/zxing/qrcode/encoder/Encoder;->ALPHANUMERIC_TABLE:[I

    aget v0, v0, p0

    return v0

    .line 203
    :cond_a
    const/4 v0, -0x1

    return v0
.end method

.method static getNumDataBytesAndNumECBytesForBlockID(IIII[I[I)V
    .registers 16
    .param p0, "numTotalBytes"    # I
    .param p1, "numDataBytes"    # I
    .param p2, "numRSBlocks"    # I
    .param p3, "blockID"    # I
    .param p4, "numDataBytesInBlock"    # [I
    .param p5, "numECBytesInBlock"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 347
    if-ge p3, p2, :cond_4c

    .line 351
    rem-int v0, p0, p2

    .line 353
    .local v0, "numRsBlocksInGroup2":I
    sub-int v1, p2, v0

    .line 355
    .local v1, "numRsBlocksInGroup1":I
    div-int v2, p0, p2

    const/4 v3, 0x0

    move v4, v3

    .line 357
    .local v4, "numTotalBytesInGroup1":I
    move v4, v2

    add-int/lit8 v2, v2, 0x1

    .line 359
    .local v2, "numTotalBytesInGroup2":I
    div-int v5, p1, p2

    .line 361
    .local v3, "numDataBytesInGroup1":I
    move v3, v5

    add-int/lit8 v5, v5, 0x1

    .line 363
    .local v5, "numDataBytesInGroup2":I
    sub-int v6, v4, v3

    .line 365
    .local v6, "numEcBytesInGroup1":I
    sub-int v7, v2, v5

    .line 368
    .local v7, "numEcBytesInGroup2":I
    if-ne v6, v7, :cond_44

    .line 372
    add-int v8, v1, v0

    if-ne p2, v8, :cond_3c

    .line 376
    add-int v8, v3, v6

    mul-int v8, v8, v1

    add-int v9, v5, v7

    mul-int v9, v9, v0

    add-int/2addr v8, v9

    if-ne p0, v8, :cond_34

    .line 384
    const/4 v8, 0x0

    if-ge p3, v1, :cond_2f

    .line 385
    aput v3, p4, v8

    .line 386
    aput v6, p5, v8

    return-void

    .line 388
    :cond_2f
    aput v5, p4, v8

    .line 389
    aput v7, p5, v8

    .line 391
    return-void

    .line 381
    :cond_34
    new-instance v8, Lcom/google/zxing/WriterException;

    const-string v9, "Total bytes mismatch"

    invoke-direct {v8, v9}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 373
    :cond_3c
    new-instance v8, Lcom/google/zxing/WriterException;

    const-string v9, "RS blocks mismatch"

    invoke-direct {v8, v9}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 369
    :cond_44
    new-instance v8, Lcom/google/zxing/WriterException;

    const-string v9, "EC bytes mismatch"

    invoke-direct {v8, v9}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 348
    .end local v0    # "numRsBlocksInGroup2":I
    .end local v1    # "numRsBlocksInGroup1":I
    .end local v2    # "numTotalBytesInGroup2":I
    .end local v3    # "numDataBytesInGroup1":I
    .end local v4    # "numTotalBytesInGroup1":I
    .end local v5    # "numDataBytesInGroup2":I
    .end local v6    # "numEcBytesInGroup1":I
    .end local v7    # "numEcBytesInGroup2":I
    :cond_4c
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Block ID too large"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static interleaveWithECBytes(Lcom/google/zxing/common/BitArray;III)Lcom/google/zxing/common/BitArray;
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 403
    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v0

    if-ne v0, v7, :cond_dc

    .line 409
    nop

    .line 410
    nop

    .line 411
    nop

    .line 414
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 416
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_19
    if-ge v11, v8, :cond_55

    .line 417
    const/4 v0, 0x1

    new-array v15, v0, [I

    .line 418
    new-array v5, v0, [I

    .line 419
    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move v3, v11

    move-object v4, v15

    move-object/from16 v16, v5

    invoke-static/range {v0 .. v5}, Lcom/google/zxing/qrcode/encoder/Encoder;->getNumDataBytesAndNumECBytesForBlockID(IIII[I[I)V

    .line 423
    aget v0, v15, v10

    .line 424
    new-array v1, v0, [B

    .line 425
    shl-int/lit8 v2, v12, 0x3

    move-object/from16 v3, p0

    invoke-virtual {v3, v2, v1, v10, v0}, Lcom/google/zxing/common/BitArray;->toBytes(I[BII)V

    .line 426
    aget v2, v16, v10

    invoke-static {v1, v2}, Lcom/google/zxing/qrcode/encoder/Encoder;->generateECBytes([BI)[B

    move-result-object v2

    .line 427
    new-instance v4, Lcom/google/zxing/qrcode/encoder/BlockPair;

    invoke-direct {v4, v1, v2}, Lcom/google/zxing/qrcode/encoder/BlockPair;-><init>([B[B)V

    invoke-interface {v9, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 429
    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 430
    array-length v0, v2

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 431
    aget v0, v15, v10

    add-int/2addr v12, v0

    .line 416
    add-int/lit8 v11, v11, 0x1

    goto :goto_19

    .line 433
    :cond_55
    if-ne v7, v12, :cond_d4

    .line 437
    new-instance v0, Lcom/google/zxing/common/BitArray;

    invoke-direct {v0}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 440
    const/4 v1, 0x0

    :goto_5d
    const/16 v2, 0x8

    if-ge v1, v13, :cond_81

    .line 441
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_65
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/qrcode/encoder/BlockPair;

    .line 442
    invoke-virtual {v4}, Lcom/google/zxing/qrcode/encoder/BlockPair;->getDataBytes()[B

    move-result-object v4

    .line 443
    array-length v5, v4

    if-ge v1, v5, :cond_7d

    .line 444
    aget-byte v4, v4, v1

    invoke-virtual {v0, v4, v2}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 446
    :cond_7d
    goto :goto_65

    .line 440
    :cond_7e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5d

    .line 449
    :cond_81
    nop

    :goto_82
    if-ge v10, v14, :cond_a4

    .line 450
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_88
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/qrcode/encoder/BlockPair;

    .line 451
    invoke-virtual {v3}, Lcom/google/zxing/qrcode/encoder/BlockPair;->getErrorCorrectionBytes()[B

    move-result-object v3

    .line 452
    array-length v4, v3

    if-ge v10, v4, :cond_a0

    .line 453
    aget-byte v3, v3, v10

    invoke-virtual {v0, v3, v2}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 455
    :cond_a0
    goto :goto_88

    .line 449
    :cond_a1
    add-int/lit8 v10, v10, 0x1

    goto :goto_82

    .line 457
    :cond_a4
    invoke-virtual {v0}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v1

    if-ne v6, v1, :cond_ab

    .line 462
    return-object v0

    .line 458
    :cond_ab
    new-instance v1, Lcom/google/zxing/WriterException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interleaving error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 459
    invoke-virtual {v0}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " differ."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 434
    :cond_d4
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Data bytes does not match offset"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 404
    :cond_dc
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Number of bits and data bytes does not match"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isOnlyDoubleByteKanji(Ljava/lang/String;)Z
    .registers 6

    .line 243
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "Shift_JIS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_7} :catch_2c

    .line 246
    nop

    .line 247
    array-length v1, p0

    .line 248
    rem-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_e

    .line 249
    return v0

    .line 251
    :cond_e
    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_2a

    .line 252
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    .line 253
    const/16 v4, 0x81

    if-lt v3, v4, :cond_1d

    const/16 v4, 0x9f

    if-le v3, v4, :cond_26

    :cond_1d
    const/16 v4, 0xe0

    if-lt v3, v4, :cond_29

    const/16 v4, 0xeb

    if-le v3, v4, :cond_26

    goto :goto_29

    .line 251
    :cond_26
    add-int/lit8 v2, v2, 0x2

    goto :goto_f

    .line 254
    :cond_29
    :goto_29
    return v0

    .line 257
    :cond_2a
    const/4 p0, 0x1

    return p0

    .line 244
    :catch_2c
    move-exception p0

    .line 245
    return v0
.end method

.method private static recommendVersion(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;Lcom/google/zxing/common/BitArray;)Lcom/google/zxing/qrcode/decoder/Version;
    .registers 6
    .param p0, "ecLevel"    # Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .param p1, "mode"    # Lcom/google/zxing/qrcode/decoder/Mode;
    .param p2, "headerBits"    # Lcom/google/zxing/common/BitArray;
    .param p3, "dataBits"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 180
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v0

    invoke-static {p1, p2, p3, v0}, Lcom/google/zxing/qrcode/encoder/Encoder;->calculateBitsNeeded(Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v0

    .line 181
    invoke-static {v0, p0}, Lcom/google/zxing/qrcode/encoder/Encoder;->chooseVersion(ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v0

    .line 184
    .local v0, "provisionalVersion":Lcom/google/zxing/qrcode/decoder/Version;
    invoke-static {p1, p2, p3, v0}, Lcom/google/zxing/qrcode/encoder/Encoder;->calculateBitsNeeded(Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v1

    .line 185
    invoke-static {v1, p0}, Lcom/google/zxing/qrcode/encoder/Encoder;->chooseVersion(ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v1

    return-object v1
.end method

.method static terminateBits(ILcom/google/zxing/common/BitArray;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 310
    shl-int/lit8 v0, p0, 0x3

    .line 311
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    if-gt v1, v0, :cond_52

    .line 315
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_a
    const/4 v3, 0x4

    if-ge v2, v3, :cond_19

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    if-ge v3, v0, :cond_19

    .line 316
    invoke-virtual {p1, v1}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    .line 315
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 320
    :cond_19
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    and-int/lit8 v2, v2, 0x7

    .line 321
    const/16 v3, 0x8

    if-lez v2, :cond_2c

    .line 322
    nop

    :goto_24
    if-ge v2, v3, :cond_2c

    .line 323
    invoke-virtual {p1, v1}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    .line 322
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 327
    :cond_2c
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v2

    sub-int/2addr p0, v2

    .line 328
    nop

    :goto_32
    if-ge v1, p0, :cond_43

    .line 329
    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_3b

    const/16 v2, 0xec

    goto :goto_3d

    :cond_3b
    const/16 v2, 0x11

    :goto_3d
    invoke-virtual {p1, v2, v3}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 328
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 331
    :cond_43
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result p0

    if-ne p0, v0, :cond_4a

    .line 334
    return-void

    .line 332
    :cond_4a
    new-instance p0, Lcom/google/zxing/WriterException;

    const-string p1, "Bits size does not equal capacity"

    invoke-direct {p0, p1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 312
    :cond_52
    new-instance p0, Lcom/google/zxing/WriterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "data bits cannot fit in the QR Code"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " > "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static willFit(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Z
    .registers 8
    .param p0, "numInputBits"    # I
    .param p1, "version"    # Lcom/google/zxing/qrcode/decoder/Version;
    .param p2, "ecLevel"    # Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 296
    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v0

    .line 298
    .local v0, "numBytes":I
    invoke-virtual {p1, p2}, Lcom/google/zxing/qrcode/decoder/Version;->getECBlocksForLevel(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-result-object v1

    .line 299
    invoke-virtual {v1}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getTotalECCodewords()I

    move-result v1

    .line 301
    .local v1, "numEcBytes":I
    sub-int v2, v0, v1

    .line 302
    .local v2, "numDataBytes":I
    add-int/lit8 v3, p0, 0x7

    div-int/lit8 v3, v3, 0x8

    .line 303
    .local v3, "totalInputBytes":I
    if-lt v2, v3, :cond_16

    const/4 v4, 0x1

    return v4

    :cond_16
    const/4 v4, 0x0

    return v4
.end method
