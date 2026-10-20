.class Landroidx/camera/core/ImageCapture$ImageCaptureRequest;
.super Ljava/lang/Object;
.source "ImageCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/ImageCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImageCaptureRequest"
.end annotation


# instance fields
.field private final mCallback:Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;

.field mDispatched:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final mJpegQuality:I

.field private final mListenerExecutor:Ljava/util/concurrent/Executor;

.field final mRotationDegrees:I

.field private final mTargetRatio:Landroid/util/Rational;

.field private final mViewPortCropRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(IILandroid/util/Rational;Landroid/graphics/Rect;Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;)V
    .locals 4
    .param p1, "rotationDegrees"    # I
    .param p2, "jpegQuality"    # I
    .param p3, "targetRatio"    # Landroid/util/Rational;
    .param p4, "viewPortCropRect"    # Landroid/graphics/Rect;
    .param p5, "executor"    # Ljava/util/concurrent/Executor;
    .param p6, "callback"    # Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rotationDegrees",
            "jpegQuality",
            "targetRatio",
            "viewPortCropRect",
            "executor",
            "callback"
        }
    .end annotation

    .line 2260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2243
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mDispatched:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2261
    iput p1, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mRotationDegrees:I

    .line 2262
    iput p2, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mJpegQuality:I

    .line 2263
    if-eqz p3, :cond_1

    .line 2264
    invoke-virtual {p3}, Landroid/util/Rational;->isZero()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    const-string v3, "Target ratio cannot be zero"

    invoke-static {v0, v3}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2265
    invoke-virtual {p3}, Landroid/util/Rational;->floatValue()F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string v0, "Target ratio must be positive"

    invoke-static {v1, v0}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2268
    :cond_1
    iput-object p3, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mTargetRatio:Landroid/util/Rational;

    .line 2269
    iput-object p4, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mViewPortCropRect:Landroid/graphics/Rect;

    .line 2270
    iput-object p5, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mListenerExecutor:Ljava/util/concurrent/Executor;

    .line 2271
    iput-object p6, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mCallback:Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;

    .line 2272
    return-void
.end method

.method static getDispatchCropRect(Landroid/graphics/Rect;ILandroid/util/Size;I)Landroid/graphics/Rect;
    .locals 7
    .param p0, "surfaceCropRect"    # Landroid/graphics/Rect;
    .param p1, "surfaceToOutputDegrees"    # I
    .param p2, "dispatchResolution"    # Landroid/util/Size;
    .param p3, "dispatchToOutputDegrees"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "surfaceCropRect",
            "surfaceToOutputDegrees",
            "dispatchResolution",
            "dispatchToOutputDegrees"
        }
    .end annotation

    .line 2379
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 2381
    .local v0, "matrix":Landroid/graphics/Matrix;
    sub-int v1, p3, p1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 2384
    invoke-static {p2}, Landroidx/camera/core/internal/utils/ImageUtil;->sizeToVertexes(Landroid/util/Size;)[F

    move-result-object v1

    .line 2385
    .local v1, "vertexes":[F
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 2386
    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x2

    aget v3, v1, v3

    const/4 v4, 0x4

    aget v4, v1, v4

    const/4 v5, 0x6

    aget v5, v1, v5

    invoke-static {v2, v3, v4, v5}, Landroidx/camera/core/internal/utils/ImageUtil;->min(FFFF)F

    move-result v2

    .line 2387
    .local v2, "left":F
    const/4 v3, 0x1

    aget v3, v1, v3

    const/4 v4, 0x3

    aget v4, v1, v4

    const/4 v5, 0x5

    aget v5, v1, v5

    const/4 v6, 0x7

    aget v6, v1, v6

    invoke-static {v3, v4, v5, v6}, Landroidx/camera/core/internal/utils/ImageUtil;->min(FFFF)F

    move-result v3

    .line 2388
    .local v3, "top":F
    neg-float v4, v2

    neg-float v5, v3

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 2390
    invoke-virtual {v0, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 2393
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 2394
    .local v4, "dispatchCropRectF":Landroid/graphics/RectF;
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 2395
    invoke-virtual {v4}, Landroid/graphics/RectF;->sort()V

    .line 2396
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 2397
    .local v5, "dispatchCropRect":Landroid/graphics/Rect;
    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 2398
    return-object v5
.end method


# virtual methods
.method dispatchImage(Landroidx/camera/core/ImageProxy;)V
    .locals 9
    .param p1, "image"    # Landroidx/camera/core/ImageProxy;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "image"
        }
    .end annotation

    .line 2276
    iget-object v0, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mDispatched:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2277
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->close()V

    .line 2278
    return-void

    .line 2282
    :cond_0
    const/4 v0, 0x0

    .line 2286
    .local v0, "dispatchRotationDegrees":I
    new-instance v3, Landroidx/camera/core/internal/compat/workaround/ExifRotationAvailability;

    invoke-direct {v3}, Landroidx/camera/core/internal/compat/workaround/ExifRotationAvailability;-><init>()V

    invoke-virtual {v3, p1}, Landroidx/camera/core/internal/compat/workaround/ExifRotationAvailability;->shouldUseExifOrientation(Landroidx/camera/core/ImageProxy;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2289
    :try_start_0
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getPlanes()[Landroidx/camera/core/ImageProxy$PlaneProxy;

    move-result-object v3

    .line 2290
    .local v3, "planes":[Landroidx/camera/core/ImageProxy$PlaneProxy;
    aget-object v1, v3, v1

    invoke-interface {v1}, Landroidx/camera/core/ImageProxy$PlaneProxy;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2293
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 2295
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    new-array v4, v4, [B

    .line 2296
    .local v4, "data":[B
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 2297
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v5}, Landroidx/camera/core/impl/utils/Exif;->createFromInputStream(Ljava/io/InputStream;)Landroidx/camera/core/impl/utils/Exif;

    move-result-object v5

    .line 2298
    .local v5, "exif":Landroidx/camera/core/impl/utils/Exif;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 2300
    new-instance v6, Landroid/util/Size;

    invoke-virtual {v5}, Landroidx/camera/core/impl/utils/Exif;->getWidth()I

    move-result v7

    invoke-virtual {v5}, Landroidx/camera/core/impl/utils/Exif;->getHeight()I

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/util/Size;-><init>(II)V

    .line 2301
    .local v6, "dispatchResolution":Landroid/util/Size;
    invoke-virtual {v5}, Landroidx/camera/core/impl/utils/Exif;->getRotation()I

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 2306
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    .end local v3    # "planes":[Landroidx/camera/core/ImageProxy$PlaneProxy;
    .end local v4    # "data":[B
    .end local v5    # "exif":Landroidx/camera/core/impl/utils/Exif;
    goto :goto_0

    .line 2302
    .end local v6    # "dispatchResolution":Landroid/util/Size;
    :catch_0
    move-exception v1

    .line 2303
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "Unable to parse JPEG exif"

    invoke-virtual {p0, v2, v3, v1}, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->notifyCallbackError(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 2304
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->close()V

    .line 2305
    return-void

    .line 2309
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    new-instance v1, Landroid/util/Size;

    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getWidth()I

    move-result v2

    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    move-object v6, v1

    .line 2310
    .restart local v6    # "dispatchResolution":Landroid/util/Size;
    iget v0, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mRotationDegrees:I

    .line 2314
    :goto_0
    nop

    .line 2315
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getImageInfo()Landroidx/camera/core/ImageInfo;

    move-result-object v1

    invoke-interface {v1}, Landroidx/camera/core/ImageInfo;->getTagBundle()Landroidx/camera/core/impl/TagBundle;

    move-result-object v1

    .line 2316
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getImageInfo()Landroidx/camera/core/ImageInfo;

    move-result-object v2

    invoke-interface {v2}, Landroidx/camera/core/ImageInfo;->getTimestamp()J

    move-result-wide v2

    .line 2314
    invoke-static {v1, v2, v3, v0}, Landroidx/camera/core/ImmutableImageInfo;->create(Landroidx/camera/core/impl/TagBundle;JI)Landroidx/camera/core/ImageInfo;

    move-result-object v1

    .line 2318
    .local v1, "imageInfo":Landroidx/camera/core/ImageInfo;
    new-instance v2, Landroidx/camera/core/SettableImageProxy;

    invoke-direct {v2, p1, v6, v1}, Landroidx/camera/core/SettableImageProxy;-><init>(Landroidx/camera/core/ImageProxy;Landroid/util/Size;Landroidx/camera/core/ImageInfo;)V

    .line 2324
    .local v2, "dispatchedImageProxy":Landroidx/camera/core/ImageProxy;
    iget-object v3, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mViewPortCropRect:Landroid/graphics/Rect;

    if-eqz v3, :cond_2

    .line 2326
    iget-object v3, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mViewPortCropRect:Landroid/graphics/Rect;

    iget v4, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mRotationDegrees:I

    invoke-static {v3, v4, v6, v0}, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->getDispatchCropRect(Landroid/graphics/Rect;ILandroid/util/Size;I)Landroid/graphics/Rect;

    move-result-object v3

    invoke-interface {v2, v3}, Landroidx/camera/core/ImageProxy;->setCropRect(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 2328
    :cond_2
    iget-object v3, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mTargetRatio:Landroid/util/Rational;

    if-eqz v3, :cond_4

    .line 2330
    iget-object v3, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mTargetRatio:Landroid/util/Rational;

    .line 2331
    .local v3, "dispatchRatio":Landroid/util/Rational;
    rem-int/lit16 v4, v0, 0xb4

    if-eqz v4, :cond_3

    .line 2332
    new-instance v4, Landroid/util/Rational;

    iget-object v5, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mTargetRatio:Landroid/util/Rational;

    .line 2333
    invoke-virtual {v5}, Landroid/util/Rational;->getDenominator()I

    move-result v5

    iget-object v7, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mTargetRatio:Landroid/util/Rational;

    .line 2334
    invoke-virtual {v7}, Landroid/util/Rational;->getNumerator()I

    move-result v7

    invoke-direct {v4, v5, v7}, Landroid/util/Rational;-><init>(II)V

    move-object v3, v4

    .line 2336
    :cond_3
    new-instance v4, Landroid/util/Size;

    invoke-interface {v2}, Landroidx/camera/core/ImageProxy;->getWidth()I

    move-result v5

    .line 2337
    invoke-interface {v2}, Landroidx/camera/core/ImageProxy;->getHeight()I

    move-result v7

    invoke-direct {v4, v5, v7}, Landroid/util/Size;-><init>(II)V

    .line 2338
    .local v4, "sourceSize":Landroid/util/Size;
    invoke-static {v4, v3}, Landroidx/camera/core/internal/utils/ImageUtil;->isAspectRatioValid(Landroid/util/Size;Landroid/util/Rational;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2339
    nop

    .line 2340
    invoke-static {v4, v3}, Landroidx/camera/core/internal/utils/ImageUtil;->computeCropRectFromAspectRatio(Landroid/util/Size;Landroid/util/Rational;)Landroid/graphics/Rect;

    move-result-object v5

    .line 2339
    invoke-interface {v2, v5}, Landroidx/camera/core/ImageProxy;->setCropRect(Landroid/graphics/Rect;)V

    .line 2346
    .end local v3    # "dispatchRatio":Landroid/util/Rational;
    .end local v4    # "sourceSize":Landroid/util/Size;
    :cond_4
    :goto_1
    :try_start_1
    iget-object v3, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mListenerExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroidx/camera/core/ImageCapture$ImageCaptureRequest$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v2}, Landroidx/camera/core/ImageCapture$ImageCaptureRequest$$ExternalSyntheticLambda1;-><init>(Landroidx/camera/core/ImageCapture$ImageCaptureRequest;Landroidx/camera/core/ImageProxy;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2354
    goto :goto_2

    .line 2349
    :catch_1
    move-exception v3

    .line 2350
    .local v3, "e":Ljava/util/concurrent/RejectedExecutionException;
    const-string v4, "ImageCapture"

    const-string v5, "Unable to post to the supplied executor."

    invoke-static {v4, v5}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2353
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->close()V

    .line 2355
    .end local v3    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :goto_2
    return-void
.end method

.method synthetic lambda$dispatchImage$0$androidx-camera-core-ImageCapture$ImageCaptureRequest(Landroidx/camera/core/ImageProxy;)V
    .locals 1
    .param p1, "dispatchedImageProxy"    # Landroidx/camera/core/ImageProxy;

    .line 2347
    iget-object v0, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mCallback:Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;

    invoke-virtual {v0, p1}, Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;->onCaptureSuccess(Landroidx/camera/core/ImageProxy;)V

    .line 2348
    return-void
.end method

.method synthetic lambda$notifyCallbackError$1$androidx-camera-core-ImageCapture$ImageCaptureRequest(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "imageCaptureError"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 2409
    iget-object v0, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mCallback:Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;

    new-instance v1, Landroidx/camera/core/ImageCaptureException;

    invoke-direct {v1, p1, p2, p3}, Landroidx/camera/core/ImageCaptureException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;->onError(Landroidx/camera/core/ImageCaptureException;)V

    return-void
.end method

.method notifyCallbackError(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "imageCaptureError"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "imageCaptureError",
            "message",
            "cause"
        }
    .end annotation

    .line 2404
    iget-object v0, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mDispatched:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2405
    return-void

    .line 2409
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mListenerExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/core/ImageCapture$ImageCaptureRequest$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Landroidx/camera/core/ImageCapture$ImageCaptureRequest$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/core/ImageCapture$ImageCaptureRequest;ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2413
    goto :goto_0

    .line 2411
    :catch_0
    move-exception v0

    .line 2412
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    const-string v1, "ImageCapture"

    const-string v2, "Unable to post to the supplied executor."

    invoke-static {v1, v2}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2414
    .end local v0    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :goto_0
    return-void
.end method
