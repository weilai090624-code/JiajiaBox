.class final Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"


# static fields
.field private static final ALPHANUMERIC_CHARS:[C

.field private static final GB2312_SUBSET:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 45
    nop

    .line 46
    const-string v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ $%*+-./:"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->ALPHANUMERIC_CHARS:[C

    .line 45
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method static decode([BLcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/google/zxing/qrcode/decoder/Version;",
            "Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/DecoderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 56
    move-object/from16 v0, p1

    new-instance v7, Lcom/google/zxing/common/BitSource;

    move-object/from16 v8, p0

    invoke-direct {v7, v8}, Lcom/google/zxing/common/BitSource;-><init>([B)V

    .line 57
    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 58
    new-instance v10, Ljava/util/ArrayList;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 59
    nop

    .line 60
    nop

    .line 63
    nop

    .line 64
    const/4 v12, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move-object/from16 v16, v12

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/4 v15, 0x0

    .line 68
    :goto_21
    :try_start_21
    invoke-virtual {v7}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_2c

    .line 70
    sget-object v1, Lcom/google/zxing/qrcode/decoder/Mode;->TERMINATOR:Lcom/google/zxing/qrcode/decoder/Mode;

    move-object v6, v1

    goto :goto_35

    .line 72
    :cond_2c
    invoke-virtual {v7, v2}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v1

    invoke-static {v1}, Lcom/google/zxing/qrcode/decoder/Mode;->forBits(I)Lcom/google/zxing/qrcode/decoder/Mode;

    move-result-object v1

    move-object v6, v1

    .line 74
    :goto_35
    sget-object v1, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$google$zxing$qrcode$decoder$Mode:[I

    invoke-virtual {v6}, Lcom/google/zxing/qrcode/decoder/Mode;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_ee

    .line 111
    invoke-virtual {v6, v0}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v1

    goto :goto_8f

    .line 102
    :pswitch_45
    invoke-virtual {v7, v2}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v1

    .line 103
    invoke-virtual {v6, v0}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v2

    invoke-virtual {v7, v2}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v2

    .line 104
    if-ne v1, v11, :cond_59

    .line 105
    invoke-static {v7, v9, v2}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeHanziSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V

    move-object v11, v6

    goto/16 :goto_be

    .line 104
    :cond_59
    move-object v11, v6

    goto/16 :goto_be

    .line 93
    :pswitch_5c
    invoke-static {v7}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->parseECIValue(Lcom/google/zxing/common/BitSource;)I

    move-result v1

    .line 94
    invoke-static {v1}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECIByValue(I)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v16

    .line 95
    if-eqz v16, :cond_69

    move-object v11, v6

    goto/16 :goto_be

    .line 96
    :cond_69
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 83
    :pswitch_6e
    invoke-virtual {v7}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v1

    const/16 v2, 0x10

    if-lt v1, v2, :cond_84

    .line 88
    const/16 v1, 0x8

    invoke-virtual {v7, v1}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v2

    .line 89
    invoke-virtual {v7, v1}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v1

    .line 90
    move v14, v1

    move v13, v2

    move-object v11, v6

    goto :goto_be

    .line 84
    :cond_84
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 80
    :pswitch_89
    nop

    .line 81
    move-object v11, v6

    const/4 v15, 0x1

    goto :goto_be

    .line 76
    :pswitch_8d
    move-object v11, v6

    goto :goto_be

    .line 111
    :goto_8f
    invoke-virtual {v7, v1}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v3

    .line 112
    sget-object v1, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$google$zxing$qrcode$decoder$Mode:[I

    invoke-virtual {v6}, Lcom/google/zxing/qrcode/decoder/Mode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_fe

    .line 126
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    goto :goto_e7

    .line 123
    :pswitch_a3
    invoke-static {v7, v9, v3}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeKanjiSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V

    .line 124
    move-object v11, v6

    goto :goto_be

    .line 120
    :pswitch_a8
    move-object v1, v7

    move-object v2, v9

    move-object/from16 v4, v16

    move-object v5, v10

    move-object v11, v6

    move-object/from16 v6, p3

    invoke-static/range {v1 .. v6}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeByteSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;ILcom/google/zxing/common/CharacterSetECI;Ljava/util/Collection;Ljava/util/Map;)V

    .line 121
    goto :goto_be

    .line 117
    :pswitch_b4
    move-object v11, v6

    invoke-static {v7, v9, v3, v15}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeAlphanumericSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;IZ)V

    .line 118
    goto :goto_be

    .line 114
    :pswitch_b9
    move-object v11, v6

    invoke-static {v7, v9, v3}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeNumericSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V

    .line 115
    nop

    .line 130
    :goto_be
    sget-object v1, Lcom/google/zxing/qrcode/decoder/Mode;->TERMINATOR:Lcom/google/zxing/qrcode/decoder/Mode;
    :try_end_c0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_c0} :catch_e8

    if-ne v11, v1, :cond_e4

    .line 134
    nop

    .line 136
    new-instance v7, Lcom/google/zxing/common/DecoderResult;

    .line 137
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 138
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d1

    move-object v3, v12

    goto :goto_d2

    :cond_d1
    move-object v3, v10

    :goto_d2
    if-nez p2, :cond_d6

    move-object v4, v12

    goto :goto_db

    .line 139
    :cond_d6
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    :goto_db
    move-object v0, v7

    move-object/from16 v1, p0

    move v5, v13

    move v6, v14

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;II)V

    .line 136
    return-object v7

    .line 130
    :cond_e4
    const/4 v11, 0x1

    goto/16 :goto_21

    .line 126
    :goto_e7
    :try_start_e7
    throw v0
    :try_end_e8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e7 .. :try_end_e8} :catch_e8

    .line 131
    :catch_e8
    move-exception v0

    .line 133
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :pswitch_data_ee
    .packed-switch 0x5
        :pswitch_8d
        :pswitch_89
        :pswitch_89
        :pswitch_6e
        :pswitch_5c
        :pswitch_45
    .end packed-switch

    :pswitch_data_fe
    .packed-switch 0x1
        :pswitch_b9
        :pswitch_b4
        :pswitch_a8
        :pswitch_a3
    .end packed-switch
.end method

.method private static decodeAlphanumericSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;IZ)V
    .registers 9
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .param p2, "count"    # I
    .param p3, "fc1InEffect"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 265
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 266
    .local v0, "start":I
    :goto_4
    const/4 v1, 0x1

    if-le p2, v1, :cond_2e

    .line 267
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v1

    const/16 v2, 0xb

    if-lt v1, v2, :cond_29

    .line 270
    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v1

    .line 271
    .local v1, "nextTwoCharsBits":I
    div-int/lit8 v2, v1, 0x2d

    invoke-static {v2}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 272
    rem-int/lit8 v2, v1, 0x2d

    invoke-static {v2}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 273
    nop

    .end local v1    # "nextTwoCharsBits":I
    add-int/lit8 p2, p2, -0x2

    .line 274
    goto :goto_4

    .line 268
    :cond_29
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 275
    :cond_2e
    if-ne p2, v1, :cond_48

    .line 277
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v2

    const/4 v3, 0x6

    if-lt v2, v3, :cond_43

    .line 280
    invoke-virtual {p0, v3}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_48

    .line 278
    :cond_43
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 283
    :cond_48
    :goto_48
    if-eqz p3, :cond_76

    .line 285
    move v2, v0

    .local v2, "i":I
    :goto_4b
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v2, v3, :cond_76

    .line 286
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x25

    if-ne v3, v4, :cond_73

    .line 287
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_6e

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_6e

    .line 289
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_73

    .line 292
    :cond_6e
    const/16 v3, 0x1d

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 285
    :cond_73
    :goto_73
    add-int/lit8 v2, v2, 0x1

    goto :goto_4b

    .line 297
    .end local v2    # "i":I
    :cond_76
    return-void
.end method

.method private static decodeByteSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;ILcom/google/zxing/common/CharacterSetECI;Ljava/util/Collection;Ljava/util/Map;)V
    .registers 9
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .param p2, "count"    # I
    .param p3, "currentCharacterSetECI"    # Lcom/google/zxing/common/CharacterSetECI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitSource;",
            "Ljava/lang/StringBuilder;",
            "I",
            "Lcom/google/zxing/common/CharacterSetECI;",
            "Ljava/util/Collection<",
            "[B>;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 226
    .local p4, "byteSegments":Ljava/util/Collection;, "Ljava/util/Collection<[B>;"
    .local p5, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    shl-int/lit8 v0, p2, 0x3

    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v1

    if-gt v0, v1, :cond_37

    .line 230
    new-array v0, p2, [B

    .line 231
    .local v0, "readBytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, p2, :cond_19

    .line 232
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 231
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 235
    .end local v1    # "i":I
    :cond_19
    if-nez p3, :cond_20

    .line 241
    invoke-static {v0, p5}, Lcom/google/zxing/common/StringUtils;->guessEncoding([BLjava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .local v1, "encoding":Ljava/lang/String;
    goto :goto_24

    .line 243
    .end local v1    # "encoding":Ljava/lang/String;
    :cond_20
    invoke-virtual {p3}, Lcom/google/zxing/common/CharacterSetECI;->name()Ljava/lang/String;

    move-result-object v1

    .line 246
    .restart local v1    # "encoding":Ljava/lang/String;
    :goto_24
    :try_start_24
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_24 .. :try_end_2c} :catch_31

    .line 249
    nop

    .line 250
    invoke-interface {p4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 251
    return-void

    .line 247
    :catch_31
    move-exception v2

    .line 248
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v2

    throw v2

    .line 227
    .end local v0    # "readBytes":[B
    .end local v1    # "encoding":Ljava/lang/String;
    :cond_37
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0
.end method

.method private static decodeHanziSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 151
    mul-int/lit8 v0, p2, 0xd

    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v1

    if-gt v0, v1, :cond_49

    .line 157
    mul-int/lit8 v0, p2, 0x2

    new-array v0, v0, [B

    .line 158
    const/4 v1, 0x0

    .line 159
    :goto_d
    if-lez p2, :cond_38

    .line 161
    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v2

    .line 162
    div-int/lit8 v3, v2, 0x60

    shl-int/lit8 v3, v3, 0x8

    rem-int/lit8 v2, v2, 0x60

    or-int/2addr v2, v3

    .line 163
    const/16 v3, 0x3bf

    if-ge v2, v3, :cond_25

    .line 165
    const v3, 0xa1a1

    add-int/2addr v2, v3

    goto :goto_29

    .line 168
    :cond_25
    const v3, 0xa6a1

    add-int/2addr v2, v3

    .line 170
    :goto_29
    shr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 171
    add-int/lit8 v3, v1, 0x1

    int-to-byte v2, v2

    aput-byte v2, v0, v3

    .line 172
    add-int/lit8 v1, v1, 0x2

    .line 173
    add-int/lit8 p2, p2, -0x1

    .line 174
    goto :goto_d

    .line 177
    :cond_38
    :try_start_38
    new-instance p0, Ljava/lang/String;

    const-string p2, "GB2312"

    invoke-direct {p0, v0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_42
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_38 .. :try_end_42} :catch_43

    .line 180
    return-void

    .line 178
    :catch_43
    move-exception p0

    .line 179
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 152
    :cond_49
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0
.end method

.method private static decodeKanjiSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 187
    mul-int/lit8 v0, p2, 0xd

    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v1

    if-gt v0, v1, :cond_49

    .line 193
    mul-int/lit8 v0, p2, 0x2

    new-array v0, v0, [B

    .line 194
    const/4 v1, 0x0

    .line 195
    :goto_d
    if-lez p2, :cond_38

    .line 197
    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v2

    .line 198
    div-int/lit16 v3, v2, 0xc0

    shl-int/lit8 v3, v3, 0x8

    rem-int/lit16 v2, v2, 0xc0

    or-int/2addr v2, v3

    .line 199
    const/16 v3, 0x1f00

    if-ge v2, v3, :cond_25

    .line 201
    const v3, 0x8140

    add-int/2addr v2, v3

    goto :goto_29

    .line 204
    :cond_25
    const v3, 0xc140

    add-int/2addr v2, v3

    .line 206
    :goto_29
    shr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 207
    add-int/lit8 v3, v1, 0x1

    int-to-byte v2, v2

    aput-byte v2, v0, v3

    .line 208
    add-int/lit8 v1, v1, 0x2

    .line 209
    add-int/lit8 p2, p2, -0x1

    .line 210
    goto :goto_d

    .line 213
    :cond_38
    :try_start_38
    new-instance p0, Ljava/lang/String;

    const-string p2, "SJIS"

    invoke-direct {p0, v0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_42
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_38 .. :try_end_42} :catch_43

    .line 216
    return-void

    .line 214
    :catch_43
    move-exception p0

    .line 215
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 188
    :cond_49
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0
.end method

.method private static decodeNumericSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 303
    nop

    :goto_1
    const/4 v0, 0x3

    const/16 v1, 0xa

    if-lt p2, v0, :cond_3d

    .line 305
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v0

    if-lt v0, v1, :cond_38

    .line 308
    invoke-virtual {p0, v1}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v0

    .line 309
    const/16 v2, 0x3e8

    if-ge v0, v2, :cond_33

    .line 312
    div-int/lit8 v2, v0, 0x64

    invoke-static {v2}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 313
    div-int/lit8 v2, v0, 0xa

    rem-int/2addr v2, v1

    invoke-static {v2}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 314
    rem-int/lit8 v0, v0, 0xa

    invoke-static {v0}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 315
    add-int/lit8 p2, p2, -0x3

    .line 316
    goto :goto_1

    .line 310
    :cond_33
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 306
    :cond_38
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 317
    :cond_3d
    const/4 v0, 0x2

    if-ne p2, v0, :cond_6b

    .line 319
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result p2

    const/4 v0, 0x7

    if-lt p2, v0, :cond_66

    .line 322
    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result p0

    .line 323
    const/16 p2, 0x64

    if-ge p0, p2, :cond_61

    .line 326
    div-int/lit8 p2, p0, 0xa

    invoke-static {p2}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 327
    rem-int/2addr p0, v1

    invoke-static {p0}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 328
    return-void

    .line 324
    :cond_61
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 320
    :cond_66
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 328
    :cond_6b
    const/4 v0, 0x1

    if-ne p2, v0, :cond_8d

    .line 330
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result p2

    const/4 v0, 0x4

    if-lt p2, v0, :cond_88

    .line 333
    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result p0

    .line 334
    if-ge p0, v1, :cond_83

    .line 337
    invoke-static {p0}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8d

    .line 335
    :cond_83
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 331
    :cond_88
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 339
    :cond_8d
    :goto_8d
    return-void
.end method

.method private static parseECIValue(Lcom/google/zxing/common/BitSource;)I
    .registers 5
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 342
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v1

    const/4 v2, 0x0

    .line 343
    .local v2, "firstByte":I
    move v2, v1

    const/16 v3, 0x80

    and-int/2addr v1, v3

    if-nez v1, :cond_10

    .line 345
    and-int/lit8 v0, v2, 0x7f

    return v0

    .line 347
    :cond_10
    and-int/lit16 v1, v2, 0xc0

    if-ne v1, v3, :cond_1e

    .line 349
    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v1

    .line 350
    .local v1, "secondByte":I
    and-int/lit8 v3, v2, 0x3f

    shl-int/lit8 v0, v3, 0x8

    or-int/2addr v0, v1

    return v0

    .line 352
    .end local v1    # "secondByte":I
    :cond_1e
    and-int/lit16 v0, v2, 0xe0

    const/16 v1, 0xc0

    if-ne v0, v1, :cond_30

    .line 354
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v1

    .line 355
    .local v1, "secondThirdBytes":I
    and-int/lit8 v3, v2, 0x1f

    shl-int/lit8 v0, v3, 0x10

    or-int/2addr v0, v1

    return v0

    .line 357
    .end local v1    # "secondThirdBytes":I
    :cond_30
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0
.end method

.method private static toAlphaNumericChar(I)C
    .registers 2
    .param p0, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 254
    sget-object v0, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->ALPHANUMERIC_CHARS:[C

    array-length v0, v0

    if-ge p0, v0, :cond_a

    .line 257
    sget-object v0, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->ALPHANUMERIC_CHARS:[C

    aget-char v0, v0, p0

    return v0

    .line 255
    :cond_a
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0
.end method
