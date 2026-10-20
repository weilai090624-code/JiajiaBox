.class Landroidx/camera/camera2/internal/TorchControl$1;
.super Ljava/lang/Object;
.source "TorchControl.java"

# interfaces
.implements Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/internal/TorchControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/camera2/internal/TorchControl;


# direct methods
.method constructor <init>(Landroidx/camera/camera2/internal/TorchControl;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/camera/camera2/internal/TorchControl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 191
    iput-object p1, p0, Landroidx/camera/camera2/internal/TorchControl$1;->this$0:Landroidx/camera/camera2/internal/TorchControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureResult(Landroid/hardware/camera2/TotalCaptureResult;)Z
    .locals 6
    .param p1, "captureResult"    # Landroid/hardware/camera2/TotalCaptureResult;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "captureResult"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Landroidx/camera/camera2/internal/TorchControl$1;->this$0:Landroidx/camera/camera2/internal/TorchControl;

    iget-object v0, v0, Landroidx/camera/camera2/internal/TorchControl;->mEnableTorchCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 197
    invoke-virtual {p1}, Landroid/hardware/camera2/TotalCaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    .line 198
    .local v0, "captureRequest":Landroid/hardware/camera2/CaptureRequest;
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 199
    .local v2, "flashMode":Ljava/lang/Integer;
    if-eqz v2, :cond_0

    .line 200
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 202
    .local v3, "torchEnabled":Z
    :goto_0
    iget-object v4, p0, Landroidx/camera/camera2/internal/TorchControl$1;->this$0:Landroidx/camera/camera2/internal/TorchControl;

    iget-boolean v4, v4, Landroidx/camera/camera2/internal/TorchControl;->mTargetTorchEnabled:Z

    if-ne v3, v4, :cond_1

    .line 203
    iget-object v4, p0, Landroidx/camera/camera2/internal/TorchControl$1;->this$0:Landroidx/camera/camera2/internal/TorchControl;

    iget-object v4, v4, Landroidx/camera/camera2/internal/TorchControl;->mEnableTorchCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    .line 204
    iget-object v4, p0, Landroidx/camera/camera2/internal/TorchControl$1;->this$0:Landroidx/camera/camera2/internal/TorchControl;

    iput-object v5, v4, Landroidx/camera/camera2/internal/TorchControl;->mEnableTorchCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 208
    .end local v0    # "captureRequest":Landroid/hardware/camera2/CaptureRequest;
    .end local v2    # "flashMode":Ljava/lang/Integer;
    .end local v3    # "torchEnabled":Z
    :cond_1
    return v1
.end method
