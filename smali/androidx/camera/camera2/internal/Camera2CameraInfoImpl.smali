.class public final Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;
.super Ljava/lang/Object;
.source "Camera2CameraInfoImpl.java"

# interfaces
.implements Landroidx/camera/core/impl/CameraInfoInternal;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/internal/Camera2CameraInfoImpl$RedirectableLiveData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Camera2CameraInfo"


# instance fields
.field private mCamera2CameraControlImpl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

.field private final mCamera2CameraInfo:Landroidx/camera/camera2/interop/Camera2CameraInfo;

.field private mCameraCaptureCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroidx/camera/core/impl/CameraCaptureCallback;",
            "Ljava/util/concurrent/Executor;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mCameraCharacteristicsCompat:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

.field private final mCameraId:Ljava/lang/String;

.field private final mCameraQuirks:Landroidx/camera/core/impl/Quirks;

.field private final mLock:Ljava/lang/Object;

.field private mRedirectTorchStateLiveData:Landroidx/camera/camera2/internal/Camera2CameraInfoImpl$RedirectableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/camera2/internal/Camera2CameraInfoImpl$RedirectableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRedirectZoomStateLiveData:Landroidx/camera/camera2/internal/Camera2CameraInfoImpl$RedirectableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/camera2/internal/Camera2CameraInfoImpl$RedirectableLiveData<",
            "Landroidx/camera/core/ZoomState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;)V
    .registers 4
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "cameraCharacteristicsCompat"    # Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cameraId",
            "cameraCharacteristicsCompat"
        }
    .end annotation

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->mLock:Ljava/lang/Object;

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->mRedirectTorchStateLiveData:Landroidx/camera/camera2/internal/Camera2CameraInfoImpl$RedirectableLiveData;

    .line 78
    iput-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->mRedirectZoomStateLiveData:Landroidx/camera/camera2/internal/Camera2CameraInfoImpl$RedirectableLiveData;

    .line 81
    iput-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->mCameraCaptureCallbacks:Ljava/util/List;

    .line 94
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->mCameraId:Ljava/lang/String;

    .line 95
    iput-object p2, p0, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->mCameraCharacteristicsCompat:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

    .line 96
    new-instance v0, Landroidx/camera/camera2/interop/Camera2CameraInfo;

    invoke-direct {v0, p0}, Landroidx/camera/camera2/interop/Camera2CameraInfo;-><init>(Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;)V

    iput-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->mCamera2CameraInfo:Landroidx/camera/camera2/interop/Camera2CameraInfo;

    .line 97
    invoke-static {p1, p2}, Landroidx/camera/camera2/internal/compat/quirk/CameraQuirks;->get(Ljava/lang/String;Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;)Landroidx/camera/core/impl/Quirks;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->mCameraQuirks:Landroidx/camera/core/impl/Quirks;

    .line 98
    return-void
.end method

.method private logDeviceInfo()V
    .registers 1

    .line 197
    invoke-direct {p0}, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->logDeviceLevel()V

    .line 198
    return-void
.end method

.method private logDeviceLevel()V
    .registers 5

    .line 203
    invoke-virtual {p0}, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->getSupportedHardwareLevel()I

    move-result v0

    .line 204
    .local v0, "deviceLevel":I
    packed-switch v0, :pswitch_data_44

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "levelString":Ljava/lang/String;
    goto :goto_2a

    .line 209
    .end local v1    # "levelString":Ljava/lang/String;
    :pswitch_1b
    const-string v1, "INFO_SUPPORTED_HARDWARE_LEVEL_EXTERNAL"

    .line 210
    .restart local v1    # "levelString":Ljava/lang/String;
    goto :goto_2a

    .line 218
    .end local v1    # "levelString":Ljava/lang/String;
    :pswitch_1e
    const-string v1, "INFO_SUPPORTED_HARDWARE_LEVEL_3"

    .line 219
    .restart local v1    # "levelString":Ljava/lang/String;
    goto :goto_2a

    .line 206
    .end local v1    # "levelString":Ljava/lang/String;
    :pswitch_21
    const-string v1, "INFO_SUPPORTED_HARDWARE_LEVEL_LEGACY"

    .line 207
    .restart local v1    # "levelString":Ljava/lang/String;
    goto :goto_2a

    .line 215
    .end local v1    # "levelString":Ljava/lang/String;
    :pswitch_24
    const-string v1, "INFO_SUPPORTED_HARDWARE_LEVEL_FULL"

    .line 216
    .restart local v1    # "levelString":Ljava/lang/String;
    goto :goto_2a

    .line 212
    .end local v1    # "levelString":Ljava/lang/String;
    :pswitch_27
    const-string v1, "INFO_SUPPORTED_HARDWARE_LEVEL_LIMITED"

    .line 213
    .restart local v1    # "levelString":Ljava/lang/String;
    nop

    .line 224
    :goto_2a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device Level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Camera2CameraInfo"

    invoke-static {v3, v2}, Landroidx/camera/core/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return-void

    nop

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
    .end packed-switch
.end method


# virtual methods
.method public addSessionCaptureCallback(Ljava/util/concurrent/Executor;Landroidx/camera/core/impl/CameraCaptureCallback;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroidx/camera/core/impl/CameraCaptureCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "executor",
            "callback"
        }
    .end annotation

    .line 311
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 312
    :try_start_3
    iget-object v1, p0, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->mCamera2CameraControlImpl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    if-nez v1, :cond_1e

    .line 313
    iget-object v1, p0, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->mCameraCaptureCallbacks:Ljava/util/List;

    if-nez v1, :cond_12

    .line 314
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->mCameraCaptureCallbacks:Ljava/util/List;

    .line 316
    :cond_12
    iget-object v1, p0, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->mCameraCaptureCallbacks:Ljava/util/List;

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    monitor-exit v0

    return-void

    .line 320
    :cond_1e
    iget-object v1, p0, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->mCamera2CameraControlImpl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    invoke-virtual {v1, p1, p2}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->addSessionCameraCaptureCallback(Ljava/util/concurrent/Executor;Landroidx/camera/core/impl/CameraCaptureCallback;)V

    .line 321
    monitor-exit v0

    .line 322
    return-void

    .line 321
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public getCamera2CameraInfo()Landroidx/camera/camera2/interop/Camera2CameraInfo;
    .registers 2

    .line 357
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->mCamera2CameraInfo:Landroidx/camera/camera2/interop/Camera2CameraInfo;

    return-object v0
.end method

.method public getCameraCharacteristicsCompat()Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;
    .registers 2

    .line 140
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->mCameraCharacteristicsCompat:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

    return-object v0
.end method

.method public getCameraId()Ljava/lang/String;
    .registers 2

    .line 135
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->mCameraId:Ljava/lang/String;

    return-object v0
.end method

.method public getCameraQuirks()Landroidx/camera/core/impl/Quirks;
    .registers 2

    .line 349
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->mCameraQuirks:Landroidx/camera/core/impl/Quirks;

    return-object v0
.end method

.method public getExposureState()Landroidx/camera/core/ExposureState;
    .registers 3

    .line 281
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 282
    :try_start_3
    iget-object v1, p0, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->mCamera2CameraControlImpl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    if-nez v1, :cond_f

    .line 283
    iget-object v1, p0, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->mCameraCharacteristicsCompat:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

    invoke-static {v1}, Landroidx/camera/camera2/internal/ExposureControl;->getDefaultExposureState(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;)Landroidx/camera/core/ExposureState;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 285
    :cond_f
    iget-object v1, p0, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->mCamera2CameraControlImpl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    invoke-virtual {v1}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->getExposureControl()Landroidx/camera/camera2/internal/ExposureControl;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/camera/camera2/internal/ExposureControl;->getExposureState()Landroidx/camera/core/ExposureState;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 286
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public getImplementationType()Ljava/lang/String;
    .registers 3

    .line 303
    invoke-virtual {p0}, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->getSupportedHardwareLevel()I

    move-result v0

    .line 304
    .local v0, "hardwareLevel":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 305
    const-string v1, "androidx.camera.camera2.legacy"

    goto :goto_c

    :cond_a
    const-string v1, "androidx.camera.camera2"

    .line 304
    :goto_c
    return-object v1
.end method

.method public getLensFacing()Ljava/lang/Integer;
    .registers 3

    .line 146
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->mCameraCharacteristicsCompat:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 147
    .local v0, "lensFacing":Ljava/lang/Integer;
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_22

    .line 154
    const/4 v1, 0x0

    return-object v1

    .line 152
    :pswitch_16
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 150
    :pswitch_1c
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_16
    .end packed-switch
.end method

.method getSensorOrientation()I
    .registers 3

    .line 176
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->mCameraCharacteristicsCompat:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 177
    invoke-virtual {v0, v1}, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 178
    .local v0, "sensorOrientation":Ljava/lang/Integer;
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public getSensorRotationDegrees()I
    .registers 2

    .line 192
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->getSensorRotationDegrees(I)I

    move-result v0

    return v0
.end method

.method public getSensorRotationDegrees(I)I
    .registers 7
    .param p1, "relativeRotation"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "relativeRotation"
        }
    .end annotation

    .line 160
    invoke-virtual {p0}, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->getSensorOrientation()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 161
    .local v0, "sensorOrientation":Ljava/lang/Integer;
    nop

    .line 162
    invoke-static {p1}, Landroidx/camera/core/impl/utils/CameraOrientationUtil;->surfaceRotationToDegrees(I)I

    move-result v1

    .line 166
    .local v1, "relativeRotationDegrees":I
    invoke-virtual {p0}, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->getLensFacing()Ljava/lang/Integer;

    move-result-object v2

    .line 167
    .local v2, "lensFacing":Ljava/lang/Integer;
    if-eqz v2, :cond_1b

    .line 168
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v4, v3, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v4, 0x0

    :goto_1c
    move v3, v4

    .line 169
    .local v3, "isOppositeFacingScreen":Z
    nop

    .line 171
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 169
    invoke-static {v1, v4, v3}, Landroidx/camera/core/impl/utils/CameraOrientationUtil;->getRelativeImageRotation(IIZ)I

    move-result v4

    return v4
.end method

.method getSupportedHardwareLevel()I
    .registers 3

    .line 183
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->mCameraCharacteristicsCompat:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 184
    invoke-virtual {v0, v1}, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 186
    .local v0, "deviceLevel":Ljava/lang/Integer;
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public getTorchState()Landroidx/lifecycle/LiveData;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 238
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 239
    :try_start_3
    iget-object v1, p0, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->mCamera2CameraControlImpl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    if-nez v1, :cond_1b

    .line 240
    iget-object v1, p0, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->mRedirectTorchStateLiveData:Landroidx/camera/camera2/internal/Camera2CameraInfoImpl$RedirectableLiveData;

    if-nez v1, :cond_17

    .line 241
    new-instance v1, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl$RedirectableLiveData;

    .line 242
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl$RedirectableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->mRedirectTorchStateLiveData:Landroidx/camera/camera2/internal/Camera2CameraInfoImpl$RedirectableLiveData;

    .line 244
    :cond_17
    iget-object v1, p0, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->mRedirectTorchStateLiveData:Landroidx/camera/camera2/internal/Camera2CameraInfoImpl$RedirectableLiveData;

    monitor-exit v0

    return-object v1

    .line 248
    :cond_1b
    iget-object v1, p0, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->mRedirectTorchStateLiveData:Landroidx/camera/camera2/internal/Camera2CameraInfoImpl$RedirectableLiveData;

    if-eqz v1, :cond_23

    .line 249
    iget-object v1, p0, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->mRedirectTorchStateLiveData:Landroidx/camera/camera2/internal/Camera2CameraInfoImpl$RedirectableLiveData;

    monitor-exit v0

    return-object v1

    .line 252
    :cond_23
    iget-object v1, p0, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->mCamera2CameraControlImpl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    invoke-virtual {v1}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->getTorchControl()Landroidx/camera/camera2/internal/TorchControl;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/camera/camera2/internal/TorchControl;->getTorchState()Landroidx/lifecycle/LiveData;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 253
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public getZoomState()Landroidx/lifecycle/LiveData;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Landroidx/camera/core/ZoomState;",
            ">;"
        }
    .end annotation

    .line 259
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 260
    :try_start_3
    iget-object v1, p0, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->mCamera2CameraControlImpl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    if-nez v1, :cond_1c

    .line 261
    iget-object v1, p0, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->mRedirectZoomStateLiveData:Landroidx/camera/camera2/internal/Camera2CameraInfoImpl$RedirectableLiveData;

    if-nez v1, :cond_18

    .line 262
    new-instance v1, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl$RedirectableLiveData;

    iget-object v2, p0, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->mCameraCharacteristicsCompat:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

    .line 263
    invoke-static {v2}, Landroidx/camera/camera2/internal/ZoomControl;->getDefaultZoomState(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;)Landroidx/camera/core/ZoomState;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl$RedirectableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->mRedirectZoomStateLiveData:Landroidx/camera/camera2/internal/Camera2CameraInfoImpl$RedirectableLiveData;

    .line 265
    :cond_18
    iget-object v1, p0, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->mRedirectZoomStateLiveData:Landroidx/camera/camera2/internal/Camera2CameraInfoImpl$RedirectableLiveData;

    monitor-exit v0

    return-object v1

    .line 269
    :cond_1c
    iget-object v1, p0, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->mRedirectZoomStateLiveData:Landroidx/camera/camera2/internal/Camera2CameraInfoImpl$RedirectableLiveData;

    if-eqz v1, :cond_24

    .line 270
    iget-object v1, p0, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->mRedirectZoomStateLiveData:Landroidx/camera/camera2/internal/Camera2CameraInfoImpl$RedirectableLiveData;

    monitor-exit v0

    return-object v1

    .line 273
    :cond_24
    iget-object v1, p0, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->mCamera2CameraControlImpl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    invoke-virtual {v1}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->getZoomControl()Landroidx/camera/camera2/internal/ZoomControl;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/camera/camera2/internal/ZoomControl;->getZoomState()Landroidx/lifecycle/LiveData;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 274
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw v1
.end method

.method public hasFlashUnit()Z
    .registers 3

    .line 229
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->mCameraCharacteristicsCompat:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 231
    .local v0, "hasFlashUnit":Ljava/lang/Boolean;
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method linkWithCameraControl(Landroidx/camera/camera2/internal/Camera2CameraControlImpl;)V
    .registers 8
    .param p1, "camera2CameraControlImpl"    # Landroidx/camera/camera2/internal/Camera2CameraControlImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "camera2CameraControlImpl"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 108
    :try_start_3
    iput-object p1, p0, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->mCamera2CameraControlImpl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    .line 110
    iget-object v1, p0, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->mRedirectZoomStateLiveData:Landroidx/camera/camera2/internal/Camera2CameraInfoImpl$RedirectableLiveData;

    if-eqz v1, :cond_18

    .line 111
    iget-object v1, p0, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->mRedirectZoomStateLiveData:Landroidx/camera/camera2/internal/Camera2CameraInfoImpl$RedirectableLiveData;

    iget-object v2, p0, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->mCamera2CameraControlImpl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    .line 112
    invoke-virtual {v2}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->getZoomControl()Landroidx/camera/camera2/internal/ZoomControl;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/camera/camera2/internal/ZoomControl;->getZoomState()Landroidx/lifecycle/LiveData;

    move-result-object v2

    .line 111
    invoke-virtual {v1, v2}, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl$RedirectableLiveData;->redirectTo(Landroidx/lifecycle/LiveData;)V

    .line 115
    :cond_18
    iget-object v1, p0, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->mRedirectTorchStateLiveData:Landroidx/camera/camera2/internal/Camera2CameraInfoImpl$RedirectableLiveData;

    if-eqz v1, :cond_2b

    .line 116
    iget-object v1, p0, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->mRedirectTorchStateLiveData:Landroidx/camera/camera2/internal/Camera2CameraInfoImpl$RedirectableLiveData;

    iget-object v2, p0, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->mCamera2CameraControlImpl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    .line 117
    invoke-virtual {v2}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->getTorchControl()Landroidx/camera/camera2/internal/TorchControl;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/camera/camera2/internal/TorchControl;->getTorchState()Landroidx/lifecycle/LiveData;

    move-result-object v2

    .line 116
    invoke-virtual {v1, v2}, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl$RedirectableLiveData;->redirectTo(Landroidx/lifecycle/LiveData;)V

    .line 120
    :cond_2b
    iget-object v1, p0, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->mCameraCaptureCallbacks:Ljava/util/List;

    if-eqz v1, :cond_52

    .line 122
    iget-object v1, p0, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->mCameraCaptureCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 123
    .local v2, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroidx/camera/core/impl/CameraCaptureCallback;Ljava/util/concurrent/Executor;>;"
    iget-object v3, p0, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->mCamera2CameraControlImpl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/util/concurrent/Executor;

    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroidx/camera/core/impl/CameraCaptureCallback;

    invoke-virtual {v3, v4, v5}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->addSessionCameraCaptureCallback(Ljava/util/concurrent/Executor;Landroidx/camera/core/impl/CameraCaptureCallback;)V

    .line 125
    .end local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroidx/camera/core/impl/CameraCaptureCallback;Ljava/util/concurrent/Executor;>;"
    goto :goto_35

    .line 126
    :cond_4f
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->mCameraCaptureCallbacks:Ljava/util/List;

    .line 128
    :cond_52
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_3 .. :try_end_53} :catchall_57

    .line 129
    invoke-direct {p0}, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->logDeviceInfo()V

    .line 130
    return-void

    .line 128
    :catchall_57
    move-exception v1

    :try_start_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    throw v1
.end method

.method public removeSessionCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;)V
    .registers 6
    .param p1, "callback"    # Landroidx/camera/core/impl/CameraCaptureCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 326
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 327
    :try_start_3
    iget-object v1, p0, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->mCamera2CameraControlImpl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    if-nez v1, :cond_29

    .line 328
    iget-object v1, p0, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->mCameraCaptureCallbacks:Ljava/util/List;

    if-nez v1, :cond_d

    .line 329
    monitor-exit v0

    return-void

    .line 331
    :cond_d
    iget-object v1, p0, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->mCameraCaptureCallbacks:Ljava/util/List;

    .line 332
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 333
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Landroidx/camera/core/impl/CameraCaptureCallback;Ljava/util/concurrent/Executor;>;>;"
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 334
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 335
    .local v2, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroidx/camera/core/impl/CameraCaptureCallback;Ljava/util/concurrent/Executor;>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-ne v3, p1, :cond_26

    .line 336
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 338
    .end local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroidx/camera/core/impl/CameraCaptureCallback;Ljava/util/concurrent/Executor;>;"
    :cond_26
    goto :goto_13

    .line 339
    :cond_27
    monitor-exit v0

    return-void

    .line 341
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Landroidx/camera/core/impl/CameraCaptureCallback;Ljava/util/concurrent/Executor;>;>;"
    :cond_29
    iget-object v1, p0, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->mCamera2CameraControlImpl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    invoke-virtual {v1, p1}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->removeSessionCameraCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;)V

    .line 342
    monitor-exit v0

    .line 343
    return-void

    .line 342
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw v1
.end method
