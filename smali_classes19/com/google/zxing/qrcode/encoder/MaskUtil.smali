.class final Lcom/google/zxing/qrcode/encoder/MaskUtil;
.super Ljava/lang/Object;
.source "MaskUtil.java"


# static fields
.field private static final N1:I = 0x3

.field private static final N2:I = 0x3

.field private static final N3:I = 0x28

.field private static final N4:I = 0xa


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method static applyMaskPenaltyRule1(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .registers 3
    .param p0, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    .line 41
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule1Internal(Lcom/google/zxing/qrcode/encoder/ByteMatrix;Z)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule1Internal(Lcom/google/zxing/qrcode/encoder/ByteMatrix;Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static applyMaskPenaltyRule1Internal(Lcom/google/zxing/qrcode/encoder/ByteMatrix;Z)I
    .registers 13
    .param p0, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    .param p1, "isHorizontal"    # Z

    .line 196
    const/4 v0, 0x0

    .line 197
    .local v0, "penalty":I
    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v1

    goto :goto_c

    :cond_8
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v1

    .line 198
    .local v1, "iLimit":I
    :goto_c
    if-eqz p1, :cond_13

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v2

    goto :goto_17

    :cond_13
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v2

    .line 199
    .local v2, "jLimit":I
    :goto_17
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getArray()[[B

    move-result-object v3

    .line 200
    .local v3, "array":[[B
    const/4 v4, 0x0

    .local v4, "i":I
    const/4 v5, 0x0

    :goto_1d
    if-ge v4, v1, :cond_4c

    .line 201
    const/4 v6, 0x0

    .line 202
    .local v6, "numSameBitCells":I
    const/4 v7, -0x1

    .line 203
    .local v7, "prevBit":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_22
    const/4 v9, 0x5

    if-ge v8, v2, :cond_42

    .line 204
    if-eqz p1, :cond_2c

    aget-object v10, v3, v4

    aget-byte v10, v10, v8

    goto :goto_30

    :cond_2c
    aget-object v10, v3, v8

    aget-byte v10, v10, v4

    .line 205
    .local v5, "bit":I
    :goto_30
    move v5, v10

    if-ne v10, v7, :cond_36

    .line 206
    add-int/lit8 v6, v6, 0x1

    goto :goto_3f

    .line 208
    :cond_36
    if-lt v6, v9, :cond_3d

    .line 209
    add-int/lit8 v9, v6, -0x5

    add-int/lit8 v9, v9, 0x3

    add-int/2addr v0, v9

    .line 211
    :cond_3d
    const/4 v6, 0x1

    .line 212
    move v7, v5

    .line 203
    .end local v5    # "bit":I
    :goto_3f
    add-int/lit8 v8, v8, 0x1

    goto :goto_22

    .line 215
    .end local v8    # "j":I
    :cond_42
    if-lt v6, v9, :cond_49

    .line 216
    add-int/lit8 v8, v6, -0x5

    add-int/lit8 v8, v8, 0x3

    add-int/2addr v0, v8

    .line 200
    .end local v6    # "numSameBitCells":I
    .end local v7    # "prevBit":I
    :cond_49
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 219
    .end local v4    # "i":I
    :cond_4c
    return v0
.end method

.method static applyMaskPenaltyRule2(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .registers 11
    .param p0, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, "penalty":I
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getArray()[[B

    move-result-object v1

    .line 52
    .local v1, "array":[[B
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v2

    .line 53
    .local v2, "width":I
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v3

    .line 54
    .local v3, "height":I
    const/4 v4, 0x0

    .local v4, "y":I
    const/4 v5, 0x0

    :goto_f
    add-int/lit8 v6, v3, -0x1

    if-ge v4, v6, :cond_3d

    .line 55
    aget-object v6, v1, v4

    .line 56
    .local v6, "arrayY":[B
    const/4 v7, 0x0

    .local v7, "x":I
    :goto_16
    add-int/lit8 v8, v2, -0x1

    if-ge v7, v8, :cond_3a

    .line 57
    aget-byte v8, v6, v7

    .line 58
    .local v5, "value":I
    move v5, v8

    add-int/lit8 v9, v7, 0x1

    aget-byte v9, v6, v9

    if-ne v8, v9, :cond_37

    add-int/lit8 v8, v4, 0x1

    aget-object v8, v1, v8

    aget-byte v8, v8, v7

    if-ne v5, v8, :cond_37

    add-int/lit8 v8, v4, 0x1

    aget-object v8, v1, v8

    add-int/lit8 v9, v7, 0x1

    aget-byte v8, v8, v9

    if-ne v5, v8, :cond_37

    .line 59
    add-int/lit8 v0, v0, 0x1

    .line 56
    .end local v5    # "value":I
    :cond_37
    add-int/lit8 v7, v7, 0x1

    goto :goto_16

    .line 54
    .end local v6    # "arrayY":[B
    .end local v7    # "x":I
    :cond_3a
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 63
    .end local v4    # "y":I
    :cond_3d
    mul-int/lit8 v4, v0, 0x3

    return v4
.end method

.method static applyMaskPenaltyRule3(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .registers 11
    .param p0, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, "numPenalties":I
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getArray()[[B

    move-result-object v1

    .line 74
    .local v1, "array":[[B
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v2

    .line 75
    .local v2, "width":I
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v3

    .line 76
    .local v3, "height":I
    const/4 v4, 0x0

    .local v4, "y":I
    :goto_e
    if-ge v4, v3, :cond_ac

    .line 77
    const/4 v5, 0x0

    .local v5, "x":I
    :goto_11
    if-ge v5, v2, :cond_a8

    .line 78
    aget-object v6, v1, v4

    .line 79
    .local v6, "arrayY":[B
    add-int/lit8 v7, v5, 0x6

    const/4 v8, 0x1

    if-ge v7, v2, :cond_56

    aget-byte v7, v6, v5

    if-ne v7, v8, :cond_56

    add-int/lit8 v7, v5, 0x1

    aget-byte v7, v6, v7

    if-nez v7, :cond_56

    add-int/lit8 v7, v5, 0x2

    aget-byte v7, v6, v7

    if-ne v7, v8, :cond_56

    add-int/lit8 v7, v5, 0x3

    aget-byte v7, v6, v7

    if-ne v7, v8, :cond_56

    add-int/lit8 v7, v5, 0x4

    aget-byte v7, v6, v7

    if-ne v7, v8, :cond_56

    add-int/lit8 v7, v5, 0x5

    aget-byte v7, v6, v7

    if-nez v7, :cond_56

    add-int/lit8 v7, v5, 0x6

    aget-byte v7, v6, v7

    if-ne v7, v8, :cond_56

    add-int/lit8 v7, v5, -0x4

    .line 87
    invoke-static {v6, v7, v5}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->isWhiteHorizontal([BII)Z

    move-result v7

    if-nez v7, :cond_54

    add-int/lit8 v7, v5, 0x7

    add-int/lit8 v9, v5, 0xb

    invoke-static {v6, v7, v9}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->isWhiteHorizontal([BII)Z

    move-result v7

    if-eqz v7, :cond_56

    .line 88
    :cond_54
    add-int/lit8 v0, v0, 0x1

    .line 90
    :cond_56
    add-int/lit8 v7, v4, 0x6

    if-ge v7, v3, :cond_a4

    aget-object v7, v1, v4

    aget-byte v7, v7, v5

    if-ne v7, v8, :cond_a4

    add-int/lit8 v7, v4, 0x1

    aget-object v7, v1, v7

    aget-byte v7, v7, v5

    if-nez v7, :cond_a4

    add-int/lit8 v7, v4, 0x2

    aget-object v7, v1, v7

    aget-byte v7, v7, v5

    if-ne v7, v8, :cond_a4

    add-int/lit8 v7, v4, 0x3

    aget-object v7, v1, v7

    aget-byte v7, v7, v5

    if-ne v7, v8, :cond_a4

    add-int/lit8 v7, v4, 0x4

    aget-object v7, v1, v7

    aget-byte v7, v7, v5

    if-ne v7, v8, :cond_a4

    add-int/lit8 v7, v4, 0x5

    aget-object v7, v1, v7

    aget-byte v7, v7, v5

    if-nez v7, :cond_a4

    add-int/lit8 v7, v4, 0x6

    aget-object v7, v1, v7

    aget-byte v7, v7, v5

    if-ne v7, v8, :cond_a4

    add-int/lit8 v7, v4, -0x4

    .line 98
    invoke-static {v1, v5, v7, v4}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->isWhiteVertical([[BIII)Z

    move-result v7

    if-nez v7, :cond_a2

    add-int/lit8 v7, v4, 0x7

    add-int/lit8 v8, v4, 0xb

    invoke-static {v1, v5, v7, v8}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->isWhiteVertical([[BIII)Z

    move-result v7

    if-eqz v7, :cond_a4

    .line 99
    :cond_a2
    add-int/lit8 v0, v0, 0x1

    .line 77
    .end local v6    # "arrayY":[B
    :cond_a4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_11

    .line 76
    .end local v5    # "x":I
    :cond_a8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_e

    .line 103
    .end local v4    # "y":I
    :cond_ac
    mul-int/lit8 v4, v0, 0x28

    return v4
.end method

.method static applyMaskPenaltyRule4(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .registers 11

    .line 133
    nop

    .line 134
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getArray()[[B

    move-result-object v0

    .line 135
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v1

    .line 136
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v2

    .line 137
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_10
    const/4 v6, 0x1

    if-ge v4, v2, :cond_24

    .line 138
    aget-object v7, v0, v4

    .line 139
    const/4 v8, 0x0

    :goto_16
    if-ge v8, v1, :cond_21

    .line 140
    aget-byte v9, v7, v8

    if-ne v9, v6, :cond_1e

    .line 141
    add-int/lit8 v5, v5, 0x1

    .line 139
    :cond_1e
    add-int/lit8 v8, v8, 0x1

    goto :goto_16

    .line 137
    :cond_21
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 145
    :cond_24
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result p0

    mul-int v0, v0, p0

    .line 146
    shl-int/lit8 p0, v5, 0x1

    sub-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0xa

    div-int/2addr p0, v0

    .line 147
    mul-int/lit8 p0, p0, 0xa

    return p0
.end method

.method static getDataMaskBit(III)Z
    .registers 7
    .param p0, "maskPattern"    # I
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 157
    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_4e

    .line 186
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid mask pattern: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :pswitch_15
    mul-int v2, p2, p1

    .line 183
    .local v1, "temp":I
    rem-int/lit8 v2, v2, 0x3

    add-int v3, p2, p1

    and-int/2addr v3, v0

    add-int/2addr v2, v3

    and-int/2addr v2, v0

    .line 184
    .local v2, "intermediate":I
    goto :goto_48

    .line 178
    .end local v1    # "temp":I
    .end local v2    # "intermediate":I
    :pswitch_1f
    mul-int v2, p2, p1

    .line 179
    .restart local v1    # "temp":I
    move v1, v2

    and-int/2addr v2, v0

    rem-int/lit8 v3, v1, 0x3

    add-int/2addr v2, v3

    and-int/2addr v2, v0

    .line 180
    .restart local v2    # "intermediate":I
    goto :goto_48

    .line 174
    .end local v1    # "temp":I
    .end local v2    # "intermediate":I
    :pswitch_28
    mul-int v2, p2, p1

    .line 175
    .restart local v1    # "temp":I
    move v1, v2

    and-int/2addr v2, v0

    rem-int/lit8 v3, v1, 0x3

    add-int/2addr v2, v3

    .line 176
    .restart local v2    # "intermediate":I
    goto :goto_48

    .line 171
    .end local v1    # "temp":I
    .end local v2    # "intermediate":I
    :pswitch_30
    div-int/lit8 v1, p2, 0x2

    div-int/lit8 v2, p1, 0x3

    add-int/2addr v1, v2

    and-int/lit8 v2, v1, 0x1

    .line 172
    .restart local v2    # "intermediate":I
    goto :goto_48

    .line 168
    .end local v2    # "intermediate":I
    :pswitch_38
    add-int v1, p2, p1

    rem-int/lit8 v2, v1, 0x3

    .line 169
    .restart local v2    # "intermediate":I
    goto :goto_48

    .line 165
    .end local v2    # "intermediate":I
    :pswitch_3d
    rem-int/lit8 v2, p1, 0x3

    .line 166
    .restart local v2    # "intermediate":I
    goto :goto_48

    .line 162
    .end local v2    # "intermediate":I
    :pswitch_40
    and-int/lit8 v2, p2, 0x1

    .line 163
    .restart local v2    # "intermediate":I
    goto :goto_48

    .line 159
    .end local v2    # "intermediate":I
    :pswitch_43
    add-int v1, p2, p1

    and-int/lit8 v2, v1, 0x1

    .line 160
    .restart local v2    # "intermediate":I
    nop

    .line 188
    :goto_48
    if-nez v2, :cond_4b

    return v0

    :cond_4b
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_38
        :pswitch_30
        :pswitch_28
        :pswitch_1f
        :pswitch_15
    .end packed-switch
.end method

.method private static isWhiteHorizontal([BII)Z
    .registers 7
    .param p0, "rowArray"    # [B
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 107
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 108
    array-length v1, p0

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 109
    move v1, p1

    .local v1, "i":I
    :goto_b
    const/4 v2, 0x1

    if-ge v1, p2, :cond_16

    .line 110
    aget-byte v3, p0, v1

    if-ne v3, v2, :cond_13

    .line 111
    return v0

    .line 109
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 114
    .end local v1    # "i":I
    :cond_16
    return v2
.end method

.method private static isWhiteVertical([[BIII)Z
    .registers 8
    .param p0, "array"    # [[B
    .param p1, "col"    # I
    .param p2, "from"    # I
    .param p3, "to"    # I

    .line 118
    const/4 v0, 0x0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 119
    array-length v1, p0

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 120
    move v1, p2

    .local v1, "i":I
    :goto_b
    const/4 v2, 0x1

    if-ge v1, p3, :cond_18

    .line 121
    aget-object v3, p0, v1

    aget-byte v3, v3, p1

    if-ne v3, v2, :cond_15

    .line 122
    return v0

    .line 120
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 125
    .end local v1    # "i":I
    :cond_18
    return v2
.end method
