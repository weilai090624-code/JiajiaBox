.class final Landroidx/camera/core/CaptureBundles;
.super Ljava/lang/Object;
.source "CaptureBundles.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/CaptureBundles$CaptureBundleImpl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createCaptureBundle(Ljava/util/List;)Landroidx/camera/core/impl/CaptureBundle;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "captureStageList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/CaptureStage;",
            ">;)",
            "Landroidx/camera/core/impl/CaptureBundle;"
        }
    .end annotation

    .line 47
    .local p0, "captureStageList":Ljava/util/List;, "Ljava/util/List<Landroidx/camera/core/impl/CaptureStage;>;"
    new-instance v0, Landroidx/camera/core/CaptureBundles$CaptureBundleImpl;

    invoke-direct {v0, p0}, Landroidx/camera/core/CaptureBundles$CaptureBundleImpl;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static varargs createCaptureBundle([Landroidx/camera/core/impl/CaptureStage;)Landroidx/camera/core/impl/CaptureBundle;
    .locals 2
    .param p0, "captureStages"    # [Landroidx/camera/core/impl/CaptureStage;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "captureStages"
        }
    .end annotation

    .line 41
    new-instance v0, Landroidx/camera/core/CaptureBundles$CaptureBundleImpl;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/camera/core/CaptureBundles$CaptureBundleImpl;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static singleDefaultCaptureBundle()Landroidx/camera/core/impl/CaptureBundle;
    .locals 3

    .line 35
    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/camera/core/impl/CaptureStage;

    new-instance v1, Landroidx/camera/core/impl/CaptureStage$DefaultCaptureStage;

    invoke-direct {v1}, Landroidx/camera/core/impl/CaptureStage$DefaultCaptureStage;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Landroidx/camera/core/CaptureBundles;->createCaptureBundle([Landroidx/camera/core/impl/CaptureStage;)Landroidx/camera/core/impl/CaptureBundle;

    move-result-object v0

    return-object v0
.end method
