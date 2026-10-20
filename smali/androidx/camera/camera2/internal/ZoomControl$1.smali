.class Landroidx/camera/camera2/internal/ZoomControl$1;
.super Ljava/lang/Object;
.source "ZoomControl.java"

# interfaces
.implements Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/internal/ZoomControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/camera2/internal/ZoomControl;


# direct methods
.method constructor <init>(Landroidx/camera/camera2/internal/ZoomControl;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/camera/camera2/internal/ZoomControl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 164
    iput-object p1, p0, Landroidx/camera/camera2/internal/ZoomControl$1;->this$0:Landroidx/camera/camera2/internal/ZoomControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureResult(Landroid/hardware/camera2/TotalCaptureResult;)Z
    .locals 1
    .param p1, "captureResult"    # Landroid/hardware/camera2/TotalCaptureResult;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "captureResult"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Landroidx/camera/camera2/internal/ZoomControl$1;->this$0:Landroidx/camera/camera2/internal/ZoomControl;

    iget-object v0, v0, Landroidx/camera/camera2/internal/ZoomControl;->mZoomImpl:Landroidx/camera/camera2/internal/ZoomControl$ZoomImpl;

    invoke-interface {v0, p1}, Landroidx/camera/camera2/internal/ZoomControl$ZoomImpl;->onCaptureResult(Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 169
    const/4 v0, 0x0

    return v0
.end method
