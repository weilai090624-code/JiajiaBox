.class public final synthetic Landroidx/camera/core/ProcessingImageReader$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/ProcessingImageReader$2;

.field public final synthetic f$1:Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/ProcessingImageReader$2;Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/ProcessingImageReader$2$$ExternalSyntheticLambda0;->f$0:Landroidx/camera/core/ProcessingImageReader$2;

    iput-object p2, p0, Landroidx/camera/core/ProcessingImageReader$2$$ExternalSyntheticLambda0;->f$1:Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/camera/core/ProcessingImageReader$2$$ExternalSyntheticLambda0;->f$0:Landroidx/camera/core/ProcessingImageReader$2;

    iget-object v1, p0, Landroidx/camera/core/ProcessingImageReader$2$$ExternalSyntheticLambda0;->f$1:Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;

    invoke-virtual {v0, v1}, Landroidx/camera/core/ProcessingImageReader$2;->lambda$onImageAvailable$0$androidx-camera-core-ProcessingImageReader$2(Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;)V

    return-void
.end method
