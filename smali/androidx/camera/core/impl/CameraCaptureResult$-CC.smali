.class public final synthetic Landroidx/camera/core/impl/CameraCaptureResult$-CC;
.super Ljava/lang/Object;
.source "CameraCaptureResult.java"


# direct methods
.method public static $default$populateExifData(Landroidx/camera/core/impl/CameraCaptureResult;Landroidx/camera/core/impl/utils/ExifData$Builder;)V
    .locals 1
    .param p0, "_this"    # Landroidx/camera/core/impl/CameraCaptureResult;
    .param p1, "exifBuilder"    # Landroidx/camera/core/impl/utils/ExifData$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "_this",
            "exifBuilder"
        }
    .end annotation

    .line 66
    invoke-interface {p0}, Landroidx/camera/core/impl/CameraCaptureResult;->getFlashState()Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setFlashState(Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;)Landroidx/camera/core/impl/utils/ExifData$Builder;

    .line 67
    return-void
.end method
