.class public final Landroidx/camera/view/LifecycleCameraController;
.super Landroidx/camera/view/CameraController;
.source "LifecycleCameraController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CamLifecycleController"


# instance fields
.field private mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1}, Landroidx/camera/view/CameraController;-><init>(Landroid/content/Context;)V

    .line 72
    return-void
.end method


# virtual methods
.method public bindToLifecycle(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 2
    .param p1, "lifecycleOwner"    # Landroidx/lifecycle/LifecycleOwner;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lifecycleOwner"
        }
    .end annotation

    .line 88
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 89
    iput-object p1, p0, Landroidx/camera/view/LifecycleCameraController;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 90
    invoke-virtual {p0}, Landroidx/camera/view/LifecycleCameraController;->startCameraAndTrackStates()V

    .line 91
    return-void
.end method

.method shutDownForTests()V
    .registers 2

    .line 144
    iget-object v0, p0, Landroidx/camera/view/LifecycleCameraController;->mCameraProvider:Landroidx/camera/lifecycle/ProcessCameraProvider;

    if-eqz v0, :cond_e

    .line 145
    iget-object v0, p0, Landroidx/camera/view/LifecycleCameraController;->mCameraProvider:Landroidx/camera/lifecycle/ProcessCameraProvider;

    invoke-virtual {v0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->unbindAll()V

    .line 146
    iget-object v0, p0, Landroidx/camera/view/LifecycleCameraController;->mCameraProvider:Landroidx/camera/lifecycle/ProcessCameraProvider;

    invoke-virtual {v0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->shutdown()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 148
    :cond_e
    return-void
.end method

.method startCamera()Landroidx/camera/core/Camera;
    .registers 5

    .line 121
    iget-object v0, p0, Landroidx/camera/view/LifecycleCameraController;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    const-string v1, "CamLifecycleController"

    const/4 v2, 0x0

    if-nez v0, :cond_d

    .line 122
    const-string v0, "Lifecycle is not set."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-object v2

    .line 125
    :cond_d
    iget-object v0, p0, Landroidx/camera/view/LifecycleCameraController;->mCameraProvider:Landroidx/camera/lifecycle/ProcessCameraProvider;

    if-nez v0, :cond_17

    .line 126
    const-string v0, "CameraProvider is not ready."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-object v2

    .line 130
    :cond_17
    invoke-virtual {p0}, Landroidx/camera/view/LifecycleCameraController;->createUseCaseGroup()Landroidx/camera/core/UseCaseGroup;

    move-result-object v0

    .line 131
    .local v0, "useCaseGroup":Landroidx/camera/core/UseCaseGroup;
    if-nez v0, :cond_1e

    .line 133
    return-object v2

    .line 135
    :cond_1e
    iget-object v1, p0, Landroidx/camera/view/LifecycleCameraController;->mCameraProvider:Landroidx/camera/lifecycle/ProcessCameraProvider;

    iget-object v2, p0, Landroidx/camera/view/LifecycleCameraController;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    iget-object v3, p0, Landroidx/camera/view/LifecycleCameraController;->mCameraSelector:Landroidx/camera/core/CameraSelector;

    invoke-virtual {v1, v2, v3, v0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->bindToLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/UseCaseGroup;)Landroidx/camera/core/Camera;

    move-result-object v1

    return-object v1
.end method

.method public unbind()V
    .registers 2

    .line 100
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/camera/view/LifecycleCameraController;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 102
    iput-object v0, p0, Landroidx/camera/view/LifecycleCameraController;->mCamera:Landroidx/camera/core/Camera;

    .line 103
    iget-object v0, p0, Landroidx/camera/view/LifecycleCameraController;->mCameraProvider:Landroidx/camera/lifecycle/ProcessCameraProvider;

    if-eqz v0, :cond_11

    .line 104
    iget-object v0, p0, Landroidx/camera/view/LifecycleCameraController;->mCameraProvider:Landroidx/camera/lifecycle/ProcessCameraProvider;

    invoke-virtual {v0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->unbindAll()V

    .line 106
    :cond_11
    return-void
.end method
