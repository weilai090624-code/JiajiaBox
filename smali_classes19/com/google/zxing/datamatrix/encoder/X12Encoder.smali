.class final Lcom/google/zxing/datamatrix/encoder/X12Encoder;
.super Lcom/google/zxing/datamatrix/encoder/C40Encoder;
.source "X12Encoder.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Lcom/google/zxing/datamatrix/encoder/EncoderContext;)V
    .registers 7
    .param p1, "context"    # Lcom/google/zxing/datamatrix/encoder/EncoderContext;

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .local v0, "buffer":Ljava/lang/StringBuilder;
    :goto_5
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 31
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCurrentChar()C

    move-result v1

    .line 32
    .local v1, "c":C
    iget v2, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 34
    invoke-virtual {p0, v1, v0}, Lcom/google/zxing/datamatrix/encoder/X12Encoder;->encodeChar(CLjava/lang/StringBuilder;)I

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 37
    rem-int/lit8 v2, v2, 0x3

    if-nez v2, :cond_3c

    .line 38
    invoke-static {p1, v0}, Lcom/google/zxing/datamatrix/encoder/X12Encoder;->writeNextTriplet(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;)V

    .line 40
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget v3, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/X12Encoder;->getEncodingMode()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->lookAheadTest(Ljava/lang/CharSequence;II)I

    move-result v2

    .line 41
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/X12Encoder;->getEncodingMode()I

    move-result v3

    if-eq v2, v3, :cond_3c

    .line 43
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V

    .line 44
    goto :goto_3d

    .line 47
    .end local v1    # "c":C
    :cond_3c
    goto :goto_5

    .line 48
    :cond_3d
    :goto_3d
    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/datamatrix/encoder/X12Encoder;->handleEOD(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;)V

    .line 49
    return-void
.end method

.method encodeChar(CLjava/lang/StringBuilder;)I
    .registers 5
    .param p1, "c"    # C
    .param p2, "sb"    # Ljava/lang/StringBuilder;

    .line 53
    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_3e

    .line 67
    const/16 v1, 0x30

    if-lt p1, v1, :cond_28

    const/16 v1, 0x39

    if-gt p1, v1, :cond_28

    .line 68
    add-int/lit8 v1, p1, -0x30

    add-int/lit8 v1, v1, 0x4

    int-to-char v1, v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3c

    .line 61
    :sswitch_15
    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    goto :goto_3c

    .line 58
    :sswitch_1a
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    goto :goto_3c

    .line 64
    :sswitch_1e
    const/4 v1, 0x3

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    goto :goto_3c

    .line 55
    :sswitch_23
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    goto :goto_3c

    .line 69
    :cond_28
    const/16 v1, 0x41

    if-lt p1, v1, :cond_39

    const/16 v1, 0x5a

    if-gt p1, v1, :cond_39

    .line 70
    add-int/lit8 v1, p1, -0x41

    add-int/lit8 v1, v1, 0xe

    int-to-char v1, v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3c

    .line 72
    :cond_39
    invoke-static {p1}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->illegalCharacter(C)V

    .line 76
    :goto_3c
    return v0

    nop

    :sswitch_data_3e
    .sparse-switch
        0xd -> :sswitch_23
        0x20 -> :sswitch_1e
        0x2a -> :sswitch_1a
        0x3e -> :sswitch_15
    .end sparse-switch
.end method

.method public getEncodingMode()I
    .registers 2

    .line 23
    const/4 v0, 0x3

    return v0
.end method

.method handleEOD(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;)V
    .registers 7
    .param p1, "context"    # Lcom/google/zxing/datamatrix/encoder/EncoderContext;
    .param p2, "buffer"    # Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->updateSymbolInfo()V

    .line 82
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getSymbolInfo()Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataCapacity()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    move-result v1

    sub-int/2addr v0, v1

    .line 83
    .local v0, "available":I
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 84
    .local v1, "count":I
    iget v2, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    sub-int/2addr v2, v1

    iput v2, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 85
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getRemainingCharacters()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_28

    if-gt v0, v3, :cond_28

    .line 86
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getRemainingCharacters()I

    move-result v2

    if-eq v2, v0, :cond_2d

    .line 87
    :cond_28
    const/16 v2, 0xfe

    invoke-virtual {p1, v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 89
    :cond_2d
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getNewEncoding()I

    move-result v2

    if-gez v2, :cond_37

    .line 90
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V

    .line 92
    :cond_37
    return-void
.end method
