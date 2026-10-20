.class public final synthetic Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/ImageCapture$CaptureCallbackChecker;

.field public final synthetic f$1:Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$CaptureResultChecker;

.field public final synthetic f$2:J

.field public final synthetic f$3:J

.field public final synthetic f$4:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/ImageCapture$CaptureCallbackChecker;Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$CaptureResultChecker;JJLjava/lang/Object;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$$ExternalSyntheticLambda0;->f$0:Landroidx/camera/core/ImageCapture$CaptureCallbackChecker;

    iput-object p2, p0, Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$$ExternalSyntheticLambda0;->f$1:Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$CaptureResultChecker;

    iput-wide p3, p0, Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$$ExternalSyntheticLambda0;->f$2:J

    iput-wide p5, p0, Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$$ExternalSyntheticLambda0;->f$3:J

    iput-object p7, p0, Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$$ExternalSyntheticLambda0;->f$4:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 8

    .line 0
    iget-object v0, p0, Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$$ExternalSyntheticLambda0;->f$0:Landroidx/camera/core/ImageCapture$CaptureCallbackChecker;

    iget-object v1, p0, Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$$ExternalSyntheticLambda0;->f$1:Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$CaptureResultChecker;

    iget-wide v2, p0, Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$$ExternalSyntheticLambda0;->f$2:J

    iget-wide v4, p0, Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$$ExternalSyntheticLambda0;->f$3:J

    iget-object v6, p0, Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$$ExternalSyntheticLambda0;->f$4:Ljava/lang/Object;

    move-object v7, p1

    invoke-virtual/range {v0 .. v7}, Landroidx/camera/core/ImageCapture$CaptureCallbackChecker;->lambda$checkCaptureResult$0$androidx-camera-core-ImageCapture$CaptureCallbackChecker(Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$CaptureResultChecker;JJLjava/lang/Object;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
