.class final Landroidx/camera/core/SettableImageProxy;
.super Landroidx/camera/core/ForwardingImageProxy;
.source "SettableImageProxy.java"


# instance fields
.field private mCropRect:Landroid/graphics/Rect;

.field private final mHeight:I

.field private final mImageInfo:Landroidx/camera/core/ImageInfo;

.field private final mWidth:I


# direct methods
.method constructor <init>(Landroidx/camera/core/ImageProxy;Landroid/util/Size;Landroidx/camera/core/ImageInfo;)V
    .registers 5
    .param p1, "imageProxy"    # Landroidx/camera/core/ImageProxy;
    .param p2, "resolution"    # Landroid/util/Size;
    .param p3, "imageInfo"    # Landroidx/camera/core/ImageInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "imageProxy",
            "resolution",
            "imageInfo"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1}, Landroidx/camera/core/ForwardingImageProxy;-><init>(Landroidx/camera/core/ImageProxy;)V

    .line 56
    if-nez p2, :cond_12

    .line 57
    invoke-super {p0}, Landroidx/camera/core/ForwardingImageProxy;->getWidth()I

    move-result v0

    iput v0, p0, Landroidx/camera/core/SettableImageProxy;->mWidth:I

    .line 58
    invoke-super {p0}, Landroidx/camera/core/ForwardingImageProxy;->getHeight()I

    move-result v0

    iput v0, p0, Landroidx/camera/core/SettableImageProxy;->mHeight:I

    goto :goto_1e

    .line 60
    :cond_12
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    iput v0, p0, Landroidx/camera/core/SettableImageProxy;->mWidth:I

    .line 61
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v0

    iput v0, p0, Landroidx/camera/core/SettableImageProxy;->mHeight:I

    .line 63
    :goto_1e
    iput-object p3, p0, Landroidx/camera/core/SettableImageProxy;->mImageInfo:Landroidx/camera/core/ImageInfo;

    .line 64
    return-void
.end method

.method constructor <init>(Landroidx/camera/core/ImageProxy;Landroidx/camera/core/ImageInfo;)V
    .registers 4
    .param p1, "imageProxy"    # Landroidx/camera/core/ImageProxy;
    .param p2, "imageInfo"    # Landroidx/camera/core/ImageInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "imageProxy",
            "imageInfo"
        }
    .end annotation

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroidx/camera/core/SettableImageProxy;-><init>(Landroidx/camera/core/ImageProxy;Landroid/util/Size;Landroidx/camera/core/ImageInfo;)V

    .line 45
    return-void
.end method


# virtual methods
.method public declared-synchronized getCropRect()Landroid/graphics/Rect;
    .registers 5

    monitor-enter p0

    .line 69
    :try_start_1
    iget-object v0, p0, Landroidx/camera/core/SettableImageProxy;->mCropRect:Landroid/graphics/Rect;

    if-nez v0, :cond_15

    .line 70
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroidx/camera/core/SettableImageProxy;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroidx/camera/core/SettableImageProxy;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_1e

    monitor-exit p0

    return-object v0

    .line 72
    .end local p0    # "this":Landroidx/camera/core/SettableImageProxy;
    :cond_15
    :try_start_15
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroidx/camera/core/SettableImageProxy;->mCropRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_1e

    monitor-exit p0

    return-object v0

    .line 68
    :catchall_1e
    move-exception v0

    :try_start_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public declared-synchronized getHeight()I
    .registers 2

    monitor-enter p0

    .line 94
    :try_start_1
    iget v0, p0, Landroidx/camera/core/SettableImageProxy;->mHeight:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 94
    .end local p0    # "this":Landroidx/camera/core/SettableImageProxy;
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getImageInfo()Landroidx/camera/core/ImageInfo;
    .registers 2

    .line 101
    iget-object v0, p0, Landroidx/camera/core/SettableImageProxy;->mImageInfo:Landroidx/camera/core/ImageInfo;

    return-object v0
.end method

.method public declared-synchronized getWidth()I
    .registers 2

    monitor-enter p0

    .line 89
    :try_start_1
    iget v0, p0, Landroidx/camera/core/SettableImageProxy;->mWidth:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 89
    .end local p0    # "this":Landroidx/camera/core/SettableImageProxy;
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized setCropRect(Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "cropRect"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cropRect"
        }
    .end annotation

    monitor-enter p0

    .line 78
    if-eqz p1, :cond_1b

    .line 79
    :try_start_3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object p1, v0

    .line 80
    invoke-virtual {p0}, Landroidx/camera/core/SettableImageProxy;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/camera/core/SettableImageProxy;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 81
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 84
    .end local p0    # "this":Landroidx/camera/core/SettableImageProxy;
    :cond_1b
    iput-object p1, p0, Landroidx/camera/core/SettableImageProxy;->mCropRect:Landroid/graphics/Rect;
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1f

    .line 85
    monitor-exit p0

    return-void

    .line 77
    .end local p1    # "cropRect":Landroid/graphics/Rect;
    :catchall_1f
    move-exception p1

    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw p1
.end method
