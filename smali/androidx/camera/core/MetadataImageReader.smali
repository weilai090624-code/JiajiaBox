.class Landroidx/camera/core/MetadataImageReader;
.super Ljava/lang/Object;
.source "MetadataImageReader.java"

# interfaces
.implements Landroidx/camera/core/impl/ImageReaderProxy;
.implements Landroidx/camera/core/ForwardingImageProxy$OnImageCloseListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "MetadataImageReader"


# instance fields
.field private final mAcquiredImageProxies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/core/ImageProxy;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraCaptureCallback:Landroidx/camera/core/impl/CameraCaptureCallback;

.field private mClosed:Z

.field private mExecutor:Ljava/util/concurrent/Executor;

.field private mImageProxiesIndex:I

.field private final mImageReaderProxy:Landroidx/camera/core/impl/ImageReaderProxy;

.field mListener:Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;

.field private final mLock:Ljava/lang/Object;

.field private final mMatchedImageProxies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/core/ImageProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingImageInfos:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroidx/camera/core/ImageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingImages:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroidx/camera/core/ImageProxy;",
            ">;"
        }
    .end annotation
.end field

.field private mTransformedListener:Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;


# direct methods
.method constructor <init>(IIII)V
    .registers 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # I
    .param p4, "maxImages"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "format",
            "maxImages"
        }
    .end annotation

    .line 107
    invoke-static {p1, p2, p3, p4}, Landroidx/camera/core/MetadataImageReader;->createImageReaderProxy(IIII)Landroidx/camera/core/impl/ImageReaderProxy;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/camera/core/MetadataImageReader;-><init>(Landroidx/camera/core/impl/ImageReaderProxy;)V

    .line 108
    return-void
.end method

.method constructor <init>(Landroidx/camera/core/impl/ImageReaderProxy;)V
    .registers 4
    .param p1, "imageReaderProxy"    # Landroidx/camera/core/impl/ImageReaderProxy;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageReaderProxy"
        }
    .end annotation

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/MetadataImageReader;->mLock:Ljava/lang/Object;

    .line 53
    new-instance v0, Landroidx/camera/core/MetadataImageReader$1;

    invoke-direct {v0, p0}, Landroidx/camera/core/MetadataImageReader$1;-><init>(Landroidx/camera/core/MetadataImageReader;)V

    iput-object v0, p0, Landroidx/camera/core/MetadataImageReader;->mCameraCaptureCallback:Landroidx/camera/core/impl/CameraCaptureCallback;

    .line 62
    new-instance v0, Landroidx/camera/core/MetadataImageReader$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroidx/camera/core/MetadataImageReader$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/core/MetadataImageReader;)V

    iput-object v0, p0, Landroidx/camera/core/MetadataImageReader;->mTransformedListener:Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/camera/core/MetadataImageReader;->mClosed:Z

    .line 80
    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v1, p0, Landroidx/camera/core/MetadataImageReader;->mPendingImageInfos:Landroid/util/LongSparseArray;

    .line 84
    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v1, p0, Landroidx/camera/core/MetadataImageReader;->mPendingImages:Landroid/util/LongSparseArray;

    .line 95
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/camera/core/MetadataImageReader;->mAcquiredImageProxies:Ljava/util/List;

    .line 128
    iput-object p1, p0, Landroidx/camera/core/MetadataImageReader;->mImageReaderProxy:Landroidx/camera/core/impl/ImageReaderProxy;

    .line 129
    iput v0, p0, Landroidx/camera/core/MetadataImageReader;->mImageProxiesIndex:I

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroidx/camera/core/MetadataImageReader;->getMaxImages()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/camera/core/MetadataImageReader;->mMatchedImageProxies:Ljava/util/List;

    .line 131
    return-void
.end method

.method private static createImageReaderProxy(IIII)Landroidx/camera/core/impl/ImageReaderProxy;
    .registers 6
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "format"    # I
    .param p3, "maxImages"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "format",
            "maxImages"
        }
    .end annotation

    .line 117
    new-instance v0, Landroidx/camera/core/AndroidImageReaderProxy;

    .line 118
    invoke-static {p0, p1, p2, p3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/camera/core/AndroidImageReaderProxy;-><init>(Landroid/media/ImageReader;)V

    .line 117
    return-object v0
.end method

.method private dequeImageProxy(Landroidx/camera/core/ImageProxy;)V
    .registers 5
    .param p1, "image"    # Landroidx/camera/core/ImageProxy;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "image"
        }
    .end annotation

    .line 289
    iget-object v0, p0, Landroidx/camera/core/MetadataImageReader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 290
    :try_start_3
    iget-object v1, p0, Landroidx/camera/core/MetadataImageReader;->mMatchedImageProxies:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 291
    .local v1, "index":I
    if-ltz v1, :cond_1a

    .line 292
    iget-object v2, p0, Landroidx/camera/core/MetadataImageReader;->mMatchedImageProxies:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 293
    iget v2, p0, Landroidx/camera/core/MetadataImageReader;->mImageProxiesIndex:I

    if-gt v1, v2, :cond_1a

    .line 294
    iget v2, p0, Landroidx/camera/core/MetadataImageReader;->mImageProxiesIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroidx/camera/core/MetadataImageReader;->mImageProxiesIndex:I

    .line 297
    :cond_1a
    iget-object v2, p0, Landroidx/camera/core/MetadataImageReader;->mAcquiredImageProxies:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 298
    nop

    .end local v1    # "index":I
    monitor-exit v0

    .line 299
    return-void

    .line 298
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method

.method private enqueueImageProxy(Landroidx/camera/core/SettableImageProxy;)V
    .registers 5
    .param p1, "image"    # Landroidx/camera/core/SettableImageProxy;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "image"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Landroidx/camera/core/MetadataImageReader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 267
    :try_start_3
    iget-object v1, p0, Landroidx/camera/core/MetadataImageReader;->mMatchedImageProxies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0}, Landroidx/camera/core/MetadataImageReader;->getMaxImages()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 268
    invoke-virtual {p1, p0}, Landroidx/camera/core/SettableImageProxy;->addOnImageCloseListener(Landroidx/camera/core/ForwardingImageProxy$OnImageCloseListener;)V

    .line 269
    iget-object v1, p0, Landroidx/camera/core/MetadataImageReader;->mMatchedImageProxies:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    iget-object v1, p0, Landroidx/camera/core/MetadataImageReader;->mListener:Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;

    .line 271
    .local v1, "listener":Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;
    iget-object v2, p0, Landroidx/camera/core/MetadataImageReader;->mExecutor:Ljava/util/concurrent/Executor;

    .local v2, "executor":Ljava/util/concurrent/Executor;
    goto :goto_28

    .line 273
    .end local v1    # "listener":Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;
    .end local v2    # "executor":Ljava/util/concurrent/Executor;
    :cond_1c
    const-string v1, "TAG"

    const-string v2, "Maximum image number reached."

    invoke-static {v1, v2}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-virtual {p1}, Landroidx/camera/core/SettableImageProxy;->close()V

    .line 275
    const/4 v1, 0x0

    .line 276
    .restart local v1    # "listener":Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;
    const/4 v2, 0x0

    .line 278
    .restart local v2    # "executor":Ljava/util/concurrent/Executor;
    :goto_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_3a

    .line 279
    if-eqz v1, :cond_39

    .line 280
    if-eqz v2, :cond_36

    .line 281
    new-instance v0, Landroidx/camera/core/MetadataImageReader$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, v1}, Landroidx/camera/core/MetadataImageReader$$ExternalSyntheticLambda1;-><init>(Landroidx/camera/core/MetadataImageReader;Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;)V

    invoke-interface {v2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_39

    .line 283
    :cond_36
    invoke-interface {v1, p0}, Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;->onImageAvailable(Landroidx/camera/core/impl/ImageReaderProxy;)V

    .line 286
    :cond_39
    :goto_39
    return-void

    .line 278
    .end local v1    # "listener":Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;
    .end local v2    # "executor":Ljava/util/concurrent/Executor;
    :catchall_3a
    move-exception v1

    :try_start_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method private matchImages()V
    .registers 8

    .line 397
    iget-object v0, p0, Landroidx/camera/core/MetadataImageReader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 399
    :try_start_3
    iget-object v1, p0, Landroidx/camera/core/MetadataImageReader;->mPendingImageInfos:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_b
    if-ltz v1, :cond_38

    .line 400
    iget-object v2, p0, Landroidx/camera/core/MetadataImageReader;->mPendingImageInfos:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/ImageInfo;

    .line 401
    .local v2, "imageInfo":Landroidx/camera/core/ImageInfo;
    invoke-interface {v2}, Landroidx/camera/core/ImageInfo;->getTimestamp()J

    move-result-wide v3

    .line 403
    .local v3, "timestamp":J
    iget-object v5, p0, Landroidx/camera/core/MetadataImageReader;->mPendingImages:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/camera/core/ImageProxy;

    .line 405
    .local v5, "image":Landroidx/camera/core/ImageProxy;
    if-eqz v5, :cond_35

    .line 406
    iget-object v6, p0, Landroidx/camera/core/MetadataImageReader;->mPendingImages:Landroid/util/LongSparseArray;

    invoke-virtual {v6, v3, v4}, Landroid/util/LongSparseArray;->remove(J)V

    .line 407
    iget-object v6, p0, Landroidx/camera/core/MetadataImageReader;->mPendingImageInfos:Landroid/util/LongSparseArray;

    invoke-virtual {v6, v1}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 410
    new-instance v6, Landroidx/camera/core/SettableImageProxy;

    invoke-direct {v6, v5, v2}, Landroidx/camera/core/SettableImageProxy;-><init>(Landroidx/camera/core/ImageProxy;Landroidx/camera/core/ImageInfo;)V

    invoke-direct {p0, v6}, Landroidx/camera/core/MetadataImageReader;->enqueueImageProxy(Landroidx/camera/core/SettableImageProxy;)V

    .line 399
    .end local v2    # "imageInfo":Landroidx/camera/core/ImageInfo;
    .end local v3    # "timestamp":J
    .end local v5    # "image":Landroidx/camera/core/ImageProxy;
    :cond_35
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 414
    .end local v1    # "i":I
    :cond_38
    invoke-direct {p0}, Landroidx/camera/core/MetadataImageReader;->removeStaleData()V

    .line 415
    monitor-exit v0

    .line 416
    return-void

    .line 415
    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method private removeStaleData()V
    .registers 11

    .line 363
    iget-object v0, p0, Landroidx/camera/core/MetadataImageReader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 365
    :try_start_3
    iget-object v1, p0, Landroidx/camera/core/MetadataImageReader;->mPendingImages:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_8d

    iget-object v1, p0, Landroidx/camera/core/MetadataImageReader;->mPendingImageInfos:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-nez v1, :cond_15

    goto/16 :goto_8d

    .line 369
    :cond_15
    iget-object v1, p0, Landroidx/camera/core/MetadataImageReader;->mPendingImages:Landroid/util/LongSparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 370
    .local v1, "minImageProxyTimestamp":Ljava/lang/Long;
    iget-object v3, p0, Landroidx/camera/core/MetadataImageReader;->mPendingImageInfos:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 374
    .local v3, "minImageInfoTimestamp":Ljava/lang/Long;
    invoke-virtual {v3, v1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_32

    const/4 v2, 0x1

    :cond_32
    invoke-static {v2}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 376
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v2, v6, v8

    if-lez v2, :cond_6c

    .line 377
    iget-object v2, p0, Landroidx/camera/core/MetadataImageReader;->mPendingImages:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    sub-int/2addr v2, v5

    .local v2, "i":I
    :goto_48
    if-ltz v2, :cond_6b

    .line 378
    iget-object v4, p0, Landroidx/camera/core/MetadataImageReader;->mPendingImages:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-gez v8, :cond_68

    .line 379
    iget-object v4, p0, Landroidx/camera/core/MetadataImageReader;->mPendingImages:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/camera/core/ImageProxy;

    .line 380
    .local v4, "imageProxy":Landroidx/camera/core/ImageProxy;
    invoke-interface {v4}, Landroidx/camera/core/ImageProxy;->close()V

    .line 381
    iget-object v5, p0, Landroidx/camera/core/MetadataImageReader;->mPendingImages:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v2}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 377
    .end local v4    # "imageProxy":Landroidx/camera/core/ImageProxy;
    :cond_68
    add-int/lit8 v2, v2, -0x1

    goto :goto_48

    .end local v2    # "i":I
    :cond_6b
    goto :goto_8b

    .line 385
    :cond_6c
    iget-object v2, p0, Landroidx/camera/core/MetadataImageReader;->mPendingImageInfos:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    sub-int/2addr v2, v5

    .restart local v2    # "i":I
    :goto_73
    if-ltz v2, :cond_8b

    .line 386
    iget-object v4, p0, Landroidx/camera/core/MetadataImageReader;->mPendingImageInfos:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-gez v8, :cond_88

    .line 387
    iget-object v4, p0, Landroidx/camera/core/MetadataImageReader;->mPendingImageInfos:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v2}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 385
    :cond_88
    add-int/lit8 v2, v2, -0x1

    goto :goto_73

    .line 392
    .end local v1    # "minImageProxyTimestamp":Ljava/lang/Long;
    .end local v2    # "i":I
    .end local v3    # "minImageInfoTimestamp":Ljava/lang/Long;
    :cond_8b
    :goto_8b
    monitor-exit v0

    .line 393
    return-void

    .line 366
    :cond_8d
    :goto_8d
    monitor-exit v0

    return-void

    .line 392
    :catchall_8f
    move-exception v1

    monitor-exit v0
    :try_end_91
    .catchall {:try_start_3 .. :try_end_91} :catchall_8f

    throw v1
.end method


# virtual methods
.method public acquireLatestImage()Landroidx/camera/core/ImageProxy;
    .registers 6

    .line 136
    iget-object v0, p0, Landroidx/camera/core/MetadataImageReader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 137
    :try_start_3
    iget-object v1, p0, Landroidx/camera/core/MetadataImageReader;->mMatchedImageProxies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 138
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 140
    :cond_e
    iget v1, p0, Landroidx/camera/core/MetadataImageReader;->mImageProxiesIndex:I

    iget-object v2, p0, Landroidx/camera/core/MetadataImageReader;->mMatchedImageProxies:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_77

    .line 145
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v1, "toClose":Ljava/util/List;, "Ljava/util/List<Landroidx/camera/core/ImageProxy;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1e
    iget-object v3, p0, Landroidx/camera/core/MetadataImageReader;->mMatchedImageProxies:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_44

    .line 147
    iget-object v3, p0, Landroidx/camera/core/MetadataImageReader;->mAcquiredImageProxies:Ljava/util/List;

    iget-object v4, p0, Landroidx/camera/core/MetadataImageReader;->mMatchedImageProxies:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_41

    .line 148
    iget-object v3, p0, Landroidx/camera/core/MetadataImageReader;->mMatchedImageProxies:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/core/ImageProxy;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    :cond_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 151
    .end local v2    # "i":I
    :cond_44
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_48
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_58

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/core/ImageProxy;

    .line 152
    .local v3, "image":Landroidx/camera/core/ImageProxy;
    invoke-interface {v3}, Landroidx/camera/core/ImageProxy;->close()V

    .line 153
    .end local v3    # "image":Landroidx/camera/core/ImageProxy;
    goto :goto_48

    .line 156
    :cond_58
    iget-object v2, p0, Landroidx/camera/core/MetadataImageReader;->mMatchedImageProxies:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroidx/camera/core/MetadataImageReader;->mImageProxiesIndex:I

    .line 157
    iget-object v2, p0, Landroidx/camera/core/MetadataImageReader;->mMatchedImageProxies:Ljava/util/List;

    iget v3, p0, Landroidx/camera/core/MetadataImageReader;->mImageProxiesIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroidx/camera/core/MetadataImageReader;->mImageProxiesIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/ImageProxy;

    .line 158
    .local v2, "acquiredImage":Landroidx/camera/core/ImageProxy;
    iget-object v3, p0, Landroidx/camera/core/MetadataImageReader;->mAcquiredImageProxies:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    monitor-exit v0

    return-object v2

    .line 141
    .end local v1    # "toClose":Ljava/util/List;, "Ljava/util/List<Landroidx/camera/core/ImageProxy;>;"
    .end local v2    # "acquiredImage":Landroidx/camera/core/ImageProxy;
    :cond_77
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Maximum image number reached."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 161
    :catchall_7f
    move-exception v1

    monitor-exit v0
    :try_end_81
    .catchall {:try_start_3 .. :try_end_81} :catchall_7f

    throw v1
.end method

.method public acquireNextImage()Landroidx/camera/core/ImageProxy;
    .registers 5

    .line 167
    iget-object v0, p0, Landroidx/camera/core/MetadataImageReader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 168
    :try_start_3
    iget-object v1, p0, Landroidx/camera/core/MetadataImageReader;->mMatchedImageProxies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 169
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 172
    :cond_e
    iget v1, p0, Landroidx/camera/core/MetadataImageReader;->mImageProxiesIndex:I

    iget-object v2, p0, Landroidx/camera/core/MetadataImageReader;->mMatchedImageProxies:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2d

    .line 177
    iget-object v1, p0, Landroidx/camera/core/MetadataImageReader;->mMatchedImageProxies:Ljava/util/List;

    iget v2, p0, Landroidx/camera/core/MetadataImageReader;->mImageProxiesIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/camera/core/MetadataImageReader;->mImageProxiesIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/ImageProxy;

    .line 178
    .local v1, "acquiredImage":Landroidx/camera/core/ImageProxy;
    iget-object v2, p0, Landroidx/camera/core/MetadataImageReader;->mAcquiredImageProxies:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    monitor-exit v0

    return-object v1

    .line 173
    .end local v1    # "acquiredImage":Landroidx/camera/core/ImageProxy;
    :cond_2d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Maximum image number reached."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 181
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw v1
.end method

.method public clearOnImageAvailableListener()V
    .registers 3

    .line 250
    iget-object v0, p0, Landroidx/camera/core/MetadataImageReader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 251
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Landroidx/camera/core/MetadataImageReader;->mListener:Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;

    .line 252
    iput-object v1, p0, Landroidx/camera/core/MetadataImageReader;->mExecutor:Ljava/util/concurrent/Executor;

    .line 253
    monitor-exit v0

    .line 254
    return-void

    .line 253
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public close()V
    .registers 5

    .line 186
    iget-object v0, p0, Landroidx/camera/core/MetadataImageReader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 187
    :try_start_3
    iget-boolean v1, p0, Landroidx/camera/core/MetadataImageReader;->mClosed:Z

    if-eqz v1, :cond_9

    .line 188
    monitor-exit v0

    return-void

    .line 191
    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/camera/core/MetadataImageReader;->mMatchedImageProxies:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 192
    .local v1, "imagesToClose":Ljava/util/List;, "Ljava/util/List<Landroidx/camera/core/ImageProxy;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/core/ImageProxy;

    .line 193
    .local v3, "image":Landroidx/camera/core/ImageProxy;
    invoke-interface {v3}, Landroidx/camera/core/ImageProxy;->close()V

    .line 194
    .end local v3    # "image":Landroidx/camera/core/ImageProxy;
    goto :goto_14

    .line 195
    :cond_24
    iget-object v2, p0, Landroidx/camera/core/MetadataImageReader;->mMatchedImageProxies:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 197
    iget-object v2, p0, Landroidx/camera/core/MetadataImageReader;->mImageReaderProxy:Landroidx/camera/core/impl/ImageReaderProxy;

    invoke-interface {v2}, Landroidx/camera/core/impl/ImageReaderProxy;->close()V

    .line 198
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/camera/core/MetadataImageReader;->mClosed:Z

    .line 199
    .end local v1    # "imagesToClose":Ljava/util/List;, "Ljava/util/List<Landroidx/camera/core/ImageProxy;>;"
    monitor-exit v0

    .line 200
    return-void

    .line 199
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw v1
.end method

.method getCameraCaptureCallback()Landroidx/camera/core/impl/CameraCaptureCallback;
    .registers 2

    .line 303
    iget-object v0, p0, Landroidx/camera/core/MetadataImageReader;->mCameraCaptureCallback:Landroidx/camera/core/impl/CameraCaptureCallback;

    return-object v0
.end method

.method public getHeight()I
    .registers 3

    .line 204
    iget-object v0, p0, Landroidx/camera/core/MetadataImageReader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 205
    :try_start_3
    iget-object v1, p0, Landroidx/camera/core/MetadataImageReader;->mImageReaderProxy:Landroidx/camera/core/impl/ImageReaderProxy;

    invoke-interface {v1}, Landroidx/camera/core/impl/ImageReaderProxy;->getHeight()I

    move-result v1

    monitor-exit v0

    return v1

    .line 206
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getImageFormat()I
    .registers 3

    .line 218
    iget-object v0, p0, Landroidx/camera/core/MetadataImageReader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 219
    :try_start_3
    iget-object v1, p0, Landroidx/camera/core/MetadataImageReader;->mImageReaderProxy:Landroidx/camera/core/impl/ImageReaderProxy;

    invoke-interface {v1}, Landroidx/camera/core/impl/ImageReaderProxy;->getImageFormat()I

    move-result v1

    monitor-exit v0

    return v1

    .line 220
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getMaxImages()I
    .registers 3

    .line 225
    iget-object v0, p0, Landroidx/camera/core/MetadataImageReader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 226
    :try_start_3
    iget-object v1, p0, Landroidx/camera/core/MetadataImageReader;->mImageReaderProxy:Landroidx/camera/core/impl/ImageReaderProxy;

    invoke-interface {v1}, Landroidx/camera/core/impl/ImageReaderProxy;->getMaxImages()I

    move-result v1

    monitor-exit v0

    return v1

    .line 227
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getSurface()Landroid/view/Surface;
    .registers 3

    .line 233
    iget-object v0, p0, Landroidx/camera/core/MetadataImageReader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 234
    :try_start_3
    iget-object v1, p0, Landroidx/camera/core/MetadataImageReader;->mImageReaderProxy:Landroidx/camera/core/impl/ImageReaderProxy;

    invoke-interface {v1}, Landroidx/camera/core/impl/ImageReaderProxy;->getSurface()Landroid/view/Surface;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 235
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getWidth()I
    .registers 3

    .line 211
    iget-object v0, p0, Landroidx/camera/core/MetadataImageReader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 212
    :try_start_3
    iget-object v1, p0, Landroidx/camera/core/MetadataImageReader;->mImageReaderProxy:Landroidx/camera/core/impl/ImageReaderProxy;

    invoke-interface {v1}, Landroidx/camera/core/impl/ImageReaderProxy;->getWidth()I

    move-result v1

    monitor-exit v0

    return v1

    .line 213
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method imageIncoming(Landroidx/camera/core/impl/ImageReaderProxy;)V
    .registers 9
    .param p1, "imageReader"    # Landroidx/camera/core/impl/ImageReaderProxy;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageReader"
        }
    .end annotation

    .line 308
    iget-object v0, p0, Landroidx/camera/core/MetadataImageReader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 309
    :try_start_3
    iget-boolean v1, p0, Landroidx/camera/core/MetadataImageReader;->mClosed:Z

    if-eqz v1, :cond_9

    .line 310
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_61

    return-void

    .line 315
    :cond_9
    const/4 v1, 0x0

    .line 318
    .local v1, "numAcquired":I
    :cond_a
    const/4 v2, 0x0

    .line 320
    .local v2, "image":Landroidx/camera/core/ImageProxy;
    :try_start_b
    invoke-interface {p1}, Landroidx/camera/core/impl/ImageReaderProxy;->acquireNextImage()Landroidx/camera/core/ImageProxy;

    move-result-object v3
    :try_end_f
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_f} :catch_27
    .catchall {:try_start_b .. :try_end_f} :catchall_25

    move-object v2, v3

    .line 324
    if-eqz v2, :cond_41

    .line 325
    add-int/lit8 v1, v1, 0x1

    .line 327
    :try_start_14
    iget-object v3, p0, Landroidx/camera/core/MetadataImageReader;->mPendingImages:Landroid/util/LongSparseArray;

    invoke-interface {v2}, Landroidx/camera/core/ImageProxy;->getImageInfo()Landroidx/camera/core/ImageInfo;

    move-result-object v4

    invoke-interface {v4}, Landroidx/camera/core/ImageInfo;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 328
    :goto_21
    invoke-direct {p0}, Landroidx/camera/core/MetadataImageReader;->matchImages()V
    :try_end_24
    .catchall {:try_start_14 .. :try_end_24} :catchall_61

    goto :goto_41

    .line 324
    :catchall_25
    move-exception v3

    goto :goto_4b

    .line 321
    :catch_27
    move-exception v3

    .line 322
    .local v3, "e":Ljava/lang/IllegalStateException;
    :try_start_28
    const-string v4, "MetadataImageReader"

    const-string v5, "Failed to acquire next image."

    invoke-static {v4, v5, v3}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_25

    .line 324
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    if-eqz v2, :cond_41

    .line 325
    add-int/lit8 v1, v1, 0x1

    .line 327
    :try_start_33
    iget-object v3, p0, Landroidx/camera/core/MetadataImageReader;->mPendingImages:Landroid/util/LongSparseArray;

    invoke-interface {v2}, Landroidx/camera/core/ImageProxy;->getImageInfo()Landroidx/camera/core/ImageInfo;

    move-result-object v4

    invoke-interface {v4}, Landroidx/camera/core/ImageInfo;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_21

    .line 334
    :cond_41
    :goto_41
    if-eqz v2, :cond_49

    invoke-interface {p1}, Landroidx/camera/core/impl/ImageReaderProxy;->getMaxImages()I

    move-result v3

    if-lt v1, v3, :cond_a

    .line 335
    .end local v1    # "numAcquired":I
    .end local v2    # "image":Landroidx/camera/core/ImageProxy;
    :cond_49
    monitor-exit v0

    .line 336
    return-void

    .line 324
    .restart local v1    # "numAcquired":I
    .restart local v2    # "image":Landroidx/camera/core/ImageProxy;
    :goto_4b
    if-eqz v2, :cond_5f

    .line 325
    add-int/lit8 v1, v1, 0x1

    .line 327
    iget-object v4, p0, Landroidx/camera/core/MetadataImageReader;->mPendingImages:Landroid/util/LongSparseArray;

    invoke-interface {v2}, Landroidx/camera/core/ImageProxy;->getImageInfo()Landroidx/camera/core/ImageInfo;

    move-result-object v5

    invoke-interface {v5}, Landroidx/camera/core/ImageInfo;->getTimestamp()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 328
    invoke-direct {p0}, Landroidx/camera/core/MetadataImageReader;->matchImages()V

    .line 330
    :cond_5f
    nop

    .end local p1    # "imageReader":Landroidx/camera/core/impl/ImageReaderProxy;
    throw v3

    .line 335
    .end local v1    # "numAcquired":I
    .end local v2    # "image":Landroidx/camera/core/ImageProxy;
    .restart local p1    # "imageReader":Landroidx/camera/core/impl/ImageReaderProxy;
    :catchall_61
    move-exception v1

    monitor-exit v0
    :try_end_63
    .catchall {:try_start_33 .. :try_end_63} :catchall_61

    throw v1
.end method

.method synthetic lambda$enqueueImageProxy$1$androidx-camera-core-MetadataImageReader(Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;)V
    .registers 2
    .param p1, "listener"    # Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;

    .line 281
    invoke-interface {p1, p0}, Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;->onImageAvailable(Landroidx/camera/core/impl/ImageReaderProxy;)V

    return-void
.end method

.method synthetic lambda$new$0$androidx-camera-core-MetadataImageReader(Landroidx/camera/core/impl/ImageReaderProxy;)V
    .registers 2
    .param p1, "reader"    # Landroidx/camera/core/impl/ImageReaderProxy;

    .line 63
    invoke-virtual {p0, p1}, Landroidx/camera/core/MetadataImageReader;->imageIncoming(Landroidx/camera/core/impl/ImageReaderProxy;)V

    return-void
.end method

.method public onImageClose(Landroidx/camera/core/ImageProxy;)V
    .registers 4
    .param p1, "image"    # Landroidx/camera/core/ImageProxy;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "image"
        }
    .end annotation

    .line 258
    iget-object v0, p0, Landroidx/camera/core/MetadataImageReader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 259
    :try_start_3
    invoke-direct {p0, p1}, Landroidx/camera/core/MetadataImageReader;->dequeImageProxy(Landroidx/camera/core/ImageProxy;)V

    .line 260
    monitor-exit v0

    .line 261
    return-void

    .line 260
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method resultIncoming(Landroidx/camera/core/impl/CameraCaptureResult;)V
    .registers 7
    .param p1, "cameraCaptureResult"    # Landroidx/camera/core/impl/CameraCaptureResult;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraCaptureResult"
        }
    .end annotation

    .line 341
    iget-object v0, p0, Landroidx/camera/core/MetadataImageReader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 342
    :try_start_3
    iget-boolean v1, p0, Landroidx/camera/core/MetadataImageReader;->mClosed:Z

    if-eqz v1, :cond_9

    .line 343
    monitor-exit v0

    return-void

    .line 347
    :cond_9
    iget-object v1, p0, Landroidx/camera/core/MetadataImageReader;->mPendingImageInfos:Landroid/util/LongSparseArray;

    invoke-interface {p1}, Landroidx/camera/core/impl/CameraCaptureResult;->getTimestamp()J

    move-result-wide v2

    new-instance v4, Landroidx/camera/core/internal/CameraCaptureResultImageInfo;

    invoke-direct {v4, p1}, Landroidx/camera/core/internal/CameraCaptureResultImageInfo;-><init>(Landroidx/camera/core/impl/CameraCaptureResult;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 350
    invoke-direct {p0}, Landroidx/camera/core/MetadataImageReader;->matchImages()V

    .line 351
    monitor-exit v0

    .line 352
    return-void

    .line 351
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public setOnImageAvailableListener(Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;Ljava/util/concurrent/Executor;)V
    .registers 6
    .param p1, "listener"    # Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "listener",
            "executor"
        }
    .end annotation

    .line 241
    iget-object v0, p0, Landroidx/camera/core/MetadataImageReader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 242
    :try_start_3
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;

    iput-object v1, p0, Landroidx/camera/core/MetadataImageReader;->mListener:Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;

    .line 243
    invoke-static {p2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    iput-object v1, p0, Landroidx/camera/core/MetadataImageReader;->mExecutor:Ljava/util/concurrent/Executor;

    .line 244
    iget-object v1, p0, Landroidx/camera/core/MetadataImageReader;->mImageReaderProxy:Landroidx/camera/core/impl/ImageReaderProxy;

    iget-object v2, p0, Landroidx/camera/core/MetadataImageReader;->mTransformedListener:Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;

    invoke-interface {v1, v2, p2}, Landroidx/camera/core/impl/ImageReaderProxy;->setOnImageAvailableListener(Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;Ljava/util/concurrent/Executor;)V

    .line 245
    monitor-exit v0

    .line 246
    return-void

    .line 245
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method
