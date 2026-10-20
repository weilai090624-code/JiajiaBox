.class final Landroidx/camera/camera2/internal/ImageCaptureOptionUnpacker;
.super Landroidx/camera/camera2/internal/Camera2CaptureOptionUnpacker;
.source "ImageCaptureOptionUnpacker.java"


# static fields
.field static final INSTANCE:Landroidx/camera/camera2/internal/ImageCaptureOptionUnpacker;


# instance fields
.field private final mImageCapturePixelHDRPlus:Landroidx/camera/camera2/internal/compat/workaround/ImageCapturePixelHDRPlus;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Landroidx/camera/camera2/internal/ImageCaptureOptionUnpacker;

    new-instance v1, Landroidx/camera/camera2/internal/compat/workaround/ImageCapturePixelHDRPlus;

    invoke-direct {v1}, Landroidx/camera/camera2/internal/compat/workaround/ImageCapturePixelHDRPlus;-><init>()V

    invoke-direct {v0, v1}, Landroidx/camera/camera2/internal/ImageCaptureOptionUnpacker;-><init>(Landroidx/camera/camera2/internal/compat/workaround/ImageCapturePixelHDRPlus;)V

    sput-object v0, Landroidx/camera/camera2/internal/ImageCaptureOptionUnpacker;->INSTANCE:Landroidx/camera/camera2/internal/ImageCaptureOptionUnpacker;

    return-void
.end method

.method private constructor <init>(Landroidx/camera/camera2/internal/compat/workaround/ImageCapturePixelHDRPlus;)V
    .locals 0
    .param p1, "imageCapturePixelHDRPlus"    # Landroidx/camera/camera2/internal/compat/workaround/ImageCapturePixelHDRPlus;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageCapturePixelHDRPlus"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Landroidx/camera/camera2/internal/Camera2CaptureOptionUnpacker;-><init>()V

    .line 39
    iput-object p1, p0, Landroidx/camera/camera2/internal/ImageCaptureOptionUnpacker;->mImageCapturePixelHDRPlus:Landroidx/camera/camera2/internal/compat/workaround/ImageCapturePixelHDRPlus;

    .line 40
    return-void
.end method


# virtual methods
.method public unpack(Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/CaptureConfig$Builder;)V
    .locals 4
    .param p2, "builder"    # Landroidx/camera/core/impl/CaptureConfig$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "config",
            "builder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;",
            "Landroidx/camera/core/impl/CaptureConfig$Builder;",
            ")V"
        }
    .end annotation

    .line 45
    .local p1, "config":Landroidx/camera/core/impl/UseCaseConfig;, "Landroidx/camera/core/impl/UseCaseConfig<*>;"
    invoke-super {p0, p1, p2}, Landroidx/camera/camera2/internal/Camera2CaptureOptionUnpacker;->unpack(Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/CaptureConfig$Builder;)V

    .line 47
    instance-of v0, p1, Landroidx/camera/core/impl/ImageCaptureConfig;

    if-eqz v0, :cond_1

    .line 50
    move-object v0, p1

    check-cast v0, Landroidx/camera/core/impl/ImageCaptureConfig;

    .line 52
    .local v0, "imageCaptureConfig":Landroidx/camera/core/impl/ImageCaptureConfig;
    new-instance v1, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    invoke-direct {v1}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;-><init>()V

    .line 54
    .local v1, "camera2ConfigBuilder":Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;
    invoke-virtual {v0}, Landroidx/camera/core/impl/ImageCaptureConfig;->hasCaptureMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    iget-object v2, p0, Landroidx/camera/camera2/internal/ImageCaptureOptionUnpacker;->mImageCapturePixelHDRPlus:Landroidx/camera/camera2/internal/compat/workaround/ImageCapturePixelHDRPlus;

    invoke-virtual {v0}, Landroidx/camera/core/impl/ImageCaptureConfig;->getCaptureMode()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroidx/camera/camera2/internal/compat/workaround/ImageCapturePixelHDRPlus;->toggleHDRPlus(ILandroidx/camera/camera2/impl/Camera2ImplConfig$Builder;)V

    .line 59
    :cond_0
    invoke-virtual {v1}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->build()Landroidx/camera/camera2/impl/Camera2ImplConfig;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addImplementationOptions(Landroidx/camera/core/impl/Config;)V

    .line 60
    return-void

    .line 48
    .end local v0    # "imageCaptureConfig":Landroidx/camera/core/impl/ImageCaptureConfig;
    .end local v1    # "camera2ConfigBuilder":Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "config is not ImageCaptureConfig"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
