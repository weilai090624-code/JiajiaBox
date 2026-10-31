.class public Landroidx/camera/core/internal/compat/quirk/DeviceQuirksLoader;
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
    invoke-static {}, Landroidx/camera/core/internal/compat/quirk/IncompleteCameraListQuirk;->load()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 43
    new-instance v1, Landroidx/camera/core/internal/compat/quirk/IncompleteCameraListQuirk;

    invoke-direct {v1}, Landroidx/camera/core/internal/compat/quirk/IncompleteCameraListQuirk;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    :cond_13
    invoke-static {}, Landroidx/camera/core/internal/compat/quirk/ImageCaptureRotationOptionQuirk;->load()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 47
    new-instance v1, Landroidx/camera/core/internal/compat/quirk/ImageCaptureRotationOptionQuirk;

    invoke-direct {v1}, Landroidx/camera/core/internal/compat/quirk/ImageCaptureRotationOptionQuirk;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_21
    invoke-static {}, Landroidx/camera/core/internal/compat/quirk/ImageCaptureWashedOutImageQuirk;->load()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 51
    new-instance v1, Landroidx/camera/core/internal/compat/quirk/ImageCaptureWashedOutImageQuirk;

    invoke-direct {v1}, Landroidx/camera/core/internal/compat/quirk/ImageCaptureWashedOutImageQuirk;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_2f
    return-object v0
.end method
