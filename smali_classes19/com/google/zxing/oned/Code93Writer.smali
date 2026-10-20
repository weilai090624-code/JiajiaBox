.class public Lcom/google/zxing/oned/Code93Writer;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "Code93Writer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    return-void
.end method

.method private static appendPattern([ZI[I)I
    .locals 6
    .param p0, "target"    # [Z
    .param p1, "pos"    # I
    .param p2, "pattern"    # [I

    .line 109
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p2, v2

    .line 110
    .local v3, "bit":I
    add-int/lit8 v4, p1, 0x1

    .end local p1    # "pos":I
    .local v4, "pos":I
    if-eqz v3, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    aput-boolean v5, p0, p1

    .line 109
    .end local v3    # "bit":I
    add-int/lit8 v2, v2, 0x1

    move p1, v4

    goto :goto_0

    .line 112
    .end local v4    # "pos":I
    .restart local p1    # "pos":I
    :cond_1
    const/16 v0, 0x9

    return v0
.end method

.method protected static appendPattern([ZI[IZ)I
    .locals 1
    .param p0, "target"    # [Z
    .param p1, "pos"    # I
    .param p2, "pattern"    # [I
    .param p3, "startColor"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 105
    invoke-static {p0, p1, p2}, Lcom/google/zxing/oned/Code93Writer;->appendPattern([ZI[I)I

    move-result v0

    return v0
.end method

.method private static computeChecksumIndex(Ljava/lang/String;I)I
    .locals 5
    .param p0, "contents"    # Ljava/lang/String;
    .param p1, "maxWeight"    # I

    .line 116
    const/4 v0, 0x1

    .line 117
    .local v0, "weight":I
    const/4 v1, 0x0

    .line 119
    .local v1, "total":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 120
    const-string v3, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 121
    .local v3, "indexInString":I
    mul-int v4, v3, v0

    add-int/2addr v1, v4

    .line 122
    add-int/lit8 v0, v0, 0x1

    if-le v0, p1, :cond_0

    .line 123
    const/4 v0, 0x1

    .line 119
    .end local v3    # "indexInString":I
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 126
    .end local v2    # "i":I
    :cond_1
    rem-int/lit8 v2, v1, 0x2f

    return v2
.end method

.method private static toIntArray(I[I)V
    .locals 3
    .param p0, "a"    # I
    .param p1, "toReturn"    # [I

    .line 89
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_1

    .line 90
    rsub-int/lit8 v1, v0, 0x8

    const/4 v2, 0x1

    shl-int v1, v2, v1

    and-int/2addr v1, p0

    .line 91
    .local v1, "temp":I
    if-nez v1, :cond_0

    const/4 v2, 0x0

    :cond_0
    aput v2, p1, v0

    .line 89
    .end local v1    # "temp":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    .end local v0    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .locals 3
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

    .line 35
    .local p5, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;*>;"
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->CODE_93:Lcom/google/zxing/BarcodeFormat;

    if-ne p2, v0, :cond_0

    .line 38
    invoke-super/range {p0 .. p5}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only encode CODE_93, but got "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Ljava/lang/String;)[Z
    .locals 10
    .param p1, "contents"    # Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    .line 44
    .local v1, "length":I
    move v1, v0

    const/16 v2, 0x50

    if-gt v0, v2, :cond_1

    .line 49
    const/16 v0, 0x9

    new-array v2, v0, [I

    .line 52
    .local v2, "widths":[I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x2

    mul-int/lit8 v3, v3, 0x9

    const/4 v0, 0x1

    add-int/2addr v3, v0

    .line 55
    .local v3, "codeWidth":I
    sget-object v4, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    const/16 v5, 0x2f

    aget v4, v4, v5

    invoke-static {v4, v2}, Lcom/google/zxing/oned/Code93Writer;->toIntArray(I[I)V

    .line 57
    new-array v4, v3, [Z

    const/4 v6, 0x0

    .line 58
    .local v6, "result":[Z
    move-object v6, v4

    const/4 v7, 0x0

    invoke-static {v4, v7, v2}, Lcom/google/zxing/oned/Code93Writer;->appendPattern([ZI[I)I

    move-result v4

    .line 60
    .local v4, "pos":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    const-string v8, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    if-ge v7, v1, :cond_0

    .line 61
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 62
    .local v8, "indexInString":I
    sget-object v9, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    aget v9, v9, v8

    invoke-static {v9, v2}, Lcom/google/zxing/oned/Code93Writer;->toIntArray(I[I)V

    .line 63
    invoke-static {v6, v4, v2}, Lcom/google/zxing/oned/Code93Writer;->appendPattern([ZI[I)I

    move-result v9

    add-int/2addr v4, v9

    .line 60
    .end local v8    # "indexInString":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 67
    .end local v7    # "i":I
    :cond_0
    const/16 v7, 0x14

    invoke-static {p1, v7}, Lcom/google/zxing/oned/Code93Writer;->computeChecksumIndex(Ljava/lang/String;I)I

    move-result v7

    .line 68
    .local v7, "check1":I
    sget-object v9, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    aget v9, v9, v7

    invoke-static {v9, v2}, Lcom/google/zxing/oned/Code93Writer;->toIntArray(I[I)V

    .line 69
    invoke-static {v6, v4, v2}, Lcom/google/zxing/oned/Code93Writer;->appendPattern([ZI[I)I

    move-result v9

    add-int/2addr v4, v9

    .line 72
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 74
    const/16 v9, 0xf

    invoke-static {v8, v9}, Lcom/google/zxing/oned/Code93Writer;->computeChecksumIndex(Ljava/lang/String;I)I

    move-result v8

    .line 75
    .local v8, "check2":I
    sget-object v9, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    aget v9, v9, v8

    invoke-static {v9, v2}, Lcom/google/zxing/oned/Code93Writer;->toIntArray(I[I)V

    .line 76
    invoke-static {v6, v4, v2}, Lcom/google/zxing/oned/Code93Writer;->appendPattern([ZI[I)I

    move-result v9

    add-int/2addr v4, v9

    .line 79
    sget-object v9, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    aget v5, v9, v5

    invoke-static {v5, v2}, Lcom/google/zxing/oned/Code93Writer;->toIntArray(I[I)V

    .line 80
    invoke-static {v6, v4, v2}, Lcom/google/zxing/oned/Code93Writer;->appendPattern([ZI[I)I

    move-result v5

    add-int/2addr v4, v5

    .line 83
    aput-boolean v0, v6, v4

    .line 85
    return-object v6

    .line 45
    .end local v2    # "widths":[I
    .end local v3    # "codeWidth":I
    .end local v4    # "pos":I
    .end local v6    # "result":[Z
    .end local v7    # "check1":I
    .end local v8    # "check2":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Requested contents should be less than 80 digits long, but got "

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
