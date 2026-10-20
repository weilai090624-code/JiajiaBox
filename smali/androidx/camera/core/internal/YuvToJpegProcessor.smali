.class public Landroidx/camera/core/internal/YuvToJpegProcessor;
.super Ljava/lang/Object;
.source "YuvToJpegProcessor.java"

# interfaces
.implements Landroidx/camera/core/impl/CaptureProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/internal/YuvToJpegProcessor$ByteBufferOutputStream;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "YuvToJpegProcessor"

.field private static final UNINITIALIZED_RECT:Landroid/graphics/Rect;


# instance fields
.field private mClosed:Z

.field private mImageRect:Landroid/graphics/Rect;

.field private mImageWriter:Landroid/media/ImageWriter;

.field private final mLock:Ljava/lang/Object;

.field private final mMaxImages:I

.field private mProcessingImages:I

.field private final mQuality:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Landroidx/camera/core/internal/YuvToJpegProcessor;->UNINITIALIZED_RECT:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "quality"    # I
    .param p2, "maxImages"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "quality",
            "maxImages"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/internal/YuvToJpegProcessor;->mLock:Ljava/lang/Object;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/camera/core/internal/YuvToJpegProcessor;->mClosed:Z

    .line 67
    iput v0, p0, Landroidx/camera/core/internal/YuvToJpegProcessor;->mProcessingImages:I

    .line 71
    sget-object v0, Landroidx/camera/core/internal/YuvToJpegProcessor;->UNINITIALIZED_RECT:Landroid/graphics/Rect;

    iput-object v0, p0, Landroidx/camera/core/internal/YuvToJpegProcessor;->mImageRect:Landroid/graphics/Rect;

    .line 75
    iput p1, p0, Landroidx/camera/core/internal/YuvToJpegProcessor;->mQuality:I

    .line 76
    iput p2, p0, Landroidx/camera/core/internal/YuvToJpegProcessor;->mMaxImages:I

    .line 77
    return-void
.end method

.method private static getExifData(Landroidx/camera/core/ImageProxy;)Landroidx/camera/core/impl/utils/ExifData;
    .locals 3
    .param p0, "imageProxy"    # Landroidx/camera/core/ImageProxy;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageProxy"
        }
    .end annotation

    .line 221
    invoke-static {}, Landroidx/camera/core/impl/utils/ExifData;->builderForDevice()Landroidx/camera/core/impl/utils/ExifData$Builder;

    move-result-object v0

    .line 222
    .local v0, "builder":Landroidx/camera/core/impl/utils/ExifData$Builder;
    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->getImageInfo()Landroidx/camera/core/ImageInfo;

    move-result-object v1

    invoke-interface {v1, v0}, Landroidx/camera/core/ImageInfo;->populateExifData(Landroidx/camera/core/impl/utils/ExifData$Builder;)V

    .line 223
    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setImageWidth(I)Landroidx/camera/core/impl/utils/ExifData$Builder;

    move-result-object v1

    .line 224
    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setImageHeight(I)Landroidx/camera/core/impl/utils/ExifData$Builder;

    move-result-object v1

    .line 225
    invoke-virtual {v1}, Landroidx/camera/core/impl/utils/ExifData$Builder;->build()Landroidx/camera/core/impl/utils/ExifData;

    move-result-object v1

    .line 223
    return-object v1
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 197
    iget-object v0, p0, Landroidx/camera/core/internal/YuvToJpegProcessor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 198
    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/core/internal/YuvToJpegProcessor;->mClosed:Z

    if-nez v1, :cond_1

    .line 199
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/camera/core/internal/YuvToJpegProcessor;->mClosed:Z

    .line 202
    iget v1, p0, Landroidx/camera/core/internal/YuvToJpegProcessor;->mProcessingImages:I

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/camera/core/internal/YuvToJpegProcessor;->mImageWriter:Landroid/media/ImageWriter;

    if-eqz v1, :cond_0

    .line 203
    const-string v1, "YuvToJpegProcessor"

    const-string v2, "No processing in progress. Closing immediately."

    invoke-static {v1, v2}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v1, p0, Landroidx/camera/core/internal/YuvToJpegProcessor;->mImageWriter:Landroid/media/ImageWriter;

    invoke-virtual {v1}, Landroid/media/ImageWriter;->close()V

    goto :goto_0

    .line 206
    :cond_0
    const-string v1, "YuvToJpegProcessor"

    const-string v2, "close() called while processing. Will close after completion."

    invoke-static {v1, v2}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :cond_1
    :goto_0
    monitor-exit v0

    .line 210
    return-void

    .line 209
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onOutputSurface(Landroid/view/Surface;I)V
    .locals 3
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "imageFormat"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "surface",
            "imageFormat"
        }
    .end annotation

    .line 81
    const/16 v0, 0x100

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "YuvToJpegProcessor only supports JPEG output format."

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 83
    iget-object v0, p0, Landroidx/camera/core/internal/YuvToJpegProcessor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 84
    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/core/internal/YuvToJpegProcessor;->mClosed:Z

    if-nez v1, :cond_2

    .line 85
    iget-object v1, p0, Landroidx/camera/core/internal/YuvToJpegProcessor;->mImageWriter:Landroid/media/ImageWriter;

    if-nez v1, :cond_1

    .line 88
    iget v1, p0, Landroidx/camera/core/internal/YuvToJpegProcessor;->mMaxImages:I

    invoke-static {p1, v1, p2}, Landroidx/camera/core/internal/compat/ImageWriterCompat;->newInstance(Landroid/view/Surface;II)Landroid/media/ImageWriter;

    move-result-object v1

    iput-object v1, p0, Landroidx/camera/core/internal/YuvToJpegProcessor;->mImageWriter:Landroid/media/ImageWriter;

    goto :goto_1

    .line 86
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Output surface already set."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p1    # "surface":Landroid/view/Surface;
    .end local p2    # "imageFormat":I
    throw v1

    .line 90
    .restart local p1    # "surface":Landroid/view/Surface;
    .restart local p2    # "imageFormat":I
    :cond_2
    const-string v1, "YuvToJpegProcessor"

    const-string v2, "Cannot set output surface. Processor is closed."

    invoke-static {v1, v2}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :goto_1
    monitor-exit v0

    .line 93
    return-void

    .line 92
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onResolutionUpdate(Landroid/util/Size;)V
    .locals 5
    .param p1, "size"    # Landroid/util/Size;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 214
    iget-object v0, p0, Landroidx/camera/core/internal/YuvToJpegProcessor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 215
    :try_start_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Landroidx/camera/core/internal/YuvToJpegProcessor;->mImageRect:Landroid/graphics/Rect;

    .line 216
    monitor-exit v0

    .line 217
    return-void

    .line 216
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public process(Landroidx/camera/core/impl/ImageProxyBundle;)V
    .locals 19
    .param p1, "bundle"    # Landroidx/camera/core/impl/ImageProxyBundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bundle"
        }
    .end annotation

    .line 97
    move-object/from16 v1, p0

    invoke-interface/range {p1 .. p1}, Landroidx/camera/core/impl/ImageProxyBundle;->getCaptureIds()Ljava/util/List;

    move-result-object v2

    .line 98
    .local v2, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Processing image bundle have single capture id, but found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 99
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 98
    invoke-static {v0, v5}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 101
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move-object/from16 v5, p1

    invoke-interface {v5, v0}, Landroidx/camera/core/impl/ImageProxyBundle;->getImageProxy(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v6

    .line 102
    .local v6, "imageProxyListenableFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/camera/core/ImageProxy;>;"
    invoke-interface {v6}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v0

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 107
    iget-object v7, v1, Landroidx/camera/core/internal/YuvToJpegProcessor;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 108
    :try_start_0
    iget-object v0, v1, Landroidx/camera/core/internal/YuvToJpegProcessor;->mImageWriter:Landroid/media/ImageWriter;

    move-object v8, v0

    .line 109
    .local v8, "imageWriter":Landroid/media/ImageWriter;
    iget-boolean v0, v1, Landroidx/camera/core/internal/YuvToJpegProcessor;->mClosed:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    move v9, v0

    .line 110
    .local v9, "processing":Z
    iget-object v0, v1, Landroidx/camera/core/internal/YuvToJpegProcessor;->mImageRect:Landroid/graphics/Rect;

    move-object v10, v0

    .line 111
    .local v10, "imageRect":Landroid/graphics/Rect;
    if-eqz v9, :cond_2

    .line 112
    iget v0, v1, Landroidx/camera/core/internal/YuvToJpegProcessor;->mProcessingImages:I

    add-int/2addr v0, v4

    iput v0, v1, Landroidx/camera/core/internal/YuvToJpegProcessor;->mProcessingImages:I

    .line 114
    :cond_2
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 116
    const/4 v7, 0x0

    .line 117
    .local v7, "imageProxy":Landroidx/camera/core/ImageProxy;
    const/4 v11, 0x0

    .line 119
    .local v11, "jpegImage":Landroid/media/Image;
    :try_start_1
    invoke-interface {v6}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/ImageProxy;

    move-object v7, v0

    .line 120
    if-nez v9, :cond_7

    .line 121
    const-string v0, "YuvToJpegProcessor"

    const-string v12, "Image enqueued for processing on closed processor."

    invoke-static {v0, v12}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-interface {v7}, Landroidx/camera/core/ImageProxy;->close()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 123
    const/4 v12, 0x0

    .line 170
    .end local v7    # "imageProxy":Landroidx/camera/core/ImageProxy;
    .local v12, "imageProxy":Landroidx/camera/core/ImageProxy;
    iget-object v13, v1, Landroidx/camera/core/internal/YuvToJpegProcessor;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 172
    if-eqz v9, :cond_3

    :try_start_2
    iget v0, v1, Landroidx/camera/core/internal/YuvToJpegProcessor;->mProcessingImages:I

    add-int/lit8 v7, v0, -0x1

    iput v7, v1, Landroidx/camera/core/internal/YuvToJpegProcessor;->mProcessingImages:I

    if-nez v0, :cond_3

    iget-boolean v0, v1, Landroidx/camera/core/internal/YuvToJpegProcessor;->mClosed:Z

    if-eqz v0, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    .line 173
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 172
    :cond_3
    :goto_2
    move v0, v3

    .line 173
    .local v0, "shouldCloseImageWriter":Z
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 176
    if-eqz v11, :cond_4

    .line 177
    invoke-virtual {v11}, Landroid/media/Image;->close()V

    .line 179
    :cond_4
    if-eqz v12, :cond_5

    .line 180
    invoke-interface {v12}, Landroidx/camera/core/ImageProxy;->close()V

    .line 183
    :cond_5
    if-eqz v0, :cond_6

    .line 184
    invoke-virtual {v8}, Landroid/media/ImageWriter;->close()V

    .line 185
    const-string v3, "YuvToJpegProcessor"

    const-string v4, "Closed after completion of last image processed."

    invoke-static {v3, v4}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .end local v0    # "shouldCloseImageWriter":Z
    :cond_6
    return-void

    .line 173
    :goto_3
    :try_start_3
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 127
    .end local v12    # "imageProxy":Landroidx/camera/core/ImageProxy;
    .restart local v7    # "imageProxy":Landroidx/camera/core/ImageProxy;
    :cond_7
    :try_start_4
    invoke-virtual {v8}, Landroid/media/ImageWriter;->dequeueInputImage()Landroid/media/Image;

    move-result-object v0

    move-object v11, v0

    .line 129
    invoke-interface {v6}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/ImageProxy;

    move-object v7, v0

    .line 130
    invoke-interface {v7}, Landroidx/camera/core/ImageProxy;->getFormat()I

    move-result v0

    const/16 v12, 0x23

    if-ne v0, v12, :cond_8

    const/4 v0, 0x1

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    :goto_4
    const-string v12, "Input image is not expected YUV_420_888 image format"

    invoke-static {v0, v12}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 132
    invoke-static {v7}, Landroidx/camera/core/internal/utils/ImageUtil;->yuv_420_888toNv21(Landroidx/camera/core/ImageProxy;)[B

    move-result-object v14

    .line 134
    .local v14, "yuvBytes":[B
    new-instance v0, Landroid/graphics/YuvImage;

    invoke-interface {v7}, Landroidx/camera/core/ImageProxy;->getWidth()I

    move-result v16

    .line 135
    invoke-interface {v7}, Landroidx/camera/core/ImageProxy;->getHeight()I

    move-result v17

    const/16 v18, 0x0

    const/16 v15, 0x11

    move-object v13, v0

    invoke-direct/range {v13 .. v18}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 137
    .local v0, "yuvImage":Landroid/graphics/YuvImage;
    invoke-virtual {v11}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v12

    aget-object v12, v12, v3

    invoke-virtual {v12}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 138
    .local v12, "jpegBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->position()I

    move-result v13

    .line 139
    .local v13, "initialPos":I
    new-instance v15, Landroidx/camera/core/impl/utils/ExifOutputStream;

    new-instance v4, Landroidx/camera/core/internal/YuvToJpegProcessor$ByteBufferOutputStream;

    invoke-direct {v4, v12}, Landroidx/camera/core/internal/YuvToJpegProcessor$ByteBufferOutputStream;-><init>(Ljava/nio/ByteBuffer;)V

    .line 140
    invoke-static {v7}, Landroidx/camera/core/internal/YuvToJpegProcessor;->getExifData(Landroidx/camera/core/ImageProxy;)Landroidx/camera/core/impl/utils/ExifData;

    move-result-object v3

    invoke-direct {v15, v4, v3}, Landroidx/camera/core/impl/utils/ExifOutputStream;-><init>(Ljava/io/OutputStream;Landroidx/camera/core/impl/utils/ExifData;)V

    move-object v3, v15

    .line 141
    .local v3, "os":Ljava/io/OutputStream;
    iget v4, v1, Landroidx/camera/core/internal/YuvToJpegProcessor;->mQuality:I

    invoke-virtual {v0, v10, v4, v3}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 144
    invoke-interface {v7}, Landroidx/camera/core/ImageProxy;->close()V

    .line 145
    const/4 v7, 0x0

    .line 148
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {v12, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 149
    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 152
    invoke-virtual {v8, v11}, Landroid/media/ImageWriter;->queueInputImage(Landroid/media/Image;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 153
    const/4 v3, 0x0

    .line 170
    .end local v0    # "yuvImage":Landroid/graphics/YuvImage;
    .end local v11    # "jpegImage":Landroid/media/Image;
    .end local v12    # "jpegBuf":Ljava/nio/ByteBuffer;
    .end local v13    # "initialPos":I
    .end local v14    # "yuvBytes":[B
    .local v3, "jpegImage":Landroid/media/Image;
    iget-object v4, v1, Landroidx/camera/core/internal/YuvToJpegProcessor;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 172
    if-eqz v9, :cond_9

    :try_start_5
    iget v0, v1, Landroidx/camera/core/internal/YuvToJpegProcessor;->mProcessingImages:I

    add-int/lit8 v11, v0, -0x1

    iput v11, v1, Landroidx/camera/core/internal/YuvToJpegProcessor;->mProcessingImages:I

    if-nez v0, :cond_9

    iget-boolean v0, v1, Landroidx/camera/core/internal/YuvToJpegProcessor;->mClosed:Z

    if-eqz v0, :cond_9

    const/16 v16, 0x1

    goto :goto_5

    .line 173
    :catchall_1
    move-exception v0

    goto :goto_6

    .line 172
    :cond_9
    const/16 v16, 0x0

    :goto_5
    move/from16 v0, v16

    .line 173
    .local v0, "shouldCloseImageWriter":Z
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 176
    if-eqz v3, :cond_a

    .line 177
    invoke-virtual {v3}, Landroid/media/Image;->close()V

    .line 179
    :cond_a
    if-eqz v7, :cond_b

    .line 180
    invoke-interface {v7}, Landroidx/camera/core/ImageProxy;->close()V

    .line 183
    :cond_b
    if-eqz v0, :cond_c

    .line 184
    invoke-virtual {v8}, Landroid/media/ImageWriter;->close()V

    .line 185
    const-string v4, "YuvToJpegProcessor"

    const-string v11, "Closed after completion of last image processed."

    invoke-static {v4, v11}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .end local v0    # "shouldCloseImageWriter":Z
    :cond_c
    goto/16 :goto_e

    .line 173
    :goto_6
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    .line 169
    .end local v3    # "jpegImage":Landroid/media/Image;
    .restart local v11    # "jpegImage":Landroid/media/Image;
    :catchall_2
    move-exception v0

    move-object v4, v7

    move-object v12, v11

    const/4 v7, 0x0

    goto :goto_9

    .line 154
    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    :goto_7
    move-object v3, v7

    .line 158
    .end local v7    # "imageProxy":Landroidx/camera/core/ImageProxy;
    .local v0, "e":Ljava/lang/Exception;
    .local v3, "imageProxy":Landroidx/camera/core/ImageProxy;
    if-eqz v9, :cond_11

    .line 159
    :try_start_7
    const-string v4, "YuvToJpegProcessor"

    const-string v7, "Failed to process YUV -> JPEG"

    invoke-static {v4, v7, v0}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 162
    invoke-virtual {v8}, Landroid/media/ImageWriter;->dequeueInputImage()Landroid/media/Image;

    move-result-object v4

    move-object v11, v4

    .line 163
    invoke-virtual {v11}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    const/4 v7, 0x0

    :try_start_8
    aget-object v4, v4, v7

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 164
    .local v4, "jpegBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 165
    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 166
    invoke-virtual {v8, v11}, Landroid/media/ImageWriter;->queueInputImage(Landroid/media/Image;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_c

    .line 169
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "jpegBuf":Ljava/nio/ByteBuffer;
    :catchall_3
    move-exception v0

    goto :goto_8

    :catchall_4
    move-exception v0

    const/4 v7, 0x0

    :goto_8
    move-object v4, v3

    move-object v12, v11

    .line 170
    .end local v3    # "imageProxy":Landroidx/camera/core/ImageProxy;
    .end local v11    # "jpegImage":Landroid/media/Image;
    .local v4, "imageProxy":Landroidx/camera/core/ImageProxy;
    .local v12, "jpegImage":Landroid/media/Image;
    :goto_9
    iget-object v13, v1, Landroidx/camera/core/internal/YuvToJpegProcessor;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 172
    if-eqz v9, :cond_d

    :try_start_9
    iget v3, v1, Landroidx/camera/core/internal/YuvToJpegProcessor;->mProcessingImages:I

    add-int/lit8 v11, v3, -0x1

    iput v11, v1, Landroidx/camera/core/internal/YuvToJpegProcessor;->mProcessingImages:I

    if-nez v3, :cond_d

    iget-boolean v3, v1, Landroidx/camera/core/internal/YuvToJpegProcessor;->mClosed:Z

    if-eqz v3, :cond_d

    const/4 v3, 0x1

    goto :goto_a

    .line 173
    :catchall_5
    move-exception v0

    goto :goto_b

    .line 172
    :cond_d
    const/4 v3, 0x0

    .line 173
    .local v3, "shouldCloseImageWriter":Z
    :goto_a
    monitor-exit v13
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 176
    if-eqz v12, :cond_e

    .line 177
    invoke-virtual {v12}, Landroid/media/Image;->close()V

    .line 179
    :cond_e
    if-eqz v4, :cond_f

    .line 180
    invoke-interface {v4}, Landroidx/camera/core/ImageProxy;->close()V

    .line 183
    :cond_f
    if-eqz v3, :cond_10

    .line 184
    invoke-virtual {v8}, Landroid/media/ImageWriter;->close()V

    .line 185
    const-string v7, "YuvToJpegProcessor"

    const-string v11, "Closed after completion of last image processed."

    invoke-static {v7, v11}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .end local v3    # "shouldCloseImageWriter":Z
    :cond_10
    throw v0

    .line 173
    :goto_b
    :try_start_a
    monitor-exit v13
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    throw v0

    .line 158
    .end local v4    # "imageProxy":Landroidx/camera/core/ImageProxy;
    .end local v12    # "jpegImage":Landroid/media/Image;
    .restart local v0    # "e":Ljava/lang/Exception;
    .local v3, "imageProxy":Landroidx/camera/core/ImageProxy;
    .restart local v11    # "jpegImage":Landroid/media/Image;
    :cond_11
    const/4 v7, 0x0

    .line 170
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_c
    iget-object v4, v1, Landroidx/camera/core/internal/YuvToJpegProcessor;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 172
    if-eqz v9, :cond_12

    :try_start_b
    iget v0, v1, Landroidx/camera/core/internal/YuvToJpegProcessor;->mProcessingImages:I

    add-int/lit8 v12, v0, -0x1

    iput v12, v1, Landroidx/camera/core/internal/YuvToJpegProcessor;->mProcessingImages:I

    if-nez v0, :cond_12

    iget-boolean v0, v1, Landroidx/camera/core/internal/YuvToJpegProcessor;->mClosed:Z

    if-eqz v0, :cond_12

    const/16 v16, 0x1

    goto :goto_d

    .line 173
    :catchall_6
    move-exception v0

    goto :goto_f

    .line 172
    :cond_12
    const/16 v16, 0x0

    :goto_d
    move/from16 v0, v16

    .line 173
    .local v0, "shouldCloseImageWriter":Z
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 176
    if-eqz v11, :cond_13

    .line 177
    invoke-virtual {v11}, Landroid/media/Image;->close()V

    .line 179
    :cond_13
    if-eqz v3, :cond_14

    .line 180
    invoke-interface {v3}, Landroidx/camera/core/ImageProxy;->close()V

    .line 183
    :cond_14
    if-eqz v0, :cond_15

    .line 184
    invoke-virtual {v8}, Landroid/media/ImageWriter;->close()V

    .line 185
    const-string v4, "YuvToJpegProcessor"

    const-string v7, "Closed after completion of last image processed."

    invoke-static {v4, v7}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .end local v0    # "shouldCloseImageWriter":Z
    :cond_15
    move-object v7, v3

    move-object v3, v11

    .line 188
    .end local v11    # "jpegImage":Landroid/media/Image;
    .local v3, "jpegImage":Landroid/media/Image;
    .restart local v7    # "imageProxy":Landroidx/camera/core/ImageProxy;
    :goto_e
    return-void

    .line 173
    .end local v7    # "imageProxy":Landroidx/camera/core/ImageProxy;
    .local v3, "imageProxy":Landroidx/camera/core/ImageProxy;
    .restart local v11    # "jpegImage":Landroid/media/Image;
    :goto_f
    :try_start_c
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    throw v0

    .line 114
    .end local v3    # "imageProxy":Landroidx/camera/core/ImageProxy;
    .end local v8    # "imageWriter":Landroid/media/ImageWriter;
    .end local v9    # "processing":Z
    .end local v10    # "imageRect":Landroid/graphics/Rect;
    .end local v11    # "jpegImage":Landroid/media/Image;
    :catchall_7
    move-exception v0

    :try_start_d
    monitor-exit v7
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    throw v0
.end method
