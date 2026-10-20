.class Landroidx/camera/view/CameraController$1;
.super Landroidx/camera/view/RotationReceiver;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/view/CameraController;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/view/CameraController;


# direct methods
.method constructor <init>(Landroidx/camera/view/CameraController;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/camera/view/CameraController;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "context"
        }
    .end annotation

    .line 318
    iput-object p1, p0, Landroidx/camera/view/CameraController$1;->this$0:Landroidx/camera/view/CameraController;

    invoke-direct {p0, p2}, Landroidx/camera/view/RotationReceiver;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onRotationChanged(I)V
    .locals 1
    .param p1, "rotation"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rotation"
        }
    .end annotation

    .line 321
    iget-object v0, p0, Landroidx/camera/view/CameraController$1;->this$0:Landroidx/camera/view/CameraController;

    iget-object v0, v0, Landroidx/camera/view/CameraController;->mImageAnalysis:Landroidx/camera/core/ImageAnalysis;

    invoke-virtual {v0, p1}, Landroidx/camera/core/ImageAnalysis;->setTargetRotation(I)V

    .line 322
    iget-object v0, p0, Landroidx/camera/view/CameraController$1;->this$0:Landroidx/camera/view/CameraController;

    iget-object v0, v0, Landroidx/camera/view/CameraController;->mImageCapture:Landroidx/camera/core/ImageCapture;

    invoke-virtual {v0, p1}, Landroidx/camera/core/ImageCapture;->setTargetRotation(I)V

    .line 323
    iget-object v0, p0, Landroidx/camera/view/CameraController$1;->this$0:Landroidx/camera/view/CameraController;

    iget-object v0, v0, Landroidx/camera/view/CameraController;->mVideoCapture:Landroidx/camera/core/VideoCapture;

    invoke-virtual {v0, p1}, Landroidx/camera/core/VideoCapture;->setTargetRotation(I)V

    .line 324
    return-void
.end method
