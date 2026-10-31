.class public final Lcom/google/zxing/oned/Code128Writer;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "Code128Writer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/oned/Code128Writer$CType;
    }
.end annotation


# static fields
.field private static final CODE_CODE_A:I = 0x65

.field private static final CODE_CODE_B:I = 0x64

.field private static final CODE_CODE_C:I = 0x63

.field private static final CODE_FNC_1:I = 0x66

.field private static final CODE_FNC_2:I = 0x61

.field private static final CODE_FNC_3:I = 0x60

.field private static final CODE_FNC_4_A:I = 0x65

.field private static final CODE_FNC_4_B:I = 0x64

.field private static final CODE_START_A:I = 0x67

.field private static final CODE_START_B:I = 0x68

.field private static final CODE_START_C:I = 0x69

.field private static final CODE_STOP:I = 0x6a

.field private static final ESCAPE_FNC_1:C = '\u00f1'

.field private static final ESCAPE_FNC_2:C = '\u00f2'

.field private static final ESCAPE_FNC_3:C = '\u00f3'

.field private static final ESCAPE_FNC_4:C = '\u00f4'


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    return-void
.end method

.method private static chooseCode(Ljava/lang/CharSequence;II)I
    .registers 9
    .param p0, "value"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "oldCode"    # I

    .line 234
    invoke-static {p0, p1}, Lcom/google/zxing/oned/Code128Writer;->findCType(Ljava/lang/CharSequence;I)Lcom/google/zxing/oned/Code128Writer$CType;

    move-result-object v0

    const/4 v1, 0x0

    .line 235
    .local v1, "lookahead":Lcom/google/zxing/oned/Code128Writer$CType;
    move-object v1, v0

    sget-object v2, Lcom/google/zxing/oned/Code128Writer$CType;->ONE_DIGIT:Lcom/google/zxing/oned/Code128Writer$CType;

    const/16 v3, 0x64

    if-ne v0, v2, :cond_d

    .line 236
    return v3

    .line 238
    :cond_d
    sget-object v0, Lcom/google/zxing/oned/Code128Writer$CType;->UNCODABLE:Lcom/google/zxing/oned/Code128Writer$CType;

    if-ne v1, v0, :cond_2b

    .line 239
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_2a

    .line 240
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/4 v2, 0x0

    .line 241
    .local v2, "c":C
    move v2, v0

    const/16 v4, 0x20

    const/16 v5, 0x65

    if-lt v0, v4, :cond_29

    if-ne p2, v5, :cond_2a

    const/16 v0, 0x60

    if-ge v2, v0, :cond_2a

    .line 243
    :cond_29
    return v5

    .line 246
    .end local v2    # "c":C
    :cond_2a
    return v3

    .line 248
    :cond_2b
    const/16 v0, 0x63

    if-ne p2, v0, :cond_30

    .line 249
    return v0

    .line 251
    :cond_30
    if-ne p2, v3, :cond_6c

    .line 252
    sget-object v2, Lcom/google/zxing/oned/Code128Writer$CType;->FNC_1:Lcom/google/zxing/oned/Code128Writer$CType;

    if-ne v1, v2, :cond_37

    .line 253
    return v3

    .line 256
    :cond_37
    add-int/lit8 v2, p1, 0x2

    invoke-static {p0, v2}, Lcom/google/zxing/oned/Code128Writer;->findCType(Ljava/lang/CharSequence;I)Lcom/google/zxing/oned/Code128Writer$CType;

    move-result-object v2

    .line 257
    move-object v1, v2

    sget-object v4, Lcom/google/zxing/oned/Code128Writer$CType;->UNCODABLE:Lcom/google/zxing/oned/Code128Writer$CType;

    if-eq v2, v4, :cond_6b

    sget-object v2, Lcom/google/zxing/oned/Code128Writer$CType;->ONE_DIGIT:Lcom/google/zxing/oned/Code128Writer$CType;

    if-ne v1, v2, :cond_47

    goto :goto_6b

    .line 260
    :cond_47
    sget-object v2, Lcom/google/zxing/oned/Code128Writer$CType;->FNC_1:Lcom/google/zxing/oned/Code128Writer$CType;

    if-ne v1, v2, :cond_57

    .line 261
    add-int/lit8 v2, p1, 0x3

    invoke-static {p0, v2}, Lcom/google/zxing/oned/Code128Writer;->findCType(Ljava/lang/CharSequence;I)Lcom/google/zxing/oned/Code128Writer$CType;

    move-result-object v2

    .line 262
    sget-object v4, Lcom/google/zxing/oned/Code128Writer$CType;->TWO_DIGITS:Lcom/google/zxing/oned/Code128Writer$CType;

    if-ne v2, v4, :cond_56

    .line 263
    return v0

    .line 265
    :cond_56
    return v3

    .line 270
    :cond_57
    add-int/lit8 v2, p1, 0x4

    .line 271
    .local v2, "index":I
    :goto_59
    invoke-static {p0, v2}, Lcom/google/zxing/oned/Code128Writer;->findCType(Ljava/lang/CharSequence;I)Lcom/google/zxing/oned/Code128Writer$CType;

    move-result-object v4

    move-object v1, v4

    sget-object v5, Lcom/google/zxing/oned/Code128Writer$CType;->TWO_DIGITS:Lcom/google/zxing/oned/Code128Writer$CType;

    if-ne v4, v5, :cond_65

    .line 272
    add-int/lit8 v2, v2, 0x2

    goto :goto_59

    .line 274
    :cond_65
    sget-object v4, Lcom/google/zxing/oned/Code128Writer$CType;->ONE_DIGIT:Lcom/google/zxing/oned/Code128Writer$CType;

    if-ne v1, v4, :cond_6a

    .line 275
    return v3

    .line 277
    :cond_6a
    return v0

    .line 258
    .end local v2    # "index":I
    :cond_6b
    :goto_6b
    return v3

    .line 280
    :cond_6c
    sget-object v2, Lcom/google/zxing/oned/Code128Writer$CType;->FNC_1:Lcom/google/zxing/oned/Code128Writer$CType;

    if-ne v1, v2, :cond_76

    .line 281
    add-int/lit8 v2, p1, 0x1

    invoke-static {p0, v2}, Lcom/google/zxing/oned/Code128Writer;->findCType(Ljava/lang/CharSequence;I)Lcom/google/zxing/oned/Code128Writer$CType;

    move-result-object v1

    .line 283
    :cond_76
    sget-object v2, Lcom/google/zxing/oned/Code128Writer$CType;->TWO_DIGITS:Lcom/google/zxing/oned/Code128Writer$CType;

    if-ne v1, v2, :cond_7b

    .line 284
    return v0

    .line 286
    :cond_7b
    return v3
.end method

.method private static findCType(Ljava/lang/CharSequence;I)Lcom/google/zxing/oned/Code128Writer$CType;
    .registers 7
    .param p0, "value"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I

    .line 212
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 213
    .local v0, "last":I
    if-lt p1, v0, :cond_9

    .line 214
    sget-object v1, Lcom/google/zxing/oned/Code128Writer$CType;->UNCODABLE:Lcom/google/zxing/oned/Code128Writer$CType;

    return-object v1

    .line 216
    :cond_9
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/4 v2, 0x0

    .line 217
    .local v2, "c":C
    move v2, v1

    const/16 v3, 0xf1

    if-ne v1, v3, :cond_16

    .line 218
    sget-object v1, Lcom/google/zxing/oned/Code128Writer$CType;->FNC_1:Lcom/google/zxing/oned/Code128Writer$CType;

    return-object v1

    .line 220
    :cond_16
    const/16 v1, 0x30

    if-lt v2, v1, :cond_38

    const/16 v3, 0x39

    if-le v2, v3, :cond_1f

    goto :goto_38

    .line 223
    :cond_1f
    add-int/lit8 v4, p1, 0x1

    if-lt v4, v0, :cond_26

    .line 224
    sget-object v1, Lcom/google/zxing/oned/Code128Writer$CType;->ONE_DIGIT:Lcom/google/zxing/oned/Code128Writer$CType;

    return-object v1

    .line 226
    :cond_26
    add-int/lit8 v4, p1, 0x1

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 227
    move v2, v4

    if-lt v4, v1, :cond_35

    if-le v2, v3, :cond_32

    goto :goto_35

    .line 230
    :cond_32
    sget-object v1, Lcom/google/zxing/oned/Code128Writer$CType;->TWO_DIGITS:Lcom/google/zxing/oned/Code128Writer$CType;

    return-object v1

    .line 228
    :cond_35
    :goto_35
    sget-object v1, Lcom/google/zxing/oned/Code128Writer$CType;->ONE_DIGIT:Lcom/google/zxing/oned/Code128Writer$CType;

    return-object v1

    .line 221
    :cond_38
    :goto_38
    sget-object v1, Lcom/google/zxing/oned/Code128Writer$CType;->UNCODABLE:Lcom/google/zxing/oned/Code128Writer$CType;

    return-object v1
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

    .line 69
    .local p5, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;*>;"
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    if-ne p2, v0, :cond_9

    .line 72
    invoke-super/range {p0 .. p5}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0

    .line 70
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only encode CODE_128, but got "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Ljava/lang/String;)[Z
    .registers 12

    .line 77
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 79
    if-lez v0, :cond_ed

    const/16 v1, 0x50

    if-gt v0, v1, :cond_ed

    .line 84
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v0, :cond_2e

    .line 85
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 86
    packed-switch v3, :pswitch_data_fe

    .line 93
    const/16 v4, 0x7f

    if-gt v3, v4, :cond_1e

    goto :goto_1b

    .line 91
    :pswitch_1a
    nop

    .line 84
    :goto_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 95
    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad character in input: "

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 100
    :cond_2e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 101
    nop

    .line 102
    nop

    .line 103
    nop

    .line 104
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 106
    :goto_3b
    const/16 v8, 0x67

    if-ge v4, v0, :cond_a5

    .line 108
    invoke-static {p1, v4, v6}, Lcom/google/zxing/oned/Code128Writer;->chooseCode(Ljava/lang/CharSequence;II)I

    move-result v9

    .line 112
    if-ne v9, v6, :cond_85

    .line 115
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    packed-switch v8, :pswitch_data_10a

    .line 134
    packed-switch v6, :pswitch_data_116

    .line 147
    add-int/lit8 v8, v4, 0x2

    invoke-virtual {p1, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 148
    add-int/lit8 v4, v4, 0x1

    goto :goto_83

    .line 126
    :pswitch_5c
    const/16 v8, 0x65

    if-ne v6, v8, :cond_61

    .line 127
    goto :goto_83

    .line 129
    :cond_61
    nop

    .line 131
    const/16 v8, 0x64

    goto :goto_83

    .line 123
    :pswitch_65
    nop

    .line 124
    const/16 v8, 0x60

    goto :goto_83

    .line 120
    :pswitch_69
    nop

    .line 121
    const/16 v8, 0x61

    goto :goto_83

    .line 117
    :pswitch_6d
    nop

    .line 118
    const/16 v8, 0x66

    goto :goto_83

    .line 136
    :pswitch_71
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v8, v8, -0x20

    .line 137
    if-gez v8, :cond_83

    .line 139
    add-int/lit8 v8, v8, 0x60

    goto :goto_83

    .line 143
    :pswitch_7c
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v8, v8, -0x20

    .line 144
    nop

    .line 152
    :cond_83
    :goto_83
    add-int/2addr v4, v3

    goto :goto_96

    .line 156
    :cond_85
    if-nez v6, :cond_94

    .line 158
    packed-switch v9, :pswitch_data_11e

    .line 166
    nop

    .line 167
    const/16 v8, 0x69

    goto :goto_95

    .line 160
    :pswitch_8e
    nop

    .line 161
    goto :goto_95

    .line 163
    :pswitch_90
    nop

    .line 164
    const/16 v8, 0x68

    goto :goto_95

    .line 171
    :cond_94
    move v8, v9

    .line 173
    :goto_95
    move v6, v9

    .line 177
    :goto_96
    sget-object v9, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    aget-object v9, v9, v8

    invoke-interface {v2, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 180
    mul-int v8, v8, v7

    add-int/2addr v5, v8

    .line 181
    if-eqz v4, :cond_a4

    .line 182
    add-int/lit8 v7, v7, 0x1

    .line 184
    :cond_a4
    goto :goto_3b

    .line 187
    :cond_a5
    rem-int/2addr v5, v8

    .line 188
    sget-object p1, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    aget-object p1, p1, v5

    invoke-interface {v2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 191
    sget-object p1, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    const/16 v0, 0x6a

    aget-object p1, p1, v0

    invoke-interface {v2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 194
    nop

    .line 195
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_bc
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 196
    array-length v5, v4

    const/4 v6, 0x0

    :goto_ca
    if-ge v6, v5, :cond_d2

    aget v7, v4, v6

    .line 197
    add-int/2addr v0, v7

    .line 196
    add-int/lit8 v6, v6, 0x1

    goto :goto_ca

    .line 199
    :cond_d2
    goto :goto_bc

    .line 202
    :cond_d3
    new-array p1, v0, [Z

    .line 203
    nop

    .line 204
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_da
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ec

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 205
    invoke-static {p1, v1, v2, v3}, Lcom/google/zxing/oned/Code128Writer;->appendPattern([ZI[IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 206
    goto :goto_da

    .line 208
    :cond_ec
    return-object p1

    .line 80
    :cond_ed
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "Contents length should be between 1 and 80 characters, but got "

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_fe
    .packed-switch 0xf1
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
    .end packed-switch

    :pswitch_data_10a
    .packed-switch 0xf1
        :pswitch_6d
        :pswitch_69
        :pswitch_65
        :pswitch_5c
    .end packed-switch

    :pswitch_data_116
    .packed-switch 0x64
        :pswitch_7c
        :pswitch_71
    .end packed-switch

    :pswitch_data_11e
    .packed-switch 0x64
        :pswitch_90
        :pswitch_8e
    .end packed-switch
.end method
