.class public final Lcom/google/zxing/oned/Code39Writer;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "Code39Writer.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    return-void
.end method

.method private static toIntArray(I[I)V
    .registers 5
    .param p0, "a"    # I
    .param p1, "toReturn"    # [I

    .line 93
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0x9

    if-ge v0, v1, :cond_14

    .line 94
    rsub-int/lit8 v1, v0, 0x8

    const/4 v2, 0x1

    shl-int v1, v2, v1

    and-int/2addr v1, p0

    .line 95
    .local v1, "temp":I
    if-nez v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v2, 0x2

    :goto_f
    aput v2, p1, v0

    .line 93
    .end local v1    # "temp":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 97
    .end local v0    # "i":I
    :cond_14
    return-void
.end method

.method private static tryToConvertToExtendedMode(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "contents"    # Ljava/lang/String;

    .line 100
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 101
    .local v0, "length":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .local v1, "extendedContent":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    :goto_b
    if-ge v2, v0, :cond_ee

    .line 103
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 104
    .local v3, "character":C
    move v3, v4

    sparse-switch v4, :sswitch_data_f4

    .line 120
    const/16 v4, 0x1a

    if-gt v3, v4, :cond_42

    .line 121
    const/16 v4, 0x24

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 122
    add-int/lit8 v4, v3, -0x1

    add-int/lit8 v4, v4, 0x41

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_ea

    .line 117
    :sswitch_28
    const-string v4, "%W"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    goto/16 :goto_ea

    .line 114
    :sswitch_2f
    const-string v4, "%V"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    goto/16 :goto_ea

    .line 111
    :sswitch_36
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 112
    goto/16 :goto_ea

    .line 106
    :sswitch_3b
    const-string v4, "%U"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    goto/16 :goto_ea

    .line 123
    :cond_42
    const/16 v4, 0x20

    const/16 v5, 0x25

    if-ge v3, v4, :cond_55

    .line 124
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 125
    add-int/lit8 v4, v3, -0x1b

    add-int/lit8 v4, v4, 0x41

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_ea

    .line 126
    :cond_55
    const/16 v4, 0x2c

    const/16 v6, 0x2f

    if-le v3, v4, :cond_df

    if-eq v3, v6, :cond_df

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_63

    goto/16 :goto_df

    .line 129
    :cond_63
    const/16 v4, 0x39

    if-gt v3, v4, :cond_71

    .line 130
    add-int/lit8 v4, v3, -0x30

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_ea

    .line 131
    :cond_71
    const/16 v4, 0x3f

    if-gt v3, v4, :cond_81

    .line 132
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 133
    add-int/lit8 v4, v3, -0x3b

    add-int/lit8 v4, v4, 0x46

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_ea

    .line 134
    :cond_81
    const/16 v4, 0x5a

    if-gt v3, v4, :cond_8e

    .line 135
    add-int/lit8 v4, v3, -0x41

    add-int/lit8 v4, v4, 0x41

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_ea

    .line 136
    :cond_8e
    const/16 v4, 0x5f

    if-gt v3, v4, :cond_9e

    .line 137
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    add-int/lit8 v4, v3, -0x5b

    add-int/lit8 v4, v4, 0x4b

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_ea

    .line 139
    :cond_9e
    const/16 v4, 0x7a

    if-gt v3, v4, :cond_b0

    .line 140
    const/16 v4, 0x2b

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 141
    add-int/lit8 v4, v3, -0x61

    add-int/lit8 v4, v4, 0x41

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_ea

    .line 142
    :cond_b0
    const/16 v4, 0x7f

    if-gt v3, v4, :cond_c0

    .line 143
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 144
    add-int/lit8 v4, v3, -0x7b

    add-int/lit8 v4, v4, 0x50

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_ea

    .line 146
    :cond_c0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Requested content contains a non-encodable character: \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 127
    :cond_df
    :goto_df
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    add-int/lit8 v4, v3, -0x21

    add-int/lit8 v4, v4, 0x41

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 102
    .end local v3    # "character":C
    :goto_ea
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_b

    .line 152
    .end local v2    # "i":I
    :cond_ee
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    nop

    :sswitch_data_f4
    .sparse-switch
        0x0 -> :sswitch_3b
        0x20 -> :sswitch_36
        0x2d -> :sswitch_36
        0x2e -> :sswitch_36
        0x40 -> :sswitch_2f
        0x60 -> :sswitch_28
    .end sparse-switch
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .registers 9
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "format"    # Lcom/google/zxing/BarcodeFormat;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/BitMatrix;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 39
    .local p5, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;*>;"
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    if-ne p2, v0, :cond_9

    .line 42
    invoke-super/range {p0 .. p5}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0

    .line 40
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only encode CODE_39, but got "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Ljava/lang/String;)[Z
    .registers 14

    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 48
    const-string v1, "Requested contents should be less than 80 digits long, but got "

    const/16 v2, 0x50

    if-gt v0, v2, :cond_a0

    .line 53
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_c
    const-string v5, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%"

    if-ge v4, v0, :cond_41

    .line 54
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 55
    if-gez v6, :cond_3e

    .line 56
    invoke-static {p1}, Lcom/google/zxing/oned/Code39Writer;->tryToConvertToExtendedMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 58
    if-gt v0, v2, :cond_25

    goto :goto_41

    .line 59
    :cond_25
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (extended full ASCII mode)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 53
    :cond_3e
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 66
    :cond_41
    :goto_41
    const/16 v1, 0x9

    new-array v2, v1, [I

    .line 67
    add-int/lit8 v4, v0, 0x19

    .line 68
    const/4 v6, 0x0

    :goto_48
    if-ge v6, v0, :cond_65

    .line 69
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 70
    sget-object v8, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    aget v7, v8, v7

    invoke-static {v7, v2}, Lcom/google/zxing/oned/Code39Writer;->toIntArray(I[I)V

    .line 71
    const/4 v7, 0x0

    :goto_5a
    if-ge v7, v1, :cond_62

    aget v8, v2, v7

    .line 72
    add-int/2addr v4, v8

    .line 71
    add-int/lit8 v7, v7, 0x1

    goto :goto_5a

    .line 68
    :cond_62
    add-int/lit8 v6, v6, 0x1

    goto :goto_48

    .line 75
    :cond_65
    new-array v1, v4, [Z

    .line 76
    const/16 v4, 0x94

    invoke-static {v4, v2}, Lcom/google/zxing/oned/Code39Writer;->toIntArray(I[I)V

    .line 77
    const/4 v6, 0x1

    invoke-static {v1, v3, v2, v6}, Lcom/google/zxing/oned/Code39Writer;->appendPattern([ZI[IZ)I

    move-result v7

    .line 78
    filled-new-array {v6}, [I

    move-result-object v8

    .line 79
    invoke-static {v1, v7, v8, v3}, Lcom/google/zxing/oned/Code39Writer;->appendPattern([ZI[IZ)I

    move-result v9

    add-int/2addr v7, v9

    .line 81
    const/4 v9, 0x0

    :goto_7b
    if-ge v9, v0, :cond_99

    .line 82
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    .line 83
    sget-object v11, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    aget v10, v11, v10

    invoke-static {v10, v2}, Lcom/google/zxing/oned/Code39Writer;->toIntArray(I[I)V

    .line 84
    invoke-static {v1, v7, v2, v6}, Lcom/google/zxing/oned/Code39Writer;->appendPattern([ZI[IZ)I

    move-result v10

    add-int/2addr v7, v10

    .line 85
    invoke-static {v1, v7, v8, v3}, Lcom/google/zxing/oned/Code39Writer;->appendPattern([ZI[IZ)I

    move-result v10

    add-int/2addr v7, v10

    .line 81
    add-int/lit8 v9, v9, 0x1

    goto :goto_7b

    .line 87
    :cond_99
    invoke-static {v4, v2}, Lcom/google/zxing/oned/Code39Writer;->toIntArray(I[I)V

    .line 88
    invoke-static {v1, v7, v2, v6}, Lcom/google/zxing/oned/Code39Writer;->appendPattern([ZI[IZ)I

    .line 89
    return-object v1

    .line 49
    :cond_a0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
