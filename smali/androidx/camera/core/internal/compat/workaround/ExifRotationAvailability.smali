.class public Landroidx/camera/core/internal/compat/workaround/ExifRotationAvailability;
.super Ljava/lang/Object;
.source "ExifRotationAvailability.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isRotationOptionSupported()Z
    .registers 3

    .line 39
    const-class v0, Landroidx/camera/core/internal/compat/quirk/ImageCaptureRotationOptionQuirk;

    .line 40
    invoke-static {v0}, Landroidx/camera/core/internal/compat/quirk/DeviceQuirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/internal/compat/quirk/ImageCaptureRotationOptionQuirk;

    .line 42
    .local v0, "quirk":Landroidx/camera/core/internal/compat/quirk/ImageCaptureRotationOptionQuirk;
    if-eqz v0, :cond_11

    sget-object v1, Landroidx/camera/core/impl/CaptureConfig;->OPTION_ROTATION:Landroidx/camera/core/impl/Config$Option;

    invoke-virtual {v0, v1}, Landroidx/camera/core/internal/compat/quirk/ImageCaptureRotationOptionQuirk;->isSupported(Landroidx/camera/core/impl/Config$Option;)Z

    move-result v1

    goto :goto_12

    :cond_11
    const/4 v1, 0x1

    :goto_12
    return v1
.end method

.method public shouldUseExifOrientation(Landroidx/camera/core/ImageProxy;)Z
    .registers 5
    .param p1, "image"    # Landroidx/camera/core/ImageProxy;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "image"
        }
    .end annotation

    .line 55
    const-class v0, Landroidx/camera/core/internal/compat/quirk/ImageCaptureRotationOptionQuirk;

    .line 56
    invoke-static {v0}, Landroidx/camera/core/internal/compat/quirk/DeviceQuirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/internal/compat/quirk/ImageCaptureRotationOptionQuirk;

    .line 58
    .local v0, "quirk":Landroidx/camera/core/internal/compat/quirk/ImageCaptureRotationOptionQuirk;
    if-eqz v0, :cond_12

    sget-object v1, Landroidx/camera/core/impl/CaptureConfig;->OPTION_ROTATION:Landroidx/camera/core/impl/Config$Option;

    invoke-virtual {v0, v1}, Landroidx/camera/core/internal/compat/quirk/ImageCaptureRotationOptionQuirk;->isSupported(Landroidx/camera/core/impl/Config$Option;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 59
    :cond_12
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getFormat()I

    move-result v1

    const/16 v2, 0x100

    if-ne v1, v2, :cond_1c

    const/4 v1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    .line 58
    :goto_1d
    return v1
.end method
