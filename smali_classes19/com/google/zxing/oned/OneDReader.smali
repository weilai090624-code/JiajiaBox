.class public abstract Lcom/google/zxing/oned/OneDReader;
.super Ljava/lang/Object;
.source "OneDReader.java"

# interfaces
.implements Lcom/google/zxing/Reader;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doDecode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    .registers 24
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
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 105
    move-object/from16 v0, p2

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/BinaryBitmap;->getWidth()I

    move-result v1

    .line 106
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/BinaryBitmap;->getHeight()I

    move-result v2

    .line 107
    new-instance v3, Lcom/google/zxing/common/BitArray;

    invoke-direct {v3, v1}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    .line 109
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_1d

    sget-object v6, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    const/4 v6, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v6, 0x0

    .line 110
    :goto_1e
    if-eqz v6, :cond_23

    const/16 v7, 0x8

    goto :goto_24

    :cond_23
    const/4 v7, 0x5

    :goto_24
    shr-int v7, v2, v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 112
    if-eqz v6, :cond_2e

    .line 113
    move v6, v2

    goto :goto_30

    .line 115
    :cond_2e
    const/16 v6, 0xf

    .line 118
    :goto_30
    div-int/lit8 v8, v2, 0x2

    .line 119
    move-object v9, v3

    move-object v3, v0

    const/4 v0, 0x0

    :goto_35
    if-ge v0, v6, :cond_fe

    .line 122
    add-int/lit8 v10, v0, 0x1

    div-int/lit8 v11, v10, 0x2

    .line 123
    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_41

    const/4 v0, 0x1

    goto :goto_42

    :cond_41
    const/4 v0, 0x0

    .line 124
    :goto_42
    if-eqz v0, :cond_45

    goto :goto_46

    :cond_45
    neg-int v11, v11

    :goto_46
    mul-int v11, v11, v7

    add-int/2addr v11, v8

    .line 125
    if-ltz v11, :cond_fb

    if-ge v11, v2, :cond_fb

    .line 132
    move-object/from16 v12, p1

    :try_start_4f
    invoke-virtual {v12, v11, v9}, Lcom/google/zxing/BinaryBitmap;->getBlackRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;

    move-result-object v9
    :try_end_53
    .catch Lcom/google/zxing/NotFoundException; {:try_start_4f .. :try_end_53} :catch_e9

    .line 135
    nop

    .line 139
    const/4 v13, 0x0

    :goto_55
    const/4 v0, 0x2

    if-ge v13, v0, :cond_e1

    .line 140
    if-ne v13, v5, :cond_77

    .line 141
    invoke-virtual {v9}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 146
    if-eqz v3, :cond_77

    sget-object v0, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 147
    new-instance v0, Ljava/util/EnumMap;

    const-class v14, Lcom/google/zxing/DecodeHintType;

    invoke-direct {v0, v14}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 148
    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 149
    sget-object v3, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    move-object v3, v0

    .line 155
    :cond_77
    move-object/from16 v14, p0

    :try_start_79
    invoke-virtual {v14, v11, v9, v3}, Lcom/google/zxing/oned/OneDReader;->decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v0

    .line 157
    if-ne v13, v5, :cond_d0

    .line 159
    sget-object v15, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    const/16 v16, 0xb4

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v15, v5}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 161
    invoke-virtual {v0}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v5

    .line 162
    if-eqz v5, :cond_d0

    .line 163
    new-instance v15, Lcom/google/zxing/ResultPoint;
    :try_end_92
    .catch Lcom/google/zxing/ReaderException; {:try_start_79 .. :try_end_92} :catch_d1

    move/from16 v16, v2

    int-to-float v2, v1

    :try_start_95
    aget-object v18, v5, v4

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v18
    :try_end_9b
    .catch Lcom/google/zxing/ReaderException; {:try_start_95 .. :try_end_9b} :catch_cc

    sub-float v18, v2, v18

    const/high16 v19, 0x3f800000    # 1.0f

    move/from16 v20, v1

    sub-float v1, v18, v19

    :try_start_a3
    aget-object v18, v5, v4

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v4

    invoke-direct {v15, v1, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    const/4 v1, 0x0

    aput-object v15, v5, v1

    .line 164
    new-instance v4, Lcom/google/zxing/ResultPoint;
    :try_end_b1
    .catch Lcom/google/zxing/ReaderException; {:try_start_a3 .. :try_end_b1} :catch_ca

    const/4 v15, 0x1

    :try_start_b2
    aget-object v17, v5, v15

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v17

    sub-float v2, v2, v17

    sub-float v2, v2, v19

    aget-object v17, v5, v15

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    invoke-direct {v4, v2, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v4, v5, v15
    :try_end_c7
    .catch Lcom/google/zxing/ReaderException; {:try_start_b2 .. :try_end_c7} :catch_c8

    goto :goto_d0

    .line 168
    :catch_c8
    move-exception v0

    goto :goto_d7

    :catch_ca
    move-exception v0

    goto :goto_d6

    :catch_cc
    move-exception v0

    move/from16 v20, v1

    goto :goto_d6

    .line 167
    :cond_d0
    :goto_d0
    return-object v0

    .line 168
    :catch_d1
    move-exception v0

    move/from16 v20, v1

    move/from16 v16, v2

    :goto_d6
    const/4 v15, 0x1

    .line 139
    :goto_d7
    add-int/lit8 v13, v13, 0x1

    move/from16 v2, v16

    move/from16 v1, v20

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto/16 :goto_55

    :cond_e1
    move-object/from16 v14, p0

    move/from16 v20, v1

    move/from16 v16, v2

    const/4 v15, 0x1

    goto :goto_f2

    .line 133
    :catch_e9
    move-exception v0

    move-object/from16 v14, p0

    move/from16 v20, v1

    move/from16 v16, v2

    const/4 v15, 0x1

    .line 134
    nop

    .line 119
    :goto_f2
    move v0, v10

    move/from16 v2, v16

    move/from16 v1, v20

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto/16 :goto_35

    .line 125
    :cond_fb
    move-object/from16 v14, p0

    goto :goto_100

    .line 119
    :cond_fe
    move-object/from16 v14, p0

    .line 174
    :goto_100
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method protected static patternMatchVariance([I[IF)F
    .registers 14
    .param p0, "counters"    # [I
    .param p1, "pattern"    # [I
    .param p2, "maxIndividualVariance"    # F

    .line 252
    array-length v0, p0

    .line 253
    .local v0, "numCounters":I
    const/4 v1, 0x0

    .line 254
    .local v1, "total":I
    const/4 v2, 0x0

    .line 255
    .local v2, "patternLength":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    if-ge v3, v0, :cond_f

    .line 256
    aget v4, p0, v3

    add-int/2addr v1, v4

    .line 257
    aget v4, p1, v3

    add-int/2addr v2, v4

    .line 255
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 259
    .end local v3    # "i":I
    :cond_f
    const/high16 v3, 0x7f800000    # Float.POSITIVE_INFINITY

    if-ge v1, v2, :cond_14

    .line 262
    return v3

    .line 265
    :cond_14
    int-to-float v4, v1

    int-to-float v5, v2

    div-float/2addr v4, v5

    .line 266
    .local v4, "unitBarWidth":F
    mul-float p2, p2, v4

    .line 268
    const/4 v5, 0x0

    .line 269
    .local v5, "totalVariance":F
    const/4 v6, 0x0

    .local v6, "x":I
    const/4 v7, 0x0

    :goto_1c
    if-ge v6, v0, :cond_3a

    .line 270
    aget v8, p0, v6

    .line 271
    .local v8, "counter":I
    aget v9, p1, v6

    int-to-float v9, v9

    mul-float v9, v9, v4

    .line 272
    .local v9, "scaledPattern":F
    int-to-float v10, v8

    cmpl-float v10, v10, v9

    if-lez v10, :cond_2d

    int-to-float v10, v8

    sub-float/2addr v10, v9

    goto :goto_30

    :cond_2d
    int-to-float v10, v8

    sub-float v10, v9, v10

    .line 273
    .local v7, "variance":F
    :goto_30
    move v7, v10

    cmpl-float v10, v10, p2

    if-lez v10, :cond_36

    .line 274
    return v3

    .line 276
    :cond_36
    add-float/2addr v5, v7

    .line 269
    .end local v7    # "variance":F
    .end local v8    # "counter":I
    .end local v9    # "scaledPattern":F
    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    .line 278
    .end local v6    # "x":I
    :cond_3a
    int-to-float v3, v1

    div-float v3, v5, v3

    return v3
.end method

.method protected static recordPattern(Lcom/google/zxing/common/BitArray;I[I)V
    .registers 11
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .param p1, "start"    # I
    .param p2, "counters"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 193
    array-length v0, p2

    .line 194
    .local v0, "numCounters":I
    const/4 v1, 0x0

    invoke-static {p2, v1, v0, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 195
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    .line 196
    .local v2, "end":I
    if-ge p1, v2, :cond_3f

    .line 199
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    .line 200
    .local v3, "isWhite":Z
    const/4 v5, 0x0

    .line 201
    .local v5, "counterPosition":I
    move v6, p1

    .line 202
    .local v6, "i":I
    :goto_13
    if-ge v6, v2, :cond_30

    .line 203
    invoke-virtual {p0, v6}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v7

    if-eq v7, v3, :cond_21

    .line 204
    aget v7, p2, v5

    add-int/2addr v7, v4

    aput v7, p2, v5

    goto :goto_2d

    .line 206
    :cond_21
    add-int/lit8 v5, v5, 0x1

    if-eq v5, v0, :cond_30

    .line 209
    aput v4, p2, v5

    .line 210
    if-nez v3, :cond_2b

    const/4 v7, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v7, 0x0

    :goto_2c
    move v3, v7

    .line 213
    :goto_2d
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    .line 217
    :cond_30
    if-eq v5, v0, :cond_3e

    add-int/lit8 v1, v0, -0x1

    if-ne v5, v1, :cond_39

    if-ne v6, v2, :cond_39

    goto :goto_3e

    .line 218
    :cond_39
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 220
    :cond_3e
    :goto_3e
    return-void

    .line 197
    .end local v3    # "isWhite":Z
    .end local v5    # "counterPosition":I
    .end local v6    # "i":I
    :cond_3f
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1
.end method

.method protected static recordPatternInReverse(Lcom/google/zxing/common/BitArray;I[I)V
    .registers 6
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .param p1, "start"    # I
    .param p2, "counters"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 225
    array-length v0, p2

    .line 226
    .local v0, "numTransitionsLeft":I
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    .line 227
    .local v1, "last":Z
    :cond_5
    :goto_5
    if-lez p1, :cond_1a

    if-ltz v0, :cond_1a

    .line 228
    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-eq v2, v1, :cond_5

    .line 229
    add-int/lit8 v0, v0, -0x1

    .line 230
    if-nez v1, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    move v1, v2

    goto :goto_5

    .line 233
    :cond_1a
    if-gez v0, :cond_22

    .line 236
    add-int/lit8 v2, p1, 0x1

    invoke-static {p0, v2, p2}, Lcom/google/zxing/oned/OneDReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 237
    return-void

    .line 234
    :cond_22
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2
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

    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/oned/OneDReader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method public decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    .registers 14
    .param p1, "image"    # Lcom/google/zxing/BinaryBitmap;
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

    .line 54
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/oned/OneDReader;->doDecode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v0
    :try_end_4
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 55
    :catch_5
    move-exception v0

    .line 56
    .local v0, "nfe":Lcom/google/zxing/NotFoundException;
    if-eqz p2, :cond_12

    sget-object v1, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    .line 57
    :goto_13
    if-eqz v1, :cond_7a

    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->isRotateSupported()Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 58
    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->rotateCounterClockwise()Lcom/google/zxing/BinaryBitmap;

    move-result-object v1

    .line 59
    .local v1, "rotatedImage":Lcom/google/zxing/BinaryBitmap;
    invoke-direct {p0, v1, p2}, Lcom/google/zxing/oned/OneDReader;->doDecode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 61
    .local v4, "result":Lcom/google/zxing/Result;
    move-object v4, v2

    invoke-virtual {v2}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v2

    .line 62
    .local v2, "metadata":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultMetadataType;*>;"
    const/16 v5, 0x10e

    .line 63
    .local v5, "orientation":I
    if-eqz v2, :cond_46

    sget-object v6, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_46

    .line 65
    sget-object v6, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    .line 66
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit16 v6, v6, 0x10e

    rem-int/lit16 v5, v6, 0x168

    .line 68
    :cond_46
    sget-object v6, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 70
    invoke-virtual {v4}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v6

    .line 71
    .local v3, "points":[Lcom/google/zxing/ResultPoint;
    move-object v3, v6

    if-eqz v6, :cond_79

    .line 72
    invoke-virtual {v1}, Lcom/google/zxing/BinaryBitmap;->getHeight()I

    move-result v6

    .line 73
    .local v6, "height":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_5b
    array-length v8, v3

    if-ge v7, v8, :cond_79

    .line 74
    new-instance v8, Lcom/google/zxing/ResultPoint;

    int-to-float v9, v6

    aget-object v10, v3, v7

    invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v10

    sub-float/2addr v9, v10

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v9, v10

    aget-object v10, v3, v7

    invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v10

    invoke-direct {v8, v9, v10}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v8, v3, v7

    .line 73
    add-int/lit8 v7, v7, 0x1

    goto :goto_5b

    .line 77
    .end local v6    # "height":I
    .end local v7    # "i":I
    :cond_79
    return-object v4

    .line 79
    .end local v1    # "rotatedImage":Lcom/google/zxing/BinaryBitmap;
    .end local v2    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultMetadataType;*>;"
    .end local v3    # "points":[Lcom/google/zxing/ResultPoint;
    .end local v4    # "result":Lcom/google/zxing/Result;
    .end local v5    # "orientation":I
    :cond_7a
    throw v0
.end method

.method public abstract decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
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
.end method

.method public reset()V
    .registers 1

    .line 87
    return-void
.end method
