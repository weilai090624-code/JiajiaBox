.class public Landroidx/camera/camera2/internal/compat/quirk/DeviceQuirksLoader;
.super Ljava/lang/Object;
.source "DeviceQuirksLoader.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method static loadQuirks()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/Quirk;",
            ">;"
        }
    .end annotation

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v0, "quirks":Ljava/util/List;, "Ljava/util/List<Landroidx/camera/core/impl/Quirk;>;"
    invoke-static {}, Landroidx/camera/camera2/internal/compat/quirk/ImageCapturePixelHDRPlusQuirk;->load()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 43
    new-instance v1, Landroidx/camera/camera2/internal/compat/quirk/ImageCapturePixelHDRPlusQuirk;

    invoke-direct {v1}, Landroidx/camera/camera2/internal/compat/quirk/ImageCapturePixelHDRPlusQuirk;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    :cond_13
    invoke-static {}, Landroidx/camera/camera2/internal/compat/quirk/SamsungPreviewTargetAspectRatioQuirk;->load()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 46
    new-instance v1, Landroidx/camera/camera2/internal/compat/quirk/SamsungPreviewTargetAspectRatioQuirk;

    invoke-direct {v1}, Landroidx/camera/camera2/internal/compat/quirk/SamsungPreviewTargetAspectRatioQuirk;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_21
    invoke-static {}, Landroidx/camera/camera2/internal/compat/quirk/Nexus4AndroidLTargetAspectRatioQuirk;->load()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 49
    new-instance v1, Landroidx/camera/camera2/internal/compat/quirk/Nexus4AndroidLTargetAspectRatioQuirk;

    invoke-direct {v1}, Landroidx/camera/camera2/internal/compat/quirk/Nexus4AndroidLTargetAspectRatioQuirk;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_2f
    invoke-static {}, Landroidx/camera/camera2/internal/compat/quirk/ExcludedSupportedSizesQuirk;->load()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 52
    new-instance v1, Landroidx/camera/camera2/internal/compat/quirk/ExcludedSupportedSizesQuirk;

    invoke-direct {v1}, Landroidx/camera/camera2/internal/compat/quirk/ExcludedSupportedSizesQuirk;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_3d
    invoke-static {}, Landroidx/camera/camera2/internal/compat/quirk/CrashWhenTakingPhotoWithAutoFlashAEModeQuirk;->load()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 55
    new-instance v1, Landroidx/camera/camera2/internal/compat/quirk/CrashWhenTakingPhotoWithAutoFlashAEModeQuirk;

    invoke-direct {v1}, Landroidx/camera/camera2/internal/compat/quirk/CrashWhenTakingPhotoWithAutoFlashAEModeQuirk;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_4b
    invoke-static {}, Landroidx/camera/camera2/internal/compat/quirk/PreviewPixelHDRnetQuirk;->load()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 58
    new-instance v1, Landroidx/camera/camera2/internal/compat/quirk/PreviewPixelHDRnetQuirk;

    invoke-direct {v1}, Landroidx/camera/camera2/internal/compat/quirk/PreviewPixelHDRnetQuirk;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_59
    invoke-static {}, Landroidx/camera/camera2/internal/compat/quirk/StillCaptureFlashStopRepeatingQuirk;->load()Z

    move-result v1

    if-eqz v1, :cond_67

    .line 61
    new-instance v1, Landroidx/camera/camera2/internal/compat/quirk/StillCaptureFlashStopRepeatingQuirk;

    invoke-direct {v1}, Landroidx/camera/camera2/internal/compat/quirk/StillCaptureFlashStopRepeatingQuirk;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_67
    return-object v0
.end method
