.class public Lorg/ini4j/spi/RegEscapeTool;
.super Lorg/ini4j/spi/EscapeTool;
.source "RegEscapeTool.java"


# static fields
.field private static final DIGIT_SIZE:I = 0x4

.field private static final HEX_CHARSET:Ljava/nio/charset/Charset;

.field private static final INSTANCE:Lorg/ini4j/spi/RegEscapeTool;

.field private static final LOWER_DIGIT:I = 0xf

.field private static final UPPER_DIGIT:I = 0xf0


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    const-class v0, Lorg/ini4j/spi/RegEscapeTool;

    invoke-static {v0}, Lorg/ini4j/spi/ServiceFinder;->findService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ini4j/spi/RegEscapeTool;

    sput-object v0, Lorg/ini4j/spi/RegEscapeTool;->INSTANCE:Lorg/ini4j/spi/RegEscapeTool;

    .line 31
    const-string v0, "UTF-16LE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/ini4j/spi/RegEscapeTool;->HEX_CHARSET:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Lorg/ini4j/spi/EscapeTool;-><init>()V

    .line 63
    return-void
.end method

.method private bytes2string([B)Ljava/lang/String;
    .registers 8
    .param p1, "bytes"    # [B

    .line 212
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    new-instance v2, Ljava/lang/String;

    array-length v3, p1

    add-int/lit8 v3, v3, -0x2

    sget-object v4, Lorg/ini4j/spi/RegEscapeTool;->HEX_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v2, p1, v0, v3, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V
    :try_end_c
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_c} :catch_e

    move-object v0, v2

    .line 224
    .local v0, "str":Ljava/lang/String;
    goto :goto_1d

    .line 214
    .end local v0    # "str":Ljava/lang/String;
    :catch_e
    move-exception v2

    .line 218
    .local v1, "str":Ljava/lang/String;
    .local v2, "x":Ljava/lang/NoSuchMethodError;
    :try_start_f
    new-instance v3, Ljava/lang/String;

    array-length v4, p1

    sget-object v5, Lorg/ini4j/spi/RegEscapeTool;->HEX_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p1, v0, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_f .. :try_end_1b} :catch_1e

    move-object v0, v3

    .line 223
    .end local v1    # "str":Ljava/lang/String;
    .restart local v0    # "str":Ljava/lang/String;
    nop

    .line 226
    .end local v2    # "x":Ljava/lang/NoSuchMethodError;
    :goto_1d
    return-object v0

    .line 220
    .end local v0    # "str":Ljava/lang/String;
    .restart local v1    # "str":Ljava/lang/String;
    .restart local v2    # "x":Ljava/lang/NoSuchMethodError;
    :catch_1e
    move-exception v0

    .line 222
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static final getInstance()Lorg/ini4j/spi/RegEscapeTool;
    .registers 1

    .line 38
    sget-object v0, Lorg/ini4j/spi/RegEscapeTool;->INSTANCE:Lorg/ini4j/spi/RegEscapeTool;

    return-object v0
.end method

.method private splitMulti(Ljava/lang/String;)[Ljava/lang/String;
    .registers 10
    .param p1, "value"    # Ljava/lang/String;

    .line 231
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 234
    .local v0, "len":I
    const/4 v1, 0x0

    .line 236
    .local v1, "n":I
    const/4 v2, 0x0

    .line 237
    .local v2, "start":I
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .local v4, "end":I
    :goto_b
    if-ltz v4, :cond_19

    .line 239
    add-int/lit8 v1, v1, 0x1

    .line 240
    add-int/lit8 v2, v4, 0x1

    .line 241
    if-lt v2, v0, :cond_14

    .line 243
    goto :goto_19

    .line 237
    :cond_14
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    goto :goto_b

    .line 247
    :cond_19
    :goto_19
    new-array v5, v1, [Ljava/lang/String;

    .line 249
    .local v5, "values":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 250
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1d
    if-ge v6, v1, :cond_2e

    .line 252
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 253
    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 254
    add-int/lit8 v2, v4, 0x1

    .line 250
    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    .line 257
    .end local v6    # "i":I
    :cond_2e
    return-object v5
.end method

.method private string2bytes(Ljava/lang/String;)[B
    .registers 6
    .param p1, "value"    # Ljava/lang/String;

    .line 267
    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lorg/ini4j/spi/RegEscapeTool;->HEX_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_7} :catch_8

    .line 279
    .local v0, "bytes":[B
    goto :goto_15

    .line 269
    .end local v0    # "bytes":[B
    :catch_8
    move-exception v1

    .line 273
    .restart local v0    # "bytes":[B
    .local v1, "x":Ljava/lang/NoSuchMethodError;
    :try_start_9
    sget-object v2, Lorg/ini4j/spi/RegEscapeTool;->HEX_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2
    :try_end_13
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_13} :catch_16

    move-object v0, v2

    .line 278
    nop

    .line 281
    .end local v1    # "x":Ljava/lang/NoSuchMethodError;
    :goto_15
    return-object v0

    .line 275
    .restart local v1    # "x":Ljava/lang/NoSuchMethodError;
    :catch_16
    move-exception v2

    .line 277
    .local v2, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method binary(Ljava/lang/String;)[B
    .registers 10
    .param p1, "value"    # Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [B

    .line 97
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .line 98
    .local v1, "idx":I
    const/4 v2, 0x4

    .line 100
    .local v2, "shift":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_36

    .line 102
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 104
    .local v4, "c":C
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 106
    goto :goto_33

    .line 109
    :cond_1a
    const/16 v5, 0x2c

    if-ne v4, v5, :cond_22

    .line 111
    add-int/lit8 v1, v1, 0x1

    .line 112
    const/4 v2, 0x4

    goto :goto_33

    .line 116
    :cond_22
    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    .line 118
    .local v5, "digit":I
    if-ltz v5, :cond_33

    .line 120
    aget-byte v6, v0, v1

    shl-int v7, v5, v2

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v0, v1

    .line 121
    const/4 v2, 0x0

    .line 100
    .end local v4    # "c":C
    .end local v5    # "digit":I
    :cond_33
    :goto_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 126
    .end local v3    # "i":I
    :cond_36
    add-int/lit8 v3, v1, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v4, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    return-object v3
.end method

.method public decode(Ljava/lang/String;)Lorg/ini4j/spi/TypeValuesPair;
    .registers 6
    .param p1, "raw"    # Ljava/lang/String;

    .line 43
    invoke-virtual {p0, p1}, Lorg/ini4j/spi/RegEscapeTool;->type(Ljava/lang/String;)Lorg/ini4j/Registry$Type;

    move-result-object v0

    .line 44
    .local v0, "type":Lorg/ini4j/Registry$Type;
    sget-object v1, Lorg/ini4j/Registry$Type;->REG_SZ:Lorg/ini4j/Registry$Type;

    if-ne v0, v1, :cond_d

    invoke-virtual {p0, p1}, Lorg/ini4j/spi/RegEscapeTool;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1b

    :cond_d
    invoke-virtual {v0}, Lorg/ini4j/Registry$Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "value":Ljava/lang/String;
    :goto_1b
    sget-object v2, Lorg/ini4j/spi/RegEscapeTool$1;->$SwitchMap$org$ini4j$Registry$Type:[I

    invoke-virtual {v0}, Lorg/ini4j/Registry$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_50

    goto :goto_3c

    .line 60
    :pswitch_27
    goto :goto_3c

    .line 56
    :pswitch_28
    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 57
    goto :goto_3c

    .line 52
    :pswitch_33
    invoke-virtual {p0, v1}, Lorg/ini4j/spi/RegEscapeTool;->binary(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/ini4j/spi/RegEscapeTool;->bytes2string([B)Ljava/lang/String;

    move-result-object v1

    .line 53
    nop

    .line 66
    :goto_3c
    sget-object v2, Lorg/ini4j/Registry$Type;->REG_MULTI_SZ:Lorg/ini4j/Registry$Type;

    if-ne v0, v2, :cond_45

    .line 68
    invoke-direct {p0, v1}, Lorg/ini4j/spi/RegEscapeTool;->splitMulti(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, "values":[Ljava/lang/String;
    goto :goto_49

    .line 72
    .end local v2    # "values":[Ljava/lang/String;
    :cond_45
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    .line 75
    .restart local v2    # "values":[Ljava/lang/String;
    :goto_49
    new-instance v3, Lorg/ini4j/spi/TypeValuesPair;

    invoke-direct {v3, v0, v2}, Lorg/ini4j/spi/TypeValuesPair;-><init>(Lorg/ini4j/Registry$Type;[Ljava/lang/String;)V

    return-object v3

    nop

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_33
        :pswitch_33
        :pswitch_28
        :pswitch_27
    .end packed-switch
.end method

.method encode(Lorg/ini4j/Registry$Type;[Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "type"    # Lorg/ini4j/Registry$Type;
    .param p2, "values"    # [Ljava/lang/String;

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .local v0, "buff":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lorg/ini4j/Registry$Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 135
    sget-object v1, Lorg/ini4j/spi/RegEscapeTool$1;->$SwitchMap$org$ini4j$Registry$Type:[I

    invoke-virtual {p1}, Lorg/ini4j/Registry$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_68

    const/4 v1, 0x0

    .line 159
    .local v1, "n":I
    aget-object v2, p2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_62

    .line 143
    .end local v1    # "n":I
    :pswitch_24
    aget-object v1, p2, v2

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    const-string v1, "%08x"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    goto :goto_62

    .line 147
    :pswitch_3d
    array-length v1, p2

    .line 149
    .restart local v1    # "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3f
    if-ge v2, v1, :cond_52

    .line 151
    aget-object v3, p2, v2

    invoke-virtual {p0, v3}, Lorg/ini4j/spi/RegEscapeTool;->hexadecimal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 149
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    .line 155
    .end local v2    # "i":I
    :cond_52
    const-string v2, "00,00"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    goto :goto_62

    .line 139
    .end local v1    # "n":I
    :pswitch_58
    aget-object v1, p2, v2

    invoke-virtual {p0, v1}, Lorg/ini4j/spi/RegEscapeTool;->hexadecimal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    nop

    .line 163
    :goto_62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_58
        :pswitch_3d
        :pswitch_24
    .end packed-switch
.end method

.method public encode(Lorg/ini4j/spi/TypeValuesPair;)Ljava/lang/String;
    .registers 6
    .param p1, "data"    # Lorg/ini4j/spi/TypeValuesPair;

    .line 80
    const/4 v0, 0x0

    .line 82
    .local v0, "ret":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/ini4j/spi/TypeValuesPair;->getType()Lorg/ini4j/Registry$Type;

    move-result-object v1

    sget-object v2, Lorg/ini4j/Registry$Type;->REG_SZ:Lorg/ini4j/Registry$Type;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_15

    .line 84
    invoke-virtual {p1}, Lorg/ini4j/spi/TypeValuesPair;->getValues()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-virtual {p0, v1}, Lorg/ini4j/spi/RegEscapeTool;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_29

    .line 86
    :cond_15
    invoke-virtual {p1}, Lorg/ini4j/spi/TypeValuesPair;->getValues()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    if-eqz v1, :cond_29

    .line 88
    invoke-virtual {p1}, Lorg/ini4j/spi/TypeValuesPair;->getType()Lorg/ini4j/Registry$Type;

    move-result-object v1

    invoke-virtual {p1}, Lorg/ini4j/spi/TypeValuesPair;->getValues()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/ini4j/spi/RegEscapeTool;->encode(Lorg/ini4j/Registry$Type;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    :cond_29
    :goto_29
    return-object v0
.end method

.method hexadecimal(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "value"    # Ljava/lang/String;

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .local v0, "buff":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_3c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3c

    .line 172
    invoke-direct {p0, p1}, Lorg/ini4j/spi/RegEscapeTool;->string2bytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 174
    .local v1, "bytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    array-length v3, v1

    if-ge v2, v3, :cond_37

    .line 176
    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 177
    aget-byte v3, v1, v2

    and-int/lit8 v3, v3, 0xf

    invoke-static {v3, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 178
    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 174
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 181
    .end local v2    # "i":I
    :cond_37
    const-string v2, "00,00"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .end local v1    # "bytes":[B
    :cond_3c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method type(Ljava/lang/String;)Lorg/ini4j/Registry$Type;
    .registers 5
    .param p1, "raw"    # Ljava/lang/String;

    .line 191
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x22

    if-ne v1, v2, :cond_c

    .line 193
    sget-object v0, Lorg/ini4j/Registry$Type;->REG_SZ:Lorg/ini4j/Registry$Type;

    .local v0, "type":Lorg/ini4j/Registry$Type;
    goto :goto_1f

    .line 197
    .end local v0    # "type":Lorg/ini4j/Registry$Type;
    :cond_c
    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 199
    .local v1, "idx":I
    if-gez v1, :cond_17

    sget-object v0, Lorg/ini4j/Registry$Type;->REG_SZ:Lorg/ini4j/Registry$Type;

    goto :goto_1f

    :cond_17
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/ini4j/Registry$Type;->fromString(Ljava/lang/String;)Lorg/ini4j/Registry$Type;

    move-result-object v0

    .line 202
    .end local v1    # "idx":I
    .restart local v0    # "type":Lorg/ini4j/Registry$Type;
    :goto_1f
    return-object v0
.end method
