.class Landroidx/camera/camera2/internal/MeteringRepeatingSession;
.super Ljava/lang/Object;
.source "MeteringRepeatingSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/internal/MeteringRepeatingSession$MeteringRepeatingConfig;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MeteringRepeating"


# instance fields
.field private mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

.field private final mSessionConfig:Landroidx/camera/core/impl/SessionConfig;


# direct methods
.method constructor <init>(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;)V
    .locals 8
    .param p1, "cameraCharacteristicsCompat"    # Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraCharacteristicsCompat"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Landroidx/camera/camera2/internal/MeteringRepeatingSession$MeteringRepeatingConfig;

    invoke-direct {v0}, Landroidx/camera/camera2/internal/MeteringRepeatingSession$MeteringRepeatingConfig;-><init>()V

    .line 66
    .local v0, "configWithDefaults":Landroidx/camera/camera2/internal/MeteringRepeatingSession$MeteringRepeatingConfig;
    new-instance v1, Landroid/graphics/SurfaceTexture;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 67
    .local v1, "surfaceTexture":Landroid/graphics/SurfaceTexture;
    invoke-direct {p0, p1}, Landroidx/camera/camera2/internal/MeteringRepeatingSession;->getMinimumPreviewSize(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;)Landroid/util/Size;

    move-result-object v2

    .line 68
    .local v2, "meteringSurfaceSize":Landroid/util/Size;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MerteringSession SurfaceTexture size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MeteringRepeating"

    invoke-static {v4, v3}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v3

    .line 70
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v4

    .line 69
    invoke-virtual {v1, v3, v4}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 71
    new-instance v3, Landroid/view/Surface;

    invoke-direct {v3, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 73
    .local v3, "surface":Landroid/view/Surface;
    invoke-static {v0}, Landroidx/camera/core/impl/SessionConfig$Builder;->createFrom(Landroidx/camera/core/impl/UseCaseConfig;)Landroidx/camera/core/impl/SessionConfig$Builder;

    move-result-object v4

    .line 74
    .local v4, "builder":Landroidx/camera/core/impl/SessionConfig$Builder;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroidx/camera/core/impl/SessionConfig$Builder;->setTemplateType(I)V

    .line 76
    new-instance v5, Landroidx/camera/core/impl/ImmediateSurface;

    invoke-direct {v5, v3}, Landroidx/camera/core/impl/ImmediateSurface;-><init>(Landroid/view/Surface;)V

    iput-object v5, p0, Landroidx/camera/camera2/internal/MeteringRepeatingSession;->mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    .line 78
    iget-object v5, p0, Landroidx/camera/camera2/internal/MeteringRepeatingSession;->mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    invoke-virtual {v5}, Landroidx/camera/core/impl/DeferrableSurface;->getTerminationFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v5

    new-instance v6, Landroidx/camera/camera2/internal/MeteringRepeatingSession$1;

    invoke-direct {v6, p0, v3, v1}, Landroidx/camera/camera2/internal/MeteringRepeatingSession$1;-><init>(Landroidx/camera/camera2/internal/MeteringRepeatingSession;Landroid/view/Surface;Landroid/graphics/SurfaceTexture;)V

    .line 90
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v7

    .line 78
    invoke-static {v5, v6, v7}, Landroidx/camera/core/impl/utils/futures/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/impl/utils/futures/FutureCallback;Ljava/util/concurrent/Executor;)V

    .line 92
    iget-object v5, p0, Landroidx/camera/camera2/internal/MeteringRepeatingSession;->mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    invoke-virtual {v4, v5}, Landroidx/camera/core/impl/SessionConfig$Builder;->addSurface(Landroidx/camera/core/impl/DeferrableSurface;)V

    .line 94
    invoke-virtual {v4}, Landroidx/camera/core/impl/SessionConfig$Builder;->build()Landroidx/camera/core/impl/SessionConfig;

    move-result-object v5

    iput-object v5, p0, Landroidx/camera/camera2/internal/MeteringRepeatingSession;->mSessionConfig:Landroidx/camera/core/impl/SessionConfig;

    .line 95
    return-void
.end method

.method private getMinimumPreviewSize(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;)Landroid/util/Size;
    .locals 5
    .param p1, "cameraCharacteristicsCompat"    # Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraCharacteristicsCompat"
        }
    .end annotation

    .line 143
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 145
    .local v0, "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    const-string v1, "MeteringRepeating"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 146
    const-string v3, "Can not retrieve SCALER_STREAM_CONFIGURATION_MAP."

    invoke-static {v1, v3}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v2, v2}, Landroid/util/Size;-><init>(II)V

    return-object v1

    .line 150
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-ge v3, v4, :cond_1

    .line 153
    const-class v3, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v3

    .local v3, "outputSizes":[Landroid/util/Size;
    goto :goto_0

    .line 155
    .end local v3    # "outputSizes":[Landroid/util/Size;
    :cond_1
    const/16 v3, 0x22

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v3

    .line 157
    .restart local v3    # "outputSizes":[Landroid/util/Size;
    :goto_0
    if-nez v3, :cond_2

    .line 158
    const-string v4, "Can not get output size list."

    invoke-static {v1, v4}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v2, v2}, Landroid/util/Size;-><init>(II)V

    return-object v1

    .line 162
    :cond_2
    nop

    .line 163
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Landroidx/camera/camera2/internal/MeteringRepeatingSession$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroidx/camera/camera2/internal/MeteringRepeatingSession$$ExternalSyntheticLambda0;-><init>()V

    .line 162
    invoke-static {v1, v2}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    return-object v1
.end method

.method static synthetic lambda$getMinimumPreviewSize$0(Landroid/util/Size;Landroid/util/Size;)I
    .locals 6
    .param p0, "o1"    # Landroid/util/Size;
    .param p1, "o2"    # Landroid/util/Size;

    .line 164
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-long v2, v2

    mul-long v0, v0, v2

    .line 165
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v4

    int-to-long v4, v4

    mul-long v2, v2, v4

    sub-long/2addr v0, v2

    .line 164
    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result v0

    .line 167
    .local v0, "result":I
    return v0
.end method


# virtual methods
.method clear()V
    .locals 2

    .line 112
    const-string v0, "MeteringRepeating"

    const-string v1, "MeteringRepeating clear!"

    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Landroidx/camera/camera2/internal/MeteringRepeatingSession;->mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Landroidx/camera/camera2/internal/MeteringRepeatingSession;->mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    invoke-virtual {v0}, Landroidx/camera/core/impl/DeferrableSurface;->close()V

    .line 116
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/camera/camera2/internal/MeteringRepeatingSession;->mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    .line 117
    return-void
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .line 104
    const-string v0, "MeteringRepeating"

    return-object v0
.end method

.method getSessionConfig()Landroidx/camera/core/impl/SessionConfig;
    .locals 1

    .line 99
    iget-object v0, p0, Landroidx/camera/camera2/internal/MeteringRepeatingSession;->mSessionConfig:Landroidx/camera/core/impl/SessionConfig;

    return-object v0
.end method
