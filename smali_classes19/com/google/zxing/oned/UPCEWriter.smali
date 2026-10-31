.class public final Lcom/google/zxing/oned/UPCEWriter;
.super Lcom/google/zxing/oned/UPCEANWriter;
.source "UPCEWriter.java"


# static fields
.field private static final CODE_WIDTH:I = 0x33


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Lcom/google/zxing/oned/UPCEANWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .registers 9
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "format"    # Lcom/google/zxing/BarcodeFormat;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/BitMatrix;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 44
    .local p5, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;*>;"
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    if-ne p2, v0, :cond_9

    .line 48
    invoke-super/range {p0 .. p5}, Lcom/google/zxing/oned/UPCEANWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0

    .line 45
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only encode UPC_E, but got "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Ljava/lang/String;)[Z
    .registers 11

    .line 53
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 54
    packed-switch v0, :pswitch_data_ac

    .line 75
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "Requested contents should be 8 digits long, but got "

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :pswitch_17
    :try_start_17
    invoke-static {p1}, Lcom/google/zxing/oned/UPCEANReader;->checkStandardUPCEANChecksum(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 72
    goto :goto_4a

    .line 68
    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Contents do not pass checksum"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_26
    .catch Lcom/google/zxing/FormatException; {:try_start_17 .. :try_end_26} :catch_26

    .line 70
    :catch_26
    move-exception p1

    .line 71
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Illegal contents"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 59
    :pswitch_2f
    :try_start_2f
    invoke-static {p1}, Lcom/google/zxing/oned/UPCEReader;->convertUPCEtoUPCA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/zxing/oned/UPCEANReader;->getStandardUPCEANChecksum(Ljava/lang/CharSequence;)I

    move-result v0
    :try_end_37
    .catch Lcom/google/zxing/FormatException; {:try_start_2f .. :try_end_37} :catch_a4

    .line 62
    nop

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 64
    nop

    .line 79
    :goto_4a
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 80
    const/4 v3, 0x1

    if-eqz v1, :cond_63

    if-ne v1, v3, :cond_5b

    goto :goto_63

    .line 81
    :cond_5b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Number system must be 0 or 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 84
    :cond_63
    :goto_63
    const/4 v4, 0x7

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 85
    sget-object v5, Lcom/google/zxing/oned/UPCEReader;->NUMSYS_AND_CHECK_DIGIT_PATTERNS:[[I

    aget-object v1, v5, v1

    aget v1, v1, v4

    .line 86
    const/16 v4, 0x33

    new-array v4, v4, [Z

    .line 89
    sget-object v5, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    invoke-static {v4, v0, v5, v3}, Lcom/google/zxing/oned/UPCEWriter;->appendPattern([ZI[IZ)I

    move-result v5

    add-int/2addr v5, v0

    .line 91
    const/4 v6, 0x1

    :goto_7e
    const/4 v7, 0x6

    if-gt v6, v7, :cond_9e

    .line 92
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    .line 93
    rsub-int/lit8 v8, v6, 0x6

    shr-int v8, v1, v8

    and-int/2addr v8, v3

    if-ne v8, v3, :cond_92

    .line 94
    add-int/lit8 v7, v7, 0xa

    .line 96
    :cond_92
    sget-object v8, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    aget-object v7, v8, v7

    invoke-static {v4, v5, v7, v0}, Lcom/google/zxing/oned/UPCEWriter;->appendPattern([ZI[IZ)I

    move-result v7

    add-int/2addr v5, v7

    .line 91
    add-int/lit8 v6, v6, 0x1

    goto :goto_7e

    .line 99
    :cond_9e
    sget-object p1, Lcom/google/zxing/oned/UPCEANReader;->END_PATTERN:[I

    invoke-static {v4, v5, p1, v0}, Lcom/google/zxing/oned/UPCEWriter;->appendPattern([ZI[IZ)I

    .line 101
    return-object v4

    .line 60
    :catch_a4
    move-exception p1

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    nop

    :pswitch_data_ac
    .packed-switch 0x7
        :pswitch_2f
        :pswitch_17
    .end packed-switch
.end method
