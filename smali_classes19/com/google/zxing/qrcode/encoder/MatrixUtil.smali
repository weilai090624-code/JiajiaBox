.class final Lcom/google/zxing/qrcode/encoder/MatrixUtil;
.super Ljava/lang/Object;
.source "MatrixUtil.java"


# static fields
.field private static final POSITION_ADJUSTMENT_PATTERN:[[I

.field private static final POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE:[[I

.field private static final POSITION_DETECTION_PATTERN:[[I

.field private static final TYPE_INFO_COORDINATES:[[I

.field private static final TYPE_INFO_MASK_PATTERN:I = 0x5412

.field private static final TYPE_INFO_POLY:I = 0x537

.field private static final VERSION_INFO_POLY:I = 0x1f25


# direct methods
.method static constructor <clinit>()V
    .registers 42

    .line 30
    const/4 v0, 0x7

    new-array v1, v0, [I

    fill-array-data v1, :array_272

    new-array v2, v0, [I

    fill-array-data v2, :array_284

    new-array v3, v0, [I

    fill-array-data v3, :array_296

    new-array v4, v0, [I

    fill-array-data v4, :array_2a8

    new-array v5, v0, [I

    fill-array-data v5, :array_2ba

    new-array v6, v0, [I

    fill-array-data v6, :array_2cc

    new-array v7, v0, [I

    fill-array-data v7, :array_2de

    new-array v8, v0, [[I

    const/4 v9, 0x0

    aput-object v1, v8, v9

    const/4 v1, 0x1

    aput-object v2, v8, v1

    const/4 v2, 0x2

    aput-object v3, v8, v2

    const/4 v3, 0x3

    aput-object v4, v8, v3

    const/4 v4, 0x4

    aput-object v5, v8, v4

    const/4 v5, 0x5

    aput-object v6, v8, v5

    const/4 v6, 0x6

    aput-object v7, v8, v6

    sput-object v8, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_DETECTION_PATTERN:[[I

    .line 40
    new-array v7, v5, [[I

    filled-new-array {v1, v1, v1, v1, v1}, [I

    move-result-object v8

    aput-object v8, v7, v9

    filled-new-array {v1, v9, v9, v9, v1}, [I

    move-result-object v8

    aput-object v8, v7, v1

    filled-new-array {v1, v9, v1, v9, v1}, [I

    move-result-object v8

    aput-object v8, v7, v2

    filled-new-array {v1, v9, v9, v9, v1}, [I

    move-result-object v8

    aput-object v8, v7, v3

    filled-new-array {v1, v1, v1, v1, v1}, [I

    move-result-object v8

    aput-object v8, v7, v4

    sput-object v7, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN:[[I

    .line 49
    new-array v7, v0, [I

    fill-array-data v7, :array_2f0

    new-array v8, v0, [I

    fill-array-data v8, :array_302

    new-array v10, v0, [I

    fill-array-data v10, :array_314

    new-array v11, v0, [I

    fill-array-data v11, :array_326

    new-array v12, v0, [I

    fill-array-data v12, :array_338

    new-array v13, v0, [I

    fill-array-data v13, :array_34a

    new-array v14, v0, [I

    fill-array-data v14, :array_35c

    new-array v15, v0, [I

    fill-array-data v15, :array_36e

    new-array v6, v0, [I

    fill-array-data v6, :array_380

    new-array v5, v0, [I

    fill-array-data v5, :array_392

    new-array v4, v0, [I

    fill-array-data v4, :array_3a4

    new-array v3, v0, [I

    fill-array-data v3, :array_3b6

    new-array v2, v0, [I

    fill-array-data v2, :array_3c8

    new-array v1, v0, [I

    fill-array-data v1, :array_3da

    new-array v9, v0, [I

    fill-array-data v9, :array_3ec

    move-object/from16 v17, v9

    new-array v9, v0, [I

    fill-array-data v9, :array_3fe

    move-object/from16 v18, v9

    new-array v9, v0, [I

    fill-array-data v9, :array_410

    move-object/from16 v19, v9

    new-array v9, v0, [I

    fill-array-data v9, :array_422

    move-object/from16 v20, v9

    new-array v9, v0, [I

    fill-array-data v9, :array_434

    move-object/from16 v21, v9

    new-array v9, v0, [I

    fill-array-data v9, :array_446

    move-object/from16 v22, v9

    new-array v9, v0, [I

    fill-array-data v9, :array_458

    move-object/from16 v23, v9

    new-array v9, v0, [I

    fill-array-data v9, :array_46a

    move-object/from16 v24, v9

    new-array v9, v0, [I

    fill-array-data v9, :array_47c

    move-object/from16 v25, v9

    new-array v9, v0, [I

    fill-array-data v9, :array_48e

    move-object/from16 v26, v9

    new-array v9, v0, [I

    fill-array-data v9, :array_4a0

    move-object/from16 v27, v9

    new-array v9, v0, [I

    fill-array-data v9, :array_4b2

    move-object/from16 v28, v9

    new-array v9, v0, [I

    fill-array-data v9, :array_4c4

    move-object/from16 v29, v9

    new-array v9, v0, [I

    fill-array-data v9, :array_4d6

    move-object/from16 v30, v9

    new-array v9, v0, [I

    fill-array-data v9, :array_4e8

    move-object/from16 v31, v9

    new-array v9, v0, [I

    fill-array-data v9, :array_4fa

    move-object/from16 v32, v9

    new-array v9, v0, [I

    fill-array-data v9, :array_50c

    move-object/from16 v33, v9

    new-array v9, v0, [I

    fill-array-data v9, :array_51e

    move-object/from16 v34, v9

    new-array v9, v0, [I

    fill-array-data v9, :array_530

    move-object/from16 v35, v9

    new-array v9, v0, [I

    fill-array-data v9, :array_542

    move-object/from16 v36, v9

    new-array v9, v0, [I

    fill-array-data v9, :array_554

    move-object/from16 v37, v9

    new-array v9, v0, [I

    fill-array-data v9, :array_566

    move-object/from16 v38, v9

    new-array v9, v0, [I

    fill-array-data v9, :array_578

    move-object/from16 v39, v9

    new-array v9, v0, [I

    fill-array-data v9, :array_58a

    move-object/from16 v40, v9

    new-array v9, v0, [I

    fill-array-data v9, :array_59c

    move-object/from16 v41, v9

    new-array v9, v0, [I

    fill-array-data v9, :array_5ae

    const/16 v0, 0x28

    new-array v0, v0, [[I

    const/16 v16, 0x0

    aput-object v7, v0, v16

    const/4 v7, 0x1

    aput-object v8, v0, v7

    const/4 v7, 0x2

    aput-object v10, v0, v7

    const/4 v7, 0x3

    aput-object v11, v0, v7

    const/4 v7, 0x4

    aput-object v12, v0, v7

    const/4 v7, 0x5

    aput-object v13, v0, v7

    const/4 v7, 0x6

    aput-object v14, v0, v7

    const/4 v7, 0x7

    aput-object v15, v0, v7

    const/16 v7, 0x8

    aput-object v6, v0, v7

    const/16 v6, 0x9

    aput-object v5, v0, v6

    const/16 v5, 0xa

    aput-object v4, v0, v5

    const/16 v4, 0xb

    aput-object v3, v0, v4

    const/16 v3, 0xc

    aput-object v2, v0, v3

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const/16 v1, 0xe

    aput-object v17, v0, v1

    const/16 v1, 0xf

    aput-object v18, v0, v1

    const/16 v1, 0x10

    aput-object v19, v0, v1

    const/16 v1, 0x11

    aput-object v20, v0, v1

    const/16 v1, 0x12

    aput-object v21, v0, v1

    const/16 v1, 0x13

    aput-object v22, v0, v1

    const/16 v1, 0x14

    aput-object v23, v0, v1

    const/16 v1, 0x15

    aput-object v24, v0, v1

    const/16 v1, 0x16

    aput-object v25, v0, v1

    const/16 v1, 0x17

    aput-object v26, v0, v1

    const/16 v1, 0x18

    aput-object v27, v0, v1

    const/16 v1, 0x19

    aput-object v28, v0, v1

    const/16 v1, 0x1a

    aput-object v29, v0, v1

    const/16 v1, 0x1b

    aput-object v30, v0, v1

    const/16 v1, 0x1c

    aput-object v31, v0, v1

    const/16 v1, 0x1d

    aput-object v32, v0, v1

    const/16 v1, 0x1e

    aput-object v33, v0, v1

    const/16 v1, 0x1f

    aput-object v34, v0, v1

    const/16 v1, 0x20

    aput-object v35, v0, v1

    const/16 v1, 0x21

    aput-object v36, v0, v1

    const/16 v1, 0x22

    aput-object v37, v0, v1

    const/16 v1, 0x23

    aput-object v38, v0, v1

    const/16 v1, 0x24

    aput-object v39, v0, v1

    const/16 v1, 0x25

    aput-object v40, v0, v1

    const/16 v1, 0x26

    aput-object v41, v0, v1

    const/16 v1, 0x27

    aput-object v9, v0, v1

    sput-object v0, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE:[[I

    .line 93
    const/16 v0, 0xf

    new-array v0, v0, [[I

    const/4 v1, 0x0

    filled-new-array {v7, v1}, [I

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    filled-new-array {v7, v1}, [I

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    filled-new-array {v7, v1}, [I

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    filled-new-array {v7, v1}, [I

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    filled-new-array {v7, v1}, [I

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    filled-new-array {v7, v1}, [I

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v2, 0x7

    filled-new-array {v7, v2}, [I

    move-result-object v3

    const/4 v4, 0x6

    aput-object v3, v0, v4

    filled-new-array {v7, v7}, [I

    move-result-object v3

    aput-object v3, v0, v2

    filled-new-array {v2, v7}, [I

    move-result-object v2

    aput-object v2, v0, v7

    filled-new-array {v1, v7}, [I

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const/4 v1, 0x4

    filled-new-array {v1, v7}, [I

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const/4 v1, 0x3

    filled-new-array {v1, v7}, [I

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const/4 v1, 0x2

    filled-new-array {v1, v7}, [I

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const/4 v1, 0x1

    filled-new-array {v1, v7}, [I

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const/4 v1, 0x0

    filled-new-array {v1, v7}, [I

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->TYPE_INFO_COORDINATES:[[I

    return-void

    :array_272
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_284
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_296
    .array-data 4
        0x1
        0x0
        0x1
        0x1
        0x1
        0x0
        0x1
    .end array-data

    :array_2a8
    .array-data 4
        0x1
        0x0
        0x1
        0x1
        0x1
        0x0
        0x1
    .end array-data

    :array_2ba
    .array-data 4
        0x1
        0x0
        0x1
        0x1
        0x1
        0x0
        0x1
    .end array-data

    :array_2cc
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_2de
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_2f0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_302
    .array-data 4
        0x6
        0x12
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_314
    .array-data 4
        0x6
        0x16
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_326
    .array-data 4
        0x6
        0x1a
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_338
    .array-data 4
        0x6
        0x1e
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_34a
    .array-data 4
        0x6
        0x22
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_35c
    .array-data 4
        0x6
        0x16
        0x26
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_36e
    .array-data 4
        0x6
        0x18
        0x2a
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_380
    .array-data 4
        0x6
        0x1a
        0x2e
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_392
    .array-data 4
        0x6
        0x1c
        0x32
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_3a4
    .array-data 4
        0x6
        0x1e
        0x36
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_3b6
    .array-data 4
        0x6
        0x20
        0x3a
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_3c8
    .array-data 4
        0x6
        0x22
        0x3e
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_3da
    .array-data 4
        0x6
        0x1a
        0x2e
        0x42
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_3ec
    .array-data 4
        0x6
        0x1a
        0x30
        0x46
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_3fe
    .array-data 4
        0x6
        0x1a
        0x32
        0x4a
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_410
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_422
    .array-data 4
        0x6
        0x1e
        0x38
        0x52
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_434
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_446
    .array-data 4
        0x6
        0x22
        0x3e
        0x5a
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_458
    .array-data 4
        0x6
        0x1c
        0x32
        0x48
        0x5e
        -0x1
        -0x1
    .end array-data

    :array_46a
    .array-data 4
        0x6
        0x1a
        0x32
        0x4a
        0x62
        -0x1
        -0x1
    .end array-data

    :array_47c
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        0x66
        -0x1
        -0x1
    .end array-data

    :array_48e
    .array-data 4
        0x6
        0x1c
        0x36
        0x50
        0x6a
        -0x1
        -0x1
    .end array-data

    :array_4a0
    .array-data 4
        0x6
        0x20
        0x3a
        0x54
        0x6e
        -0x1
        -0x1
    .end array-data

    :array_4b2
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        0x72
        -0x1
        -0x1
    .end array-data

    :array_4c4
    .array-data 4
        0x6
        0x22
        0x3e
        0x5a
        0x76
        -0x1
        -0x1
    .end array-data

    :array_4d6
    .array-data 4
        0x6
        0x1a
        0x32
        0x4a
        0x62
        0x7a
        -0x1
    .end array-data

    :array_4e8
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        0x66
        0x7e
        -0x1
    .end array-data

    :array_4fa
    .array-data 4
        0x6
        0x1a
        0x34
        0x4e
        0x68
        0x82
        -0x1
    .end array-data

    :array_50c
    .array-data 4
        0x6
        0x1e
        0x38
        0x52
        0x6c
        0x86
        -0x1
    .end array-data

    :array_51e
    .array-data 4
        0x6
        0x22
        0x3c
        0x56
        0x70
        0x8a
        -0x1
    .end array-data

    :array_530
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        0x72
        0x8e
        -0x1
    .end array-data

    :array_542
    .array-data 4
        0x6
        0x22
        0x3e
        0x5a
        0x76
        0x92
        -0x1
    .end array-data

    :array_554
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        0x66
        0x7e
        0x96
    .end array-data

    :array_566
    .array-data 4
        0x6
        0x18
        0x32
        0x4c
        0x66
        0x80
        0x9a
    .end array-data

    :array_578
    .array-data 4
        0x6
        0x1c
        0x36
        0x50
        0x6a
        0x84
        0x9e
    .end array-data

    :array_58a
    .array-data 4
        0x6
        0x20
        0x3a
        0x54
        0x6e
        0x88
        0xa2
    .end array-data

    :array_59c
    .array-data 4
        0x6
        0x1a
        0x36
        0x52
        0x6e
        0x8a
        0xa6
    .end array-data

    :array_5ae
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        0x72
        0x8e
        0xaa
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    return-void
.end method

.method static buildMatrix(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .registers 5
    .param p0, "dataBits"    # Lcom/google/zxing/common/BitArray;
    .param p1, "ecLevel"    # Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .param p2, "version"    # Lcom/google/zxing/qrcode/decoder/Version;
    .param p3, "maskPattern"    # I
    .param p4, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 137
    invoke-static {p4}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->clearMatrix(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 138
    invoke-static {p2, p4}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedBasicPatterns(Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 140
    invoke-static {p1, p3, p4}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedTypeInfo(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 142
    invoke-static {p2, p4}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->maybeEmbedVersionInfo(Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 144
    invoke-static {p0, p3, p4}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedDataBits(Lcom/google/zxing/common/BitArray;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 145
    return-void
.end method

.method static calculateBCHCode(II)I
    .registers 4
    .param p0, "value"    # I
    .param p1, "poly"    # I

    .line 304
    if-eqz p1, :cond_19

    .line 309
    invoke-static {p1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->findMSBSet(I)I

    move-result v0

    .line 310
    .local v0, "msbSetInPoly":I
    add-int/lit8 v1, v0, -0x1

    shl-int/2addr p0, v1

    .line 312
    :goto_9
    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->findMSBSet(I)I

    move-result v1

    if-lt v1, v0, :cond_18

    .line 313
    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->findMSBSet(I)I

    move-result v1

    sub-int/2addr v1, v0

    shl-int v1, p1, v1

    xor-int/2addr p0, v1

    goto :goto_9

    .line 316
    :cond_18
    return p0

    .line 305
    .end local v0    # "msbSetInPoly":I
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "0 polynomial"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static clearMatrix(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .registers 2
    .param p0, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    .line 127
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->clear(B)V

    .line 128
    return-void
.end method

.method static embedBasicPatterns(Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .registers 2
    .param p0, "version"    # Lcom/google/zxing/qrcode/decoder/Version;
    .param p1, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 155
    invoke-static {p1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedPositionDetectionPatternsAndSeparators(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 157
    invoke-static {p1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedDarkDotAtLeftBottomCorner(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 160
    invoke-static {p0, p1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->maybeEmbedPositionAdjustmentPatterns(Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 162
    invoke-static {p1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedTimingPatterns(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 163
    return-void
.end method

.method private static embedDarkDotAtLeftBottomCorner(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .registers 4
    .param p0, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 377
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v0

    const/16 v1, 0x8

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v0

    if-eqz v0, :cond_17

    .line 380
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v0

    sub-int/2addr v0, v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    .line 381
    return-void

    .line 378
    :cond_17
    new-instance v0, Lcom/google/zxing/WriterException;

    invoke-direct {v0}, Lcom/google/zxing/WriterException;-><init>()V

    throw v0
.end method

.method static embedDataBits(Lcom/google/zxing/common/BitArray;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .registers 11
    .param p0, "dataBits"    # Lcom/google/zxing/common/BitArray;
    .param p1, "maskPattern"    # I
    .param p2, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 224
    const/4 v0, 0x0

    .line 225
    .local v0, "bitIndex":I
    const/4 v1, -0x1

    .line 227
    .local v1, "direction":I
    invoke-virtual {p2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 228
    .local v2, "x":I
    invoke-virtual {p2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 229
    .local v3, "y":I
    :goto_e
    if-lez v2, :cond_54

    .line 231
    const/4 v4, 0x6

    if-ne v2, v4, :cond_15

    .line 232
    add-int/lit8 v2, v2, -0x1

    .line 234
    :cond_15
    :goto_15
    if-ltz v3, :cond_4f

    invoke-virtual {p2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_4f

    .line 235
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1e
    const/4 v5, 0x2

    if-ge v4, v5, :cond_4d

    .line 236
    sub-int v5, v2, v4

    .line 238
    .local v5, "xx":I
    invoke-virtual {p2, v5, v3}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v6

    invoke-static {v6}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v6

    if-eqz v6, :cond_4a

    .line 242
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v6

    if-ge v0, v6, :cond_3a

    .line 243
    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v6

    .line 244
    .local v6, "bit":Z
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    .line 248
    .end local v6    # "bit":Z
    :cond_3a
    const/4 v6, 0x0

    .line 252
    .restart local v6    # "bit":Z
    :goto_3b
    const/4 v7, -0x1

    if-eq p1, v7, :cond_47

    invoke-static {p1, v5, v3}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->getDataMaskBit(III)Z

    move-result v7

    if-eqz v7, :cond_47

    .line 253
    xor-int/lit8 v7, v6, 0x1

    move v6, v7

    .line 255
    :cond_47
    invoke-virtual {p2, v5, v3, v6}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 235
    .end local v5    # "xx":I
    .end local v6    # "bit":Z
    :cond_4a
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 257
    .end local v4    # "i":I
    :cond_4d
    add-int/2addr v3, v1

    goto :goto_15

    .line 259
    :cond_4f
    neg-int v1, v1

    .line 260
    add-int/2addr v3, v1

    .line 261
    add-int/lit8 v2, v2, -0x2

    goto :goto_e

    .line 264
    :cond_54
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    if-ne v0, v4, :cond_5b

    .line 267
    return-void

    .line 265
    :cond_5b
    new-instance v4, Lcom/google/zxing/WriterException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Not all bits consumed: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static embedHorizontalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .registers 6
    .param p0, "xStart"    # I
    .param p1, "yStart"    # I
    .param p2, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 386
    const/4 v0, 0x0

    .local v0, "x":I
    :goto_1
    const/16 v1, 0x8

    if-ge v0, v1, :cond_20

    .line 387
    add-int v1, p0, v0

    invoke-virtual {p2, v1, p1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v1

    invoke-static {v1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 390
    add-int v1, p0, v0

    const/4 v2, 0x0

    invoke-virtual {p2, v1, p1, v2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    .line 386
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 388
    :cond_1a
    new-instance v1, Lcom/google/zxing/WriterException;

    invoke-direct {v1}, Lcom/google/zxing/WriterException;-><init>()V

    throw v1

    .line 392
    .end local v0    # "x":I
    :cond_20
    return-void
.end method

.method private static embedPositionAdjustmentPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .registers 10
    .param p0, "xStart"    # I
    .param p1, "yStart"    # I
    .param p2, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    .line 406
    const/4 v0, 0x0

    .local v0, "y":I
    :goto_1
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1a

    .line 407
    sget-object v2, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN:[[I

    aget-object v2, v2, v0

    .line 408
    .local v2, "patternY":[I
    const/4 v3, 0x0

    .local v3, "x":I
    :goto_9
    if-ge v3, v1, :cond_17

    .line 409
    add-int v4, p0, v3

    add-int v5, p1, v0

    aget v6, v2, v3

    invoke-virtual {p2, v4, v5, v6}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    .line 408
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 406
    .end local v2    # "patternY":[I
    .end local v3    # "x":I
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 412
    .end local v0    # "y":I
    :cond_1a
    return-void
.end method

.method private static embedPositionDetectionPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .registers 10
    .param p0, "xStart"    # I
    .param p1, "yStart"    # I
    .param p2, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    .line 415
    const/4 v0, 0x0

    .local v0, "y":I
    :goto_1
    const/4 v1, 0x7

    if-ge v0, v1, :cond_1a

    .line 416
    sget-object v2, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_DETECTION_PATTERN:[[I

    aget-object v2, v2, v0

    .line 417
    .local v2, "patternY":[I
    const/4 v3, 0x0

    .local v3, "x":I
    :goto_9
    if-ge v3, v1, :cond_17

    .line 418
    add-int v4, p0, v3

    add-int v5, p1, v0

    aget v6, v2, v3

    invoke-virtual {p2, v4, v5, v6}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    .line 417
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 415
    .end local v2    # "patternY":[I
    .end local v3    # "x":I
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 421
    .end local v0    # "y":I
    :cond_1a
    return-void
.end method

.method private static embedPositionDetectionPatternsAndSeparators(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .registers 5
    .param p0, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 426
    sget-object v0, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_DETECTION_PATTERN:[[I

    const/4 v1, 0x0

    aget-object v0, v0, v1

    array-length v0, v0

    .line 428
    .local v0, "pdpWidth":I
    invoke-static {v1, v1, p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedPositionDetectionPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 430
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-static {v2, v1, p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedPositionDetectionPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 432
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-static {v1, v2, p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedPositionDetectionPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 437
    const/4 v2, 0x7

    invoke-static {v1, v2, p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedHorizontalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 439
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, -0x8

    invoke-static {v3, v2, p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedHorizontalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 442
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, -0x8

    invoke-static {v1, v3, p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedHorizontalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 447
    invoke-static {v2, v1, p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedVerticalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 449
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v3

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3, v1, p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedVerticalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 451
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-static {v2, v1, p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedVerticalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 453
    return-void
.end method

.method private static embedTimingPatterns(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .registers 5
    .param p0, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    .line 362
    const/16 v0, 0x8

    .local v0, "i":I
    :goto_2
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x8

    if-ge v0, v1, :cond_2c

    .line 363
    add-int/lit8 v1, v0, 0x1

    rem-int/lit8 v1, v1, 0x2

    .line 365
    .local v1, "bit":I
    const/4 v2, 0x6

    invoke-virtual {p0, v0, v2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v3

    invoke-static {v3}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 366
    invoke-virtual {p0, v0, v2, v1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    .line 369
    :cond_1c
    invoke-virtual {p0, v2, v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v3

    invoke-static {v3}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 370
    invoke-virtual {p0, v2, v0, v1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    .line 362
    .end local v1    # "bit":I
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 373
    .end local v0    # "i":I
    :cond_2c
    return-void
.end method

.method static embedTypeInfo(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 168
    new-instance v0, Lcom/google/zxing/common/BitArray;

    invoke-direct {v0}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 169
    invoke-static {p0, p1, v0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->makeTypeInfoBits(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;ILcom/google/zxing/common/BitArray;)V

    .line 171
    const/4 p0, 0x0

    const/4 p1, 0x0

    :goto_a
    invoke-virtual {v0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    if-ge p1, v1, :cond_43

    .line 174
    invoke-virtual {v0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    sub-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    .line 177
    sget-object v3, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->TYPE_INFO_COORDINATES:[[I

    aget-object v3, v3, p1

    .line 178
    aget v4, v3, p0

    .line 179
    aget v3, v3, v2

    .line 180
    invoke-virtual {p2, v4, v3, v1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 182
    const/16 v3, 0x8

    if-ge p1, v3, :cond_34

    .line 184
    invoke-virtual {p2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v4

    sub-int/2addr v4, p1

    sub-int/2addr v4, v2

    .line 186
    invoke-virtual {p2, v4, v3, v1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 187
    goto :goto_40

    .line 190
    :cond_34
    invoke-virtual {p2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x7

    add-int/lit8 v4, p1, -0x8

    add-int/2addr v2, v4

    .line 191
    invoke-virtual {p2, v3, v2, v1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 171
    :goto_40
    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    .line 194
    :cond_43
    return-void
.end method

.method private static embedVerticalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .registers 6
    .param p0, "xStart"    # I
    .param p1, "yStart"    # I
    .param p2, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 397
    const/4 v0, 0x0

    .local v0, "y":I
    :goto_1
    const/4 v1, 0x7

    if-ge v0, v1, :cond_1f

    .line 398
    add-int v1, p1, v0

    invoke-virtual {p2, p0, v1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v1

    invoke-static {v1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 401
    add-int v1, p1, v0

    const/4 v2, 0x0

    invoke-virtual {p2, p0, v1, v2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    .line 397
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 399
    :cond_19
    new-instance v1, Lcom/google/zxing/WriterException;

    invoke-direct {v1}, Lcom/google/zxing/WriterException;-><init>()V

    throw v1

    .line 403
    .end local v0    # "y":I
    :cond_1f
    return-void
.end method

.method static findMSBSet(I)I
    .registers 2
    .param p0, "value"    # I

    .line 275
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x20

    return v0
.end method

.method private static isEmpty(I)Z
    .registers 2
    .param p0, "value"    # I

    .line 356
    const/4 v0, -0x1

    if-ne p0, v0, :cond_5

    const/4 v0, 0x1

    return v0

    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method static makeTypeInfoBits(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;ILcom/google/zxing/common/BitArray;)V
    .registers 9
    .param p0, "ecLevel"    # Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .param p1, "maskPattern"    # I
    .param p2, "bits"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 324
    invoke-static {p1}, Lcom/google/zxing/qrcode/encoder/QRCode;->isValidMaskPattern(I)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 327
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->getBits()I

    move-result v0

    shl-int/lit8 v0, v0, 0x3

    or-int/2addr v0, p1

    .line 328
    .local v0, "typeInfo":I
    const/4 v1, 0x5

    invoke-virtual {p2, v0, v1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 330
    const/16 v1, 0x537

    invoke-static {v0, v1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->calculateBCHCode(II)I

    move-result v1

    .line 331
    .local v1, "bchCode":I
    const/16 v2, 0xa

    invoke-virtual {p2, v1, v2}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 333
    new-instance v2, Lcom/google/zxing/common/BitArray;

    invoke-direct {v2}, Lcom/google/zxing/common/BitArray;-><init>()V

    const/4 v3, 0x0

    .line 334
    .local v3, "maskBits":Lcom/google/zxing/common/BitArray;
    move-object v3, v2

    const/16 v4, 0x5412

    const/16 v5, 0xf

    invoke-virtual {v2, v4, v5}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 335
    invoke-virtual {p2, v3}, Lcom/google/zxing/common/BitArray;->xor(Lcom/google/zxing/common/BitArray;)V

    .line 337
    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    if-ne v2, v5, :cond_34

    .line 340
    return-void

    .line 338
    :cond_34
    new-instance v2, Lcom/google/zxing/WriterException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "should not happen but we got: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 325
    .end local v0    # "typeInfo":I
    .end local v1    # "bchCode":I
    .end local v3    # "maskBits":Lcom/google/zxing/common/BitArray;
    :cond_4d
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Invalid mask pattern"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static makeVersionInfoBits(Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/common/BitArray;)V
    .registers 6
    .param p0, "version"    # Lcom/google/zxing/qrcode/decoder/Version;
    .param p1, "bits"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 345
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionNumber()I

    move-result v0

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 346
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionNumber()I

    move-result v0

    const/16 v1, 0x1f25

    invoke-static {v0, v1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->calculateBCHCode(II)I

    move-result v0

    .line 347
    .local v0, "bchCode":I
    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 349
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_20

    .line 352
    return-void

    .line 350
    :cond_20
    new-instance v1, Lcom/google/zxing/WriterException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "should not happen but we got: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static maybeEmbedPositionAdjustmentPatterns(Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .registers 14
    .param p0, "version"    # Lcom/google/zxing/qrcode/decoder/Version;
    .param p1, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    .line 457
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionNumber()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_8

    .line 458
    return-void

    .line 460
    :cond_8
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionNumber()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 461
    .local v0, "index":I
    sget-object v1, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE:[[I

    aget-object v1, v1, v0

    const/4 v2, 0x0

    .line 462
    .local v2, "coordinates":[I
    move-object v2, v1

    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_19
    if-ge v7, v3, :cond_40

    aget v8, v1, v7

    .line 463
    .local v5, "y":I
    move v5, v8

    if-ltz v8, :cond_3d

    .line 464
    array-length v8, v2

    const/4 v9, 0x0

    :goto_22
    if-ge v9, v8, :cond_3d

    aget v10, v2, v9

    .line 465
    .local v6, "x":I
    move v6, v10

    if-ltz v10, :cond_3a

    invoke-virtual {p1, v6, v5}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v10

    invoke-static {v10}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v10

    if-eqz v10, :cond_3a

    .line 469
    add-int/lit8 v10, v6, -0x2

    add-int/lit8 v11, v5, -0x2

    invoke-static {v10, v11, p1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedPositionAdjustmentPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 464
    .end local v6    # "x":I
    :cond_3a
    add-int/lit8 v9, v9, 0x1

    goto :goto_22

    .line 462
    .end local v5    # "y":I
    :cond_3d
    add-int/lit8 v7, v7, 0x1

    goto :goto_19

    .line 474
    :cond_40
    return-void
.end method

.method static maybeEmbedVersionInfo(Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .registers 8
    .param p0, "version"    # Lcom/google/zxing/qrcode/decoder/Version;
    .param p1, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 199
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionNumber()I

    move-result v0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_8

    .line 200
    return-void

    .line 202
    :cond_8
    new-instance v0, Lcom/google/zxing/common/BitArray;

    invoke-direct {v0}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 203
    .local v0, "versionInfoBits":Lcom/google/zxing/common/BitArray;
    invoke-static {p0, v0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->makeVersionInfoBits(Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/common/BitArray;)V

    .line 205
    const/16 v1, 0x11

    .line 206
    .local v1, "bitIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    const/4 v3, 0x6

    if-ge v2, v3, :cond_3a

    .line 207
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_17
    const/4 v4, 0x3

    if-ge v3, v4, :cond_37

    .line 209
    invoke-virtual {v0, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v4

    .line 210
    .local v4, "bit":Z
    add-int/lit8 v1, v1, -0x1

    .line 212
    invoke-virtual {p1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, -0xb

    add-int/2addr v5, v3

    invoke-virtual {p1, v2, v5, v4}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 214
    invoke-virtual {p1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, -0xb

    add-int/2addr v5, v3

    invoke-virtual {p1, v5, v2, v4}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 207
    .end local v4    # "bit":Z
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 206
    .end local v3    # "j":I
    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 217
    .end local v2    # "i":I
    :cond_3a
    return-void
.end method
