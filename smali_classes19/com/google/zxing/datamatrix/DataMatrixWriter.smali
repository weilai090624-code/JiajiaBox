.class public final Lcom/google/zxing/datamatrix/DataMatrixWriter;
.super Ljava/lang/Object;
.source "DataMatrixWriter.java"

# interfaces
.implements Lcom/google/zxing/Writer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertByteMatrixToBitMatrix(Lcom/google/zxing/qrcode/encoder/ByteMatrix;II)Lcom/google/zxing/common/BitMatrix;
    .locals 16
    .param p0, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .line 164
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v2

    .line 165
    .local v2, "matrixWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v3

    .line 166
    .local v3, "matrixHeight":I
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 167
    .local v4, "outputWidth":I
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 169
    .local v5, "outputHeight":I
    div-int v6, v4, v2

    div-int v7, v5, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 171
    .local v6, "multiple":I
    mul-int v7, v2, v6

    sub-int v7, v4, v7

    div-int/lit8 v7, v7, 0x2

    .line 172
    .local v7, "leftPadding":I
    mul-int v8, v3, v6

    sub-int v8, v5, v8

    div-int/lit8 v8, v8, 0x2

    .line 177
    .local v8, "topPadding":I
    if-lt v1, v3, :cond_1

    if-ge v0, v2, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    new-instance v9, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v9, v0, v1}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .local v9, "output":Lcom/google/zxing/common/BitMatrix;
    goto :goto_1

    .line 178
    .end local v9    # "output":Lcom/google/zxing/common/BitMatrix;
    :cond_1
    :goto_0
    const/4 v7, 0x0

    .line 179
    const/4 v8, 0x0

    .line 180
    new-instance v9, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v9, v2, v3}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 185
    .restart local v9    # "output":Lcom/google/zxing/common/BitMatrix;
    :goto_1
    invoke-virtual {v9}, Lcom/google/zxing/common/BitMatrix;->clear()V

    .line 186
    const/4 v10, 0x0

    .local v10, "inputY":I
    move v11, v8

    .local v11, "outputY":I
    :goto_2
    if-ge v10, v3, :cond_4

    .line 188
    const/4 v12, 0x0

    .local v12, "inputX":I
    move v13, v7

    .local v13, "outputX":I
    :goto_3
    if-ge v12, v2, :cond_3

    .line 189
    move-object/from16 v14, p0

    invoke-virtual {v14, v12, v10}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v15

    const/4 v0, 0x1

    if-ne v15, v0, :cond_2

    .line 190
    invoke-virtual {v9, v13, v11, v6, v6}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    .line 188
    :cond_2
    add-int/lit8 v12, v12, 0x1

    add-int/2addr v13, v6

    move/from16 v0, p1

    goto :goto_3

    :cond_3
    move-object/from16 v14, p0

    .line 186
    .end local v12    # "inputX":I
    .end local v13    # "outputX":I
    add-int/lit8 v10, v10, 0x1

    add-int/2addr v11, v6

    move/from16 v0, p1

    goto :goto_2

    :cond_4
    move-object/from16 v14, p0

    .line 195
    .end local v10    # "inputY":I
    .end local v11    # "outputY":I
    return-object v9
.end method

.method private static encodeLowLevel(Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;Lcom/google/zxing/datamatrix/encoder/SymbolInfo;II)Lcom/google/zxing/common/BitMatrix;
    .locals 11
    .param p0, "placement"    # Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;
    .param p1, "symbolInfo"    # Lcom/google/zxing/datamatrix/encoder/SymbolInfo;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 107
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolDataWidth()I

    move-result v0

    .line 108
    .local v0, "symbolWidth":I
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolDataHeight()I

    move-result v1

    .line 110
    .local v1, "symbolHeight":I
    new-instance v2, Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolHeight()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;-><init>(II)V

    .line 112
    .local v2, "matrix":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    const/4 v3, 0x0

    .line 114
    .local v3, "matrixY":I
    const/4 v4, 0x0

    .local v4, "y":I
    :goto_0
    if-ge v4, v1, :cond_9

    .line 117
    iget v5, p1, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixHeight:I

    rem-int v5, v4, v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v5, :cond_2

    .line 118
    const/4 v5, 0x0

    .line 119
    .local v5, "matrixX":I
    const/4 v8, 0x0

    .local v8, "x":I
    :goto_1
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolWidth()I

    move-result v9

    if-ge v8, v9, :cond_1

    .line 120
    rem-int/lit8 v9, v8, 0x2

    if-nez v9, :cond_0

    const/4 v9, 0x1

    goto :goto_2

    :cond_0
    const/4 v9, 0x0

    :goto_2
    invoke-virtual {v2, v5, v3, v9}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 121
    add-int/lit8 v5, v5, 0x1

    .line 119
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 123
    .end local v8    # "x":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 125
    .end local v5    # "matrixX":I
    :cond_2
    const/4 v5, 0x0

    .line 126
    .restart local v5    # "matrixX":I
    const/4 v8, 0x0

    .restart local v8    # "x":I
    :goto_3
    if-ge v8, v0, :cond_6

    .line 128
    iget v9, p1, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixWidth:I

    rem-int v9, v8, v9

    if-nez v9, :cond_3

    .line 129
    invoke-virtual {v2, v5, v3, v7}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 130
    add-int/lit8 v5, v5, 0x1

    .line 132
    :cond_3
    invoke-virtual {p0, v8, v4}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->getBit(II)Z

    move-result v9

    invoke-virtual {v2, v5, v3, v9}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 133
    add-int/2addr v5, v7

    .line 135
    iget v9, p1, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixWidth:I

    rem-int v9, v8, v9

    iget v10, p1, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixWidth:I

    sub-int/2addr v10, v7

    if-ne v9, v10, :cond_5

    .line 136
    rem-int/lit8 v9, v4, 0x2

    if-nez v9, :cond_4

    const/4 v9, 0x1

    goto :goto_4

    :cond_4
    const/4 v9, 0x0

    :goto_4
    invoke-virtual {v2, v5, v3, v9}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 137
    add-int/lit8 v5, v5, 0x1

    .line 126
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 140
    .end local v8    # "x":I
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 142
    iget v6, p1, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixHeight:I

    rem-int v6, v4, v6

    iget v8, p1, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixHeight:I

    sub-int/2addr v8, v7

    if-ne v6, v8, :cond_8

    .line 143
    const/4 v5, 0x0

    .line 144
    const/4 v6, 0x0

    .local v6, "x":I
    :goto_5
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolWidth()I

    move-result v8

    if-ge v6, v8, :cond_7

    .line 145
    invoke-virtual {v2, v5, v3, v7}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 146
    add-int/lit8 v5, v5, 0x1

    .line 144
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 148
    .end local v6    # "x":I
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 114
    .end local v5    # "matrixX":I
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 152
    .end local v4    # "y":I
    :cond_9
    invoke-static {v2, p2, p3}, Lcom/google/zxing/datamatrix/DataMatrixWriter;->convertByteMatrixToBitMatrix(Lcom/google/zxing/qrcode/encoder/ByteMatrix;II)Lcom/google/zxing/common/BitMatrix;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;
    .locals 6
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "format"    # Lcom/google/zxing/BarcodeFormat;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 43
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/datamatrix/DataMatrixWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .locals 3
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

    .line 49
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 53
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->DATA_MATRIX:Lcom/google/zxing/BarcodeFormat;

    if-ne p2, v0, :cond_5

    .line 57
    if-ltz p3, :cond_4

    if-ltz p4, :cond_4

    .line 62
    sget-object p2, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->FORCE_NONE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    .line 63
    nop

    .line 64
    nop

    .line 65
    const/4 v0, 0x0

    if-eqz p5, :cond_3

    .line 66
    sget-object v1, Lcom/google/zxing/EncodeHintType;->DATA_MATRIX_SHAPE:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    .line 67
    if-eqz v1, :cond_0

    .line 68
    move-object p2, v1

    .line 71
    :cond_0
    sget-object v1, Lcom/google/zxing/EncodeHintType;->MIN_SIZE:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/Dimension;

    .line 72
    if-eqz v1, :cond_1

    .line 73
    goto :goto_0

    .line 72
    :cond_1
    move-object v1, v0

    .line 76
    :goto_0
    sget-object v2, Lcom/google/zxing/EncodeHintType;->MAX_SIZE:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/google/zxing/Dimension;

    .line 77
    if-eqz p5, :cond_2

    .line 78
    move-object v0, v1

    goto :goto_1

    .line 77
    :cond_2
    move-object p5, v0

    move-object v0, v1

    goto :goto_1

    .line 65
    :cond_3
    move-object p5, v0

    .line 84
    :goto_1
    invoke-static {p1, p2, v0, p5}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->encodeHighLevel(Ljava/lang/String;Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;)Ljava/lang/String;

    move-result-object p1

    .line 86
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v1, p2, v0, p5, v2}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->lookup(ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;Z)Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object p2

    .line 89
    invoke-static {p1, p2}, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->encodeECC200(Ljava/lang/String;Lcom/google/zxing/datamatrix/encoder/SymbolInfo;)Ljava/lang/String;

    move-result-object p1

    .line 92
    new-instance p5, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;

    invoke-virtual {p2}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolDataWidth()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolDataHeight()I

    move-result v1

    invoke-direct {p5, p1, v0, v1}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;-><init>(Ljava/lang/CharSequence;II)V

    .line 93
    invoke-virtual {p5}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->place()V

    .line 96
    invoke-static {p5, p2, p3, p4}, Lcom/google/zxing/datamatrix/DataMatrixWriter;->encodeLowLevel(Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;Lcom/google/zxing/datamatrix/encoder/SymbolInfo;II)Lcom/google/zxing/common/BitMatrix;

    move-result-object p1

    return-object p1

    .line 58
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "Requested dimensions can\'t be negative: "

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const/16 p3, 0x78

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 54
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p3, "Can only encode DATA_MATRIX, but got "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 50
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Found empty contents"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
