.class final Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CameraControlSessionCallback;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "Camera2CameraControlImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/internal/Camera2CameraControlImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CameraControlSessionCallback"
.end annotation


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field final mResultListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "executor"
        }
    .end annotation

    .line 729
    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    .line 725
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CameraControlSessionCallback;->mResultListeners:Ljava/util/Set;

    .line 730
    iput-object p1, p0, Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CameraControlSessionCallback;->mExecutor:Ljava/util/concurrent/Executor;

    .line 731
    return-void
.end method


# virtual methods
.method addListener(Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 735
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CameraControlSessionCallback;->mResultListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 736
    return-void
.end method

.method synthetic lambda$onCaptureCompleted$0$androidx-camera-camera2-internal-Camera2CameraControlImpl$CameraControlSessionCallback(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 4
    .param p1, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .line 750
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 751
    .local v0, "removeSet":Ljava/util/Set;, "Ljava/util/Set<Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;>;"
    iget-object v1, p0, Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CameraControlSessionCallback;->mResultListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;

    .line 752
    .local v2, "listener":Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;
    invoke-interface {v2, p1}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;->onCaptureResult(Landroid/hardware/camera2/TotalCaptureResult;)Z

    move-result v3

    .line 753
    .local v3, "isFinished":Z
    if-eqz v3, :cond_0

    .line 754
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 756
    .end local v2    # "listener":Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;
    .end local v3    # "isFinished":Z
    :cond_0
    goto :goto_0

    .line 758
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 759
    iget-object v1, p0, Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CameraControlSessionCallback;->mResultListeners:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 761
    :cond_2
    return-void
.end method

.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 2
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "result"    # Landroid/hardware/camera2/TotalCaptureResult;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10
        }
        names = {
            "session",
            "request",
            "result"
        }
    .end annotation

    .line 749
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CameraControlSessionCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CameraControlSessionCallback$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p3}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CameraControlSessionCallback$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CameraControlSessionCallback;Landroid/hardware/camera2/TotalCaptureResult;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 762
    return-void
.end method

.method removeListener(Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 740
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CameraControlSessionCallback;->mResultListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 741
    return-void
.end method
