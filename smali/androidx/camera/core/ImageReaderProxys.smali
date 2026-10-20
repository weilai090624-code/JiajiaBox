.class final Landroidx/camera/core/ImageReaderProxys;
.super Ljava/lang/Object;
.source "ImageReaderProxys.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method static createIsolatedReader(IIII)Landroidx/camera/core/impl/ImageReaderProxy;
    .locals 2
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

    .line 44
    invoke-static {p0, p1, p2, p3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    .line 45
    .local v0, "imageReader":Landroid/media/ImageReader;
    new-instance v1, Landroidx/camera/core/AndroidImageReaderProxy;

    invoke-direct {v1, v0}, Landroidx/camera/core/AndroidImageReaderProxy;-><init>(Landroid/media/ImageReader;)V

    return-object v1
.end method
