.class public final Lcom/google/zxing/oned/MultiFormatUPCEANReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "MultiFormatUPCEANReader.java"


# instance fields
.field private final readers:[Lcom/google/zxing/oned/UPCEANReader;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)V"
        }
    .end annotation

    .line 42
    .local p1, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 44
    if-nez p1, :cond_7

    const/4 v0, 0x0

    goto :goto_f

    :cond_7
    sget-object v0, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    .line 45
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    :goto_f
    nop

    .line 46
    .local v0, "possibleFormats":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/BarcodeFormat;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v1, "readers":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/oned/UPCEANReader;>;"
    if-eqz v0, :cond_58

    .line 48
    sget-object v2, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 49
    new-instance v2, Lcom/google/zxing/oned/EAN13Reader;

    invoke-direct {v2}, Lcom/google/zxing/oned/EAN13Reader;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_38

    .line 50
    :cond_28
    sget-object v2, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 51
    new-instance v2, Lcom/google/zxing/oned/UPCAReader;

    invoke-direct {v2}, Lcom/google/zxing/oned/UPCAReader;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_38
    :goto_38
    sget-object v2, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 54
    new-instance v2, Lcom/google/zxing/oned/EAN8Reader;

    invoke-direct {v2}, Lcom/google/zxing/oned/EAN8Reader;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_48
    sget-object v2, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 57
    new-instance v2, Lcom/google/zxing/oned/UPCEReader;

    invoke-direct {v2}, Lcom/google/zxing/oned/UPCEReader;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_58
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_76

    .line 61
    new-instance v2, Lcom/google/zxing/oned/EAN13Reader;

    invoke-direct {v2}, Lcom/google/zxing/oned/EAN13Reader;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 63
    new-instance v2, Lcom/google/zxing/oned/EAN8Reader;

    invoke-direct {v2}, Lcom/google/zxing/oned/EAN8Reader;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v2, Lcom/google/zxing/oned/UPCEReader;

    invoke-direct {v2}, Lcom/google/zxing/oned/UPCEReader;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_76
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/zxing/oned/UPCEANReader;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/zxing/oned/UPCEANReader;

    iput-object v2, p0, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->readers:[Lcom/google/zxing/oned/UPCEANReader;

    .line 67
    return-void
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .registers 22
    .param p1, "rowNumber"    # I
    .param p2, "row"    # Lcom/google/zxing/common/BitArray;
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
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 74
    .local p3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object/from16 v1, p3

    invoke-static/range {p2 .. p2}, Lcom/google/zxing/oned/UPCEANReader;->findStartGuardPattern(Lcom/google/zxing/common/BitArray;)[I

    move-result-object v2

    .line 75
    .local v2, "startGuardPattern":[I
    move-object/from16 v3, p0

    iget-object v4, v3, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->readers:[Lcom/google/zxing/oned/UPCEANReader;

    array-length v5, v4

    const/4 v0, 0x0

    const/4 v6, 0x0

    move-object v7, v0

    move-object v8, v7

    move-object v9, v8

    const/4 v10, 0x0

    :goto_11
    if-ge v10, v5, :cond_95

    aget-object v11, v4, v10

    .line 77
    .local v11, "reader":Lcom/google/zxing/oned/UPCEANReader;
    move/from16 v12, p1

    move-object/from16 v13, p2

    :try_start_19
    invoke-virtual {v11, v12, v13, v2, v1}, Lcom/google/zxing/oned/UPCEANReader;->decodeRow(ILcom/google/zxing/common/BitArray;[ILjava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v0

    .line 90
    .local v7, "result":Lcom/google/zxing/Result;
    move-object v7, v0

    .line 91
    invoke-virtual {v0}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v0

    sget-object v14, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;
    :try_end_24
    .catch Lcom/google/zxing/ReaderException; {:try_start_19 .. :try_end_24} :catch_89

    if-ne v0, v14, :cond_34

    .line 92
    :try_start_26
    invoke-virtual {v7}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0
    :try_end_2e
    .catch Lcom/google/zxing/ReaderException; {:try_start_26 .. :try_end_2e} :catch_50

    const/16 v14, 0x30

    if-ne v0, v14, :cond_34

    const/4 v0, 0x1

    goto :goto_35

    .end local v7    # "result":Lcom/google/zxing/Result;
    :cond_34
    const/4 v0, 0x0

    .line 94
    .local v0, "ean13MayBeUPCA":Z
    :goto_35
    if-nez v1, :cond_39

    const/4 v14, 0x0

    goto :goto_41

    :cond_39
    :try_start_39
    sget-object v14, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    .line 95
    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Collection;
    :try_end_41
    .catch Lcom/google/zxing/ReaderException; {:try_start_39 .. :try_end_41} :catch_89

    :goto_41
    nop

    .line 96
    .local v8, "possibleFormats":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/BarcodeFormat;>;"
    move-object v8, v14

    if-eqz v14, :cond_54

    :try_start_45
    sget-object v14, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v8, v14}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v14
    :try_end_4b
    .catch Lcom/google/zxing/ReaderException; {:try_start_45 .. :try_end_4b} :catch_50

    if-eqz v14, :cond_4e

    goto :goto_54

    :cond_4e
    const/4 v14, 0x0

    goto :goto_55

    .line 108
    .end local v0    # "ean13MayBeUPCA":Z
    .end local v8    # "possibleFormats":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/BarcodeFormat;>;"
    :catch_50
    move-exception v0

    move-object/from16 v16, v2

    goto :goto_8c

    .line 96
    .restart local v0    # "ean13MayBeUPCA":Z
    :cond_54
    :goto_54
    const/4 v14, 0x1

    .line 98
    .local v14, "canReturnUPCA":Z
    :goto_55
    if-eqz v0, :cond_84

    if-eqz v14, :cond_84

    .line 100
    :try_start_59
    new-instance v6, Lcom/google/zxing/Result;

    invoke-virtual {v7}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v15

    move/from16 v17, v0

    const/4 v0, 0x1

    .end local v0    # "ean13MayBeUPCA":Z
    .local v17, "ean13MayBeUPCA":Z
    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-virtual {v7}, Lcom/google/zxing/Result;->getRawBytes()[B

    move-result-object v15

    .line 102
    invoke-virtual {v7}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v1
    :try_end_6e
    .catch Lcom/google/zxing/ReaderException; {:try_start_59 .. :try_end_6e} :catch_89

    move-object/from16 v16, v2

    .end local v2    # "startGuardPattern":[I
    .local v16, "startGuardPattern":[I
    :try_start_70
    sget-object v2, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v6, v0, v15, v1, v2}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V
    :try_end_75
    .catch Lcom/google/zxing/ReaderException; {:try_start_70 .. :try_end_75} :catch_82

    move-object v0, v9

    .line 104
    .local v0, "resultUPCA":Lcom/google/zxing/Result;
    move-object v1, v6

    .end local v0    # "resultUPCA":Lcom/google/zxing/Result;
    .local v1, "resultUPCA":Lcom/google/zxing/Result;
    :try_start_77
    invoke-virtual {v7}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/google/zxing/Result;->putAllMetadata(Ljava/util/Map;)V
    :try_end_7e
    .catch Lcom/google/zxing/ReaderException; {:try_start_77 .. :try_end_7e} :catch_7f

    .line 105
    return-object v1

    .line 108
    .end local v1    # "resultUPCA":Lcom/google/zxing/Result;
    .end local v14    # "canReturnUPCA":Z
    .end local v17    # "ean13MayBeUPCA":Z
    :catch_7f
    move-exception v0

    move-object v9, v1

    goto :goto_8c

    :catch_82
    move-exception v0

    goto :goto_8c

    .line 98
    .end local v16    # "startGuardPattern":[I
    .local v0, "ean13MayBeUPCA":Z
    .restart local v2    # "startGuardPattern":[I
    .restart local v14    # "canReturnUPCA":Z
    :cond_84
    move/from16 v17, v0

    move-object/from16 v16, v2

    .line 107
    .end local v0    # "ean13MayBeUPCA":Z
    .end local v2    # "startGuardPattern":[I
    .restart local v16    # "startGuardPattern":[I
    .restart local v17    # "ean13MayBeUPCA":Z
    return-object v7

    .line 108
    .end local v14    # "canReturnUPCA":Z
    .end local v16    # "startGuardPattern":[I
    .end local v17    # "ean13MayBeUPCA":Z
    .restart local v2    # "startGuardPattern":[I
    :catch_89
    move-exception v0

    move-object/from16 v16, v2

    .line 75
    .end local v2    # "startGuardPattern":[I
    .end local v11    # "reader":Lcom/google/zxing/oned/UPCEANReader;
    .restart local v16    # "startGuardPattern":[I
    :goto_8c
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p3

    move-object/from16 v2, v16

    const/4 v6, 0x0

    goto/16 :goto_11

    .line 113
    .end local v16    # "startGuardPattern":[I
    .restart local v2    # "startGuardPattern":[I
    :cond_95
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method public reset()V
    .registers 5

    .line 118
    iget-object v0, p0, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->readers:[Lcom/google/zxing/oned/UPCEANReader;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 119
    invoke-interface {v3}, Lcom/google/zxing/Reader;->reset()V

    .line 118
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 121
    :cond_e
    return-void
.end method
