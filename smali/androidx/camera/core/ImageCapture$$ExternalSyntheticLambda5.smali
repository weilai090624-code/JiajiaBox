.class public final synthetic Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/ImageCapture;

.field public final synthetic f$1:Landroidx/camera/core/impl/CaptureConfig$Builder;

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Landroidx/camera/core/impl/CaptureStage;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/ImageCapture;Landroidx/camera/core/impl/CaptureConfig$Builder;Ljava/util/List;Landroidx/camera/core/impl/CaptureStage;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda5;->f$0:Landroidx/camera/core/ImageCapture;

    iput-object p2, p0, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda5;->f$1:Landroidx/camera/core/impl/CaptureConfig$Builder;

    iput-object p3, p0, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda5;->f$2:Ljava/util/List;

    iput-object p4, p0, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda5;->f$3:Landroidx/camera/core/impl/CaptureStage;

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 4

    .line 0
    iget-object v0, p0, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda5;->f$0:Landroidx/camera/core/ImageCapture;

    iget-object v1, p0, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda5;->f$1:Landroidx/camera/core/impl/CaptureConfig$Builder;

    iget-object v2, p0, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda5;->f$2:Ljava/util/List;

    iget-object v3, p0, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda5;->f$3:Landroidx/camera/core/impl/CaptureStage;

    invoke-virtual {v0, v1, v2, v3, p1}, Landroidx/camera/core/ImageCapture;->lambda$issueTakePicture$19$androidx-camera-core-ImageCapture(Landroidx/camera/core/impl/CaptureConfig$Builder;Ljava/util/List;Landroidx/camera/core/impl/CaptureStage;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
