.class public final Lcom/google/zxing/oned/Code39Reader;
.super Lcom/google/zxing/oned/OneDReader;
.source "Code39Reader.java"


# static fields
.field static final ALPHABET_STRING:Ljava/lang/String; = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%"

.field static final ASTERISK_ENCODING:I = 0x94

.field static final CHARACTER_ENCODINGS:[I


# instance fields
.field private final counters:[I

.field private final decodeRowResult:Ljava/lang/StringBuilder;

.field private final extendedMode:Z

.field private final usingCheckDigit:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 46
    const/16 v0, 0x2b

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    return-void

    :array_a
    .array-data 4
        0x34
        0x121
        0x61
        0x160
        0x31
        0x130
        0x70
        0x25
        0x124
        0x64
        0x109
        0x49
        0x148
        0x19
        0x118
        0x58
        0xd
        0x10c
        0x4c
        0x1c
        0x103
        0x43
        0x142
        0x13
        0x112
        0x52
        0x7
        0x106
        0x46
        0x16
        0x181
        0xc1
        0x1c0
        0x91
        0x190
        0xd0
        0x85
        0x184
        0xc4
        0xa8
        0xa2
        0x8a
        0x2a
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/zxing/oned/Code39Reader;-><init>(Z)V

    .line 67
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3
    .param p1, "usingCheckDigit"    # Z

    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/zxing/oned/Code39Reader;-><init>(ZZ)V

    .line 78
    return-void
.end method

.method public constructor <init>(ZZ)V
    .registers 5
    .param p1, "usingCheckDigit"    # Z
    .param p2, "extendedMode"    # Z

    .line 90
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 91
    iput-boolean p1, p0, Lcom/google/zxing/oned/Code39Reader;->usingCheckDigit:Z

    .line 92
    iput-boolean p2, p0, Lcom/google/zxing/oned/Code39Reader;->extendedMode:Z

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/oned/Code39Reader;->decodeRowResult:Ljava/lang/StringBuilder;

    .line 94
    const/16 v0, 0x9

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/Code39Reader;->counters:[I

    .line 95
    return-void
.end method

.method private static decodeExtended(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 10
    .param p0, "encoded"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 270
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 271
    .local v0, "length":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 272
    .local v1, "decoded":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    :goto_b
    if-ge v2, v0, :cond_c7

    .line 273
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 274
    .local v3, "c":C
    move v3, v4

    const/16 v5, 0x2b

    if-eq v4, v5, :cond_28

    const/16 v4, 0x24

    if-eq v3, v4, :cond_28

    const/16 v4, 0x25

    if-eq v3, v4, :cond_28

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_23

    goto :goto_28

    .line 331
    :cond_23
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_c3

    .line 275
    :cond_28
    :goto_28
    add-int/lit8 v4, v2, 0x1

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 276
    .local v4, "next":C
    const/4 v5, 0x0

    .line 277
    .local v5, "decodedChar":C
    const/16 v6, 0x4f

    const/16 v7, 0x5a

    const/16 v8, 0x41

    sparse-switch v3, :sswitch_data_cc

    goto/16 :goto_bc

    .line 318
    :sswitch_3a
    if-lt v4, v8, :cond_43

    if-gt v4, v6, :cond_43

    .line 319
    add-int/lit8 v6, v4, -0x20

    int-to-char v5, v6

    goto/16 :goto_bc

    .line 320
    :cond_43
    if-ne v4, v7, :cond_49

    .line 321
    const/16 v5, 0x3a

    goto/16 :goto_bc

    .line 323
    :cond_49
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 280
    :sswitch_4e
    if-lt v4, v8, :cond_57

    if-gt v4, v7, :cond_57

    .line 281
    add-int/lit8 v6, v4, 0x20

    int-to-char v5, v6

    goto/16 :goto_bc

    .line 283
    :cond_57
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 296
    :sswitch_5c
    if-lt v4, v8, :cond_66

    const/16 v8, 0x45

    if-gt v4, v8, :cond_66

    .line 297
    add-int/lit8 v6, v4, -0x26

    int-to-char v5, v6

    goto :goto_bc

    .line 298
    :cond_66
    const/16 v8, 0x46

    if-lt v4, v8, :cond_72

    const/16 v8, 0x4a

    if-gt v4, v8, :cond_72

    .line 299
    add-int/lit8 v6, v4, -0xb

    int-to-char v5, v6

    goto :goto_bc

    .line 300
    :cond_72
    const/16 v8, 0x4b

    if-lt v4, v8, :cond_7c

    if-gt v4, v6, :cond_7c

    .line 301
    add-int/lit8 v6, v4, 0x10

    int-to-char v5, v6

    goto :goto_bc

    .line 302
    :cond_7c
    const/16 v6, 0x50

    if-lt v4, v6, :cond_88

    const/16 v6, 0x54

    if-gt v4, v6, :cond_88

    .line 303
    add-int/lit8 v6, v4, 0x2b

    int-to-char v5, v6

    goto :goto_bc

    .line 304
    :cond_88
    const/16 v6, 0x55

    if-ne v4, v6, :cond_8e

    .line 305
    const/4 v5, 0x0

    goto :goto_bc

    .line 306
    :cond_8e
    const/16 v6, 0x56

    if-ne v4, v6, :cond_95

    .line 307
    const/16 v5, 0x40

    goto :goto_bc

    .line 308
    :cond_95
    const/16 v6, 0x57

    if-ne v4, v6, :cond_9c

    .line 309
    const/16 v5, 0x60

    goto :goto_bc

    .line 310
    :cond_9c
    const/16 v6, 0x58

    if-eq v4, v6, :cond_ac

    const/16 v6, 0x59

    if-eq v4, v6, :cond_ac

    if-ne v4, v7, :cond_a7

    goto :goto_ac

    .line 313
    :cond_a7
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 311
    :cond_ac
    :goto_ac
    const/16 v5, 0x7f

    goto :goto_bc

    .line 288
    :sswitch_af
    if-lt v4, v8, :cond_b7

    if-gt v4, v7, :cond_b7

    .line 289
    add-int/lit8 v6, v4, -0x40

    int-to-char v5, v6

    goto :goto_bc

    .line 291
    :cond_b7
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 327
    :goto_bc
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 329
    nop

    .end local v4    # "next":C
    .end local v5    # "decodedChar":C
    add-int/lit8 v2, v2, 0x1

    .line 330
    nop

    .line 272
    .end local v3    # "c":C
    :goto_c3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_b

    .line 334
    .end local v2    # "i":I
    :cond_c7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :sswitch_data_cc
    .sparse-switch
        0x24 -> :sswitch_af
        0x25 -> :sswitch_5c
        0x2b -> :sswitch_4e
        0x2f -> :sswitch_3a
    .end sparse-switch
.end method

.method private static findAsteriskPattern(Lcom/google/zxing/common/BitArray;[I)[I
    .registers 14
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .param p1, "counters"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 179
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    .line 180
    .local v0, "width":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v2

    .line 182
    .local v2, "rowOffset":I
    const/4 v3, 0x0

    .line 183
    .local v3, "counterPosition":I
    move v4, v2

    .line 184
    .local v4, "patternStart":I
    const/4 v5, 0x0

    .line 185
    .local v5, "isWhite":Z
    array-length v6, p1

    .line 187
    .local v6, "patternLength":I
    move v7, v2

    .local v7, "i":I
    :goto_e
    if-ge v7, v0, :cond_5e

    .line 188
    invoke-virtual {p0, v7}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v5, :cond_1d

    .line 189
    aget v8, p1, v3

    add-int/2addr v8, v9

    aput v8, p1, v3

    goto :goto_5b

    .line 191
    :cond_1d
    add-int/lit8 v8, v6, -0x1

    if-ne v3, v8, :cond_52

    .line 193
    invoke-static {p1}, Lcom/google/zxing/oned/Code39Reader;->toNarrowWidePattern([I)I

    move-result v8

    const/16 v10, 0x94

    const/4 v11, 0x2

    if-ne v8, v10, :cond_3e

    sub-int v8, v7, v4

    div-int/2addr v8, v11

    sub-int v8, v4, v8

    .line 194
    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {p0, v8, v4, v1}, Lcom/google/zxing/common/BitArray;->isRange(IIZ)Z

    move-result v8

    if-eqz v8, :cond_3e

    .line 195
    filled-new-array {v4, v7}, [I

    move-result-object v1

    return-object v1

    .line 197
    :cond_3e
    aget v8, p1, v1

    aget v10, p1, v9

    add-int/2addr v8, v10

    add-int/2addr v4, v8

    .line 198
    add-int/lit8 v8, v3, -0x1

    invoke-static {p1, v11, p1, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 199
    add-int/lit8 v8, v3, -0x1

    aput v1, p1, v8

    .line 200
    aput v1, p1, v3

    .line 201
    add-int/lit8 v3, v3, -0x1

    goto :goto_54

    .line 203
    :cond_52
    add-int/lit8 v3, v3, 0x1

    .line 205
    :goto_54
    aput v9, p1, v3

    .line 206
    if-nez v5, :cond_59

    goto :goto_5a

    :cond_59
    const/4 v9, 0x0

    :goto_5a
    move v5, v9

    .line 187
    :goto_5b
    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    .line 209
    .end local v7    # "i":I
    :cond_5e
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1
.end method

.method private static patternToChar(I)C
    .registers 3
    .param p0, "pattern"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 258
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_16

    .line 259
    sget-object v1, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    aget v1, v1, v0

    if-ne v1, p0, :cond_13

    .line 260
    const-string v1, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%"

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    return v1

    .line 258
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 263
    .end local v0    # "i":I
    :cond_16
    const/16 v0, 0x94

    if-ne p0, v0, :cond_1d

    .line 264
    const/16 v0, 0x2a

    return v0

    .line 266
    :cond_1d
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method private static toNarrowWidePattern([I)I
    .registers 11

    .line 215
    array-length v0, p0

    .line 216
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 219
    :goto_3
    nop

    .line 220
    array-length v3, p0

    const v4, 0x7fffffff

    const/4 v5, 0x0

    :goto_9
    if-ge v5, v3, :cond_15

    aget v6, p0, v5

    .line 221
    if-ge v6, v4, :cond_12

    if-le v6, v2, :cond_12

    .line 222
    move v4, v6

    .line 220
    :cond_12
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 225
    :cond_15
    nop

    .line 226
    nop

    .line 227
    nop

    .line 228
    nop

    .line 229
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1d
    if-ge v2, v0, :cond_30

    .line 230
    aget v7, p0, v2

    .line 231
    if-le v7, v4, :cond_2d

    .line 232
    add-int/lit8 v8, v0, -0x1

    sub-int/2addr v8, v2

    const/4 v9, 0x1

    shl-int v8, v9, v8

    or-int/2addr v5, v8

    .line 233
    add-int/lit8 v3, v3, 0x1

    .line 234
    add-int/2addr v6, v7

    .line 229
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 237
    :cond_30
    const/4 v2, 0x3

    const/4 v7, -0x1

    if-ne v3, v2, :cond_48

    .line 241
    nop

    :goto_35
    if-ge v1, v0, :cond_47

    if-lez v3, :cond_47

    .line 242
    aget v2, p0, v1

    .line 243
    if-le v2, v4, :cond_44

    .line 244
    add-int/lit8 v3, v3, -0x1

    .line 246
    shl-int/lit8 v2, v2, 0x1

    if-lt v2, v6, :cond_44

    .line 247
    return v7

    .line 241
    :cond_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    .line 251
    :cond_47
    return v5

    .line 253
    :cond_48
    if-gt v3, v2, :cond_4b

    .line 254
    return v7

    .line 253
    :cond_4b
    move v2, v4

    goto :goto_3
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .registers 15
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

    .line 101
    iget-object p3, p0, Lcom/google/zxing/oned/Code39Reader;->counters:[I

    .line 102
    const/4 v0, 0x0

    invoke-static {p3, v0}, Ljava/util/Arrays;->fill([II)V

    .line 103
    iget-object v1, p0, Lcom/google/zxing/oned/Code39Reader;->decodeRowResult:Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 106
    invoke-static {p2, p3}, Lcom/google/zxing/oned/Code39Reader;->findAsteriskPattern(Lcom/google/zxing/common/BitArray;[I)[I

    move-result-object v2

    .line 108
    const/4 v3, 0x1

    aget v4, v2, v3

    invoke-virtual {p2, v4}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v4

    .line 109
    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v5

    .line 114
    :goto_1a
    invoke-static {p2, v4, p3}, Lcom/google/zxing/oned/Code39Reader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 115
    invoke-static {p3}, Lcom/google/zxing/oned/Code39Reader;->toNarrowWidePattern([I)I

    move-result v6

    .line 116
    if-ltz v6, :cond_d6

    .line 119
    invoke-static {v6}, Lcom/google/zxing/oned/Code39Reader;->patternToChar(I)C

    move-result v6

    .line 120
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    nop

    .line 122
    array-length v7, p3

    move v9, v4

    const/4 v8, 0x0

    :goto_2e
    if-ge v8, v7, :cond_36

    aget v10, p3, v8

    .line 123
    add-int/2addr v9, v10

    .line 122
    add-int/lit8 v8, v8, 0x1

    goto :goto_2e

    .line 126
    :cond_36
    invoke-virtual {p2, v9}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v7

    .line 127
    const/16 v8, 0x2a

    if-ne v6, v8, :cond_d3

    .line 128
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    sub-int/2addr p2, v3

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 131
    nop

    .line 132
    array-length p2, p3

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_4a
    if-ge v6, p2, :cond_52

    aget v9, p3, v6

    .line 133
    add-int/2addr v8, v9

    .line 132
    add-int/lit8 v6, v6, 0x1

    goto :goto_4a

    .line 135
    :cond_52
    sub-int p2, v7, v4

    sub-int/2addr p2, v8

    .line 138
    if-eq v7, v5, :cond_60

    shl-int/2addr p2, v3

    if-lt p2, v8, :cond_5b

    goto :goto_60

    .line 139
    :cond_5b
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1

    .line 142
    :cond_60
    :goto_60
    iget-boolean p2, p0, Lcom/google/zxing/oned/Code39Reader;->usingCheckDigit:Z

    if-eqz p2, :cond_93

    .line 143
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    sub-int/2addr p2, v3

    .line 144
    nop

    .line 145
    const/4 p3, 0x0

    const/4 v5, 0x0

    :goto_6c
    const-string v6, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%"

    if-ge p3, p2, :cond_7e

    .line 146
    iget-object v7, p0, Lcom/google/zxing/oned/Code39Reader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    add-int/2addr v5, v6

    .line 145
    add-int/lit8 p3, p3, 0x1

    goto :goto_6c

    .line 148
    :cond_7e
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p3

    rem-int/lit8 v5, v5, 0x2b

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne p3, v5, :cond_8e

    .line 151
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_93

    .line 149
    :cond_8e
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object p1

    throw p1

    .line 154
    :cond_93
    :goto_93
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-eqz p2, :cond_ce

    .line 160
    iget-boolean p2, p0, Lcom/google/zxing/oned/Code39Reader;->extendedMode:Z

    if-eqz p2, :cond_a2

    .line 161
    invoke-static {v1}, Lcom/google/zxing/oned/Code39Reader;->decodeExtended(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    goto :goto_a6

    .line 163
    :cond_a2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 166
    :goto_a6
    aget p3, v2, v3

    aget v1, v2, v0

    add-int/2addr p3, v1

    int-to-float p3, p3

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p3, v1

    .line 167
    int-to-float v2, v4

    int-to-float v4, v8

    div-float/2addr v4, v1

    add-float/2addr v2, v4

    .line 168
    new-instance v1, Lcom/google/zxing/Result;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/google/zxing/ResultPoint;

    new-instance v5, Lcom/google/zxing/ResultPoint;

    int-to-float p1, p1

    invoke-direct {v5, p3, p1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v5, v4, v0

    new-instance p3, Lcom/google/zxing/ResultPoint;

    invoke-direct {p3, v2, p1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object p3, v4, v3

    sget-object p1, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    const/4 p3, 0x0

    invoke-direct {v1, p2, p3, v4, p1}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v1

    .line 156
    :cond_ce
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1

    .line 127
    :cond_d3
    move v4, v7

    goto/16 :goto_1a

    .line 117
    :cond_d6
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1
.end method
