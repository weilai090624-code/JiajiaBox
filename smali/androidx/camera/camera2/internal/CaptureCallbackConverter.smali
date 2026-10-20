.class final Landroidx/camera/camera2/internal/CaptureCallbackConverter;
.super Ljava/lang/Object;
.source "CaptureCallbackConverter.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method static toCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 3
    .param p0, "cameraCaptureCallback"    # Landroidx/camera/core/impl/CameraCaptureCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraCaptureCallback"
        }
    .end annotation

    .line 40
    if-nez p0, :cond_0

    .line 41
    const/4 v0, 0x0

    return-object v0

    .line 43
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;>;"
    invoke-static {p0, v0}, Landroidx/camera/camera2/internal/CaptureCallbackConverter;->toCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;Ljava/util/List;)V

    .line 45
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 46
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    goto :goto_0

    .line 47
    :cond_1
    invoke-static {v0}, Landroidx/camera/camera2/internal/Camera2CaptureCallbacks;->createComboCallback(Ljava/util/List;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v1

    .line 45
    :goto_0
    return-object v1
.end method

.method static toCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;Ljava/util/List;)V
    .locals 3
    .param p0, "cameraCaptureCallback"    # Landroidx/camera/core/impl/CameraCaptureCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cameraCaptureCallback",
            "captureCallbackList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/impl/CameraCaptureCallback;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;",
            ">;)V"
        }
    .end annotation

    .line 63
    .local p1, "captureCallbackList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;>;"
    instance-of v0, p0, Landroidx/camera/core/impl/CameraCaptureCallbacks$ComboCameraCaptureCallback;

    if-eqz v0, :cond_1

    .line 65
    move-object v0, p0

    check-cast v0, Landroidx/camera/core/impl/CameraCaptureCallbacks$ComboCameraCaptureCallback;

    .line 67
    .local v0, "comboCallback":Landroidx/camera/core/impl/CameraCaptureCallbacks$ComboCameraCaptureCallback;
    invoke-virtual {v0}, Landroidx/camera/core/impl/CameraCaptureCallbacks$ComboCameraCaptureCallback;->getCallbacks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/impl/CameraCaptureCallback;

    .line 68
    .local v2, "callback":Landroidx/camera/core/impl/CameraCaptureCallback;
    invoke-static {v2, p1}, Landroidx/camera/camera2/internal/CaptureCallbackConverter;->toCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;Ljava/util/List;)V

    .line 69
    .end local v2    # "callback":Landroidx/camera/core/impl/CameraCaptureCallback;
    goto :goto_0

    .line 70
    .end local v0    # "comboCallback":Landroidx/camera/core/impl/CameraCaptureCallbacks$ComboCameraCaptureCallback;
    :cond_0
    goto :goto_1

    :cond_1
    instance-of v0, p0, Landroidx/camera/camera2/internal/CaptureCallbackContainer;

    if-eqz v0, :cond_2

    .line 72
    move-object v0, p0

    check-cast v0, Landroidx/camera/camera2/internal/CaptureCallbackContainer;

    .line 74
    .local v0, "callbackContainer":Landroidx/camera/camera2/internal/CaptureCallbackContainer;
    invoke-virtual {v0}, Landroidx/camera/camera2/internal/CaptureCallbackContainer;->getCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    .end local v0    # "callbackContainer":Landroidx/camera/camera2/internal/CaptureCallbackContainer;
    goto :goto_1

    .line 77
    :cond_2
    new-instance v0, Landroidx/camera/camera2/internal/CaptureCallbackAdapter;

    invoke-direct {v0, p0}, Landroidx/camera/camera2/internal/CaptureCallbackAdapter;-><init>(Landroidx/camera/core/impl/CameraCaptureCallback;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    :goto_1
    return-void
.end method
