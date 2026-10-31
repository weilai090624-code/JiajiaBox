.class public abstract Landroidx/camera/core/UseCase;
.super Ljava/lang/Object;
.source "UseCase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/UseCase$EventCallback;,
        Landroidx/camera/core/UseCase$StateChangeCallback;,
        Landroidx/camera/core/UseCase$State;
    }
.end annotation


# instance fields
.field private mAttachedResolution:Landroid/util/Size;

.field private mAttachedSessionConfig:Landroidx/camera/core/impl/SessionConfig;

.field private mCamera:Landroidx/camera/core/impl/CameraInternal;

.field private mCameraConfig:Landroidx/camera/core/impl/UseCaseConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;"
        }
    .end annotation
.end field

.field private final mCameraLock:Ljava/lang/Object;

.field private mCurrentConfig:Landroidx/camera/core/impl/UseCaseConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;"
        }
    .end annotation
.end field

.field private mExtendedConfig:Landroidx/camera/core/impl/UseCaseConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;"
        }
    .end annotation
.end field

.field private mState:Landroidx/camera/core/UseCase$State;

.field private final mStateChangeCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/camera/core/UseCase$StateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mUseCaseConfig:Landroidx/camera/core/impl/UseCaseConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;"
        }
    .end annotation
.end field

.field private mViewPortCropRect:Landroid/graphics/Rect;


# direct methods
.method protected constructor <init>(Landroidx/camera/core/impl/UseCaseConfig;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentConfig"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;)V"
        }
    .end annotation

    .line 137
    .local p1, "currentConfig":Landroidx/camera/core/impl/UseCaseConfig;, "Landroidx/camera/core/impl/UseCaseConfig<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/UseCase;->mStateChangeCallbacks:Ljava/util/Set;

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/UseCase;->mCameraLock:Ljava/lang/Object;

    .line 77
    sget-object v0, Landroidx/camera/core/UseCase$State;->INACTIVE:Landroidx/camera/core/UseCase$State;

    iput-object v0, p0, Landroidx/camera/core/UseCase;->mState:Landroidx/camera/core/UseCase$State;

    .line 128
    invoke-static {}, Landroidx/camera/core/impl/SessionConfig;->defaultEmptySessionConfig()Landroidx/camera/core/impl/SessionConfig;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/core/UseCase;->mAttachedSessionConfig:Landroidx/camera/core/impl/SessionConfig;

    .line 138
    iput-object p1, p0, Landroidx/camera/core/UseCase;->mUseCaseConfig:Landroidx/camera/core/impl/UseCaseConfig;

    .line 139
    iput-object p1, p0, Landroidx/camera/core/UseCase;->mCurrentConfig:Landroidx/camera/core/impl/UseCaseConfig;

    .line 140
    return-void
.end method

.method private addStateChangeCallback(Landroidx/camera/core/UseCase$StateChangeCallback;)V
    .registers 3
    .param p1, "callback"    # Landroidx/camera/core/UseCase$StateChangeCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 326
    iget-object v0, p0, Landroidx/camera/core/UseCase;->mStateChangeCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 327
    return-void
.end method

.method private removeStateChangeCallback(Landroidx/camera/core/UseCase$StateChangeCallback;)V
    .registers 3
    .param p1, "callback"    # Landroidx/camera/core/UseCase$StateChangeCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 336
    iget-object v0, p0, Landroidx/camera/core/UseCase;->mStateChangeCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 337
    return-void
.end method


# virtual methods
.method public getAttachedSurfaceResolution()Landroid/util/Size;
    .registers 2

    .line 489
    iget-object v0, p0, Landroidx/camera/core/UseCase;->mAttachedResolution:Landroid/util/Size;

    return-object v0
.end method

.method public getCamera()Landroidx/camera/core/impl/CameraInternal;
    .registers 3

    .line 475
    iget-object v0, p0, Landroidx/camera/core/UseCase;->mCameraLock:Ljava/lang/Object;

    monitor-enter v0

    .line 476
    :try_start_3
    iget-object v1, p0, Landroidx/camera/core/UseCase;->mCamera:Landroidx/camera/core/impl/CameraInternal;

    monitor-exit v0

    return-object v1

    .line 477
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method protected getCameraControl()Landroidx/camera/core/impl/CameraControlInternal;
    .registers 3

    .line 642
    iget-object v0, p0, Landroidx/camera/core/UseCase;->mCameraLock:Ljava/lang/Object;

    monitor-enter v0

    .line 643
    :try_start_3
    iget-object v1, p0, Landroidx/camera/core/UseCase;->mCamera:Landroidx/camera/core/impl/CameraInternal;

    if-nez v1, :cond_b

    .line 644
    sget-object v1, Landroidx/camera/core/impl/CameraControlInternal;->DEFAULT_EMPTY_INSTANCE:Landroidx/camera/core/impl/CameraControlInternal;

    monitor-exit v0

    return-object v1

    .line 646
    :cond_b
    iget-object v1, p0, Landroidx/camera/core/UseCase;->mCamera:Landroidx/camera/core/impl/CameraInternal;

    invoke-interface {v1}, Landroidx/camera/core/impl/CameraInternal;->getCameraControlInternal()Landroidx/camera/core/impl/CameraControlInternal;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 647
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method protected getCameraId()Ljava/lang/String;
    .registers 4

    .line 431
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCamera()Landroidx/camera/core/impl/CameraInternal;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No camera attached to use case: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/CameraInternal;

    .line 432
    invoke-interface {v0}, Landroidx/camera/core/impl/CameraInternal;->getCameraInfoInternal()Landroidx/camera/core/impl/CameraInfoInternal;

    move-result-object v0

    invoke-interface {v0}, Landroidx/camera/core/impl/CameraInfoInternal;->getCameraId()Ljava/lang/String;

    move-result-object v0

    .line 431
    return-object v0
.end method

.method public getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;"
        }
    .end annotation

    .line 464
    iget-object v0, p0, Landroidx/camera/core/UseCase;->mCurrentConfig:Landroidx/camera/core/impl/UseCaseConfig;

    return-object v0
.end method

.method public abstract getDefaultConfig(ZLandroidx/camera/core/impl/UseCaseConfigFactory;)Landroidx/camera/core/impl/UseCaseConfig;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "applyDefaultConfig",
            "factory"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroidx/camera/core/impl/UseCaseConfigFactory;",
            ")",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;"
        }
    .end annotation
.end method

.method public getImageFormat()I
    .registers 2

    .line 679
    iget-object v0, p0, Landroidx/camera/core/UseCase;->mCurrentConfig:Landroidx/camera/core/impl/UseCaseConfig;

    invoke-interface {v0}, Landroidx/camera/core/impl/UseCaseConfig;->getInputFormat()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 4

    .line 452
    iget-object v0, p0, Landroidx/camera/core/UseCase;->mCurrentConfig:Landroidx/camera/core/impl/UseCaseConfig;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<UnknownUseCase-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/camera/core/impl/UseCaseConfig;->getTargetName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getRelativeRotation(Landroidx/camera/core/impl/CameraInternal;)I
    .registers 4
    .param p1, "cameraInternal"    # Landroidx/camera/core/impl/CameraInternal;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraInternal"
        }
    .end annotation

    .line 307
    invoke-interface {p1}, Landroidx/camera/core/impl/CameraInternal;->getCameraInfoInternal()Landroidx/camera/core/impl/CameraInfoInternal;

    move-result-object v0

    .line 308
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getTargetRotationInternal()I

    move-result v1

    .line 307
    invoke-interface {v0, v1}, Landroidx/camera/core/impl/CameraInfoInternal;->getSensorRotationDegrees(I)I

    move-result v0

    return v0
.end method

.method public getSessionConfig()Landroidx/camera/core/impl/SessionConfig;
    .registers 2

    .line 347
    iget-object v0, p0, Landroidx/camera/core/UseCase;->mAttachedSessionConfig:Landroidx/camera/core/impl/SessionConfig;

    return-object v0
.end method

.method protected getTargetRotationInternal()I
    .registers 3

    .line 296
    iget-object v0, p0, Landroidx/camera/core/UseCase;->mCurrentConfig:Landroidx/camera/core/impl/UseCaseConfig;

    check-cast v0, Landroidx/camera/core/impl/ImageOutputConfig;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroidx/camera/core/impl/ImageOutputConfig;->getTargetRotation(I)I

    move-result v0

    return v0
.end method

.method public abstract getUseCaseConfigBuilder(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/UseCaseConfig$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/impl/Config;",
            ")",
            "Landroidx/camera/core/impl/UseCaseConfig$Builder<",
            "***>;"
        }
    .end annotation
.end method

.method public getViewPortCropRect()Landroid/graphics/Rect;
    .registers 2

    .line 668
    iget-object v0, p0, Landroidx/camera/core/UseCase;->mViewPortCropRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method protected isCurrentCamera(Ljava/lang/String;)Z
    .registers 3
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraId"
        }
    .end annotation

    .line 442
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCamera()Landroidx/camera/core/impl/CameraInternal;

    move-result-object v0

    if-nez v0, :cond_8

    .line 443
    const/4 v0, 0x0

    return v0

    .line 445
    :cond_8
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public mergeConfigs(Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/UseCaseConfig;)Landroidx/camera/core/impl/UseCaseConfig;
    .registers 10
    .param p1, "cameraInfo"    # Landroidx/camera/core/impl/CameraInfoInternal;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cameraInfo",
            "extendedConfig",
            "cameraDefaultConfig"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/impl/CameraInfoInternal;",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;)",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;"
        }
    .end annotation

    .line 185
    .local p2, "extendedConfig":Landroidx/camera/core/impl/UseCaseConfig;, "Landroidx/camera/core/impl/UseCaseConfig<*>;"
    .local p3, "cameraDefaultConfig":Landroidx/camera/core/impl/UseCaseConfig;, "Landroidx/camera/core/impl/UseCaseConfig<*>;"
    if-eqz p3, :cond_c

    .line 186
    invoke-static {p3}, Landroidx/camera/core/impl/MutableOptionsBundle;->from(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/MutableOptionsBundle;

    move-result-object v0

    .line 187
    .local v0, "mergedConfig":Landroidx/camera/core/impl/MutableOptionsBundle;
    sget-object v1, Landroidx/camera/core/internal/TargetConfig;->OPTION_TARGET_NAME:Landroidx/camera/core/impl/Config$Option;

    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/MutableOptionsBundle;->removeOption(Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;

    goto :goto_10

    .line 189
    .end local v0    # "mergedConfig":Landroidx/camera/core/impl/MutableOptionsBundle;
    :cond_c
    invoke-static {}, Landroidx/camera/core/impl/MutableOptionsBundle;->create()Landroidx/camera/core/impl/MutableOptionsBundle;

    move-result-object v0

    .line 194
    .restart local v0    # "mergedConfig":Landroidx/camera/core/impl/MutableOptionsBundle;
    :goto_10
    iget-object v1, p0, Landroidx/camera/core/UseCase;->mUseCaseConfig:Landroidx/camera/core/impl/UseCaseConfig;

    invoke-interface {v1}, Landroidx/camera/core/impl/UseCaseConfig;->listOptions()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/impl/Config$Option;

    .line 196
    .local v2, "opt":Landroidx/camera/core/impl/Config$Option;, "Landroidx/camera/core/impl/Config$Option<*>;"
    move-object v3, v2

    .line 198
    .local v3, "objectOpt":Landroidx/camera/core/impl/Config$Option;, "Landroidx/camera/core/impl/Config$Option<Ljava/lang/Object;>;"
    iget-object v4, p0, Landroidx/camera/core/UseCase;->mUseCaseConfig:Landroidx/camera/core/impl/UseCaseConfig;

    .line 199
    invoke-interface {v4, v2}, Landroidx/camera/core/impl/UseCaseConfig;->getOptionPriority(Landroidx/camera/core/impl/Config$Option;)Landroidx/camera/core/impl/Config$OptionPriority;

    move-result-object v4

    iget-object v5, p0, Landroidx/camera/core/UseCase;->mUseCaseConfig:Landroidx/camera/core/impl/UseCaseConfig;

    .line 200
    invoke-interface {v5, v3}, Landroidx/camera/core/impl/UseCaseConfig;->retrieveOption(Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;

    move-result-object v5

    .line 198
    invoke-virtual {v0, v3, v4, v5}, Landroidx/camera/core/impl/MutableOptionsBundle;->insertOption(Landroidx/camera/core/impl/Config$Option;Landroidx/camera/core/impl/Config$OptionPriority;Ljava/lang/Object;)V

    .line 201
    .end local v2    # "opt":Landroidx/camera/core/impl/Config$Option;, "Landroidx/camera/core/impl/Config$Option<*>;"
    .end local v3    # "objectOpt":Landroidx/camera/core/impl/Config$Option;, "Landroidx/camera/core/impl/Config$Option<Ljava/lang/Object;>;"
    goto :goto_1a

    .line 203
    :cond_37
    if-eqz p2, :cond_6c

    .line 206
    invoke-interface {p2}, Landroidx/camera/core/impl/UseCaseConfig;->listOptions()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_41
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/impl/Config$Option;

    .line 208
    .restart local v2    # "opt":Landroidx/camera/core/impl/Config$Option;, "Landroidx/camera/core/impl/Config$Option<*>;"
    move-object v3, v2

    .line 209
    .restart local v3    # "objectOpt":Landroidx/camera/core/impl/Config$Option;, "Landroidx/camera/core/impl/Config$Option<Ljava/lang/Object;>;"
    invoke-virtual {v3}, Landroidx/camera/core/impl/Config$Option;->getId()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroidx/camera/core/internal/TargetConfig;->OPTION_TARGET_NAME:Landroidx/camera/core/impl/Config$Option;

    invoke-virtual {v5}, Landroidx/camera/core/impl/Config$Option;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 210
    goto :goto_41

    .line 212
    :cond_5f
    nop

    .line 213
    invoke-interface {p2, v2}, Landroidx/camera/core/impl/UseCaseConfig;->getOptionPriority(Landroidx/camera/core/impl/Config$Option;)Landroidx/camera/core/impl/Config$OptionPriority;

    move-result-object v4

    .line 214
    invoke-interface {p2, v3}, Landroidx/camera/core/impl/UseCaseConfig;->retrieveOption(Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;

    move-result-object v5

    .line 212
    invoke-virtual {v0, v3, v4, v5}, Landroidx/camera/core/impl/MutableOptionsBundle;->insertOption(Landroidx/camera/core/impl/Config$Option;Landroidx/camera/core/impl/Config$OptionPriority;Ljava/lang/Object;)V

    .line 215
    .end local v2    # "opt":Landroidx/camera/core/impl/Config$Option;, "Landroidx/camera/core/impl/Config$Option<*>;"
    .end local v3    # "objectOpt":Landroidx/camera/core/impl/Config$Option;, "Landroidx/camera/core/impl/Config$Option<Ljava/lang/Object;>;"
    goto :goto_41

    .line 221
    :cond_6c
    sget-object v1, Landroidx/camera/core/impl/ImageOutputConfig;->OPTION_TARGET_RESOLUTION:Landroidx/camera/core/impl/Config$Option;

    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/MutableOptionsBundle;->containsOption(Landroidx/camera/core/impl/Config$Option;)Z

    move-result v1

    if-eqz v1, :cond_81

    sget-object v1, Landroidx/camera/core/impl/ImageOutputConfig;->OPTION_TARGET_ASPECT_RATIO:Landroidx/camera/core/impl/Config$Option;

    .line 222
    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/MutableOptionsBundle;->containsOption(Landroidx/camera/core/impl/Config$Option;)Z

    move-result v1

    if-eqz v1, :cond_81

    .line 224
    sget-object v1, Landroidx/camera/core/impl/ImageOutputConfig;->OPTION_TARGET_ASPECT_RATIO:Landroidx/camera/core/impl/Config$Option;

    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/MutableOptionsBundle;->removeOption(Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;

    .line 227
    :cond_81
    invoke-virtual {p0, v0}, Landroidx/camera/core/UseCase;->getUseCaseConfigBuilder(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/UseCaseConfig$Builder;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroidx/camera/core/UseCase;->onMergeConfig(Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/core/impl/UseCaseConfig$Builder;)Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v1

    return-object v1
.end method

.method protected final notifyActive()V
    .registers 2

    .line 358
    sget-object v0, Landroidx/camera/core/UseCase$State;->ACTIVE:Landroidx/camera/core/UseCase$State;

    iput-object v0, p0, Landroidx/camera/core/UseCase;->mState:Landroidx/camera/core/UseCase$State;

    .line 359
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->notifyState()V

    .line 360
    return-void
.end method

.method protected final notifyInactive()V
    .registers 2

    .line 370
    sget-object v0, Landroidx/camera/core/UseCase$State;->INACTIVE:Landroidx/camera/core/UseCase$State;

    iput-object v0, p0, Landroidx/camera/core/UseCase;->mState:Landroidx/camera/core/UseCase$State;

    .line 371
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->notifyState()V

    .line 372
    return-void
.end method

.method protected final notifyReset()V
    .registers 3

    .line 395
    iget-object v0, p0, Landroidx/camera/core/UseCase;->mStateChangeCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/UseCase$StateChangeCallback;

    .line 396
    .local v1, "stateChangeCallback":Landroidx/camera/core/UseCase$StateChangeCallback;
    invoke-interface {v1, p0}, Landroidx/camera/core/UseCase$StateChangeCallback;->onUseCaseReset(Landroidx/camera/core/UseCase;)V

    .line 397
    .end local v1    # "stateChangeCallback":Landroidx/camera/core/UseCase$StateChangeCallback;
    goto :goto_6

    .line 398
    :cond_16
    return-void
.end method

.method public final notifyState()V
    .registers 3

    .line 408
    sget-object v0, Landroidx/camera/core/UseCase$1;->$SwitchMap$androidx$camera$core$UseCase$State:[I

    iget-object v1, p0, Landroidx/camera/core/UseCase;->mState:Landroidx/camera/core/UseCase$State;

    invoke-virtual {v1}, Landroidx/camera/core/UseCase$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3c

    goto :goto_3b

    .line 415
    :pswitch_e
    iget-object v0, p0, Landroidx/camera/core/UseCase;->mStateChangeCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/UseCase$StateChangeCallback;

    .line 416
    .local v1, "stateChangeCallback":Landroidx/camera/core/UseCase$StateChangeCallback;
    invoke-interface {v1, p0}, Landroidx/camera/core/UseCase$StateChangeCallback;->onUseCaseActive(Landroidx/camera/core/UseCase;)V

    .line 417
    .end local v1    # "stateChangeCallback":Landroidx/camera/core/UseCase$StateChangeCallback;
    goto :goto_14

    .line 410
    :pswitch_24
    iget-object v0, p0, Landroidx/camera/core/UseCase;->mStateChangeCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/UseCase$StateChangeCallback;

    .line 411
    .restart local v1    # "stateChangeCallback":Landroidx/camera/core/UseCase$StateChangeCallback;
    invoke-interface {v1, p0}, Landroidx/camera/core/UseCase$StateChangeCallback;->onUseCaseInactive(Landroidx/camera/core/UseCase;)V

    .line 412
    .end local v1    # "stateChangeCallback":Landroidx/camera/core/UseCase$StateChangeCallback;
    goto :goto_2a

    .line 413
    :cond_3a
    nop

    .line 420
    :cond_3b
    :goto_3b
    return-void

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_24
        :pswitch_e
    .end packed-switch
.end method

.method protected final notifyUpdated()V
    .registers 3

    .line 382
    iget-object v0, p0, Landroidx/camera/core/UseCase;->mStateChangeCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/UseCase$StateChangeCallback;

    .line 383
    .local v1, "stateChangeCallback":Landroidx/camera/core/UseCase$StateChangeCallback;
    invoke-interface {v1, p0}, Landroidx/camera/core/UseCase$StateChangeCallback;->onUseCaseUpdated(Landroidx/camera/core/UseCase;)V

    .line 384
    .end local v1    # "stateChangeCallback":Landroidx/camera/core/UseCase$StateChangeCallback;
    goto :goto_6

    .line 385
    :cond_16
    return-void
.end method

.method public onAttach(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/UseCaseConfig;)V
    .registers 7
    .param p1, "camera"    # Landroidx/camera/core/impl/CameraInternal;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "camera",
            "extendedConfig",
            "cameraConfig"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/impl/CameraInternal;",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;)V"
        }
    .end annotation

    .line 540
    .local p2, "extendedConfig":Landroidx/camera/core/impl/UseCaseConfig;, "Landroidx/camera/core/impl/UseCaseConfig<*>;"
    .local p3, "cameraConfig":Landroidx/camera/core/impl/UseCaseConfig;, "Landroidx/camera/core/impl/UseCaseConfig<*>;"
    iget-object v0, p0, Landroidx/camera/core/UseCase;->mCameraLock:Ljava/lang/Object;

    monitor-enter v0

    .line 541
    :try_start_3
    iput-object p1, p0, Landroidx/camera/core/UseCase;->mCamera:Landroidx/camera/core/impl/CameraInternal;

    .line 542
    invoke-direct {p0, p1}, Landroidx/camera/core/UseCase;->addStateChangeCallback(Landroidx/camera/core/UseCase$StateChangeCallback;)V

    .line 543
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_2f

    .line 545
    iput-object p2, p0, Landroidx/camera/core/UseCase;->mExtendedConfig:Landroidx/camera/core/impl/UseCaseConfig;

    .line 546
    iput-object p3, p0, Landroidx/camera/core/UseCase;->mCameraConfig:Landroidx/camera/core/impl/UseCaseConfig;

    .line 547
    invoke-interface {p1}, Landroidx/camera/core/impl/CameraInternal;->getCameraInfoInternal()Landroidx/camera/core/impl/CameraInfoInternal;

    move-result-object v0

    iget-object v1, p0, Landroidx/camera/core/UseCase;->mExtendedConfig:Landroidx/camera/core/impl/UseCaseConfig;

    iget-object v2, p0, Landroidx/camera/core/UseCase;->mCameraConfig:Landroidx/camera/core/impl/UseCaseConfig;

    invoke-virtual {p0, v0, v1, v2}, Landroidx/camera/core/UseCase;->mergeConfigs(Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/UseCaseConfig;)Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/core/UseCase;->mCurrentConfig:Landroidx/camera/core/impl/UseCaseConfig;

    .line 550
    iget-object v0, p0, Landroidx/camera/core/UseCase;->mCurrentConfig:Landroidx/camera/core/impl/UseCaseConfig;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroidx/camera/core/impl/UseCaseConfig;->getUseCaseEventCallback(Landroidx/camera/core/UseCase$EventCallback;)Landroidx/camera/core/UseCase$EventCallback;

    move-result-object v0

    .line 551
    .local v0, "eventCallback":Landroidx/camera/core/UseCase$EventCallback;
    if-eqz v0, :cond_2b

    .line 552
    invoke-interface {p1}, Landroidx/camera/core/impl/CameraInternal;->getCameraInfoInternal()Landroidx/camera/core/impl/CameraInfoInternal;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/camera/core/UseCase$EventCallback;->onAttach(Landroidx/camera/core/CameraInfo;)V

    .line 554
    :cond_2b
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->onAttached()V

    .line 555
    return-void

    .line 543
    .end local v0    # "eventCallback":Landroidx/camera/core/UseCase$EventCallback;
    :catchall_2f
    move-exception v1

    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public onAttached()V
    .registers 1

    .line 571
    return-void
.end method

.method protected onCameraControlReady()V
    .registers 1

    .line 528
    return-void
.end method

.method public onDetach(Landroidx/camera/core/impl/CameraInternal;)V
    .registers 6
    .param p1, "camera"    # Landroidx/camera/core/impl/CameraInternal;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "camera"
        }
    .end annotation

    .line 581
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->onDetached()V

    .line 584
    iget-object v0, p0, Landroidx/camera/core/UseCase;->mCurrentConfig:Landroidx/camera/core/impl/UseCaseConfig;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroidx/camera/core/impl/UseCaseConfig;->getUseCaseEventCallback(Landroidx/camera/core/UseCase$EventCallback;)Landroidx/camera/core/UseCase$EventCallback;

    move-result-object v0

    .line 585
    .local v0, "eventCallback":Landroidx/camera/core/UseCase$EventCallback;
    if-eqz v0, :cond_f

    .line 586
    invoke-interface {v0}, Landroidx/camera/core/UseCase$EventCallback;->onDetach()V

    .line 589
    :cond_f
    iget-object v2, p0, Landroidx/camera/core/UseCase;->mCameraLock:Ljava/lang/Object;

    monitor-enter v2

    .line 590
    :try_start_12
    iget-object v3, p0, Landroidx/camera/core/UseCase;->mCamera:Landroidx/camera/core/impl/CameraInternal;

    if-ne p1, v3, :cond_18

    const/4 v3, 0x1

    goto :goto_19

    :cond_18
    const/4 v3, 0x0

    :goto_19
    invoke-static {v3}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 591
    iget-object v3, p0, Landroidx/camera/core/UseCase;->mCamera:Landroidx/camera/core/impl/CameraInternal;

    invoke-direct {p0, v3}, Landroidx/camera/core/UseCase;->removeStateChangeCallback(Landroidx/camera/core/UseCase$StateChangeCallback;)V

    .line 592
    iput-object v1, p0, Landroidx/camera/core/UseCase;->mCamera:Landroidx/camera/core/impl/CameraInternal;

    .line 593
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_12 .. :try_end_24} :catchall_31

    .line 595
    iput-object v1, p0, Landroidx/camera/core/UseCase;->mAttachedResolution:Landroid/util/Size;

    .line 596
    iput-object v1, p0, Landroidx/camera/core/UseCase;->mViewPortCropRect:Landroid/graphics/Rect;

    .line 600
    iget-object v2, p0, Landroidx/camera/core/UseCase;->mUseCaseConfig:Landroidx/camera/core/impl/UseCaseConfig;

    iput-object v2, p0, Landroidx/camera/core/UseCase;->mCurrentConfig:Landroidx/camera/core/impl/UseCaseConfig;

    .line 601
    iput-object v1, p0, Landroidx/camera/core/UseCase;->mExtendedConfig:Landroidx/camera/core/impl/UseCaseConfig;

    .line 602
    iput-object v1, p0, Landroidx/camera/core/UseCase;->mCameraConfig:Landroidx/camera/core/impl/UseCaseConfig;

    .line 603
    return-void

    .line 593
    :catchall_31
    move-exception v1

    :try_start_32
    monitor-exit v2
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v1
.end method

.method public onDetached()V
    .registers 1

    .line 612
    return-void
.end method

.method onMergeConfig(Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/core/impl/UseCaseConfig$Builder;)Landroidx/camera/core/impl/UseCaseConfig;
    .registers 4
    .param p1, "cameraInfo"    # Landroidx/camera/core/impl/CameraInfoInternal;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cameraInfo",
            "builder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/impl/CameraInfoInternal;",
            "Landroidx/camera/core/impl/UseCaseConfig$Builder<",
            "***>;)",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;"
        }
    .end annotation

    .line 248
    .local p2, "builder":Landroidx/camera/core/impl/UseCaseConfig$Builder;, "Landroidx/camera/core/impl/UseCaseConfig$Builder<***>;"
    invoke-interface {p2}, Landroidx/camera/core/impl/UseCaseConfig$Builder;->getUseCaseConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v0

    return-object v0
.end method

.method public onStateAttached()V
    .registers 1

    .line 622
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->onCameraControlReady()V

    .line 623
    return-void
.end method

.method public onStateDetached()V
    .registers 1

    .line 632
    return-void
.end method

.method protected abstract onSuggestedResolutionUpdated(Landroid/util/Size;)Landroid/util/Size;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "suggestedResolution"
        }
    .end annotation
.end method

.method protected setTargetRotationInternal(I)Z
    .registers 9
    .param p1, "targetRotation"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "targetRotation"
        }
    .end annotation

    .line 263
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/ImageOutputConfig;

    .line 264
    .local v0, "oldConfig":Landroidx/camera/core/impl/ImageOutputConfig;
    const/4 v1, -0x1

    invoke-interface {v0, v1}, Landroidx/camera/core/impl/ImageOutputConfig;->getTargetRotation(I)I

    move-result v2

    .line 265
    .local v2, "oldRotation":I
    if-eq v2, v1, :cond_12

    if-eq v2, p1, :cond_10

    goto :goto_12

    .line 283
    :cond_10
    const/4 v1, 0x0

    return v1

    .line 266
    :cond_12
    :goto_12
    iget-object v1, p0, Landroidx/camera/core/UseCase;->mUseCaseConfig:Landroidx/camera/core/impl/UseCaseConfig;

    invoke-virtual {p0, v1}, Landroidx/camera/core/UseCase;->getUseCaseConfigBuilder(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/UseCaseConfig$Builder;

    move-result-object v1

    .line 267
    .local v1, "builder":Landroidx/camera/core/impl/UseCaseConfig$Builder;, "Landroidx/camera/core/impl/UseCaseConfig$Builder<***>;"
    invoke-static {v1, p1}, Landroidx/camera/core/internal/utils/UseCaseConfigUtil;->updateTargetRotationAndRelatedConfigs(Landroidx/camera/core/impl/UseCaseConfig$Builder;I)V

    .line 268
    invoke-interface {v1}, Landroidx/camera/core/impl/UseCaseConfig$Builder;->getUseCaseConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v3

    iput-object v3, p0, Landroidx/camera/core/UseCase;->mUseCaseConfig:Landroidx/camera/core/impl/UseCaseConfig;

    .line 273
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCamera()Landroidx/camera/core/impl/CameraInternal;

    move-result-object v3

    .line 274
    .local v3, "camera":Landroidx/camera/core/impl/CameraInternal;
    if-nez v3, :cond_2c

    .line 275
    iget-object v4, p0, Landroidx/camera/core/UseCase;->mUseCaseConfig:Landroidx/camera/core/impl/UseCaseConfig;

    iput-object v4, p0, Landroidx/camera/core/UseCase;->mCurrentConfig:Landroidx/camera/core/impl/UseCaseConfig;

    goto :goto_3a

    .line 277
    :cond_2c
    invoke-interface {v3}, Landroidx/camera/core/impl/CameraInternal;->getCameraInfoInternal()Landroidx/camera/core/impl/CameraInfoInternal;

    move-result-object v4

    iget-object v5, p0, Landroidx/camera/core/UseCase;->mExtendedConfig:Landroidx/camera/core/impl/UseCaseConfig;

    iget-object v6, p0, Landroidx/camera/core/UseCase;->mCameraConfig:Landroidx/camera/core/impl/UseCaseConfig;

    invoke-virtual {p0, v4, v5, v6}, Landroidx/camera/core/UseCase;->mergeConfigs(Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/UseCaseConfig;)Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v4

    iput-object v4, p0, Landroidx/camera/core/UseCase;->mCurrentConfig:Landroidx/camera/core/impl/UseCaseConfig;

    .line 281
    :goto_3a
    const/4 v4, 0x1

    return v4
.end method

.method public setViewPortCropRect(Landroid/graphics/Rect;)V
    .registers 2
    .param p1, "viewPortCropRect"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewPortCropRect"
        }
    .end annotation

    .line 657
    iput-object p1, p0, Landroidx/camera/core/UseCase;->mViewPortCropRect:Landroid/graphics/Rect;

    .line 658
    return-void
.end method

.method protected updateSessionConfig(Landroidx/camera/core/impl/SessionConfig;)V
    .registers 2
    .param p1, "sessionConfig"    # Landroidx/camera/core/impl/SessionConfig;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sessionConfig"
        }
    .end annotation

    .line 318
    iput-object p1, p0, Landroidx/camera/core/UseCase;->mAttachedSessionConfig:Landroidx/camera/core/impl/SessionConfig;

    .line 319
    return-void
.end method

.method public updateSuggestedResolution(Landroid/util/Size;)V
    .registers 3
    .param p1, "suggestedResolution"    # Landroid/util/Size;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "suggestedResolution"
        }
    .end annotation

    .line 499
    invoke-virtual {p0, p1}, Landroidx/camera/core/UseCase;->onSuggestedResolutionUpdated(Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/core/UseCase;->mAttachedResolution:Landroid/util/Size;

    .line 500
    return-void
.end method
