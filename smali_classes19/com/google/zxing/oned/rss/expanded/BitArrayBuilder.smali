.class final Lcom/google/zxing/oned/rss/expanded/BitArrayBuilder;
.super Ljava/lang/Object;
.source "BitArrayBuilder.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method static buildBitArray(Ljava/util/List;)Lcom/google/zxing/common/BitArray;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;)",
            "Lcom/google/zxing/common/BitArray;"
        }
    .end annotation

    .line 43
    .local p0, "pairs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    shl-int/2addr v0, v1

    sub-int/2addr v0, v1

    .line 44
    .local v0, "charNumber":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v2

    if-nez v2, :cond_1a

    .line 45
    add-int/lit8 v0, v0, -0x1

    .line 48
    :cond_1a
    mul-int/lit8 v2, v0, 0xc

    .line 50
    .local v2, "size":I
    new-instance v3, Lcom/google/zxing/common/BitArray;

    invoke-direct {v3, v2}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    .line 51
    .local v3, "binary":Lcom/google/zxing/common/BitArray;
    const/4 v4, 0x0

    .line 53
    .local v4, "accPos":I
    const/4 v5, 0x0

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 54
    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v5

    .line 55
    .local v5, "firstValue":I
    const/16 v6, 0xb

    .local v6, "i":I
    :goto_33
    if-ltz v6, :cond_42

    .line 56
    shl-int v7, v1, v6

    and-int/2addr v7, v5

    if-eqz v7, :cond_3d

    .line 57
    invoke-virtual {v3, v4}, Lcom/google/zxing/common/BitArray;->set(I)V

    .line 59
    :cond_3d
    add-int/lit8 v4, v4, 0x1

    .line 55
    add-int/lit8 v6, v6, -0x1

    goto :goto_33

    .line 62
    .end local v6    # "i":I
    :cond_42
    const/4 v6, 0x1

    .restart local v6    # "i":I
    const/4 v7, 0x0

    :goto_44
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_8c

    .line 63
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 65
    .local v7, "currentPair":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    move-object v7, v8

    invoke-virtual {v8}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getLeftChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v8

    .line 66
    .local v8, "leftValue":I
    const/16 v9, 0xb

    .local v9, "j":I
    :goto_5b
    if-ltz v9, :cond_6a

    .line 67
    shl-int v10, v1, v9

    and-int/2addr v10, v8

    if-eqz v10, :cond_65

    .line 68
    invoke-virtual {v3, v4}, Lcom/google/zxing/common/BitArray;->set(I)V

    .line 70
    :cond_65
    add-int/lit8 v4, v4, 0x1

    .line 66
    add-int/lit8 v9, v9, -0x1

    goto :goto_5b

    .line 73
    .end local v9    # "j":I
    :cond_6a
    invoke-virtual {v7}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v9

    if-eqz v9, :cond_89

    .line 74
    invoke-virtual {v7}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v9

    .line 75
    .local v9, "rightValue":I
    const/16 v10, 0xb

    .local v10, "j":I
    :goto_7a
    if-ltz v10, :cond_89

    .line 76
    shl-int v11, v1, v10

    and-int/2addr v11, v9

    if-eqz v11, :cond_84

    .line 77
    invoke-virtual {v3, v4}, Lcom/google/zxing/common/BitArray;->set(I)V

    .line 79
    :cond_84
    add-int/lit8 v4, v4, 0x1

    .line 75
    add-int/lit8 v10, v10, -0x1

    goto :goto_7a

    .line 62
    .end local v7    # "currentPair":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    .end local v8    # "leftValue":I
    .end local v9    # "rightValue":I
    .end local v10    # "j":I
    :cond_89
    add-int/lit8 v6, v6, 0x1

    goto :goto_44

    .line 83
    .end local v6    # "i":I
    :cond_8c
    return-object v3
.end method
