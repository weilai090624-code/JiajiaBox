.class Lcom/google/zxing/datamatrix/encoder/C40Encoder;
.super Ljava/lang/Object;
.source "C40Encoder.java"

# interfaces
.implements Lcom/google/zxing/datamatrix/encoder/Encoder;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private backtrackOneCharacter(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;I)I
    .registers 7
    .param p1, "context"    # Lcom/google/zxing/datamatrix/encoder/EncoderContext;
    .param p2, "buffer"    # Ljava/lang/StringBuilder;
    .param p3, "removed"    # Ljava/lang/StringBuilder;
    .param p4, "lastCharSize"    # I

    .line 70
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 71
    .local v0, "count":I
    sub-int v1, v0, p4

    invoke-virtual {p2, v1, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 72
    iget v1, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 73
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCurrentChar()C

    move-result v1

    .line 74
    .local v1, "c":C
    invoke-virtual {p0, v1, p3}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->encodeChar(CLjava/lang/StringBuilder;)I

    move-result p4

    .line 75
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->resetSymbolInfo()V

    .line 76
    return p4
.end method

.method private static encodeToCodewords(Ljava/lang/CharSequence;I)Ljava/lang/String;
    .registers 12
    .param p0, "sb"    # Ljava/lang/CharSequence;
    .param p1, "startPos"    # I

    .line 173
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 174
    .local v0, "c1":C
    add-int/lit8 v1, p1, 0x1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 175
    .local v1, "c2":C
    add-int/lit8 v2, p1, 0x2

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 176
    .local v2, "c3":C
    mul-int/lit16 v3, v0, 0x640

    mul-int/lit8 v4, v1, 0x28

    add-int/2addr v3, v4

    add-int/2addr v3, v2

    const/4 v4, 0x1

    add-int/2addr v3, v4

    const/4 v5, 0x0

    .line 177
    .local v5, "v":I
    move v5, v3

    div-int/lit16 v3, v3, 0x100

    int-to-char v3, v3

    .line 178
    .local v3, "cw1":C
    rem-int/lit16 v6, v5, 0x100

    int-to-char v6, v6

    .line 179
    .local v6, "cw2":C
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x2

    new-array v8, v8, [C

    const/4 v9, 0x0

    aput-char v3, v8, v9

    aput-char v6, v8, v4

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([C)V

    return-object v7
.end method

.method static writeNextTriplet(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;)V
    .registers 4
    .param p0, "context"    # Lcom/google/zxing/datamatrix/encoder/EncoderContext;
    .param p1, "buffer"    # Ljava/lang/StringBuilder;

    .line 80
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->encodeToCodewords(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodewords(Ljava/lang/String;)V

    .line 81
    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 82
    return-void
.end method


# virtual methods
.method public encode(Lcom/google/zxing/datamatrix/encoder/EncoderContext;)V
    .registers 10

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    :goto_5
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 31
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCurrentChar()C

    move-result v1

    .line 32
    iget v2, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 34
    invoke-virtual {p0, v1, v0}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->encodeChar(CLjava/lang/StringBuilder;)I

    move-result v1

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v4, 0x3

    div-int/2addr v2, v4

    shl-int/2addr v2, v3

    .line 38
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    move-result v5

    add-int/2addr v5, v2

    .line 39
    invoke-virtual {p1, v5}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->updateSymbolInfo(I)V

    .line 40
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getSymbolInfo()Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataCapacity()I

    move-result v2

    sub-int/2addr v2, v5

    .line 42
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result v5

    if-nez v5, :cond_5e

    .line 44
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    rem-int/2addr v6, v4

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4c

    if-lt v2, v7, :cond_48

    if-le v2, v7, :cond_4c

    .line 46
    :cond_48
    invoke-direct {p0, p1, v0, v5, v1}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->backtrackOneCharacter(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;I)I

    move-result v1

    .line 48
    :cond_4c
    :goto_4c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    rem-int/2addr v6, v4

    if-ne v6, v3, :cond_7f

    if-gt v1, v4, :cond_57

    if-ne v2, v3, :cond_59

    :cond_57
    if-le v1, v4, :cond_7f

    .line 50
    :cond_59
    invoke-direct {p0, p1, v0, v5, v1}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->backtrackOneCharacter(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;I)I

    move-result v1

    goto :goto_4c

    .line 55
    :cond_5e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 56
    rem-int/2addr v1, v4

    if-nez v1, :cond_7e

    .line 57
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->getEncodingMode()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->lookAheadTest(Ljava/lang/CharSequence;II)I

    move-result v1

    .line 58
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->getEncodingMode()I

    move-result v2

    if-eq v1, v2, :cond_7e

    .line 60
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V

    .line 61
    goto :goto_7f

    .line 64
    :cond_7e
    goto :goto_5

    .line 65
    :cond_7f
    :goto_7f
    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->handleEOD(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;)V

    .line 66
    return-void
.end method

.method encodeChar(CLjava/lang/StringBuilder;)I
    .registers 6
    .param p1, "c"    # C
    .param p2, "sb"    # Ljava/lang/StringBuilder;

    .line 129
    const/4 v0, 0x1

    const/16 v1, 0x20

    if-ne p1, v1, :cond_a

    .line 130
    const/4 v1, 0x3

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 131
    return v0

    .line 133
    :cond_a
    const/16 v2, 0x30

    if-lt p1, v2, :cond_1b

    const/16 v2, 0x39

    if-gt p1, v2, :cond_1b

    .line 134
    add-int/lit8 v1, p1, -0x30

    add-int/lit8 v1, v1, 0x4

    int-to-char v1, v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 135
    return v0

    .line 137
    :cond_1b
    const/16 v2, 0x41

    if-lt p1, v2, :cond_2c

    const/16 v2, 0x5a

    if-gt p1, v2, :cond_2c

    .line 138
    add-int/lit8 v1, p1, -0x41

    add-int/lit8 v1, v1, 0xe

    int-to-char v1, v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 139
    return v0

    .line 141
    :cond_2c
    const/4 v2, 0x2

    if-ge p1, v1, :cond_37

    .line 142
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 144
    return v2

    .line 146
    :cond_37
    const/16 v1, 0x21

    if-lt p1, v1, :cond_49

    const/16 v1, 0x2f

    if-gt p1, v1, :cond_49

    .line 147
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 148
    add-int/lit8 v0, p1, -0x21

    int-to-char v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 149
    return v2

    .line 151
    :cond_49
    const/16 v1, 0x3a

    if-lt p1, v1, :cond_5d

    const/16 v1, 0x40

    if-gt p1, v1, :cond_5d

    .line 152
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 153
    add-int/lit8 v0, p1, -0x3a

    add-int/lit8 v0, v0, 0xf

    int-to-char v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 154
    return v2

    .line 156
    :cond_5d
    const/16 v1, 0x5b

    if-lt p1, v1, :cond_71

    const/16 v1, 0x5f

    if-gt p1, v1, :cond_71

    .line 157
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 158
    add-int/lit8 v0, p1, -0x5b

    add-int/lit8 v0, v0, 0x16

    int-to-char v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 159
    return v2

    .line 161
    :cond_71
    const/16 v0, 0x60

    if-lt p1, v0, :cond_83

    const/16 v0, 0x7f

    if-gt p1, v0, :cond_83

    .line 162
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 163
    add-int/lit8 v0, p1, -0x60

    int-to-char v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 164
    return v2

    .line 166
    :cond_83
    const-string v0, "\u0001\u001e"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    add-int/lit8 v0, p1, -0x80

    int-to-char v0, v0

    invoke-virtual {p0, v0, p2}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->encodeChar(CLjava/lang/StringBuilder;)I

    move-result v0

    add-int/2addr v0, v2

    .line 169
    return v0
.end method

.method public getEncodingMode()I
    .registers 2

    .line 23
    const/4 v0, 0x1

    return v0
.end method

.method handleEOD(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;)V
    .registers 12
    .param p1, "context"    # Lcom/google/zxing/datamatrix/encoder/EncoderContext;
    .param p2, "buffer"    # Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x3

    div-int/2addr v0, v1

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    .line 92
    .local v0, "unwritten":I
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    rem-int/2addr v3, v1

    .line 94
    .local v3, "rest":I
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    move-result v4

    add-int/2addr v4, v0

    .line 95
    .local v4, "curCodewordCount":I
    invoke-virtual {p1, v4}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->updateSymbolInfo(I)V

    .line 96
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getSymbolInfo()Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataCapacity()I

    move-result v5

    sub-int/2addr v5, v4

    .line 98
    .local v5, "available":I
    const/4 v6, 0x2

    const/4 v7, 0x0

    const/16 v8, 0xfe

    if-ne v3, v6, :cond_3b

    .line 99
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    :goto_27
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lt v2, v1, :cond_31

    .line 101
    invoke-static {p1, p2}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->writeNextTriplet(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;)V

    goto :goto_27

    .line 103
    :cond_31
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 104
    invoke-virtual {p1, v8}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    goto :goto_6f

    .line 106
    :cond_3b
    if-ne v5, v2, :cond_58

    if-ne v3, v2, :cond_58

    .line 107
    :goto_3f
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lt v6, v1, :cond_49

    .line 108
    invoke-static {p1, p2}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->writeNextTriplet(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;)V

    goto :goto_3f

    .line 110
    :cond_49
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result v1

    if-eqz v1, :cond_52

    .line 111
    invoke-virtual {p1, v8}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 114
    :cond_52
    iget v1, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    sub-int/2addr v1, v2

    iput v1, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    goto :goto_6f

    .line 115
    :cond_58
    if-nez v3, :cond_73

    .line 116
    :goto_5a
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lt v2, v1, :cond_64

    .line 117
    invoke-static {p1, p2}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->writeNextTriplet(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;)V

    goto :goto_5a

    .line 119
    :cond_64
    if-gtz v5, :cond_6c

    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 120
    :cond_6c
    invoke-virtual {p1, v8}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 125
    :cond_6f
    :goto_6f
    invoke-virtual {p1, v7}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V

    .line 126
    return-void

    .line 123
    :cond_73
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected case. Please report!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
