.class public final Lcom/google/zxing/oned/Code93Reader;
.super Lcom/google/zxing/oned/OneDReader;
.source "Code93Reader.java"


# static fields
.field private static final ALPHABET:[C

.field static final ALPHABET_STRING:Ljava/lang/String; = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

.field private static final ASTERISK_ENCODING:I

.field static final CHARACTER_ENCODINGS:[I


# instance fields
.field private final counters:[I

.field private final decodeRowResult:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 41
    const-string v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/oned/Code93Reader;->ALPHABET:[C

    .line 47
    const/16 v0, 0x30

    new-array v0, v0, [I

    fill-array-data v0, :array_18

    .line 55
    sput-object v0, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    const/16 v1, 0x2f

    aget v0, v0, v1

    sput v0, Lcom/google/zxing/oned/Code93Reader;->ASTERISK_ENCODING:I

    return-void

    :array_18
    .array-data 4
        0x114
        0x148
        0x144
        0x142
        0x128
        0x124
        0x122
        0x150
        0x112
        0x10a
        0x1a8
        0x1a4
        0x1a2
        0x194
        0x192
        0x18a
        0x168
        0x164
        0x162
        0x134
        0x11a
        0x158
        0x14c
        0x146
        0x12c
        0x116
        0x1b4
        0x1b2
        0x1ac
        0x1a6
        0x196
        0x19a
        0x16c
        0x166
        0x136
        0x13a
        0x12e
        0x1d4
        0x1d2
        0x1ca
        0x16e
        0x176
        0x1ae
        0x126
        0x1da
        0x1d6
        0x132
        0x15e
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    .line 60
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/oned/Code93Reader;->decodeRowResult:Ljava/lang/StringBuilder;

    .line 62
    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/Code93Reader;->counters:[I

    .line 63
    return-void
.end method

.method private static checkChecksums(Ljava/lang/CharSequence;)V
    .registers 4
    .param p0, "result"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .line 267
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 268
    .local v0, "length":I
    add-int/lit8 v1, v0, -0x2

    const/16 v2, 0x14

    invoke-static {p0, v1, v2}, Lcom/google/zxing/oned/Code93Reader;->checkOneChecksum(Ljava/lang/CharSequence;II)V

    .line 269
    add-int/lit8 v1, v0, -0x1

    const/16 v2, 0xf

    invoke-static {p0, v1, v2}, Lcom/google/zxing/oned/Code93Reader;->checkOneChecksum(Ljava/lang/CharSequence;II)V

    .line 270
    return-void
.end method

.method private static checkOneChecksum(Ljava/lang/CharSequence;II)V
    .registers 8
    .param p0, "result"    # Ljava/lang/CharSequence;
    .param p1, "checkPosition"    # I
    .param p2, "weightMax"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .line 274
    const/4 v0, 0x1

    .line 275
    .local v0, "weight":I
    const/4 v1, 0x0

    .line 276
    .local v1, "total":I
    add-int/lit8 v2, p1, -0x1

    .local v2, "i":I
    :goto_4
    if-ltz v2, :cond_1b

    .line 277
    const-string v3, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    mul-int v3, v3, v0

    add-int/2addr v1, v3

    .line 278
    add-int/lit8 v0, v0, 0x1

    if-le v0, p2, :cond_18

    .line 279
    const/4 v0, 0x1

    .line 276
    :cond_18
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 282
    .end local v2    # "i":I
    :cond_1b
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    sget-object v3, Lcom/google/zxing/oned/Code93Reader;->ALPHABET:[C

    rem-int/lit8 v4, v1, 0x2f

    aget-char v3, v3, v4

    if-ne v2, v3, :cond_28

    .line 285
    return-void

    .line 283
    :cond_28
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v2

    throw v2
.end method

.method private static decodeExtended(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 10
    .param p0, "encoded"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 198
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 199
    .local v0, "length":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 200
    .local v1, "decoded":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    :goto_b
    if-ge v2, v0, :cond_aa

    .line 201
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 202
    .local v3, "c":C
    move v3, v4

    const/16 v5, 0x61

    if-lt v4, v5, :cond_a3

    const/16 v4, 0x64

    if-gt v3, v4, :cond_a3

    .line 203
    add-int/lit8 v4, v0, -0x1

    if-ge v2, v4, :cond_9e

    .line 206
    add-int/lit8 v4, v2, 0x1

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 207
    .local v4, "next":C
    const/4 v5, 0x0

    .line 208
    .local v5, "decodedChar":C
    const/16 v6, 0x4f

    const/16 v7, 0x5a

    const/16 v8, 0x41

    packed-switch v3, :pswitch_data_b0

    goto/16 :goto_97

    .line 211
    :pswitch_30
    if-lt v4, v8, :cond_39

    if-gt v4, v7, :cond_39

    .line 212
    add-int/lit8 v6, v4, 0x20

    int-to-char v5, v6

    goto/16 :goto_97

    .line 214
    :cond_39
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 247
    :pswitch_3e
    if-lt v4, v8, :cond_46

    if-gt v4, v6, :cond_46

    .line 248
    add-int/lit8 v6, v4, -0x20

    int-to-char v5, v6

    goto :goto_97

    .line 249
    :cond_46
    if-ne v4, v7, :cond_4b

    .line 250
    const/16 v5, 0x3a

    goto :goto_97

    .line 252
    :cond_4b
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 226
    :pswitch_50
    if-lt v4, v8, :cond_5a

    const/16 v8, 0x45

    if-gt v4, v8, :cond_5a

    .line 228
    add-int/lit8 v6, v4, -0x26

    int-to-char v5, v6

    goto :goto_97

    .line 229
    :cond_5a
    const/16 v8, 0x46

    if-lt v4, v8, :cond_66

    const/16 v8, 0x4a

    if-gt v4, v8, :cond_66

    .line 231
    add-int/lit8 v6, v4, -0xb

    int-to-char v5, v6

    goto :goto_97

    .line 232
    :cond_66
    const/16 v8, 0x4b

    if-lt v4, v8, :cond_70

    if-gt v4, v6, :cond_70

    .line 234
    add-int/lit8 v6, v4, 0x10

    int-to-char v5, v6

    goto :goto_97

    .line 235
    :cond_70
    const/16 v6, 0x50

    if-lt v4, v6, :cond_7c

    const/16 v6, 0x53

    if-gt v4, v6, :cond_7c

    .line 237
    add-int/lit8 v6, v4, 0x2b

    int-to-char v5, v6

    goto :goto_97

    .line 238
    :cond_7c
    const/16 v6, 0x54

    if-lt v4, v6, :cond_85

    if-gt v4, v7, :cond_85

    .line 240
    const/16 v5, 0x7f

    goto :goto_97

    .line 242
    :cond_85
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 219
    :pswitch_8a
    if-lt v4, v8, :cond_92

    if-gt v4, v7, :cond_92

    .line 220
    add-int/lit8 v6, v4, -0x40

    int-to-char v5, v6

    goto :goto_97

    .line 222
    :cond_92
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 256
    :goto_97
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 258
    nop

    .end local v4    # "next":C
    .end local v5    # "decodedChar":C
    add-int/lit8 v2, v2, 0x1

    .line 259
    goto :goto_a6

    .line 204
    :cond_9e
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v4

    throw v4

    .line 260
    :cond_a3
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 200
    .end local v3    # "c":C
    :goto_a6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_b

    .line 263
    .end local v2    # "i":I
    :cond_aa
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    nop

    :pswitch_data_b0
    .packed-switch 0x61
        :pswitch_8a
        :pswitch_50
        :pswitch_3e
        :pswitch_30
    .end packed-switch
.end method

.method private findAsteriskPattern(Lcom/google/zxing/common/BitArray;)[I
    .registers 14
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 132
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    .line 133
    .local v0, "width":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v2

    .line 135
    .local v2, "rowOffset":I
    iget-object v3, p0, Lcom/google/zxing/oned/Code93Reader;->counters:[I

    invoke-static {v3, v1}, Ljava/util/Arrays;->fill([II)V

    .line 136
    iget-object v3, p0, Lcom/google/zxing/oned/Code93Reader;->counters:[I

    .line 137
    .local v3, "theCounters":[I
    move v4, v2

    .line 138
    .local v4, "patternStart":I
    const/4 v5, 0x0

    .line 139
    .local v5, "isWhite":Z
    array-length v6, v3

    .line 141
    .local v6, "patternLength":I
    const/4 v7, 0x0

    .line 142
    .local v7, "counterPosition":I
    move v8, v2

    .local v8, "i":I
    :goto_15
    if-ge v8, v0, :cond_56

    .line 143
    invoke-virtual {p1, v8}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v5, :cond_24

    .line 144
    aget v9, v3, v7

    add-int/2addr v9, v10

    aput v9, v3, v7

    goto :goto_53

    .line 146
    :cond_24
    add-int/lit8 v9, v6, -0x1

    if-ne v7, v9, :cond_4a

    .line 147
    invoke-static {v3}, Lcom/google/zxing/oned/Code93Reader;->toPattern([I)I

    move-result v9

    sget v11, Lcom/google/zxing/oned/Code93Reader;->ASTERISK_ENCODING:I

    if-ne v9, v11, :cond_35

    .line 148
    filled-new-array {v4, v8}, [I

    move-result-object v1

    return-object v1

    .line 150
    :cond_35
    aget v9, v3, v1

    aget v11, v3, v10

    add-int/2addr v9, v11

    add-int/2addr v4, v9

    .line 151
    add-int/lit8 v9, v7, -0x1

    const/4 v11, 0x2

    invoke-static {v3, v11, v3, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    add-int/lit8 v9, v7, -0x1

    aput v1, v3, v9

    .line 153
    aput v1, v3, v7

    .line 154
    add-int/lit8 v7, v7, -0x1

    goto :goto_4c

    .line 156
    :cond_4a
    add-int/lit8 v7, v7, 0x1

    .line 158
    :goto_4c
    aput v10, v3, v7

    .line 159
    if-nez v5, :cond_51

    goto :goto_52

    :cond_51
    const/4 v10, 0x0

    :goto_52
    move v5, v10

    .line 142
    :goto_53
    add-int/lit8 v8, v8, 0x1

    goto :goto_15

    .line 162
    .end local v8    # "i":I
    :cond_56
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

    .line 189
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_14

    .line 190
    sget-object v1, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    aget v1, v1, v0

    if-ne v1, p0, :cond_11

    .line 191
    sget-object v1, Lcom/google/zxing/oned/Code93Reader;->ALPHABET:[C

    aget-char v1, v1, v0

    return v1

    .line 189
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 194
    .end local v0    # "i":I
    :cond_14
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method private static toPattern([I)I
    .registers 8

    .line 166
    nop

    .line 167
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v2, v0, :cond_d

    aget v4, p0, v2

    .line 168
    add-int/2addr v3, v4

    .line 167
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 170
    :cond_d
    nop

    .line 171
    array-length v0, p0

    .line 172
    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_11
    if-ge v2, v0, :cond_3a

    .line 173
    aget v5, p0, v2

    int-to-float v5, v5

    const/high16 v6, 0x41100000    # 9.0f

    mul-float v5, v5, v6

    int-to-float v6, v3

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 174
    if-lez v5, :cond_38

    const/4 v6, 0x4

    if-le v5, v6, :cond_26

    goto :goto_38

    .line 177
    :cond_26
    and-int/lit8 v6, v2, 0x1

    if-nez v6, :cond_34

    .line 178
    const/4 v6, 0x0

    :goto_2b
    if-ge v6, v5, :cond_35

    .line 179
    shl-int/lit8 v4, v4, 0x1

    or-int/lit8 v4, v4, 0x1

    .line 178
    add-int/lit8 v6, v6, 0x1

    goto :goto_2b

    .line 182
    :cond_34
    shl-int/2addr v4, v5

    .line 172
    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 175
    :cond_38
    :goto_38
    const/4 p0, -0x1

    return p0

    .line 185
    :cond_3a
    return v4
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

    .line 69
    invoke-direct {p0, p2}, Lcom/google/zxing/oned/Code93Reader;->findAsteriskPattern(Lcom/google/zxing/common/BitArray;)[I

    move-result-object p3

    .line 71
    const/4 v0, 0x1

    aget v1, p3, v0

    invoke-virtual {p2, v1}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v1

    .line 72
    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    .line 74
    iget-object v3, p0, Lcom/google/zxing/oned/Code93Reader;->counters:[I

    .line 75
    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([II)V

    .line 76
    iget-object v5, p0, Lcom/google/zxing/oned/Code93Reader;->decodeRowResult:Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 82
    :goto_1a
    invoke-static {p2, v1, v3}, Lcom/google/zxing/oned/Code93Reader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 83
    invoke-static {v3}, Lcom/google/zxing/oned/Code93Reader;->toPattern([I)I

    move-result v6

    .line 84
    if-ltz v6, :cond_a4

    .line 87
    invoke-static {v6}, Lcom/google/zxing/oned/Code93Reader;->patternToChar(I)C

    move-result v6

    .line 88
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    nop

    .line 90
    array-length v7, v3

    move v9, v1

    const/4 v8, 0x0

    :goto_2e
    if-ge v8, v7, :cond_36

    aget v10, v3, v8

    .line 91
    add-int/2addr v9, v10

    .line 90
    add-int/lit8 v8, v8, 0x1

    goto :goto_2e

    .line 94
    :cond_36
    invoke-virtual {p2, v9}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v7

    .line 95
    const/16 v8, 0x2a

    if-ne v6, v8, :cond_a1

    .line 96
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    sub-int/2addr v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 98
    nop

    .line 99
    array-length v6, v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_4a
    if-ge v8, v6, :cond_52

    aget v10, v3, v8

    .line 100
    add-int/2addr v9, v10

    .line 99
    add-int/lit8 v8, v8, 0x1

    goto :goto_4a

    .line 104
    :cond_52
    if-eq v7, v2, :cond_9c

    invoke-virtual {p2, v7}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result p2

    if-eqz p2, :cond_9c

    .line 108
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    const/4 v2, 0x2

    if-lt p2, v2, :cond_97

    .line 113
    invoke-static {v5}, Lcom/google/zxing/oned/Code93Reader;->checkChecksums(Ljava/lang/CharSequence;)V

    .line 115
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    sub-int/2addr p2, v2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 117
    invoke-static {v5}, Lcom/google/zxing/oned/Code93Reader;->decodeExtended(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 119
    aget v3, p3, v0

    aget p3, p3, v4

    add-int/2addr v3, p3

    int-to-float p3, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr p3, v3

    .line 120
    int-to-float v1, v1

    int-to-float v5, v9

    div-float/2addr v5, v3

    add-float/2addr v1, v5

    .line 121
    new-instance v3, Lcom/google/zxing/Result;

    new-array v2, v2, [Lcom/google/zxing/ResultPoint;

    new-instance v5, Lcom/google/zxing/ResultPoint;

    int-to-float p1, p1

    invoke-direct {v5, p3, p1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v5, v2, v4

    new-instance p3, Lcom/google/zxing/ResultPoint;

    invoke-direct {p3, v1, p1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object p3, v2, v0

    sget-object p1, Lcom/google/zxing/BarcodeFormat;->CODE_93:Lcom/google/zxing/BarcodeFormat;

    const/4 p3, 0x0

    invoke-direct {v3, p2, p3, v2, p1}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v3

    .line 110
    :cond_97
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1

    .line 105
    :cond_9c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1

    .line 95
    :cond_a1
    move v1, v7

    goto/16 :goto_1a

    .line 85
    :cond_a4
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1
.end method
