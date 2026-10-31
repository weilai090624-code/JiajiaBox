.class public final Lcom/google/zxing/aztec/AztecReader;
.super Ljava/lang/Object;
.source "AztecReader.java"

# interfaces
.implements Lcom/google/zxing/Reader;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    .registers 3
    .param p1, "image"    # Lcom/google/zxing/BinaryBitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/aztec/AztecReader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method public decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    .registers 13
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
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 59
    nop

    .line 60
    nop

    .line 61
    new-instance v0, Lcom/google/zxing/aztec/detector/Detector;

    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/zxing/aztec/detector/Detector;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    .line 62
    nop

    .line 63
    nop

    .line 65
    const/4 p1, 0x0

    const/4 v1, 0x0

    :try_start_f
    invoke-virtual {v0, p1}, Lcom/google/zxing/aztec/detector/Detector;->detect(Z)Lcom/google/zxing/aztec/AztecDetectorResult;

    move-result-object v2

    .line 66
    invoke-virtual {v2}, Lcom/google/zxing/aztec/AztecDetectorResult;->getPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v3
    :try_end_17
    .catch Lcom/google/zxing/NotFoundException; {:try_start_f .. :try_end_17} :catch_2f
    .catch Lcom/google/zxing/FormatException; {:try_start_f .. :try_end_17} :catch_29

    .line 67
    :try_start_17
    new-instance v4, Lcom/google/zxing/aztec/decoder/Decoder;

    invoke-direct {v4}, Lcom/google/zxing/aztec/decoder/Decoder;-><init>()V

    invoke-virtual {v4, v2}, Lcom/google/zxing/aztec/decoder/Decoder;->decode(Lcom/google/zxing/aztec/AztecDetectorResult;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v2
    :try_end_20
    .catch Lcom/google/zxing/NotFoundException; {:try_start_17 .. :try_end_20} :catch_27
    .catch Lcom/google/zxing/FormatException; {:try_start_17 .. :try_end_20} :catch_25

    .line 72
    move-object v4, v3

    move-object v3, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_33

    .line 71
    :catch_25
    move-exception v2

    goto :goto_2b

    .line 69
    :catch_27
    move-exception v2

    goto :goto_31

    .line 71
    :catch_29
    move-exception v2

    move-object v3, v1

    :goto_2b
    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    goto :goto_33

    .line 69
    :catch_2f
    move-exception v2

    move-object v3, v1

    .line 72
    :goto_31
    move-object v4, v3

    move-object v3, v1

    .line 73
    :goto_33
    if-nez v1, :cond_53

    .line 75
    const/4 v1, 0x1

    :try_start_36
    invoke-virtual {v0, v1}, Lcom/google/zxing/aztec/detector/Detector;->detect(Z)Lcom/google/zxing/aztec/AztecDetectorResult;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->getPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v4

    .line 77
    new-instance v1, Lcom/google/zxing/aztec/decoder/Decoder;

    invoke-direct {v1}, Lcom/google/zxing/aztec/decoder/Decoder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/zxing/aztec/decoder/Decoder;->decode(Lcom/google/zxing/aztec/AztecDetectorResult;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v1
    :try_end_47
    .catch Lcom/google/zxing/NotFoundException; {:try_start_36 .. :try_end_47} :catch_4b
    .catch Lcom/google/zxing/FormatException; {:try_start_36 .. :try_end_47} :catch_49

    .line 86
    move-object v6, v4

    goto :goto_54

    .line 78
    :catch_49
    move-exception p1

    goto :goto_4c

    :catch_4b
    move-exception p1

    .line 79
    :goto_4c
    if-nez v2, :cond_52

    .line 82
    if-eqz v3, :cond_51

    .line 83
    throw v3

    .line 85
    :cond_51
    throw p1

    .line 80
    :cond_52
    throw v2

    .line 73
    :cond_53
    move-object v6, v4

    .line 89
    :goto_54
    if-eqz p2, :cond_6b

    .line 90
    sget-object v0, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/zxing/ResultPointCallback;

    .line 91
    if-eqz p2, :cond_6b

    .line 92
    array-length v0, v6

    :goto_61
    if-ge p1, v0, :cond_6b

    aget-object v2, v6, p1

    .line 93
    invoke-interface {p2, v2}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    .line 92
    add-int/lit8 p1, p1, 0x1

    goto :goto_61

    .line 98
    :cond_6b
    new-instance p1, Lcom/google/zxing/Result;

    invoke-virtual {v1}, Lcom/google/zxing/common/DecoderResult;->getText()Ljava/lang/String;

    move-result-object v3

    .line 99
    invoke-virtual {v1}, Lcom/google/zxing/common/DecoderResult;->getRawBytes()[B

    move-result-object v4

    .line 100
    invoke-virtual {v1}, Lcom/google/zxing/common/DecoderResult;->getNumBits()I

    move-result v5

    sget-object v7, Lcom/google/zxing/BarcodeFormat;->AZTEC:Lcom/google/zxing/BarcodeFormat;

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object v2, p1

    invoke-direct/range {v2 .. v9}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[BI[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;J)V

    .line 105
    invoke-virtual {v1}, Lcom/google/zxing/common/DecoderResult;->getByteSegments()Ljava/util/List;

    move-result-object p2

    .line 106
    if-eqz p2, :cond_8e

    .line 107
    sget-object v0, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {p1, v0, p2}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 109
    :cond_8e
    invoke-virtual {v1}, Lcom/google/zxing/common/DecoderResult;->getECLevel()Ljava/lang/String;

    move-result-object p2

    .line 110
    if-eqz p2, :cond_99

    .line 111
    sget-object v0, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {p1, v0, p2}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 114
    :cond_99
    return-object p1
.end method

.method public reset()V
    .registers 1

    .line 120
    return-void
.end method
