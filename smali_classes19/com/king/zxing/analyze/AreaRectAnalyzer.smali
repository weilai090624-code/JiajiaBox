.class public abstract Lcom/king/zxing/analyze/AreaRectAnalyzer;
.super Lcom/king/zxing/analyze/ImageAnalyzer;
.source "AreaRectAnalyzer.java"


# instance fields
.field isMultiDecode:Z

.field private mAreaRectHorizontalOffset:I

.field private mAreaRectRatio:F

.field private mAreaRectVerticalOffset:I

.field mDecodeConfig:Lcom/king/zxing/DecodeConfig;

.field mHints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/king/zxing/DecodeConfig;)V
    .locals 1
    .param p1, "config"    # Lcom/king/zxing/DecodeConfig;

    .line 27
    invoke-direct {p0}, Lcom/king/zxing/analyze/ImageAnalyzer;-><init>()V

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/king/zxing/analyze/AreaRectAnalyzer;->isMultiDecode:Z

    .line 23
    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/king/zxing/analyze/AreaRectAnalyzer;->mAreaRectRatio:F

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/king/zxing/analyze/AreaRectAnalyzer;->mAreaRectHorizontalOffset:I

    .line 25
    iput v0, p0, Lcom/king/zxing/analyze/AreaRectAnalyzer;->mAreaRectVerticalOffset:I

    .line 28
    iput-object p1, p0, Lcom/king/zxing/analyze/AreaRectAnalyzer;->mDecodeConfig:Lcom/king/zxing/DecodeConfig;

    .line 29
    if-eqz p1, :cond_0

    .line 30
    invoke-virtual {p1}, Lcom/king/zxing/DecodeConfig;->getHints()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/king/zxing/analyze/AreaRectAnalyzer;->mHints:Ljava/util/Map;

    .line 31
    invoke-virtual {p1}, Lcom/king/zxing/DecodeConfig;->isMultiDecode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/king/zxing/analyze/AreaRectAnalyzer;->isMultiDecode:Z

    .line 32
    invoke-virtual {p1}, Lcom/king/zxing/DecodeConfig;->getAreaRectRatio()F

    move-result v0

    iput v0, p0, Lcom/king/zxing/analyze/AreaRectAnalyzer;->mAreaRectRatio:F

    .line 33
    invoke-virtual {p1}, Lcom/king/zxing/DecodeConfig;->getAreaRectHorizontalOffset()I

    move-result v0

    iput v0, p0, Lcom/king/zxing/analyze/AreaRectAnalyzer;->mAreaRectHorizontalOffset:I

    .line 34
    invoke-virtual {p1}, Lcom/king/zxing/DecodeConfig;->getAreaRectVerticalOffset()I

    move-result v0

    iput v0, p0, Lcom/king/zxing/analyze/AreaRectAnalyzer;->mAreaRectVerticalOffset:I

    goto :goto_0

    .line 36
    :cond_0
    sget-object v0, Lcom/king/zxing/DecodeFormatManager;->DEFAULT_HINTS:Ljava/util/Map;

    iput-object v0, p0, Lcom/king/zxing/analyze/AreaRectAnalyzer;->mHints:Ljava/util/Map;

    .line 39
    :goto_0
    return-void
.end method


# virtual methods
.method public analyze([BII)Lcom/google/zxing/Result;
    .locals 11
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 44
    iget-object v0, p0, Lcom/king/zxing/analyze/AreaRectAnalyzer;->mDecodeConfig:Lcom/king/zxing/DecodeConfig;

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/king/zxing/analyze/AreaRectAnalyzer;->mDecodeConfig:Lcom/king/zxing/DecodeConfig;

    invoke-virtual {v0}, Lcom/king/zxing/DecodeConfig;->isFullAreaScan()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v7, p2

    move v8, p3

    invoke-virtual/range {v1 .. v8}, Lcom/king/zxing/analyze/AreaRectAnalyzer;->analyze([BIIIIII)Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/king/zxing/analyze/AreaRectAnalyzer;->mDecodeConfig:Lcom/king/zxing/DecodeConfig;

    invoke-virtual {v0}, Lcom/king/zxing/DecodeConfig;->getAnalyzeAreaRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 51
    .local v0, "rect":Landroid/graphics/Rect;
    if-eqz v0, :cond_1

    .line 52
    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v8

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v8}, Lcom/king/zxing/analyze/AreaRectAnalyzer;->analyze([BIIIIII)Lcom/google/zxing/Result;

    move-result-object v1

    return-object v1

    .line 57
    .end local v0    # "rect":Landroid/graphics/Rect;
    :cond_1
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/king/zxing/analyze/AreaRectAnalyzer;->mAreaRectRatio:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 58
    .local v0, "size":I
    sub-int v1, p2, v0

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/king/zxing/analyze/AreaRectAnalyzer;->mAreaRectHorizontalOffset:I

    add-int v9, v1, v2

    .line 59
    .local v9, "left":I
    sub-int v1, p3, v0

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/king/zxing/analyze/AreaRectAnalyzer;->mAreaRectVerticalOffset:I

    add-int v10, v1, v2

    .line 61
    .local v10, "top":I
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, v9

    move v6, v10

    move v7, v0

    move v8, v0

    invoke-virtual/range {v1 .. v8}, Lcom/king/zxing/analyze/AreaRectAnalyzer;->analyze([BIIIIII)Lcom/google/zxing/Result;

    move-result-object v1

    return-object v1
.end method

.method public abstract analyze([BIIIIII)Lcom/google/zxing/Result;
.end method
