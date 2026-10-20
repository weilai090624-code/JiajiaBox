.class public final Landroidx/camera/core/VideoCapture$Defaults;
.super Ljava/lang/Object;
.source "VideoCapture.java"

# interfaces
.implements Landroidx/camera/core/impl/ConfigProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/VideoCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Defaults"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/camera/core/impl/ConfigProvider<",
        "Landroidx/camera/core/impl/VideoCaptureConfig;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_ASPECT_RATIO:I = 0x1

.field private static final DEFAULT_AUDIO_BIT_RATE:I = 0xfa00

.field private static final DEFAULT_AUDIO_CHANNEL_COUNT:I = 0x1

.field private static final DEFAULT_AUDIO_MIN_BUFFER_SIZE:I = 0x400

.field private static final DEFAULT_AUDIO_RECORD_SOURCE:I = 0x1

.field private static final DEFAULT_AUDIO_SAMPLE_RATE:I = 0x1f40

.field private static final DEFAULT_BIT_RATE:I = 0x800000

.field private static final DEFAULT_CONFIG:Landroidx/camera/core/impl/VideoCaptureConfig;

.field private static final DEFAULT_INTRA_FRAME_INTERVAL:I = 0x1

.field private static final DEFAULT_MAX_RESOLUTION:Landroid/util/Size;

.field private static final DEFAULT_SURFACE_OCCUPANCY_PRIORITY:I = 0x3

.field private static final DEFAULT_VIDEO_FRAME_RATE:I = 0x1e


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1110
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x780

    const/16 v2, 0x438

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Landroidx/camera/core/VideoCapture$Defaults;->DEFAULT_MAX_RESOLUTION:Landroid/util/Size;

    .line 1118
    new-instance v0, Landroidx/camera/core/VideoCapture$Builder;

    invoke-direct {v0}, Landroidx/camera/core/VideoCapture$Builder;-><init>()V

    .line 1119
    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroidx/camera/core/VideoCapture$Builder;->setVideoFrameRate(I)Landroidx/camera/core/VideoCapture$Builder;

    move-result-object v0

    .line 1120
    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroidx/camera/core/VideoCapture$Builder;->setBitRate(I)Landroidx/camera/core/VideoCapture$Builder;

    move-result-object v0

    .line 1121
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/camera/core/VideoCapture$Builder;->setIFrameInterval(I)Landroidx/camera/core/VideoCapture$Builder;

    move-result-object v0

    .line 1122
    const v2, 0xfa00

    invoke-virtual {v0, v2}, Landroidx/camera/core/VideoCapture$Builder;->setAudioBitRate(I)Landroidx/camera/core/VideoCapture$Builder;

    move-result-object v0

    .line 1123
    const/16 v2, 0x1f40

    invoke-virtual {v0, v2}, Landroidx/camera/core/VideoCapture$Builder;->setAudioSampleRate(I)Landroidx/camera/core/VideoCapture$Builder;

    move-result-object v0

    .line 1124
    invoke-virtual {v0, v1}, Landroidx/camera/core/VideoCapture$Builder;->setAudioChannelCount(I)Landroidx/camera/core/VideoCapture$Builder;

    move-result-object v0

    .line 1125
    invoke-virtual {v0, v1}, Landroidx/camera/core/VideoCapture$Builder;->setAudioRecordSource(I)Landroidx/camera/core/VideoCapture$Builder;

    move-result-object v0

    .line 1126
    const/16 v2, 0x400

    invoke-virtual {v0, v2}, Landroidx/camera/core/VideoCapture$Builder;->setAudioMinBufferSize(I)Landroidx/camera/core/VideoCapture$Builder;

    move-result-object v0

    sget-object v2, Landroidx/camera/core/VideoCapture$Defaults;->DEFAULT_MAX_RESOLUTION:Landroid/util/Size;

    .line 1127
    invoke-virtual {v0, v2}, Landroidx/camera/core/VideoCapture$Builder;->setMaxResolution(Landroid/util/Size;)Landroidx/camera/core/VideoCapture$Builder;

    move-result-object v0

    .line 1128
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroidx/camera/core/VideoCapture$Builder;->setSurfaceOccupancyPriority(I)Landroidx/camera/core/VideoCapture$Builder;

    move-result-object v0

    .line 1129
    invoke-virtual {v0, v1}, Landroidx/camera/core/VideoCapture$Builder;->setTargetAspectRatio(I)Landroidx/camera/core/VideoCapture$Builder;

    move-result-object v0

    .line 1131
    .local v0, "builder":Landroidx/camera/core/VideoCapture$Builder;
    invoke-virtual {v0}, Landroidx/camera/core/VideoCapture$Builder;->getUseCaseConfig()Landroidx/camera/core/impl/VideoCaptureConfig;

    move-result-object v1

    sput-object v1, Landroidx/camera/core/VideoCapture$Defaults;->DEFAULT_CONFIG:Landroidx/camera/core/impl/VideoCaptureConfig;

    .line 1132
    .end local v0    # "builder":Landroidx/camera/core/VideoCapture$Builder;
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1092
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getConfig()Landroidx/camera/core/impl/Config;
    .locals 1

    .line 1091
    invoke-virtual {p0}, Landroidx/camera/core/VideoCapture$Defaults;->getConfig()Landroidx/camera/core/impl/VideoCaptureConfig;

    move-result-object v0

    return-object v0
.end method

.method public getConfig()Landroidx/camera/core/impl/VideoCaptureConfig;
    .locals 1

    .line 1137
    sget-object v0, Landroidx/camera/core/VideoCapture$Defaults;->DEFAULT_CONFIG:Landroidx/camera/core/impl/VideoCaptureConfig;

    return-object v0
.end method
