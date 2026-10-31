.class public final Lcom/google/zxing/common/detector/MonochromeRectangleDetector;
.super Ljava/lang/Object;
.source "MonochromeRectangleDetector.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final MAX_MODULES:I = 0x20


# instance fields
.field private final image:Lcom/google/zxing/common/BitMatrix;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .registers 2
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    .line 40
    return-void
.end method

.method private blackWhiteRange(IIIIZ)[I
    .registers 11
    .param p1, "fixedDimension"    # I
    .param p2, "maxWhiteRun"    # I
    .param p3, "minDim"    # I
    .param p4, "maxDim"    # I
    .param p5, "horizontal"    # Z

    .line 172
    add-int v0, p3, p4

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    .line 175
    .local v1, "center":I
    move v1, v0

    .line 176
    .local v0, "start":I
    :goto_6
    if-lt v0, p3, :cond_3c

    .line 177
    iget-object v2, p0, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    if-eqz p5, :cond_13

    invoke-virtual {v2, v0, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    if-eqz v2, :cond_1c

    goto :goto_19

    :cond_13
    invoke-virtual {v2, p1, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 178
    :goto_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 180
    :cond_1c
    move v2, v0

    .line 182
    .local v2, "whiteRunStart":I
    :cond_1d
    add-int/lit8 v0, v0, -0x1

    .line 183
    if-lt v0, p3, :cond_32

    iget-object v3, p0, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    if-eqz p5, :cond_2c

    invoke-virtual {v3, v0, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_1d

    goto :goto_32

    .line 184
    :cond_2c
    invoke-virtual {v3, p1, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 185
    :cond_32
    :goto_32
    sub-int v3, v2, v0

    .line 186
    .local v3, "whiteRunSize":I
    if-lt v0, p3, :cond_3a

    if-le v3, p2, :cond_39

    goto :goto_3a

    .line 190
    .end local v2    # "whiteRunStart":I
    .end local v3    # "whiteRunSize":I
    :cond_39
    goto :goto_6

    .line 187
    .restart local v2    # "whiteRunStart":I
    .restart local v3    # "whiteRunSize":I
    :cond_3a
    :goto_3a
    move v0, v2

    .line 188
    nop

    .line 192
    .end local v2    # "whiteRunStart":I
    .end local v3    # "whiteRunSize":I
    :cond_3c
    add-int/lit8 v0, v0, 0x1

    .line 195
    move v2, v1

    .line 196
    .local v2, "end":I
    :goto_3f
    if-ge v2, p4, :cond_75

    .line 197
    iget-object v3, p0, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    if-eqz p5, :cond_4c

    invoke-virtual {v3, v2, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_55

    goto :goto_52

    :cond_4c
    invoke-virtual {v3, p1, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 198
    :goto_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    .line 200
    :cond_55
    move v3, v2

    .line 202
    .local v3, "whiteRunStart":I
    :cond_56
    add-int/lit8 v2, v2, 0x1

    .line 203
    if-ge v2, p4, :cond_6b

    iget-object v4, p0, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    if-eqz p5, :cond_65

    invoke-virtual {v4, v2, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v4

    if-eqz v4, :cond_56

    goto :goto_6b

    .line 204
    :cond_65
    invoke-virtual {v4, p1, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 205
    :cond_6b
    :goto_6b
    sub-int v4, v2, v3

    .line 206
    .local v4, "whiteRunSize":I
    if-ge v2, p4, :cond_73

    if-le v4, p2, :cond_72

    goto :goto_73

    .line 210
    .end local v3    # "whiteRunStart":I
    .end local v4    # "whiteRunSize":I
    :cond_72
    goto :goto_3f

    .line 207
    .restart local v3    # "whiteRunStart":I
    .restart local v4    # "whiteRunSize":I
    :cond_73
    :goto_73
    move v2, v3

    .line 208
    nop

    .line 212
    .end local v3    # "whiteRunStart":I
    .end local v4    # "whiteRunSize":I
    :cond_75
    add-int/lit8 v2, v2, -0x1

    .line 214
    if-le v2, v0, :cond_7e

    filled-new-array {v0, v2}, [I

    move-result-object v3

    return-object v3

    :cond_7e
    const/4 v3, 0x0

    return-object v3
.end method

.method private findCornerFromCenter(IIIIIIIII)Lcom/google/zxing/ResultPoint;
    .registers 25
    .param p1, "centerX"    # I
    .param p2, "deltaX"    # I
    .param p3, "left"    # I
    .param p4, "right"    # I
    .param p5, "centerY"    # I
    .param p6, "deltaY"    # I
    .param p7, "top"    # I
    .param p8, "bottom"    # I
    .param p9, "maxWhiteRun"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 111
    move/from16 v0, p1

    move/from16 v1, p5

    const/4 v2, 0x0

    .line 112
    .local v2, "lastRange":[I
    move/from16 v3, p5

    .local v3, "y":I
    move/from16 v4, p1

    move v9, v3

    move v10, v4

    .line 113
    .end local v3    # "y":I
    .local v9, "y":I
    .local v10, "x":I
    :goto_b
    move/from16 v11, p8

    if-ge v9, v11, :cond_aa

    move/from16 v12, p7

    if-lt v9, v12, :cond_a5

    move/from16 v13, p4

    if-ge v10, v13, :cond_a2

    move/from16 v14, p3

    if-lt v10, v14, :cond_b0

    .line 116
    if-nez p2, :cond_2b

    .line 118
    const/4 v8, 0x1

    move-object v3, p0

    move v4, v9

    move/from16 v5, p9

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-direct/range {v3 .. v8}, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->blackWhiteRange(IIIIZ)[I

    move-result-object v3

    .local v3, "range":[I
    goto :goto_38

    .line 121
    .end local v3    # "range":[I
    :cond_2b
    const/4 v8, 0x0

    move-object v3, p0

    move v4, v10

    move/from16 v5, p9

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v3 .. v8}, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->blackWhiteRange(IIIIZ)[I

    move-result-object v3

    .line 123
    .restart local v3    # "range":[I
    :goto_38
    if-nez v3, :cond_9b

    .line 124
    if-eqz v2, :cond_96

    .line 128
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p2, :cond_6b

    .line 129
    sub-int v6, v9, p6

    .line 130
    .local v6, "lastY":I
    aget v7, v2, v5

    if-ge v7, v0, :cond_61

    .line 131
    aget v7, v2, v4

    if-le v7, v0, :cond_57

    .line 133
    new-instance v7, Lcom/google/zxing/ResultPoint;

    if-lez p6, :cond_4f

    const/4 v4, 0x0

    :cond_4f
    aget v4, v2, v4

    int-to-float v4, v4

    int-to-float v5, v6

    invoke-direct {v7, v4, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    return-object v7

    .line 135
    :cond_57
    new-instance v4, Lcom/google/zxing/ResultPoint;

    aget v5, v2, v5

    int-to-float v5, v5

    int-to-float v7, v6

    invoke-direct {v4, v5, v7}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    return-object v4

    .line 137
    :cond_61
    new-instance v5, Lcom/google/zxing/ResultPoint;

    aget v4, v2, v4

    int-to-float v4, v4

    int-to-float v7, v6

    invoke-direct {v5, v4, v7}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    return-object v5

    .line 140
    .end local v6    # "lastY":I
    :cond_6b
    sub-int v6, v10, p2

    .line 141
    .local v6, "lastX":I
    aget v7, v2, v5

    if-ge v7, v1, :cond_8c

    .line 142
    aget v7, v2, v4

    if-le v7, v1, :cond_82

    .line 143
    new-instance v7, Lcom/google/zxing/ResultPoint;

    int-to-float v8, v6

    if-gez p2, :cond_7b

    const/4 v4, 0x0

    :cond_7b
    aget v4, v2, v4

    int-to-float v4, v4

    invoke-direct {v7, v8, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    return-object v7

    .line 145
    :cond_82
    new-instance v4, Lcom/google/zxing/ResultPoint;

    int-to-float v7, v6

    aget v5, v2, v5

    int-to-float v5, v5

    invoke-direct {v4, v7, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    return-object v4

    .line 147
    :cond_8c
    new-instance v5, Lcom/google/zxing/ResultPoint;

    int-to-float v7, v6

    aget v4, v2, v4

    int-to-float v4, v4

    invoke-direct {v5, v7, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    return-object v5

    .line 125
    .end local v6    # "lastX":I
    :cond_96
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v4

    throw v4

    .line 151
    :cond_9b
    move-object v2, v3

    .line 114
    .end local v3    # "range":[I
    add-int v9, v9, p6

    add-int v10, v10, p2

    goto/16 :goto_b

    .line 113
    :cond_a2
    move/from16 v14, p3

    goto :goto_b0

    :cond_a5
    move/from16 v14, p3

    move/from16 v13, p4

    goto :goto_b0

    :cond_aa
    move/from16 v14, p3

    move/from16 v13, p4

    move/from16 v12, p7

    .line 153
    .end local v9    # "y":I
    .end local v10    # "x":I
    :cond_b0
    :goto_b0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v3

    throw v3
.end method


# virtual methods
.method public detect()[Lcom/google/zxing/ResultPoint;
    .registers 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 53
    move-object/from16 v10, p0

    iget-object v0, v10, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v11

    .line 54
    .local v11, "height":I
    iget-object v0, v10, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v12

    .line 55
    .local v12, "width":I
    div-int/lit8 v13, v11, 0x2

    .line 56
    .local v13, "halfHeight":I
    div-int/lit8 v14, v12, 0x2

    .line 57
    .local v14, "halfWidth":I
    div-int/lit16 v0, v11, 0x100

    const/4 v15, 0x1

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 58
    .local v9, "deltaY":I
    div-int/lit16 v0, v12, 0x100

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    .local v8, "deltaX":I
    const/4 v0, 0x0

    move/from16 v16, v0

    .local v16, "bottom":I
    move/from16 v17, v0

    .local v17, "left":I
    move/from16 v18, v0

    .local v18, "right":I
    move/from16 v19, v0

    .line 64
    .local v19, "top":I
    neg-int v6, v9

    div-int/lit8 v20, v14, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v1, v14

    move v4, v12

    move v5, v13

    move/from16 v21, v8

    .end local v8    # "deltaX":I
    .local v21, "deltaX":I
    move v8, v11

    move/from16 v22, v9

    .end local v9    # "deltaY":I
    .local v22, "deltaY":I
    move/from16 v9, v20

    invoke-direct/range {v0 .. v9}, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->findCornerFromCenter(IIIIIIIII)Lcom/google/zxing/ResultPoint;

    move-result-object v0

    const/16 v20, 0x0

    move-object/from16 v23, v20

    .line 66
    .local v23, "pointA":Lcom/google/zxing/ResultPoint;
    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v19, v0, -0x1

    .line 67
    move/from16 v9, v21

    .end local v21    # "deltaX":I
    .local v9, "deltaX":I
    neg-int v2, v9

    div-int/lit8 v21, v13, 0x2

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v7, v19

    move/from16 v24, v9

    .end local v9    # "deltaX":I
    .local v24, "deltaX":I
    move/from16 v9, v21

    invoke-direct/range {v0 .. v9}, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->findCornerFromCenter(IIIIIIIII)Lcom/google/zxing/ResultPoint;

    move-result-object v0

    move-object/from16 v1, v20

    .line 69
    .local v1, "pointB":Lcom/google/zxing/ResultPoint;
    move-object/from16 v21, v0

    .end local v1    # "pointB":Lcom/google/zxing/ResultPoint;
    .local v21, "pointB":Lcom/google/zxing/ResultPoint;
    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v17, v0, -0x1

    .line 70
    div-int/lit8 v9, v13, 0x2

    move-object/from16 v0, p0

    move v1, v14

    move/from16 v2, v24

    move/from16 v3, v17

    invoke-direct/range {v0 .. v9}, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->findCornerFromCenter(IIIIIIIII)Lcom/google/zxing/ResultPoint;

    move-result-object v0

    move-object/from16 v1, v20

    .line 72
    .local v1, "pointC":Lcom/google/zxing/ResultPoint;
    move-object/from16 v25, v0

    .end local v1    # "pointC":Lcom/google/zxing/ResultPoint;
    .local v25, "pointC":Lcom/google/zxing/ResultPoint;
    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v18, v0, 0x1

    .line 73
    div-int/lit8 v9, v14, 0x2

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move v1, v14

    move/from16 v4, v18

    move/from16 v6, v22

    invoke-direct/range {v0 .. v9}, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->findCornerFromCenter(IIIIIIIII)Lcom/google/zxing/ResultPoint;

    move-result-object v0

    move-object/from16 v1, v20

    .line 75
    .local v1, "pointD":Lcom/google/zxing/ResultPoint;
    move-object/from16 v20, v0

    .end local v1    # "pointD":Lcom/google/zxing/ResultPoint;
    .local v20, "pointD":Lcom/google/zxing/ResultPoint;
    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v16, v0, 0x1

    .line 78
    move/from16 v9, v22

    .end local v22    # "deltaY":I
    .local v9, "deltaY":I
    neg-int v6, v9

    div-int/lit8 v22, v14, 0x4

    move-object/from16 v0, p0

    move v1, v14

    move/from16 v8, v16

    move/from16 v26, v9

    .end local v9    # "deltaY":I
    .local v26, "deltaY":I
    move/from16 v9, v22

    invoke-direct/range {v0 .. v9}, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->findCornerFromCenter(IIIIIIIII)Lcom/google/zxing/ResultPoint;

    move-result-object v0

    .line 81
    .end local v23    # "pointA":Lcom/google/zxing/ResultPoint;
    .local v0, "pointA":Lcom/google/zxing/ResultPoint;
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/google/zxing/ResultPoint;

    aput-object v0, v1, v2

    aput-object v21, v1, v15

    const/4 v2, 0x2

    aput-object v25, v1, v2

    const/4 v2, 0x3

    aput-object v20, v1, v2

    return-object v1
.end method
