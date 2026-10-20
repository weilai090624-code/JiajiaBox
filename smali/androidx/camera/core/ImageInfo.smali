.class public interface abstract Landroidx/camera/core/ImageInfo;
.super Ljava/lang/Object;
.source "ImageInfo.java"


# virtual methods
.method public abstract getRotationDegrees()I
.end method

.method public abstract getTagBundle()Landroidx/camera/core/impl/TagBundle;
.end method

.method public abstract getTimestamp()J
.end method

.method public abstract populateExifData(Landroidx/camera/core/impl/utils/ExifData$Builder;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exifBuilder"
        }
    .end annotation
.end method
