.class synthetic Landroidx/camera/core/ImageCapture$9;
.super Ljava/lang/Object;
.source "ImageCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/ImageCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$androidx$camera$core$ImageSaver$SaveError:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 831
    invoke-static {}, Landroidx/camera/core/ImageSaver$SaveError;->values()[Landroidx/camera/core/ImageSaver$SaveError;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroidx/camera/core/ImageCapture$9;->$SwitchMap$androidx$camera$core$ImageSaver$SaveError:[I

    :try_start_0
    sget-object v0, Landroidx/camera/core/ImageCapture$9;->$SwitchMap$androidx$camera$core$ImageSaver$SaveError:[I

    sget-object v1, Landroidx/camera/core/ImageSaver$SaveError;->FILE_IO_FAILED:Landroidx/camera/core/ImageSaver$SaveError;

    invoke-virtual {v1}, Landroidx/camera/core/ImageSaver$SaveError;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method
