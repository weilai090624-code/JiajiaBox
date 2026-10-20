.class final Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;
.super Ljava/lang/Object;
.source "FieldParser.java"


# static fields
.field private static final FOUR_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

.field private static final THREE_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

.field private static final THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

.field private static final TWO_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

.field private static final VARIABLE_LENGTH:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 87

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    .line 39
    nop

    .line 44
    const/16 v0, 0x12

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    .line 55
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 44
    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "00"

    aput-object v6, v4, v5

    const/4 v6, 0x1

    aput-object v1, v4, v6

    .line 45
    const/16 v7, 0xe

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-array v9, v2, [Ljava/lang/Object;

    const-string v10, "01"

    aput-object v10, v9, v5

    aput-object v8, v9, v6

    .line 46
    new-array v10, v2, [Ljava/lang/Object;

    const-string v11, "02"

    aput-object v11, v10, v5

    aput-object v8, v10, v6

    .line 48
    const/16 v11, 0x14

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x3

    .line 97
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 48
    new-array v15, v13, [Ljava/lang/Object;

    const-string v16, "10"

    aput-object v16, v15, v5

    sget-object v16, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v16, v15, v6

    aput-object v12, v15, v2

    .line 49
    const/16 v16, 0x6

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    new-array v11, v2, [Ljava/lang/Object;

    const-string v19, "11"

    aput-object v19, v11, v5

    aput-object v17, v11, v6

    .line 50
    new-array v0, v2, [Ljava/lang/Object;

    const-string v20, "12"

    aput-object v20, v0, v5

    aput-object v17, v0, v6

    .line 51
    new-array v7, v2, [Ljava/lang/Object;

    const-string v21, "13"

    aput-object v21, v7, v5

    aput-object v17, v7, v6

    .line 52
    new-array v13, v2, [Ljava/lang/Object;

    const-string v22, "15"

    aput-object v22, v13, v5

    aput-object v17, v13, v6

    .line 53
    new-array v6, v2, [Ljava/lang/Object;

    const-string v23, "17"

    aput-object v23, v6, v5

    const/16 v22, 0x1

    aput-object v17, v6, v22

    .line 55
    move-object/from16 v23, v8

    new-array v8, v2, [Ljava/lang/Object;

    const-string v24, "20"

    aput-object v24, v8, v5

    aput-object v3, v8, v22

    .line 56
    move-object/from16 v25, v3

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Object;

    const-string v21, "21"

    aput-object v21, v3, v5

    sget-object v21, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v21, v3, v22

    const/16 v21, 0x2

    aput-object v12, v3, v21

    .line 57
    const/16 v24, 0x1d

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v26, v1

    new-array v1, v2, [Ljava/lang/Object;

    const-string v27, "22"

    aput-object v27, v1, v5

    sget-object v27, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v27, v1, v22

    aput-object v24, v1, v21

    .line 59
    const/16 v27, 0x8

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v28, v14

    new-array v14, v2, [Ljava/lang/Object;

    const-string v29, "30"

    aput-object v29, v14, v5

    sget-object v29, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v29, v14, v22

    aput-object v24, v14, v21

    .line 60
    move-object/from16 v29, v12

    new-array v12, v2, [Ljava/lang/Object;

    const-string v30, "37"

    aput-object v30, v12, v5

    sget-object v30, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v30, v12, v22

    aput-object v24, v12, v21

    .line 63
    const/16 v30, 0x1e

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v32, v12

    new-array v12, v2, [Ljava/lang/Object;

    const-string v24, "90"

    aput-object v24, v12, v5

    sget-object v24, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v24, v12, v22

    aput-object v31, v12, v21

    .line 64
    move-object/from16 v33, v12

    new-array v12, v2, [Ljava/lang/Object;

    const-string v24, "91"

    aput-object v24, v12, v5

    sget-object v24, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v24, v12, v22

    aput-object v31, v12, v21

    .line 65
    move-object/from16 v34, v12

    new-array v12, v2, [Ljava/lang/Object;

    const-string v24, "92"

    aput-object v24, v12, v5

    sget-object v24, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v24, v12, v22

    aput-object v31, v12, v21

    .line 66
    move-object/from16 v35, v12

    new-array v12, v2, [Ljava/lang/Object;

    const-string v24, "93"

    aput-object v24, v12, v5

    sget-object v24, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v24, v12, v22

    aput-object v31, v12, v21

    .line 67
    move-object/from16 v36, v12

    new-array v12, v2, [Ljava/lang/Object;

    const-string v24, "94"

    aput-object v24, v12, v5

    sget-object v24, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v24, v12, v22

    aput-object v31, v12, v21

    .line 68
    move-object/from16 v37, v12

    new-array v12, v2, [Ljava/lang/Object;

    const-string v24, "95"

    aput-object v24, v12, v5

    sget-object v24, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v24, v12, v22

    aput-object v31, v12, v21

    .line 69
    move-object/from16 v38, v12

    new-array v12, v2, [Ljava/lang/Object;

    const-string v24, "96"

    aput-object v24, v12, v5

    sget-object v24, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v24, v12, v22

    aput-object v31, v12, v21

    .line 70
    move-object/from16 v39, v12

    new-array v12, v2, [Ljava/lang/Object;

    const-string v24, "97"

    aput-object v24, v12, v5

    sget-object v24, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v24, v12, v22

    aput-object v31, v12, v21

    .line 71
    move-object/from16 v40, v12

    new-array v12, v2, [Ljava/lang/Object;

    const-string v24, "98"

    aput-object v24, v12, v5

    sget-object v24, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v24, v12, v22

    aput-object v31, v12, v21

    .line 72
    move-object/from16 v41, v12

    new-array v12, v2, [Ljava/lang/Object;

    const-string v24, "99"

    aput-object v24, v12, v5

    sget-object v24, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v24, v12, v22

    aput-object v31, v12, v21

    const/16 v2, 0x18

    new-array v2, v2, [[Ljava/lang/Object;

    aput-object v4, v2, v5

    aput-object v9, v2, v22

    aput-object v10, v2, v21

    const/4 v4, 0x3

    aput-object v15, v2, v4

    const/4 v4, 0x4

    aput-object v11, v2, v4

    const/4 v9, 0x5

    aput-object v0, v2, v9

    aput-object v7, v2, v16

    const/4 v0, 0x7

    aput-object v13, v2, v0

    aput-object v6, v2, v27

    const/16 v6, 0x9

    aput-object v8, v2, v6

    const/16 v7, 0xa

    .line 171
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 72
    aput-object v3, v2, v7

    const/16 v3, 0xb

    aput-object v1, v2, v3

    const/16 v1, 0xc

    aput-object v14, v2, v1

    const/16 v10, 0xd

    .line 90
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 72
    aput-object v32, v2, v10

    const/16 v13, 0xe

    aput-object v33, v2, v13

    const/16 v13, 0xf

    .line 96
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 72
    aput-object v34, v2, v13

    const/16 v15, 0x10

    aput-object v35, v2, v15

    const/16 v32, 0x11

    .line 83
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    .line 72
    aput-object v36, v2, v32

    const/16 v19, 0x12

    aput-object v37, v2, v19

    const/16 v34, 0x13

    aput-object v38, v2, v34

    const/16 v18, 0x14

    aput-object v39, v2, v18

    const/16 v35, 0x15

    aput-object v40, v2, v35

    const/16 v35, 0x16

    aput-object v41, v2, v35

    const/16 v35, 0x17

    aput-object v12, v2, v35

    sput-object v2, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->TWO_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    .line 75
    nop

    .line 78
    const/4 v2, 0x3

    new-array v12, v2, [Ljava/lang/Object;

    const-string v21, "240"

    aput-object v21, v12, v5

    sget-object v21, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    const/16 v22, 0x1

    aput-object v21, v12, v22

    const/4 v15, 0x2

    aput-object v31, v12, v15

    .line 79
    new-array v13, v2, [Ljava/lang/Object;

    const-string v21, "241"

    aput-object v21, v13, v5

    sget-object v21, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v21, v13, v22

    aput-object v31, v13, v15

    .line 80
    new-array v10, v2, [Ljava/lang/Object;

    const-string v21, "242"

    aput-object v21, v10, v5

    sget-object v21, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v21, v10, v22

    aput-object v17, v10, v15

    .line 81
    new-array v1, v2, [Ljava/lang/Object;

    const-string v21, "250"

    aput-object v21, v1, v5

    sget-object v21, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v21, v1, v22

    aput-object v31, v1, v15

    .line 82
    new-array v3, v2, [Ljava/lang/Object;

    const-string v21, "251"

    aput-object v21, v3, v5

    sget-object v21, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v21, v3, v22

    aput-object v31, v3, v15

    .line 83
    new-array v7, v2, [Ljava/lang/Object;

    const-string v21, "253"

    aput-object v21, v7, v5

    sget-object v21, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v21, v7, v22

    aput-object v33, v7, v15

    .line 84
    new-array v6, v2, [Ljava/lang/Object;

    const-string v21, "254"

    aput-object v21, v6, v5

    sget-object v21, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v21, v6, v22

    aput-object v29, v6, v15

    .line 86
    new-array v0, v2, [Ljava/lang/Object;

    const-string v21, "400"

    aput-object v21, v0, v5

    sget-object v21, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v21, v0, v22

    aput-object v31, v0, v15

    .line 87
    new-array v9, v2, [Ljava/lang/Object;

    const-string v2, "401"

    aput-object v2, v9, v5

    sget-object v2, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v2, v9, v22

    aput-object v31, v9, v15

    .line 88
    new-array v2, v15, [Ljava/lang/Object;

    const-string v24, "402"

    aput-object v24, v2, v5

    aput-object v33, v2, v22

    .line 89
    const/4 v4, 0x3

    new-array v15, v4, [Ljava/lang/Object;

    const-string v4, "403"

    aput-object v4, v15, v5

    sget-object v4, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v4, v15, v22

    const/4 v4, 0x2

    aput-object v31, v15, v4

    .line 90
    move-object/from16 v42, v8

    new-array v8, v4, [Ljava/lang/Object;

    const-string v24, "410"

    aput-object v24, v8, v5

    aput-object v11, v8, v22

    .line 91
    move-object/from16 v43, v8

    new-array v8, v4, [Ljava/lang/Object;

    const-string v24, "411"

    aput-object v24, v8, v5

    aput-object v11, v8, v22

    .line 92
    move-object/from16 v44, v8

    new-array v8, v4, [Ljava/lang/Object;

    const-string v24, "412"

    aput-object v24, v8, v5

    aput-object v11, v8, v22

    .line 93
    move-object/from16 v45, v8

    new-array v8, v4, [Ljava/lang/Object;

    const-string v24, "413"

    aput-object v24, v8, v5

    aput-object v11, v8, v22

    .line 94
    move-object/from16 v46, v8

    new-array v8, v4, [Ljava/lang/Object;

    const-string v24, "414"

    aput-object v24, v8, v5

    aput-object v11, v8, v22

    .line 95
    move-object/from16 v47, v11

    const/4 v4, 0x3

    new-array v11, v4, [Ljava/lang/Object;

    const-string v21, "420"

    aput-object v21, v11, v5

    sget-object v21, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v21, v11, v22

    const/4 v5, 0x2

    aput-object v29, v11, v5

    .line 96
    new-array v5, v4, [Ljava/lang/Object;

    const-string v4, "421"

    const/16 v48, 0x0

    aput-object v4, v5, v48

    sget-object v4, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v4, v5, v22

    const/4 v4, 0x2

    aput-object v14, v5, v4

    .line 97
    move-object/from16 v49, v5

    new-array v5, v4, [Ljava/lang/Object;

    const-string v24, "422"

    aput-object v24, v5, v48

    aput-object v28, v5, v22

    .line 98
    move-object/from16 v50, v5

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Object;

    const-string v4, "423"

    aput-object v4, v5, v48

    sget-object v4, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v4, v5, v22

    const/4 v4, 0x2

    aput-object v14, v5, v4

    .line 99
    move-object/from16 v51, v14

    new-array v14, v4, [Ljava/lang/Object;

    const-string v24, "424"

    aput-object v24, v14, v48

    aput-object v28, v14, v22

    .line 100
    move-object/from16 v52, v14

    new-array v14, v4, [Ljava/lang/Object;

    const-string v24, "425"

    aput-object v24, v14, v48

    aput-object v28, v14, v22

    .line 101
    move-object/from16 v53, v14

    new-array v14, v4, [Ljava/lang/Object;

    const-string v24, "426"

    aput-object v24, v14, v48

    aput-object v28, v14, v22

    const/16 v4, 0x17

    new-array v4, v4, [[Ljava/lang/Object;

    aput-object v12, v4, v48

    aput-object v13, v4, v22

    const/4 v12, 0x2

    aput-object v10, v4, v12

    const/4 v10, 0x3

    aput-object v1, v4, v10

    const/4 v1, 0x4

    aput-object v3, v4, v1

    const/4 v1, 0x5

    aput-object v7, v4, v1

    aput-object v6, v4, v16

    const/4 v1, 0x7

    aput-object v0, v4, v1

    aput-object v9, v4, v27

    const/16 v0, 0x9

    aput-object v2, v4, v0

    const/16 v0, 0xa

    aput-object v15, v4, v0

    const/16 v0, 0xb

    aput-object v43, v4, v0

    const/16 v0, 0xc

    aput-object v44, v4, v0

    const/16 v0, 0xd

    aput-object v45, v4, v0

    const/16 v0, 0xe

    aput-object v46, v4, v0

    const/16 v0, 0xf

    aput-object v8, v4, v0

    const/16 v0, 0x10

    aput-object v11, v4, v0

    aput-object v49, v4, v32

    const/16 v0, 0x12

    aput-object v50, v4, v0

    aput-object v5, v4, v34

    const/16 v0, 0x14

    aput-object v52, v4, v0

    const/16 v0, 0x15

    aput-object v53, v4, v0

    const/16 v0, 0x16

    aput-object v14, v4, v0

    sput-object v4, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    .line 104
    nop

    .line 107
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "310"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v17, v1, v2

    .line 108
    new-array v4, v0, [Ljava/lang/Object;

    const-string v5, "311"

    aput-object v5, v4, v3

    aput-object v17, v4, v2

    .line 109
    new-array v5, v0, [Ljava/lang/Object;

    const-string v6, "312"

    aput-object v6, v5, v3

    aput-object v17, v5, v2

    .line 110
    new-array v6, v0, [Ljava/lang/Object;

    const-string v7, "313"

    aput-object v7, v6, v3

    aput-object v17, v6, v2

    .line 111
    new-array v7, v0, [Ljava/lang/Object;

    const-string v8, "314"

    aput-object v8, v7, v3

    aput-object v17, v7, v2

    .line 112
    new-array v8, v0, [Ljava/lang/Object;

    const-string v9, "315"

    aput-object v9, v8, v3

    aput-object v17, v8, v2

    .line 113
    new-array v9, v0, [Ljava/lang/Object;

    const-string v10, "316"

    aput-object v10, v9, v3

    aput-object v17, v9, v2

    .line 114
    new-array v10, v0, [Ljava/lang/Object;

    const-string v11, "320"

    aput-object v11, v10, v3

    aput-object v17, v10, v2

    .line 115
    new-array v11, v0, [Ljava/lang/Object;

    const-string v12, "321"

    aput-object v12, v11, v3

    aput-object v17, v11, v2

    .line 116
    new-array v12, v0, [Ljava/lang/Object;

    const-string v13, "322"

    aput-object v13, v12, v3

    aput-object v17, v12, v2

    .line 117
    new-array v13, v0, [Ljava/lang/Object;

    const-string v14, "323"

    aput-object v14, v13, v3

    aput-object v17, v13, v2

    .line 118
    new-array v14, v0, [Ljava/lang/Object;

    const-string v15, "324"

    aput-object v15, v14, v3

    aput-object v17, v14, v2

    .line 119
    new-array v15, v0, [Ljava/lang/Object;

    const-string v22, "325"

    aput-object v22, v15, v3

    aput-object v17, v15, v2

    .line 120
    new-array v2, v0, [Ljava/lang/Object;

    const-string v24, "326"

    aput-object v24, v2, v3

    const/16 v22, 0x1

    aput-object v17, v2, v22

    .line 121
    move-object/from16 v28, v2

    new-array v2, v0, [Ljava/lang/Object;

    const-string v24, "327"

    aput-object v24, v2, v3

    aput-object v17, v2, v22

    .line 122
    move-object/from16 v43, v2

    new-array v2, v0, [Ljava/lang/Object;

    const-string v24, "328"

    aput-object v24, v2, v3

    aput-object v17, v2, v22

    .line 123
    move-object/from16 v44, v2

    new-array v2, v0, [Ljava/lang/Object;

    const-string v24, "329"

    aput-object v24, v2, v3

    aput-object v17, v2, v22

    .line 124
    move-object/from16 v45, v2

    new-array v2, v0, [Ljava/lang/Object;

    const-string v24, "330"

    aput-object v24, v2, v3

    aput-object v17, v2, v22

    .line 125
    move-object/from16 v46, v2

    new-array v2, v0, [Ljava/lang/Object;

    const-string v24, "331"

    aput-object v24, v2, v3

    aput-object v17, v2, v22

    .line 126
    move-object/from16 v49, v2

    new-array v2, v0, [Ljava/lang/Object;

    const-string v24, "332"

    aput-object v24, v2, v3

    aput-object v17, v2, v22

    .line 127
    move-object/from16 v50, v2

    new-array v2, v0, [Ljava/lang/Object;

    const-string v24, "333"

    aput-object v24, v2, v3

    aput-object v17, v2, v22

    .line 128
    move-object/from16 v52, v2

    new-array v2, v0, [Ljava/lang/Object;

    const-string v24, "334"

    aput-object v24, v2, v3

    aput-object v17, v2, v22

    .line 129
    move-object/from16 v53, v2

    new-array v2, v0, [Ljava/lang/Object;

    const-string v24, "335"

    aput-object v24, v2, v3

    aput-object v17, v2, v22

    .line 130
    move-object/from16 v54, v2

    new-array v2, v0, [Ljava/lang/Object;

    const-string v24, "336"

    aput-object v24, v2, v3

    aput-object v17, v2, v22

    .line 131
    move-object/from16 v55, v2

    new-array v2, v0, [Ljava/lang/Object;

    const-string v24, "340"

    aput-object v24, v2, v3

    aput-object v17, v2, v22

    .line 132
    move-object/from16 v56, v2

    new-array v2, v0, [Ljava/lang/Object;

    const-string v24, "341"

    aput-object v24, v2, v3

    aput-object v17, v2, v22

    .line 133
    move-object/from16 v57, v2

    new-array v2, v0, [Ljava/lang/Object;

    const-string v24, "342"

    aput-object v24, v2, v3

    aput-object v17, v2, v22

    .line 134
    move-object/from16 v58, v2

    new-array v2, v0, [Ljava/lang/Object;

    const-string v24, "343"

    aput-object v24, v2, v3

    aput-object v17, v2, v22

    .line 135
    move-object/from16 v59, v2

    new-array v2, v0, [Ljava/lang/Object;

    const-string v24, "344"

    aput-object v24, v2, v3

    aput-object v17, v2, v22

    .line 136
    move-object/from16 v60, v2

    new-array v2, v0, [Ljava/lang/Object;

    const-string v24, "345"

    aput-object v24, v2, v3

    aput-object v17, v2, v22

    .line 137
    move-object/from16 v61, v2

    new-array v2, v0, [Ljava/lang/Object;

    const-string v24, "346"

    aput-object v24, v2, v3

    aput-object v17, v2, v22

    .line 138
    move-object/from16 v62, v2

    new-array v2, v0, [Ljava/lang/Object;

    const-string v24, "347"

    aput-object v24, v2, v3

    aput-object v17, v2, v22

    .line 139
    move-object/from16 v63, v2

    new-array v2, v0, [Ljava/lang/Object;

    const-string v24, "348"

    aput-object v24, v2, v3

    aput-object v17, v2, v22

    .line 140
    move-object/from16 v64, v2

    new-array v2, v0, [Ljava/lang/Object;

    const-string v24, "349"

    aput-object v24, v2, v3

    aput-object v17, v2, v22

    .line 141
    move-object/from16 v65, v2

    new-array v2, v0, [Ljava/lang/Object;

    const-string v24, "350"

    aput-object v24, v2, v3

    aput-object v17, v2, v22

    .line 142
    move-object/from16 v66, v2

    new-array v2, v0, [Ljava/lang/Object;

    const-string v24, "351"

    aput-object v24, v2, v3

    aput-object v17, v2, v22

    .line 143
    move-object/from16 v67, v2

    new-array v2, v0, [Ljava/lang/Object;

    const-string v24, "352"

    aput-object v24, v2, v3

    aput-object v17, v2, v22

    .line 144
    move-object/from16 v68, v2

    new-array v2, v0, [Ljava/lang/Object;

    const-string v24, "353"

    aput-object v24, v2, v3

    aput-object v17, v2, v22

    .line 145
    move-object/from16 v69, v2

    new-array v2, v0, [Ljava/lang/Object;

    const-string v24, "354"

    aput-object v24, v2, v3

    aput-object v17, v2, v22

    .line 146
    move-object/from16 v70, v2

    new-array v2, v0, [Ljava/lang/Object;

    const-string v24, "355"

    aput-object v24, v2, v3

    aput-object v17, v2, v22

    .line 147
    move-object/from16 v71, v2

    new-array v2, v0, [Ljava/lang/Object;

    const-string v24, "356"

    aput-object v24, v2, v3

    aput-object v17, v2, v22

    .line 148
    move-object/from16 v72, v2

    new-array v2, v0, [Ljava/lang/Object;

    const-string v24, "357"

    aput-object v24, v2, v3

    aput-object v17, v2, v22

    .line 149
    move-object/from16 v73, v2

    new-array v2, v0, [Ljava/lang/Object;

    const-string v24, "360"

    aput-object v24, v2, v3

    aput-object v17, v2, v22

    .line 150
    move-object/from16 v74, v2

    new-array v2, v0, [Ljava/lang/Object;

    const-string v24, "361"

    aput-object v24, v2, v3

    aput-object v17, v2, v22

    .line 151
    move-object/from16 v75, v2

    new-array v2, v0, [Ljava/lang/Object;

    const-string v24, "362"

    aput-object v24, v2, v3

    aput-object v17, v2, v22

    .line 152
    move-object/from16 v76, v2

    new-array v2, v0, [Ljava/lang/Object;

    const-string v24, "363"

    aput-object v24, v2, v3

    aput-object v17, v2, v22

    .line 153
    move-object/from16 v77, v2

    new-array v2, v0, [Ljava/lang/Object;

    const-string v24, "364"

    aput-object v24, v2, v3

    aput-object v17, v2, v22

    .line 154
    move-object/from16 v78, v2

    new-array v2, v0, [Ljava/lang/Object;

    const-string v24, "365"

    aput-object v24, v2, v3

    aput-object v17, v2, v22

    .line 155
    move-object/from16 v79, v2

    new-array v2, v0, [Ljava/lang/Object;

    const-string v24, "366"

    aput-object v24, v2, v3

    aput-object v17, v2, v22

    .line 156
    move-object/from16 v80, v2

    new-array v2, v0, [Ljava/lang/Object;

    const-string v24, "367"

    aput-object v24, v2, v3

    aput-object v17, v2, v22

    .line 157
    move-object/from16 v81, v2

    new-array v2, v0, [Ljava/lang/Object;

    const-string v24, "368"

    aput-object v24, v2, v3

    aput-object v17, v2, v22

    .line 158
    move-object/from16 v82, v2

    new-array v2, v0, [Ljava/lang/Object;

    const-string v24, "369"

    aput-object v24, v2, v3

    aput-object v17, v2, v22

    .line 159
    move-object/from16 v83, v2

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    const-string v21, "390"

    aput-object v21, v2, v3

    sget-object v21, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v21, v2, v22

    const/16 v21, 0x2

    aput-object v51, v2, v21

    .line 160
    move-object/from16 v84, v2

    new-array v2, v0, [Ljava/lang/Object;

    const-string v24, "391"

    aput-object v24, v2, v3

    sget-object v24, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v24, v2, v22

    aput-object v26, v2, v21

    .line 161
    move-object/from16 v85, v2

    new-array v2, v0, [Ljava/lang/Object;

    const-string v24, "392"

    aput-object v24, v2, v3

    sget-object v24, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v24, v2, v22

    aput-object v51, v2, v21

    .line 162
    move-object/from16 v51, v2

    new-array v2, v0, [Ljava/lang/Object;

    const-string v24, "393"

    aput-object v24, v2, v3

    sget-object v24, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v24, v2, v22

    aput-object v26, v2, v21

    .line 163
    move-object/from16 v86, v2

    new-array v2, v0, [Ljava/lang/Object;

    const-string v24, "703"

    aput-object v24, v2, v3

    sget-object v24, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v24, v2, v22

    aput-object v31, v2, v21

    const/16 v0, 0x39

    new-array v0, v0, [[Ljava/lang/Object;

    aput-object v1, v0, v3

    aput-object v4, v0, v22

    aput-object v5, v0, v21

    const/4 v1, 0x3

    aput-object v6, v0, v1

    const/4 v1, 0x4

    aput-object v7, v0, v1

    const/4 v1, 0x5

    aput-object v8, v0, v1

    aput-object v9, v0, v16

    const/4 v1, 0x7

    aput-object v10, v0, v1

    aput-object v11, v0, v27

    const/16 v1, 0x9

    aput-object v12, v0, v1

    const/16 v1, 0xa

    aput-object v13, v0, v1

    const/16 v1, 0xb

    aput-object v14, v0, v1

    const/16 v1, 0xc

    aput-object v15, v0, v1

    const/16 v1, 0xd

    aput-object v28, v0, v1

    const/16 v1, 0xe

    aput-object v43, v0, v1

    const/16 v1, 0xf

    aput-object v44, v0, v1

    const/16 v1, 0x10

    aput-object v45, v0, v1

    aput-object v46, v0, v32

    const/16 v1, 0x12

    aput-object v49, v0, v1

    aput-object v50, v0, v34

    const/16 v1, 0x14

    aput-object v52, v0, v1

    const/16 v1, 0x15

    aput-object v53, v0, v1

    const/16 v1, 0x16

    aput-object v54, v0, v1

    const/16 v1, 0x17

    aput-object v55, v0, v1

    const/16 v1, 0x18

    aput-object v56, v0, v1

    const/16 v1, 0x19

    aput-object v57, v0, v1

    const/16 v1, 0x1a

    aput-object v58, v0, v1

    const/16 v1, 0x1b

    aput-object v59, v0, v1

    const/16 v1, 0x1c

    aput-object v60, v0, v1

    const/16 v1, 0x1d

    aput-object v61, v0, v1

    aput-object v62, v0, v30

    const/16 v1, 0x1f

    aput-object v63, v0, v1

    const/16 v1, 0x20

    aput-object v64, v0, v1

    const/16 v1, 0x21

    aput-object v65, v0, v1

    const/16 v1, 0x22

    aput-object v66, v0, v1

    const/16 v1, 0x23

    aput-object v67, v0, v1

    const/16 v1, 0x24

    aput-object v68, v0, v1

    const/16 v1, 0x25

    aput-object v69, v0, v1

    const/16 v1, 0x26

    aput-object v70, v0, v1

    const/16 v1, 0x27

    aput-object v71, v0, v1

    const/16 v1, 0x28

    aput-object v72, v0, v1

    const/16 v1, 0x29

    aput-object v73, v0, v1

    const/16 v1, 0x2a

    aput-object v74, v0, v1

    const/16 v1, 0x2b

    aput-object v75, v0, v1

    const/16 v1, 0x2c

    aput-object v76, v0, v1

    const/16 v1, 0x2d

    aput-object v77, v0, v1

    const/16 v1, 0x2e

    aput-object v78, v0, v1

    const/16 v1, 0x2f

    aput-object v79, v0, v1

    const/16 v1, 0x30

    aput-object v80, v0, v1

    const/16 v1, 0x31

    aput-object v81, v0, v1

    const/16 v1, 0x32

    aput-object v82, v0, v1

    const/16 v1, 0x33

    aput-object v83, v0, v1

    const/16 v1, 0x34

    aput-object v84, v0, v1

    const/16 v1, 0x35

    aput-object v85, v0, v1

    const/16 v1, 0x36

    aput-object v51, v0, v1

    const/16 v1, 0x37

    aput-object v86, v0, v1

    const/16 v1, 0x38

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    .line 166
    nop

    .line 169
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "7001"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v47, v1, v2

    .line 170
    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Object;

    const-string v4, "7002"

    aput-object v4, v5, v3

    sget-object v4, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v4, v5, v2

    aput-object v31, v5, v0

    .line 171
    new-array v4, v0, [Ljava/lang/Object;

    const-string v6, "7003"

    aput-object v6, v4, v3

    aput-object v42, v4, v2

    .line 173
    new-array v6, v0, [Ljava/lang/Object;

    const-string v7, "8001"

    aput-object v7, v6, v3

    aput-object v23, v6, v2

    .line 174
    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/Object;

    const-string v9, "8002"

    aput-object v9, v8, v3

    sget-object v9, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v9, v8, v2

    aput-object v29, v8, v0

    .line 175
    new-array v9, v7, [Ljava/lang/Object;

    const-string v10, "8003"

    aput-object v10, v9, v3

    sget-object v10, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v10, v9, v2

    aput-object v31, v9, v0

    .line 176
    new-array v10, v7, [Ljava/lang/Object;

    const-string v7, "8004"

    aput-object v7, v10, v3

    sget-object v7, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v7, v10, v2

    aput-object v31, v10, v0

    .line 177
    new-array v7, v0, [Ljava/lang/Object;

    const-string v11, "8005"

    aput-object v11, v7, v3

    aput-object v17, v7, v2

    .line 178
    new-array v11, v0, [Ljava/lang/Object;

    const-string v12, "8006"

    aput-object v12, v11, v3

    aput-object v26, v11, v2

    .line 179
    const/4 v12, 0x3

    new-array v13, v12, [Ljava/lang/Object;

    const-string v14, "8007"

    aput-object v14, v13, v3

    sget-object v14, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v14, v13, v2

    aput-object v31, v13, v0

    .line 180
    const/16 v14, 0xc

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    new-array v14, v12, [Ljava/lang/Object;

    const-string v12, "8008"

    aput-object v12, v14, v3

    sget-object v12, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v12, v14, v2

    aput-object v15, v14, v0

    .line 181
    new-array v12, v0, [Ljava/lang/Object;

    const-string v0, "8018"

    aput-object v0, v12, v3

    aput-object v26, v12, v2

    .line 182
    const/16 v0, 0x19

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v15, 0x3

    new-array v2, v15, [Ljava/lang/Object;

    const-string v15, "8020"

    aput-object v15, v2, v3

    sget-object v15, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    const/16 v18, 0x1

    aput-object v15, v2, v18

    const/4 v15, 0x2

    aput-object v0, v2, v15

    .line 183
    new-array v0, v15, [Ljava/lang/Object;

    const-string v22, "8100"

    aput-object v22, v0, v3

    aput-object v17, v0, v18

    .line 184
    move-object/from16 v17, v0

    new-array v0, v15, [Ljava/lang/Object;

    const-string v22, "8101"

    aput-object v22, v0, v3

    aput-object v42, v0, v18

    .line 185
    move-object/from16 v22, v0

    new-array v0, v15, [Ljava/lang/Object;

    const-string v15, "8102"

    aput-object v15, v0, v3

    aput-object v25, v0, v18

    .line 186
    const/16 v15, 0x46

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/4 v3, 0x3

    move-object/from16 v21, v0

    new-array v0, v3, [Ljava/lang/Object;

    const-string v23, "8110"

    const/16 v25, 0x0

    aput-object v23, v0, v25

    sget-object v23, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v23, v0, v18

    const/16 v23, 0x2

    aput-object v15, v0, v23

    .line 187
    const/16 v15, 0x46

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v24, v0

    new-array v0, v3, [Ljava/lang/Object;

    const-string v26, "8200"

    aput-object v26, v0, v25

    sget-object v26, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v26, v0, v18

    aput-object v15, v0, v23

    const/16 v15, 0x12

    new-array v15, v15, [[Ljava/lang/Object;

    aput-object v1, v15, v25

    aput-object v5, v15, v18

    aput-object v4, v15, v23

    aput-object v6, v15, v3

    const/4 v1, 0x4

    aput-object v8, v15, v1

    const/4 v1, 0x5

    aput-object v9, v15, v1

    aput-object v10, v15, v16

    const/4 v1, 0x7

    aput-object v7, v15, v1

    aput-object v11, v15, v27

    const/16 v1, 0x9

    aput-object v13, v15, v1

    const/16 v1, 0xa

    aput-object v14, v15, v1

    const/16 v1, 0xb

    aput-object v12, v15, v1

    const/16 v1, 0xc

    aput-object v2, v15, v1

    const/16 v1, 0xd

    aput-object v17, v15, v1

    const/16 v1, 0xe

    aput-object v22, v15, v1

    const/16 v1, 0xf

    aput-object v21, v15, v1

    const/16 v1, 0x10

    aput-object v24, v15, v1

    aput-object v0, v15, v32

    sput-object v15, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    .line 166
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    return-void
.end method

.method static parseFieldsInGeneralPurpose(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 194
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    const/4 p0, 0x0

    return-object p0

    .line 200
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_f

    .line 204
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 206
    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->TWO_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v4, :cond_3

    aget-object v7, v3, v5

    .line 207
    aget-object v8, v7, v0

    invoke-virtual {v8, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 208
    aget-object v0, v7, v6

    sget-object v2, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    if-ne v0, v2, :cond_1

    .line 209
    aget-object v0, v7, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processVariableAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 211
    :cond_1
    aget-object v0, v7, v6

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processFixedAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 206
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 215
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_e

    .line 219
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 221
    sget-object v4, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    array-length v5, v4

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v5, :cond_6

    aget-object v8, v4, v7

    .line 222
    aget-object v9, v8, v0

    invoke-virtual {v9, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 223
    aget-object v0, v8, v6

    sget-object v2, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    if-ne v0, v2, :cond_4

    .line 224
    aget-object v0, v8, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v3, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processVariableAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 226
    :cond_4
    aget-object v0, v8, v6

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v3, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processFixedAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 221
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 231
    :cond_6
    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_2
    const/4 v7, 0x4

    if-ge v5, v4, :cond_9

    aget-object v8, v3, v5

    .line 232
    aget-object v9, v8, v0

    invoke-virtual {v9, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 233
    aget-object v0, v8, v6

    sget-object v2, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    if-ne v0, v2, :cond_7

    .line 234
    aget-object v0, v8, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v7, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processVariableAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 236
    :cond_7
    aget-object v0, v8, v6

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v7, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processFixedAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 231
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 240
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v7, :cond_d

    .line 244
    invoke-virtual {p0, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 246
    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v4, :cond_c

    aget-object v8, v3, v5

    .line 247
    aget-object v9, v8, v0

    invoke-virtual {v9, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 248
    aget-object v0, v8, v6

    sget-object v2, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    if-ne v0, v2, :cond_a

    .line 249
    aget-object v0, v8, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v7, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processVariableAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 251
    :cond_a
    aget-object v0, v8, v6

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v7, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processFixedAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 246
    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 255
    :cond_c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    .line 241
    :cond_d
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    .line 216
    :cond_e
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    .line 201
    :cond_f
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method

.method private static processFixedAI(IILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "aiSize"    # I
    .param p1, "fieldSize"    # I
    .param p2, "rawInformation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 259
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, p0, :cond_2

    .line 263
    const/4 v0, 0x0

    invoke-virtual {p2, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "ai":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int v2, p0, p1

    if-lt v1, v2, :cond_1

    .line 269
    add-int v1, p0, p1

    invoke-virtual {p2, p0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, "field":Ljava/lang/String;
    add-int v2, p0, p1

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 271
    .local v2, "remaining":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 272
    .local v3, "result":Ljava/lang/String;
    invoke-static {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->parseFieldsInGeneralPurpose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 273
    .local v5, "parsedAI":Ljava/lang/String;
    move-object v5, v4

    if-nez v4, :cond_0

    return-object v3

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 266
    .end local v1    # "field":Ljava/lang/String;
    .end local v2    # "remaining":Ljava/lang/String;
    .end local v3    # "result":Ljava/lang/String;
    .end local v5    # "parsedAI":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 260
    .end local v0    # "ai":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method private static processVariableAI(IILjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "aiSize"    # I
    .param p1, "variableFieldSize"    # I
    .param p2, "rawInformation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 278
    const/4 v0, 0x0

    invoke-virtual {p2, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "ai":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int v2, p0, p1

    if-ge v1, v2, :cond_0

    .line 281
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "maxSize":I
    goto :goto_0

    .line 283
    .end local v1    # "maxSize":I
    :cond_0
    add-int v1, p0, p1

    .line 285
    .restart local v1    # "maxSize":I
    :goto_0
    invoke-virtual {p2, p0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 286
    .local v2, "field":Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 287
    .local v3, "remaining":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x29

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 288
    .local v4, "result":Ljava/lang/String;
    invoke-static {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->parseFieldsInGeneralPurpose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 289
    .local v6, "parsedAI":Ljava/lang/String;
    move-object v6, v5

    if-nez v5, :cond_1

    return-object v4

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
