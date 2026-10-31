.class Landroidx/camera/camera2/internal/compat/CameraManagerCompatApi28Impl;
.super Landroidx/camera/camera2/internal/compat/CameraManagerCompatBaseImpl;
.source "CameraManagerCompatApi28Impl.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/camera/camera2/internal/compat/CameraManagerCompatBaseImpl;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 38
    return-void
.end method

.method static create(Landroid/content/Context;)Landroidx/camera/camera2/internal/compat/CameraManagerCompatApi28Impl;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 41
    new-instance v0, Landroidx/camera/camera2/internal/compat/CameraManagerCompatApi28Impl;

    invoke-direct {v0, p0}, Landroidx/camera/camera2/internal/compat/CameraManagerCompatApi28Impl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private isDndFailCase(Ljava/lang/Throwable;)Z
    .registers 4
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "throwable"
        }
    .end annotation

    .line 110
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_e

    invoke-static {p1}, Landroidx/camera/camera2/internal/compat/CameraManagerCompatApi28Impl;->isDndRuntimeException(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private static isDndRuntimeException(Ljava/lang/Throwable;)Z
    .registers 4
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "throwable"
        }
    .end annotation

    .line 129
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    .line 131
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    move-object v2, v0

    .local v2, "stackTraceElement":[Ljava/lang/StackTraceElement;
    if-eqz v0, :cond_25

    array-length v0, v2

    if-gez v0, :cond_18

    goto :goto_25

    .line 135
    :cond_18
    aget-object v0, v2, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_enableShutterSound"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 133
    :cond_25
    :goto_25
    return v1

    .line 137
    .end local v2    # "stackTraceElement":[Ljava/lang/StackTraceElement;
    :cond_26
    return v1
.end method

.method private throwDndException(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cause"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;
        }
    .end annotation

    .line 101
    new-instance v0, Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;

    const/16 v1, 0x2711

    invoke-direct {v0, v1, p1}, Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;-><init>(ILjava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;
    .registers 4
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;
        }
    .end annotation

    .line 87
    :try_start_0
    invoke-super {p0, p1}, Landroidx/camera/camera2/internal/compat/CameraManagerCompatBaseImpl;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_6

    .line 96
    .local v0, "cameraCharacteristics":Landroid/hardware/camera2/CameraCharacteristics;
    nop

    .line 97
    return-object v0

    .line 88
    .end local v0    # "cameraCharacteristics":Landroid/hardware/camera2/CameraCharacteristics;
    :catch_6
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0, v0}, Landroidx/camera/camera2/internal/compat/CameraManagerCompatApi28Impl;->isDndFailCase(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 93
    invoke-direct {p0, v0}, Landroidx/camera/camera2/internal/compat/CameraManagerCompatApi28Impl;->throwDndException(Ljava/lang/Throwable;)V

    .line 95
    :cond_10
    throw v0
.end method

.method public openCamera(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraDevice$StateCallback;)V
    .registers 6
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cameraId",
            "executor",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;
        }
    .end annotation

    .line 67
    :try_start_0
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraManagerCompatApi28Impl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraDevice$StateCallback;)V
    :try_end_5
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_5} :catch_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_5} :catch_14
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_5} :catch_12
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5} :catch_7

    .line 78
    nop

    .line 79
    return-void

    .line 73
    :catch_7
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0, v0}, Landroidx/camera/camera2/internal/compat/CameraManagerCompatApi28Impl;->isDndFailCase(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 75
    invoke-direct {p0, v0}, Landroidx/camera/camera2/internal/compat/CameraManagerCompatApi28Impl;->throwDndException(Ljava/lang/Throwable;)V

    .line 77
    :cond_11
    throw v0

    .line 70
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_12
    move-exception v0

    goto :goto_15

    :catch_14
    move-exception v0

    .line 72
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    :goto_15
    throw v0

    .line 68
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_16
    move-exception v0

    .line 69
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-static {v0}, Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;->toCameraAccessExceptionCompat(Landroid/hardware/camera2/CameraAccessException;)Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;

    move-result-object v1

    throw v1
.end method

.method public registerAvailabilityCallback(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
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

    .line 49
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraManagerCompatApi28Impl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    .line 50
    return-void
.end method

.method public unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraManagerCompatApi28Impl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraManager;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    .line 58
    return-void
.end method
