.class public final Landroidx/camera/camera2/Camera2Config;
.super Ljava/lang/Object;
.source "Camera2Config.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/Camera2Config$DefaultProvider;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static defaultConfig()Landroidx/camera/core/CameraXConfig;
    .locals 5

    .line 46
    new-instance v0, Landroidx/camera/camera2/Camera2Config$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/camera/camera2/Camera2Config$$ExternalSyntheticLambda0;-><init>()V

    .line 49
    .local v0, "cameraFactoryProvider":Landroidx/camera/core/impl/CameraFactory$Provider;
    new-instance v1, Landroidx/camera/camera2/Camera2Config$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroidx/camera/camera2/Camera2Config$$ExternalSyntheticLambda1;-><init>()V

    .line 60
    .local v1, "surfaceManagerProvider":Landroidx/camera/core/impl/CameraDeviceSurfaceManager$Provider;
    new-instance v2, Landroidx/camera/camera2/Camera2Config$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Landroidx/camera/camera2/Camera2Config$$ExternalSyntheticLambda2;-><init>()V

    .line 63
    .local v2, "configFactoryProvider":Landroidx/camera/core/impl/UseCaseConfigFactory$Provider;
    new-instance v3, Landroidx/camera/core/CameraXConfig$Builder;

    invoke-direct {v3}, Landroidx/camera/core/CameraXConfig$Builder;-><init>()V

    .line 65
    invoke-virtual {v3, v0}, Landroidx/camera/core/CameraXConfig$Builder;->setCameraFactoryProvider(Landroidx/camera/core/impl/CameraFactory$Provider;)Landroidx/camera/core/CameraXConfig$Builder;

    move-result-object v3

    .line 66
    invoke-virtual {v3, v1}, Landroidx/camera/core/CameraXConfig$Builder;->setDeviceSurfaceManagerProvider(Landroidx/camera/core/impl/CameraDeviceSurfaceManager$Provider;)Landroidx/camera/core/CameraXConfig$Builder;

    move-result-object v3

    .line 67
    invoke-virtual {v3, v2}, Landroidx/camera/core/CameraXConfig$Builder;->setUseCaseConfigFactoryProvider(Landroidx/camera/core/impl/UseCaseConfigFactory$Provider;)Landroidx/camera/core/CameraXConfig$Builder;

    move-result-object v3

    .line 69
    .local v3, "appConfigBuilder":Landroidx/camera/core/CameraXConfig$Builder;
    invoke-virtual {v3}, Landroidx/camera/core/CameraXConfig$Builder;->build()Landroidx/camera/core/CameraXConfig;

    move-result-object v4

    return-object v4
.end method

.method static synthetic lambda$defaultConfig$0(Landroid/content/Context;Ljava/lang/Object;Ljava/util/Set;)Landroidx/camera/core/impl/CameraDeviceSurfaceManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cameraManager"    # Ljava/lang/Object;
    .param p2, "availableCameraIds"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/camera/core/InitializationException;
        }
    .end annotation

    .line 52
    :try_start_0
    new-instance v0, Landroidx/camera/camera2/internal/Camera2DeviceSurfaceManager;

    invoke-direct {v0, p0, p1, p2}, Landroidx/camera/camera2/internal/Camera2DeviceSurfaceManager;-><init>(Landroid/content/Context;Ljava/lang/Object;Ljava/util/Set;)V
    :try_end_0
    .catch Landroidx/camera/core/CameraUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Landroidx/camera/core/CameraUnavailableException;
    new-instance v1, Landroidx/camera/core/InitializationException;

    invoke-direct {v1, v0}, Landroidx/camera/core/InitializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic lambda$defaultConfig$1(Landroid/content/Context;)Landroidx/camera/core/impl/UseCaseConfigFactory;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/camera/core/InitializationException;
        }
    .end annotation

    .line 61
    new-instance v0, Landroidx/camera/camera2/internal/Camera2UseCaseConfigFactory;

    invoke-direct {v0, p0}, Landroidx/camera/camera2/internal/Camera2UseCaseConfigFactory;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
