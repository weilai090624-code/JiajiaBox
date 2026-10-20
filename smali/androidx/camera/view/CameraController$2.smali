.class Landroidx/camera/view/CameraController$2;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/view/CameraController;->startRecording(Landroidx/camera/view/video/OutputFileOptions;Ljava/util/concurrent/Executor;Landroidx/camera/view/video/OnVideoSavedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/view/CameraController;

.field final synthetic val$callback:Landroidx/camera/view/video/OnVideoSavedCallback;


# direct methods
.method constructor <init>(Landroidx/camera/view/CameraController;Landroidx/camera/view/video/OnVideoSavedCallback;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/camera/view/CameraController;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$callback"
        }
    .end annotation

    .line 1070
    iput-object p1, p0, Landroidx/camera/view/CameraController$2;->this$0:Landroidx/camera/view/CameraController;

    iput-object p2, p0, Landroidx/camera/view/CameraController$2;->val$callback:Landroidx/camera/view/video/OnVideoSavedCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "videoCaptureError"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "videoCaptureError",
            "message",
            "cause"
        }
    .end annotation

    .line 1082
    iget-object v0, p0, Landroidx/camera/view/CameraController$2;->this$0:Landroidx/camera/view/CameraController;

    iget-object v0, v0, Landroidx/camera/view/CameraController;->mVideoIsRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1083
    iget-object v0, p0, Landroidx/camera/view/CameraController$2;->val$callback:Landroidx/camera/view/video/OnVideoSavedCallback;

    invoke-interface {v0, p1, p2, p3}, Landroidx/camera/view/video/OnVideoSavedCallback;->onError(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 1084
    return-void
.end method

.method public onVideoSaved(Landroidx/camera/core/VideoCapture$OutputFileResults;)V
    .locals 2
    .param p1, "outputFileResults"    # Landroidx/camera/core/VideoCapture$OutputFileResults;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outputFileResults"
        }
    .end annotation

    .line 1074
    iget-object v0, p0, Landroidx/camera/view/CameraController$2;->this$0:Landroidx/camera/view/CameraController;

    iget-object v0, v0, Landroidx/camera/view/CameraController;->mVideoIsRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1075
    iget-object v0, p0, Landroidx/camera/view/CameraController$2;->val$callback:Landroidx/camera/view/video/OnVideoSavedCallback;

    .line 1076
    invoke-virtual {p1}, Landroidx/camera/core/VideoCapture$OutputFileResults;->getSavedUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroidx/camera/view/video/OutputFileResults;->create(Landroid/net/Uri;)Landroidx/camera/view/video/OutputFileResults;

    move-result-object v1

    .line 1075
    invoke-interface {v0, v1}, Landroidx/camera/view/video/OnVideoSavedCallback;->onVideoSaved(Landroidx/camera/view/video/OutputFileResults;)V

    .line 1077
    return-void
.end method
