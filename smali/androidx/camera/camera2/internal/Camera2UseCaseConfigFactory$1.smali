.class synthetic Landroidx/camera/camera2/internal/Camera2UseCaseConfigFactory$1;
.super Ljava/lang/Object;
.source "Camera2UseCaseConfigFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/internal/Camera2UseCaseConfigFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$androidx$camera$core$impl$UseCaseConfigFactory$CaptureType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 83
    invoke-static {}, Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;->values()[Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroidx/camera/camera2/internal/Camera2UseCaseConfigFactory$1;->$SwitchMap$androidx$camera$core$impl$UseCaseConfigFactory$CaptureType:[I

    :try_start_9
    sget-object v0, Landroidx/camera/camera2/internal/Camera2UseCaseConfigFactory$1;->$SwitchMap$androidx$camera$core$impl$UseCaseConfigFactory$CaptureType:[I

    sget-object v1, Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;->IMAGE_CAPTURE:Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    invoke-virtual {v1}, Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_15

    goto :goto_16

    :catch_15
    move-exception v0

    :goto_16
    :try_start_16
    sget-object v0, Landroidx/camera/camera2/internal/Camera2UseCaseConfigFactory$1;->$SwitchMap$androidx$camera$core$impl$UseCaseConfigFactory$CaptureType:[I

    sget-object v1, Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;->PREVIEW:Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    invoke-virtual {v1}, Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    move-exception v0

    :goto_23
    :try_start_23
    sget-object v0, Landroidx/camera/camera2/internal/Camera2UseCaseConfigFactory$1;->$SwitchMap$androidx$camera$core$impl$UseCaseConfigFactory$CaptureType:[I

    sget-object v1, Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;->IMAGE_ANALYSIS:Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    invoke-virtual {v1}, Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_2e} :catch_2f

    goto :goto_30

    :catch_2f
    move-exception v0

    :goto_30
    :try_start_30
    sget-object v0, Landroidx/camera/camera2/internal/Camera2UseCaseConfigFactory$1;->$SwitchMap$androidx$camera$core$impl$UseCaseConfigFactory$CaptureType:[I

    sget-object v1, Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;->VIDEO_CAPTURE:Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    invoke-virtual {v1}, Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_3b} :catch_3c

    goto :goto_3d

    :catch_3c
    move-exception v0

    :goto_3d
    return-void
.end method
