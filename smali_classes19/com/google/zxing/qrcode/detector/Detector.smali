.class public Lcom/google/zxing/qrcode/detector/Detector;
.super Ljava/lang/Object;
.source "Detector.java"


# instance fields
.field private final image:Lcom/google/zxing/common/BitMatrix;

.field private resultPointCallback:Lcom/google/zxing/ResultPointCallback;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .registers 2
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    .line 46
    return-void
.end method

.method private calculateModuleSizeOneWay(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F
    .registers 8
    .param p1, "pattern"    # Lcom/google/zxing/ResultPoint;
    .param p2, "otherPattern"    # Lcom/google/zxing/ResultPoint;

    .line 242
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 243
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 244
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 245
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 242
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/zxing/qrcode/detector/Detector;->sizeOfBlackWhiteBlackRunBothWays(IIII)F

    move-result v0

    .line 246
    .local v0, "moduleSizeEst1":F
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 247
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 248
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 249
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v4

    float-to-int v4, v4

    .line 246
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/zxing/qrcode/detector/Detector;->sizeOfBlackWhiteBlackRunBothWays(IIII)F

    move-result v1

    .line 250
    .local v1, "moduleSizeEst2":F
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    const/high16 v3, 0x40e00000    # 7.0f

    if-eqz v2, :cond_3b

    .line 251
    div-float v2, v1, v3

    return v2

    .line 253
    :cond_3b
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 254
    div-float v2, v0, v3

    return v2

    .line 258
    :cond_44
    add-float v2, v0, v1

    const/high16 v3, 0x41600000    # 14.0f

    div-float/2addr v2, v3

    return v2
.end method

.method private static computeDimension(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;F)I
    .registers 8
    .param p0, "topLeft"    # Lcom/google/zxing/ResultPoint;
    .param p1, "topRight"    # Lcom/google/zxing/ResultPoint;
    .param p2, "bottomLeft"    # Lcom/google/zxing/ResultPoint;
    .param p3, "moduleSize"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 202
    invoke-static {p0, p1}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v0

    div-float/2addr v0, p3

    invoke-static {v0}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v0

    .line 203
    .local v0, "tltrCentersDimension":I
    invoke-static {p0, p2}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v1

    div-float/2addr v1, p3

    invoke-static {v1}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v1

    .line 204
    .local v1, "tlblCentersDimension":I
    add-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x7

    const/4 v3, 0x0

    .line 205
    .local v3, "dimension":I
    move v3, v2

    and-int/lit8 v2, v2, 0x3

    packed-switch v2, :pswitch_data_2c

    :pswitch_1f
    goto :goto_2b

    .line 214
    :pswitch_20
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2

    .line 211
    :pswitch_25
    add-int/lit8 v3, v3, -0x1

    .line 212
    goto :goto_2b

    .line 207
    :pswitch_28
    add-int/lit8 v3, v3, 0x1

    .line 208
    nop

    .line 216
    :goto_2b
    return v3

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_28
        :pswitch_1f
        :pswitch_25
        :pswitch_20
    .end packed-switch
.end method

.method private static createTransform(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)Lcom/google/zxing/common/PerspectiveTransform;
    .registers 27
    .param p0, "topLeft"    # Lcom/google/zxing/ResultPoint;
    .param p1, "topRight"    # Lcom/google/zxing/ResultPoint;
    .param p2, "bottomLeft"    # Lcom/google/zxing/ResultPoint;
    .param p3, "alignmentPattern"    # Lcom/google/zxing/ResultPoint;
    .param p4, "dimension"    # I

    .line 149
    move/from16 v0, p4

    int-to-float v1, v0

    const/high16 v2, 0x40600000    # 3.5f

    sub-float/2addr v1, v2

    .line 154
    .local v1, "dimMinusThree":F
    if-eqz p3, :cond_1d

    .line 155
    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    .line 156
    .local v2, "bottomRightX":F
    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    .line 157
    .local v3, "bottomRightY":F
    const/high16 v4, 0x40400000    # 3.0f

    sub-float v4, v1, v4

    const/4 v5, 0x0

    .line 158
    .local v5, "sourceBottomRightX":F
    move v5, v4

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v5

    .local v4, "sourceBottomRightY":F
    goto :goto_41

    .line 161
    .end local v2    # "bottomRightX":F
    .end local v3    # "bottomRightY":F
    .end local v4    # "sourceBottomRightY":F
    .end local v5    # "sourceBottomRightX":F
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    add-float/2addr v2, v3

    .line 162
    .restart local v2    # "bottomRightX":F
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v4

    add-float/2addr v3, v4

    .line 163
    .restart local v3    # "bottomRightY":F
    move v5, v1

    .line 164
    .restart local v5    # "sourceBottomRightX":F
    move v4, v1

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v5

    .line 167
    .end local v3    # "bottomRightY":F
    .end local v5    # "sourceBottomRightX":F
    .local v19, "bottomRightY":F
    .local v20, "sourceBottomRightY":F
    .local v21, "sourceBottomRightX":F
    :goto_41
    nop

    .line 176
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v11

    .line 177
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v12

    .line 178
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v13

    .line 179
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v14

    .line 182
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v17

    .line 183
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v18

    .line 167
    const/high16 v3, 0x40600000    # 3.5f

    const/high16 v4, 0x40600000    # 3.5f

    const/high16 v6, 0x40600000    # 3.5f

    const/high16 v9, 0x40600000    # 3.5f

    move v5, v1

    move/from16 v7, v21

    move/from16 v8, v20

    move v10, v1

    move v15, v2

    move/from16 v16, v19

    invoke-static/range {v3 .. v18}, Lcom/google/zxing/common/PerspectiveTransform;->quadrilateralToQuadrilateral(FFFFFFFFFFFFFFFF)Lcom/google/zxing/common/PerspectiveTransform;

    move-result-object v3

    return-object v3
.end method

.method private static sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/common/PerspectiveTransform;I)Lcom/google/zxing/common/BitMatrix;
    .registers 4
    .param p0, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "transform"    # Lcom/google/zxing/common/PerspectiveTransform;
    .param p2, "dimension"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 190
    invoke-static {}, Lcom/google/zxing/common/GridSampler;->getInstance()Lcom/google/zxing/common/GridSampler;

    move-result-object v0

    .line 191
    invoke-virtual {v0, p0, p2, p2, p1}, Lcom/google/zxing/common/GridSampler;->sampleGrid(Lcom/google/zxing/common/BitMatrix;IILcom/google/zxing/common/PerspectiveTransform;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0
.end method

.method private sizeOfBlackWhiteBlackRun(IIII)F
    .registers 24
    .param p1, "fromX"    # I
    .param p2, "fromY"    # I
    .param p3, "toX"    # I
    .param p4, "toY"    # I

    .line 309
    sub-int v0, p4, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sub-int v1, p3, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v3, 0x1

    if-le v0, v1, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    const/4 v1, 0x0

    .line 310
    .local v1, "steep":Z
    move v1, v0

    if-eqz v0, :cond_21

    .line 311
    move/from16 v0, p1

    .line 312
    .local v0, "temp":I
    move/from16 v4, p2

    .line 313
    .end local p1    # "fromX":I
    .local v4, "fromX":I
    move v5, v0

    .line 314
    .end local p2    # "fromY":I
    .local v5, "fromY":I
    move/from16 v0, p3

    .line 315
    move/from16 v6, p4

    .line 316
    .end local p3    # "toX":I
    .local v6, "toX":I
    move v7, v0

    .end local p4    # "toY":I
    .local v7, "toY":I
    goto :goto_29

    .line 310
    .end local v0    # "temp":I
    .end local v4    # "fromX":I
    .end local v5    # "fromY":I
    .end local v6    # "toX":I
    .end local v7    # "toY":I
    .restart local p1    # "fromX":I
    .restart local p2    # "fromY":I
    .restart local p3    # "toX":I
    .restart local p4    # "toY":I
    :cond_21
    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    .line 319
    .end local p1    # "fromX":I
    .end local p2    # "fromY":I
    .end local p3    # "toX":I
    .end local p4    # "toY":I
    .restart local v4    # "fromX":I
    .restart local v5    # "fromY":I
    .restart local v6    # "toX":I
    .restart local v7    # "toY":I
    :goto_29
    sub-int v0, v6, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 320
    .local v0, "dx":I
    sub-int v8, v7, v5

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 321
    .local v8, "dy":I
    neg-int v9, v0

    const/4 v10, 0x2

    div-int/2addr v9, v10

    .line 322
    .local v9, "error":I
    const/4 v11, -0x1

    if-ge v4, v6, :cond_3d

    const/4 v12, 0x1

    goto :goto_3e

    :cond_3d
    const/4 v12, -0x1

    .line 323
    .local v12, "xstep":I
    :goto_3e
    if-ge v5, v7, :cond_41

    const/4 v11, 0x1

    .line 326
    .local v11, "ystep":I
    :cond_41
    const/4 v13, 0x0

    .line 328
    .local v13, "state":I
    add-int v14, v6, v12

    .line 329
    .local v14, "xLimit":I
    move v15, v4

    .local v15, "x":I
    move/from16 v16, v5

    move/from16 v2, v16

    .local v2, "y":I
    :goto_49
    if-eq v15, v14, :cond_8e

    .line 330
    if-eqz v1, :cond_50

    move/from16 v17, v2

    goto :goto_52

    :cond_50
    move/from16 v17, v15

    :goto_52
    move/from16 p1, v17

    .line 331
    .local p1, "realX":I
    if-eqz v1, :cond_59

    move/from16 v17, v15

    goto :goto_5b

    :cond_59
    move/from16 v17, v2

    :goto_5b
    move/from16 p2, v17

    .line 336
    .local p2, "realY":I
    if-ne v13, v3, :cond_60

    goto :goto_61

    :cond_60
    const/4 v3, 0x0

    :goto_61
    move-object/from16 v10, p0

    move/from16 v18, v1

    .end local v1    # "steep":Z
    .local v18, "steep":Z
    iget-object v1, v10, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    move/from16 v10, p1

    move/from16 p1, v14

    move/from16 v14, p2

    .end local p2    # "realY":I
    .local v10, "realX":I
    .local v14, "realY":I
    .local p1, "xLimit":I
    invoke-virtual {v1, v10, v14}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v1

    if-ne v3, v1, :cond_7d

    .line 337
    const/4 v1, 0x2

    if-ne v13, v1, :cond_7b

    .line 338
    invoke-static {v15, v2, v4, v5}, Lcom/google/zxing/common/detector/MathUtils;->distance(IIII)F

    move-result v1

    return v1

    .line 340
    :cond_7b
    add-int/lit8 v13, v13, 0x1

    .line 343
    :cond_7d
    add-int v1, v9, v8

    .line 344
    move v9, v1

    if-lez v1, :cond_86

    .line 345
    if-eq v2, v7, :cond_92

    .line 348
    add-int/2addr v2, v11

    .line 349
    sub-int/2addr v9, v0

    .line 329
    .end local v10    # "realX":I
    .end local v14    # "realY":I
    :cond_86
    add-int/2addr v15, v12

    move/from16 v14, p1

    move/from16 v1, v18

    const/4 v3, 0x1

    const/4 v10, 0x2

    goto :goto_49

    .end local v18    # "steep":Z
    .end local p1    # "xLimit":I
    .restart local v1    # "steep":Z
    .local v14, "xLimit":I
    :cond_8e
    move/from16 v18, v1

    move/from16 p1, v14

    .line 355
    .end local v1    # "steep":Z
    .end local v2    # "y":I
    .end local v14    # "xLimit":I
    .end local v15    # "x":I
    .restart local v18    # "steep":Z
    .restart local p1    # "xLimit":I
    :cond_92
    const/4 v1, 0x2

    if-ne v13, v1, :cond_9c

    .line 356
    add-int v1, v6, v12

    invoke-static {v1, v7, v4, v5}, Lcom/google/zxing/common/detector/MathUtils;->distance(IIII)F

    move-result v1

    return v1

    .line 359
    :cond_9c
    const/high16 v1, 0x7fc00000    # Float.NaN

    return v1
.end method

.method private sizeOfBlackWhiteBlackRunBothWays(IIII)F
    .registers 11
    .param p1, "fromX"    # I
    .param p2, "fromY"    # I
    .param p3, "toX"    # I
    .param p4, "toY"    # I

    .line 268
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/zxing/qrcode/detector/Detector;->sizeOfBlackWhiteBlackRun(IIII)F

    move-result v0

    .line 271
    .local v0, "result":F
    const/high16 v1, 0x3f800000    # 1.0f

    .line 272
    .local v1, "scale":F
    sub-int v2, p3, p1

    sub-int v2, p1, v2

    const/4 v3, 0x0

    .line 273
    .local v3, "otherToX":I
    move v3, v2

    if-gez v2, :cond_16

    .line 274
    int-to-float v2, p1

    sub-int v4, p1, v3

    int-to-float v4, v4

    div-float v1, v2, v4

    .line 275
    const/4 v3, 0x0

    goto :goto_35

    .line 276
    :cond_16
    iget-object v2, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v2

    if-lt v3, v2, :cond_35

    .line 277
    iget-object v2, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, p1

    int-to-float v2, v2

    sub-int v4, v3, p1

    int-to-float v4, v4

    div-float v1, v2, v4

    .line 278
    iget-object v2, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    .line 280
    :cond_35
    :goto_35
    int-to-float v2, p2

    sub-int v4, p4, p2

    int-to-float v4, v4

    mul-float v4, v4, v1

    sub-float/2addr v2, v4

    float-to-int v2, v2

    .line 282
    .local v2, "otherToY":I
    const/high16 v1, 0x3f800000    # 1.0f

    .line 283
    if-gez v2, :cond_49

    .line 284
    int-to-float v4, p2

    sub-int v5, p2, v2

    int-to-float v5, v5

    div-float v1, v4, v5

    .line 285
    const/4 v2, 0x0

    goto :goto_68

    .line 286
    :cond_49
    iget-object v4, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v4}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v4

    if-lt v2, v4, :cond_68

    .line 287
    iget-object v4, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v4}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, p2

    int-to-float v4, v4

    sub-int v5, v2, p2

    int-to-float v5, v5

    div-float v1, v4, v5

    .line 288
    iget-object v4, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v4}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .line 290
    :cond_68
    :goto_68
    int-to-float v4, p1

    sub-int v5, v3, p1

    int-to-float v5, v5

    mul-float v5, v5, v1

    add-float/2addr v4, v5

    float-to-int v3, v4

    .line 292
    invoke-direct {p0, p1, p2, v3, v2}, Lcom/google/zxing/qrcode/detector/Detector;->sizeOfBlackWhiteBlackRun(IIII)F

    move-result v4

    add-float/2addr v4, v0

    .line 295
    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v4, v5

    return v4
.end method


# virtual methods
.method protected final calculateModuleSize(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F
    .registers 6
    .param p1, "topLeft"    # Lcom/google/zxing/ResultPoint;
    .param p2, "topRight"    # Lcom/google/zxing/ResultPoint;
    .param p3, "bottomLeft"    # Lcom/google/zxing/ResultPoint;

    .line 232
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/qrcode/detector/Detector;->calculateModuleSizeOneWay(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v0

    .line 233
    invoke-direct {p0, p1, p3}, Lcom/google/zxing/qrcode/detector/Detector;->calculateModuleSizeOneWay(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 232
    return v0
.end method

.method public detect()Lcom/google/zxing/common/DetectorResult;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/zxing/qrcode/detector/Detector;->detect(Ljava/util/Map;)Lcom/google/zxing/common/DetectorResult;

    move-result-object v0

    return-object v0
.end method

.method public final detect(Ljava/util/Map;)Lcom/google/zxing/common/DetectorResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/DetectorResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 77
    .local p1, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_c

    :cond_4
    sget-object v0, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    .line 78
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/ResultPointCallback;

    :goto_c
    iput-object v0, p0, Lcom/google/zxing/qrcode/detector/Detector;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    .line 80
    new-instance v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;

    iget-object v1, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    iget-object v2, p0, Lcom/google/zxing/qrcode/detector/Detector;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V

    .line 81
    invoke-virtual {v0, p1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->find(Ljava/util/Map;)Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    move-result-object v0

    .line 83
    .local v0, "info":Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    invoke-virtual {p0, v0}, Lcom/google/zxing/qrcode/detector/Detector;->processFinderPatternInfo(Lcom/google/zxing/qrcode/detector/FinderPatternInfo;)Lcom/google/zxing/common/DetectorResult;

    move-result-object v1

    return-object v1
.end method

.method protected final findAlignmentInRegion(FIIF)Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    .registers 20
    .param p1, "overallEstModuleSize"    # F
    .param p2, "estAlignmentX"    # I
    .param p3, "estAlignmentY"    # I
    .param p4, "allowanceFactor"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 380
    move-object v0, p0

    mul-float v1, p4, p1

    float-to-int v1, v1

    .line 381
    .local v1, "allowance":I
    sub-int v2, p2, v1

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 382
    .local v2, "alignmentAreaLeftX":I
    iget-object v4, v0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v4}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    add-int v5, p2, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    .line 383
    .local v6, "alignmentAreaRightX":I
    move v12, v4

    .end local v6    # "alignmentAreaRightX":I
    .local v12, "alignmentAreaRightX":I
    sub-int/2addr v4, v2

    int-to-float v4, v4

    const/high16 v6, 0x40400000    # 3.0f

    mul-float v7, p1, v6

    cmpg-float v4, v4, v7

    if-ltz v4, :cond_5f

    .line 387
    sub-int v4, p3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 388
    .local v3, "alignmentAreaTopY":I
    iget-object v4, v0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v4}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    add-int v7, p3, v1

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 389
    .local v5, "alignmentAreaBottomY":I
    move v13, v4

    .end local v5    # "alignmentAreaBottomY":I
    .local v13, "alignmentAreaBottomY":I
    sub-int/2addr v4, v3

    int-to-float v4, v4

    mul-float v6, v6, p1

    cmpg-float v4, v4, v6

    if-ltz v4, :cond_5a

    .line 393
    new-instance v14, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;

    iget-object v5, v0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    sub-int v8, v12, v2

    sub-int v9, v13, v3

    iget-object v11, v0, Lcom/google/zxing/qrcode/detector/Detector;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    move-object v4, v14

    move v6, v2

    move v7, v3

    move/from16 v10, p1

    invoke-direct/range {v4 .. v11}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;IIIIFLcom/google/zxing/ResultPointCallback;)V

    .line 402
    invoke-virtual {v14}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->find()Lcom/google/zxing/qrcode/detector/AlignmentPattern;

    move-result-object v4

    return-object v4

    .line 390
    :cond_5a
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v4

    throw v4

    .line 384
    .end local v3    # "alignmentAreaTopY":I
    .end local v13    # "alignmentAreaBottomY":I
    :cond_5f
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v3

    throw v3
.end method

.method protected final getImage()Lcom/google/zxing/common/BitMatrix;
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    return-object v0
.end method

.method protected final getResultPointCallback()Lcom/google/zxing/ResultPointCallback;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/Detector;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    return-object v0
.end method

.method protected final processFinderPatternInfo(Lcom/google/zxing/qrcode/detector/FinderPatternInfo;)Lcom/google/zxing/common/DetectorResult;
    .registers 18
    .param p1, "info"    # Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 89
    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v2

    .line 90
    .local v2, "topLeft":Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopRight()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v3

    .line 91
    .local v3, "topRight":Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getBottomLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v4

    .line 93
    .local v4, "bottomLeft":Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/zxing/qrcode/detector/Detector;->calculateModuleSize(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v0

    const/4 v5, 0x0

    .line 94
    .local v5, "moduleSize":F
    move v5, v0

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v6

    if-ltz v0, :cond_ae

    .line 97
    invoke-static {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/detector/Detector;->computeDimension(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;F)I

    move-result v0

    const/4 v7, 0x0

    .line 98
    .local v7, "dimension":I
    move v7, v0

    invoke-static {v0}, Lcom/google/zxing/qrcode/decoder/Version;->getProvisionalVersionForDimension(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v0

    const/4 v8, 0x0

    .line 99
    .local v8, "provisionalVersion":Lcom/google/zxing/qrcode/decoder/Version;
    move-object v8, v0

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/Version;->getDimensionForVersion()I

    move-result v0

    add-int/lit8 v9, v0, -0x7

    .line 101
    .local v9, "modulesBetweenFPCenters":I
    const/4 v10, 0x0

    .line 103
    .local v10, "alignmentPattern":Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    invoke-virtual {v8}, Lcom/google/zxing/qrcode/decoder/Version;->getAlignmentPatternCenters()[I

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_82

    .line 106
    invoke-virtual {v3}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v0

    invoke-virtual {v2}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v11

    sub-float/2addr v0, v11

    invoke-virtual {v4}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v11

    add-float/2addr v11, v0

    .line 107
    .local v11, "bottomRightX":F
    invoke-virtual {v3}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v0

    invoke-virtual {v2}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v12

    sub-float/2addr v0, v12

    invoke-virtual {v4}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v12

    add-float/2addr v12, v0

    .line 111
    .local v12, "bottomRightY":F
    const/high16 v0, 0x40400000    # 3.0f

    int-to-float v13, v9

    div-float/2addr v0, v13

    sub-float/2addr v6, v0

    .line 112
    .local v6, "correctionToTopLeft":F
    invoke-virtual {v2}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v0

    invoke-virtual {v2}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v13

    sub-float v13, v11, v13

    mul-float v13, v13, v6

    add-float/2addr v0, v13

    float-to-int v13, v0

    .line 113
    .local v13, "estAlignmentX":I
    invoke-virtual {v2}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v0

    invoke-virtual {v2}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v14

    sub-float v14, v12, v14

    mul-float v14, v14, v6

    add-float/2addr v0, v14

    float-to-int v14, v0

    .line 116
    .local v14, "estAlignmentY":I
    const/4 v0, 0x4

    move v15, v0

    .local v15, "i":I
    :goto_73
    const/16 v0, 0x10

    if-gt v15, v0, :cond_82

    .line 118
    int-to-float v0, v15

    :try_start_78
    invoke-virtual {v1, v5, v13, v14, v0}, Lcom/google/zxing/qrcode/detector/Detector;->findAlignmentInRegion(FIIF)Lcom/google/zxing/qrcode/detector/AlignmentPattern;

    move-result-object v0
    :try_end_7c
    .catch Lcom/google/zxing/NotFoundException; {:try_start_78 .. :try_end_7c} :catch_7e

    move-object v10, v0

    .line 122
    goto :goto_82

    .line 123
    :catch_7e
    move-exception v0

    .line 116
    shl-int/lit8 v15, v15, 0x1

    goto :goto_73

    .line 130
    .end local v6    # "correctionToTopLeft":F
    .end local v11    # "bottomRightX":F
    .end local v12    # "bottomRightY":F
    .end local v13    # "estAlignmentX":I
    .end local v14    # "estAlignmentY":I
    .end local v15    # "i":I
    :cond_82
    :goto_82
    nop

    .line 131
    invoke-static {v2, v3, v4, v10, v7}, Lcom/google/zxing/qrcode/detector/Detector;->createTransform(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)Lcom/google/zxing/common/PerspectiveTransform;

    move-result-object v0

    .line 133
    .local v0, "transform":Lcom/google/zxing/common/PerspectiveTransform;
    iget-object v6, v1, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-static {v6, v0, v7}, Lcom/google/zxing/qrcode/detector/Detector;->sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/common/PerspectiveTransform;I)Lcom/google/zxing/common/BitMatrix;

    move-result-object v6

    .line 136
    .local v6, "bits":Lcom/google/zxing/common/BitMatrix;
    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-nez v10, :cond_9c

    .line 137
    new-array v11, v11, [Lcom/google/zxing/ResultPoint;

    aput-object v4, v11, v13

    aput-object v2, v11, v14

    aput-object v3, v11, v12

    .local v11, "points":[Lcom/google/zxing/ResultPoint;
    goto :goto_a8

    .line 139
    .end local v11    # "points":[Lcom/google/zxing/ResultPoint;
    :cond_9c
    const/4 v15, 0x4

    new-array v15, v15, [Lcom/google/zxing/ResultPoint;

    aput-object v4, v15, v13

    aput-object v2, v15, v14

    aput-object v3, v15, v12

    aput-object v10, v15, v11

    move-object v11, v15

    .line 141
    .restart local v11    # "points":[Lcom/google/zxing/ResultPoint;
    :goto_a8
    new-instance v12, Lcom/google/zxing/common/DetectorResult;

    invoke-direct {v12, v6, v11}, Lcom/google/zxing/common/DetectorResult;-><init>(Lcom/google/zxing/common/BitMatrix;[Lcom/google/zxing/ResultPoint;)V

    return-object v12

    .line 95
    .end local v0    # "transform":Lcom/google/zxing/common/PerspectiveTransform;
    .end local v6    # "bits":Lcom/google/zxing/common/BitMatrix;
    .end local v7    # "dimension":I
    .end local v8    # "provisionalVersion":Lcom/google/zxing/qrcode/decoder/Version;
    .end local v9    # "modulesBetweenFPCenters":I
    .end local v10    # "alignmentPattern":Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    .end local v11    # "points":[Lcom/google/zxing/ResultPoint;
    :cond_ae
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method
