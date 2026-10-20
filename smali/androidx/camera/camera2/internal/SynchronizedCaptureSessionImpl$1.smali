.class Landroidx/camera/camera2/internal/SynchronizedCaptureSessionImpl$1;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "SynchronizedCaptureSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/internal/SynchronizedCaptureSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/camera2/internal/SynchronizedCaptureSessionImpl;


# direct methods
.method constructor <init>(Landroidx/camera/camera2/internal/SynchronizedCaptureSessionImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/camera/camera2/internal/SynchronizedCaptureSessionImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 312
    iput-object p1, p0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionImpl$1;->this$0:Landroidx/camera/camera2/internal/SynchronizedCaptureSessionImpl;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V
    .locals 2
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "sequenceId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "session",
            "sequenceId"
        }
    .end annotation

    .line 325
    iget-object v0, p0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionImpl$1;->this$0:Landroidx/camera/camera2/internal/SynchronizedCaptureSessionImpl;

    iget-object v0, v0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionImpl;->mStartStreamingCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionImpl$1;->this$0:Landroidx/camera/camera2/internal/SynchronizedCaptureSessionImpl;

    iget-object v0, v0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionImpl;->mStartStreamingCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-virtual {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setCancelled()Z

    .line 327
    iget-object v0, p0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionImpl$1;->this$0:Landroidx/camera/camera2/internal/SynchronizedCaptureSessionImpl;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionImpl;->mStartStreamingCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 329
    :cond_0
    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 2
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "timestamp"    # J
    .param p5, "frameNumber"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "session",
            "request",
            "timestamp",
            "frameNumber"
        }
    .end annotation

    .line 316
    iget-object v0, p0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionImpl$1;->this$0:Landroidx/camera/camera2/internal/SynchronizedCaptureSessionImpl;

    iget-object v0, v0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionImpl;->mStartStreamingCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionImpl$1;->this$0:Landroidx/camera/camera2/internal/SynchronizedCaptureSessionImpl;

    iget-object v0, v0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionImpl;->mStartStreamingCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    .line 318
    iget-object v0, p0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionImpl$1;->this$0:Landroidx/camera/camera2/internal/SynchronizedCaptureSessionImpl;

    iput-object v1, v0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionImpl;->mStartStreamingCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 320
    :cond_0
    return-void
.end method
