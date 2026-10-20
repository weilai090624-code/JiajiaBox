.class public final Lcom/king/zxing/config/AspectRatioCameraConfig;
.super Lcom/king/zxing/config/CameraConfig;
.source "AspectRatioCameraConfig.java"


# instance fields
.field private mAspectRatio:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 24
    invoke-direct {p0}, Lcom/king/zxing/config/CameraConfig;-><init>()V

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 27
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 28
    .local v1, "width":I
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 30
    .local v2, "height":I
    int-to-float v3, v1

    int-to-float v4, v2

    invoke-direct {p0, v3, v4}, Lcom/king/zxing/config/AspectRatioCameraConfig;->aspectRatio(FF)I

    move-result v3

    iput v3, p0, Lcom/king/zxing/config/AspectRatioCameraConfig;->mAspectRatio:I

    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "aspectRatio:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/king/zxing/config/AspectRatioCameraConfig;->mAspectRatio:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/king/zxing/util/LogUtils;->d(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method private aspectRatio(FF)I
    .locals 3
    .param p1, "width"    # F
    .param p2, "height"    # F

    .line 36
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    div-float/2addr v0, v1

    .line 37
    .local v0, "ratio":F
    const v1, 0x3faaaaab

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3fe38e39

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 38
    const/4 v1, 0x0

    return v1

    .line 40
    :cond_0
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public options(Landroidx/camera/core/CameraSelector$Builder;)Landroidx/camera/core/CameraSelector;
    .locals 1
    .param p1, "builder"    # Landroidx/camera/core/CameraSelector$Builder;

    .line 52
    invoke-super {p0, p1}, Lcom/king/zxing/config/CameraConfig;->options(Landroidx/camera/core/CameraSelector$Builder;)Landroidx/camera/core/CameraSelector;

    move-result-object v0

    return-object v0
.end method

.method public options(Landroidx/camera/core/ImageAnalysis$Builder;)Landroidx/camera/core/ImageAnalysis;
    .locals 1
    .param p1, "builder"    # Landroidx/camera/core/ImageAnalysis$Builder;

    .line 58
    iget v0, p0, Lcom/king/zxing/config/AspectRatioCameraConfig;->mAspectRatio:I

    invoke-virtual {p1, v0}, Landroidx/camera/core/ImageAnalysis$Builder;->setTargetAspectRatio(I)Landroidx/camera/core/ImageAnalysis$Builder;

    .line 59
    invoke-super {p0, p1}, Lcom/king/zxing/config/CameraConfig;->options(Landroidx/camera/core/ImageAnalysis$Builder;)Landroidx/camera/core/ImageAnalysis;

    move-result-object v0

    return-object v0
.end method

.method public options(Landroidx/camera/core/Preview$Builder;)Landroidx/camera/core/Preview;
    .locals 1
    .param p1, "builder"    # Landroidx/camera/core/Preview$Builder;

    .line 46
    invoke-super {p0, p1}, Lcom/king/zxing/config/CameraConfig;->options(Landroidx/camera/core/Preview$Builder;)Landroidx/camera/core/Preview;

    move-result-object v0

    return-object v0
.end method
