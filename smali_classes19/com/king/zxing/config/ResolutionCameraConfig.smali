.class public Lcom/king/zxing/config/ResolutionCameraConfig;
.super Lcom/king/zxing/config/CameraConfig;
.source "ResolutionCameraConfig.java"


# instance fields
.field private mTargetSize:Landroid/util/Size;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 13
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
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    aput-object v4, v5, v3

    const-string v3, "displayMetrics:%d x %d"

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/king/zxing/util/LogUtils;->d(Ljava/lang/String;)V

    .line 32
    const/high16 v3, 0x40800000    # 4.0f

    const/high16 v4, 0x40400000    # 3.0f

    const/high16 v5, 0x41100000    # 9.0f

    const-wide v6, 0x3fe6666666666666L    # 0.7

    const/16 v8, 0x438

    if-ge v1, v2, :cond_1

    .line 33
    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 34
    .local v8, "size":I
    int-to-float v9, v1

    int-to-float v10, v2

    div-float/2addr v9, v10

    .line 35
    .local v9, "ratio":F
    float-to-double v10, v9

    cmpl-double v12, v10, v6

    if-lez v12, :cond_0

    .line 36
    new-instance v5, Landroid/util/Size;

    int-to-float v6, v8

    div-float/2addr v6, v4

    mul-float v6, v6, v3

    float-to-int v3, v6

    invoke-direct {v5, v8, v3}, Landroid/util/Size;-><init>(II)V

    iput-object v5, p0, Lcom/king/zxing/config/ResolutionCameraConfig;->mTargetSize:Landroid/util/Size;

    goto :goto_0

    .line 38
    :cond_0
    new-instance v3, Landroid/util/Size;

    int-to-float v4, v8

    div-float/2addr v4, v5

    const/high16 v5, 0x41800000    # 16.0f

    mul-float v4, v4, v5

    float-to-int v4, v4

    invoke-direct {v3, v8, v4}, Landroid/util/Size;-><init>(II)V

    iput-object v3, p0, Lcom/king/zxing/config/ResolutionCameraConfig;->mTargetSize:Landroid/util/Size;

    .line 40
    .end local v8    # "size":I
    .end local v9    # "ratio":F
    :goto_0
    goto :goto_1

    .line 41
    :cond_1
    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 42
    .restart local v8    # "size":I
    int-to-float v9, v2

    int-to-float v10, v1

    div-float/2addr v9, v10

    .line 43
    .restart local v9    # "ratio":F
    float-to-double v10, v9

    cmpl-double v12, v10, v6

    if-lez v12, :cond_2

    .line 44
    new-instance v5, Landroid/util/Size;

    int-to-float v6, v8

    div-float/2addr v6, v4

    mul-float v6, v6, v3

    float-to-int v3, v6

    invoke-direct {v5, v3, v8}, Landroid/util/Size;-><init>(II)V

    iput-object v5, p0, Lcom/king/zxing/config/ResolutionCameraConfig;->mTargetSize:Landroid/util/Size;

    goto :goto_1

    .line 46
    :cond_2
    new-instance v3, Landroid/util/Size;

    int-to-float v4, v8

    div-float/2addr v4, v5

    float-to-double v4, v4

    const-wide/high16 v6, 0x4030000000000000L    # 16.0

    mul-double v4, v4, v6

    double-to-int v4, v4

    invoke-direct {v3, v4, v8}, Landroid/util/Size;-><init>(II)V

    iput-object v3, p0, Lcom/king/zxing/config/ResolutionCameraConfig;->mTargetSize:Landroid/util/Size;

    .line 49
    .end local v8    # "size":I
    .end local v9    # "ratio":F
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "targetSize:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/king/zxing/config/ResolutionCameraConfig;->mTargetSize:Landroid/util/Size;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/king/zxing/util/LogUtils;->d(Ljava/lang/String;)V

    .line 50
    return-void
.end method


# virtual methods
.method public options(Landroidx/camera/core/CameraSelector$Builder;)Landroidx/camera/core/CameraSelector;
    .locals 1
    .param p1, "builder"    # Landroidx/camera/core/CameraSelector$Builder;

    .line 63
    invoke-super {p0, p1}, Lcom/king/zxing/config/CameraConfig;->options(Landroidx/camera/core/CameraSelector$Builder;)Landroidx/camera/core/CameraSelector;

    move-result-object v0

    return-object v0
.end method

.method public options(Landroidx/camera/core/ImageAnalysis$Builder;)Landroidx/camera/core/ImageAnalysis;
    .locals 1
    .param p1, "builder"    # Landroidx/camera/core/ImageAnalysis$Builder;

    .line 69
    iget-object v0, p0, Lcom/king/zxing/config/ResolutionCameraConfig;->mTargetSize:Landroid/util/Size;

    invoke-virtual {p1, v0}, Landroidx/camera/core/ImageAnalysis$Builder;->setTargetResolution(Landroid/util/Size;)Landroidx/camera/core/ImageAnalysis$Builder;

    .line 70
    invoke-super {p0, p1}, Lcom/king/zxing/config/CameraConfig;->options(Landroidx/camera/core/ImageAnalysis$Builder;)Landroidx/camera/core/ImageAnalysis;

    move-result-object v0

    return-object v0
.end method

.method public options(Landroidx/camera/core/Preview$Builder;)Landroidx/camera/core/Preview;
    .locals 1
    .param p1, "builder"    # Landroidx/camera/core/Preview$Builder;

    .line 57
    invoke-super {p0, p1}, Lcom/king/zxing/config/CameraConfig;->options(Landroidx/camera/core/Preview$Builder;)Landroidx/camera/core/Preview;

    move-result-object v0

    return-object v0
.end method
