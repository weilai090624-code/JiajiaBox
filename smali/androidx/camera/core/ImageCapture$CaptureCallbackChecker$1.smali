.class Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$1;
.super Ljava/lang/Object;
.source "ImageCapture.java"

# interfaces
.implements Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$CaptureResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/core/ImageCapture$CaptureCallbackChecker;->lambda$checkCaptureResult$0$androidx-camera-core-ImageCapture$CaptureCallbackChecker(Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$CaptureResultChecker;JJLjava/lang/Object;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/core/ImageCapture$CaptureCallbackChecker;

.field final synthetic val$checker:Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$CaptureResultChecker;

.field final synthetic val$completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

.field final synthetic val$defValue:Ljava/lang/Object;

.field final synthetic val$startTimeInMs:J

.field final synthetic val$timeoutInMs:J


# direct methods
.method constructor <init>(Landroidx/camera/core/ImageCapture$CaptureCallbackChecker;Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$CaptureResultChecker;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;JJLjava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/camera/core/ImageCapture$CaptureCallbackChecker;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$checker",
            "val$completer",
            "val$startTimeInMs",
            "val$timeoutInMs",
            "val$defValue"
        }
    .end annotation

    .line 2154
    iput-object p1, p0, Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$1;->this$0:Landroidx/camera/core/ImageCapture$CaptureCallbackChecker;

    iput-object p2, p0, Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$1;->val$checker:Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$CaptureResultChecker;

    iput-object p3, p0, Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$1;->val$completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iput-wide p4, p0, Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$1;->val$startTimeInMs:J

    iput-wide p6, p0, Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$1;->val$timeoutInMs:J

    iput-object p8, p0, Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$1;->val$defValue:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureResult(Landroidx/camera/core/impl/CameraCaptureResult;)Z
    .locals 7
    .param p1, "captureResult"    # Landroidx/camera/core/impl/CameraCaptureResult;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "captureResult"
        }
    .end annotation

    .line 2158
    iget-object v0, p0, Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$1;->val$checker:Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$CaptureResultChecker;

    invoke-interface {v0, p1}, Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$CaptureResultChecker;->check(Landroidx/camera/core/impl/CameraCaptureResult;)Ljava/lang/Object;

    move-result-object v0

    .line 2159
    .local v0, "result":Ljava/lang/Object;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2160
    iget-object v2, p0, Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$1;->val$completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-virtual {v2, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    .line 2161
    return v1

    .line 2162
    :cond_0
    iget-wide v2, p0, Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$1;->val$startTimeInMs:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 2163
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$1;->val$startTimeInMs:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$1;->val$timeoutInMs:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 2165
    iget-object v2, p0, Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$1;->val$completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iget-object v3, p0, Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$1;->val$defValue:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    .line 2166
    return v1

    .line 2169
    :cond_1
    const/4 v1, 0x0

    return v1
.end method
