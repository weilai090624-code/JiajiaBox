.class public final Landroidx/camera/view/transform/ImageProxyTransformFactory;
.super Ljava/lang/Object;
.source "ImageProxyTransformFactory.java"


# instance fields
.field private mUsingCropRect:Z

.field private mUsingRotationDegrees:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method private getCropRect(Landroidx/camera/core/ImageProxy;)Landroid/graphics/RectF;
    .locals 4
    .param p1, "imageProxy"    # Landroidx/camera/core/ImageProxy;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageProxy"
        }
    .end annotation

    .line 124
    iget-boolean v0, p0, Landroidx/camera/view/transform/ImageProxyTransformFactory;->mUsingCropRect:Z

    if-eqz v0, :cond_0

    .line 125
    new-instance v0, Landroid/graphics/RectF;

    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getCropRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    return-object v0

    .line 128
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method static getRotatedCropRect(Landroid/graphics/RectF;I)Landroid/graphics/RectF;
    .locals 4
    .param p0, "rect"    # Landroid/graphics/RectF;
    .param p1, "rotationDegrees"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rect",
            "rotationDegrees"
        }
    .end annotation

    .line 146
    invoke-static {p1}, Landroidx/camera/view/TransformUtils;->is90or270(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 147
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0

    .line 149
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method private getRotationDegrees(Landroidx/camera/core/ImageProxy;)I
    .locals 1
    .param p1, "imageProxy"    # Landroidx/camera/core/ImageProxy;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageProxy"
        }
    .end annotation

    .line 135
    iget-boolean v0, p0, Landroidx/camera/view/transform/ImageProxyTransformFactory;->mUsingRotationDegrees:Z

    if-eqz v0, :cond_0

    .line 136
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getImageInfo()Landroidx/camera/core/ImageInfo;

    move-result-object v0

    invoke-interface {v0}, Landroidx/camera/core/ImageInfo;->getRotationDegrees()I

    move-result v0

    return v0

    .line 139
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getOutputTransform(Landroidx/camera/core/ImageProxy;)Landroidx/camera/view/transform/OutputTransform;
    .locals 6
    .param p1, "imageProxy"    # Landroidx/camera/core/ImageProxy;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageProxy"
        }
    .end annotation

    .line 109
    invoke-direct {p0, p1}, Landroidx/camera/view/transform/ImageProxyTransformFactory;->getRotationDegrees(Landroidx/camera/core/ImageProxy;)I

    move-result v0

    .line 110
    .local v0, "rotationDegrees":I
    invoke-direct {p0, p1}, Landroidx/camera/view/transform/ImageProxyTransformFactory;->getCropRect(Landroidx/camera/core/ImageProxy;)Landroid/graphics/RectF;

    move-result-object v1

    .line 111
    .local v1, "source":Landroid/graphics/RectF;
    invoke-static {v1, v0}, Landroidx/camera/view/transform/ImageProxyTransformFactory;->getRotatedCropRect(Landroid/graphics/RectF;I)Landroid/graphics/RectF;

    move-result-object v2

    .line 112
    .local v2, "target":Landroid/graphics/RectF;
    invoke-static {v1, v2, v0}, Landroidx/camera/view/TransformUtils;->getRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;I)Landroid/graphics/Matrix;

    move-result-object v3

    .line 115
    .local v3, "matrix":Landroid/graphics/Matrix;
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getCropRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-static {v4}, Landroidx/camera/view/TransformUtils;->getNormalizedToBuffer(Landroid/graphics/Rect;)Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 117
    new-instance v4, Landroidx/camera/view/transform/OutputTransform;

    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getCropRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-static {v5}, Landroidx/camera/view/TransformUtils;->rectToSize(Landroid/graphics/Rect;)Landroid/util/Size;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Landroidx/camera/view/transform/OutputTransform;-><init>(Landroid/graphics/Matrix;Landroid/util/Size;)V

    return-object v4
.end method

.method public isUsingCropRect()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Landroidx/camera/view/transform/ImageProxyTransformFactory;->mUsingCropRect:Z

    return v0
.end method

.method public isUsingRotationDegrees()Z
    .locals 1

    .line 95
    iget-boolean v0, p0, Landroidx/camera/view/transform/ImageProxyTransformFactory;->mUsingRotationDegrees:Z

    return v0
.end method

.method public setUsingCropRect(Z)V
    .locals 0
    .param p1, "usingCropRect"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "usingCropRect"
        }
    .end annotation

    .line 63
    iput-boolean p1, p0, Landroidx/camera/view/transform/ImageProxyTransformFactory;->mUsingCropRect:Z

    .line 64
    return-void
.end method

.method public setUsingRotationDegrees(Z)V
    .locals 0
    .param p1, "usingRotationDegrees"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "usingRotationDegrees"
        }
    .end annotation

    .line 86
    iput-boolean p1, p0, Landroidx/camera/view/transform/ImageProxyTransformFactory;->mUsingRotationDegrees:Z

    .line 87
    return-void
.end method
