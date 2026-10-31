.class public final Lcom/google/zxing/multi/ByQuadrantReader;
.super Ljava/lang/Object;
.source "ByQuadrantReader.java"

# interfaces
.implements Lcom/google/zxing/Reader;


# instance fields
.field private final delegate:Lcom/google/zxing/Reader;


# direct methods
.method public constructor <init>(Lcom/google/zxing/Reader;)V
    .registers 2
    .param p1, "delegate"    # Lcom/google/zxing/Reader;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/google/zxing/multi/ByQuadrantReader;->delegate:Lcom/google/zxing/Reader;

    .line 45
    return-void
.end method

.method private static makeAbsolute([Lcom/google/zxing/ResultPoint;II)V
    .registers 9
    .param p0, "points"    # [Lcom/google/zxing/ResultPoint;
    .param p1, "leftOffset"    # I
    .param p2, "topOffset"    # I

    .line 107
    if-eqz p0, :cond_1e

    .line 108
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    array-length v1, p0

    if-ge v0, v1, :cond_1e

    .line 109
    aget-object v1, p0, v0

    .line 110
    .local v1, "relative":Lcom/google/zxing/ResultPoint;
    new-instance v2, Lcom/google/zxing/ResultPoint;

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    int-to-float v4, p1

    add-float/2addr v3, v4

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v4

    int-to-float v5, p2

    add-float/2addr v4, v5

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v2, p0, v0

    .line 108
    .end local v1    # "relative":Lcom/google/zxing/ResultPoint;
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 113
    .end local v0    # "i":I
    :cond_1e
    return-void
.end method


# virtual methods
.method public decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    .registers 3
    .param p1, "image"    # Lcom/google/zxing/BinaryBitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 50
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/multi/ByQuadrantReader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method public decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 57
    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->getWidth()I

    move-result v0

    .line 58
    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->getHeight()I

    move-result v1

    .line 59
    div-int/lit8 v0, v0, 0x2

    .line 60
    div-int/lit8 v1, v1, 0x2

    .line 64
    const/4 v2, 0x0

    :try_start_d
    iget-object v3, p0, Lcom/google/zxing/multi/ByQuadrantReader;->delegate:Lcom/google/zxing/Reader;

    invoke-virtual {p1, v2, v2, v0, v1}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    move-result-object v4

    invoke-interface {v3, v4, p2}, Lcom/google/zxing/Reader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object p1
    :try_end_17
    .catch Lcom/google/zxing/NotFoundException; {:try_start_d .. :try_end_17} :catch_18

    return-object p1

    .line 65
    :catch_18
    move-exception v3

    .line 70
    :try_start_19
    iget-object v3, p0, Lcom/google/zxing/multi/ByQuadrantReader;->delegate:Lcom/google/zxing/Reader;

    invoke-virtual {p1, v0, v2, v0, v1}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    move-result-object v4

    invoke-interface {v3, v4, p2}, Lcom/google/zxing/Reader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v3

    .line 71
    invoke-virtual {v3}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v4

    invoke-static {v4, v0, v2}, Lcom/google/zxing/multi/ByQuadrantReader;->makeAbsolute([Lcom/google/zxing/ResultPoint;II)V
    :try_end_2a
    .catch Lcom/google/zxing/NotFoundException; {:try_start_19 .. :try_end_2a} :catch_2b

    .line 72
    return-object v3

    .line 73
    :catch_2b
    move-exception v3

    .line 78
    :try_start_2c
    iget-object v3, p0, Lcom/google/zxing/multi/ByQuadrantReader;->delegate:Lcom/google/zxing/Reader;

    invoke-virtual {p1, v2, v1, v0, v1}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    move-result-object v4

    invoke-interface {v3, v4, p2}, Lcom/google/zxing/Reader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v3

    .line 79
    invoke-virtual {v3}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v4

    invoke-static {v4, v2, v1}, Lcom/google/zxing/multi/ByQuadrantReader;->makeAbsolute([Lcom/google/zxing/ResultPoint;II)V
    :try_end_3d
    .catch Lcom/google/zxing/NotFoundException; {:try_start_2c .. :try_end_3d} :catch_3e

    .line 80
    return-object v3

    .line 81
    :catch_3e
    move-exception v2

    .line 86
    :try_start_3f
    iget-object v2, p0, Lcom/google/zxing/multi/ByQuadrantReader;->delegate:Lcom/google/zxing/Reader;

    invoke-virtual {p1, v0, v1, v0, v1}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Lcom/google/zxing/Reader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v2

    .line 87
    invoke-virtual {v2}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v3

    invoke-static {v3, v0, v1}, Lcom/google/zxing/multi/ByQuadrantReader;->makeAbsolute([Lcom/google/zxing/ResultPoint;II)V
    :try_end_50
    .catch Lcom/google/zxing/NotFoundException; {:try_start_3f .. :try_end_50} :catch_51

    .line 88
    return-object v2

    .line 89
    :catch_51
    move-exception v2

    .line 93
    div-int/lit8 v2, v0, 0x2

    .line 94
    div-int/lit8 v3, v1, 0x2

    .line 95
    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    move-result-object p1

    .line 96
    iget-object v0, p0, Lcom/google/zxing/multi/ByQuadrantReader;->delegate:Lcom/google/zxing/Reader;

    invoke-interface {v0, p1, p2}, Lcom/google/zxing/Reader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object p1

    .line 97
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object p2

    invoke-static {p2, v2, v3}, Lcom/google/zxing/multi/ByQuadrantReader;->makeAbsolute([Lcom/google/zxing/ResultPoint;II)V

    .line 98
    return-object p1
.end method

.method public reset()V
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/google/zxing/multi/ByQuadrantReader;->delegate:Lcom/google/zxing/Reader;

    invoke-interface {v0}, Lcom/google/zxing/Reader;->reset()V

    .line 104
    return-void
.end method
