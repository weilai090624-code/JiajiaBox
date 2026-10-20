.class abstract Landroidx/camera/core/ImmutableImageInfo;
.super Ljava/lang/Object;
.source "ImmutableImageInfo.java"

# interfaces
.implements Landroidx/camera/core/ImageInfo;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroidx/camera/core/impl/TagBundle;JI)Landroidx/camera/core/ImageInfo;
    .locals 1
    .param p0, "tag"    # Landroidx/camera/core/impl/TagBundle;
    .param p1, "timestamp"    # J
    .param p3, "rotationDegrees"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "timestamp",
            "rotationDegrees"
        }
    .end annotation

    .line 29
    new-instance v0, Landroidx/camera/core/AutoValue_ImmutableImageInfo;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/camera/core/AutoValue_ImmutableImageInfo;-><init>(Landroidx/camera/core/impl/TagBundle;JI)V

    return-object v0
.end method


# virtual methods
.method public abstract getRotationDegrees()I
.end method

.method public abstract getTagBundle()Landroidx/camera/core/impl/TagBundle;
.end method

.method public abstract getTimestamp()J
.end method

.method public populateExifData(Landroidx/camera/core/impl/utils/ExifData$Builder;)V
    .locals 1
    .param p1, "exifBuilder"    # Landroidx/camera/core/impl/utils/ExifData$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exifBuilder"
        }
    .end annotation

    .line 45
    invoke-virtual {p0}, Landroidx/camera/core/ImmutableImageInfo;->getRotationDegrees()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setOrientationDegrees(I)Landroidx/camera/core/impl/utils/ExifData$Builder;

    .line 46
    return-void
.end method
