.class final Landroidx/camera/core/ImageProxyDownsampler$ForwardingImageProxyImpl;
.super Landroidx/camera/core/ForwardingImageProxy;
.source "ImageProxyDownsampler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/ImageProxyDownsampler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ForwardingImageProxyImpl"
.end annotation


# instance fields
.field private final mDownsampledHeight:I

.field private final mDownsampledPlanes:[Landroidx/camera/core/ImageProxy$PlaneProxy;

.field private final mDownsampledWidth:I


# direct methods
.method constructor <init>(Landroidx/camera/core/ImageProxy;[Landroidx/camera/core/ImageProxy$PlaneProxy;II)V
    .registers 5
    .param p1, "originalImage"    # Landroidx/camera/core/ImageProxy;
    .param p2, "downsampledPlanes"    # [Landroidx/camera/core/ImageProxy$PlaneProxy;
    .param p3, "downsampledWidth"    # I
    .param p4, "downsampledHeight"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "originalImage",
            "downsampledPlanes",
            "downsampledWidth",
            "downsampledHeight"
        }
    .end annotation

    .line 231
    invoke-direct {p0, p1}, Landroidx/camera/core/ForwardingImageProxy;-><init>(Landroidx/camera/core/ImageProxy;)V

    .line 232
    iput-object p2, p0, Landroidx/camera/core/ImageProxyDownsampler$ForwardingImageProxyImpl;->mDownsampledPlanes:[Landroidx/camera/core/ImageProxy$PlaneProxy;

    .line 233
    iput p3, p0, Landroidx/camera/core/ImageProxyDownsampler$ForwardingImageProxyImpl;->mDownsampledWidth:I

    .line 234
    iput p4, p0, Landroidx/camera/core/ImageProxyDownsampler$ForwardingImageProxyImpl;->mDownsampledHeight:I

    .line 235
    return-void
.end method


# virtual methods
.method public declared-synchronized getHeight()I
    .registers 2

    monitor-enter p0

    .line 244
    :try_start_1
    iget v0, p0, Landroidx/camera/core/ImageProxyDownsampler$ForwardingImageProxyImpl;->mDownsampledHeight:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 244
    .end local p0    # "this":Landroidx/camera/core/ImageProxyDownsampler$ForwardingImageProxyImpl;
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized getPlanes()[Landroidx/camera/core/ImageProxy$PlaneProxy;
    .registers 2

    monitor-enter p0

    .line 250
    :try_start_1
    iget-object v0, p0, Landroidx/camera/core/ImageProxyDownsampler$ForwardingImageProxyImpl;->mDownsampledPlanes:[Landroidx/camera/core/ImageProxy$PlaneProxy;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 250
    .end local p0    # "this":Landroidx/camera/core/ImageProxyDownsampler$ForwardingImageProxyImpl;
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized getWidth()I
    .registers 2

    monitor-enter p0

    .line 239
    :try_start_1
    iget v0, p0, Landroidx/camera/core/ImageProxyDownsampler$ForwardingImageProxyImpl;->mDownsampledWidth:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 239
    .end local p0    # "this":Landroidx/camera/core/ImageProxyDownsampler$ForwardingImageProxyImpl;
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method
