.class public final Lcom/google/zxing/pdf417/PDF417Writer;
.super Ljava/lang/Object;
.source "PDF417Writer.java"

# interfaces
.implements Lcom/google/zxing/Writer;


# static fields
.field private static final DEFAULT_ERROR_CORRECTION_LEVEL:I = 0x2

.field private static final WHITE_SPACE:I = 0x1e


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bitMatrixFromBitArray([[BI)Lcom/google/zxing/common/BitMatrix;
    .registers 10
    .param p0, "input"    # [[B
    .param p1, "margin"    # I

    .line 147
    new-instance v0, Lcom/google/zxing/common/BitMatrix;

    const/4 v1, 0x0

    aget-object v2, p0, v1

    array-length v2, v2

    mul-int/lit8 v3, p1, 0x2

    add-int/2addr v2, v3

    array-length v3, p0

    mul-int/lit8 v4, p1, 0x2

    add-int/2addr v3, v4

    invoke-direct {v0, v2, v3}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    const/4 v2, 0x0

    .line 148
    .local v2, "output":Lcom/google/zxing/common/BitMatrix;
    move-object v2, v0

    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->clear()V

    .line 149
    const/4 v0, 0x0

    .local v0, "y":I
    invoke-virtual {v2}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v3

    sub-int/2addr v3, p1

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .local v3, "yOutput":I
    :goto_1d
    array-length v5, p0

    if-ge v0, v5, :cond_39

    .line 150
    aget-object v5, p0, v0

    .line 151
    .local v5, "inputY":[B
    const/4 v6, 0x0

    .local v6, "x":I
    :goto_23
    aget-object v7, p0, v1

    array-length v7, v7

    if-ge v6, v7, :cond_34

    .line 153
    aget-byte v7, v5, v6

    if-ne v7, v4, :cond_31

    .line 154
    add-int v7, v6, p1

    invoke-virtual {v2, v7, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 151
    :cond_31
    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    .line 149
    .end local v5    # "inputY":[B
    .end local v6    # "x":I
    :cond_34
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_1d

    .line 158
    .end local v0    # "y":I
    .end local v3    # "yOutput":I
    :cond_39
    return-object v2
.end method

.method private static bitMatrixFromEncoder(Lcom/google/zxing/pdf417/encoder/PDF417;Ljava/lang/String;IIII)Lcom/google/zxing/common/BitMatrix;
    .registers 13
    .param p0, "encoder"    # Lcom/google/zxing/pdf417/encoder/PDF417;
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "errorCorrectionLevel"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "margin"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 107
    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/pdf417/encoder/PDF417;->generateBarcodeLogic(Ljava/lang/String;I)V

    .line 110
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/encoder/PDF417;->getBarcodeMatrix()Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->getScaledMatrix(II)[[B

    move-result-object v0

    .line 111
    .local v0, "originalScale":[[B
    const/4 v1, 0x0

    .line 112
    .local v1, "rotated":Z
    const/4 v3, 0x0

    if-le p4, p3, :cond_13

    const/4 v4, 0x1

    goto :goto_14

    :cond_13
    const/4 v4, 0x0

    :goto_14
    aget-object v5, v0, v3

    array-length v5, v5

    array-length v6, v0

    if-ge v5, v6, :cond_1c

    const/4 v5, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v5, 0x0

    :goto_1d
    if-eq v4, v5, :cond_24

    .line 113
    invoke-static {v0}, Lcom/google/zxing/pdf417/PDF417Writer;->rotateArray([[B)[[B

    move-result-object v0

    .line 114
    const/4 v1, 0x1

    .line 117
    :cond_24
    aget-object v3, v0, v3

    array-length v3, v3

    div-int v3, p3, v3

    .line 118
    .local v3, "scaleX":I
    array-length v4, v0

    div-int v4, p4, v4

    .line 121
    .local v4, "scaleY":I
    if-ge v3, v4, :cond_30

    .line 122
    move v5, v3

    .local v5, "scale":I
    goto :goto_31

    .line 124
    .end local v5    # "scale":I
    :cond_30
    move v5, v4

    .line 127
    .restart local v5    # "scale":I
    :goto_31
    if-le v5, v2, :cond_49

    .line 128
    nop

    .line 129
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/encoder/PDF417;->getBarcodeMatrix()Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;

    move-result-object v2

    shl-int/lit8 v6, v5, 0x2

    invoke-virtual {v2, v5, v6}, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->getScaledMatrix(II)[[B

    move-result-object v2

    .line 130
    .local v2, "scaledMatrix":[[B
    if-eqz v1, :cond_44

    .line 131
    invoke-static {v2}, Lcom/google/zxing/pdf417/PDF417Writer;->rotateArray([[B)[[B

    move-result-object v2

    .line 133
    :cond_44
    invoke-static {v2, p5}, Lcom/google/zxing/pdf417/PDF417Writer;->bitMatrixFromBitArray([[BI)Lcom/google/zxing/common/BitMatrix;

    move-result-object v6

    return-object v6

    .line 135
    .end local v2    # "scaledMatrix":[[B
    :cond_49
    invoke-static {v0, p5}, Lcom/google/zxing/pdf417/PDF417Writer;->bitMatrixFromBitArray([[BI)Lcom/google/zxing/common/BitMatrix;

    move-result-object v2

    return-object v2
.end method

.method private static rotateArray([[B)[[B
    .registers 9
    .param p0, "bitarray"    # [[B

    .line 165
    const/4 v0, 0x0

    aget-object v1, p0, v0

    array-length v1, v1

    array-length v2, p0

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v2, v3, v4

    aput v1, v3, v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    .line 166
    .local v1, "temp":[[B
    const/4 v2, 0x0

    .local v2, "ii":I
    :goto_16
    array-length v3, p0

    if-ge v2, v3, :cond_30

    .line 169
    array-length v3, p0

    sub-int/2addr v3, v2

    sub-int/2addr v3, v4

    .line 170
    .local v3, "inverseii":I
    const/4 v5, 0x0

    .local v5, "jj":I
    :goto_1d
    aget-object v6, p0, v0

    array-length v6, v6

    if-ge v5, v6, :cond_2d

    .line 171
    aget-object v6, v1, v5

    aget-object v7, p0, v2

    aget-byte v7, v7, v5

    aput-byte v7, v6, v3

    .line 170
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    .line 166
    .end local v3    # "inverseii":I
    .end local v5    # "jj":I
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 174
    .end local v2    # "ii":I
    :cond_30
    return-object v1
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;
    .registers 11
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "format"    # Lcom/google/zxing/BarcodeFormat;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 95
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/pdf417/PDF417Writer;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .registers 15
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

    .line 53
    .local p5, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;*>;"
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->PDF_417:Lcom/google/zxing/BarcodeFormat;

    if-ne p2, v0, :cond_bc

    .line 57
    new-instance v0, Lcom/google/zxing/pdf417/encoder/PDF417;

    invoke-direct {v0}, Lcom/google/zxing/pdf417/encoder/PDF417;-><init>()V

    .line 58
    .local v0, "encoder":Lcom/google/zxing/pdf417/encoder/PDF417;
    const/16 v1, 0x1e

    .line 59
    .local v1, "margin":I
    const/4 v2, 0x2

    .line 61
    .local v2, "errorCorrectionLevel":I
    if-eqz p5, :cond_af

    .line 62
    sget-object v3, Lcom/google/zxing/EncodeHintType;->PDF417_COMPACT:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 63
    sget-object v3, Lcom/google/zxing/EncodeHintType;->PDF417_COMPACT:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/zxing/pdf417/encoder/PDF417;->setCompact(Z)V

    .line 65
    :cond_2b
    sget-object v3, Lcom/google/zxing/EncodeHintType;->PDF417_COMPACTION:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 66
    sget-object v3, Lcom/google/zxing/EncodeHintType;->PDF417_COMPACTION:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/zxing/pdf417/encoder/Compaction;->valueOf(Ljava/lang/String;)Lcom/google/zxing/pdf417/encoder/Compaction;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/zxing/pdf417/encoder/PDF417;->setCompaction(Lcom/google/zxing/pdf417/encoder/Compaction;)V

    .line 68
    :cond_44
    sget-object v3, Lcom/google/zxing/EncodeHintType;->PDF417_DIMENSIONS:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 69
    sget-object v3, Lcom/google/zxing/EncodeHintType;->PDF417_DIMENSIONS:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/pdf417/encoder/Dimensions;

    .line 70
    .local v3, "dimensions":Lcom/google/zxing/pdf417/encoder/Dimensions;
    invoke-virtual {v3}, Lcom/google/zxing/pdf417/encoder/Dimensions;->getMaxCols()I

    move-result v4

    .line 71
    invoke-virtual {v3}, Lcom/google/zxing/pdf417/encoder/Dimensions;->getMinCols()I

    move-result v5

    .line 72
    invoke-virtual {v3}, Lcom/google/zxing/pdf417/encoder/Dimensions;->getMaxRows()I

    move-result v6

    .line 73
    invoke-virtual {v3}, Lcom/google/zxing/pdf417/encoder/Dimensions;->getMinRows()I

    move-result v7

    .line 70
    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/google/zxing/pdf417/encoder/PDF417;->setDimensions(IIII)V

    .line 75
    .end local v3    # "dimensions":Lcom/google/zxing/pdf417/encoder/Dimensions;
    :cond_67
    sget-object v3, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7d

    .line 76
    sget-object v3, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 78
    :cond_7d
    sget-object v3, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_93

    .line 79
    sget-object v3, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 81
    :cond_93
    sget-object v3, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ac

    .line 82
    sget-object v3, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    .line 83
    .local v3, "encoding":Ljava/nio/charset/Charset;
    invoke-virtual {v0, v3}, Lcom/google/zxing/pdf417/encoder/PDF417;->setEncoding(Ljava/nio/charset/Charset;)V

    .line 87
    .end local v3    # "encoding":Ljava/nio/charset/Charset;
    :cond_ac
    move v7, v1

    move v8, v2

    goto :goto_b1

    .line 61
    :cond_af
    move v7, v1

    move v8, v2

    .line 87
    .end local v1    # "margin":I
    .end local v2    # "errorCorrectionLevel":I
    .local v7, "margin":I
    .local v8, "errorCorrectionLevel":I
    :goto_b1
    move-object v1, v0

    move-object v2, p1

    move v3, v8

    move v4, p3

    move v5, p4

    move v6, v7

    invoke-static/range {v1 .. v6}, Lcom/google/zxing/pdf417/PDF417Writer;->bitMatrixFromEncoder(Lcom/google/zxing/pdf417/encoder/PDF417;Ljava/lang/String;IIII)Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    return-object v1

    .line 54
    .end local v0    # "encoder":Lcom/google/zxing/pdf417/encoder/PDF417;
    .end local v7    # "margin":I
    .end local v8    # "errorCorrectionLevel":I
    :cond_bc
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only encode PDF_417, but got "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
