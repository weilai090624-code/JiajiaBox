.class public final Lcom/google/zxing/client/result/ExpandedProductResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "ExpandedProductResultParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method

.method private static findAIvalue(ILjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "i"    # I
    .param p1, "rawText"    # Ljava/lang/String;

    .line 176
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 178
    const/16 v1, 0x28

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 179
    return-object v2

    .line 182
    :cond_0
    add-int/lit8 v0, p0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "rawTextAux":Ljava/lang/CharSequence;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .local v1, "buf":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "index":I
    const/4 v4, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 186
    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 187
    .local v4, "currentChar":C
    move v4, v5

    const/16 v6, 0x29

    if-ne v5, v6, :cond_1

    .line 188
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 190
    :cond_1
    const/16 v5, 0x30

    if-lt v4, v5, :cond_3

    const/16 v5, 0x39

    if-le v4, v5, :cond_2

    goto :goto_1

    .line 193
    :cond_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 185
    .end local v4    # "currentChar":C
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 191
    .restart local v4    # "currentChar":C
    :cond_3
    :goto_1
    return-object v2

    .line 195
    .end local v3    # "index":I
    .end local v4    # "currentChar":C
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static findValue(ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "i"    # I
    .param p1, "rawText"    # Ljava/lang/String;

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "rawTextAux":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "index":I
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 203
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 204
    .local v3, "c":C
    move v3, v4

    const/16 v5, 0x28

    if-ne v4, v5, :cond_0

    .line 207
    invoke-static {v2, v1}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->findAIvalue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 210
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 212
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 202
    .end local v3    # "c":C
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 215
    .end local v2    # "index":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ExpandedProductParsedResult;
    .locals 33
    .param p1, "result"    # Lcom/google/zxing/Result;

    .line 45
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v0

    .line 46
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->RSS_EXPANDED:Lcom/google/zxing/BarcodeFormat;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 48
    return-object v2

    .line 50
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "rawText":Ljava/lang/String;
    const/4 v1, 0x0

    .line 53
    .local v1, "productID":Ljava/lang/String;
    const/4 v3, 0x0

    .line 54
    .local v3, "sscc":Ljava/lang/String;
    const/4 v4, 0x0

    .line 55
    .local v4, "lotNumber":Ljava/lang/String;
    const/4 v5, 0x0

    .line 56
    .local v5, "productionDate":Ljava/lang/String;
    const/4 v6, 0x0

    .line 57
    .local v6, "packagingDate":Ljava/lang/String;
    const/4 v7, 0x0

    .line 58
    .local v7, "bestBeforeDate":Ljava/lang/String;
    const/4 v8, 0x0

    .line 59
    .local v8, "expirationDate":Ljava/lang/String;
    const/4 v9, 0x0

    .line 60
    .local v9, "weight":Ljava/lang/String;
    const/4 v10, 0x0

    .line 61
    .local v10, "weightType":Ljava/lang/String;
    const/4 v11, 0x0

    .line 62
    .local v11, "weightIncrement":Ljava/lang/String;
    const/4 v12, 0x0

    .line 63
    .local v12, "price":Ljava/lang/String;
    const/4 v13, 0x0

    .line 64
    .local v13, "priceIncrement":Ljava/lang/String;
    const/4 v14, 0x0

    .line 65
    .local v14, "priceCurrency":Ljava/lang/String;
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 67
    .local v15, "uncommonAIs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v16, 0x0

    .local v16, "i":I
    const/16 v17, 0x0

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    move-object/from16 v26, v10

    move-object/from16 v27, v11

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move-object/from16 v30, v14

    move/from16 v14, v16

    .line 69
    .end local v3    # "sscc":Ljava/lang/String;
    .end local v4    # "lotNumber":Ljava/lang/String;
    .end local v5    # "productionDate":Ljava/lang/String;
    .end local v6    # "packagingDate":Ljava/lang/String;
    .end local v7    # "bestBeforeDate":Ljava/lang/String;
    .end local v8    # "expirationDate":Ljava/lang/String;
    .end local v9    # "weight":Ljava/lang/String;
    .end local v10    # "weightType":Ljava/lang/String;
    .end local v11    # "weightIncrement":Ljava/lang/String;
    .end local v12    # "price":Ljava/lang/String;
    .end local v13    # "priceIncrement":Ljava/lang/String;
    .end local v16    # "i":I
    .local v14, "i":I
    .local v19, "sscc":Ljava/lang/String;
    .local v20, "lotNumber":Ljava/lang/String;
    .local v21, "productionDate":Ljava/lang/String;
    .local v22, "packagingDate":Ljava/lang/String;
    .local v23, "bestBeforeDate":Ljava/lang/String;
    .local v24, "expirationDate":Ljava/lang/String;
    .local v25, "weight":Ljava/lang/String;
    .local v26, "weightType":Ljava/lang/String;
    .local v27, "weightIncrement":Ljava/lang/String;
    .local v28, "price":Ljava/lang/String;
    .local v29, "priceIncrement":Ljava/lang/String;
    .local v30, "priceCurrency":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v14, v3, :cond_4

    .line 70
    invoke-static {v14, v0}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->findAIvalue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, v17

    .line 71
    .local v4, "ai":Ljava/lang/String;
    move-object v4, v3

    if-nez v3, :cond_1

    .line 74
    return-object v2

    .line 76
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x2

    add-int/2addr v3, v5

    add-int/2addr v3, v14

    .line 77
    move v6, v3

    .end local v14    # "i":I
    .local v6, "i":I
    invoke-static {v3, v0}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->findValue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int v14, v6, v7

    .line 80
    .end local v6    # "i":I
    .restart local v14    # "i":I
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x3

    sparse-switch v6, :sswitch_data_0

    :cond_2
    goto/16 :goto_1

    :sswitch_0
    const-string v5, "3933"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x22

    goto/16 :goto_2

    :sswitch_1
    const-string v5, "3932"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x21

    goto/16 :goto_2

    :sswitch_2
    const-string v5, "3931"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x20

    goto/16 :goto_2

    :sswitch_3
    const-string v5, "3930"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x1f

    goto/16 :goto_2

    :sswitch_4
    const-string v5, "3923"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x1e

    goto/16 :goto_2

    :sswitch_5
    const-string v5, "3922"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x1d

    goto/16 :goto_2

    :sswitch_6
    const-string v5, "3921"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x1c

    goto/16 :goto_2

    :sswitch_7
    const-string v5, "3920"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x1b

    goto/16 :goto_2

    :sswitch_8
    const-string v5, "3209"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x1a

    goto/16 :goto_2

    :sswitch_9
    const-string v5, "3208"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x19

    goto/16 :goto_2

    :sswitch_a
    const-string v5, "3207"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x18

    goto/16 :goto_2

    :sswitch_b
    const-string v5, "3206"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x17

    goto/16 :goto_2

    :sswitch_c
    const-string v5, "3205"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x16

    goto/16 :goto_2

    :sswitch_d
    const-string v5, "3204"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x15

    goto/16 :goto_2

    :sswitch_e
    const-string v5, "3203"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x14

    goto/16 :goto_2

    :sswitch_f
    const-string v5, "3202"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x13

    goto/16 :goto_2

    :sswitch_10
    const-string v5, "3201"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x12

    goto/16 :goto_2

    :sswitch_11
    const-string v5, "3200"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x11

    goto/16 :goto_2

    :sswitch_12
    const-string v5, "3109"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x10

    goto/16 :goto_2

    :sswitch_13
    const-string v5, "3108"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0xf

    goto/16 :goto_2

    :sswitch_14
    const-string v5, "3107"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0xe

    goto/16 :goto_2

    :sswitch_15
    const-string v5, "3106"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0xd

    goto/16 :goto_2

    :sswitch_16
    const-string v5, "3105"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0xc

    goto/16 :goto_2

    :sswitch_17
    const-string v5, "3104"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0xb

    goto/16 :goto_2

    :sswitch_18
    const-string v5, "3103"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0xa

    goto/16 :goto_2

    :sswitch_19
    const-string v5, "3102"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x9

    goto :goto_2

    :sswitch_1a
    const-string v5, "3101"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x8

    goto :goto_2

    :sswitch_1b
    const-string v5, "3100"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x7

    goto :goto_2

    :sswitch_1c
    const-string v5, "17"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x6

    goto :goto_2

    :sswitch_1d
    const-string v5, "15"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x5

    goto :goto_2

    :sswitch_1e
    const-string v5, "13"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x4

    goto :goto_2

    :sswitch_1f
    const-string v5, "11"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x3

    goto :goto_2

    :sswitch_20
    const-string v6, "10"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    :sswitch_21
    const-string v5, "01"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :sswitch_22
    const-string v5, "00"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :goto_1
    const/4 v5, -0x1

    :goto_2
    packed-switch v5, :pswitch_data_0

    .line 153
    invoke-interface {v15, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .end local v3    # "value":Ljava/lang/String;
    .end local v4    # "ai":Ljava/lang/String;
    move-object/from16 v17, v4

    goto/16 :goto_0

    .line 141
    .restart local v3    # "value":Ljava/lang/String;
    .restart local v4    # "ai":Ljava/lang/String;
    :pswitch_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v8, :cond_3

    .line 145
    return-object v2

    .line 147
    :cond_3
    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v28

    .line 148
    invoke-virtual {v3, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v30

    .line 149
    invoke-virtual {v4, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v29

    .line 150
    move-object/from16 v17, v4

    goto/16 :goto_0

    .line 134
    :pswitch_1
    move-object/from16 v28, v3

    .line 135
    invoke-virtual {v4, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v29

    .line 136
    move-object/from16 v17, v4

    goto/16 :goto_0

    .line 126
    :pswitch_2
    move-object/from16 v25, v3

    .line 127
    const-string v26, "LB"

    .line 128
    invoke-virtual {v4, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v27

    .line 129
    move-object/from16 v17, v4

    goto/16 :goto_0

    .line 112
    :pswitch_3
    move-object/from16 v25, v3

    .line 113
    const-string v26, "KG"

    .line 114
    invoke-virtual {v4, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v27

    .line 115
    move-object/from16 v17, v4

    goto/16 :goto_0

    .line 100
    :pswitch_4
    move-object/from16 v24, v3

    .line 101
    move-object/from16 v17, v4

    goto/16 :goto_0

    .line 97
    :pswitch_5
    move-object/from16 v23, v3

    .line 98
    move-object/from16 v17, v4

    goto/16 :goto_0

    .line 94
    :pswitch_6
    move-object/from16 v22, v3

    .line 95
    move-object/from16 v17, v4

    goto/16 :goto_0

    .line 91
    :pswitch_7
    move-object/from16 v21, v3

    .line 92
    move-object/from16 v17, v4

    goto/16 :goto_0

    .line 88
    :pswitch_8
    move-object/from16 v20, v3

    .line 89
    move-object/from16 v17, v4

    goto/16 :goto_0

    .line 85
    :pswitch_9
    move-object v1, v3

    .line 86
    move-object/from16 v17, v4

    goto/16 :goto_0

    .line 82
    :pswitch_a
    move-object/from16 v19, v3

    .line 83
    move-object/from16 v17, v4

    goto/16 :goto_0

    .line 158
    .end local v3    # "value":Ljava/lang/String;
    .end local v4    # "ai":Ljava/lang/String;
    :cond_4
    new-instance v2, Lcom/google/zxing/client/result/ExpandedProductParsedResult;

    move-object v3, v2

    move-object v4, v0

    move-object v5, v1

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move-object/from16 v9, v22

    move-object/from16 v10, v23

    move-object/from16 v11, v24

    move-object/from16 v12, v25

    move-object/from16 v13, v26

    move/from16 v31, v14

    .end local v14    # "i":I
    .local v31, "i":I
    move-object/from16 v14, v27

    move-object/from16 v32, v15

    .end local v15    # "uncommonAIs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v32, "uncommonAIs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v15, v28

    move-object/from16 v16, v29

    move-object/from16 v17, v30

    move-object/from16 v18, v32

    invoke-direct/range {v3 .. v18}, Lcom/google/zxing/client/result/ExpandedProductParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x600 -> :sswitch_22
        0x601 -> :sswitch_21
        0x61f -> :sswitch_20
        0x620 -> :sswitch_1f
        0x622 -> :sswitch_1e
        0x624 -> :sswitch_1d
        0x626 -> :sswitch_1c
        0x17ecde -> :sswitch_1b
        0x17ecdf -> :sswitch_1a
        0x17ece0 -> :sswitch_19
        0x17ece1 -> :sswitch_18
        0x17ece2 -> :sswitch_17
        0x17ece3 -> :sswitch_16
        0x17ece4 -> :sswitch_15
        0x17ece5 -> :sswitch_14
        0x17ece6 -> :sswitch_13
        0x17ece7 -> :sswitch_12
        0x17f09f -> :sswitch_11
        0x17f0a0 -> :sswitch_10
        0x17f0a1 -> :sswitch_f
        0x17f0a2 -> :sswitch_e
        0x17f0a3 -> :sswitch_d
        0x17f0a4 -> :sswitch_c
        0x17f0a5 -> :sswitch_b
        0x17f0a6 -> :sswitch_a
        0x17f0a7 -> :sswitch_9
        0x17f0a8 -> :sswitch_8
        0x180b24 -> :sswitch_7
        0x180b25 -> :sswitch_6
        0x180b26 -> :sswitch_5
        0x180b27 -> :sswitch_4
        0x180b43 -> :sswitch_3
        0x180b44 -> :sswitch_2
        0x180b45 -> :sswitch_1
        0x180b46 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ExpandedProductParsedResult;

    move-result-object p1

    return-object p1
.end method
