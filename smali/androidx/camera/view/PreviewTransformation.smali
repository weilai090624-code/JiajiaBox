.class final Landroidx/camera/view/PreviewTransformation;
.super Ljava/lang/Object;
.source "PreviewTransformation.java"


# static fields
.field private static final DEFAULT_SCALE_TYPE:Landroidx/camera/view/PreviewView$ScaleType;

.field private static final TAG:Ljava/lang/String; = "PreviewTransform"


# instance fields
.field private mIsFrontCamera:Z

.field private mPreviewRotationDegrees:I

.field private mResolution:Landroid/util/Size;

.field private mScaleType:Landroidx/camera/view/PreviewView$ScaleType;

.field private mSurfaceCropRect:Landroid/graphics/Rect;

.field private mTargetRotation:I

.field private mViewportRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 101
    sget-object v0, Landroidx/camera/view/PreviewView$ScaleType;->FILL_CENTER:Landroidx/camera/view/PreviewView$ScaleType;

    sput-object v0, Landroidx/camera/view/PreviewTransformation;->DEFAULT_SCALE_TYPE:Landroidx/camera/view/PreviewView$ScaleType;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    sget-object v0, Landroidx/camera/view/PreviewTransformation;->DEFAULT_SCALE_TYPE:Landroidx/camera/view/PreviewView$ScaleType;

    iput-object v0, p0, Landroidx/camera/view/PreviewTransformation;->mScaleType:Landroidx/camera/view/PreviewView$ScaleType;

    .line 121
    return-void
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

    .line 369
    new-instance v0, Landroid/graphics/RectF;

    add-float v1, p1, p1

    iget v2, p0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    iget v2, p0, Landroid/graphics/RectF;->top:F

    add-float v3, p1, p1

    iget v4, p0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    iget v4, p0, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method private getCorrectedCropRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 7
    .param p1, "surfaceCropRect"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surfaceCropRect"
        }
    .end annotation

    .line 283
    const-class v0, Landroidx/camera/view/internal/compat/quirk/PreviewOneThirdWiderQuirk;

    invoke-static {v0}, Landroidx/camera/view/internal/compat/quirk/DeviceQuirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object v0

    check-cast v0, Landroidx/camera/view/internal/compat/quirk/PreviewOneThirdWiderQuirk;

    .line 284
    .local v0, "quirk":Landroidx/camera/view/internal/compat/quirk/PreviewOneThirdWiderQuirk;
    if-eqz v0, :cond_0

    .line 286
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 287
    .local v1, "cropRectF":Landroid/graphics/RectF;
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 288
    .local v2, "correction":Landroid/graphics/Matrix;
    nop

    .line 289
    invoke-virtual {v0}, Landroidx/camera/view/internal/compat/quirk/PreviewOneThirdWiderQuirk;->getCropRectScaleX()F

    move-result v3

    .line 291
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    .line 292
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    int-to-float v5, v5

    .line 288
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 293
    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 294
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 295
    .local v3, "correctRect":Landroid/graphics/Rect;
    invoke-virtual {v1, v3}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 296
    return-object v3

    .line 298
    .end local v1    # "cropRectF":Landroid/graphics/RectF;
    .end local v2    # "correction":Landroid/graphics/Matrix;
    .end local v3    # "correctRect":Landroid/graphics/Rect;
    :cond_0
    return-object p1
.end method

.method private getRotatedViewportSize()Landroid/util/Size;
    .locals 3

    .line 380
    iget v0, p0, Landroidx/camera/view/PreviewTransformation;->mPreviewRotationDegrees:I

    invoke-static {v0}, Landroidx/camera/view/TransformUtils;->is90or270(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Landroidx/camera/view/PreviewTransformation;->mViewportRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v2, p0, Landroidx/camera/view/PreviewTransformation;->mViewportRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0

    .line 383
    :cond_0
    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Landroidx/camera/view/PreviewTransformation;->mViewportRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Landroidx/camera/view/PreviewTransformation;->mViewportRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method private getTransformedSurfaceRect(Landroid/util/Size;I)Landroid/graphics/RectF;
    .locals 5
    .param p1, "previewViewSize"    # Landroid/util/Size;
    .param p2, "layoutDirection"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "previewViewSize",
            "layoutDirection"
        }
    .end annotation

    .line 225
    invoke-direct {p0}, Landroidx/camera/view/PreviewTransformation;->isTransformationInfoReady()Z

    move-result v0

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkState(Z)V

    .line 226
    nop

    .line 227
    invoke-virtual {p0, p1, p2}, Landroidx/camera/view/PreviewTransformation;->getSurfaceToPreviewViewMatrix(Landroid/util/Size;I)Landroid/graphics/Matrix;

    move-result-object v0

    .line 228
    .local v0, "surfaceToPreviewView":Landroid/graphics/Matrix;
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Landroidx/camera/view/PreviewTransformation;->mResolution:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Landroidx/camera/view/PreviewTransformation;->mResolution:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 229
    .local v1, "rect":Landroid/graphics/RectF;
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 230
    return-object v1
.end method

.method private isTransformationInfoReady()Z
    .locals 1

    .line 471
    iget-object v0, p0, Landroidx/camera/view/PreviewTransformation;->mSurfaceCropRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/camera/view/PreviewTransformation;->mResolution:Landroid/util/Size;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static setMatrixRectToRect(Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroidx/camera/view/PreviewView$ScaleType;)V
    .locals 2
    .param p0, "matrix"    # Landroid/graphics/Matrix;
    .param p1, "source"    # Landroid/graphics/RectF;
    .param p2, "destination"    # Landroid/graphics/RectF;
    .param p3, "scaleType"    # Landroidx/camera/view/PreviewView$ScaleType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "matrix",
            "source",
            "destination",
            "scaleType"
        }
    .end annotation

    .line 333
    sget-object v0, Landroidx/camera/view/PreviewTransformation$1;->$SwitchMap$androidx$camera$view$PreviewView$ScaleType:[I

    invoke-virtual {p3}, Landroidx/camera/view/PreviewView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected crop rect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreviewTransform"

    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    .local v0, "matrixScaleType":Landroid/graphics/Matrix$ScaleToFit;
    goto :goto_0

    .line 347
    .end local v0    # "matrixScaleType":Landroid/graphics/Matrix$ScaleToFit;
    :pswitch_0
    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    .line 348
    .restart local v0    # "matrixScaleType":Landroid/graphics/Matrix$ScaleToFit;
    goto :goto_0

    .line 342
    .end local v0    # "matrixScaleType":Landroid/graphics/Matrix$ScaleToFit;
    :pswitch_1
    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    .line 343
    .restart local v0    # "matrixScaleType":Landroid/graphics/Matrix$ScaleToFit;
    goto :goto_0

    .line 337
    .end local v0    # "matrixScaleType":Landroid/graphics/Matrix$ScaleToFit;
    :pswitch_2
    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    .line 338
    .restart local v0    # "matrixScaleType":Landroid/graphics/Matrix$ScaleToFit;
    nop

    .line 353
    :goto_0
    sget-object v1, Landroidx/camera/view/PreviewView$ScaleType;->FIT_CENTER:Landroidx/camera/view/PreviewView$ScaleType;

    if-eq p3, v1, :cond_1

    sget-object v1, Landroidx/camera/view/PreviewView$ScaleType;->FIT_START:Landroidx/camera/view/PreviewView$ScaleType;

    if-eq p3, v1, :cond_1

    sget-object v1, Landroidx/camera/view/PreviewView$ScaleType;->FIT_END:Landroidx/camera/view/PreviewView$ScaleType;

    if-ne p3, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v1, 0x1

    .line 355
    .local v1, "isFitTypes":Z
    :goto_2
    if-eqz v1, :cond_2

    .line 356
    invoke-virtual {p0, p1, p2, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_3

    .line 360
    :cond_2
    invoke-virtual {p0, p2, p1, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 361
    invoke-virtual {p0, p0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 363
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method createTransformedBitmap(Landroid/graphics/Bitmap;Landroid/util/Size;I)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "original"    # Landroid/graphics/Bitmap;
    .param p2, "previewViewSize"    # Landroid/util/Size;
    .param p3, "layoutDirection"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "original",
            "previewViewSize",
            "layoutDirection"
        }
    .end annotation

    .line 420
    invoke-direct {p0}, Landroidx/camera/view/PreviewTransformation;->isTransformationInfoReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 421
    return-object p1

    .line 423
    :cond_0
    invoke-virtual {p0}, Landroidx/camera/view/PreviewTransformation;->getTextureViewCorrectionMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 424
    .local v0, "textureViewCorrection":Landroid/graphics/Matrix;
    invoke-direct {p0, p2, p3}, Landroidx/camera/view/PreviewTransformation;->getTransformedSurfaceRect(Landroid/util/Size;I)Landroid/graphics/RectF;

    move-result-object v1

    .line 427
    .local v1, "surfaceRectInPreviewView":Landroid/graphics/RectF;
    nop

    .line 428
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    .line 427
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 429
    .local v2, "transformed":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 431
    .local v3, "canvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 432
    .local v4, "canvasTransform":Landroid/graphics/Matrix;
    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 433
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v5

    iget-object v6, p0, Landroidx/camera/view/PreviewTransformation;->mResolution:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 434
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v6

    iget-object v7, p0, Landroidx/camera/view/PreviewTransformation;->mResolution:Landroid/util/Size;

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 433
    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 435
    iget v5, v1, Landroid/graphics/RectF;->left:F

    iget v6, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 437
    new-instance v5, Landroid/graphics/Paint;

    const/4 v6, 0x7

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v3, p1, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 439
    return-object v2
.end method

.method getPreviewViewToNormalizedSurfaceMatrix(Landroid/util/Size;I)Landroid/graphics/Matrix;
    .locals 6
    .param p1, "previewViewSize"    # Landroid/util/Size;
    .param p2, "layoutDirection"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "previewViewSize",
            "layoutDirection"
        }
    .end annotation

    .line 452
    invoke-direct {p0}, Landroidx/camera/view/PreviewTransformation;->isTransformationInfoReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 453
    const/4 v0, 0x0

    return-object v0

    .line 455
    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 458
    .local v0, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {p0, p1, p2}, Landroidx/camera/view/PreviewTransformation;->getSurfaceToPreviewViewMatrix(Landroid/util/Size;I)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 461
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 462
    .local v1, "normalization":Landroid/graphics/Matrix;
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Landroidx/camera/view/PreviewTransformation;->mResolution:Landroid/util/Size;

    .line 463
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Landroidx/camera/view/PreviewTransformation;->mResolution:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v3, Landroid/graphics/RectF;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v5, v5, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    .line 462
    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 465
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 467
    return-object v0
.end method

.method getPreviewViewViewportRectForMismatchedAspectRatios(Landroid/util/Size;I)Landroid/graphics/RectF;
    .locals 6
    .param p1, "previewViewSize"    # Landroid/util/Size;
    .param p2, "layoutDirection"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "previewViewSize",
            "layoutDirection"
        }
    .end annotation

    .line 310
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 311
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 312
    .local v0, "previewViewRect":Landroid/graphics/RectF;
    invoke-direct {p0}, Landroidx/camera/view/PreviewTransformation;->getRotatedViewportSize()Landroid/util/Size;

    move-result-object v1

    .line 313
    .local v1, "rotatedViewportSize":Landroid/util/Size;
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v4

    int-to-float v4, v4

    .line 314
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v2, v3, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 315
    .local v2, "rotatedViewportRect":Landroid/graphics/RectF;
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 316
    .local v3, "matrix":Landroid/graphics/Matrix;
    iget-object v4, p0, Landroidx/camera/view/PreviewTransformation;->mScaleType:Landroidx/camera/view/PreviewView$ScaleType;

    invoke-static {v3, v2, v0, v4}, Landroidx/camera/view/PreviewTransformation;->setMatrixRectToRect(Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroidx/camera/view/PreviewView$ScaleType;)V

    .line 317
    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 318
    const/4 v4, 0x1

    if-ne p2, v4, :cond_0

    .line 319
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-static {v2, v4}, Landroidx/camera/view/PreviewTransformation;->flipHorizontally(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v4

    return-object v4

    .line 321
    :cond_0
    return-object v2
.end method

.method getScaleType()Landroidx/camera/view/PreviewView$ScaleType;
    .locals 1

    .line 215
    iget-object v0, p0, Landroidx/camera/view/PreviewTransformation;->mScaleType:Landroidx/camera/view/PreviewView$ScaleType;

    return-object v0
.end method

.method getSurfaceCropRect()Landroid/graphics/Rect;
    .locals 1

    .line 407
    iget-object v0, p0, Landroidx/camera/view/PreviewTransformation;->mSurfaceCropRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method getSurfaceToPreviewViewMatrix(Landroid/util/Size;I)Landroid/graphics/Matrix;
    .locals 6
    .param p1, "previewViewSize"    # Landroid/util/Size;
    .param p2, "layoutDirection"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "previewViewSize",
            "layoutDirection"
        }
    .end annotation

    .line 240
    invoke-direct {p0}, Landroidx/camera/view/PreviewTransformation;->isTransformationInfoReady()Z

    move-result v0

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkState(Z)V

    .line 244
    invoke-virtual {p0, p1}, Landroidx/camera/view/PreviewTransformation;->isViewportAspectRatioMatchPreviewView(Landroid/util/Size;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 249
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .local v0, "previewViewCropRect":Landroid/graphics/RectF;
    goto :goto_0

    .line 253
    .end local v0    # "previewViewCropRect":Landroid/graphics/RectF;
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/camera/view/PreviewTransformation;->getPreviewViewViewportRectForMismatchedAspectRatios(Landroid/util/Size;I)Landroid/graphics/RectF;

    move-result-object v0

    .line 256
    .restart local v0    # "previewViewCropRect":Landroid/graphics/RectF;
    :goto_0
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Landroidx/camera/view/PreviewTransformation;->mSurfaceCropRect:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget v2, p0, Landroidx/camera/view/PreviewTransformation;->mPreviewRotationDegrees:I

    invoke-static {v1, v0, v2}, Landroidx/camera/view/TransformUtils;->getRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;I)Landroid/graphics/Matrix;

    move-result-object v1

    .line 258
    .local v1, "matrix":Landroid/graphics/Matrix;
    iget-boolean v2, p0, Landroidx/camera/view/PreviewTransformation;->mIsFrontCamera:Z

    if-eqz v2, :cond_2

    .line 262
    iget v2, p0, Landroidx/camera/view/PreviewTransformation;->mPreviewRotationDegrees:I

    invoke-static {v2}, Landroidx/camera/view/TransformUtils;->is90or270(I)Z

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    if-eqz v2, :cond_1

    .line 267
    iget-object v2, p0, Landroidx/camera/view/PreviewTransformation;->mSurfaceCropRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    iget-object v5, p0, Landroidx/camera/view/PreviewTransformation;->mSurfaceCropRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v3, v4, v2, v5}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    goto :goto_1

    .line 273
    :cond_1
    iget-object v2, p0, Landroidx/camera/view/PreviewTransformation;->mSurfaceCropRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    iget-object v5, p0, Landroidx/camera/view/PreviewTransformation;->mSurfaceCropRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v4, v3, v2, v5}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    .line 276
    :cond_2
    :goto_1
    return-object v1
.end method

.method getTextureViewCorrectionMatrix()Landroid/graphics/Matrix;
    .locals 4

    .line 154
    invoke-direct {p0}, Landroidx/camera/view/PreviewTransformation;->isTransformationInfoReady()Z

    move-result v0

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkState(Z)V

    .line 155
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Landroidx/camera/view/PreviewTransformation;->mResolution:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Landroidx/camera/view/PreviewTransformation;->mResolution:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 156
    .local v0, "surfaceRect":Landroid/graphics/RectF;
    iget v1, p0, Landroidx/camera/view/PreviewTransformation;->mTargetRotation:I

    invoke-static {v1}, Landroidx/camera/view/TransformUtils;->surfaceRotationToRotationDegrees(I)I

    move-result v1

    neg-int v1, v1

    .line 158
    .local v1, "rotationDegrees":I
    const-class v2, Landroidx/camera/view/internal/compat/quirk/TextureViewRotationQuirk;

    .line 159
    invoke-static {v2}, Landroidx/camera/view/internal/compat/quirk/DeviceQuirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object v2

    check-cast v2, Landroidx/camera/view/internal/compat/quirk/TextureViewRotationQuirk;

    .line 160
    .local v2, "textureViewRotationQuirk":Landroidx/camera/view/internal/compat/quirk/TextureViewRotationQuirk;
    if-eqz v2, :cond_0

    .line 161
    iget-boolean v3, p0, Landroidx/camera/view/PreviewTransformation;->mIsFrontCamera:Z

    invoke-virtual {v2, v3}, Landroidx/camera/view/internal/compat/quirk/TextureViewRotationQuirk;->getCorrectionRotation(Z)I

    move-result v3

    add-int/2addr v1, v3

    .line 163
    :cond_0
    invoke-static {v0, v0, v1}, Landroidx/camera/view/TransformUtils;->getRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;I)Landroid/graphics/Matrix;

    move-result-object v3

    return-object v3
.end method

.method isViewportAspectRatioMatchPreviewView(Landroid/util/Size;)Z
    .locals 3
    .param p1, "previewViewSize"    # Landroid/util/Size;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "previewViewSize"
        }
    .end annotation

    .line 396
    invoke-direct {p0}, Landroidx/camera/view/PreviewTransformation;->getRotatedViewportSize()Landroid/util/Size;

    move-result-object v0

    .line 397
    .local v0, "rotatedViewportSize":Landroid/util/Size;
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Landroidx/camera/view/TransformUtils;->isAspectRatioMatchingWithRoundingError(Landroid/util/Size;ZLandroid/util/Size;Z)Z

    move-result v1

    return v1
.end method

.method setScaleType(Landroidx/camera/view/PreviewView$ScaleType;)V
    .locals 0
    .param p1, "scaleType"    # Landroidx/camera/view/PreviewView$ScaleType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scaleType"
        }
    .end annotation

    .line 208
    iput-object p1, p0, Landroidx/camera/view/PreviewTransformation;->mScaleType:Landroidx/camera/view/PreviewView$ScaleType;

    .line 209
    return-void
.end method

.method setTransformationInfo(Landroidx/camera/core/SurfaceRequest$TransformationInfo;Landroid/util/Size;Z)V
    .locals 2
    .param p1, "transformationInfo"    # Landroidx/camera/core/SurfaceRequest$TransformationInfo;
    .param p2, "resolution"    # Landroid/util/Size;
    .param p3, "isFrontCamera"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "transformationInfo",
            "resolution",
            "isFrontCamera"
        }
    .end annotation

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Transformation info set: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreviewTransform"

    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-virtual {p1}, Landroidx/camera/core/SurfaceRequest$TransformationInfo;->getCropRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/camera/view/PreviewTransformation;->getCorrectedCropRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/view/PreviewTransformation;->mSurfaceCropRect:Landroid/graphics/Rect;

    .line 134
    invoke-virtual {p1}, Landroidx/camera/core/SurfaceRequest$TransformationInfo;->getCropRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/view/PreviewTransformation;->mViewportRect:Landroid/graphics/Rect;

    .line 135
    invoke-virtual {p1}, Landroidx/camera/core/SurfaceRequest$TransformationInfo;->getRotationDegrees()I

    move-result v0

    iput v0, p0, Landroidx/camera/view/PreviewTransformation;->mPreviewRotationDegrees:I

    .line 136
    invoke-virtual {p1}, Landroidx/camera/core/SurfaceRequest$TransformationInfo;->getTargetRotation()I

    move-result v0

    iput v0, p0, Landroidx/camera/view/PreviewTransformation;->mTargetRotation:I

    .line 137
    iput-object p2, p0, Landroidx/camera/view/PreviewTransformation;->mResolution:Landroid/util/Size;

    .line 138
    iput-boolean p3, p0, Landroidx/camera/view/PreviewTransformation;->mIsFrontCamera:Z

    .line 139
    return-void
.end method

.method transformView(Landroid/util/Size;ILandroid/view/View;)V
    .locals 4
    .param p1, "previewViewSize"    # Landroid/util/Size;
    .param p2, "layoutDirection"    # I
    .param p3, "preview"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "previewViewSize",
            "layoutDirection",
            "preview"
        }
    .end annotation

    .line 174
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v0

    const-string v1, "PreviewTransform"

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 178
    :cond_0
    invoke-direct {p0}, Landroidx/camera/view/PreviewTransformation;->isTransformationInfoReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 179
    return-void

    .line 182
    :cond_1
    instance-of v0, p3, Landroid/view/TextureView;

    if-eqz v0, :cond_2

    .line 184
    move-object v0, p3

    check-cast v0, Landroid/view/TextureView;

    invoke-virtual {p0}, Landroidx/camera/view/PreviewTransformation;->getTextureViewCorrectionMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 187
    :cond_2
    invoke-virtual {p3}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 188
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v2

    iget v3, p0, Landroidx/camera/view/PreviewTransformation;->mTargetRotation:I

    if-eq v2, v3, :cond_3

    .line 189
    const-string v2, "Non-display rotation not supported with SurfaceView / PERFORMANCE mode."

    invoke-static {v1, v2}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .end local v0    # "display":Landroid/view/Display;
    :cond_3
    :goto_0
    invoke-direct {p0, p1, p2}, Landroidx/camera/view/PreviewTransformation;->getTransformedSurfaceRect(Landroid/util/Size;I)Landroid/graphics/RectF;

    move-result-object v0

    .line 196
    .local v0, "surfaceRectInPreviewView":Landroid/graphics/RectF;
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/view/View;->setPivotX(F)V

    .line 197
    invoke-virtual {p3, v1}, Landroid/view/View;->setPivotY(F)V

    .line 198
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Landroidx/camera/view/PreviewTransformation;->mResolution:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p3, v1}, Landroid/view/View;->setScaleX(F)V

    .line 199
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v2, p0, Landroidx/camera/view/PreviewTransformation;->mResolution:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p3, v1}, Landroid/view/View;->setScaleY(F)V

    .line 200
    iget v1, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p3, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 201
    iget v1, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p3, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 202
    return-void

    .line 175
    .end local v0    # "surfaceRectInPreviewView":Landroid/graphics/RectF;
    :cond_4
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transform not applied due to PreviewView size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return-void
.end method
