.class final Lcom/google/zxing/datamatrix/encoder/EdifactEncoder;
.super Ljava/lang/Object;
.source "EdifactEncoder.java"

# interfaces
.implements Lcom/google/zxing/datamatrix/encoder/Encoder;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static encodeChar(CLjava/lang/StringBuilder;)V
    .registers 3
    .param p0, "c"    # C
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 109
    const/16 v0, 0x20

    if-lt p0, v0, :cond_c

    const/16 v0, 0x3f

    if-gt p0, v0, :cond_c

    .line 110
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    .line 111
    :cond_c
    const/16 v0, 0x40

    if-lt p0, v0, :cond_1b

    const/16 v0, 0x5e

    if-gt p0, v0, :cond_1b

    .line 112
    add-int/lit8 v0, p0, -0x40

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    .line 114
    :cond_1b
    invoke-static {p0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->illegalCharacter(C)V

    .line 116
    return-void
.end method

.method private static encodeToCodewords(Ljava/lang/CharSequence;I)Ljava/lang/String;
    .registers 15
    .param p0, "sb"    # Ljava/lang/CharSequence;
    .param p1, "startPos"    # I

    .line 119
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, p1

    const/4 v1, 0x0

    move v2, v1

    .line 120
    .local v2, "len":I
    move v2, v0

    if-eqz v0, :cond_5e

    .line 123
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 124
    .local v0, "c1":C
    const/4 v3, 0x0

    const/4 v4, 0x2

    if-lt v2, v4, :cond_19

    add-int/lit8 v5, p1, 0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    goto :goto_1a

    :cond_19
    const/4 v5, 0x0

    .line 125
    .local v5, "c2":C
    :goto_1a
    const/4 v6, 0x3

    if-lt v2, v6, :cond_24

    add-int/lit8 v7, p1, 0x2

    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    goto :goto_25

    :cond_24
    const/4 v7, 0x0

    .line 126
    .local v7, "c3":C
    :goto_25
    const/4 v8, 0x4

    if-lt v2, v8, :cond_2e

    add-int/lit8 v3, p1, 0x3

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 128
    .local v3, "c4":C
    :cond_2e
    shl-int/lit8 v8, v0, 0x12

    shl-int/lit8 v9, v5, 0xc

    add-int/2addr v8, v9

    shl-int/lit8 v9, v7, 0x6

    add-int/2addr v8, v9

    add-int/2addr v8, v3

    .line 129
    .local v1, "v":I
    move v1, v8

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    int-to-char v8, v8

    .line 130
    .local v8, "cw1":C
    shr-int/lit8 v9, v1, 0x8

    and-int/lit16 v9, v9, 0xff

    int-to-char v9, v9

    .line 131
    .local v9, "cw2":C
    and-int/lit16 v10, v1, 0xff

    int-to-char v10, v10

    .line 132
    .local v10, "cw3":C
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v12, 0x0

    .line 133
    .local v12, "res":Ljava/lang/StringBuilder;
    move-object v12, v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 134
    if-lt v2, v4, :cond_54

    .line 135
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 137
    :cond_54
    if-lt v2, v6, :cond_59

    .line 138
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 140
    :cond_59
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 121
    .end local v0    # "c1":C
    .end local v1    # "v":I
    .end local v3    # "c4":C
    .end local v5    # "c2":C
    .end local v7    # "c3":C
    .end local v8    # "cw1":C
    .end local v9    # "cw2":C
    .end local v10    # "cw3":C
    .end local v12    # "res":Ljava/lang/StringBuilder;
    :cond_5e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "StringBuilder must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static handleEOD(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/CharSequence;)V
    .registers 10
    .param p0, "context"    # Lcom/google/zxing/datamatrix/encoder/EncoderContext;
    .param p1, "buffer"    # Ljava/lang/CharSequence;

    .line 60
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_9b

    const/4 v2, 0x0

    move v3, v2

    .line 61
    .local v3, "count":I
    move v3, v1

    if-nez v1, :cond_e

    .line 104
    invoke-virtual {p0, v0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V

    .line 62
    return-void

    .line 64
    :cond_e
    const/4 v1, 0x2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_47

    .line 66
    :try_start_12
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->updateSymbolInfo()V

    .line 67
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getSymbolInfo()Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataCapacity()I

    move-result v5

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    move-result v6

    sub-int/2addr v5, v6

    .line 68
    .local v5, "available":I
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getRemainingCharacters()I

    move-result v6

    .line 70
    .local v2, "remaining":I
    move v2, v6

    if-le v6, v5, :cond_3f

    .line 71
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {p0, v6}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->updateSymbolInfo(I)V

    .line 72
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getSymbolInfo()Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataCapacity()I

    move-result v6

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    move-result v7
    :try_end_3d
    .catchall {:try_start_12 .. :try_end_3d} :catchall_9b

    sub-int v5, v6, v7

    .line 74
    :cond_3f
    if-gt v2, v5, :cond_47

    if-gt v5, v1, :cond_47

    .line 104
    invoke-virtual {p0, v0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V

    .line 75
    return-void

    .line 79
    .end local v2    # "remaining":I
    .end local v5    # "available":I
    :cond_47
    const/4 v2, 0x4

    if-gt v3, v2, :cond_93

    .line 82
    add-int/lit8 v2, v3, -0x1

    .line 83
    .local v2, "restChars":I
    :try_start_4c
    invoke-static {p1, v0}, Lcom/google/zxing/datamatrix/encoder/EdifactEncoder;->encodeToCodewords(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v5

    .line 84
    .local v5, "encoded":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result v6

    .line 85
    if-nez v6, :cond_59

    if-gt v2, v1, :cond_59

    goto :goto_5a

    :cond_59
    const/4 v4, 0x0

    .line 87
    .local v4, "restInAscii":Z
    :goto_5a
    if-gt v2, v1, :cond_81

    .line 88
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->updateSymbolInfo(I)V

    .line 89
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getSymbolInfo()Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataCapacity()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    move-result v6

    sub-int/2addr v1, v6

    .line 90
    const/4 v6, 0x3

    if-lt v1, v6, :cond_81

    .line 91
    const/4 v4, 0x0

    .line 92
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    move-result v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v1, v6

    invoke-virtual {p0, v1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->updateSymbolInfo(I)V

    .line 97
    :cond_81
    if-eqz v4, :cond_8c

    .line 98
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->resetSymbolInfo()V

    .line 99
    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    goto :goto_8f

    .line 101
    :cond_8c
    invoke-virtual {p0, v5}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodewords(Ljava/lang/String;)V
    :try_end_8f
    .catchall {:try_start_4c .. :try_end_8f} :catchall_9b

    .line 104
    .end local v2    # "restChars":I
    .end local v3    # "count":I
    .end local v4    # "restInAscii":Z
    .end local v5    # "encoded":Ljava/lang/String;
    :goto_8f
    invoke-virtual {p0, v0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V

    .line 105
    return-void

    .line 80
    .restart local v3    # "count":I
    :cond_93
    :try_start_93
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Count must not exceed 4"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "context":Lcom/google/zxing/datamatrix/encoder/EncoderContext;
    .end local p1    # "buffer":Ljava/lang/CharSequence;
    throw v1
    :try_end_9b
    .catchall {:try_start_93 .. :try_end_9b} :catchall_9b

    .line 104
    .end local v3    # "count":I
    .restart local p0    # "context":Lcom/google/zxing/datamatrix/encoder/EncoderContext;
    .restart local p1    # "buffer":Ljava/lang/CharSequence;
    :catchall_9b
    move-exception v1

    invoke-virtual {p0, v0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V

    .line 105
    throw v1
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

    if-eqz v1, :cond_43

    .line 31
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCurrentChar()C

    move-result v1

    .line 32
    invoke-static {v1, v0}, Lcom/google/zxing/datamatrix/encoder/EdifactEncoder;->encodeChar(CLjava/lang/StringBuilder;)V

    .line 33
    iget v1, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 36
    const/4 v2, 0x4

    if-lt v1, v2, :cond_42

    .line 37
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/zxing/datamatrix/encoder/EdifactEncoder;->encodeToCodewords(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodewords(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget v3, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/EdifactEncoder;->getEncodingMode()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->lookAheadTest(Ljava/lang/CharSequence;II)I

    move-result v2

    .line 41
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/EdifactEncoder;->getEncodingMode()I

    move-result v3

    if-eq v2, v3, :cond_42

    .line 43
    invoke-virtual {p1, v1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V

    .line 44
    goto :goto_43

    .line 47
    :cond_42
    goto :goto_5

    .line 48
    :cond_43
    :goto_43
    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    invoke-static {p1, v0}, Lcom/google/zxing/datamatrix/encoder/EdifactEncoder;->handleEOD(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/CharSequence;)V

    .line 50
    return-void
.end method

.method public getEncodingMode()I
    .registers 2

    .line 23
    const/4 v0, 0x4

    return v0
.end method
