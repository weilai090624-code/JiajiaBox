.class public abstract Lcom/king/zxing/analyze/BarcodeFormatAnalyzer;
.super Lcom/king/zxing/analyze/AreaRectAnalyzer;
.source "BarcodeFormatAnalyzer.java"


# instance fields
.field private mReader:Lcom/google/zxing/Reader;


# direct methods
.method public constructor <init>(Lcom/king/zxing/DecodeConfig;)V
    .registers 2
    .param p1, "config"    # Lcom/king/zxing/DecodeConfig;

    .line 30
    invoke-direct {p0, p1}, Lcom/king/zxing/analyze/AreaRectAnalyzer;-><init>(Lcom/king/zxing/DecodeConfig;)V

    .line 31
    invoke-direct {p0}, Lcom/king/zxing/analyze/BarcodeFormatAnalyzer;->initReader()V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 26
    .local p1, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;Ljava/lang/Object;>;"
    new-instance v0, Lcom/king/zxing/DecodeConfig;

    invoke-direct {v0}, Lcom/king/zxing/DecodeConfig;-><init>()V

    invoke-virtual {v0, p1}, Lcom/king/zxing/DecodeConfig;->setHints(Ljava/util/Map;)Lcom/king/zxing/DecodeConfig;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/king/zxing/analyze/BarcodeFormatAnalyzer;-><init>(Lcom/king/zxing/DecodeConfig;)V

    .line 27
    return-void
.end method

.method private decodeInternal(Lcom/google/zxing/LuminanceSource;Z)Lcom/google/zxing/Result;
    .registers 7
    .param p1, "source"    # Lcom/google/zxing/LuminanceSource;
    .param p2, "isMultiDecode"    # Z

    .line 77
    const/4 v0, 0x0

    .line 81
    .local v0, "result":Lcom/google/zxing/Result;
    :try_start_1
    iget-object v1, p0, Lcom/king/zxing/analyze/BarcodeFormatAnalyzer;->mReader:Lcom/google/zxing/Reader;

    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    new-instance v3, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v3, p1}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v2, v3}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    iget-object v3, p0, Lcom/king/zxing/analyze/BarcodeFormatAnalyzer;->mHints:Ljava/util/Map;

    invoke-interface {v1, v2, v3}, Lcom/google/zxing/Reader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v1
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_15

    move-object v0, v1

    .line 84
    goto :goto_16

    .line 82
    :catch_15
    move-exception v1

    .line 85
    :goto_16
    if-eqz p2, :cond_30

    if-nez v0, :cond_30

    .line 87
    :try_start_1a
    iget-object v1, p0, Lcom/king/zxing/analyze/BarcodeFormatAnalyzer;->mReader:Lcom/google/zxing/Reader;

    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    new-instance v3, Lcom/google/zxing/common/GlobalHistogramBinarizer;

    invoke-direct {v3, p1}, Lcom/google/zxing/common/GlobalHistogramBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v2, v3}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    iget-object v3, p0, Lcom/king/zxing/analyze/BarcodeFormatAnalyzer;->mHints:Ljava/util/Map;

    invoke-interface {v1, v2, v3}, Lcom/google/zxing/Reader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v1
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_2c} :catch_2e

    move-object v0, v1

    goto :goto_30

    .line 89
    :catch_2e
    move-exception v1

    goto :goto_31

    .line 91
    :cond_30
    :goto_30
    nop

    .line 92
    :goto_31
    return-object v0
.end method

.method private initReader()V
    .registers 2

    .line 35
    invoke-virtual {p0}, Lcom/king/zxing/analyze/BarcodeFormatAnalyzer;->createReader()Lcom/google/zxing/Reader;

    move-result-object v0

    iput-object v0, p0, Lcom/king/zxing/analyze/BarcodeFormatAnalyzer;->mReader:Lcom/google/zxing/Reader;

    .line 36
    return-void
.end method


# virtual methods
.method public analyze([BIIIIII)Lcom/google/zxing/Result;
    .registers 27
    .param p1, "data"    # [B
    .param p2, "dataWidth"    # I
    .param p3, "dataHeight"    # I
    .param p4, "left"    # I
    .param p5, "top"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I

    .line 41
    move-object/from16 v1, p0

    move-object/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    const/4 v14, 0x0

    .line 42
    .local v14, "rawResult":Lcom/google/zxing/Result;
    iget-object v0, v1, Lcom/king/zxing/analyze/BarcodeFormatAnalyzer;->mReader:Lcom/google/zxing/Reader;

    if-eqz v0, :cond_ca

    .line 44
    :try_start_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-wide v15, v2

    .line 45
    .local v15, "start":J
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

    .line 46
    .local v0, "source":Lcom/google/zxing/PlanarYUVLuminanceSource;
    iget-boolean v2, v1, Lcom/king/zxing/analyze/BarcodeFormatAnalyzer;->isMultiDecode:Z

    invoke-direct {v1, v0, v2}, Lcom/king/zxing/analyze/BarcodeFormatAnalyzer;->decodeInternal(Lcom/google/zxing/LuminanceSource;Z)Lcom/google/zxing/Result;

    move-result-object v2

    move-object v14, v2

    .line 48
    if-nez v14, :cond_97

    iget-object v2, v1, Lcom/king/zxing/analyze/BarcodeFormatAnalyzer;->mDecodeConfig:Lcom/king/zxing/DecodeConfig;

    if-eqz v2, :cond_97

    .line 49
    if-nez v14, :cond_80

    iget-object v2, v1, Lcom/king/zxing/analyze/BarcodeFormatAnalyzer;->mDecodeConfig:Lcom/king/zxing/DecodeConfig;

    invoke-virtual {v2}, Lcom/king/zxing/DecodeConfig;->isSupportVerticalCode()Z

    move-result v2

    if-eqz v2, :cond_80

    .line 50
    array-length v2, v11

    new-array v2, v2, [B

    move-object/from16 v17, v2

    .line 51
    .local v17, "rotatedData":[B
    const/4 v2, 0x0

    .local v2, "y":I
    :goto_44
    if-ge v2, v13, :cond_5c

    .line 52
    const/4 v3, 0x0

    .local v3, "x":I
    :goto_47
    if-ge v3, v12, :cond_59

    .line 53
    mul-int v4, v3, v13

    add-int/2addr v4, v13

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x1

    mul-int v5, v2, v12

    add-int/2addr v5, v3

    aget-byte v5, v11, v5

    aput-byte v5, v17, v4

    .line 52
    add-int/lit8 v3, v3, 0x1

    goto :goto_47

    .line 51
    .end local v3    # "x":I
    :cond_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    .line 56
    .end local v2    # "y":I
    :cond_5c
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

    iget-object v2, v1, Lcom/king/zxing/analyze/BarcodeFormatAnalyzer;->mDecodeConfig:Lcom/king/zxing/DecodeConfig;

    invoke-virtual {v2}, Lcom/king/zxing/DecodeConfig;->isSupportVerticalCodeMultiDecode()Z

    move-result v2

    invoke-direct {v1, v11, v2}, Lcom/king/zxing/analyze/BarcodeFormatAnalyzer;->decodeInternal(Lcom/google/zxing/LuminanceSource;Z)Lcom/google/zxing/Result;

    move-result-object v2

    move-object v14, v2

    .line 59
    .end local v17    # "rotatedData":[B
    :cond_80
    iget-object v2, v1, Lcom/king/zxing/analyze/BarcodeFormatAnalyzer;->mDecodeConfig:Lcom/king/zxing/DecodeConfig;

    invoke-virtual {v2}, Lcom/king/zxing/DecodeConfig;->isSupportLuminanceInvert()Z

    move-result v2

    if-eqz v2, :cond_97

    .line 60
    invoke-virtual {v0}, Lcom/google/zxing/PlanarYUVLuminanceSource;->invert()Lcom/google/zxing/LuminanceSource;

    move-result-object v2

    iget-object v3, v1, Lcom/king/zxing/analyze/BarcodeFormatAnalyzer;->mDecodeConfig:Lcom/king/zxing/DecodeConfig;

    invoke-virtual {v3}, Lcom/king/zxing/DecodeConfig;->isSupportLuminanceInvertMultiDecode()Z

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/king/zxing/analyze/BarcodeFormatAnalyzer;->decodeInternal(Lcom/google/zxing/LuminanceSource;Z)Lcom/google/zxing/Result;

    move-result-object v2

    move-object v14, v2

    .line 63
    :cond_97
    if-eqz v14, :cond_c4

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 65
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
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_bb} :catch_c3
    .catchall {:try_start_d .. :try_end_bb} :catchall_bc

    goto :goto_c4

    .line 70
    .end local v0    # "source":Lcom/google/zxing/PlanarYUVLuminanceSource;
    .end local v2    # "end":J
    .end local v15    # "start":J
    :catchall_bc
    move-exception v0

    iget-object v2, v1, Lcom/king/zxing/analyze/BarcodeFormatAnalyzer;->mReader:Lcom/google/zxing/Reader;

    invoke-interface {v2}, Lcom/google/zxing/Reader;->reset()V

    .line 71
    throw v0

    .line 67
    :catch_c3
    move-exception v0

    .line 70
    :cond_c4
    :goto_c4
    iget-object v0, v1, Lcom/king/zxing/analyze/BarcodeFormatAnalyzer;->mReader:Lcom/google/zxing/Reader;

    invoke-interface {v0}, Lcom/google/zxing/Reader;->reset()V

    .line 71
    nop

    .line 73
    :cond_ca
    return-object v14
.end method

.method public abstract createReader()Lcom/google/zxing/Reader;
.end method
