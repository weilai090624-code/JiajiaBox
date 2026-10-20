.class public Landroidx/camera/core/ImageCaptureException;
.super Ljava/lang/Exception;
.source "ImageCaptureException.java"


# instance fields
.field private final mImageCaptureError:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
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

    .line 34
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    iput p1, p0, Landroidx/camera/core/ImageCaptureException;->mImageCaptureError:I

    .line 36
    return-void
.end method


# virtual methods
.method public getImageCaptureError()I
    .locals 1

    .line 48
    iget v0, p0, Landroidx/camera/core/ImageCaptureException;->mImageCaptureError:I

    return v0
.end method
