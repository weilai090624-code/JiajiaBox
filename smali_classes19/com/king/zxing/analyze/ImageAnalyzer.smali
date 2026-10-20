.class public abstract Lcom/king/zxing/analyze/ImageAnalyzer;
.super Ljava/lang/Object;
.source "ImageAnalyzer.java"

# interfaces
.implements Lcom/king/zxing/analyze/Analyzer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public analyze(Landroidx/camera/core/ImageProxy;I)Lcom/google/zxing/Result;
    .locals 10
    .param p1, "image"    # Landroidx/camera/core/ImageProxy;
    .param p2, "orientation"    # I

    .line 33
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getFormat()I

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_3

    .line 35
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getPlanes()[Landroidx/camera/core/ImageProxy$PlaneProxy;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Landroidx/camera/core/ImageProxy$PlaneProxy;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 36
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    .line 37
    .local v1, "data":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 38
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getWidth()I

    move-result v2

    .line 39
    .local v2, "width":I
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getHeight()I

    move-result v3

    .line 40
    .local v3, "height":I
    const/4 v4, 0x1

    if-ne p2, v4, :cond_2

    .line 41
    array-length v5, v1

    new-array v5, v5, [B

    .line 42
    .local v5, "rotatedData":[B
    const/4 v6, 0x0

    .local v6, "y":I
    :goto_0
    if-ge v6, v3, :cond_1

    .line 43
    const/4 v7, 0x0

    .local v7, "x":I
    :goto_1
    if-ge v7, v2, :cond_0

    .line 44
    mul-int v8, v7, v3

    add-int/2addr v8, v3

    sub-int/2addr v8, v6

    sub-int/2addr v8, v4

    mul-int v9, v6, v2

    add-int/2addr v9, v7

    aget-byte v9, v1, v9

    aput-byte v9, v5, v8

    .line 43
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 42
    .end local v7    # "x":I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 47
    .end local v6    # "y":I
    :cond_1
    invoke-virtual {p0, v5, v3, v2}, Lcom/king/zxing/analyze/ImageAnalyzer;->analyze([BII)Lcom/google/zxing/Result;

    move-result-object v4

    return-object v4

    .line 49
    .end local v5    # "rotatedData":[B
    :cond_2
    invoke-virtual {p0, v1, v2, v3}, Lcom/king/zxing/analyze/ImageAnalyzer;->analyze([BII)Lcom/google/zxing/Result;

    move-result-object v4

    return-object v4

    .line 51
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v1    # "data":[B
    .end local v2    # "width":I
    .end local v3    # "height":I
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "imageFormat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getFormat()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/king/zxing/util/LogUtils;->w(Ljava/lang/String;)V

    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract analyze([BII)Lcom/google/zxing/Result;
.end method
