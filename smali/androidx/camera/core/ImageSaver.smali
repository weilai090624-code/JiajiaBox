.class final Landroidx/camera/core/ImageSaver;
.super Ljava/lang/Object;
.source "ImageSaver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/ImageSaver$OnImageSavedCallback;,
        Landroidx/camera/core/ImageSaver$SaveError;
    }
.end annotation


# static fields
.field private static final COPY_BUFFER_SIZE:I = 0x400

.field private static final NOT_PENDING:I = 0x0

.field private static final PENDING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ImageSaver"

.field private static final TEMP_FILE_PREFIX:Ljava/lang/String; = "CameraX"

.field private static final TEMP_FILE_SUFFIX:Ljava/lang/String; = ".tmp"


# instance fields
.field private final mCallback:Landroidx/camera/core/ImageSaver$OnImageSavedCallback;

.field private final mImage:Landroidx/camera/core/ImageProxy;

.field private final mOrientation:I

.field private final mOutputFileOptions:Landroidx/camera/core/ImageCapture$OutputFileOptions;

.field private final mSequentialIoExecutor:Ljava/util/concurrent/Executor;

.field private final mUserCallbackExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Landroidx/camera/core/ImageProxy;Landroidx/camera/core/ImageCapture$OutputFileOptions;ILjava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageSaver$OnImageSavedCallback;)V
    .registers 7
    .param p1, "image"    # Landroidx/camera/core/ImageProxy;
    .param p2, "outputFileOptions"    # Landroidx/camera/core/ImageCapture$OutputFileOptions;
    .param p3, "orientation"    # I
    .param p4, "userCallbackExecutor"    # Ljava/util/concurrent/Executor;
    .param p5, "sequentialIoExecutor"    # Ljava/util/concurrent/Executor;
    .param p6, "callback"    # Landroidx/camera/core/ImageSaver$OnImageSavedCallback;
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
            "image",
            "outputFileOptions",
            "orientation",
            "userCallbackExecutor",
            "sequentialIoExecutor",
            "callback"
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Landroidx/camera/core/ImageSaver;->mImage:Landroidx/camera/core/ImageProxy;

    .line 74
    iput-object p2, p0, Landroidx/camera/core/ImageSaver;->mOutputFileOptions:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    .line 75
    iput p3, p0, Landroidx/camera/core/ImageSaver;->mOrientation:I

    .line 76
    iput-object p6, p0, Landroidx/camera/core/ImageSaver;->mCallback:Landroidx/camera/core/ImageSaver$OnImageSavedCallback;

    .line 77
    iput-object p4, p0, Landroidx/camera/core/ImageSaver;->mUserCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 78
    iput-object p5, p0, Landroidx/camera/core/ImageSaver;->mSequentialIoExecutor:Ljava/util/concurrent/Executor;

    .line 79
    return-void
.end method

.method private copyTempFileToOutputStream(Ljava/io/File;Ljava/io/OutputStream;)V
    .registers 7
    .param p1, "tempFile"    # Ljava/io/File;
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tempFile",
            "outputStream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 296
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 297
    .local v0, "in":Ljava/io/InputStream;
    const/16 v1, 0x400

    :try_start_7
    new-array v1, v1, [B

    .line 299
    .local v1, "buf":[B
    :goto_9
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v3, v2

    .local v3, "len":I
    if-lez v2, :cond_15

    .line 300
    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_19

    goto :goto_9

    .line 302
    .end local v1    # "buf":[B
    .end local v3    # "len":I
    :cond_15
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 303
    .end local v0    # "in":Ljava/io/InputStream;
    return-void

    .line 296
    .restart local v0    # "in":Ljava/io/InputStream;
    :catchall_19
    move-exception v1

    :try_start_1a
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_1e

    goto :goto_22

    :catchall_1e
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_22
    throw v1
.end method

.method private copyTempFileToUri(Ljava/io/File;Landroid/net/Uri;)Z
    .registers 6
    .param p1, "tempFile"    # Ljava/io/File;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tempFile",
            "uri"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    iget-object v0, p0, Landroidx/camera/core/ImageSaver;->mOutputFileOptions:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    .line 284
    invoke-virtual {v0}, Landroidx/camera/core/ImageCapture$OutputFileOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0

    .line 285
    .local v0, "outputStream":Ljava/io/OutputStream;
    if-nez v0, :cond_14

    .line 287
    nop

    .line 290
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 287
    :cond_12
    const/4 v1, 0x0

    return v1

    .line 289
    :cond_14
    :try_start_14
    invoke-direct {p0, p1, v0}, Landroidx/camera/core/ImageSaver;->copyTempFileToOutputStream(Ljava/io/File;Ljava/io/OutputStream;)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_1e

    .line 290
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 291
    .end local v0    # "outputStream":Ljava/io/OutputStream;
    :cond_1c
    const/4 v0, 0x1

    return v0

    .line 283
    .restart local v0    # "outputStream":Ljava/io/OutputStream;
    :catchall_1e
    move-exception v1

    if-eqz v0, :cond_29

    :try_start_21
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_25

    goto :goto_29

    :catchall_25
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_29
    :goto_29
    throw v1
.end method

.method private isSaveToFile()Z
    .registers 2

    .line 252
    iget-object v0, p0, Landroidx/camera/core/ImageSaver;->mOutputFileOptions:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    invoke-virtual {v0}, Landroidx/camera/core/ImageCapture$OutputFileOptions;->getFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private isSaveToMediaStore()Z
    .registers 2

    .line 246
    iget-object v0, p0, Landroidx/camera/core/ImageSaver;->mOutputFileOptions:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    invoke-virtual {v0}, Landroidx/camera/core/ImageCapture$OutputFileOptions;->getSaveCollection()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroidx/camera/core/ImageSaver;->mOutputFileOptions:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    .line 247
    invoke-virtual {v0}, Landroidx/camera/core/ImageCapture$OutputFileOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroidx/camera/core/ImageSaver;->mOutputFileOptions:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    .line 248
    invoke-virtual {v0}, Landroidx/camera/core/ImageCapture$OutputFileOptions;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 246
    :goto_1b
    return v0
.end method

.method private isSaveToOutputStream()Z
    .registers 2

    .line 256
    iget-object v0, p0, Landroidx/camera/core/ImageSaver;->mOutputFileOptions:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    invoke-virtual {v0}, Landroidx/camera/core/ImageCapture$OutputFileOptions;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private postError(Landroidx/camera/core/ImageSaver$SaveError;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 7
    .param p1, "saveError"    # Landroidx/camera/core/ImageSaver$SaveError;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10
        }
        names = {
            "saveError",
            "message",
            "cause"
        }
    .end annotation

    .line 319
    :try_start_0
    iget-object v0, p0, Landroidx/camera/core/ImageSaver;->mUserCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/core/ImageSaver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Landroidx/camera/core/ImageSaver$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/core/ImageSaver;Landroidx/camera/core/ImageSaver$SaveError;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_a
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_a} :catch_b

    .line 323
    goto :goto_13

    .line 320
    :catch_b
    move-exception v0

    .line 321
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    const-string v1, "ImageSaver"

    const-string v2, "Application executor rejected executing OnImageSavedCallback.onError callback. Skipping."

    invoke-static {v1, v2}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    .end local v0    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :goto_13
    return-void
.end method

.method private postSuccess(Landroid/net/Uri;)V
    .registers 5
    .param p1, "outputUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outputUri"
        }
    .end annotation

    .line 307
    :try_start_0
    iget-object v0, p0, Landroidx/camera/core/ImageSaver;->mUserCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/core/ImageSaver$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroidx/camera/core/ImageSaver$$ExternalSyntheticLambda2;-><init>(Landroidx/camera/core/ImageSaver;Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_a
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_a} :catch_b

    .line 313
    goto :goto_13

    .line 309
    :catch_b
    move-exception v0

    .line 310
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    const-string v1, "ImageSaver"

    const-string v2, "Application executor rejected executing OnImageSavedCallback.onImageSaved callback. Skipping."

    invoke-static {v1, v2}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    .end local v0    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :goto_13
    return-void
.end method

.method private saveImageToTempFile()Ljava/io/File;
    .registers 15

    .line 102
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Landroidx/camera/core/ImageSaver;->isSaveToFile()Z

    move-result v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_5} :catch_114

    const-string v2, ".tmp"

    const-string v3, "CameraX"

    if-eqz v1, :cond_38

    .line 104
    :try_start_b
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Landroidx/camera/core/ImageSaver;->mOutputFileOptions:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    invoke-virtual {v4}, Landroidx/camera/core/ImageCapture$OutputFileOptions;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 105
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v1, "tempFile":Ljava/io/File;
    goto :goto_3c

    .line 107
    .end local v1    # "tempFile":Ljava/io/File;
    :cond_38
    invoke-static {v3, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_3c} :catch_114

    .line 112
    .restart local v1    # "tempFile":Ljava/io/File;
    :goto_3c
    nop

    .line 114
    const/4 v2, 0x0

    .line 115
    .local v2, "saveError":Landroidx/camera/core/ImageSaver$SaveError;
    const/4 v3, 0x0

    .line 116
    .local v3, "errorMessage":Ljava/lang/String;
    const/4 v4, 0x0

    .line 117
    .local v4, "exception":Ljava/lang/Exception;
    :try_start_40
    iget-object v5, p0, Landroidx/camera/core/ImageSaver;->mImage:Landroidx/camera/core/ImageProxy;
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_42} :catch_103
    .catch Ljava/lang/IllegalArgumentException; {:try_start_40 .. :try_end_42} :catch_101
    .catch Landroidx/camera/core/internal/utils/ImageUtil$CodecFailedException; {:try_start_40 .. :try_end_42} :catch_e0

    .line 118
    .local v5, "imageToClose":Landroidx/camera/core/ImageProxy;
    :try_start_42
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_47
    .catchall {:try_start_42 .. :try_end_47} :catchall_d4

    .line 119
    .local v6, "output":Ljava/io/FileOutputStream;
    :try_start_47
    iget-object v7, p0, Landroidx/camera/core/ImageSaver;->mImage:Landroidx/camera/core/ImageProxy;

    invoke-static {v7}, Landroidx/camera/core/internal/utils/ImageUtil;->imageToJpegByteArray(Landroidx/camera/core/ImageProxy;)[B

    move-result-object v7

    .line 120
    .local v7, "bytes":[B
    invoke-virtual {v6, v7}, Ljava/io/FileOutputStream;->write([B)V

    .line 122
    invoke-static {v1}, Landroidx/camera/core/impl/utils/Exif;->createFromFile(Ljava/io/File;)Landroidx/camera/core/impl/utils/Exif;

    move-result-object v8

    .line 123
    .local v8, "exif":Landroidx/camera/core/impl/utils/Exif;
    invoke-virtual {v8}, Landroidx/camera/core/impl/utils/Exif;->attachTimestamp()V

    .line 129
    new-instance v9, Landroidx/camera/core/internal/compat/workaround/ExifRotationAvailability;

    invoke-direct {v9}, Landroidx/camera/core/internal/compat/workaround/ExifRotationAvailability;-><init>()V

    iget-object v10, p0, Landroidx/camera/core/ImageSaver;->mImage:Landroidx/camera/core/ImageProxy;

    invoke-virtual {v9, v10}, Landroidx/camera/core/internal/compat/workaround/ExifRotationAvailability;->shouldUseExifOrientation(Landroidx/camera/core/ImageProxy;)Z

    move-result v9

    if-eqz v9, :cond_8e

    .line 130
    iget-object v9, p0, Landroidx/camera/core/ImageSaver;->mImage:Landroidx/camera/core/ImageProxy;

    invoke-interface {v9}, Landroidx/camera/core/ImageProxy;->getPlanes()[Landroidx/camera/core/ImageProxy$PlaneProxy;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-interface {v9}, Landroidx/camera/core/ImageProxy$PlaneProxy;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 132
    .local v9, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 134
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v10

    new-array v10, v10, [B

    .line 135
    .local v10, "data":[B
    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 136
    new-instance v11, Ljava/io/ByteArrayInputStream;

    invoke-direct {v11, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 137
    .local v11, "inputStream":Ljava/io/InputStream;
    invoke-static {v11}, Landroidx/camera/core/impl/utils/Exif;->createFromInputStream(Ljava/io/InputStream;)Landroidx/camera/core/impl/utils/Exif;

    move-result-object v12

    .line 139
    .local v12, "originalExif":Landroidx/camera/core/impl/utils/Exif;
    invoke-virtual {v12}, Landroidx/camera/core/impl/utils/Exif;->getOrientation()I

    move-result v13

    invoke-virtual {v8, v13}, Landroidx/camera/core/impl/utils/Exif;->setOrientation(I)V

    .line 140
    .end local v9    # "buffer":Ljava/nio/ByteBuffer;
    .end local v10    # "data":[B
    .end local v11    # "inputStream":Ljava/io/InputStream;
    .end local v12    # "originalExif":Landroidx/camera/core/impl/utils/Exif;
    goto :goto_93

    .line 141
    :cond_8e
    iget v9, p0, Landroidx/camera/core/ImageSaver;->mOrientation:I

    invoke-virtual {v8, v9}, Landroidx/camera/core/impl/utils/Exif;->rotate(I)V

    .line 144
    :goto_93
    iget-object v9, p0, Landroidx/camera/core/ImageSaver;->mOutputFileOptions:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    invoke-virtual {v9}, Landroidx/camera/core/ImageCapture$OutputFileOptions;->getMetadata()Landroidx/camera/core/ImageCapture$Metadata;

    move-result-object v9

    .line 145
    .local v9, "metadata":Landroidx/camera/core/ImageCapture$Metadata;
    invoke-virtual {v9}, Landroidx/camera/core/ImageCapture$Metadata;->isReversedHorizontal()Z

    move-result v10

    if-eqz v10, :cond_a2

    .line 146
    invoke-virtual {v8}, Landroidx/camera/core/impl/utils/Exif;->flipHorizontally()V

    .line 148
    :cond_a2
    invoke-virtual {v9}, Landroidx/camera/core/ImageCapture$Metadata;->isReversedVertical()Z

    move-result v10

    if-eqz v10, :cond_ab

    .line 149
    invoke-virtual {v8}, Landroidx/camera/core/impl/utils/Exif;->flipVertically()V

    .line 151
    :cond_ab
    invoke-virtual {v9}, Landroidx/camera/core/ImageCapture$Metadata;->getLocation()Landroid/location/Location;

    move-result-object v10

    if-eqz v10, :cond_be

    .line 152
    iget-object v10, p0, Landroidx/camera/core/ImageSaver;->mOutputFileOptions:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    invoke-virtual {v10}, Landroidx/camera/core/ImageCapture$OutputFileOptions;->getMetadata()Landroidx/camera/core/ImageCapture$Metadata;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/camera/core/ImageCapture$Metadata;->getLocation()Landroid/location/Location;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroidx/camera/core/impl/utils/Exif;->attachLocation(Landroid/location/Location;)V

    .line 155
    :cond_be
    invoke-virtual {v8}, Landroidx/camera/core/impl/utils/Exif;->save()V
    :try_end_c1
    .catchall {:try_start_47 .. :try_end_c1} :catchall_ca

    .line 156
    .end local v7    # "bytes":[B
    .end local v8    # "exif":Landroidx/camera/core/impl/utils/Exif;
    .end local v9    # "metadata":Landroidx/camera/core/ImageCapture$Metadata;
    :try_start_c1
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_c4
    .catchall {:try_start_c1 .. :try_end_c4} :catchall_d4

    .end local v6    # "output":Ljava/io/FileOutputStream;
    if-eqz v5, :cond_109

    :try_start_c6
    invoke-interface {v5}, Landroidx/camera/core/ImageProxy;->close()V
    :try_end_c9
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_c9} :catch_103
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c6 .. :try_end_c9} :catch_101
    .catch Landroidx/camera/core/internal/utils/ImageUtil$CodecFailedException; {:try_start_c6 .. :try_end_c9} :catch_e0

    goto :goto_109

    .line 117
    .restart local v6    # "output":Ljava/io/FileOutputStream;
    :catchall_ca
    move-exception v7

    :try_start_cb
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_ce
    .catchall {:try_start_cb .. :try_end_ce} :catchall_cf

    goto :goto_d3

    :catchall_cf
    move-exception v8

    :try_start_d0
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "tempFile":Ljava/io/File;
    .end local v2    # "saveError":Landroidx/camera/core/ImageSaver$SaveError;
    .end local v3    # "errorMessage":Ljava/lang/String;
    .end local v4    # "exception":Ljava/lang/Exception;
    .end local v5    # "imageToClose":Landroidx/camera/core/ImageProxy;
    :goto_d3
    throw v7
    :try_end_d4
    .catchall {:try_start_d0 .. :try_end_d4} :catchall_d4

    .end local v6    # "output":Ljava/io/FileOutputStream;
    .restart local v1    # "tempFile":Ljava/io/File;
    .restart local v2    # "saveError":Landroidx/camera/core/ImageSaver$SaveError;
    .restart local v3    # "errorMessage":Ljava/lang/String;
    .restart local v4    # "exception":Ljava/lang/Exception;
    .restart local v5    # "imageToClose":Landroidx/camera/core/ImageProxy;
    :catchall_d4
    move-exception v6

    if-eqz v5, :cond_df

    :try_start_d7
    invoke-interface {v5}, Landroidx/camera/core/ImageProxy;->close()V
    :try_end_da
    .catchall {:try_start_d7 .. :try_end_da} :catchall_db

    goto :goto_df

    :catchall_db
    move-exception v7

    :try_start_dc
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "tempFile":Ljava/io/File;
    .end local v2    # "saveError":Landroidx/camera/core/ImageSaver$SaveError;
    .end local v3    # "errorMessage":Ljava/lang/String;
    .end local v4    # "exception":Ljava/lang/Exception;
    :cond_df
    :goto_df
    throw v6
    :try_end_e0
    .catch Ljava/io/IOException; {:try_start_dc .. :try_end_e0} :catch_103
    .catch Ljava/lang/IllegalArgumentException; {:try_start_dc .. :try_end_e0} :catch_101
    .catch Landroidx/camera/core/internal/utils/ImageUtil$CodecFailedException; {:try_start_dc .. :try_end_e0} :catch_e0

    .line 160
    .end local v5    # "imageToClose":Landroidx/camera/core/ImageProxy;
    .restart local v1    # "tempFile":Ljava/io/File;
    .restart local v2    # "saveError":Landroidx/camera/core/ImageSaver$SaveError;
    .restart local v3    # "errorMessage":Ljava/lang/String;
    .restart local v4    # "exception":Ljava/lang/Exception;
    :catch_e0
    move-exception v5

    .line 161
    .local v5, "e":Landroidx/camera/core/internal/utils/ImageUtil$CodecFailedException;
    sget-object v6, Landroidx/camera/core/ImageSaver$1;->$SwitchMap$androidx$camera$core$internal$utils$ImageUtil$CodecFailedException$FailureType:[I

    invoke-virtual {v5}, Landroidx/camera/core/internal/utils/ImageUtil$CodecFailedException;->getFailureType()Landroidx/camera/core/internal/utils/ImageUtil$CodecFailedException$FailureType;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/camera/core/internal/utils/ImageUtil$CodecFailedException$FailureType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_11e

    .line 172
    sget-object v2, Landroidx/camera/core/ImageSaver$SaveError;->UNKNOWN:Landroidx/camera/core/ImageSaver$SaveError;

    .line 173
    const-string v3, "Failed to transcode mImage"

    goto :goto_ff

    .line 167
    :pswitch_f5
    sget-object v2, Landroidx/camera/core/ImageSaver$SaveError;->CROP_FAILED:Landroidx/camera/core/ImageSaver$SaveError;

    .line 168
    const-string v3, "Failed to crop mImage"

    .line 169
    goto :goto_ff

    .line 163
    :pswitch_fa
    sget-object v2, Landroidx/camera/core/ImageSaver$SaveError;->ENCODE_FAILED:Landroidx/camera/core/ImageSaver$SaveError;

    .line 164
    const-string v3, "Failed to encode mImage"

    .line 165
    nop

    .line 176
    :goto_ff
    move-object v4, v5

    goto :goto_10a

    .line 156
    .end local v5    # "e":Landroidx/camera/core/internal/utils/ImageUtil$CodecFailedException;
    :catch_101
    move-exception v5

    goto :goto_104

    :catch_103
    move-exception v5

    .line 157
    .local v5, "e":Ljava/lang/Exception;
    :goto_104
    sget-object v2, Landroidx/camera/core/ImageSaver$SaveError;->FILE_IO_FAILED:Landroidx/camera/core/ImageSaver$SaveError;

    .line 158
    const-string v3, "Failed to write temp file"

    .line 159
    move-object v4, v5

    .line 177
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_109
    :goto_109
    nop

    .line 178
    :goto_10a
    if-eqz v2, :cond_113

    .line 179
    invoke-direct {p0, v2, v3, v4}, Landroidx/camera/core/ImageSaver;->postError(Landroidx/camera/core/ImageSaver$SaveError;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 180
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 181
    return-object v0

    .line 183
    :cond_113
    return-object v1

    .line 109
    .end local v1    # "tempFile":Ljava/io/File;
    .end local v2    # "saveError":Landroidx/camera/core/ImageSaver$SaveError;
    .end local v3    # "errorMessage":Ljava/lang/String;
    .end local v4    # "exception":Ljava/lang/Exception;
    :catch_114
    move-exception v1

    .line 110
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Landroidx/camera/core/ImageSaver$SaveError;->FILE_IO_FAILED:Landroidx/camera/core/ImageSaver$SaveError;

    const-string v3, "Failed to create temp file"

    invoke-direct {p0, v2, v3, v1}, Landroidx/camera/core/ImageSaver;->postError(Landroidx/camera/core/ImageSaver$SaveError;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 111
    return-object v0

    nop

    :pswitch_data_11e
    .packed-switch 0x1
        :pswitch_fa
        :pswitch_f5
    .end packed-switch
.end method

.method private setContentValuePending(Landroid/content/ContentValues;I)V
    .registers 5
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "isPending"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "values",
            "isPending"
        }
    .end annotation

    .line 272
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_f

    .line 273
    const-string v0, "is_pending"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 275
    :cond_f
    return-void
.end method

.method private setUriNotPending(Landroid/net/Uri;)V
    .registers 5
    .param p1, "outputUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outputUri"
        }
    .end annotation

    .line 263
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_19

    .line 264
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 265
    .local v0, "values":Landroid/content/ContentValues;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/camera/core/ImageSaver;->setContentValuePending(Landroid/content/ContentValues;I)V

    .line 266
    iget-object v1, p0, Landroidx/camera/core/ImageSaver;->mOutputFileOptions:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    invoke-virtual {v1}, Landroidx/camera/core/ImageCapture$OutputFileOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 268
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_19
    return-void
.end method


# virtual methods
.method copyTempFileToDestination(Ljava/io/File;)V
    .registers 9
    .param p1, "tempFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tempFile"
        }
    .end annotation

    .line 192
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const/4 v0, 0x0

    .line 194
    .local v0, "saveError":Landroidx/camera/core/ImageSaver$SaveError;
    const/4 v1, 0x0

    .line 195
    .local v1, "errorMessage":Ljava/lang/String;
    const/4 v2, 0x0

    .line 196
    .local v2, "exception":Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 198
    .local v3, "outputUri":Landroid/net/Uri;
    :try_start_7
    invoke-direct {p0}, Landroidx/camera/core/ImageSaver;->isSaveToMediaStore()Z

    move-result v4

    if-eqz v4, :cond_55

    .line 199
    iget-object v4, p0, Landroidx/camera/core/ImageSaver;->mOutputFileOptions:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    invoke-virtual {v4}, Landroidx/camera/core/ImageCapture$OutputFileOptions;->getContentValues()Landroid/content/ContentValues;

    move-result-object v4

    if-eqz v4, :cond_21

    .line 200
    new-instance v4, Landroid/content/ContentValues;

    iget-object v5, p0, Landroidx/camera/core/ImageSaver;->mOutputFileOptions:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    invoke-virtual {v5}, Landroidx/camera/core/ImageCapture$OutputFileOptions;->getContentValues()Landroid/content/ContentValues;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    goto :goto_26

    .line 201
    :cond_21
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    :goto_26
    nop

    .line 202
    .local v4, "values":Landroid/content/ContentValues;
    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Landroidx/camera/core/ImageSaver;->setContentValuePending(Landroid/content/ContentValues;I)V

    .line 203
    iget-object v5, p0, Landroidx/camera/core/ImageSaver;->mOutputFileOptions:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    invoke-virtual {v5}, Landroidx/camera/core/ImageCapture$OutputFileOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Landroidx/camera/core/ImageSaver;->mOutputFileOptions:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    .line 204
    invoke-virtual {v6}, Landroidx/camera/core/ImageCapture$OutputFileOptions;->getSaveCollection()Landroid/net/Uri;

    move-result-object v6

    .line 203
    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    move-object v3, v5

    .line 206
    if-nez v3, :cond_45

    .line 207
    sget-object v5, Landroidx/camera/core/ImageSaver$SaveError;->FILE_IO_FAILED:Landroidx/camera/core/ImageSaver$SaveError;

    move-object v0, v5

    .line 208
    const-string v5, "Failed to insert URI."

    move-object v1, v5

    goto :goto_54

    .line 210
    :cond_45
    invoke-direct {p0, p1, v3}, Landroidx/camera/core/ImageSaver;->copyTempFileToUri(Ljava/io/File;Landroid/net/Uri;)Z

    move-result v5

    if-nez v5, :cond_51

    .line 211
    sget-object v5, Landroidx/camera/core/ImageSaver$SaveError;->FILE_IO_FAILED:Landroidx/camera/core/ImageSaver$SaveError;

    move-object v0, v5

    .line 212
    const-string v5, "Failed to save to URI."

    move-object v1, v5

    .line 214
    :cond_51
    invoke-direct {p0, v3}, Landroidx/camera/core/ImageSaver;->setUriNotPending(Landroid/net/Uri;)V

    .line 216
    .end local v4    # "values":Landroid/content/ContentValues;
    :goto_54
    goto :goto_93

    :cond_55
    invoke-direct {p0}, Landroidx/camera/core/ImageSaver;->isSaveToOutputStream()Z

    move-result v4

    if-eqz v4, :cond_65

    .line 217
    iget-object v4, p0, Landroidx/camera/core/ImageSaver;->mOutputFileOptions:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    invoke-virtual {v4}, Landroidx/camera/core/ImageCapture$OutputFileOptions;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Landroidx/camera/core/ImageSaver;->copyTempFileToOutputStream(Ljava/io/File;Ljava/io/OutputStream;)V

    goto :goto_93

    .line 218
    :cond_65
    invoke-direct {p0}, Landroidx/camera/core/ImageSaver;->isSaveToFile()Z

    move-result v4

    if-eqz v4, :cond_93

    .line 219
    iget-object v4, p0, Landroidx/camera/core/ImageSaver;->mOutputFileOptions:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    invoke-virtual {v4}, Landroidx/camera/core/ImageCapture$OutputFileOptions;->getFile()Ljava/io/File;

    move-result-object v4

    .line 223
    .local v4, "targetFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_7a

    .line 224
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 226
    :cond_7a
    invoke-virtual {p1, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_93

    .line 227
    sget-object v5, Landroidx/camera/core/ImageSaver$SaveError;->FILE_IO_FAILED:Landroidx/camera/core/ImageSaver$SaveError;

    move-object v0, v5

    .line 228
    const-string v5, "Failed to rename file."
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_85} :catch_8b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_85} :catch_89
    .catchall {:try_start_7 .. :try_end_85} :catchall_87

    move-object v1, v5

    goto :goto_93

    .line 236
    .end local v4    # "targetFile":Ljava/io/File;
    :catchall_87
    move-exception v4

    goto :goto_a1

    .line 231
    :catch_89
    move-exception v4

    goto :goto_8c

    :catch_8b
    move-exception v4

    .line 232
    .local v4, "e":Ljava/lang/Exception;
    :goto_8c
    :try_start_8c
    sget-object v5, Landroidx/camera/core/ImageSaver$SaveError;->FILE_IO_FAILED:Landroidx/camera/core/ImageSaver$SaveError;

    move-object v0, v5

    .line 233
    const-string v5, "Failed to write destination file."
    :try_end_91
    .catchall {:try_start_8c .. :try_end_91} :catchall_87

    move-object v1, v5

    .line 234
    move-object v2, v4

    .line 236
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_93
    :goto_93
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 237
    nop

    .line 238
    if-eqz v0, :cond_9d

    .line 239
    invoke-direct {p0, v0, v1, v2}, Landroidx/camera/core/ImageSaver;->postError(Landroidx/camera/core/ImageSaver$SaveError;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a0

    .line 241
    :cond_9d
    invoke-direct {p0, v3}, Landroidx/camera/core/ImageSaver;->postSuccess(Landroid/net/Uri;)V

    .line 243
    :goto_a0
    return-void

    .line 236
    :goto_a1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 237
    throw v4
.end method

.method synthetic lambda$postError$2$androidx-camera-core-ImageSaver(Landroidx/camera/core/ImageSaver$SaveError;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "saveError"    # Landroidx/camera/core/ImageSaver$SaveError;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 319
    iget-object v0, p0, Landroidx/camera/core/ImageSaver;->mCallback:Landroidx/camera/core/ImageSaver$OnImageSavedCallback;

    invoke-interface {v0, p1, p2, p3}, Landroidx/camera/core/ImageSaver$OnImageSavedCallback;->onError(Landroidx/camera/core/ImageSaver$SaveError;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method synthetic lambda$postSuccess$1$androidx-camera-core-ImageSaver(Landroid/net/Uri;)V
    .registers 4
    .param p1, "outputUri"    # Landroid/net/Uri;

    .line 308
    iget-object v0, p0, Landroidx/camera/core/ImageSaver;->mCallback:Landroidx/camera/core/ImageSaver$OnImageSavedCallback;

    new-instance v1, Landroidx/camera/core/ImageCapture$OutputFileResults;

    invoke-direct {v1, p1}, Landroidx/camera/core/ImageCapture$OutputFileResults;-><init>(Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Landroidx/camera/core/ImageSaver$OnImageSavedCallback;->onImageSaved(Landroidx/camera/core/ImageCapture$OutputFileResults;)V

    return-void
.end method

.method synthetic lambda$run$0$androidx-camera-core-ImageSaver(Ljava/io/File;)V
    .registers 2
    .param p1, "tempFile"    # Ljava/io/File;

    .line 89
    invoke-virtual {p0, p1}, Landroidx/camera/core/ImageSaver;->copyTempFileToDestination(Ljava/io/File;)V

    return-void
.end method

.method public run()V
    .registers 4

    .line 85
    invoke-direct {p0}, Landroidx/camera/core/ImageSaver;->saveImageToTempFile()Ljava/io/File;

    move-result-object v0

    .line 86
    .local v0, "tempFile":Ljava/io/File;
    if-eqz v0, :cond_10

    .line 89
    iget-object v1, p0, Landroidx/camera/core/ImageSaver;->mSequentialIoExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroidx/camera/core/ImageSaver$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Landroidx/camera/core/ImageSaver$$ExternalSyntheticLambda1;-><init>(Landroidx/camera/core/ImageSaver;Ljava/io/File;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 91
    :cond_10
    return-void
.end method
