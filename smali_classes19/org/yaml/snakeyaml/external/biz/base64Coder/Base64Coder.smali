.class public Lorg/yaml/snakeyaml/external/biz/base64Coder/Base64Coder;
.super Ljava/lang/Object;
.source "Base64Coder.java"


# static fields
.field private static map1:[C

.field private static map2:[B

.field private static final systemLineSeparator:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 35
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/yaml/snakeyaml/external/biz/base64Coder/Base64Coder;->systemLineSeparator:Ljava/lang/String;

    .line 38
    const/16 v0, 0x40

    new-array v1, v0, [C

    sput-object v1, Lorg/yaml/snakeyaml/external/biz/base64Coder/Base64Coder;->map1:[C

    .line 40
    const/4 v1, 0x0

    .line 41
    .local v1, "i":I
    const/16 v2, 0x41

    .local v2, "c":C
    :goto_0
    const/16 v3, 0x5a

    if-gt v2, v3, :cond_0

    .line 42
    sget-object v3, Lorg/yaml/snakeyaml/external/biz/base64Coder/Base64Coder;->map1:[C

    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .local v4, "i":I
    aput-char v2, v3, v1

    .line 41
    add-int/lit8 v1, v2, 0x1

    int-to-char v2, v1

    move v1, v4

    goto :goto_0

    .line 43
    .end local v2    # "c":C
    .end local v4    # "i":I
    .restart local v1    # "i":I
    :cond_0
    const/16 v2, 0x61

    .restart local v2    # "c":C
    :goto_1
    const/16 v3, 0x7a

    if-gt v2, v3, :cond_1

    .line 44
    sget-object v3, Lorg/yaml/snakeyaml/external/biz/base64Coder/Base64Coder;->map1:[C

    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .restart local v4    # "i":I
    aput-char v2, v3, v1

    .line 43
    add-int/lit8 v1, v2, 0x1

    int-to-char v2, v1

    move v1, v4

    goto :goto_1

    .line 45
    .end local v2    # "c":C
    .end local v4    # "i":I
    .restart local v1    # "i":I
    :cond_1
    const/16 v2, 0x30

    .restart local v2    # "c":C
    :goto_2
    const/16 v3, 0x39

    if-gt v2, v3, :cond_2

    .line 46
    sget-object v3, Lorg/yaml/snakeyaml/external/biz/base64Coder/Base64Coder;->map1:[C

    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .restart local v4    # "i":I
    aput-char v2, v3, v1

    .line 45
    add-int/lit8 v1, v2, 0x1

    int-to-char v2, v1

    move v1, v4

    goto :goto_2

    .line 47
    .end local v2    # "c":C
    .end local v4    # "i":I
    .restart local v1    # "i":I
    :cond_2
    sget-object v2, Lorg/yaml/snakeyaml/external/biz/base64Coder/Base64Coder;->map1:[C

    add-int/lit8 v3, v1, 0x1

    .end local v1    # "i":I
    .local v3, "i":I
    const/16 v4, 0x2b

    aput-char v4, v2, v1

    .line 48
    sget-object v1, Lorg/yaml/snakeyaml/external/biz/base64Coder/Base64Coder;->map1:[C

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .local v2, "i":I
    const/16 v4, 0x2f

    aput-char v4, v1, v3

    .line 52
    .end local v2    # "i":I
    const/16 v1, 0x80

    new-array v1, v1, [B

    sput-object v1, Lorg/yaml/snakeyaml/external/biz/base64Coder/Base64Coder;->map2:[B

    .line 54
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    sget-object v2, Lorg/yaml/snakeyaml/external/biz/base64Coder/Base64Coder;->map2:[B

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 55
    sget-object v2, Lorg/yaml/snakeyaml/external/biz/base64Coder/Base64Coder;->map2:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 56
    .end local v1    # "i":I
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    if-ge v1, v0, :cond_4

    .line 57
    sget-object v2, Lorg/yaml/snakeyaml/external/biz/base64Coder/Base64Coder;->map2:[B

    sget-object v3, Lorg/yaml/snakeyaml/external/biz/base64Coder/Base64Coder;->map1:[C

    aget-char v3, v3, v1

    int-to-byte v4, v1

    aput-byte v4, v2, v3

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 58
    .end local v1    # "i":I
    :cond_4
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 232
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lorg/yaml/snakeyaml/external/biz/base64Coder/Base64Coder;->decode([C)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([C)[B
    .locals 2
    .param p0, "in"    # [C

    .line 246
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/yaml/snakeyaml/external/biz/base64Coder/Base64Coder;->decode([CII)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([CII)[B
    .locals 18
    .param p0, "in"    # [C
    .param p1, "iOff"    # I
    .param p2, "iLen"    # I

    .line 266
    rem-int/lit8 v0, p2, 0x4

    if-nez v0, :cond_8

    move/from16 v0, p2

    .line 269
    .end local p2    # "iLen":I
    .local v0, "iLen":I
    :goto_0
    if-lez v0, :cond_0

    add-int v1, p1, v0

    add-int/lit8 v1, v1, -0x1

    aget-char v1, p0, v1

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_0

    .line 270
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 271
    :cond_0
    mul-int/lit8 v1, v0, 0x3

    div-int/lit8 v1, v1, 0x4

    .line 272
    .local v1, "oLen":I
    new-array v2, v1, [B

    .line 273
    .local v2, "out":[B
    move/from16 v3, p1

    .line 274
    .local v3, "ip":I
    add-int v4, p1, v0

    .line 275
    .local v4, "iEnd":I
    const/4 v5, 0x0

    .line 276
    .local v5, "op":I
    :goto_1
    if-ge v3, v4, :cond_7

    .line 277
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "ip":I
    .local v6, "ip":I
    aget-char v3, p0, v3

    .line 278
    .local v3, "i0":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "ip":I
    .local v7, "ip":I
    aget-char v6, p0, v6

    .line 279
    .local v6, "i1":I
    const/16 v8, 0x41

    if-ge v7, v4, :cond_1

    add-int/lit8 v9, v7, 0x1

    .end local v7    # "ip":I
    .local v9, "ip":I
    aget-char v7, p0, v7

    goto :goto_2

    .end local v9    # "ip":I
    .restart local v7    # "ip":I
    :cond_1
    move v9, v7

    const/16 v7, 0x41

    .line 280
    .local v7, "i2":I
    .restart local v9    # "ip":I
    :goto_2
    if-ge v9, v4, :cond_2

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "ip":I
    .local v8, "ip":I
    aget-char v9, p0, v9

    goto :goto_3

    .end local v8    # "ip":I
    .restart local v9    # "ip":I
    :cond_2
    move v8, v9

    const/16 v9, 0x41

    .line 281
    .restart local v8    # "ip":I
    .local v9, "i3":I
    :goto_3
    const-string v10, "Illegal character in Base64 encoded data."

    const/16 v11, 0x7f

    if-gt v3, v11, :cond_6

    if-gt v6, v11, :cond_6

    if-gt v7, v11, :cond_6

    if-gt v9, v11, :cond_6

    .line 283
    sget-object v11, Lorg/yaml/snakeyaml/external/biz/base64Coder/Base64Coder;->map2:[B

    aget-byte v11, v11, v3

    .line 284
    .local v11, "b0":I
    sget-object v12, Lorg/yaml/snakeyaml/external/biz/base64Coder/Base64Coder;->map2:[B

    aget-byte v12, v12, v6

    .line 285
    .local v12, "b1":I
    sget-object v13, Lorg/yaml/snakeyaml/external/biz/base64Coder/Base64Coder;->map2:[B

    aget-byte v13, v13, v7

    .line 286
    .local v13, "b2":I
    sget-object v14, Lorg/yaml/snakeyaml/external/biz/base64Coder/Base64Coder;->map2:[B

    aget-byte v14, v14, v9

    .line 287
    .local v14, "b3":I
    if-ltz v11, :cond_5

    if-ltz v12, :cond_5

    if-ltz v13, :cond_5

    if-ltz v14, :cond_5

    .line 289
    shl-int/lit8 v10, v11, 0x2

    ushr-int/lit8 v15, v12, 0x4

    or-int/2addr v10, v15

    .line 290
    .local v10, "o0":I
    and-int/lit8 v15, v12, 0xf

    shl-int/lit8 v15, v15, 0x4

    ushr-int/lit8 v16, v13, 0x2

    or-int v15, v15, v16

    .line 291
    .local v15, "o1":I
    and-int/lit8 v16, v13, 0x3

    shl-int/lit8 v16, v16, 0x6

    move/from16 p2, v0

    .end local v0    # "iLen":I
    .restart local p2    # "iLen":I
    or-int v0, v16, v14

    .line 292
    .local v0, "o2":I
    move/from16 v16, v3

    .end local v3    # "i0":I
    .local v16, "i0":I
    add-int/lit8 v3, v5, 0x1

    move/from16 v17, v4

    .end local v4    # "iEnd":I
    .end local v5    # "op":I
    .local v3, "op":I
    .local v17, "iEnd":I
    int-to-byte v4, v10

    aput-byte v4, v2, v5

    .line 293
    if-ge v3, v1, :cond_3

    .line 294
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "op":I
    .local v4, "op":I
    int-to-byte v5, v15

    aput-byte v5, v2, v3

    move v3, v4

    .line 295
    .end local v4    # "op":I
    .restart local v3    # "op":I
    :cond_3
    if-ge v3, v1, :cond_4

    .line 296
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "op":I
    .restart local v4    # "op":I
    int-to-byte v5, v0

    aput-byte v5, v2, v3

    move v5, v4

    goto :goto_4

    .line 295
    .end local v4    # "op":I
    .restart local v3    # "op":I
    :cond_4
    move v5, v3

    .line 297
    .end local v0    # "o2":I
    .end local v3    # "op":I
    .end local v6    # "i1":I
    .end local v7    # "i2":I
    .end local v9    # "i3":I
    .end local v10    # "o0":I
    .end local v11    # "b0":I
    .end local v12    # "b1":I
    .end local v13    # "b2":I
    .end local v14    # "b3":I
    .end local v15    # "o1":I
    .end local v16    # "i0":I
    .restart local v5    # "op":I
    :goto_4
    move/from16 v0, p2

    move v3, v8

    move/from16 v4, v17

    goto :goto_1

    .line 287
    .end local v17    # "iEnd":I
    .end local p2    # "iLen":I
    .local v0, "iLen":I
    .local v3, "i0":I
    .local v4, "iEnd":I
    .restart local v6    # "i1":I
    .restart local v7    # "i2":I
    .restart local v9    # "i3":I
    .restart local v11    # "b0":I
    .restart local v12    # "b1":I
    .restart local v13    # "b2":I
    .restart local v14    # "b3":I
    :cond_5
    move/from16 p2, v0

    move/from16 v16, v3

    move/from16 v17, v4

    .line 288
    .end local v0    # "iLen":I
    .end local v3    # "i0":I
    .end local v4    # "iEnd":I
    .restart local v16    # "i0":I
    .restart local v17    # "iEnd":I
    .restart local p2    # "iLen":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    .end local v11    # "b0":I
    .end local v12    # "b1":I
    .end local v13    # "b2":I
    .end local v14    # "b3":I
    .end local v16    # "i0":I
    .end local v17    # "iEnd":I
    .end local p2    # "iLen":I
    .restart local v0    # "iLen":I
    .restart local v3    # "i0":I
    .restart local v4    # "iEnd":I
    :cond_6
    move/from16 p2, v0

    move/from16 v16, v3

    move/from16 v17, v4

    .line 282
    .end local v0    # "iLen":I
    .end local v3    # "i0":I
    .end local v4    # "iEnd":I
    .restart local v16    # "i0":I
    .restart local v17    # "iEnd":I
    .restart local p2    # "iLen":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 298
    .end local v6    # "i1":I
    .end local v7    # "i2":I
    .end local v8    # "ip":I
    .end local v9    # "i3":I
    .end local v16    # "i0":I
    .end local v17    # "iEnd":I
    .end local p2    # "iLen":I
    .restart local v0    # "iLen":I
    .local v3, "ip":I
    .restart local v4    # "iEnd":I
    :cond_7
    return-object v2

    .line 267
    .end local v0    # "iLen":I
    .end local v1    # "oLen":I
    .end local v2    # "out":[B
    .end local v3    # "ip":I
    .end local v4    # "iEnd":I
    .end local v5    # "op":I
    .restart local p2    # "iLen":I
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Length of Base64 encoded input string is not a multiple of 4."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static decodeLines(Ljava/lang/String;)[B
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .line 211
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [C

    .line 212
    .local v0, "buf":[C
    const/4 v1, 0x0

    .line 213
    .local v1, "p":I
    const/4 v2, 0x0

    .local v2, "ip":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 214
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 215
    .local v3, "c":C
    const/16 v4, 0x20

    if-eq v3, v4, :cond_0

    const/16 v4, 0xd

    if-eq v3, v4, :cond_0

    const/16 v4, 0xa

    if-eq v3, v4, :cond_0

    const/16 v4, 0x9

    if-eq v3, v4, :cond_0

    .line 216
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "p":I
    .local v4, "p":I
    aput-char v3, v0, v1

    move v1, v4

    .line 213
    .end local v3    # "c":C
    .end local v4    # "p":I
    .restart local v1    # "p":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 218
    .end local v2    # "ip":I
    :cond_1
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lorg/yaml/snakeyaml/external/biz/base64Coder/Base64Coder;->decode([CII)[B

    move-result-object v2

    return-object v2
.end method

.method public static decodeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .line 195
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lorg/yaml/snakeyaml/external/biz/base64Coder/Base64Coder;->decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static encode([B)[C
    .locals 2
    .param p0, "in"    # [B

    .line 129
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/yaml/snakeyaml/external/biz/base64Coder/Base64Coder;->encode([BII)[C

    move-result-object v0

    return-object v0
.end method

.method public static encode([BI)[C
    .locals 1
    .param p0, "in"    # [B
    .param p1, "iLen"    # I

    .line 143
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/yaml/snakeyaml/external/biz/base64Coder/Base64Coder;->encode([BII)[C

    move-result-object v0

    return-object v0
.end method

.method public static encode([BII)[C
    .locals 15
    .param p0, "in"    # [B
    .param p1, "iOff"    # I
    .param p2, "iLen"    # I

    .line 160
    mul-int/lit8 v0, p2, 0x4

    add-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    .line 161
    .local v0, "oDataLen":I
    add-int/lit8 v1, p2, 0x2

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x4

    .line 162
    .local v1, "oLen":I
    new-array v2, v1, [C

    .line 163
    .local v2, "out":[C
    move/from16 v3, p1

    .line 164
    .local v3, "ip":I
    add-int v4, p1, p2

    .line 165
    .local v4, "iEnd":I
    const/4 v5, 0x0

    .line 166
    .local v5, "op":I
    :goto_0
    if-ge v3, v4, :cond_4

    .line 167
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "ip":I
    .local v6, "ip":I
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    .line 168
    .local v3, "i0":I
    const/4 v7, 0x0

    if-ge v6, v4, :cond_0

    add-int/lit8 v8, v6, 0x1

    .end local v6    # "ip":I
    .local v8, "ip":I
    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    goto :goto_1

    .end local v8    # "ip":I
    .restart local v6    # "ip":I
    :cond_0
    move v8, v6

    const/4 v6, 0x0

    .line 169
    .local v6, "i1":I
    .restart local v8    # "ip":I
    :goto_1
    if-ge v8, v4, :cond_1

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "ip":I
    .local v7, "ip":I
    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    goto :goto_2

    .end local v7    # "ip":I
    .restart local v8    # "ip":I
    :cond_1
    move v7, v8

    const/4 v8, 0x0

    .line 170
    .restart local v7    # "ip":I
    .local v8, "i2":I
    :goto_2
    ushr-int/lit8 v9, v3, 0x2

    .line 171
    .local v9, "o0":I
    and-int/lit8 v10, v3, 0x3

    shl-int/lit8 v10, v10, 0x4

    ushr-int/lit8 v11, v6, 0x4

    or-int/2addr v10, v11

    .line 172
    .local v10, "o1":I
    and-int/lit8 v11, v6, 0xf

    shl-int/lit8 v11, v11, 0x2

    ushr-int/lit8 v12, v8, 0x6

    or-int/2addr v11, v12

    .line 173
    .local v11, "o2":I
    and-int/lit8 v12, v8, 0x3f

    .line 174
    .local v12, "o3":I
    add-int/lit8 v13, v5, 0x1

    .end local v5    # "op":I
    .local v13, "op":I
    sget-object v14, Lorg/yaml/snakeyaml/external/biz/base64Coder/Base64Coder;->map1:[C

    aget-char v14, v14, v9

    aput-char v14, v2, v5

    .line 175
    add-int/lit8 v5, v13, 0x1

    .end local v13    # "op":I
    .restart local v5    # "op":I
    sget-object v14, Lorg/yaml/snakeyaml/external/biz/base64Coder/Base64Coder;->map1:[C

    aget-char v14, v14, v10

    aput-char v14, v2, v13

    .line 176
    const/16 v13, 0x3d

    if-ge v5, v0, :cond_2

    sget-object v14, Lorg/yaml/snakeyaml/external/biz/base64Coder/Base64Coder;->map1:[C

    aget-char v14, v14, v11

    goto :goto_3

    :cond_2
    const/16 v14, 0x3d

    :goto_3
    aput-char v14, v2, v5

    .line 177
    add-int/lit8 v5, v5, 0x1

    .line 178
    if-ge v5, v0, :cond_3

    sget-object v13, Lorg/yaml/snakeyaml/external/biz/base64Coder/Base64Coder;->map1:[C

    aget-char v13, v13, v12

    :cond_3
    aput-char v13, v2, v5

    .line 179
    nop

    .end local v3    # "i0":I
    .end local v6    # "i1":I
    .end local v8    # "i2":I
    .end local v9    # "o0":I
    .end local v10    # "o1":I
    .end local v11    # "o2":I
    .end local v12    # "o3":I
    add-int/lit8 v5, v5, 0x1

    .line 180
    move v3, v7

    goto :goto_0

    .line 181
    .end local v7    # "ip":I
    .local v3, "ip":I
    :cond_4
    return-object v2
.end method

.method public static encodeLines([B)Ljava/lang/String;
    .locals 4
    .param p0, "in"    # [B

    .line 82
    array-length v0, p0

    const/16 v1, 0x4c

    sget-object v2, Lorg/yaml/snakeyaml/external/biz/base64Coder/Base64Coder;->systemLineSeparator:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p0, v3, v0, v1, v2}, Lorg/yaml/snakeyaml/external/biz/base64Coder/Base64Coder;->encodeLines([BIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeLines([BIIILjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "in"    # [B
    .param p1, "iOff"    # I
    .param p2, "iLen"    # I
    .param p3, "lineLen"    # I
    .param p4, "lineSeparator"    # Ljava/lang/String;

    .line 104
    mul-int/lit8 v0, p3, 0x3

    div-int/lit8 v0, v0, 0x4

    .line 105
    .local v0, "blockLen":I
    if-lez v0, :cond_1

    .line 107
    add-int v1, p2, v0

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v1, v0

    .line 108
    .local v1, "lines":I
    add-int/lit8 v2, p2, 0x2

    div-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    mul-int v3, v3, v1

    add-int/2addr v2, v3

    .line 109
    .local v2, "bufLen":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 110
    .local v3, "buf":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 111
    .local v4, "ip":I
    :goto_0
    if-ge v4, p2, :cond_0

    .line 112
    sub-int v5, p2, v4

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 113
    .local v5, "l":I
    add-int v6, p1, v4

    invoke-static {p0, v6, v5}, Lorg/yaml/snakeyaml/external/biz/base64Coder/Base64Coder;->encode([BII)[C

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    add-int/2addr v4, v5

    .line 116
    .end local v5    # "l":I
    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 106
    .end local v1    # "lines":I
    .end local v2    # "bufLen":I
    .end local v3    # "buf":Ljava/lang/StringBuilder;
    .end local v4    # "ip":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public static encodeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .line 69
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lorg/yaml/snakeyaml/external/biz/base64Coder/Base64Coder;->encode([B)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
