.class final Landroidx/camera/camera2/internal/CropRegionZoomImpl;
.super Ljava/lang/Object;
.source "CropRegionZoomImpl.java"

# interfaces
.implements Landroidx/camera/camera2/internal/ZoomControl$ZoomImpl;


# static fields
.field public static final MIN_DIGITAL_ZOOM:F = 1.0f


# instance fields
.field private final mCameraCharacteristics:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

.field private mCurrentCropRect:Landroid/graphics/Rect;

.field private mPendingZoomCropRegion:Landroid/graphics/Rect;

.field private mPendingZoomRatioCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;)V
    .locals 1
    .param p1, "cameraCharacteristics"    # Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraCharacteristics"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/camera/camera2/internal/CropRegionZoomImpl;->mCurrentCropRect:Landroid/graphics/Rect;

    .line 37
    iput-object v0, p0, Landroidx/camera/camera2/internal/CropRegionZoomImpl;->mPendingZoomCropRegion:Landroid/graphics/Rect;

    .line 40
    iput-object p1, p0, Landroidx/camera/camera2/internal/CropRegionZoomImpl;->mCameraCharacteristics:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

    .line 41
    return-void
.end method

.method private static getCropRectByRatio(Landroid/graphics/Rect;F)Landroid/graphics/Rect;
    .locals 9
    .param p0, "sensorRect"    # Landroid/graphics/Rect;
    .param p1, "ratio"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sensorRect",
            "ratio"
        }
    .end annotation

    .line 92
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p1

    .line 93
    .local v0, "cropWidth":F
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, p1

    .line 94
    .local v1, "cropHeight":F
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 95
    .local v2, "left":F
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v1

    div-float/2addr v4, v3

    .line 96
    .local v4, "top":F
    new-instance v3, Landroid/graphics/Rect;

    float-to-int v5, v2

    float-to-int v6, v4

    add-float v7, v2, v0

    float-to-int v7, v7

    add-float v8, v4, v1

    float-to-int v8, v8

    invoke-direct {v3, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3
.end method

.method private getSensorRect()Landroid/graphics/Rect;
    .locals 2

    .line 85
    iget-object v0, p0, Landroidx/camera/camera2/internal/CropRegionZoomImpl;->mCameraCharacteristics:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 86
    invoke-virtual {v0, v1}, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 85
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    return-object v0
.end method


# virtual methods
.method public addRequestOption(Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;)V
    .locals 2
    .param p1, "builder"    # Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Landroidx/camera/camera2/internal/CropRegionZoomImpl;->mCurrentCropRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 65
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Landroidx/camera/camera2/internal/CropRegionZoomImpl;->mCurrentCropRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->setCaptureRequestOption(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    .line 68
    :cond_0
    return-void
.end method

.method public getCropSensorRegion()Landroid/graphics/Rect;
    .locals 1

    .line 138
    iget-object v0, p0, Landroidx/camera/camera2/internal/CropRegionZoomImpl;->mCurrentCropRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/camera/camera2/internal/CropRegionZoomImpl;->mCurrentCropRect:Landroid/graphics/Rect;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroidx/camera/camera2/internal/CropRegionZoomImpl;->getSensorRect()Landroid/graphics/Rect;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getMaxZoom()F
    .locals 3

    .line 50
    iget-object v0, p0, Landroidx/camera/camera2/internal/CropRegionZoomImpl;->mCameraCharacteristics:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 52
    .local v0, "maxZoom":Ljava/lang/Float;
    if-nez v0, :cond_0

    .line 53
    const/high16 v1, 0x3f800000    # 1.0f

    return v1

    .line 56
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p0}, Landroidx/camera/camera2/internal/CropRegionZoomImpl;->getMinZoom()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 57
    invoke-virtual {p0}, Landroidx/camera/camera2/internal/CropRegionZoomImpl;->getMinZoom()F

    move-result v1

    return v1

    .line 59
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1
.end method

.method public getMinZoom()F
    .locals 1

    .line 45
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public onCaptureResult(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 4
    .param p1, "captureResult"    # Landroid/hardware/camera2/TotalCaptureResult;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "captureResult"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Landroidx/camera/camera2/internal/CropRegionZoomImpl;->mPendingZoomRatioCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    if-eqz v0, :cond_1

    .line 122
    invoke-virtual {p1}, Landroid/hardware/camera2/TotalCaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    .line 123
    .local v0, "request":Landroid/hardware/camera2/CaptureRequest;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    .line 124
    :cond_0
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    :goto_0
    nop

    .line 126
    .local v2, "cropRect":Landroid/graphics/Rect;
    iget-object v3, p0, Landroidx/camera/camera2/internal/CropRegionZoomImpl;->mPendingZoomCropRegion:Landroid/graphics/Rect;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroidx/camera/camera2/internal/CropRegionZoomImpl;->mPendingZoomCropRegion:Landroid/graphics/Rect;

    .line 127
    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 128
    iget-object v3, p0, Landroidx/camera/camera2/internal/CropRegionZoomImpl;->mPendingZoomRatioCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-virtual {v3, v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    .line 129
    iput-object v1, p0, Landroidx/camera/camera2/internal/CropRegionZoomImpl;->mPendingZoomRatioCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 130
    iput-object v1, p0, Landroidx/camera/camera2/internal/CropRegionZoomImpl;->mPendingZoomCropRegion:Landroid/graphics/Rect;

    .line 133
    .end local v0    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v2    # "cropRect":Landroid/graphics/Rect;
    :cond_1
    return-void
.end method

.method public resetZoom()V
    .locals 4

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/camera/camera2/internal/CropRegionZoomImpl;->mPendingZoomCropRegion:Landroid/graphics/Rect;

    .line 73
    iput-object v0, p0, Landroidx/camera/camera2/internal/CropRegionZoomImpl;->mCurrentCropRect:Landroid/graphics/Rect;

    .line 76
    iget-object v1, p0, Landroidx/camera/camera2/internal/CropRegionZoomImpl;->mPendingZoomRatioCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Landroidx/camera/camera2/internal/CropRegionZoomImpl;->mPendingZoomRatioCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    new-instance v2, Landroidx/camera/core/CameraControl$OperationCanceledException;

    const-string v3, "Camera is not active."

    invoke-direct {v2, v3}, Landroidx/camera/core/CameraControl$OperationCanceledException;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v1, v2}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    .line 80
    iput-object v0, p0, Landroidx/camera/camera2/internal/CropRegionZoomImpl;->mPendingZoomRatioCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 82
    :cond_0
    return-void
.end method

.method public setZoomRatio(FLandroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 4
    .param p1, "zoomRatio"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "zoomRatio",
            "completer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 103
    .local p2, "completer":Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;, "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<Ljava/lang/Void;>;"
    invoke-direct {p0}, Landroidx/camera/camera2/internal/CropRegionZoomImpl;->getSensorRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 104
    .local v0, "sensorRect":Landroid/graphics/Rect;
    invoke-static {v0, p1}, Landroidx/camera/camera2/internal/CropRegionZoomImpl;->getCropRectByRatio(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Landroidx/camera/camera2/internal/CropRegionZoomImpl;->mCurrentCropRect:Landroid/graphics/Rect;

    .line 106
    iget-object v1, p0, Landroidx/camera/camera2/internal/CropRegionZoomImpl;->mPendingZoomRatioCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    if-eqz v1, :cond_0

    .line 107
    iget-object v1, p0, Landroidx/camera/camera2/internal/CropRegionZoomImpl;->mPendingZoomRatioCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    new-instance v2, Landroidx/camera/core/CameraControl$OperationCanceledException;

    const-string v3, "There is a new zoomRatio being set"

    invoke-direct {v2, v3}, Landroidx/camera/core/CameraControl$OperationCanceledException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    .line 113
    :cond_0
    iget-object v1, p0, Landroidx/camera/camera2/internal/CropRegionZoomImpl;->mCurrentCropRect:Landroid/graphics/Rect;

    iput-object v1, p0, Landroidx/camera/camera2/internal/CropRegionZoomImpl;->mPendingZoomCropRegion:Landroid/graphics/Rect;

    .line 114
    iput-object p2, p0, Landroidx/camera/camera2/internal/CropRegionZoomImpl;->mPendingZoomRatioCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 115
    return-void
.end method
