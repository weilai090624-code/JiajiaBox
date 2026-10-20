.class public final Lcom/google/zxing/common/detector/WhiteRectangleDetector;
.super Ljava/lang/Object;
.source "WhiteRectangleDetector.java"


# static fields
.field private static final CORR:I = 0x1

.field private static final INIT_SIZE:I = 0xa


# instance fields
.field private final downInit:I

.field private final height:I

.field private final image:Lcom/google/zxing/common/BitMatrix;

.field private final leftInit:I

.field private final rightInit:I

.field private final upInit:I

.field private final width:I


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 3
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 47
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    const/16 v2, 0xa

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;-><init>(Lcom/google/zxing/common/BitMatrix;III)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;III)V
    .locals 3
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p2, "initSize"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    .line 59
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    .line 60
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    .line 61
    div-int/lit8 v0, p2, 0x2

    .line 62
    .local v0, "halfsize":I
    sub-int v1, p3, v0

    iput v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->leftInit:I

    .line 63
    add-int v1, p3, v0

    iput v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->rightInit:I

    .line 64
    sub-int v1, p4, v0

    iput v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->upInit:I

    .line 65
    add-int v1, p4, v0

    iput v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->downInit:I

    .line 66
    iget v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->upInit:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->leftInit:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->downInit:I

    iget v2, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    if-ge v1, v2, :cond_0

    iget v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->rightInit:I

    iget v2, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    if-ge v1, v2, :cond_0

    .line 69
    return-void

    .line 67
    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1
.end method

.method private centerEdges(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)[Lcom/google/zxing/ResultPoint;
    .locals 16
    .param p1, "y"    # Lcom/google/zxing/ResultPoint;
    .param p2, "z"    # Lcom/google/zxing/ResultPoint;
    .param p3, "x"    # Lcom/google/zxing/ResultPoint;
    .param p4, "t"    # Lcom/google/zxing/ResultPoint;

    .line 278
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    .line 279
    .local v0, "yi":F
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    .line 280
    .local v1, "yj":F
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    .line 281
    .local v2, "zi":F
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    .line 282
    .local v3, "zj":F
    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v4

    .line 283
    .local v4, "xi":F
    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v5

    .line 284
    .local v5, "xj":F
    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v6

    .line 285
    .local v6, "ti":F
    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v7

    .line 287
    .local v7, "tj":F
    move-object/from16 v8, p0

    iget v9, v8, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x4

    const/high16 v15, 0x3f800000    # 1.0f

    cmpg-float v9, v0, v9

    if-gez v9, :cond_0

    .line 288
    new-array v9, v14, [Lcom/google/zxing/ResultPoint;

    new-instance v14, Lcom/google/zxing/ResultPoint;

    sub-float v10, v6, v15

    add-float v11, v7, v15

    invoke-direct {v14, v10, v11}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v14, v9, v13

    new-instance v10, Lcom/google/zxing/ResultPoint;

    add-float v11, v2, v15

    add-float v13, v3, v15

    invoke-direct {v10, v11, v13}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v10, v9, v12

    new-instance v10, Lcom/google/zxing/ResultPoint;

    sub-float v11, v4, v15

    sub-float v12, v5, v15

    invoke-direct {v10, v11, v12}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    const/4 v11, 0x2

    aput-object v10, v9, v11

    new-instance v10, Lcom/google/zxing/ResultPoint;

    add-float v11, v0, v15

    sub-float v12, v1, v15

    invoke-direct {v10, v11, v12}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    const/4 v11, 0x3

    aput-object v10, v9, v11

    return-object v9

    .line 294
    :cond_0
    new-array v9, v14, [Lcom/google/zxing/ResultPoint;

    new-instance v10, Lcom/google/zxing/ResultPoint;

    add-float v11, v6, v15

    add-float v14, v7, v15

    invoke-direct {v10, v11, v14}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v10, v9, v13

    new-instance v10, Lcom/google/zxing/ResultPoint;

    add-float v11, v2, v15

    sub-float v13, v3, v15

    invoke-direct {v10, v11, v13}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v10, v9, v12

    new-instance v10, Lcom/google/zxing/ResultPoint;

    sub-float v11, v4, v15

    add-float v12, v5, v15

    invoke-direct {v10, v11, v12}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    const/4 v11, 0x2

    aput-object v10, v9, v11

    new-instance v10, Lcom/google/zxing/ResultPoint;

    sub-float v11, v0, v15

    sub-float v12, v1, v15

    invoke-direct {v10, v11, v12}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    const/4 v11, 0x3

    aput-object v10, v9, v11

    return-object v9
.end method

.method private containsBlackPoint(IIIZ)Z
    .locals 3
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "fixed"    # I
    .param p4, "horizontal"    # Z

    .line 313
    const/4 v0, 0x1

    if-eqz p4, :cond_2

    .line 314
    move v1, p1

    .local v1, "x":I
    :goto_0
    if-gt v1, p2, :cond_1

    .line 315
    iget-object v2, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2, v1, p3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 316
    return v0

    .line 314
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "x":I
    :cond_1
    goto :goto_2

    .line 320
    :cond_2
    move v1, p1

    .local v1, "y":I
    :goto_1
    if-gt v1, p2, :cond_4

    .line 321
    iget-object v2, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2, p3, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 322
    return v0

    .line 320
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 327
    .end local v1    # "y":I
    :cond_4
    :goto_2
    const/4 v0, 0x0

    return v0
.end method

.method private getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;
    .locals 9
    .param p1, "aX"    # F
    .param p2, "aY"    # F
    .param p3, "bX"    # F
    .param p4, "bY"    # F

    .line 241
    invoke-static {p1, p2, p3, p4}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v0

    invoke-static {v0}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v0

    .line 242
    .local v0, "dist":I
    sub-float v1, p3, p1

    int-to-float v2, v0

    div-float/2addr v1, v2

    .line 243
    .local v1, "xStep":F
    sub-float v2, p4, p2

    int-to-float v3, v0

    div-float/2addr v2, v3

    .line 245
    .local v2, "yStep":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 246
    int-to-float v4, v3

    mul-float v4, v4, v1

    add-float/2addr v4, p1

    invoke-static {v4}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v4

    .line 247
    .local v4, "x":I
    int-to-float v5, v3

    mul-float v5, v5, v2

    add-float/2addr v5, p2

    invoke-static {v5}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v5

    .line 248
    .local v5, "y":I
    iget-object v6, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v6, v4, v5}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 249
    new-instance v6, Lcom/google/zxing/ResultPoint;

    int-to-float v7, v4

    int-to-float v8, v5

    invoke-direct {v6, v7, v8}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    return-object v6

    .line 245
    .end local v4    # "x":I
    .end local v5    # "y":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 252
    .end local v3    # "i":I
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method


# virtual methods
.method public detect()[Lcom/google/zxing/ResultPoint;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 87
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->leftInit:I

    .line 88
    .local v1, "left":I
    iget v2, v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->rightInit:I

    .line 89
    .local v2, "right":I
    iget v3, v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->upInit:I

    .line 90
    .local v3, "up":I
    iget v4, v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->downInit:I

    .line 91
    .local v4, "down":I
    const/4 v5, 0x0

    .line 92
    .local v5, "sizeExceeded":Z
    const/4 v6, 0x1

    .line 93
    .local v6, "aBlackPointFoundOnBorder":Z
    const/4 v7, 0x0

    .line 95
    .local v7, "atLeastOneBlackPointFoundOnBorder":Z
    const/4 v8, 0x0

    .line 96
    .local v8, "atLeastOneBlackPointFoundOnRight":Z
    const/4 v9, 0x0

    .line 97
    .local v9, "atLeastOneBlackPointFoundOnBottom":Z
    const/4 v10, 0x0

    .line 98
    .local v10, "atLeastOneBlackPointFoundOnLeft":Z
    const/4 v11, 0x0

    .line 100
    .local v11, "atLeastOneBlackPointFoundOnTop":Z
    :goto_0
    if-eqz v6, :cond_16

    .line 102
    const/4 v6, 0x0

    .line 107
    const/4 v12, 0x1

    .line 108
    .local v12, "rightBorderNotWhite":Z
    :cond_0
    :goto_1
    const/4 v13, 0x0

    if-nez v12, :cond_1

    if-nez v8, :cond_3

    :cond_1
    iget v14, v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    if-ge v2, v14, :cond_3

    .line 109
    invoke-direct {v0, v3, v4, v2, v13}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->containsBlackPoint(IIIZ)Z

    move-result v13

    .line 110
    move v12, v13

    if-eqz v13, :cond_2

    .line 111
    add-int/lit8 v2, v2, 0x1

    .line 112
    const/4 v6, 0x1

    .line 113
    const/4 v8, 0x1

    goto :goto_1

    .line 114
    :cond_2
    if-nez v8, :cond_0

    .line 115
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 119
    :cond_3
    iget v14, v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    if-lt v2, v14, :cond_4

    .line 120
    const/4 v5, 0x1

    .line 121
    goto/16 :goto_7

    .line 127
    :cond_4
    const/4 v14, 0x1

    .line 128
    .local v14, "bottomBorderNotWhite":Z
    :goto_2
    const/4 v15, 0x1

    if-nez v14, :cond_5

    if-nez v9, :cond_8

    :cond_5
    iget v13, v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    if-ge v4, v13, :cond_8

    .line 129
    invoke-direct {v0, v1, v2, v4, v15}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->containsBlackPoint(IIIZ)Z

    move-result v13

    .line 130
    move v14, v13

    if-eqz v13, :cond_6

    .line 131
    add-int/lit8 v4, v4, 0x1

    .line 132
    const/4 v6, 0x1

    .line 133
    const/4 v9, 0x1

    const/4 v13, 0x0

    goto :goto_2

    .line 134
    :cond_6
    if-nez v9, :cond_7

    .line 135
    add-int/lit8 v4, v4, 0x1

    const/4 v13, 0x0

    goto :goto_2

    .line 134
    :cond_7
    const/4 v13, 0x0

    goto :goto_2

    .line 139
    :cond_8
    iget v13, v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    if-lt v4, v13, :cond_9

    .line 140
    const/4 v5, 0x1

    .line 141
    goto/16 :goto_7

    .line 147
    :cond_9
    const/4 v13, 0x1

    .line 148
    .local v13, "leftBorderNotWhite":Z
    :goto_3
    if-nez v13, :cond_a

    if-nez v10, :cond_d

    :cond_a
    if-ltz v1, :cond_d

    .line 149
    const/4 v15, 0x0

    invoke-direct {v0, v3, v4, v1, v15}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->containsBlackPoint(IIIZ)Z

    move-result v16

    .line 150
    move/from16 v13, v16

    if-eqz v16, :cond_b

    .line 151
    add-int/lit8 v1, v1, -0x1

    .line 152
    const/4 v6, 0x1

    .line 153
    const/4 v10, 0x1

    const/4 v15, 0x1

    goto :goto_3

    .line 154
    :cond_b
    if-nez v10, :cond_c

    .line 155
    add-int/lit8 v1, v1, -0x1

    const/4 v15, 0x1

    goto :goto_3

    .line 154
    :cond_c
    const/4 v15, 0x1

    goto :goto_3

    .line 159
    :cond_d
    if-gez v1, :cond_e

    .line 160
    const/4 v5, 0x1

    .line 161
    goto :goto_7

    .line 167
    :cond_e
    const/4 v15, 0x1

    .line 168
    .local v15, "topBorderNotWhite":Z
    :goto_4
    if-nez v15, :cond_10

    if-nez v11, :cond_f

    goto :goto_5

    :cond_f
    move/from16 v16, v4

    goto :goto_6

    :cond_10
    :goto_5
    if-ltz v3, :cond_13

    .line 169
    move/from16 v16, v4

    const/4 v4, 0x1

    .end local v4    # "down":I
    .local v16, "down":I
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->containsBlackPoint(IIIZ)Z

    move-result v17

    .line 170
    move/from16 v15, v17

    if-eqz v17, :cond_11

    .line 171
    add-int/lit8 v3, v3, -0x1

    .line 172
    const/4 v6, 0x1

    .line 173
    const/4 v11, 0x1

    move/from16 v4, v16

    goto :goto_4

    .line 174
    :cond_11
    if-nez v11, :cond_12

    .line 175
    add-int/lit8 v3, v3, -0x1

    move/from16 v4, v16

    goto :goto_4

    .line 174
    :cond_12
    move/from16 v4, v16

    goto :goto_4

    .line 168
    .end local v16    # "down":I
    .restart local v4    # "down":I
    :cond_13
    move/from16 v16, v4

    .line 179
    .end local v4    # "down":I
    .restart local v16    # "down":I
    :goto_6
    if-gez v3, :cond_14

    .line 180
    const/4 v5, 0x1

    .line 181
    move/from16 v4, v16

    goto :goto_7

    .line 184
    :cond_14
    if-eqz v6, :cond_15

    .line 185
    const/4 v4, 0x1

    move v7, v4

    .line 188
    .end local v12    # "rightBorderNotWhite":Z
    .end local v13    # "leftBorderNotWhite":Z
    .end local v14    # "bottomBorderNotWhite":Z
    .end local v15    # "topBorderNotWhite":Z
    :cond_15
    move/from16 v4, v16

    goto/16 :goto_0

    .line 190
    .end local v16    # "down":I
    .restart local v4    # "down":I
    :cond_16
    :goto_7
    if-nez v5, :cond_1f

    if-eqz v7, :cond_1f

    .line 192
    sub-int v12, v2, v1

    .line 194
    .local v12, "maxSize":I
    const/4 v13, 0x0

    .line 195
    .local v13, "z":Lcom/google/zxing/ResultPoint;
    const/4 v14, 0x1

    .local v14, "i":I
    :goto_8
    if-nez v13, :cond_17

    if-ge v14, v12, :cond_17

    .line 196
    int-to-float v15, v1

    move/from16 v16, v5

    .end local v5    # "sizeExceeded":Z
    .local v16, "sizeExceeded":Z
    sub-int v5, v4, v14

    int-to-float v5, v5

    move/from16 v17, v6

    .end local v6    # "aBlackPointFoundOnBorder":Z
    .local v17, "aBlackPointFoundOnBorder":Z
    add-int v6, v1, v14

    int-to-float v6, v6

    move/from16 v18, v7

    .end local v7    # "atLeastOneBlackPointFoundOnBorder":Z
    .local v18, "atLeastOneBlackPointFoundOnBorder":Z
    int-to-float v7, v4

    invoke-direct {v0, v15, v5, v6, v7}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v13

    .line 195
    add-int/lit8 v14, v14, 0x1

    move/from16 v5, v16

    move/from16 v6, v17

    move/from16 v7, v18

    goto :goto_8

    .end local v16    # "sizeExceeded":Z
    .end local v17    # "aBlackPointFoundOnBorder":Z
    .end local v18    # "atLeastOneBlackPointFoundOnBorder":Z
    .restart local v5    # "sizeExceeded":Z
    .restart local v6    # "aBlackPointFoundOnBorder":Z
    .restart local v7    # "atLeastOneBlackPointFoundOnBorder":Z
    :cond_17
    move/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v7

    .line 199
    .end local v5    # "sizeExceeded":Z
    .end local v6    # "aBlackPointFoundOnBorder":Z
    .end local v7    # "atLeastOneBlackPointFoundOnBorder":Z
    .end local v14    # "i":I
    .restart local v16    # "sizeExceeded":Z
    .restart local v17    # "aBlackPointFoundOnBorder":Z
    .restart local v18    # "atLeastOneBlackPointFoundOnBorder":Z
    if-eqz v13, :cond_1e

    .line 203
    const/4 v5, 0x0

    .line 205
    .local v5, "t":Lcom/google/zxing/ResultPoint;
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_9
    if-nez v5, :cond_18

    if-ge v6, v12, :cond_18

    .line 206
    int-to-float v7, v1

    add-int v14, v3, v6

    int-to-float v14, v14

    add-int v15, v1, v6

    int-to-float v15, v15

    move/from16 v19, v1

    .end local v1    # "left":I
    .local v19, "left":I
    int-to-float v1, v3

    invoke-direct {v0, v7, v14, v15, v1}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v5

    .line 205
    add-int/lit8 v6, v6, 0x1

    move/from16 v1, v19

    goto :goto_9

    .end local v19    # "left":I
    .restart local v1    # "left":I
    :cond_18
    move/from16 v19, v1

    .line 209
    .end local v1    # "left":I
    .end local v6    # "i":I
    .restart local v19    # "left":I
    if-eqz v5, :cond_1d

    .line 213
    const/4 v1, 0x0

    .line 215
    .local v1, "x":Lcom/google/zxing/ResultPoint;
    const/4 v6, 0x1

    .restart local v6    # "i":I
    :goto_a
    if-nez v1, :cond_19

    if-ge v6, v12, :cond_19

    .line 216
    int-to-float v7, v2

    add-int v14, v3, v6

    int-to-float v14, v14

    sub-int v15, v2, v6

    int-to-float v15, v15

    move/from16 v20, v8

    .end local v8    # "atLeastOneBlackPointFoundOnRight":Z
    .local v20, "atLeastOneBlackPointFoundOnRight":Z
    int-to-float v8, v3

    invoke-direct {v0, v7, v14, v15, v8}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v1

    .line 215
    add-int/lit8 v6, v6, 0x1

    move/from16 v8, v20

    goto :goto_a

    .end local v20    # "atLeastOneBlackPointFoundOnRight":Z
    .restart local v8    # "atLeastOneBlackPointFoundOnRight":Z
    :cond_19
    move/from16 v20, v8

    .line 219
    .end local v6    # "i":I
    .end local v8    # "atLeastOneBlackPointFoundOnRight":Z
    .restart local v20    # "atLeastOneBlackPointFoundOnRight":Z
    if-eqz v1, :cond_1c

    .line 223
    const/4 v6, 0x0

    .line 225
    .local v6, "y":Lcom/google/zxing/ResultPoint;
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_b
    if-nez v6, :cond_1a

    if-ge v7, v12, :cond_1a

    .line 226
    int-to-float v8, v2

    sub-int v14, v4, v7

    int-to-float v14, v14

    sub-int v15, v2, v7

    int-to-float v15, v15

    move/from16 v21, v2

    .end local v2    # "right":I
    .local v21, "right":I
    int-to-float v2, v4

    invoke-direct {v0, v8, v14, v15, v2}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v6

    .line 225
    add-int/lit8 v7, v7, 0x1

    move/from16 v2, v21

    goto :goto_b

    .end local v21    # "right":I
    .restart local v2    # "right":I
    :cond_1a
    move/from16 v21, v2

    .line 229
    .end local v2    # "right":I
    .end local v7    # "i":I
    .restart local v21    # "right":I
    if-eqz v6, :cond_1b

    .line 233
    invoke-direct {v0, v6, v13, v1, v5}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->centerEdges(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)[Lcom/google/zxing/ResultPoint;

    move-result-object v2

    return-object v2

    .line 230
    :cond_1b
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2

    .line 220
    .end local v6    # "y":Lcom/google/zxing/ResultPoint;
    .end local v21    # "right":I
    .restart local v2    # "right":I
    :cond_1c
    move/from16 v21, v2

    .end local v2    # "right":I
    .restart local v21    # "right":I
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2

    .line 210
    .end local v1    # "x":Lcom/google/zxing/ResultPoint;
    .end local v20    # "atLeastOneBlackPointFoundOnRight":Z
    .end local v21    # "right":I
    .restart local v2    # "right":I
    .restart local v8    # "atLeastOneBlackPointFoundOnRight":Z
    :cond_1d
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 200
    .end local v5    # "t":Lcom/google/zxing/ResultPoint;
    .end local v19    # "left":I
    .local v1, "left":I
    :cond_1e
    move/from16 v19, v1

    .end local v1    # "left":I
    .restart local v19    # "left":I
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 190
    .end local v12    # "maxSize":I
    .end local v13    # "z":Lcom/google/zxing/ResultPoint;
    .end local v16    # "sizeExceeded":Z
    .end local v17    # "aBlackPointFoundOnBorder":Z
    .end local v18    # "atLeastOneBlackPointFoundOnBorder":Z
    .end local v19    # "left":I
    .restart local v1    # "left":I
    .local v5, "sizeExceeded":Z
    .local v6, "aBlackPointFoundOnBorder":Z
    .local v7, "atLeastOneBlackPointFoundOnBorder":Z
    :cond_1f
    move/from16 v19, v1

    move/from16 v21, v2

    move/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v20, v8

    .line 236
    .end local v1    # "left":I
    .end local v2    # "right":I
    .end local v5    # "sizeExceeded":Z
    .end local v6    # "aBlackPointFoundOnBorder":Z
    .end local v7    # "atLeastOneBlackPointFoundOnBorder":Z
    .end local v8    # "atLeastOneBlackPointFoundOnRight":Z
    .restart local v16    # "sizeExceeded":Z
    .restart local v17    # "aBlackPointFoundOnBorder":Z
    .restart local v18    # "atLeastOneBlackPointFoundOnBorder":Z
    .restart local v19    # "left":I
    .restart local v20    # "atLeastOneBlackPointFoundOnRight":Z
    .restart local v21    # "right":I
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1
.end method
