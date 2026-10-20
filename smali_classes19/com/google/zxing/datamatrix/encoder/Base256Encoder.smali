.class final Lcom/google/zxing/datamatrix/encoder/Base256Encoder;
.super Ljava/lang/Object;
.source "Base256Encoder.java"

# interfaces
.implements Lcom/google/zxing/datamatrix/encoder/Encoder;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static randomize255State(CI)C
    .locals 4
    .param p0, "ch"    # C
    .param p1, "codewordPosition"    # I

    .line 66
    mul-int/lit16 v0, p1, 0x95

    const/16 v1, 0xff

    rem-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 67
    .local v0, "pseudoRandom":I
    add-int v2, p0, v0

    const/4 v3, 0x0

    .line 68
    .local v3, "tempVariable":I
    move v3, v2

    if-gt v2, v1, :cond_0

    .line 69
    int-to-char v1, v3

    return v1

    .line 71
    :cond_0
    add-int/lit16 v1, v3, -0x100

    int-to-char v1, v1

    return v1
.end method


# virtual methods
.method public encode(Lcom/google/zxing/datamatrix/encoder/EncoderContext;)V
    .locals 9
    .param p1, "context"    # Lcom/google/zxing/datamatrix/encoder/EncoderContext;

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 29
    .local v1, "buffer":Ljava/lang/StringBuilder;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    :goto_0
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 31
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCurrentChar()C

    move-result v0

    .line 32
    .local v0, "c":C
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    iget v4, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    add-int/2addr v4, v3

    iput v4, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 36
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getMessage()Ljava/lang/String;

    move-result-object v4

    iget v5, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/Base256Encoder;->getEncodingMode()I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->lookAheadTest(Ljava/lang/CharSequence;II)I

    move-result v4

    .line 37
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/Base256Encoder;->getEncodingMode()I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 39
    invoke-virtual {p1, v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V

    .line 40
    goto :goto_1

    .line 42
    .end local v0    # "c":C
    :cond_0
    goto :goto_0

    .line 43
    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v3

    .line 45
    .local v0, "dataCount":I
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    move-result v4

    add-int/2addr v4, v0

    add-int/2addr v4, v3

    .line 46
    .local v4, "currentSize":I
    invoke-virtual {p1, v4}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->updateSymbolInfo(I)V

    .line 47
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getSymbolInfo()Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataCapacity()I

    move-result v5

    sub-int/2addr v5, v4

    if-lez v5, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    .line 48
    .local v5, "mustPad":Z
    :goto_2
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result v6

    if-nez v6, :cond_3

    if-eqz v5, :cond_5

    .line 49
    :cond_3
    const/16 v6, 0xf9

    if-gt v0, v6, :cond_4

    .line 50
    int-to-char v6, v0

    invoke-virtual {v1, v2, v6}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_3

    .line 51
    :cond_4
    const/16 v7, 0x613

    if-gt v0, v7, :cond_7

    .line 52
    div-int/lit16 v7, v0, 0xfa

    add-int/2addr v7, v6

    int-to-char v6, v7

    invoke-virtual {v1, v2, v6}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 53
    rem-int/lit16 v2, v0, 0xfa

    int-to-char v2, v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 59
    :cond_5
    :goto_3
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    .local v6, "c":I
    :goto_4
    if-ge v2, v6, :cond_6

    .line 60
    nop

    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    move-result v8

    add-int/2addr v8, v3

    .line 60
    invoke-static {v7, v8}, Lcom/google/zxing/datamatrix/encoder/Base256Encoder;->randomize255State(CI)C

    move-result v7

    invoke-virtual {p1, v7}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 59
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 63
    .end local v2    # "i":I
    .end local v6    # "c":I
    :cond_6
    return-void

    .line 55
    :cond_7
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Message length not in valid ranges: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getEncodingMode()I
    .locals 1

    .line 23
    const/4 v0, 0x5

    return v0
.end method
