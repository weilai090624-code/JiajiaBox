.class public final Landroidx/camera/core/internal/utils/ImageUtil;
.super Ljava/lang/Object;
.source "ImageUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/internal/utils/ImageUtil$CodecFailedException;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageUtil"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static computeCropRectFromAspectRatio(Landroid/util/Size;Landroid/util/Rational;)Landroid/graphics/Rect;
    .locals 12
    .param p0, "sourceSize"    # Landroid/util/Size;
    .param p1, "aspectRatio"    # Landroid/util/Rational;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sourceSize",
            "aspectRatio"
        }
    .end annotation

    .line 206
    invoke-static {p1}, Landroidx/camera/core/internal/utils/ImageUtil;->isAspectRatioValid(Landroid/util/Rational;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    const-string v0, "ImageUtil"

    const-string v1, "Invalid view ratio."

    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const/4 v0, 0x0

    return-object v0

    .line 211
    :cond_0
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 212
    .local v0, "sourceWidth":I
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v1

    .line 213
    .local v1, "sourceHeight":I
    int-to-float v2, v0

    int-to-float v3, v1

    div-float/2addr v2, v3

    .line 214
    .local v2, "srcRatio":F
    const/4 v3, 0x0

    .line 215
    .local v3, "cropLeft":I
    const/4 v4, 0x0

    .line 216
    .local v4, "cropTop":I
    move v5, v0

    .line 217
    .local v5, "outputWidth":I
    move v6, v1

    .line 218
    .local v6, "outputHeight":I
    invoke-virtual {p1}, Landroid/util/Rational;->getNumerator()I

    move-result v7

    .line 219
    .local v7, "numerator":I
    invoke-virtual {p1}, Landroid/util/Rational;->getDenominator()I

    move-result v8

    .line 221
    .local v8, "denominator":I
    invoke-virtual {p1}, Landroid/util/Rational;->floatValue()F

    move-result v9

    cmpl-float v9, v9, v2

    if-lez v9, :cond_1

    .line 222
    int-to-float v9, v0

    int-to-float v10, v7

    div-float/2addr v9, v10

    int-to-float v10, v8

    mul-float v9, v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 223
    sub-int v9, v1, v6

    div-int/lit8 v4, v9, 0x2

    goto :goto_0

    .line 225
    :cond_1
    int-to-float v9, v1

    int-to-float v10, v8

    div-float/2addr v9, v10

    int-to-float v10, v7

    mul-float v9, v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 226
    sub-int v9, v0, v5

    div-int/lit8 v3, v9, 0x2

    .line 229
    :goto_0
    new-instance v9, Landroid/graphics/Rect;

    add-int v10, v3, v5

    add-int v11, v4, v6

    invoke-direct {v9, v3, v4, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v9
.end method

.method public static cropByteArray([BLandroid/graphics/Rect;)[B
    .locals 6
    .param p0, "data"    # [B
    .param p1, "cropRect"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "cropRect"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/camera/core/internal/utils/ImageUtil$CodecFailedException;
        }
    .end annotation

    .line 151
    const-string v0, "Decode byte array failed."

    if-nez p1, :cond_0

    .line 152
    return-object p0

    .line 155
    :cond_0
    const/4 v1, 0x0

    .line 157
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v2, v3}, Landroid/graphics/BitmapRegionDecoder;->newInstance([BIIZ)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v2

    .line 159
    .local v2, "decoder":Landroid/graphics/BitmapRegionDecoder;
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-virtual {v2, p1, v3}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v1, v3

    .line 160
    invoke-virtual {v2}, Landroid/graphics/BitmapRegionDecoder;->recycle()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .end local v2    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    nop

    .line 169
    if-eqz v1, :cond_2

    .line 174
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 175
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v2

    .line 176
    .local v2, "success":Z
    if-eqz v2, :cond_1

    .line 180
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 182
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 177
    :cond_1
    new-instance v3, Landroidx/camera/core/internal/utils/ImageUtil$CodecFailedException;

    const-string v4, "Encode bitmap failed."

    sget-object v5, Landroidx/camera/core/internal/utils/ImageUtil$CodecFailedException$FailureType;->ENCODE_FAILED:Landroidx/camera/core/internal/utils/ImageUtil$CodecFailedException$FailureType;

    invoke-direct {v3, v4, v5}, Landroidx/camera/core/internal/utils/ImageUtil$CodecFailedException;-><init>(Ljava/lang/String;Landroidx/camera/core/internal/utils/ImageUtil$CodecFailedException$FailureType;)V

    throw v3

    .line 170
    .end local v0    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "success":Z
    :cond_2
    new-instance v2, Landroidx/camera/core/internal/utils/ImageUtil$CodecFailedException;

    sget-object v3, Landroidx/camera/core/internal/utils/ImageUtil$CodecFailedException$FailureType;->DECODE_FAILED:Landroidx/camera/core/internal/utils/ImageUtil$CodecFailedException$FailureType;

    invoke-direct {v2, v0, v3}, Landroidx/camera/core/internal/utils/ImageUtil$CodecFailedException;-><init>(Ljava/lang/String;Landroidx/camera/core/internal/utils/ImageUtil$CodecFailedException$FailureType;)V

    throw v2

    .line 164
    :catch_0
    move-exception v2

    .line 165
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Landroidx/camera/core/internal/utils/ImageUtil$CodecFailedException;

    sget-object v4, Landroidx/camera/core/internal/utils/ImageUtil$CodecFailedException$FailureType;->DECODE_FAILED:Landroidx/camera/core/internal/utils/ImageUtil$CodecFailedException$FailureType;

    invoke-direct {v3, v0, v4}, Landroidx/camera/core/internal/utils/ImageUtil$CodecFailedException;-><init>(Ljava/lang/String;Landroidx/camera/core/internal/utils/ImageUtil$CodecFailedException$FailureType;)V

    throw v3

    .line 161
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Landroidx/camera/core/internal/utils/ImageUtil$CodecFailedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Decode byte array failed with illegal argument."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroidx/camera/core/internal/utils/ImageUtil$CodecFailedException$FailureType;->DECODE_FAILED:Landroidx/camera/core/internal/utils/ImageUtil$CodecFailedException$FailureType;

    invoke-direct {v2, v3, v4}, Landroidx/camera/core/internal/utils/ImageUtil$CodecFailedException;-><init>(Ljava/lang/String;Landroidx/camera/core/internal/utils/ImageUtil$CodecFailedException$FailureType;)V

    throw v2
.end method

.method public static getRotatedAspectRatio(ILandroid/util/Rational;)Landroid/util/Rational;
    .locals 3
    .param p0, "rotationDegrees"    # I
    .param p1, "aspectRatio"    # Landroid/util/Rational;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rotationDegrees",
            "aspectRatio"
        }
    .end annotation

    .line 70
    const/16 v0, 0x5a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10e

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    new-instance v0, Landroid/util/Rational;

    invoke-virtual {p1}, Landroid/util/Rational;->getNumerator()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Rational;->getDenominator()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Rational;-><init>(II)V

    return-object v0

    .line 71
    :cond_1
    :goto_0
    invoke-static {p1}, Landroidx/camera/core/internal/utils/ImageUtil;->inverseRational(Landroid/util/Rational;)Landroid/util/Rational;

    move-result-object v0

    return-object v0
.end method

.method public static imageToJpegByteArray(Landroidx/camera/core/ImageProxy;)[B
    .locals 3
    .param p0, "image"    # Landroidx/camera/core/ImageProxy;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "image"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/camera/core/internal/utils/ImageUtil$CodecFailedException;
        }
    .end annotation

    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, "data":[B
    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->getFormat()I

    move-result v1

    const/16 v2, 0x100

    if-ne v1, v2, :cond_0

    .line 83
    invoke-static {p0}, Landroidx/camera/core/internal/utils/ImageUtil;->jpegImageToJpegByteArray(Landroidx/camera/core/ImageProxy;)[B

    move-result-object v0

    goto :goto_0

    .line 84
    :cond_0
    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->getFormat()I

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_1

    .line 85
    invoke-static {p0}, Landroidx/camera/core/internal/utils/ImageUtil;->yuvImageToJpegByteArray(Landroidx/camera/core/ImageProxy;)[B

    move-result-object v0

    goto :goto_0

    .line 87
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized image format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->getFormat()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImageUtil"

    invoke-static {v2, v1}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :goto_0
    return-object v0
.end method

.method private static inverseRational(Landroid/util/Rational;)Landroid/util/Rational;
    .locals 3
    .param p0, "rational"    # Landroid/util/Rational;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rational"
        }
    .end annotation

    .line 257
    if-nez p0, :cond_0

    .line 258
    return-object p0

    .line 260
    :cond_0
    new-instance v0, Landroid/util/Rational;

    .line 261
    invoke-virtual {p0}, Landroid/util/Rational;->getDenominator()I

    move-result v1

    .line 262
    invoke-virtual {p0}, Landroid/util/Rational;->getNumerator()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Rational;-><init>(II)V

    .line 260
    return-object v0
.end method

.method public static isAspectRatioValid(Landroid/util/Rational;)Z
    .locals 2
    .param p0, "aspectRatio"    # Landroid/util/Rational;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aspectRatio"
        }
    .end annotation

    .line 187
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/util/Rational;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/util/Rational;->isNaN()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAspectRatioValid(Landroid/util/Size;Landroid/util/Rational;)Z
    .locals 2
    .param p0, "sourceSize"    # Landroid/util/Size;
    .param p1, "aspectRatio"    # Landroid/util/Rational;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sourceSize",
            "aspectRatio"
        }
    .end annotation

    .line 193
    if-eqz p1, :cond_0

    .line 194
    invoke-virtual {p1}, Landroid/util/Rational;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 195
    invoke-static {p0, p1}, Landroidx/camera/core/internal/utils/ImageUtil;->isCropAspectRatioHasEffect(Landroid/util/Size;Landroid/util/Rational;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {p1}, Landroid/util/Rational;->isNaN()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 193
    :goto_0
    return v0
.end method

.method private static isCropAspectRatioHasEffect(Landroid/util/Size;Landroid/util/Rational;)Z
    .locals 6
    .param p0, "sourceSize"    # Landroid/util/Size;
    .param p1, "aspectRatio"    # Landroid/util/Rational;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sourceSize",
            "aspectRatio"
        }
    .end annotation

    .line 247
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 248
    .local v0, "sourceWidth":I
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v1

    .line 249
    .local v1, "sourceHeight":I
    invoke-virtual {p1}, Landroid/util/Rational;->getNumerator()I

    move-result v2

    .line 250
    .local v2, "numerator":I
    invoke-virtual {p1}, Landroid/util/Rational;->getDenominator()I

    move-result v3

    .line 252
    .local v3, "denominator":I
    int-to-float v4, v0

    int-to-float v5, v2

    div-float/2addr v4, v5

    int-to-float v5, v3

    mul-float v4, v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    if-ne v1, v4, :cond_1

    int-to-float v4, v1

    int-to-float v5, v3

    div-float/2addr v4, v5

    int-to-float v5, v2

    mul-float v4, v4, v5

    .line 253
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    if-eq v0, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    .line 252
    :goto_1
    return v4
.end method

.method private static jpegImageToJpegByteArray(Landroidx/camera/core/ImageProxy;)[B
    .locals 4
    .param p0, "image"    # Landroidx/camera/core/ImageProxy;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "image"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/camera/core/internal/utils/ImageUtil$CodecFailedException;
        }
    .end annotation

    .line 273
    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->getPlanes()[Landroidx/camera/core/ImageProxy$PlaneProxy;

    move-result-object v0

    .line 274
    .local v0, "planes":[Landroidx/camera/core/ImageProxy$PlaneProxy;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-interface {v1}, Landroidx/camera/core/ImageProxy$PlaneProxy;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 275
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    new-array v2, v2, [B

    .line 276
    .local v2, "data":[B
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 277
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 278
    invoke-static {p0}, Landroidx/camera/core/internal/utils/ImageUtil;->shouldCropImage(Landroidx/camera/core/ImageProxy;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 279
    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->getCropRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/camera/core/internal/utils/ImageUtil;->cropByteArray([BLandroid/graphics/Rect;)[B

    move-result-object v2

    .line 281
    :cond_0
    return-object v2
.end method

.method public static min(FFFF)F
    .locals 2
    .param p0, "value1"    # F
    .param p1, "value2"    # F
    .param p2, "value3"    # F
    .param p3, "value4"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "value1",
            "value2",
            "value3",
            "value4"
        }
    .end annotation

    .line 60
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method private static nv21ToJpeg([BIILandroid/graphics/Rect;)[B
    .locals 8
    .param p0, "nv21"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "cropRect"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nv21",
            "width",
            "height",
            "cropRect"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/camera/core/internal/utils/ImageUtil$CodecFailedException;
        }
    .end annotation

    .line 234
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 235
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    new-instance v7, Landroid/graphics/YuvImage;

    const/16 v3, 0x11

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v1 .. v6}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 236
    .local v1, "yuv":Landroid/graphics/YuvImage;
    nop

    .line 238
    if-nez p3, :cond_0

    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_0
    move-object v2, p3

    .line 237
    :goto_0
    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    move-result v2

    .line 239
    .local v2, "success":Z
    if-eqz v2, :cond_1

    .line 243
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 240
    :cond_1
    new-instance v3, Landroidx/camera/core/internal/utils/ImageUtil$CodecFailedException;

    const-string v4, "YuvImage failed to encode jpeg."

    sget-object v5, Landroidx/camera/core/internal/utils/ImageUtil$CodecFailedException$FailureType;->ENCODE_FAILED:Landroidx/camera/core/internal/utils/ImageUtil$CodecFailedException$FailureType;

    invoke-direct {v3, v4, v5}, Landroidx/camera/core/internal/utils/ImageUtil$CodecFailedException;-><init>(Ljava/lang/String;Landroidx/camera/core/internal/utils/ImageUtil$CodecFailedException$FailureType;)V

    throw v3
.end method

.method private static shouldCropImage(Landroidx/camera/core/ImageProxy;)Z
    .locals 4
    .param p0, "image"    # Landroidx/camera/core/ImageProxy;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "image"
        }
    .end annotation

    .line 266
    new-instance v0, Landroid/util/Size;

    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->getWidth()I

    move-result v1

    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    .line 267
    .local v0, "sourceSize":Landroid/util/Size;
    new-instance v1, Landroid/util/Size;

    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->getCropRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->getCropRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    .line 269
    .local v1, "targetSize":Landroid/util/Size;
    invoke-virtual {v1, v0}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    return v2
.end method

.method public static sizeToVertexes(Landroid/util/Size;)[F
    .locals 7
    .param p0, "size"    # Landroid/util/Size;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 52
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    .line 53
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/16 v4, 0x8

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    const/4 v5, 0x1

    aput v6, v4, v5

    const/4 v5, 0x2

    aput v0, v4, v5

    const/4 v0, 0x3

    aput v6, v4, v0

    const/4 v0, 0x4

    aput v1, v4, v0

    const/4 v0, 0x5

    aput v2, v4, v0

    const/4 v0, 0x6

    aput v6, v4, v0

    const/4 v0, 0x7

    aput v3, v4, v0

    .line 52
    return-object v4
.end method

.method private static yuvImageToJpegByteArray(Landroidx/camera/core/ImageProxy;)[B
    .locals 4
    .param p0, "image"    # Landroidx/camera/core/ImageProxy;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "image"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/camera/core/internal/utils/ImageUtil$CodecFailedException;
        }
    .end annotation

    .line 286
    nop

    .line 287
    invoke-static {p0}, Landroidx/camera/core/internal/utils/ImageUtil;->yuv_420_888toNv21(Landroidx/camera/core/ImageProxy;)[B

    move-result-object v0

    .line 288
    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->getWidth()I

    move-result v1

    .line 289
    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->getHeight()I

    move-result v2

    .line 290
    invoke-static {p0}, Landroidx/camera/core/internal/utils/ImageUtil;->shouldCropImage(Landroidx/camera/core/ImageProxy;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->getCropRect()Landroid/graphics/Rect;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 286
    :goto_0
    invoke-static {v0, v1, v2, v3}, Landroidx/camera/core/internal/utils/ImageUtil;->nv21ToJpeg([BIILandroid/graphics/Rect;)[B

    move-result-object v0

    return-object v0
.end method

.method public static yuv_420_888toNv21(Landroidx/camera/core/ImageProxy;)[B
    .locals 25
    .param p0, "image"    # Landroidx/camera/core/ImageProxy;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "image"
        }
    .end annotation

    .line 95
    invoke-interface/range {p0 .. p0}, Landroidx/camera/core/ImageProxy;->getPlanes()[Landroidx/camera/core/ImageProxy$PlaneProxy;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 96
    .local v0, "yPlane":Landroidx/camera/core/ImageProxy$PlaneProxy;
    invoke-interface/range {p0 .. p0}, Landroidx/camera/core/ImageProxy;->getPlanes()[Landroidx/camera/core/ImageProxy$PlaneProxy;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    .line 97
    .local v2, "uPlane":Landroidx/camera/core/ImageProxy$PlaneProxy;
    invoke-interface/range {p0 .. p0}, Landroidx/camera/core/ImageProxy;->getPlanes()[Landroidx/camera/core/ImageProxy$PlaneProxy;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    .line 99
    .local v3, "vPlane":Landroidx/camera/core/ImageProxy$PlaneProxy;
    invoke-interface {v0}, Landroidx/camera/core/ImageProxy$PlaneProxy;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 100
    .local v5, "yBuffer":Ljava/nio/ByteBuffer;
    invoke-interface {v2}, Landroidx/camera/core/ImageProxy$PlaneProxy;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 101
    .local v6, "uBuffer":Ljava/nio/ByteBuffer;
    invoke-interface {v3}, Landroidx/camera/core/ImageProxy$PlaneProxy;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 102
    .local v7, "vBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 103
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 104
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 106
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    .line 108
    .local v8, "ySize":I
    const/4 v9, 0x0

    .line 110
    .local v9, "position":I
    invoke-interface/range {p0 .. p0}, Landroidx/camera/core/ImageProxy;->getWidth()I

    move-result v10

    invoke-interface/range {p0 .. p0}, Landroidx/camera/core/ImageProxy;->getHeight()I

    move-result v11

    mul-int v10, v10, v11

    div-int/2addr v10, v4

    add-int/2addr v10, v8

    new-array v10, v10, [B

    .line 113
    .local v10, "nv21":[B
    const/4 v11, 0x0

    .local v11, "row":I
    :goto_0
    invoke-interface/range {p0 .. p0}, Landroidx/camera/core/ImageProxy;->getHeight()I

    move-result v12

    if-ge v11, v12, :cond_0

    .line 114
    invoke-interface/range {p0 .. p0}, Landroidx/camera/core/ImageProxy;->getWidth()I

    move-result v12

    invoke-virtual {v5, v10, v9, v12}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 115
    invoke-interface/range {p0 .. p0}, Landroidx/camera/core/ImageProxy;->getWidth()I

    move-result v12

    add-int/2addr v9, v12

    .line 116
    nop

    .line 117
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v12

    invoke-interface/range {p0 .. p0}, Landroidx/camera/core/ImageProxy;->getWidth()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-interface {v0}, Landroidx/camera/core/ImageProxy$PlaneProxy;->getRowStride()I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v8, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 116
    invoke-virtual {v5, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 113
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 120
    .end local v11    # "row":I
    :cond_0
    invoke-interface/range {p0 .. p0}, Landroidx/camera/core/ImageProxy;->getHeight()I

    move-result v11

    div-int/2addr v11, v4

    .line 121
    .local v11, "chromaHeight":I
    invoke-interface/range {p0 .. p0}, Landroidx/camera/core/ImageProxy;->getWidth()I

    move-result v12

    div-int/2addr v12, v4

    .line 122
    .local v12, "chromaWidth":I
    invoke-interface {v3}, Landroidx/camera/core/ImageProxy$PlaneProxy;->getRowStride()I

    move-result v4

    .line 123
    .local v4, "vRowStride":I
    invoke-interface {v2}, Landroidx/camera/core/ImageProxy$PlaneProxy;->getRowStride()I

    move-result v13

    .line 124
    .local v13, "uRowStride":I
    invoke-interface {v3}, Landroidx/camera/core/ImageProxy$PlaneProxy;->getPixelStride()I

    move-result v14

    .line 125
    .local v14, "vPixelStride":I
    invoke-interface {v2}, Landroidx/camera/core/ImageProxy$PlaneProxy;->getPixelStride()I

    move-result v15

    .line 129
    .local v15, "uPixelStride":I
    new-array v1, v4, [B

    .line 130
    .local v1, "vLineBuffer":[B
    move-object/from16 v17, v0

    .end local v0    # "yPlane":Landroidx/camera/core/ImageProxy$PlaneProxy;
    .local v17, "yPlane":Landroidx/camera/core/ImageProxy$PlaneProxy;
    new-array v0, v13, [B

    .line 131
    .local v0, "uLineBuffer":[B
    const/16 v18, 0x0

    move/from16 v24, v18

    move-object/from16 v18, v2

    move/from16 v2, v24

    .local v2, "row":I
    .local v18, "uPlane":Landroidx/camera/core/ImageProxy$PlaneProxy;
    :goto_1
    if-ge v2, v11, :cond_2

    .line 132
    move-object/from16 v19, v3

    .end local v3    # "vPlane":Landroidx/camera/core/ImageProxy$PlaneProxy;
    .local v19, "vPlane":Landroidx/camera/core/ImageProxy$PlaneProxy;
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    move/from16 v20, v4

    const/4 v4, 0x0

    .end local v4    # "vRowStride":I
    .local v20, "vRowStride":I
    invoke-virtual {v7, v1, v4, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 133
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-static {v13, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v6, v0, v4, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 134
    const/4 v3, 0x0

    .line 135
    .local v3, "vLineBufferPosition":I
    const/16 v16, 0x0

    .line 136
    .local v16, "uLineBufferPosition":I
    const/16 v21, 0x0

    move/from16 v4, v21

    .local v4, "col":I
    :goto_2
    if-ge v4, v12, :cond_1

    .line 137
    add-int/lit8 v22, v9, 0x1

    .end local v9    # "position":I
    .local v22, "position":I
    aget-byte v23, v1, v3

    aput-byte v23, v10, v9

    .line 138
    add-int/lit8 v9, v22, 0x1

    .end local v22    # "position":I
    .restart local v9    # "position":I
    aget-byte v23, v0, v16

    aput-byte v23, v10, v22

    .line 139
    add-int/2addr v3, v14

    .line 140
    add-int v16, v16, v15

    .line 136
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 131
    .end local v3    # "vLineBufferPosition":I
    .end local v4    # "col":I
    .end local v16    # "uLineBufferPosition":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v3, v19

    move/from16 v4, v20

    goto :goto_1

    .line 144
    .end local v2    # "row":I
    .end local v19    # "vPlane":Landroidx/camera/core/ImageProxy$PlaneProxy;
    .end local v20    # "vRowStride":I
    .local v3, "vPlane":Landroidx/camera/core/ImageProxy$PlaneProxy;
    .local v4, "vRowStride":I
    :cond_2
    return-object v10
.end method
