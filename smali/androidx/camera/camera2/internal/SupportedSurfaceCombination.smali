.class final Landroidx/camera/camera2/internal/SupportedSurfaceCombination;
.super Ljava/lang/Object;
.source "SupportedSurfaceCombination.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/internal/SupportedSurfaceCombination$CompareAspectRatiosByDistanceToTargetRatio;,
        Landroidx/camera/camera2/internal/SupportedSurfaceCombination$CompareSizesByArea;
    }
.end annotation


# static fields
.field private static final ALIGN16:I = 0x10

.field private static final ASPECT_RATIO_16_9:Landroid/util/Rational;

.field private static final ASPECT_RATIO_3_4:Landroid/util/Rational;

.field private static final ASPECT_RATIO_4_3:Landroid/util/Rational;

.field private static final ASPECT_RATIO_9_16:Landroid/util/Rational;

.field private static final DEFAULT_SIZE:Landroid/util/Size;

.field private static final MAX_PREVIEW_SIZE:Landroid/util/Size;

.field private static final QUALITY_1080P_SIZE:Landroid/util/Size;

.field private static final QUALITY_2160P_SIZE:Landroid/util/Size;

.field private static final QUALITY_480P_SIZE:Landroid/util/Size;

.field private static final QUALITY_720P_SIZE:Landroid/util/Size;

.field private static final TAG:Ljava/lang/String; = "SupportedSurfaceCombination"

.field private static final ZERO_SIZE:Landroid/util/Size;


# instance fields
.field private final mCamcorderProfileHelper:Landroidx/camera/camera2/internal/CamcorderProfileHelper;

.field private final mCameraId:Ljava/lang/String;

.field private final mCharacteristics:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

.field private final mExcludedSizeListCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mExcludedSupportedSizesContainer:Landroidx/camera/camera2/internal/compat/workaround/ExcludedSupportedSizesContainer;

.field private final mHardwareLevel:I

.field private mIsBurstCaptureSupported:Z

.field private mIsRawSupported:Z

.field private final mIsSensorLandscapeResolution:Z

.field private final mMaxSizeCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field private mOutputSizesCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field private final mSurfaceCombinations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceCombination;",
            ">;"
        }
    .end annotation
.end field

.field private mSurfaceSizeDefinition:Landroidx/camera/core/impl/SurfaceSizeDefinition;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 75
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x780

    const/16 v2, 0x438

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->MAX_PREVIEW_SIZE:Landroid/util/Size;

    .line 76
    new-instance v0, Landroid/util/Size;

    const/16 v3, 0x280

    const/16 v4, 0x1e0

    invoke-direct {v0, v3, v4}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->DEFAULT_SIZE:Landroid/util/Size;

    .line 77
    new-instance v0, Landroid/util/Size;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->ZERO_SIZE:Landroid/util/Size;

    .line 78
    new-instance v0, Landroid/util/Size;

    const/16 v3, 0xf00

    const/16 v5, 0x870

    invoke-direct {v0, v3, v5}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->QUALITY_2160P_SIZE:Landroid/util/Size;

    .line 79
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->QUALITY_1080P_SIZE:Landroid/util/Size;

    .line 80
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x500

    const/16 v2, 0x2d0

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->QUALITY_720P_SIZE:Landroid/util/Size;

    .line 81
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v2, v4}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->QUALITY_480P_SIZE:Landroid/util/Size;

    .line 83
    new-instance v0, Landroid/util/Rational;

    const/4 v1, 0x4

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/util/Rational;-><init>(II)V

    sput-object v0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->ASPECT_RATIO_4_3:Landroid/util/Rational;

    .line 84
    new-instance v0, Landroid/util/Rational;

    invoke-direct {v0, v2, v1}, Landroid/util/Rational;-><init>(II)V

    sput-object v0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->ASPECT_RATIO_3_4:Landroid/util/Rational;

    .line 85
    new-instance v0, Landroid/util/Rational;

    const/16 v1, 0x10

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroid/util/Rational;-><init>(II)V

    sput-object v0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->ASPECT_RATIO_16_9:Landroid/util/Rational;

    .line 86
    new-instance v0, Landroid/util/Rational;

    invoke-direct {v0, v2, v1}, Landroid/util/Rational;-><init>(II)V

    sput-object v0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->ASPECT_RATIO_9_16:Landroid/util/Rational;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroidx/camera/camera2/internal/compat/CameraManagerCompat;Landroidx/camera/camera2/internal/CamcorderProfileHelper;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cameraId"    # Ljava/lang/String;
    .param p3, "cameraManagerCompat"    # Landroidx/camera/camera2/internal/compat/CameraManagerCompat;
    .param p4, "camcorderProfileHelper"    # Landroidx/camera/camera2/internal/CamcorderProfileHelper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "cameraId",
            "cameraManagerCompat",
            "camcorderProfileHelper"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/camera/core/CameraUnavailableException;
        }
    .end annotation

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceCombinations:Ljava/util/List;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mMaxSizeCache:Ljava/util/Map;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mExcludedSizeListCache:Ljava/util/Map;

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mIsRawSupported:Z

    .line 97
    iput-boolean v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mIsBurstCaptureSupported:Z

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mOutputSizesCache:Ljava/util/Map;

    .line 105
    invoke-static {p2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCameraId:Ljava/lang/String;

    .line 106
    invoke-static {p4}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/internal/CamcorderProfileHelper;

    iput-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCamcorderProfileHelper:Landroidx/camera/camera2/internal/CamcorderProfileHelper;

    .line 107
    nop

    .line 108
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 109
    .local v0, "windowManager":Landroid/view/WindowManager;
    new-instance v1, Landroidx/camera/camera2/internal/compat/workaround/ExcludedSupportedSizesContainer;

    invoke-direct {v1, p2}, Landroidx/camera/camera2/internal/compat/workaround/ExcludedSupportedSizesContainer;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mExcludedSupportedSizesContainer:Landroidx/camera/camera2/internal/compat/workaround/ExcludedSupportedSizesContainer;

    .line 112
    :try_start_45
    iget-object v1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCameraId:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroidx/camera/camera2/internal/compat/CameraManagerCompat;->getCameraCharacteristicsCompat(Ljava/lang/String;)Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

    move-result-object v1

    iput-object v1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCharacteristics:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

    .line 113
    iget-object v1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCharacteristics:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 115
    .local v1, "keyValue":Ljava/lang/Integer;
    if-eqz v1, :cond_5e

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_5f

    .line 116
    :cond_5e
    const/4 v2, 0x2

    :goto_5f
    iput v2, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mHardwareLevel:I

    .line 117
    invoke-direct {p0}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->isSensorLandscapeResolution()Z

    move-result v2

    iput-boolean v2, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mIsSensorLandscapeResolution:Z
    :try_end_67
    .catch Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat; {:try_start_45 .. :try_end_67} :catch_72

    .line 120
    .end local v1    # "keyValue":Ljava/lang/Integer;
    nop

    .line 121
    invoke-direct {p0}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->generateSupportedCombinationList()V

    .line 122
    invoke-direct {p0, v0}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->generateSurfaceSizeDefinition(Landroid/view/WindowManager;)V

    .line 123
    invoke-direct {p0}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->checkCustomization()V

    .line 124
    return-void

    .line 118
    :catch_72
    move-exception v1

    .line 119
    .local v1, "e":Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;
    invoke-static {v1}, Landroidx/camera/camera2/internal/CameraUnavailableExceptionHelper;->createFrom(Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;)Landroidx/camera/core/CameraUnavailableException;

    move-result-object v2

    throw v2
.end method

.method private checkCustomization()V
    .registers 1

    .line 1162
    return-void
.end method

.method private doGetAllOutputSizesByFormat(I)[Landroid/util/Size;
    .registers 7
    .param p1, "imageFormat"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageFormat"
        }
    .end annotation

    .line 748
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCharacteristics:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 749
    invoke-virtual {v0, v1}, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 751
    .local v0, "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    if-eqz v0, :cond_4a

    .line 755
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_1d

    const/16 v1, 0x22

    if-ne p1, v1, :cond_1d

    .line 762
    const-class v1, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v1

    .local v1, "outputSizes":[Landroid/util/Size;
    goto :goto_21

    .line 764
    .end local v1    # "outputSizes":[Landroid/util/Size;
    :cond_1d
    invoke-virtual {v0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v1

    .line 767
    .restart local v1    # "outputSizes":[Landroid/util/Size;
    :goto_21
    if-eqz v1, :cond_31

    .line 772
    invoke-direct {p0, v1, p1}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->excludeProblematicSizes([Landroid/util/Size;I)[Landroid/util/Size;

    move-result-object v1

    .line 776
    new-instance v2, Landroidx/camera/camera2/internal/SupportedSurfaceCombination$CompareSizesByArea;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination$CompareSizesByArea;-><init>(Z)V

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 778
    return-object v1

    .line 768
    :cond_31
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not get supported output size for the format: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 752
    .end local v1    # "outputSizes":[Landroid/util/Size;
    :cond_4a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can not retrieve SCALER_STREAM_CONFIGURATION_MAP"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private excludeProblematicSizes([Landroid/util/Size;I)[Landroid/util/Size;
    .registers 6
    .param p1, "outputSizes"    # [Landroid/util/Size;
    .param p2, "imageFormat"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "outputSizes",
            "imageFormat"
        }
    .end annotation

    .line 698
    invoke-direct {p0, p2}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->fetchExcludedSizes(I)Ljava/util/List;

    move-result-object v0

    .line 699
    .local v0, "excludedSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 700
    .local v1, "resultSizesList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 701
    const/4 v2, 0x0

    new-array v2, v2, [Landroid/util/Size;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/util/Size;

    return-object v2
.end method

.method private fetchExcludedSizes(I)Ljava/util/List;
    .registers 5
    .param p1, "imageFormat"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageFormat"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 1272
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mExcludedSizeListCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1274
    .local v0, "excludedSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    if-nez v0, :cond_1d

    .line 1275
    iget-object v1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mExcludedSupportedSizesContainer:Landroidx/camera/camera2/internal/compat/workaround/ExcludedSupportedSizesContainer;

    invoke-virtual {v1, p1}, Landroidx/camera/camera2/internal/compat/workaround/ExcludedSupportedSizesContainer;->get(I)Ljava/util/List;

    move-result-object v0

    .line 1276
    iget-object v1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mExcludedSizeListCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1279
    :cond_1d
    return-object v0
.end method

.method private fetchMaxSize(I)Landroid/util/Size;
    .registers 6
    .param p1, "imageFormat"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageFormat"
        }
    .end annotation

    .line 307
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mMaxSizeCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    .line 308
    .local v0, "size":Landroid/util/Size;
    if-eqz v0, :cond_f

    .line 309
    return-object v0

    .line 311
    :cond_f
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getMaxOutputSizeByFormat(I)Landroid/util/Size;

    move-result-object v1

    .line 312
    .local v1, "maxSize":Landroid/util/Size;
    iget-object v2, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mMaxSizeCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    return-object v1
.end method

.method private flipSizeByRotation(Landroid/util/Size;I)Landroid/util/Size;
    .registers 7
    .param p1, "size"    # Landroid/util/Size;
    .param p2, "targetRotation"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "size",
            "targetRotation"
        }
    .end annotation

    .line 466
    move-object v0, p1

    .line 468
    .local v0, "outputSize":Landroid/util/Size;
    if-eqz p1, :cond_17

    invoke-direct {p0, p2}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->isRotationNeeded(I)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 469
    new-instance v1, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    move-object v0, v1

    .line 471
    :cond_17
    return-object v0
.end method

.method private generateSupportedCombinationList()V
    .registers 8

    .line 1119
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceCombinations:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getLegacySupportedCombinationList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1121
    iget v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mHardwareLevel:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz v0, :cond_17

    iget v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mHardwareLevel:I

    if-eq v0, v2, :cond_17

    iget v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mHardwareLevel:I

    if-ne v0, v1, :cond_20

    .line 1124
    :cond_17
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceCombinations:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getLimitedSupportedCombinationList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1127
    :cond_20
    iget v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mHardwareLevel:I

    if-eq v0, v2, :cond_28

    iget v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mHardwareLevel:I

    if-ne v0, v1, :cond_31

    .line 1129
    :cond_28
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceCombinations:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getFullSupportedCombinationList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1132
    :cond_31
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCharacteristics:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1133
    invoke-virtual {v0, v3}, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 1135
    .local v0, "availableCapabilities":[I
    if-eqz v0, :cond_50

    .line 1136
    array-length v3, v0

    const/4 v4, 0x0

    :goto_3f
    if-ge v4, v3, :cond_50

    aget v5, v0, v4

    .line 1137
    .local v5, "capability":I
    if-ne v5, v1, :cond_48

    .line 1138
    iput-boolean v2, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mIsRawSupported:Z

    goto :goto_4d

    .line 1139
    :cond_48
    const/4 v6, 0x6

    if-ne v5, v6, :cond_4d

    .line 1141
    iput-boolean v2, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mIsBurstCaptureSupported:Z

    .line 1136
    .end local v5    # "capability":I
    :cond_4d
    :goto_4d
    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    .line 1146
    :cond_50
    iget-boolean v2, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mIsRawSupported:Z

    if-eqz v2, :cond_5d

    .line 1147
    iget-object v2, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceCombinations:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getRAWSupportedCombinationList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1150
    :cond_5d
    iget-boolean v2, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mIsBurstCaptureSupported:Z

    if-eqz v2, :cond_6e

    iget v2, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mHardwareLevel:I

    if-nez v2, :cond_6e

    .line 1152
    iget-object v2, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceCombinations:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getBurstSupportedCombinationList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1155
    :cond_6e
    iget v2, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mHardwareLevel:I

    if-ne v2, v1, :cond_7b

    .line 1156
    iget-object v1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceCombinations:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getLevel3SupportedCombinationList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1158
    :cond_7b
    return-void
.end method

.method private generateSurfaceSizeDefinition(Landroid/view/WindowManager;)V
    .registers 6
    .param p1, "windowManager"    # Landroid/view/WindowManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "windowManager"
        }
    .end annotation

    .line 1168
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x280

    const/16 v2, 0x1e0

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    .line 1169
    .local v0, "analysisSize":Landroid/util/Size;
    invoke-static {p1}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getPreviewSize(Landroid/view/WindowManager;)Landroid/util/Size;

    move-result-object v1

    .line 1170
    .local v1, "previewSize":Landroid/util/Size;
    invoke-direct {p0}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getRecordSize()Landroid/util/Size;

    move-result-object v2

    .line 1171
    .local v2, "recordSize":Landroid/util/Size;
    nop

    .line 1172
    invoke-static {v0, v1, v2}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->create(Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;)Landroidx/camera/core/impl/SurfaceSizeDefinition;

    move-result-object v3

    iput-object v3, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceSizeDefinition:Landroidx/camera/core/impl/SurfaceSizeDefinition;

    .line 1173
    return-void
.end method

.method private getAllOutputSizesByFormat(I)[Landroid/util/Size;
    .registers 5
    .param p1, "imageFormat"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageFormat"
        }
    .end annotation

    .line 735
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mOutputSizesCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Size;

    .line 736
    .local v0, "outputs":[Landroid/util/Size;
    if-nez v0, :cond_1b

    .line 737
    invoke-direct {p0, p1}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->doGetAllOutputSizesByFormat(I)[Landroid/util/Size;

    move-result-object v0

    .line 738
    iget-object v1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mOutputSizesCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    :cond_1b
    return-object v0
.end method

.method private getAllPossibleSizeArrangements(Ljava/util/List;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "supportedOutputSizesList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;>;)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;>;"
        }
    .end annotation

    .line 645
    .local p1, "supportedOutputSizesList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Landroid/util/Size;>;>;"
    const/4 v0, 0x1

    .line 647
    .local v0, "totalArrangementsCount":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 648
    .local v2, "supportedOutputSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    mul-int v0, v0, v3

    .line 649
    .end local v2    # "supportedOutputSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    goto :goto_5

    .line 654
    :cond_18
    if-eqz v0, :cond_7b

    .line 658
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 661
    .local v1, "allPossibleSizeArrangements":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Landroid/util/Size;>;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_20
    if-ge v2, v0, :cond_2d

    .line 662
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 663
    .local v3, "sizeList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 661
    .end local v3    # "sizeList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 674
    .end local v2    # "i":I
    :cond_2d
    move v2, v0

    .line 675
    .local v2, "currentRunCount":I
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    div-int v3, v2, v3

    .line 677
    .local v3, "nextRunCount":I
    const/4 v4, 0x0

    .local v4, "currentIndex":I
    :goto_3c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_7a

    .line 678
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 679
    .local v5, "supportedOutputSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_49
    if-ge v6, v0, :cond_60

    .line 680
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 682
    .local v7, "surfaceConfigList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    rem-int v8, v6, v2

    div-int/2addr v8, v3

    .line 683
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Size;

    .line 682
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 679
    .end local v7    # "surfaceConfigList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    add-int/lit8 v6, v6, 0x1

    goto :goto_49

    .line 686
    .end local v6    # "i":I
    :cond_60
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v4, v6, :cond_77

    .line 687
    move v2, v3

    .line 688
    add-int/lit8 v6, v4, 0x1

    .line 689
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    div-int v3, v2, v6

    .line 677
    .end local v5    # "supportedOutputSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    :cond_77
    add-int/lit8 v4, v4, 0x1

    goto :goto_3c

    .line 693
    .end local v4    # "currentIndex":I
    :cond_7a
    return-object v1

    .line 655
    .end local v1    # "allPossibleSizeArrangements":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Landroid/util/Size;>;>;"
    .end local v2    # "currentRunCount":I
    .end local v3    # "nextRunCount":I
    :cond_7b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Failed to find supported resolutions."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getArea(Landroid/util/Size;)I
    .registers 3
    .param p0, "size"    # Landroid/util/Size;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 553
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v1

    mul-int v0, v0, v1

    return v0
.end method

.method private getCustomizedSupportSizesFromConfig(ILandroidx/camera/core/impl/ImageOutputConfig;)[Landroid/util/Size;
    .registers 8
    .param p1, "imageFormat"    # I
    .param p2, "config"    # Landroidx/camera/core/impl/ImageOutputConfig;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "imageFormat",
            "config"
        }
    .end annotation

    .line 707
    const/4 v0, 0x0

    .line 710
    .local v0, "outputSizes":[Landroid/util/Size;
    nop

    .line 711
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Landroidx/camera/core/impl/ImageOutputConfig;->getSupportedResolutions(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 713
    .local v1, "formatResolutionsPairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Integer;[Landroid/util/Size;>;>;"
    if-eqz v1, :cond_2a

    .line 714
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 715
    .local v3, "formatResolutionPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;[Landroid/util/Size;>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, p1, :cond_29

    .line 716
    iget-object v2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [Landroid/util/Size;

    .line 717
    goto :goto_2a

    .line 719
    .end local v3    # "formatResolutionPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;[Landroid/util/Size;>;"
    :cond_29
    goto :goto_d

    .line 722
    :cond_2a
    :goto_2a
    if-eqz v0, :cond_39

    .line 723
    invoke-direct {p0, v0, p1}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->excludeProblematicSizes([Landroid/util/Size;I)[Landroid/util/Size;

    move-result-object v0

    .line 727
    new-instance v2, Landroidx/camera/camera2/internal/SupportedSurfaceCombination$CompareSizesByArea;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination$CompareSizesByArea;-><init>(Z)V

    invoke-static {v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 730
    :cond_39
    return-object v0
.end method

.method public static getPreviewSize(Landroid/view/WindowManager;)Landroid/util/Size;
    .registers 6
    .param p0, "windowManager"    # Landroid/view/WindowManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "windowManager"
        }
    .end annotation

    .line 1182
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 1183
    .local v0, "displaySize":Landroid/graphics/Point;
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1186
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    if-le v1, v2, :cond_1c

    .line 1187
    new-instance v1, Landroid/util/Size;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    .local v1, "displayViewSize":Landroid/util/Size;
    goto :goto_25

    .line 1189
    .end local v1    # "displayViewSize":Landroid/util/Size;
    :cond_1c
    new-instance v1, Landroid/util/Size;

    iget v2, v0, Landroid/graphics/Point;->y:I

    iget v3, v0, Landroid/graphics/Point;->x:I

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    .line 1193
    .restart local v1    # "displayViewSize":Landroid/util/Size;
    :goto_25
    new-instance v2, Landroid/util/Size;

    .line 1196
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/util/Size;-><init>(II)V

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/util/Size;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    sget-object v2, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->MAX_PREVIEW_SIZE:Landroid/util/Size;

    const/4 v4, 0x1

    aput-object v2, v3, v4

    .line 1195
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Landroidx/camera/camera2/internal/SupportedSurfaceCombination$CompareSizesByArea;

    invoke-direct {v3}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination$CompareSizesByArea;-><init>()V

    .line 1194
    invoke-static {v2, v3}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Size;

    .line 1200
    .local v2, "previewSize":Landroid/util/Size;
    return-object v2
.end method

.method private getRecordSize()Landroid/util/Size;
    .registers 5

    .line 1209
    sget-object v0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->QUALITY_480P_SIZE:Landroid/util/Size;

    .line 1212
    .local v0, "recordSize":Landroid/util/Size;
    :try_start_2
    iget-object v1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCameraId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1215
    .local v1, "cameraId":I
    iget-object v2, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCamcorderProfileHelper:Landroidx/camera/camera2/internal/CamcorderProfileHelper;

    const/16 v3, 0x8

    invoke-interface {v2, v1, v3}, Landroidx/camera/camera2/internal/CamcorderProfileHelper;->hasProfile(II)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1216
    sget-object v2, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->QUALITY_2160P_SIZE:Landroid/util/Size;

    move-object v0, v2

    goto :goto_3c

    .line 1217
    :cond_16
    iget-object v2, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCamcorderProfileHelper:Landroidx/camera/camera2/internal/CamcorderProfileHelper;

    const/4 v3, 0x6

    invoke-interface {v2, v1, v3}, Landroidx/camera/camera2/internal/CamcorderProfileHelper;->hasProfile(II)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1219
    sget-object v2, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->QUALITY_1080P_SIZE:Landroid/util/Size;

    move-object v0, v2

    goto :goto_3c

    .line 1220
    :cond_23
    iget-object v2, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCamcorderProfileHelper:Landroidx/camera/camera2/internal/CamcorderProfileHelper;

    const/4 v3, 0x5

    invoke-interface {v2, v1, v3}, Landroidx/camera/camera2/internal/CamcorderProfileHelper;->hasProfile(II)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 1222
    sget-object v2, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->QUALITY_720P_SIZE:Landroid/util/Size;

    move-object v0, v2

    goto :goto_3c

    .line 1223
    :cond_30
    iget-object v2, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCamcorderProfileHelper:Landroidx/camera/camera2/internal/CamcorderProfileHelper;

    const/4 v3, 0x4

    invoke-interface {v2, v1, v3}, Landroidx/camera/camera2/internal/CamcorderProfileHelper;->hasProfile(II)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 1225
    sget-object v2, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->QUALITY_480P_SIZE:Landroid/util/Size;
    :try_end_3b
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_3b} :catch_3d

    move-object v0, v2

    .line 1231
    .end local v1    # "cameraId":I
    :cond_3c
    :goto_3c
    goto :goto_42

    .line 1227
    :catch_3d
    move-exception v1

    .line 1230
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-direct {p0}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getRecordSizeFromStreamConfigurationMap()Landroid/util/Size;

    move-result-object v0

    .line 1233
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :goto_42
    return-object v0
.end method

.method private getRecordSizeFromStreamConfigurationMap()Landroid/util/Size;
    .registers 8

    .line 1244
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCharacteristics:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1245
    invoke-virtual {v0, v1}, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 1247
    .local v0, "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    if-eqz v0, :cond_45

    .line 1251
    const-class v1, Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v1

    .line 1253
    .local v1, "videoSizeArr":[Landroid/util/Size;
    if-nez v1, :cond_17

    .line 1254
    sget-object v2, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->QUALITY_480P_SIZE:Landroid/util/Size;

    return-object v2

    .line 1257
    :cond_17
    new-instance v2, Landroidx/camera/camera2/internal/SupportedSurfaceCombination$CompareSizesByArea;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination$CompareSizesByArea;-><init>(Z)V

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1259
    array-length v2, v1

    const/4 v3, 0x0

    :goto_22
    if-ge v3, v2, :cond_42

    aget-object v4, v1, v3

    .line 1261
    .local v4, "size":Landroid/util/Size;
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v5

    sget-object v6, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->QUALITY_1080P_SIZE:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v6

    if-gt v5, v6, :cond_3f

    .line 1262
    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v5

    sget-object v6, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->QUALITY_1080P_SIZE:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    if-gt v5, v6, :cond_3f

    .line 1263
    return-object v4

    .line 1259
    .end local v4    # "size":Landroid/util/Size;
    :cond_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 1267
    :cond_42
    sget-object v2, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->QUALITY_480P_SIZE:Landroid/util/Size;

    return-object v2

    .line 1248
    .end local v1    # "videoSizeArr":[Landroid/util/Size;
    :cond_45
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can not retrieve SCALER_STREAM_CONFIGURATION_MAP"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getTargetAspectRatio(Landroidx/camera/core/impl/ImageOutputConfig;)Landroid/util/Rational;
    .registers 8
    .param p1, "imageOutputConfig"    # Landroidx/camera/core/impl/ImageOutputConfig;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageOutputConfig"
        }
    .end annotation

    .line 257
    const/4 v0, 0x0

    .line 260
    .local v0, "outputRatio":Landroid/util/Rational;
    new-instance v1, Landroidx/camera/camera2/internal/compat/workaround/TargetAspectRatio;

    invoke-direct {v1}, Landroidx/camera/camera2/internal/compat/workaround/TargetAspectRatio;-><init>()V

    iget-object v2, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCameraId:Ljava/lang/String;

    iget-object v3, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCharacteristics:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

    .line 261
    invoke-virtual {v1, p1, v2, v3}, Landroidx/camera/camera2/internal/compat/workaround/TargetAspectRatio;->get(Landroidx/camera/core/impl/ImageOutputConfig;Ljava/lang/String;Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;)I

    move-result v1

    .line 262
    .local v1, "targetAspectRatio":I
    packed-switch v1, :pswitch_data_92

    goto/16 :goto_90

    .line 274
    :pswitch_13
    invoke-direct {p0, p1}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getTargetSize(Landroidx/camera/core/impl/ImageOutputConfig;)Landroid/util/Size;

    move-result-object v2

    .line 275
    .local v2, "targetSize":Landroid/util/Size;
    invoke-interface {p1}, Landroidx/camera/core/impl/ImageOutputConfig;->hasTargetAspectRatio()Z

    move-result v3

    if-eqz v3, :cond_54

    .line 276
    invoke-interface {p1}, Landroidx/camera/core/impl/ImageOutputConfig;->getTargetAspectRatio()I

    move-result v3

    .line 277
    .local v3, "aspectRatio":I
    packed-switch v3, :pswitch_data_9e

    .line 287
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Undefined target aspect ratio: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SupportedSurfaceCombination"

    invoke-static {v5, v4}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_53

    .line 283
    :pswitch_3d
    iget-boolean v4, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mIsSensorLandscapeResolution:Z

    if-eqz v4, :cond_44

    sget-object v4, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->ASPECT_RATIO_16_9:Landroid/util/Rational;

    goto :goto_46

    .line 284
    :cond_44
    sget-object v4, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->ASPECT_RATIO_9_16:Landroid/util/Rational;

    :goto_46
    move-object v0, v4

    .line 285
    goto :goto_53

    .line 279
    :pswitch_48
    iget-boolean v4, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mIsSensorLandscapeResolution:Z

    if-eqz v4, :cond_4f

    sget-object v4, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->ASPECT_RATIO_4_3:Landroid/util/Rational;

    goto :goto_51

    .line 280
    :cond_4f
    sget-object v4, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->ASPECT_RATIO_3_4:Landroid/util/Rational;

    :goto_51
    move-object v0, v4

    .line 281
    nop

    .line 289
    .end local v3    # "aspectRatio":I
    :cond_53
    :goto_53
    goto :goto_90

    :cond_54
    if-eqz v2, :cond_53

    .line 293
    new-instance v3, Landroid/util/Rational;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/util/Rational;-><init>(II)V

    move-object v0, v3

    goto :goto_90

    .line 270
    .end local v2    # "targetSize":Landroid/util/Size;
    :pswitch_65
    const/16 v2, 0x100

    invoke-direct {p0, v2}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->fetchMaxSize(I)Landroid/util/Size;

    move-result-object v2

    .line 271
    .local v2, "maxJpegSize":Landroid/util/Size;
    new-instance v3, Landroid/util/Rational;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/util/Rational;-><init>(II)V

    move-object v0, v3

    .line 272
    goto :goto_90

    .line 267
    .end local v2    # "maxJpegSize":Landroid/util/Size;
    :pswitch_7a
    iget-boolean v2, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mIsSensorLandscapeResolution:Z

    if-eqz v2, :cond_81

    sget-object v2, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->ASPECT_RATIO_16_9:Landroid/util/Rational;

    goto :goto_83

    :cond_81
    sget-object v2, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->ASPECT_RATIO_9_16:Landroid/util/Rational;

    :goto_83
    move-object v0, v2

    .line 268
    goto :goto_90

    .line 264
    :pswitch_85
    iget-boolean v2, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mIsSensorLandscapeResolution:Z

    if-eqz v2, :cond_8c

    sget-object v2, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->ASPECT_RATIO_4_3:Landroid/util/Rational;

    goto :goto_8e

    :cond_8c
    sget-object v2, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->ASPECT_RATIO_3_4:Landroid/util/Rational;

    :goto_8e
    move-object v0, v2

    .line 265
    nop

    .line 299
    :goto_90
    return-object v0

    nop

    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_85
        :pswitch_7a
        :pswitch_65
        :pswitch_13
    .end packed-switch

    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_48
        :pswitch_3d
    .end packed-switch
.end method

.method private getTargetSize(Landroidx/camera/core/impl/ImageOutputConfig;)Landroid/util/Size;
    .registers 4
    .param p1, "imageOutputConfig"    # Landroidx/camera/core/impl/ImageOutputConfig;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageOutputConfig"
        }
    .end annotation

    .line 456
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroidx/camera/core/impl/ImageOutputConfig;->getTargetRotation(I)I

    move-result v0

    .line 458
    .local v0, "targetRotation":I
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroidx/camera/core/impl/ImageOutputConfig;->getTargetResolution(Landroid/util/Size;)Landroid/util/Size;

    move-result-object v1

    .line 459
    .local v1, "targetSize":Landroid/util/Size;
    invoke-direct {p0, v1, v0}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->flipSizeByRotation(Landroid/util/Size;I)Landroid/util/Size;

    move-result-object v1

    .line 460
    return-object v1
.end method

.method private getUseCasesPriorityOrder(Ljava/util/List;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newUseCaseConfigs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;>;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 317
    .local p1, "newUseCaseConfigs":Ljava/util/List;, "Ljava/util/List<Landroidx/camera/core/impl/UseCaseConfig<*>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 325
    .local v0, "priorityOrder":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 327
    .local v1, "priorityValueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/core/impl/UseCaseConfig;

    .line 328
    .local v3, "config":Landroidx/camera/core/impl/UseCaseConfig;, "Landroidx/camera/core/impl/UseCaseConfig<*>;"
    invoke-interface {v3, v4}, Landroidx/camera/core/impl/UseCaseConfig;->getSurfaceOccupancyPriority(I)I

    move-result v4

    .line 329
    .local v4, "priority":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_30

    .line 330
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    .end local v3    # "config":Landroidx/camera/core/impl/UseCaseConfig;, "Landroidx/camera/core/impl/UseCaseConfig<*>;"
    .end local v4    # "priority":I
    :cond_30
    goto :goto_e

    .line 334
    :cond_31
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 337
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 339
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 340
    .local v3, "priorityValue":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/camera/core/impl/UseCaseConfig;

    .line 341
    .local v6, "config":Landroidx/camera/core/impl/UseCaseConfig;, "Landroidx/camera/core/impl/UseCaseConfig<*>;"
    invoke-interface {v6, v4}, Landroidx/camera/core/impl/UseCaseConfig;->getSurfaceOccupancyPriority(I)I

    move-result v7

    if-ne v3, v7, :cond_6c

    .line 342
    invoke-interface {p1, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    .end local v6    # "config":Landroidx/camera/core/impl/UseCaseConfig;, "Landroidx/camera/core/impl/UseCaseConfig<*>;"
    :cond_6c
    goto :goto_4f

    .line 345
    .end local v3    # "priorityValue":I
    :cond_6d
    goto :goto_3b

    .line 347
    :cond_6e
    return-object v0
.end method

.method private groupSizesByAspectRatio(Ljava/util/List;)Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sizes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)",
            "Ljava/util/Map<",
            "Landroid/util/Rational;",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;>;"
        }
    .end annotation

    .line 566
    .local p1, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 572
    .local v0, "aspectRatioSizeListMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Rational;Ljava/util/List<Landroid/util/Size;>;>;"
    sget-object v1, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->ASPECT_RATIO_4_3:Landroid/util/Rational;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    sget-object v1, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->ASPECT_RATIO_16_9:Landroid/util/Rational;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_71

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Size;

    .line 576
    .local v2, "outputSize":Landroid/util/Size;
    const/4 v3, 0x0

    .line 578
    .local v3, "matchedKey":Landroid/util/Rational;
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_32
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_55

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Rational;

    .line 581
    .local v5, "key":Landroid/util/Rational;
    invoke-static {v2, v5}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->hasMatchingAspectRatio(Landroid/util/Size;Landroid/util/Rational;)Z

    move-result v6

    if-eqz v6, :cond_54

    .line 582
    move-object v3, v5

    .line 584
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 585
    .local v6, "sizeList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    invoke-interface {v6, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_54

    .line 586
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 589
    .end local v5    # "key":Landroid/util/Rational;
    .end local v6    # "sizeList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    :cond_54
    goto :goto_32

    .line 592
    :cond_55
    if-nez v3, :cond_70

    .line 593
    new-instance v4, Landroid/util/Rational;

    .line 594
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/util/Rational;-><init>(II)V

    new-instance v5, Ljava/util/ArrayList;

    .line 595
    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 593
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    .end local v2    # "outputSize":Landroid/util/Size;
    .end local v3    # "matchedKey":Landroid/util/Rational;
    :cond_70
    goto :goto_1d

    .line 599
    :cond_71
    return-object v0
.end method

.method static hasMatchingAspectRatio(Landroid/util/Size;Landroid/util/Rational;)Z
    .registers 6
    .param p0, "resolution"    # Landroid/util/Size;
    .param p1, "aspectRatio"    # Landroid/util/Rational;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resolution",
            "aspectRatio"
        }
    .end annotation

    .line 508
    const/4 v0, 0x0

    .line 509
    .local v0, "isMatch":Z
    if-nez p1, :cond_5

    .line 510
    const/4 v0, 0x0

    goto :goto_2a

    .line 511
    :cond_5
    new-instance v1, Landroid/util/Rational;

    .line 512
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/util/Rational;-><init>(II)V

    .line 511
    invoke-virtual {p1, v1}, Landroid/util/Rational;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 513
    const/4 v0, 0x1

    goto :goto_2a

    .line 514
    :cond_1a
    invoke-static {p0}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getArea(Landroid/util/Size;)I

    move-result v1

    sget-object v2, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->DEFAULT_SIZE:Landroid/util/Size;

    invoke-static {v2}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getArea(Landroid/util/Size;)I

    move-result v2

    if-lt v1, v2, :cond_2a

    .line 519
    invoke-static {p0, p1}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->isPossibleMod16FromAspectRatio(Landroid/util/Size;Landroid/util/Rational;)Z

    move-result v0

    .line 521
    :cond_2a
    :goto_2a
    return v0
.end method

.method private static isPossibleMod16FromAspectRatio(Landroid/util/Size;Landroid/util/Rational;)Z
    .registers 7
    .param p0, "resolution"    # Landroid/util/Size;
    .param p1, "aspectRatio"    # Landroid/util/Rational;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resolution",
            "aspectRatio"
        }
    .end annotation

    .line 535
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 536
    .local v0, "width":I
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v1

    .line 538
    .local v1, "height":I
    new-instance v2, Landroid/util/Rational;

    invoke-virtual {p1}, Landroid/util/Rational;->getDenominator()I

    move-result v3

    .line 539
    invoke-virtual {p1}, Landroid/util/Rational;->getNumerator()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/util/Rational;-><init>(II)V

    .line 540
    .local v2, "invAspectRatio":Landroid/util/Rational;
    rem-int/lit8 v3, v0, 0x10

    const/4 v4, 0x0

    if-nez v3, :cond_38

    rem-int/lit8 v3, v1, 0x10

    if-nez v3, :cond_38

    .line 541
    add-int/lit8 v3, v1, -0x10

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3, v0, p1}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->ratioIntersectsMod16Segment(IILandroid/util/Rational;)Z

    move-result v3

    if-nez v3, :cond_36

    add-int/lit8 v3, v0, -0x10

    .line 542
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3, v1, v2}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->ratioIntersectsMod16Segment(IILandroid/util/Rational;)Z

    move-result v3

    if-eqz v3, :cond_37

    :cond_36
    const/4 v4, 0x1

    .line 541
    :cond_37
    return v4

    .line 544
    :cond_38
    rem-int/lit8 v3, v0, 0x10

    if-nez v3, :cond_41

    .line 545
    invoke-static {v1, v0, p1}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->ratioIntersectsMod16Segment(IILandroid/util/Rational;)Z

    move-result v3

    return v3

    .line 546
    :cond_41
    rem-int/lit8 v3, v1, 0x10

    if-nez v3, :cond_4a

    .line 547
    invoke-static {v0, v1, v2}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->ratioIntersectsMod16Segment(IILandroid/util/Rational;)Z

    move-result v3

    return v3

    .line 549
    :cond_4a
    return v4
.end method

.method private isRotationNeeded(I)Z
    .registers 10
    .param p1, "targetRotation"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "targetRotation"
        }
    .end annotation

    .line 475
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCharacteristics:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 476
    invoke-virtual {v0, v1}, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 477
    .local v0, "sensorOrientation":Ljava/lang/Integer;
    const-string v1, "Camera HAL in bad state, unable to retrieve the SENSOR_ORIENTATION"

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    nop

    .line 480
    invoke-static {p1}, Landroidx/camera/core/impl/utils/CameraOrientationUtil;->surfaceRotationToDegrees(I)I

    move-result v1

    .line 485
    .local v1, "relativeRotationDegrees":I
    iget-object v2, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCharacteristics:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 486
    .local v2, "lensFacing":Ljava/lang/Integer;
    const-string v3, "Camera HAL in bad state, unable to retrieve the LENS_FACING"

    invoke-static {v2, v3}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v5, v3, :cond_2d

    const/4 v3, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v3, 0x0

    .line 491
    .local v3, "isOppositeFacingScreen":Z
    :goto_2e
    nop

    .line 493
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 491
    invoke-static {v1, v6, v3}, Landroidx/camera/core/impl/utils/CameraOrientationUtil;->getRelativeImageRotation(IIZ)I

    move-result v6

    .line 495
    .local v6, "sensorRotationDegrees":I
    const/16 v7, 0x5a

    if-eq v6, v7, :cond_3f

    const/16 v7, 0x10e

    if-ne v6, v7, :cond_40

    :cond_3f
    const/4 v4, 0x1

    :cond_40
    return v4
.end method

.method private isSensorLandscapeResolution()Z
    .registers 5

    .line 499
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCharacteristics:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PIXEL_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 500
    invoke-virtual {v0, v1}, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    .line 503
    .local v0, "pixelArraySize":Landroid/util/Size;
    const/4 v1, 0x1

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v3

    if-lt v2, v3, :cond_18

    goto :goto_1b

    :cond_18
    const/4 v1, 0x0

    goto :goto_1b

    .line 504
    :cond_1a
    nop

    .line 503
    :goto_1b
    return v1
.end method

.method private static ratioIntersectsMod16Segment(IILandroid/util/Rational;)Z
    .registers 10
    .param p0, "height"    # I
    .param p1, "mod16Width"    # I
    .param p2, "aspectRatio"    # Landroid/util/Rational;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "height",
            "mod16Width",
            "aspectRatio"
        }
    .end annotation

    .line 558
    rem-int/lit8 v0, p1, 0x10

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 559
    nop

    .line 560
    invoke-virtual {p2}, Landroid/util/Rational;->getNumerator()I

    move-result v0

    mul-int v0, v0, p0

    int-to-double v3, v0

    invoke-virtual {p2}, Landroid/util/Rational;->getDenominator()I

    move-result v0

    int-to-double v5, v0

    div-double/2addr v3, v5

    .line 561
    .local v3, "aspectRatioWidth":D
    add-int/lit8 v0, p1, -0x10

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v5, v0

    cmpl-double v0, v3, v5

    if-lez v0, :cond_2d

    add-int/lit8 v0, p1, 0x10

    int-to-double v5, v0

    cmpg-double v0, v3, v5

    if-gez v0, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v1, 0x0

    :goto_2e
    return v1
.end method

.method private removeSupportedSizesByTargetSize(Ljava/util/List;Landroid/util/Size;)V
    .registers 9
    .param p2, "targetSize"    # Landroid/util/Size;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "supportedSizesList",
            "targetSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;",
            "Landroid/util/Size;",
            ")V"
        }
    .end annotation

    .line 615
    .local p1, "supportedSizesList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    if-eqz p1, :cond_43

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_43

    .line 619
    :cond_9
    const/4 v0, -0x1

    .line 620
    .local v0, "indexBigEnough":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 623
    .local v1, "removeSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3f

    .line 624
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Size;

    .line 625
    .local v3, "outputSize":Landroid/util/Size;
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v5

    if-lt v4, v5, :cond_3f

    .line 626
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v5

    if-lt v4, v5, :cond_3f

    .line 629
    if-ltz v0, :cond_3b

    .line 630
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Size;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 633
    :cond_3b
    move v0, v2

    .line 623
    .end local v3    # "outputSize":Landroid/util/Size;
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 640
    .end local v2    # "i":I
    :cond_3f
    invoke-interface {p1, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 641
    return-void

    .line 616
    .end local v0    # "indexBigEnough":I
    .end local v1    # "removeSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    :cond_43
    :goto_43
    return-void
.end method


# virtual methods
.method checkSupported(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surfaceConfigList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceConfig;",
            ">;)Z"
        }
    .end annotation

    .line 146
    .local p1, "surfaceConfigList":Ljava/util/List;, "Ljava/util/List<Landroidx/camera/core/impl/SurfaceConfig;>;"
    const/4 v0, 0x0

    .line 148
    .local v0, "isSupported":Z
    iget-object v1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceCombinations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/impl/SurfaceCombination;

    .line 149
    .local v2, "surfaceCombination":Landroidx/camera/core/impl/SurfaceCombination;
    invoke-virtual {v2, p1}, Landroidx/camera/core/impl/SurfaceCombination;->isSupported(Ljava/util/List;)Z

    move-result v0

    .line 151
    if-eqz v0, :cond_1a

    .line 152
    goto :goto_1b

    .line 154
    .end local v2    # "surfaceCombination":Landroidx/camera/core/impl/SurfaceCombination;
    :cond_1a
    goto :goto_7

    .line 156
    :cond_1b
    :goto_1b
    return v0
.end method

.method getBurstSupportedCombinationList()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceCombination;",
            ">;"
        }
    .end annotation

    .line 1059
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1062
    .local v0, "combinationList":Ljava/util/List;, "Ljava/util/List<Landroidx/camera/core/impl/SurfaceCombination;>;"
    new-instance v1, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {v1}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 1063
    .local v1, "surfaceCombination1":Landroidx/camera/core/impl/SurfaceCombination;
    sget-object v2, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->PRIV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->PREVIEW:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 1064
    invoke-static {v2, v3}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v2

    .line 1063
    invoke-virtual {v1, v2}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 1065
    sget-object v2, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->PRIV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->MAXIMUM:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 1066
    invoke-static {v2, v3}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v2

    .line 1065
    invoke-virtual {v1, v2}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 1067
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1070
    new-instance v2, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {v2}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 1071
    .local v2, "surfaceCombination2":Landroidx/camera/core/impl/SurfaceCombination;
    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->PRIV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v4, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->PREVIEW:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 1072
    invoke-static {v3, v4}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v3

    .line 1071
    invoke-virtual {v2, v3}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 1073
    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->YUV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v4, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->MAXIMUM:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 1074
    invoke-static {v3, v4}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v3

    .line 1073
    invoke-virtual {v2, v3}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 1075
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1078
    new-instance v3, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {v3}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 1079
    .local v3, "surfaceCombination3":Landroidx/camera/core/impl/SurfaceCombination;
    sget-object v4, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->YUV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v5, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->PREVIEW:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 1080
    invoke-static {v4, v5}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v4

    .line 1079
    invoke-virtual {v3, v4}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 1081
    sget-object v4, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->YUV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v5, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->MAXIMUM:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 1082
    invoke-static {v4, v5}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v4

    .line 1081
    invoke-virtual {v3, v4}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 1083
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1085
    return-object v0
.end method

.method getCameraId()Ljava/lang/String;
    .registers 2

    .line 127
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCameraId:Ljava/lang/String;

    return-object v0
.end method

.method getFullSupportedCombinationList()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceCombination;",
            ">;"
        }
    .end annotation

    .line 921
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 924
    .local v0, "combinationList":Ljava/util/List;, "Ljava/util/List<Landroidx/camera/core/impl/SurfaceCombination;>;"
    new-instance v1, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {v1}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 925
    .local v1, "surfaceCombination1":Landroidx/camera/core/impl/SurfaceCombination;
    sget-object v2, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->PRIV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->PREVIEW:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 926
    invoke-static {v2, v3}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v2

    .line 925
    invoke-virtual {v1, v2}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 927
    sget-object v2, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->PRIV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->MAXIMUM:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 928
    invoke-static {v2, v3}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v2

    .line 927
    invoke-virtual {v1, v2}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 929
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 932
    new-instance v2, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {v2}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 933
    .local v2, "surfaceCombination2":Landroidx/camera/core/impl/SurfaceCombination;
    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->PRIV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v4, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->PREVIEW:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 934
    invoke-static {v3, v4}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v3

    .line 933
    invoke-virtual {v2, v3}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 935
    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->YUV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v4, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->MAXIMUM:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 936
    invoke-static {v3, v4}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v3

    .line 935
    invoke-virtual {v2, v3}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 937
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 940
    new-instance v3, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {v3}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 941
    .local v3, "surfaceCombination3":Landroidx/camera/core/impl/SurfaceCombination;
    sget-object v4, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->YUV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v5, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->PREVIEW:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 942
    invoke-static {v4, v5}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v4

    .line 941
    invoke-virtual {v3, v4}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 943
    sget-object v4, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->YUV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v5, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->MAXIMUM:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 944
    invoke-static {v4, v5}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v4

    .line 943
    invoke-virtual {v3, v4}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 945
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 948
    new-instance v4, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {v4}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 949
    .local v4, "surfaceCombination4":Landroidx/camera/core/impl/SurfaceCombination;
    sget-object v5, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->PRIV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v6, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->PREVIEW:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 950
    invoke-static {v5, v6}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    .line 949
    invoke-virtual {v4, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 951
    sget-object v5, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->PRIV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v6, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->PREVIEW:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 952
    invoke-static {v5, v6}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    .line 951
    invoke-virtual {v4, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 953
    sget-object v5, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->JPEG:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v6, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->MAXIMUM:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 954
    invoke-static {v5, v6}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    .line 953
    invoke-virtual {v4, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 955
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 958
    new-instance v5, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {v5}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 959
    .local v5, "surfaceCombination5":Landroidx/camera/core/impl/SurfaceCombination;
    sget-object v6, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->YUV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v7, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->ANALYSIS:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 960
    invoke-static {v6, v7}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v6

    .line 959
    invoke-virtual {v5, v6}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 961
    sget-object v6, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->PRIV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v7, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->PREVIEW:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 962
    invoke-static {v6, v7}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v6

    .line 961
    invoke-virtual {v5, v6}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 963
    sget-object v6, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->YUV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v7, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->MAXIMUM:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 964
    invoke-static {v6, v7}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v6

    .line 963
    invoke-virtual {v5, v6}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 965
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 968
    new-instance v6, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {v6}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 969
    .local v6, "surfaceCombination6":Landroidx/camera/core/impl/SurfaceCombination;
    sget-object v7, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->YUV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v8, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->ANALYSIS:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 970
    invoke-static {v7, v8}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v7

    .line 969
    invoke-virtual {v6, v7}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 971
    sget-object v7, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->YUV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v8, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->PREVIEW:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 972
    invoke-static {v7, v8}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v7

    .line 971
    invoke-virtual {v6, v7}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 973
    sget-object v7, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->YUV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v8, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->MAXIMUM:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 974
    invoke-static {v7, v8}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v7

    .line 973
    invoke-virtual {v6, v7}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 975
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 977
    return-object v0
.end method

.method getLegacySupportedCombinationList()Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceCombination;",
            ">;"
        }
    .end annotation

    .line 794
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 797
    .local v0, "combinationList":Ljava/util/List;, "Ljava/util/List<Landroidx/camera/core/impl/SurfaceCombination;>;"
    new-instance v1, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {v1}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 798
    .local v1, "surfaceCombination1":Landroidx/camera/core/impl/SurfaceCombination;
    sget-object v2, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->PRIV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->MAXIMUM:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 799
    invoke-static {v2, v3}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v2

    .line 798
    invoke-virtual {v1, v2}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 800
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 803
    new-instance v2, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {v2}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 804
    .local v2, "surfaceCombination2":Landroidx/camera/core/impl/SurfaceCombination;
    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->JPEG:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v4, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->MAXIMUM:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 805
    invoke-static {v3, v4}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v3

    .line 804
    invoke-virtual {v2, v3}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 806
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 809
    new-instance v3, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {v3}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 810
    .local v3, "surfaceCombination3":Landroidx/camera/core/impl/SurfaceCombination;
    sget-object v4, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->YUV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v5, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->MAXIMUM:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 811
    invoke-static {v4, v5}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v4

    .line 810
    invoke-virtual {v3, v4}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 812
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 816
    new-instance v4, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {v4}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 817
    .local v4, "surfaceCombination4":Landroidx/camera/core/impl/SurfaceCombination;
    sget-object v5, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->PRIV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v6, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->PREVIEW:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 818
    invoke-static {v5, v6}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    .line 817
    invoke-virtual {v4, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 819
    sget-object v5, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->JPEG:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v6, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->MAXIMUM:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 820
    invoke-static {v5, v6}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    .line 819
    invoke-virtual {v4, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 821
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 824
    new-instance v5, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {v5}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 825
    .local v5, "surfaceCombination5":Landroidx/camera/core/impl/SurfaceCombination;
    sget-object v6, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->YUV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v7, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->PREVIEW:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 826
    invoke-static {v6, v7}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v6

    .line 825
    invoke-virtual {v5, v6}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 827
    sget-object v6, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->JPEG:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v7, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->MAXIMUM:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 828
    invoke-static {v6, v7}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v6

    .line 827
    invoke-virtual {v5, v6}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 829
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 832
    new-instance v6, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {v6}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 833
    .local v6, "surfaceCombination6":Landroidx/camera/core/impl/SurfaceCombination;
    sget-object v7, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->PRIV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v8, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->PREVIEW:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 834
    invoke-static {v7, v8}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v7

    .line 833
    invoke-virtual {v6, v7}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 835
    sget-object v7, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->PRIV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v8, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->PREVIEW:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 836
    invoke-static {v7, v8}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v7

    .line 835
    invoke-virtual {v6, v7}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 837
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 840
    new-instance v7, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {v7}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 841
    .local v7, "surfaceCombination7":Landroidx/camera/core/impl/SurfaceCombination;
    sget-object v8, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->PRIV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v9, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->PREVIEW:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 842
    invoke-static {v8, v9}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v8

    .line 841
    invoke-virtual {v7, v8}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 843
    sget-object v8, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->YUV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v9, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->PREVIEW:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 844
    invoke-static {v8, v9}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v8

    .line 843
    invoke-virtual {v7, v8}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 845
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 848
    new-instance v8, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {v8}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 849
    .local v8, "surfaceCombination8":Landroidx/camera/core/impl/SurfaceCombination;
    sget-object v9, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->PRIV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v10, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->PREVIEW:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 850
    invoke-static {v9, v10}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v9

    .line 849
    invoke-virtual {v8, v9}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 851
    sget-object v9, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->YUV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v10, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->PREVIEW:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 852
    invoke-static {v9, v10}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v9

    .line 851
    invoke-virtual {v8, v9}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 853
    sget-object v9, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->JPEG:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v10, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->MAXIMUM:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 854
    invoke-static {v9, v10}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v9

    .line 853
    invoke-virtual {v8, v9}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 855
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 857
    return-object v0
.end method

.method getLevel3SupportedCombinationList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceCombination;",
            ">;"
        }
    .end annotation

    .line 1089
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1092
    .local v0, "combinationList":Ljava/util/List;, "Ljava/util/List<Landroidx/camera/core/impl/SurfaceCombination;>;"
    new-instance v1, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {v1}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 1093
    .local v1, "surfaceCombination1":Landroidx/camera/core/impl/SurfaceCombination;
    sget-object v2, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->PRIV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->PREVIEW:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 1094
    invoke-static {v2, v3}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v2

    .line 1093
    invoke-virtual {v1, v2}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 1095
    sget-object v2, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->PRIV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->ANALYSIS:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 1096
    invoke-static {v2, v3}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v2

    .line 1095
    invoke-virtual {v1, v2}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 1097
    sget-object v2, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->YUV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->MAXIMUM:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 1098
    invoke-static {v2, v3}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v2

    .line 1097
    invoke-virtual {v1, v2}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 1099
    sget-object v2, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->RAW:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->MAXIMUM:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 1100
    invoke-static {v2, v3}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v2

    .line 1099
    invoke-virtual {v1, v2}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 1101
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1104
    new-instance v2, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {v2}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 1105
    .local v2, "surfaceCombination2":Landroidx/camera/core/impl/SurfaceCombination;
    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->PRIV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v4, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->PREVIEW:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 1106
    invoke-static {v3, v4}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v3

    .line 1105
    invoke-virtual {v2, v3}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 1107
    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->PRIV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v4, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->ANALYSIS:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 1108
    invoke-static {v3, v4}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v3

    .line 1107
    invoke-virtual {v2, v3}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 1109
    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->JPEG:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v4, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->MAXIMUM:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 1110
    invoke-static {v3, v4}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v3

    .line 1109
    invoke-virtual {v2, v3}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 1111
    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->RAW:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v4, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->MAXIMUM:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 1112
    invoke-static {v3, v4}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v3

    .line 1111
    invoke-virtual {v2, v3}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 1113
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1115
    return-object v0
.end method

.method getLimitedSupportedCombinationList()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceCombination;",
            ">;"
        }
    .end annotation

    .line 861
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 864
    .local v0, "combinationList":Ljava/util/List;, "Ljava/util/List<Landroidx/camera/core/impl/SurfaceCombination;>;"
    new-instance v1, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {v1}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 865
    .local v1, "surfaceCombination1":Landroidx/camera/core/impl/SurfaceCombination;
    sget-object v2, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->PRIV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->PREVIEW:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 866
    invoke-static {v2, v3}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v2

    .line 865
    invoke-virtual {v1, v2}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 867
    sget-object v2, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->PRIV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->RECORD:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 868
    invoke-static {v2, v3}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v2

    .line 867
    invoke-virtual {v1, v2}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 869
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 872
    new-instance v2, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {v2}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 873
    .local v2, "surfaceCombination2":Landroidx/camera/core/impl/SurfaceCombination;
    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->PRIV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v4, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->PREVIEW:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 874
    invoke-static {v3, v4}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v3

    .line 873
    invoke-virtual {v2, v3}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 875
    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->YUV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v4, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->RECORD:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 876
    invoke-static {v3, v4}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v3

    .line 875
    invoke-virtual {v2, v3}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 877
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 880
    new-instance v3, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {v3}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 881
    .local v3, "surfaceCombination3":Landroidx/camera/core/impl/SurfaceCombination;
    sget-object v4, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->YUV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v5, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->PREVIEW:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 882
    invoke-static {v4, v5}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v4

    .line 881
    invoke-virtual {v3, v4}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 883
    sget-object v4, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->YUV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v5, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->RECORD:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 884
    invoke-static {v4, v5}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v4

    .line 883
    invoke-virtual {v3, v4}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 885
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 888
    new-instance v4, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {v4}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 889
    .local v4, "surfaceCombination4":Landroidx/camera/core/impl/SurfaceCombination;
    sget-object v5, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->PRIV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v6, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->PREVIEW:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 890
    invoke-static {v5, v6}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    .line 889
    invoke-virtual {v4, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 891
    sget-object v5, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->PRIV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v6, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->RECORD:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 892
    invoke-static {v5, v6}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    .line 891
    invoke-virtual {v4, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 893
    sget-object v5, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->JPEG:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v6, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->RECORD:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 894
    invoke-static {v5, v6}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    .line 893
    invoke-virtual {v4, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 895
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 898
    new-instance v5, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {v5}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 899
    .local v5, "surfaceCombination5":Landroidx/camera/core/impl/SurfaceCombination;
    sget-object v6, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->PRIV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v7, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->PREVIEW:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 900
    invoke-static {v6, v7}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v6

    .line 899
    invoke-virtual {v5, v6}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 901
    sget-object v6, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->YUV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v7, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->RECORD:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 902
    invoke-static {v6, v7}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v6

    .line 901
    invoke-virtual {v5, v6}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 903
    sget-object v6, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->JPEG:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v7, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->RECORD:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 904
    invoke-static {v6, v7}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v6

    .line 903
    invoke-virtual {v5, v6}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 905
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 908
    new-instance v6, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {v6}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 909
    .local v6, "surfaceCombination6":Landroidx/camera/core/impl/SurfaceCombination;
    sget-object v7, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->YUV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v8, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->PREVIEW:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 910
    invoke-static {v7, v8}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v7

    .line 909
    invoke-virtual {v6, v7}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 911
    sget-object v7, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->YUV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v8, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->PREVIEW:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 912
    invoke-static {v7, v8}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v7

    .line 911
    invoke-virtual {v6, v7}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 913
    sget-object v7, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->JPEG:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v8, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->MAXIMUM:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 914
    invoke-static {v7, v8}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v7

    .line 913
    invoke-virtual {v6, v7}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 915
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 917
    return-object v0
.end method

.method getMaxOutputSizeByFormat(I)Landroid/util/Size;
    .registers 5
    .param p1, "imageFormat"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageFormat"
        }
    .end annotation

    .line 788
    invoke-direct {p0, p1}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getAllOutputSizesByFormat(I)[Landroid/util/Size;

    move-result-object v0

    .line 790
    .local v0, "outputSizes":[Landroid/util/Size;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Landroidx/camera/camera2/internal/SupportedSurfaceCombination$CompareSizesByArea;

    invoke-direct {v2}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination$CompareSizesByArea;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    return-object v1
.end method

.method getRAWSupportedCombinationList()Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceCombination;",
            ">;"
        }
    .end annotation

    .line 981
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 984
    .local v0, "combinationList":Ljava/util/List;, "Ljava/util/List<Landroidx/camera/core/impl/SurfaceCombination;>;"
    new-instance v1, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {v1}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 985
    .local v1, "surfaceCombination1":Landroidx/camera/core/impl/SurfaceCombination;
    sget-object v2, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->RAW:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->MAXIMUM:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 986
    invoke-static {v2, v3}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v2

    .line 985
    invoke-virtual {v1, v2}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 987
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 990
    new-instance v2, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {v2}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 991
    .local v2, "surfaceCombination2":Landroidx/camera/core/impl/SurfaceCombination;
    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->PRIV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v4, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->PREVIEW:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 992
    invoke-static {v3, v4}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v3

    .line 991
    invoke-virtual {v2, v3}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 993
    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->RAW:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v4, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->MAXIMUM:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 994
    invoke-static {v3, v4}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v3

    .line 993
    invoke-virtual {v2, v3}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 995
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 998
    new-instance v3, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {v3}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 999
    .local v3, "surfaceCombination3":Landroidx/camera/core/impl/SurfaceCombination;
    sget-object v4, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->YUV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v5, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->PREVIEW:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 1000
    invoke-static {v4, v5}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v4

    .line 999
    invoke-virtual {v3, v4}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 1001
    sget-object v4, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->RAW:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v5, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->MAXIMUM:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 1002
    invoke-static {v4, v5}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v4

    .line 1001
    invoke-virtual {v3, v4}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 1003
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1006
    new-instance v4, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {v4}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 1007
    .local v4, "surfaceCombination4":Landroidx/camera/core/impl/SurfaceCombination;
    sget-object v5, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->PRIV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v6, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->PREVIEW:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 1008
    invoke-static {v5, v6}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    .line 1007
    invoke-virtual {v4, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 1009
    sget-object v5, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->PRIV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v6, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->PREVIEW:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 1010
    invoke-static {v5, v6}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    .line 1009
    invoke-virtual {v4, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 1011
    sget-object v5, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->RAW:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v6, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->MAXIMUM:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 1012
    invoke-static {v5, v6}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    .line 1011
    invoke-virtual {v4, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 1013
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1016
    new-instance v5, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {v5}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 1017
    .local v5, "surfaceCombination5":Landroidx/camera/core/impl/SurfaceCombination;
    sget-object v6, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->PRIV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v7, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->PREVIEW:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 1018
    invoke-static {v6, v7}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v6

    .line 1017
    invoke-virtual {v5, v6}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 1019
    sget-object v6, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->YUV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v7, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->PREVIEW:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 1020
    invoke-static {v6, v7}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v6

    .line 1019
    invoke-virtual {v5, v6}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 1021
    sget-object v6, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->RAW:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v7, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->MAXIMUM:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 1022
    invoke-static {v6, v7}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v6

    .line 1021
    invoke-virtual {v5, v6}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 1023
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1026
    new-instance v6, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {v6}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 1027
    .local v6, "surfaceCombination6":Landroidx/camera/core/impl/SurfaceCombination;
    sget-object v7, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->YUV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v8, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->PREVIEW:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 1028
    invoke-static {v7, v8}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v7

    .line 1027
    invoke-virtual {v6, v7}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 1029
    sget-object v7, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->YUV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v8, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->PREVIEW:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 1030
    invoke-static {v7, v8}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v7

    .line 1029
    invoke-virtual {v6, v7}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 1031
    sget-object v7, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->RAW:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v8, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->MAXIMUM:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 1032
    invoke-static {v7, v8}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v7

    .line 1031
    invoke-virtual {v6, v7}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 1033
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1036
    new-instance v7, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {v7}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 1037
    .local v7, "surfaceCombination7":Landroidx/camera/core/impl/SurfaceCombination;
    sget-object v8, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->PRIV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v9, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->PREVIEW:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 1038
    invoke-static {v8, v9}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v8

    .line 1037
    invoke-virtual {v7, v8}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 1039
    sget-object v8, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->JPEG:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v9, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->MAXIMUM:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 1040
    invoke-static {v8, v9}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v8

    .line 1039
    invoke-virtual {v7, v8}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 1041
    sget-object v8, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->RAW:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v9, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->MAXIMUM:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 1042
    invoke-static {v8, v9}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v8

    .line 1041
    invoke-virtual {v7, v8}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 1043
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1046
    new-instance v8, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {v8}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 1047
    .local v8, "surfaceCombination8":Landroidx/camera/core/impl/SurfaceCombination;
    sget-object v9, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->YUV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v10, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->PREVIEW:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 1048
    invoke-static {v9, v10}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v9

    .line 1047
    invoke-virtual {v8, v9}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 1049
    sget-object v9, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->JPEG:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v10, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->MAXIMUM:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 1050
    invoke-static {v9, v10}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v9

    .line 1049
    invoke-virtual {v8, v9}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 1051
    sget-object v9, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->RAW:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v10, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->MAXIMUM:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 1052
    invoke-static {v9, v10}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v9

    .line 1051
    invoke-virtual {v8, v9}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 1053
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1055
    return-object v0
.end method

.method getSuggestedResolutions(Ljava/util/List;Ljava/util/List;)Ljava/util/Map;
    .registers 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "existingSurfaces",
            "newUseCaseConfigs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceConfig;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;>;)",
            "Ljava/util/Map<",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 210
    .local p1, "existingSurfaces":Ljava/util/List;, "Ljava/util/List<Landroidx/camera/core/impl/SurfaceConfig;>;"
    .local p2, "newUseCaseConfigs":Ljava/util/List;, "Ljava/util/List<Landroidx/camera/core/impl/UseCaseConfig<*>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 213
    .local v0, "suggestedResolutionsMap":Ljava/util/Map;, "Ljava/util/Map<Landroidx/camera/core/impl/UseCaseConfig<*>;Landroid/util/Size;>;"
    invoke-direct {p0, p2}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getUseCasesPriorityOrder(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 214
    .local v1, "useCasesPriorityOrder":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 217
    .local v2, "supportedOutputSizesList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Landroid/util/Size;>;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 218
    .local v4, "index":Ljava/lang/Integer;
    nop

    .line 219
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/camera/core/impl/UseCaseConfig;

    invoke-virtual {p0, v5}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getSupportedOutputSizes(Landroidx/camera/core/impl/UseCaseConfig;)Ljava/util/List;

    move-result-object v5

    .line 220
    .local v5, "supportedOutputSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    .end local v4    # "index":Ljava/lang/Integer;
    .end local v5    # "supportedOutputSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    goto :goto_12

    .line 224
    :cond_31
    nop

    .line 225
    invoke-direct {p0, v2}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getAllPossibleSizeArrangements(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 228
    .local v3, "allPossibleSizeArrangements":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Landroid/util/Size;>;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 230
    .local v5, "possibleSizeList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 233
    .local v6, "surfaceConfigList":Ljava/util/List;, "Ljava/util/List<Landroidx/camera/core/impl/SurfaceConfig;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_4c
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_77

    .line 234
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Size;

    .line 235
    .local v8, "size":Landroid/util/Size;
    nop

    .line 236
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {p2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/camera/core/impl/UseCaseConfig;

    .line 237
    .local v9, "newUseCase":Landroidx/camera/core/impl/UseCaseConfig;, "Landroidx/camera/core/impl/UseCaseConfig<*>;"
    invoke-interface {v9}, Landroidx/camera/core/impl/UseCaseConfig;->getInputFormat()I

    move-result v10

    invoke-virtual {p0, v10, v8}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->transformSurfaceConfig(ILandroid/util/Size;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    .end local v8    # "size":Landroid/util/Size;
    .end local v9    # "newUseCase":Landroidx/camera/core/impl/UseCaseConfig;, "Landroidx/camera/core/impl/UseCaseConfig<*>;"
    add-int/lit8 v7, v7, 0x1

    goto :goto_4c

    .line 241
    .end local v7    # "i":I
    :cond_77
    invoke-virtual {p0, v6}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->checkSupported(Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_a5

    .line 242
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_81
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/camera/core/impl/UseCaseConfig;

    .line 243
    .local v7, "useCaseConfig":Landroidx/camera/core/impl/UseCaseConfig;, "Landroidx/camera/core/impl/UseCaseConfig<*>;"
    nop

    .line 247
    invoke-interface {p2, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 246
    invoke-interface {v1, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    .line 245
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Size;

    .line 243
    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    .end local v7    # "useCaseConfig":Landroidx/camera/core/impl/UseCaseConfig;, "Landroidx/camera/core/impl/UseCaseConfig<*>;"
    goto :goto_81

    .line 249
    :cond_a4
    goto :goto_a6

    .line 251
    .end local v5    # "possibleSizeList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .end local v6    # "surfaceConfigList":Ljava/util/List;, "Ljava/util/List<Landroidx/camera/core/impl/SurfaceConfig;>;"
    :cond_a5
    goto :goto_3a

    .line 253
    :cond_a6
    :goto_a6
    return-object v0
.end method

.method getSupportedOutputSizes(Landroidx/camera/core/impl/UseCaseConfig;)Ljava/util/List;
    .registers 21
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
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 353
    .local p1, "config":Landroidx/camera/core/impl/UseCaseConfig;, "Landroidx/camera/core/impl/UseCaseConfig<*>;"
    move-object/from16 v0, p0

    invoke-interface/range {p1 .. p1}, Landroidx/camera/core/impl/UseCaseConfig;->getInputFormat()I

    move-result v1

    .line 354
    .local v1, "imageFormat":I
    move-object/from16 v2, p1

    check-cast v2, Landroidx/camera/core/impl/ImageOutputConfig;

    .line 355
    .local v2, "imageOutputConfig":Landroidx/camera/core/impl/ImageOutputConfig;
    invoke-direct {v0, v1, v2}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getCustomizedSupportSizesFromConfig(ILandroidx/camera/core/impl/ImageOutputConfig;)[Landroid/util/Size;

    move-result-object v3

    .line 356
    .local v3, "outputSizes":[Landroid/util/Size;
    if-nez v3, :cond_14

    .line 357
    invoke-direct {v0, v1}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getAllOutputSizesByFormat(I)[Landroid/util/Size;

    move-result-object v3

    .line 359
    :cond_14
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 360
    .local v4, "outputSizeCandidates":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Landroidx/camera/core/impl/ImageOutputConfig;->getMaxResolution(Landroid/util/Size;)Landroid/util/Size;

    move-result-object v6

    .line 361
    .local v6, "maxSize":Landroid/util/Size;
    invoke-virtual {v0, v1}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getMaxOutputSizeByFormat(I)Landroid/util/Size;

    move-result-object v7

    .line 365
    .local v7, "maxOutputSizeByFormat":Landroid/util/Size;
    if-eqz v6, :cond_2e

    invoke-static {v7}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getArea(Landroid/util/Size;)I

    move-result v8

    invoke-static {v6}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getArea(Landroid/util/Size;)I

    move-result v9

    if-ge v8, v9, :cond_2f

    .line 366
    :cond_2e
    move-object v6, v7

    .line 371
    :cond_2f
    new-instance v8, Landroidx/camera/camera2/internal/SupportedSurfaceCombination$CompareSizesByArea;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination$CompareSizesByArea;-><init>(Z)V

    invoke-static {v3, v8}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 373
    invoke-direct {v0, v2}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getTargetSize(Landroidx/camera/core/impl/ImageOutputConfig;)Landroid/util/Size;

    move-result-object v8

    .line 374
    .local v8, "targetSize":Landroid/util/Size;
    sget-object v9, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->DEFAULT_SIZE:Landroid/util/Size;

    .line 375
    .local v9, "minSize":Landroid/util/Size;
    sget-object v10, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->DEFAULT_SIZE:Landroid/util/Size;

    invoke-static {v10}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getArea(Landroid/util/Size;)I

    move-result v10

    .line 376
    .local v10, "defaultSizeArea":I
    invoke-static {v6}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getArea(Landroid/util/Size;)I

    move-result v11

    .line 380
    .local v11, "maxSizeArea":I
    if-ge v11, v10, :cond_4d

    .line 381
    sget-object v9, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->ZERO_SIZE:Landroid/util/Size;

    goto :goto_56

    .line 382
    :cond_4d
    if-eqz v8, :cond_56

    invoke-static {v8}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getArea(Landroid/util/Size;)I

    move-result v12

    if-ge v12, v10, :cond_56

    .line 383
    move-object v9, v8

    .line 388
    :cond_56
    :goto_56
    array-length v12, v3

    const/4 v13, 0x0

    :goto_58
    if-ge v13, v12, :cond_7d

    aget-object v14, v3, v13

    .line 389
    .local v14, "outputSize":Landroid/util/Size;
    invoke-static {v14}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getArea(Landroid/util/Size;)I

    move-result v15

    invoke-static {v6}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getArea(Landroid/util/Size;)I

    move-result v5

    if-gt v15, v5, :cond_79

    invoke-static {v14}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getArea(Landroid/util/Size;)I

    move-result v5

    invoke-static {v9}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getArea(Landroid/util/Size;)I

    move-result v15

    if-lt v5, v15, :cond_79

    .line 390
    invoke-interface {v4, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_79

    .line 391
    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    .end local v14    # "outputSize":Landroid/util/Size;
    :cond_79
    add-int/lit8 v13, v13, 0x1

    const/4 v5, 0x0

    goto :goto_58

    .line 395
    :cond_7d
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_121

    .line 401
    invoke-direct {v0, v2}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getTargetAspectRatio(Landroidx/camera/core/impl/ImageOutputConfig;)Landroid/util/Rational;

    move-result-object v5

    .line 404
    .local v5, "aspectRatio":Landroid/util/Rational;
    if-nez v8, :cond_8f

    const/4 v12, 0x0

    invoke-interface {v2, v12}, Landroidx/camera/core/impl/ImageOutputConfig;->getDefaultResolution(Landroid/util/Size;)Landroid/util/Size;

    move-result-object v12

    goto :goto_90

    :cond_8f
    move-object v12, v8

    :goto_90
    move-object v8, v12

    .line 406
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 407
    .local v12, "supportedResolutions":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 409
    .local v13, "aspectRatioSizeListMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Rational;Ljava/util/List<Landroid/util/Size;>;>;"
    if-nez v5, :cond_a9

    .line 412
    invoke-interface {v12, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 415
    if-eqz v8, :cond_a5

    .line 416
    invoke-direct {v0, v12, v8}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->removeSupportedSizesByTargetSize(Ljava/util/List;Landroid/util/Size;)V

    .line 451
    :cond_a5
    move-object/from16 v17, v2

    goto/16 :goto_120

    .line 424
    :cond_a9
    invoke-direct {v0, v4}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->groupSizesByAspectRatio(Ljava/util/List;)Ljava/util/Map;

    move-result-object v13

    .line 427
    if-eqz v8, :cond_d6

    .line 429
    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_b7
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_d3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/Rational;

    .line 430
    .local v15, "key":Landroid/util/Rational;
    invoke-interface {v13, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v2

    .end local v2    # "imageOutputConfig":Landroidx/camera/core/impl/ImageOutputConfig;
    .local v17, "imageOutputConfig":Landroidx/camera/core/impl/ImageOutputConfig;
    move-object/from16 v2, v16

    check-cast v2, Ljava/util/List;

    invoke-direct {v0, v2, v8}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->removeSupportedSizesByTargetSize(Ljava/util/List;Landroid/util/Size;)V

    .line 431
    .end local v15    # "key":Landroid/util/Rational;
    move-object/from16 v2, v17

    goto :goto_b7

    .line 429
    .end local v17    # "imageOutputConfig":Landroidx/camera/core/impl/ImageOutputConfig;
    .restart local v2    # "imageOutputConfig":Landroidx/camera/core/impl/ImageOutputConfig;
    :cond_d3
    move-object/from16 v17, v2

    .end local v2    # "imageOutputConfig":Landroidx/camera/core/impl/ImageOutputConfig;
    .restart local v17    # "imageOutputConfig":Landroidx/camera/core/impl/ImageOutputConfig;
    goto :goto_d8

    .line 427
    .end local v17    # "imageOutputConfig":Landroidx/camera/core/impl/ImageOutputConfig;
    .restart local v2    # "imageOutputConfig":Landroidx/camera/core/impl/ImageOutputConfig;
    :cond_d6
    move-object/from16 v17, v2

    .line 435
    .end local v2    # "imageOutputConfig":Landroidx/camera/core/impl/ImageOutputConfig;
    .restart local v17    # "imageOutputConfig":Landroidx/camera/core/impl/ImageOutputConfig;
    :goto_d8
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-direct {v2, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 436
    .local v2, "aspectRatios":Ljava/util/List;, "Ljava/util/List<Landroid/util/Rational;>;"
    new-instance v14, Landroidx/camera/camera2/internal/SupportedSurfaceCombination$CompareAspectRatiosByDistanceToTargetRatio;

    invoke-direct {v14, v5}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination$CompareAspectRatiosByDistanceToTargetRatio;-><init>(Landroid/util/Rational;)V

    invoke-static {v2, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 440
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_ed
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_120

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/Rational;

    .line 441
    .local v15, "rational":Landroid/util/Rational;
    invoke-interface {v13, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/List;

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_103
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_11d

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, Landroid/util/Size;

    .line 444
    .local v0, "size":Landroid/util/Size;
    invoke-interface {v12, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_11a

    .line 445
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    .end local v0    # "size":Landroid/util/Size;
    :cond_11a
    move-object/from16 v0, p0

    goto :goto_103

    .line 448
    .end local v15    # "rational":Landroid/util/Rational;
    :cond_11d
    move-object/from16 v0, p0

    goto :goto_ed

    .line 451
    .end local v2    # "aspectRatios":Ljava/util/List;, "Ljava/util/List<Landroid/util/Rational;>;"
    :cond_120
    :goto_120
    return-object v12

    .line 396
    .end local v5    # "aspectRatio":Landroid/util/Rational;
    .end local v12    # "supportedResolutions":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .end local v13    # "aspectRatioSizeListMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Rational;Ljava/util/List<Landroid/util/Size;>;>;"
    .end local v17    # "imageOutputConfig":Landroidx/camera/core/impl/ImageOutputConfig;
    .local v2, "imageOutputConfig":Landroidx/camera/core/impl/ImageOutputConfig;
    :cond_121
    move-object/from16 v17, v2

    .end local v2    # "imageOutputConfig":Landroidx/camera/core/impl/ImageOutputConfig;
    .restart local v17    # "imageOutputConfig":Landroidx/camera/core/impl/ImageOutputConfig;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not get supported output size under supported maximum for the format: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getSurfaceSizeDefinition()Landroidx/camera/core/impl/SurfaceSizeDefinition;
    .registers 2

    .line 303
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceSizeDefinition:Landroidx/camera/core/impl/SurfaceSizeDefinition;

    return-object v0
.end method

.method isBurstCaptureSupported()Z
    .registers 2

    .line 135
    iget-boolean v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mIsBurstCaptureSupported:Z

    return v0
.end method

.method isRawSupported()Z
    .registers 2

    .line 131
    iget-boolean v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mIsRawSupported:Z

    return v0
.end method

.method transformSurfaceConfig(ILandroid/util/Size;)Landroidx/camera/core/impl/SurfaceConfig;
    .registers 9
    .param p1, "imageFormat"    # I
    .param p2, "size"    # Landroid/util/Size;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "imageFormat",
            "size"
        }
    .end annotation

    .line 168
    sget-object v0, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->NOT_SUPPORT:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 176
    .local v0, "configSize":Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;
    const/16 v1, 0x23

    if-ne p1, v1, :cond_9

    .line 177
    sget-object v1, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->YUV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    .local v1, "configType":Landroidx/camera/core/impl/SurfaceConfig$ConfigType;
    goto :goto_19

    .line 178
    .end local v1    # "configType":Landroidx/camera/core/impl/SurfaceConfig$ConfigType;
    :cond_9
    const/16 v1, 0x100

    if-ne p1, v1, :cond_10

    .line 179
    sget-object v1, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->JPEG:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    .restart local v1    # "configType":Landroidx/camera/core/impl/SurfaceConfig$ConfigType;
    goto :goto_19

    .line 180
    .end local v1    # "configType":Landroidx/camera/core/impl/SurfaceConfig$ConfigType;
    :cond_10
    const/16 v1, 0x20

    if-ne p1, v1, :cond_17

    .line 181
    sget-object v1, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->RAW:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    .restart local v1    # "configType":Landroidx/camera/core/impl/SurfaceConfig$ConfigType;
    goto :goto_19

    .line 183
    .end local v1    # "configType":Landroidx/camera/core/impl/SurfaceConfig$ConfigType;
    :cond_17
    sget-object v1, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->PRIV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    .line 186
    .restart local v1    # "configType":Landroidx/camera/core/impl/SurfaceConfig$ConfigType;
    :goto_19
    invoke-direct {p0, p1}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->fetchMaxSize(I)Landroid/util/Size;

    move-result-object v2

    .line 189
    .local v2, "maxSize":Landroid/util/Size;
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v4

    mul-int v3, v3, v4

    iget-object v4, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceSizeDefinition:Landroidx/camera/core/impl/SurfaceSizeDefinition;

    .line 190
    invoke-virtual {v4}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->getAnalysisSize()Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    iget-object v5, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceSizeDefinition:Landroidx/camera/core/impl/SurfaceSizeDefinition;

    .line 191
    invoke-virtual {v5}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->getAnalysisSize()Landroid/util/Size;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    mul-int v4, v4, v5

    if-gt v3, v4, :cond_42

    .line 192
    sget-object v0, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->ANALYSIS:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    goto :goto_a4

    .line 193
    :cond_42
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v4

    mul-int v3, v3, v4

    iget-object v4, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceSizeDefinition:Landroidx/camera/core/impl/SurfaceSizeDefinition;

    .line 194
    invoke-virtual {v4}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->getPreviewSize()Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    iget-object v5, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceSizeDefinition:Landroidx/camera/core/impl/SurfaceSizeDefinition;

    .line 195
    invoke-virtual {v5}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->getPreviewSize()Landroid/util/Size;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    mul-int v4, v4, v5

    if-gt v3, v4, :cond_67

    .line 196
    sget-object v0, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->PREVIEW:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    goto :goto_a4

    .line 197
    :cond_67
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v4

    mul-int v3, v3, v4

    iget-object v4, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceSizeDefinition:Landroidx/camera/core/impl/SurfaceSizeDefinition;

    .line 198
    invoke-virtual {v4}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->getRecordSize()Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    iget-object v5, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceSizeDefinition:Landroidx/camera/core/impl/SurfaceSizeDefinition;

    .line 199
    invoke-virtual {v5}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->getRecordSize()Landroid/util/Size;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    mul-int v4, v4, v5

    if-gt v3, v4, :cond_8c

    .line 200
    sget-object v0, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->RECORD:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    goto :goto_a4

    .line 201
    :cond_8c
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v4

    mul-int v3, v3, v4

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v5

    mul-int v4, v4, v5

    if-gt v3, v4, :cond_a4

    .line 202
    sget-object v0, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->MAXIMUM:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 205
    :cond_a4
    :goto_a4
    invoke-static {v1, v0}, Landroidx/camera/core/impl/SurfaceConfig;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v3

    return-object v3
.end method
