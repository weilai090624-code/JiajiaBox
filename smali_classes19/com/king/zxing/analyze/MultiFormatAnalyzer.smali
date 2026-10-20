.class public Lcom/king/zxing/analyze/MultiFormatAnalyzer;
.super Lcom/king/zxing/analyze/AreaRectAnalyzer;
.source "MultiFormatAnalyzer.java"


# instance fields
.field mReader:Lcom/google/zxing/MultiFormatReader;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 27
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lcom/king/zxing/DecodeConfig;

    invoke-direct {p0, v0}, Lcom/king/zxing/analyze/MultiFormatAnalyzer;-><init>(Lcom/king/zxing/DecodeConfig;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/king/zxing/DecodeConfig;)V
    .locals 0
    .param p1, "config"    # Lcom/king/zxing/DecodeConfig;

    .line 35
    invoke-direct {p0, p1}, Lcom/king/zxing/analyze/AreaRectAnalyzer;-><init>(Lcom/king/zxing/DecodeConfig;)V

    .line 36
    invoke-direct {p0}, Lcom/king/zxing/analyze/MultiFormatAnalyzer;->initReader()V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 31
    .local p1, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;Ljava/lang/Object;>;"
    new-instance v0, Lcom/king/zxing/DecodeConfig;

    invoke-direct {v0}, Lcom/king/zxing/DecodeConfig;-><init>()V

    invoke-virtual {v0, p1}, Lcom/king/zxing/DecodeConfig;->setHints(Ljava/util/Map;)Lcom/king/zxing/DecodeConfig;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/king/zxing/analyze/MultiFormatAnalyzer;-><init>(Lcom/king/zxing/DecodeConfig;)V

    .line 32
    return-void
.end method

.method private decodeInternal(Lcom/google/zxing/LuminanceSource;Z)Lcom/google/zxing/Result;
    .locals 4
    .param p1, "source"    # Lcom/google/zxing/LuminanceSource;
    .param p2, "isMultiDecode"    # Z

    .line 82
    const/4 v0, 0x0

    .line 86
    .local v0, "result":Lcom/google/zxing/Result;
    :try_start_0
    iget-object v1, p0, Lcom/king/zxing/analyze/MultiFormatAnalyzer;->mReader:Lcom/google/zxing/MultiFormatReader;

    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    new-instance v3, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v3, p1}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v2, v3}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    invoke-virtual {v1, v2}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 89
    goto :goto_0

    .line 87
    :catch_0
    move-exception v1

    .line 90
    :goto_0
    if-eqz p2, :cond_0

    if-nez v0, :cond_0

    .line 92
    :try_start_1
    iget-object v1, p0, Lcom/king/zxing/analyze/MultiFormatAnalyzer;->mReader:Lcom/google/zxing/MultiFormatReader;

    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    new-instance v3, Lcom/google/zxing/common/GlobalHistogramBinarizer;

    invoke-direct {v3, p1}, Lcom/google/zxing/common/GlobalHistogramBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v2, v3}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    invoke-virtual {v1, v2}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    goto :goto_1

    .line 94
    :catch_1
    move-exception v1

    goto :goto_2

    .line 96
    :cond_0
    :goto_1
    nop

    .line 97
    :goto_2
    return-object v0
.end method

.method private initReader()V
    .locals 1

    .line 40
    new-instance v0, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v0}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    iput-object v0, p0, Lcom/king/zxing/analyze/MultiFormatAnalyzer;->mReader:Lcom/google/zxing/MultiFormatReader;

    .line 41
    return-void
.end method


# virtual methods
.method public analyze([BIIIIII)Lcom/google/zxing/Result;
    .locals 19
    .param p1, "data"    # [B
    .param p2, "dataWidth"    # I
    .param p3, "dataHeight"    # I
    .param p4, "left"    # I
    .param p5, "top"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I

    .line 46
    move-object/from16 v1, p0

    move-object/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    const/4 v14, 0x0

    .line 48
    .local v14, "rawResult":Lcom/google/zxing/Result;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-wide v15, v2

    .line 49
    .local v15, "start":J
    iget-object v0, v1, Lcom/king/zxing/analyze/MultiFormatAnalyzer;->mReader:Lcom/google/zxing/MultiFormatReader;

    iget-object v2, v1, Lcom/king/zxing/analyze/MultiFormatAnalyzer;->mHints:Ljava/util/Map;

    invoke-virtual {v0, v2}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    .line 50
    new-instance v0, Lcom/google/zxing/PlanarYUVLuminanceSource;

    const/4 v10, 0x0

    move-object v2, v0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v2 .. v10}, Lcom/google/zxing/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V

    .line 51
    .local v0, "source":Lcom/google/zxing/PlanarYUVLuminanceSource;
    iget-boolean v2, v1, Lcom/king/zxing/analyze/MultiFormatAnalyzer;->isMultiDecode:Z

    invoke-direct {v1, v0, v2}, Lcom/king/zxing/analyze/MultiFormatAnalyzer;->decodeInternal(Lcom/google/zxing/LuminanceSource;Z)Lcom/google/zxing/Result;

    move-result-object v2

    move-object v14, v2

    .line 53
    if-nez v14, :cond_3

    iget-object v2, v1, Lcom/king/zxing/analyze/MultiFormatAnalyzer;->mDecodeConfig:Lcom/king/zxing/DecodeConfig;

    if-eqz v2, :cond_3

    .line 54
    if-nez v14, :cond_2

    iget-object v2, v1, Lcom/king/zxing/analyze/MultiFormatAnalyzer;->mDecodeConfig:Lcom/king/zxing/DecodeConfig;

    invoke-virtual {v2}, Lcom/king/zxing/DecodeConfig;->isSupportVerticalCode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 55
    array-length v2, v11

    new-array v2, v2, [B

    move-object/from16 v17, v2

    .line 56
    .local v17, "rotatedData":[B
    const/4 v2, 0x0

    .local v2, "y":I
    :goto_0
    if-ge v2, v13, :cond_1

    .line 57
    const/4 v3, 0x0

    .local v3, "x":I
    :goto_1
    if-ge v3, v12, :cond_0

    .line 58
    mul-int v4, v3, v13

    add-int/2addr v4, v13

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x1

    mul-int v5, v2, v12

    add-int/2addr v5, v3

    aget-byte v5, v11, v5

    aput-byte v5, v17, v4

    .line 57
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 56
    .end local v3    # "x":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61
    .end local v2    # "y":I
    :cond_1
    new-instance v10, Lcom/google/zxing/PlanarYUVLuminanceSource;

    const/16 v18, 0x0

    move-object v2, v10

    move-object/from16 v3, v17

    move/from16 v4, p3

    move/from16 v5, p2

    move/from16 v6, p5

    move/from16 v7, p4

    move/from16 v8, p7

    move/from16 v9, p6

    move-object v11, v10

    move/from16 v10, v18

    invoke-direct/range {v2 .. v10}, Lcom/google/zxing/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V

    iget-object v2, v1, Lcom/king/zxing/analyze/MultiFormatAnalyzer;->mDecodeConfig:Lcom/king/zxing/DecodeConfig;

    invoke-virtual {v2}, Lcom/king/zxing/DecodeConfig;->isSupportVerticalCodeMultiDecode()Z

    move-result v2

    invoke-direct {v1, v11, v2}, Lcom/king/zxing/analyze/MultiFormatAnalyzer;->decodeInternal(Lcom/google/zxing/LuminanceSource;Z)Lcom/google/zxing/Result;

    move-result-object v2

    move-object v14, v2

    .line 64
    .end local v17    # "rotatedData":[B
    :cond_2
    if-nez v14, :cond_3

    iget-object v2, v1, Lcom/king/zxing/analyze/MultiFormatAnalyzer;->mDecodeConfig:Lcom/king/zxing/DecodeConfig;

    invoke-virtual {v2}, Lcom/king/zxing/DecodeConfig;->isSupportLuminanceInvert()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 65
    invoke-virtual {v0}, Lcom/google/zxing/PlanarYUVLuminanceSource;->invert()Lcom/google/zxing/LuminanceSource;

    move-result-object v2

    iget-object v3, v1, Lcom/king/zxing/analyze/MultiFormatAnalyzer;->mDecodeConfig:Lcom/king/zxing/DecodeConfig;

    invoke-virtual {v3}, Lcom/king/zxing/DecodeConfig;->isSupportLuminanceInvertMultiDecode()Z

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/king/zxing/analyze/MultiFormatAnalyzer;->decodeInternal(Lcom/google/zxing/LuminanceSource;Z)Lcom/google/zxing/Result;

    move-result-object v2

    move-object v14, v2

    .line 68
    :cond_3
    if-eqz v14, :cond_4

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 70
    .local v2, "end":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found barcode in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long v5, v2, v15

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/king/zxing/util/LogUtils;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 75
    .end local v0    # "source":Lcom/google/zxing/PlanarYUVLuminanceSource;
    .end local v2    # "end":J
    .end local v15    # "start":J
    :catchall_0
    move-exception v0

    iget-object v2, v1, Lcom/king/zxing/analyze/MultiFormatAnalyzer;->mReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v2}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 76
    throw v0

    .line 72
    :catch_0
    move-exception v0

    .line 75
    :cond_4
    :goto_2
    iget-object v0, v1, Lcom/king/zxing/analyze/MultiFormatAnalyzer;->mReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v0}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 76
    nop

    .line 77
    return-object v14
.end method
