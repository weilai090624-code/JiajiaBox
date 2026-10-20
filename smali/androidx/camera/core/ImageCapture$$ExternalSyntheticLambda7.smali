.class public final synthetic Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/internal/YuvToJpegProcessor;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/internal/YuvToJpegProcessor;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda7;->f$0:Landroidx/camera/core/internal/YuvToJpegProcessor;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda7;->f$0:Landroidx/camera/core/internal/YuvToJpegProcessor;

    invoke-static {v0}, Landroidx/camera/core/ImageCapture;->lambda$createPipeline$1(Landroidx/camera/core/internal/YuvToJpegProcessor;)V

    return-void
.end method
