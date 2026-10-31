.class public final Lcom/google/zxing/aztec/decoder/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/aztec/decoder/Decoder$Table;
    }
.end annotation


# static fields
.field private static final DIGIT_TABLE:[Ljava/lang/String;

.field private static final LOWER_TABLE:[Ljava/lang/String;

.field private static final MIXED_TABLE:[Ljava/lang/String;

.field private static final PUNCT_TABLE:[Ljava/lang/String;

.field private static final UPPER_TABLE:[Ljava/lang/String;


# instance fields
.field private ddata:Lcom/google/zxing/aztec/AztecDetectorResult;


# direct methods
.method static constructor <clinit>()V
    .registers 33

    .line 46
    const-string v30, "CTRL_DL"

    const-string v31, "CTRL_BS"

    const-string v0, "CTRL_PS"

    const-string v1, " "

    const-string v2, "A"

    const-string v3, "B"

    const-string v4, "C"

    const-string v5, "D"

    const-string v6, "E"

    const-string v7, "F"

    const-string v8, "G"

    const-string v9, "H"

    const-string v10, "I"

    const-string v11, "J"

    const-string v12, "K"

    const-string v13, "L"

    const-string v14, "M"

    const-string v15, "N"

    const-string v16, "O"

    const-string v17, "P"

    const-string v18, "Q"

    const-string v19, "R"

    const-string v20, "S"

    const-string v21, "T"

    const-string v22, "U"

    const-string v23, "V"

    const-string v24, "W"

    const-string v25, "X"

    const-string v26, "Y"

    const-string v27, "Z"

    const-string v28, "CTRL_LL"

    const-string v29, "CTRL_ML"

    filled-new-array/range {v0 .. v31}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->UPPER_TABLE:[Ljava/lang/String;

    .line 51
    const-string v31, "CTRL_DL"

    const-string v32, "CTRL_BS"

    const-string v1, "CTRL_PS"

    const-string v2, " "

    const-string v3, "a"

    const-string v4, "b"

    const-string v5, "c"

    const-string v6, "d"

    const-string v7, "e"

    const-string v8, "f"

    const-string v9, "g"

    const-string v10, "h"

    const-string v11, "i"

    const-string v12, "j"

    const-string v13, "k"

    const-string v14, "l"

    const-string v15, "m"

    const-string v16, "n"

    const-string v17, "o"

    const-string v18, "p"

    const-string v19, "q"

    const-string v20, "r"

    const-string v21, "s"

    const-string v22, "t"

    const-string v23, "u"

    const-string v24, "v"

    const-string v25, "w"

    const-string v26, "x"

    const-string v27, "y"

    const-string v28, "z"

    const-string v29, "CTRL_US"

    const-string v30, "CTRL_ML"

    filled-new-array/range {v1 .. v32}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->LOWER_TABLE:[Ljava/lang/String;

    .line 56
    const-string v31, "CTRL_PL"

    const-string v32, "CTRL_BS"

    const-string v1, "CTRL_PS"

    const-string v2, " "

    const-string v3, "\u0001"

    const-string v4, "\u0002"

    const-string v5, "\u0003"

    const-string v6, "\u0004"

    const-string v7, "\u0005"

    const-string v8, "\u0006"

    const-string v9, "\u0007"

    const-string v10, "\u0008"

    const-string v11, "\t"

    const-string v12, "\n"

    const-string v13, "\u000b"

    const-string v14, "\u000c"

    const-string v15, "\r"

    const-string v16, "\u001b"

    const-string v17, "\u001c"

    const-string v18, "\u001d"

    const-string v19, "\u001e"

    const-string v20, "\u001f"

    const-string v21, "@"

    const-string v22, "\\"

    const-string v23, "^"

    const-string v24, "_"

    const-string v25, "`"

    const-string v26, "|"

    const-string v27, "~"

    const-string v28, "\u007f"

    const-string v29, "CTRL_LL"

    const-string v30, "CTRL_UL"

    filled-new-array/range {v1 .. v32}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->MIXED_TABLE:[Ljava/lang/String;

    .line 62
    const-string v31, "}"

    const-string v32, "CTRL_UL"

    const-string v1, ""

    const-string v2, "\r"

    const-string v3, "\r\n"

    const-string v4, ". "

    const-string v5, ", "

    const-string v6, ": "

    const-string v7, "!"

    const-string v8, "\""

    const-string v9, "#"

    const-string v10, "$"

    const-string v11, "%"

    const-string v12, "&"

    const-string v13, "\'"

    const-string v14, "("

    const-string v15, ")"

    const-string v16, "*"

    const-string v17, "+"

    const-string v18, ","

    const-string v19, "-"

    const-string v20, "."

    const-string v21, "/"

    const-string v22, ":"

    const-string v23, ";"

    const-string v24, "<"

    const-string v25, "="

    const-string v26, ">"

    const-string v27, "?"

    const-string v28, "["

    const-string v29, "]"

    const-string v30, "{"

    filled-new-array/range {v1 .. v32}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->PUNCT_TABLE:[Ljava/lang/String;

    .line 67
    const-string v15, "CTRL_UL"

    const-string v16, "CTRL_US"

    const-string v1, "CTRL_PS"

    const-string v2, " "

    const-string v3, "0"

    const-string v4, "1"

    const-string v5, "2"

    const-string v6, "3"

    const-string v7, "4"

    const-string v8, "5"

    const-string v9, "6"

    const-string v10, "7"

    const-string v11, "8"

    const-string v12, "9"

    const-string v13, ","

    const-string v14, "."

    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->DIGIT_TABLE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static convertBoolArrayToByteArray([Z)[B
    .registers 4
    .param p0, "boolArr"    # [Z

    .line 356
    array-length v0, p0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    .line 357
    .local v0, "byteArr":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    array-length v2, v0

    if-ge v1, v2, :cond_16

    .line 358
    shl-int/lit8 v2, v1, 0x3

    invoke-static {p0, v2}, Lcom/google/zxing/aztec/decoder/Decoder;->readByte([ZI)B

    move-result v2

    aput-byte v2, v0, v1

    .line 357
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 360
    .end local v1    # "i":I
    :cond_16
    return-object v0
.end method

.method private correctBits([Z)[Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_e

    .line 210
    nop

    .line 211
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_6:Lcom/google/zxing/common/reedsolomon/GenericGF;

    const/4 v1, 0x6

    goto :goto_31

    .line 212
    :cond_e
    iget-object v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_1c

    .line 213
    nop

    .line 214
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_8:Lcom/google/zxing/common/reedsolomon/GenericGF;

    goto :goto_31

    .line 215
    :cond_1c
    iget-object v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v0

    const/16 v1, 0x16

    if-gt v0, v1, :cond_2c

    .line 216
    nop

    .line 217
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_10:Lcom/google/zxing/common/reedsolomon/GenericGF;

    const/16 v1, 0xa

    goto :goto_31

    .line 219
    :cond_2c
    nop

    .line 220
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_12:Lcom/google/zxing/common/reedsolomon/GenericGF;

    const/16 v1, 0xc

    .line 223
    :goto_31
    iget-object v2, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v2}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbDatablocks()I

    move-result v2

    .line 224
    array-length v3, p1

    div-int/2addr v3, v1

    .line 225
    if-lt v3, v2, :cond_b5

    .line 228
    array-length v4, p1

    rem-int/2addr v4, v1

    .line 230
    new-array v5, v3, [I

    .line 231
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_41
    if-ge v7, v3, :cond_4d

    .line 232
    invoke-static {p1, v4, v1}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v8

    aput v8, v5, v7

    .line 231
    add-int/lit8 v7, v7, 0x1

    add-int/2addr v4, v1

    goto :goto_41

    .line 236
    :cond_4d
    :try_start_4d
    new-instance p1, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    invoke-direct {p1, v0}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    .line 237
    sub-int/2addr v3, v2

    invoke-virtual {p1, v5, v3}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decode([II)V
    :try_end_56
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_4d .. :try_end_56} :catch_af

    .line 240
    nop

    .line 244
    const/4 p1, 0x1

    shl-int v0, p1, v1

    sub-int/2addr v0, p1

    .line 245
    nop

    .line 246
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_5e
    if-ge v3, v2, :cond_76

    .line 247
    aget v7, v5, v3

    .line 248
    if-eqz v7, :cond_71

    if-eq v7, v0, :cond_71

    .line 250
    if-eq v7, p1, :cond_6c

    add-int/lit8 v8, v0, -0x1

    if-ne v7, v8, :cond_6e

    .line 251
    :cond_6c
    add-int/lit8 v4, v4, 0x1

    .line 246
    :cond_6e
    add-int/lit8 v3, v3, 0x1

    goto :goto_5e

    .line 249
    :cond_71
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p1

    throw p1

    .line 255
    :cond_76
    mul-int v3, v2, v1

    sub-int/2addr v3, v4

    new-array v3, v3, [Z

    .line 256
    nop

    .line 257
    const/4 v4, 0x0

    const/4 v7, 0x0

    :goto_7e
    if-ge v4, v2, :cond_ae

    .line 258
    aget v8, v5, v4

    .line 259
    if-eq v8, p1, :cond_9d

    add-int/lit8 v9, v0, -0x1

    if-ne v8, v9, :cond_89

    goto :goto_9d

    .line 264
    :cond_89
    add-int/lit8 v9, v1, -0x1

    :goto_8b
    if-ltz v9, :cond_ab

    .line 265
    add-int/lit8 v10, v7, 0x1

    shl-int v11, p1, v9

    and-int/2addr v11, v8

    if-eqz v11, :cond_96

    const/4 v11, 0x1

    goto :goto_97

    :cond_96
    const/4 v11, 0x0

    :goto_97
    aput-boolean v11, v3, v7

    .line 264
    add-int/lit8 v9, v9, -0x1

    move v7, v10

    goto :goto_8b

    .line 261
    :cond_9d
    :goto_9d
    add-int v9, v7, v1

    sub-int/2addr v9, p1

    if-le v8, p1, :cond_a4

    const/4 v8, 0x1

    goto :goto_a5

    :cond_a4
    const/4 v8, 0x0

    :goto_a5
    invoke-static {v3, v7, v9, v8}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 262
    add-int/lit8 v8, v1, -0x1

    add-int/2addr v7, v8

    .line 257
    :cond_ab
    add-int/lit8 v4, v4, 0x1

    goto :goto_7e

    .line 269
    :cond_ae
    return-object v3

    .line 239
    :catch_af
    move-exception p1

    invoke-static {p1}, Lcom/google/zxing/FormatException;->getFormatInstance(Ljava/lang/Throwable;)Lcom/google/zxing/FormatException;

    move-result-object p1

    throw p1

    .line 226
    :cond_b5
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p1

    throw p1
.end method

.method private extractBits(Lcom/google/zxing/common/BitMatrix;)[Z
    .registers 20
    .param p1, "matrix"    # Lcom/google/zxing/common/BitMatrix;

    .line 278
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v2}, Lcom/google/zxing/aztec/AztecDetectorResult;->isCompact()Z

    move-result v2

    .line 279
    .local v2, "compact":Z
    iget-object v3, v0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v3}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v3

    .line 280
    .local v3, "layers":I
    if-eqz v2, :cond_15

    const/16 v4, 0xb

    goto :goto_17

    :cond_15
    const/16 v4, 0xe

    :goto_17
    shl-int/lit8 v5, v3, 0x2

    add-int/2addr v4, v5

    const/4 v5, 0x0

    .line 281
    .local v5, "baseMatrixSize":I
    move v5, v4

    new-array v4, v4, [I

    .line 282
    .local v4, "alignmentMap":[I
    invoke-static {v3, v2}, Lcom/google/zxing/aztec/decoder/Decoder;->totalBitsInLayer(IZ)I

    move-result v6

    new-array v6, v6, [Z

    .line 284
    .local v6, "rawbits":[Z
    const/4 v7, 0x2

    if-eqz v2, :cond_31

    .line 285
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_28
    array-length v9, v4

    if-ge v8, v9, :cond_30

    .line 286
    aput v8, v4, v8

    .line 285
    add-int/lit8 v8, v8, 0x1

    goto :goto_28

    .end local v8    # "i":I
    :cond_30
    goto :goto_5b

    .line 289
    :cond_31
    add-int/lit8 v8, v5, 0x1

    div-int/lit8 v9, v5, 0x2

    add-int/lit8 v9, v9, -0x1

    div-int/lit8 v9, v9, 0xf

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    .line 290
    .local v8, "matrixSize":I
    div-int/lit8 v9, v5, 0x2

    .line 291
    .local v9, "origCenter":I
    div-int/lit8 v10, v8, 0x2

    .line 292
    .local v10, "center":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_41
    if-ge v11, v9, :cond_5b

    .line 293
    div-int/lit8 v12, v11, 0xf

    add-int/2addr v12, v11

    .line 294
    .local v12, "newOffset":I
    sub-int v13, v9, v11

    add-int/lit8 v13, v13, -0x1

    sub-int v14, v10, v12

    add-int/lit8 v14, v14, -0x1

    aput v14, v4, v13

    .line 295
    add-int v13, v9, v11

    add-int v14, v10, v12

    add-int/lit8 v14, v14, 0x1

    aput v14, v4, v13

    .line 292
    .end local v12    # "newOffset":I
    add-int/lit8 v11, v11, 0x1

    goto :goto_41

    .line 298
    .end local v8    # "matrixSize":I
    .end local v9    # "origCenter":I
    .end local v10    # "center":I
    .end local v11    # "i":I
    :cond_5b
    :goto_5b
    const/4 v8, 0x0

    .local v8, "i":I
    const/4 v9, 0x0

    .local v9, "rowOffset":I
    :goto_5d
    if-ge v8, v3, :cond_e0

    .line 299
    sub-int v10, v3, v8

    shl-int/2addr v10, v7

    if-eqz v2, :cond_67

    const/16 v11, 0x9

    goto :goto_69

    :cond_67
    const/16 v11, 0xc

    :goto_69
    add-int/2addr v10, v11

    .line 301
    .local v10, "rowSize":I
    shl-int/lit8 v11, v8, 0x1

    .line 303
    .local v11, "low":I
    add-int/lit8 v12, v5, -0x1

    sub-int/2addr v12, v11

    .line 305
    .local v12, "high":I
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_70
    if-ge v13, v10, :cond_d4

    .line 306
    shl-int/lit8 v14, v13, 0x1

    .line 307
    .local v14, "columnOffset":I
    const/4 v15, 0x0

    .local v15, "k":I
    :goto_75
    if-ge v15, v7, :cond_cc

    .line 309
    add-int v16, v9, v14

    add-int v16, v16, v15

    add-int v17, v11, v15

    aget v7, v4, v17

    add-int v17, v11, v13

    aget v0, v4, v17

    .line 310
    invoke-virtual {v1, v7, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v0

    aput-boolean v0, v6, v16

    .line 312
    mul-int/lit8 v0, v10, 0x2

    add-int/2addr v0, v9

    add-int/2addr v0, v14

    add-int/2addr v0, v15

    add-int v7, v11, v13

    aget v7, v4, v7

    sub-int v16, v12, v15

    move/from16 v17, v2

    .end local v2    # "compact":Z
    .local v17, "compact":Z
    aget v2, v4, v16

    .line 313
    invoke-virtual {v1, v7, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    aput-boolean v2, v6, v0

    .line 315
    mul-int/lit8 v0, v10, 0x4

    add-int/2addr v0, v9

    add-int/2addr v0, v14

    add-int/2addr v0, v15

    sub-int v2, v12, v15

    aget v2, v4, v2

    sub-int v7, v12, v13

    aget v7, v4, v7

    .line 316
    invoke-virtual {v1, v2, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    aput-boolean v2, v6, v0

    .line 318
    mul-int/lit8 v0, v10, 0x6

    add-int/2addr v0, v9

    add-int/2addr v0, v14

    add-int/2addr v0, v15

    sub-int v2, v12, v13

    aget v2, v4, v2

    add-int v7, v11, v15

    aget v7, v4, v7

    .line 319
    invoke-virtual {v1, v2, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    aput-boolean v2, v6, v0

    .line 307
    add-int/lit8 v15, v15, 0x1

    const/4 v7, 0x2

    move-object/from16 v0, p0

    move/from16 v2, v17

    goto :goto_75

    .end local v17    # "compact":Z
    .restart local v2    # "compact":Z
    :cond_cc
    move/from16 v17, v2

    .line 305
    .end local v2    # "compact":Z
    .end local v14    # "columnOffset":I
    .end local v15    # "k":I
    .restart local v17    # "compact":Z
    add-int/lit8 v13, v13, 0x1

    const/4 v7, 0x2

    move-object/from16 v0, p0

    goto :goto_70

    .end local v17    # "compact":Z
    .restart local v2    # "compact":Z
    :cond_d4
    move/from16 v17, v2

    .line 322
    .end local v2    # "compact":Z
    .end local v13    # "j":I
    .restart local v17    # "compact":Z
    shl-int/lit8 v0, v10, 0x3

    add-int/2addr v9, v0

    .line 298
    .end local v10    # "rowSize":I
    .end local v11    # "low":I
    .end local v12    # "high":I
    add-int/lit8 v8, v8, 0x1

    const/4 v7, 0x2

    move-object/from16 v0, p0

    goto/16 :goto_5d

    .line 324
    .end local v8    # "i":I
    .end local v9    # "rowOffset":I
    .end local v17    # "compact":Z
    .restart local v2    # "compact":Z
    :cond_e0
    return-object v6
.end method

.method private static getCharacter(Lcom/google/zxing/aztec/decoder/Decoder$Table;I)Ljava/lang/String;
    .registers 4
    .param p0, "table"    # Lcom/google/zxing/aztec/decoder/Decoder$Table;
    .param p1, "code"    # I

    .line 182
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$1;->$SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table:[I

    invoke-virtual {p0}, Lcom/google/zxing/aztec/decoder/Decoder$Table;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2c

    .line 195
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bad table"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :pswitch_13
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->DIGIT_TABLE:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0

    .line 190
    :pswitch_18
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->PUNCT_TABLE:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0

    .line 188
    :pswitch_1d
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->MIXED_TABLE:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0

    .line 186
    :pswitch_22
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->LOWER_TABLE:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0

    .line 184
    :pswitch_27
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->UPPER_TABLE:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_27
        :pswitch_22
        :pswitch_1d
        :pswitch_18
        :pswitch_13
    .end packed-switch
.end method

.method private static getEncodedData([Z)Ljava/lang/String;
    .registers 11

    .line 96
    array-length v0, p0

    .line 97
    sget-object v1, Lcom/google/zxing/aztec/decoder/Decoder$Table;->UPPER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    .line 98
    sget-object v2, Lcom/google/zxing/aztec/decoder/Decoder$Table;->UPPER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x14

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 100
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 101
    :goto_e
    if-ge v5, v0, :cond_84

    .line 102
    sget-object v6, Lcom/google/zxing/aztec/decoder/Decoder$Table;->BINARY:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    const/4 v7, 0x5

    if-ne v2, v6, :cond_4b

    .line 103
    sub-int v2, v0, v5

    if-lt v2, v7, :cond_84

    .line 106
    invoke-static {p0, v5, v7}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v2

    .line 107
    add-int/lit8 v5, v5, 0x5

    .line 108
    if-nez v2, :cond_2f

    .line 109
    sub-int v2, v0, v5

    const/16 v6, 0xb

    if-lt v2, v6, :cond_84

    .line 112
    invoke-static {p0, v5, v6}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v2

    add-int/lit8 v2, v2, 0x1f

    .line 113
    add-int/lit8 v5, v5, 0xb

    .line 115
    :cond_2f
    const/4 v6, 0x0

    :goto_30
    if-ge v6, v2, :cond_48

    .line 116
    sub-int v7, v0, v5

    const/16 v8, 0x8

    if-ge v7, v8, :cond_3b

    .line 117
    nop

    .line 118
    move v5, v0

    goto :goto_48

    .line 120
    :cond_3b
    invoke-static {p0, v5, v8}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v7

    .line 121
    int-to-char v7, v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 122
    add-int/lit8 v5, v5, 0x8

    .line 115
    add-int/lit8 v6, v6, 0x1

    goto :goto_30

    .line 125
    :cond_48
    :goto_48
    nop

    .line 126
    move-object v2, v1

    goto :goto_e

    .line 127
    :cond_4b
    sget-object v6, Lcom/google/zxing/aztec/decoder/Decoder$Table;->DIGIT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    if-ne v2, v6, :cond_51

    const/4 v6, 0x4

    goto :goto_52

    :cond_51
    const/4 v6, 0x5

    .line 128
    :goto_52
    sub-int v8, v0, v5

    if-lt v8, v6, :cond_84

    .line 131
    invoke-static {p0, v5, v6}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v8

    .line 132
    add-int/2addr v5, v6

    .line 133
    invoke-static {v2, v8}, Lcom/google/zxing/aztec/decoder/Decoder;->getCharacter(Lcom/google/zxing/aztec/decoder/Decoder$Table;I)Ljava/lang/String;

    move-result-object v6

    .line 134
    const-string v8, "CTRL_"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7f

    .line 139
    nop

    .line 140
    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/google/zxing/aztec/decoder/Decoder;->getTable(C)Lcom/google/zxing/aztec/decoder/Decoder$Table;

    move-result-object v1

    .line 141
    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x4c

    if-ne v6, v7, :cond_7b

    .line 142
    move-object v2, v1

    goto :goto_e

    .line 141
    :cond_7b
    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    goto :goto_83

    .line 145
    :cond_7f
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    move-object v2, v1

    .line 149
    :goto_83
    goto :goto_e

    .line 151
    :cond_84
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getTable(C)Lcom/google/zxing/aztec/decoder/Decoder$Table;
    .registers 2
    .param p0, "t"    # C

    .line 158
    sparse-switch p0, :sswitch_data_16

    .line 171
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->UPPER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    return-object v0

    .line 162
    :sswitch_6
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->PUNCT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    return-object v0

    .line 164
    :sswitch_9
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->MIXED:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    return-object v0

    .line 160
    :sswitch_c
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->LOWER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    return-object v0

    .line 166
    :sswitch_f
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->DIGIT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    return-object v0

    .line 168
    :sswitch_12
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->BINARY:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    return-object v0

    nop

    :sswitch_data_16
    .sparse-switch
        0x42 -> :sswitch_12
        0x44 -> :sswitch_f
        0x4c -> :sswitch_c
        0x4d -> :sswitch_9
        0x50 -> :sswitch_6
    .end sparse-switch
.end method

.method public static highLevelDecode([Z)Ljava/lang/String;
    .registers 2
    .param p0, "correctedBits"    # [Z

    .line 87
    invoke-static {p0}, Lcom/google/zxing/aztec/decoder/Decoder;->getEncodedData([Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static readByte([ZI)B
    .registers 5
    .param p0, "rawbits"    # [Z
    .param p1, "startIndex"    # I

    .line 345
    array-length v0, p0

    sub-int/2addr v0, p1

    const/4 v1, 0x0

    .line 346
    .local v1, "n":I
    move v1, v0

    const/16 v2, 0x8

    if-lt v0, v2, :cond_e

    .line 347
    invoke-static {p0, p1, v2}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v0

    int-to-byte v0, v0

    return v0

    .line 349
    :cond_e
    invoke-static {p0, p1, v1}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v0

    rsub-int/lit8 v2, v1, 0x8

    shl-int/2addr v0, v2

    int-to-byte v0, v0

    return v0
.end method

.method private static readCode([ZII)I
    .registers 6
    .param p0, "rawbits"    # [Z
    .param p1, "startIndex"    # I
    .param p2, "length"    # I

    .line 331
    const/4 v0, 0x0

    .line 332
    .local v0, "res":I
    move v1, p1

    .local v1, "i":I
    :goto_2
    add-int v2, p1, p2

    if-ge v1, v2, :cond_11

    .line 333
    shl-int/lit8 v0, v0, 0x1

    .line 334
    aget-boolean v2, p0, v1

    if-eqz v2, :cond_e

    .line 335
    or-int/lit8 v0, v0, 0x1

    .line 332
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 338
    .end local v1    # "i":I
    :cond_11
    return v0
.end method

.method private static totalBitsInLayer(IZ)I
    .registers 4
    .param p0, "layers"    # I
    .param p1, "compact"    # Z

    .line 364
    if-eqz p1, :cond_5

    const/16 v0, 0x58

    goto :goto_7

    :cond_5
    const/16 v0, 0x70

    :goto_7
    shl-int/lit8 v1, p0, 0x4

    add-int/2addr v0, v1

    mul-int v0, v0, p0

    return v0
.end method


# virtual methods
.method public decode(Lcom/google/zxing/aztec/AztecDetectorResult;)Lcom/google/zxing/common/DecoderResult;
    .registers 10
    .param p1, "detectorResult"    # Lcom/google/zxing/aztec/AztecDetectorResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    .line 75
    invoke-virtual {p1}, Lcom/google/zxing/aztec/AztecDetectorResult;->getBits()Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    .line 76
    .local v0, "matrix":Lcom/google/zxing/common/BitMatrix;
    invoke-direct {p0, v0}, Lcom/google/zxing/aztec/decoder/Decoder;->extractBits(Lcom/google/zxing/common/BitMatrix;)[Z

    move-result-object v1

    .line 77
    .local v1, "rawbits":[Z
    invoke-direct {p0, v1}, Lcom/google/zxing/aztec/decoder/Decoder;->correctBits([Z)[Z

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 78
    .local v4, "correctedBits":[Z
    move-object v4, v2

    invoke-static {v2}, Lcom/google/zxing/aztec/decoder/Decoder;->convertBoolArrayToByteArray([Z)[B

    move-result-object v2

    .line 79
    .local v2, "rawBytes":[B
    invoke-static {v4}, Lcom/google/zxing/aztec/decoder/Decoder;->getEncodedData([Z)Ljava/lang/String;

    move-result-object v5

    .line 80
    .local v5, "result":Ljava/lang/String;
    new-instance v6, Lcom/google/zxing/common/DecoderResult;

    const/4 v7, 0x0

    invoke-direct {v6, v2, v5, v7, v7}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 81
    .local v3, "decoderResult":Lcom/google/zxing/common/DecoderResult;
    move-object v3, v6

    array-length v7, v4

    invoke-virtual {v6, v7}, Lcom/google/zxing/common/DecoderResult;->setNumBits(I)V

    .line 82
    return-object v3
.end method
