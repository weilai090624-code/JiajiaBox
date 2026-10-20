.class public final Landroidx/camera/camera2/impl/Camera2CameraCaptureResultConverter;
.super Ljava/lang/Object;
.source "Camera2CameraCaptureResultConverter.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCaptureResult(Landroidx/camera/core/impl/CameraCaptureResult;)Landroid/hardware/camera2/CaptureResult;
    .locals 1
    .param p0, "cameraCaptureResult"    # Landroidx/camera/core/impl/CameraCaptureResult;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraCaptureResult"
        }
    .end annotation

    .line 36
    instance-of v0, p0, Landroidx/camera/camera2/internal/Camera2CameraCaptureResult;

    if-eqz v0, :cond_0

    .line 37
    move-object v0, p0

    check-cast v0, Landroidx/camera/camera2/internal/Camera2CameraCaptureResult;

    invoke-virtual {v0}, Landroidx/camera/camera2/internal/Camera2CameraCaptureResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v0

    return-object v0

    .line 39
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
