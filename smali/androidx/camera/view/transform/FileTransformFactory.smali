.class public final Landroidx/camera/view/transform/FileTransformFactory;
.super Ljava/lang/Object;
.source "FileTransformFactory.java"


# instance fields
.field private mUsingExifOrientation:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutputTransform(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroidx/camera/view/transform/OutputTransform;
    .locals 3
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "contentResolver",
            "uri"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 85
    .local v0, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, v0}, Landroidx/camera/view/transform/FileTransformFactory;->getOutputTransform(Ljava/io/InputStream;)Landroidx/camera/view/transform/OutputTransform;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 85
    :cond_0
    return-object v1

    .line 84
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public getOutputTransform(Ljava/io/File;)Landroidx/camera/view/transform/OutputTransform;
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 95
    .local v0, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, v0}, Landroidx/camera/view/transform/FileTransformFactory;->getOutputTransform(Ljava/io/InputStream;)Landroidx/camera/view/transform/OutputTransform;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 95
    return-object v1

    .line 94
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method public getOutputTransform(Ljava/io/InputStream;)Landroidx/camera/view/transform/OutputTransform;
    .locals 6
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputStream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    invoke-static {p1}, Landroidx/camera/core/impl/utils/Exif;->createFromInputStream(Ljava/io/InputStream;)Landroidx/camera/core/impl/utils/Exif;

    move-result-object v0

    .line 105
    .local v0, "exif":Landroidx/camera/core/impl/utils/Exif;
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroidx/camera/core/impl/utils/Exif;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroidx/camera/core/impl/utils/Exif;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 108
    .local v1, "cropRect":Landroid/graphics/Rect;
    invoke-static {v1}, Landroidx/camera/view/TransformUtils;->getNormalizedToBuffer(Landroid/graphics/Rect;)Landroid/graphics/Matrix;

    move-result-object v2

    .line 110
    .local v2, "matrix":Landroid/graphics/Matrix;
    iget-boolean v3, p0, Landroidx/camera/view/transform/FileTransformFactory;->mUsingExifOrientation:Z

    if-eqz v3, :cond_0

    .line 112
    nop

    .line 113
    invoke-virtual {v0}, Landroidx/camera/core/impl/utils/Exif;->getOrientation()I

    move-result v3

    invoke-virtual {v0}, Landroidx/camera/core/impl/utils/Exif;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroidx/camera/core/impl/utils/Exif;->getHeight()I

    move-result v5

    invoke-static {v3, v4, v5}, Landroidx/camera/view/TransformUtils;->getExifTransform(III)Landroid/graphics/Matrix;

    move-result-object v3

    .line 112
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 116
    :cond_0
    new-instance v3, Landroidx/camera/view/transform/OutputTransform;

    invoke-static {v1}, Landroidx/camera/view/TransformUtils;->rectToSize(Landroid/graphics/Rect;)Landroid/util/Size;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Landroidx/camera/view/transform/OutputTransform;-><init>(Landroid/graphics/Matrix;Landroid/util/Size;)V

    return-object v3
.end method

.method public isUsingExifOrientation()Z
    .locals 1

    .line 74
    iget-boolean v0, p0, Landroidx/camera/view/transform/FileTransformFactory;->mUsingExifOrientation:Z

    return v0
.end method

.method public setUsingExifOrientation(Z)V
    .locals 0
    .param p1, "usingExifOrientation"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "usingExifOrientation"
        }
    .end annotation

    .line 67
    iput-boolean p1, p0, Landroidx/camera/view/transform/FileTransformFactory;->mUsingExifOrientation:Z

    .line 68
    return-void
.end method
