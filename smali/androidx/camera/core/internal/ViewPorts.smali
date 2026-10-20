.class public Landroidx/camera/core/internal/ViewPorts;
.super Ljava/lang/Object;
.source "ViewPorts.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static calculateViewPortRects(Landroid/graphics/Rect;ZLandroid/util/Rational;IIILjava/util/Map;)Ljava/util/Map;
    .locals 15
    .param p0, "fullSensorRect"    # Landroid/graphics/Rect;
    .param p1, "isFrontCamera"    # Z
    .param p2, "viewPortAspectRatio"    # Landroid/util/Rational;
    .param p3, "outputRotationDegrees"    # I
    .param p4, "scaleType"    # I
    .param p5, "layoutDirection"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fullSensorRect",
            "isFrontCamera",
            "viewPortAspectRatio",
            "outputRotationDegrees",
            "scaleType",
            "layoutDirection",
            "useCaseSizes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Z",
            "Landroid/util/Rational;",
            "III",
            "Ljava/util/Map<",
            "Landroidx/camera/core/UseCase;",
            "Landroid/util/Size;",
            ">;)",
            "Ljava/util/Map<",
            "Landroidx/camera/core/UseCase;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 70
    .local p6, "useCaseSizes":Ljava/util/Map;, "Ljava/util/Map<Landroidx/camera/core/UseCase;Landroid/util/Size;>;"
    move-object v0, p0

    .line 71
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 70
    :goto_0
    const-string v2, "Cannot compute viewport crop rects zero sized sensor rect."

    invoke-static {v1, v2}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 80
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 81
    .local v1, "fullSensorRectF":Landroid/graphics/RectF;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 82
    .local v2, "useCaseToSensorTransformations":Ljava/util/Map;, "Ljava/util/Map<Landroidx/camera/core/UseCase;Landroid/graphics/Matrix;>;"
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 83
    .local v3, "sensorIntersectionRect":Landroid/graphics/RectF;
    invoke-interface/range {p6 .. p6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 85
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroidx/camera/core/UseCase;Landroid/util/Size;>;"
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 86
    .local v6, "useCaseToSensorTransformation":Landroid/graphics/Matrix;
    new-instance v7, Landroid/graphics/RectF;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Size;

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v8

    int-to-float v8, v8

    .line 87
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Size;

    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v9

    int-to-float v9, v9

    const/4 v10, 0x0

    invoke-direct {v7, v10, v10, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 88
    .local v7, "srcRect":Landroid/graphics/RectF;
    sget-object v8, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v6, v7, v1, v8}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 90
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/camera/core/UseCase;

    invoke-interface {v2, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    .line 94
    .local v8, "useCaseSensorRect":Landroid/graphics/RectF;
    invoke-virtual {v6, v8, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 95
    invoke-virtual {v3, v8}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    .line 96
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroidx/camera/core/UseCase;Landroid/util/Size;>;"
    .end local v6    # "useCaseToSensorTransformation":Landroid/graphics/Matrix;
    .end local v7    # "srcRect":Landroid/graphics/RectF;
    .end local v8    # "useCaseSensorRect":Landroid/graphics/RectF;
    goto :goto_1

    .line 99
    :cond_1
    move-object/from16 v10, p2

    move/from16 v11, p3

    invoke-static {v11, v10}, Landroidx/camera/core/internal/utils/ImageUtil;->getRotatedAspectRatio(ILandroid/util/Rational;)Landroid/util/Rational;

    move-result-object v12

    .line 101
    .local v12, "rotatedViewPortAspectRatio":Landroid/util/Rational;
    move-object v4, v3

    move-object v5, v12

    move/from16 v6, p4

    move/from16 v7, p1

    move/from16 v8, p5

    move/from16 v9, p3

    invoke-static/range {v4 .. v9}, Landroidx/camera/core/internal/ViewPorts;->getScaledRect(Landroid/graphics/RectF;Landroid/util/Rational;IZII)Landroid/graphics/RectF;

    move-result-object v4

    .line 106
    .local v4, "viewPortRect":Landroid/graphics/RectF;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 107
    .local v5, "useCaseOutputRects":Ljava/util/Map;, "Ljava/util/Map<Landroidx/camera/core/UseCase;Landroid/graphics/Rect;>;"
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    .line 108
    .local v6, "useCaseOutputRect":Landroid/graphics/RectF;
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 109
    .local v7, "sensorToUseCaseTransformation":Landroid/graphics/Matrix;
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 111
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroidx/camera/core/UseCase;Landroid/graphics/Matrix;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Matrix;

    invoke-virtual {v13, v7}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 112
    invoke-virtual {v7, v6, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 113
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 114
    .local v13, "outputCropRect":Landroid/graphics/Rect;
    invoke-virtual {v6, v13}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 115
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/camera/core/UseCase;

    invoke-interface {v5, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroidx/camera/core/UseCase;Landroid/graphics/Matrix;>;"
    .end local v13    # "outputCropRect":Landroid/graphics/Rect;
    goto :goto_2

    .line 117
    :cond_2
    return-object v5
.end method

.method private static correctStartOrEnd(ZILandroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 11
    .param p0, "isMirrored"    # Z
    .param p1, "rotationDegrees"    # I
    .param p2, "containerRect"    # Landroid/graphics/RectF;
    .param p3, "cropRect"    # Landroid/graphics/RectF;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "isMirrored",
            "rotationDegrees",
            "containerRect",
            "cropRect"
        }
    .end annotation

    .line 202
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    if-nez p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 208
    .local v2, "ltrRotation0":Z
    :goto_0
    const/16 v3, 0x5a

    if-ne p1, v3, :cond_1

    if-eqz p0, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 209
    .local v4, "rtlRotation90":Z
    :goto_1
    if-nez v2, :cond_f

    if-eqz v4, :cond_2

    goto/16 :goto_b

    .line 218
    :cond_2
    if-nez p1, :cond_3

    if-eqz p0, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    .line 224
    .local v5, "rtlRotation0":Z
    :goto_2
    const/16 v6, 0x10e

    if-ne p1, v6, :cond_4

    if-nez p0, :cond_4

    const/4 v7, 0x1

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    .line 225
    .local v7, "ltrRotation270":Z
    :goto_3
    if-nez v5, :cond_e

    if-eqz v7, :cond_5

    goto :goto_a

    .line 234
    :cond_5
    if-ne p1, v3, :cond_6

    if-nez p0, :cond_6

    const/4 v3, 0x1

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    .line 240
    .local v3, "ltrRotation90":Z
    :goto_4
    const/16 v8, 0xb4

    if-ne p1, v8, :cond_7

    if-eqz p0, :cond_7

    const/4 v9, 0x1

    goto :goto_5

    :cond_7
    const/4 v9, 0x0

    .line 241
    .local v9, "rtlRotation180":Z
    :goto_5
    if-nez v3, :cond_d

    if-eqz v9, :cond_8

    goto :goto_9

    .line 250
    :cond_8
    if-ne p1, v8, :cond_9

    if-nez p0, :cond_9

    const/4 v8, 0x1

    goto :goto_6

    :cond_9
    const/4 v8, 0x0

    .line 256
    .local v8, "ltrRotation180":Z
    :goto_6
    if-ne p1, v6, :cond_a

    if-eqz p0, :cond_a

    goto :goto_7

    :cond_a
    const/4 v0, 0x0

    .line 257
    .local v0, "rtlRotation270":Z
    :goto_7
    if-nez v8, :cond_c

    if-eqz v0, :cond_b

    goto :goto_8

    .line 262
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid argument: mirrored "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " rotation "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 258
    :cond_c
    :goto_8
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-static {p3, v1}, Landroidx/camera/core/internal/ViewPorts;->flipVertically(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v1

    .line 259
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    .line 258
    invoke-static {v1, v6}, Landroidx/camera/core/internal/ViewPorts;->flipHorizontally(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v1

    return-object v1

    .line 242
    .end local v0    # "rtlRotation270":Z
    .end local v8    # "ltrRotation180":Z
    :cond_d
    :goto_9
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    invoke-static {p3, v0}, Landroidx/camera/core/internal/ViewPorts;->flipVertically(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0

    .line 226
    .end local v3    # "ltrRotation90":Z
    .end local v9    # "rtlRotation180":Z
    :cond_e
    :goto_a
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-static {p3, v0}, Landroidx/camera/core/internal/ViewPorts;->flipHorizontally(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0

    .line 210
    .end local v5    # "rtlRotation0":Z
    .end local v7    # "ltrRotation270":Z
    :cond_f
    :goto_b
    return-object p3
.end method

.method private static flipHorizontally(Landroid/graphics/RectF;F)Landroid/graphics/RectF;
    .locals 5
    .param p0, "original"    # Landroid/graphics/RectF;
    .param p1, "flipLineX"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "original",
            "flipLineX"
        }
    .end annotation

    .line 278
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Landroid/graphics/RectF;->right:F

    .line 279
    invoke-static {v1, p1}, Landroidx/camera/core/internal/ViewPorts;->flipX(FF)F

    move-result v1

    iget v2, p0, Landroid/graphics/RectF;->top:F

    iget v3, p0, Landroid/graphics/RectF;->left:F

    .line 281
    invoke-static {v3, p1}, Landroidx/camera/core/internal/ViewPorts;->flipX(FF)F

    move-result v3

    iget v4, p0, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 278
    return-object v0
.end method

.method private static flipVertically(Landroid/graphics/RectF;F)Landroid/graphics/RectF;
    .locals 5
    .param p0, "original"    # Landroid/graphics/RectF;
    .param p1, "flipLineY"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "original",
            "flipLineY"
        }
    .end annotation

    .line 286
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    .line 288
    invoke-static {v2, p1}, Landroidx/camera/core/internal/ViewPorts;->flipY(FF)F

    move-result v2

    iget v3, p0, Landroid/graphics/RectF;->right:F

    iget v4, p0, Landroid/graphics/RectF;->top:F

    .line 290
    invoke-static {v4, p1}, Landroidx/camera/core/internal/ViewPorts;->flipY(FF)F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 286
    return-object v0
.end method

.method private static flipX(FF)F
    .locals 1
    .param p0, "x"    # F
    .param p1, "flipLineX"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "flipLineX"
        }
    .end annotation

    .line 294
    add-float v0, p1, p1

    sub-float/2addr v0, p0

    return v0
.end method

.method private static flipY(FF)F
    .locals 1
    .param p0, "y"    # F
    .param p1, "flipLineY"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "y",
            "flipLineY"
        }
    .end annotation

    .line 298
    add-float v0, p1, p1

    sub-float/2addr v0, p0

    return v0
.end method

.method public static getScaledRect(Landroid/graphics/RectF;Landroid/util/Rational;IZII)Landroid/graphics/RectF;
    .locals 5
    .param p0, "fittingRect"    # Landroid/graphics/RectF;
    .param p1, "containerAspectRatio"    # Landroid/util/Rational;
    .param p2, "scaleType"    # I
    .param p3, "isFrontCamera"    # Z
    .param p4, "layoutDirection"    # I
    .param p5, "rotationDegrees"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fittingRect",
            "containerAspectRatio",
            "scaleType",
            "isFrontCamera",
            "layoutDirection",
            "rotationDegrees"
        }
    .end annotation

    .line 138
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 140
    return-object p0

    .line 148
    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 149
    .local v0, "viewPortToSurfaceTransformation":Landroid/graphics/Matrix;
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/util/Rational;->getNumerator()I

    move-result v2

    int-to-float v2, v2

    .line 150
    invoke-virtual {p1}, Landroid/util/Rational;->getDenominator()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 151
    .local v1, "viewPortRect":Landroid/graphics/RectF;
    packed-switch p2, :pswitch_data_0

    .line 165
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected scale type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 161
    :pswitch_0
    sget-object v2, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, p0, v2}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 163
    goto :goto_0

    .line 153
    :pswitch_1
    sget-object v2, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, p0, v2}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 155
    goto :goto_0

    .line 157
    :pswitch_2
    sget-object v2, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, p0, v2}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 159
    nop

    .line 168
    :goto_0
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 169
    .local v2, "viewPortRectInSurfaceCoordinates":Landroid/graphics/RectF;
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 172
    nop

    .line 173
    invoke-static {p3, p4}, Landroidx/camera/core/internal/ViewPorts;->shouldMirrorStartAndEnd(ZI)Z

    move-result v3

    .line 172
    invoke-static {v3, p5, p0, v2}, Landroidx/camera/core/internal/ViewPorts;->correctStartOrEnd(ZILandroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v3

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static shouldMirrorStartAndEnd(ZI)Z
    .locals 1
    .param p0, "isFrontCamera"    # Z
    .param p1, "layoutDirection"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isFrontCamera",
            "layoutDirection"
        }
    .end annotation

    .line 274
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, p0

    return v0
.end method
