.class final Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;
    }
.end annotation


# static fields
.field private static final C40_BASIC_SET_CHARS:[C

.field private static final C40_SHIFT2_SET_CHARS:[C

.field private static final TEXT_BASIC_SET_CHARS:[C

.field private static final TEXT_SHIFT2_SET_CHARS:[C

.field private static final TEXT_SHIFT3_SET_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 53
    const/16 v0, 0x28

    new-array v1, v0, [C

    fill-array-data v1, :array_28

    sput-object v1, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_BASIC_SET_CHARS:[C

    .line 59
    const/16 v1, 0x1b

    new-array v1, v1, [C

    fill-array-data v1, :array_54

    sput-object v1, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_SHIFT2_SET_CHARS:[C

    .line 68
    new-array v0, v0, [C

    fill-array-data v0, :array_74

    sput-object v0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_BASIC_SET_CHARS:[C

    .line 75
    sget-object v0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_SHIFT2_SET_CHARS:[C

    sput-object v0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_SHIFT2_SET_CHARS:[C

    .line 77
    const/16 v0, 0x20

    new-array v0, v0, [C

    fill-array-data v0, :array_a0

    sput-object v0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_SHIFT3_SET_CHARS:[C

    return-void

    nop

    :array_28
    .array-data 2
        0x2as
        0x2as
        0x2as
        0x20s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
    .end array-data

    :array_54
    .array-data 2
        0x21s
        0x22s
        0x23s
        0x24s
        0x25s
        0x26s
        0x27s
        0x28s
        0x29s
        0x2as
        0x2bs
        0x2cs
        0x2ds
        0x2es
        0x2fs
        0x3as
        0x3bs
        0x3cs
        0x3ds
        0x3es
        0x3fs
        0x40s
        0x5bs
        0x5cs
        0x5ds
        0x5es
        0x5fs
    .end array-data

    nop

    :array_74
    .array-data 2
        0x2as
        0x2as
        0x2as
        0x20s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
    .end array-data

    :array_a0
    .array-data 2
        0x60s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x7bs
        0x7cs
        0x7ds
        0x7es
        0x7fs
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    return-void
.end method

.method static decode([B)Lcom/google/zxing/common/DecoderResult;
    .registers 10
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 86
    new-instance v0, Lcom/google/zxing/common/BitSource;

    invoke-direct {v0, p0}, Lcom/google/zxing/common/BitSource;-><init>([B)V

    .line 87
    .local v0, "bits":Lcom/google/zxing/common/BitSource;
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 88
    .local v1, "result":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 89
    .local v2, "resultTrailer":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 90
    .local v3, "byteSegments":Ljava/util/List;, "Ljava/util/List<[B>;"
    sget-object v4, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ASCII_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    .line 92
    .local v4, "mode":Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;
    :cond_1a
    sget-object v5, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ASCII_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    if-ne v4, v5, :cond_23

    .line 93
    invoke-static {v0, v1, v2}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeAsciiSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    move-result-object v4

    goto :goto_49

    .line 95
    :cond_23
    sget-object v5, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$google$zxing$datamatrix$decoder$DecodedBitStreamParser$Mode:[I

    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_70

    .line 112
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v5

    throw v5

    .line 109
    :pswitch_33
    invoke-static {v0, v1, v3}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeBase256Segment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;Ljava/util/Collection;)V

    .line 110
    goto :goto_47

    .line 106
    :pswitch_37
    invoke-static {v0, v1}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeEdifactSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;)V

    .line 107
    goto :goto_47

    .line 103
    :pswitch_3b
    invoke-static {v0, v1}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeAnsiX12Segment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;)V

    .line 104
    goto :goto_47

    .line 100
    :pswitch_3f
    invoke-static {v0, v1}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeTextSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;)V

    .line 101
    goto :goto_47

    .line 97
    :pswitch_43
    invoke-static {v0, v1}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeC40Segment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;)V

    .line 98
    nop

    .line 114
    :goto_47
    sget-object v4, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ASCII_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    .line 116
    :goto_49
    sget-object v5, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->PAD_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    if-eq v4, v5, :cond_53

    invoke-virtual {v0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v5

    if-gtz v5, :cond_1a

    .line 117
    :cond_53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_5c

    .line 118
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 120
    :cond_5c
    new-instance v5, Lcom/google/zxing/common/DecoderResult;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_6b

    move-object v7, v8

    goto :goto_6c

    :cond_6b
    move-object v7, v3

    :goto_6c
    invoke-direct {v5, p0, v6, v7, v8}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v5

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_43
        :pswitch_3f
        :pswitch_3b
        :pswitch_37
        :pswitch_33
    .end packed-switch
.end method

.method private static decodeAnsiX12Segment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;)V
    .registers 9
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 391
    const/4 v0, 0x3

    new-array v1, v0, [I

    .local v1, "cValues":[I
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 394
    :cond_5
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_e

    .line 395
    return-void

    .line 397
    :cond_e
    invoke-virtual {p0, v5}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v4

    .line 398
    .local v2, "firstByte":I
    move v2, v4

    const/16 v6, 0xfe

    if-ne v4, v6, :cond_18

    .line 399
    return-void

    .line 402
    :cond_18
    invoke-virtual {p0, v5}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v4

    invoke-static {v2, v4, v1}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->parseTwoBytes(II[I)V

    .line 404
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_20
    if-ge v4, v0, :cond_5d

    .line 405
    aget v5, v1, v4

    .line 406
    .local v3, "cValue":I
    move v3, v5

    packed-switch v5, :pswitch_data_64

    .line 420
    const/16 v5, 0xe

    if-ge v3, v5, :cond_4b

    .line 421
    add-int/lit8 v5, v3, 0x2c

    int-to-char v5, v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_55

    .line 417
    :pswitch_33
    const/16 v5, 0x20

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 418
    goto :goto_55

    .line 414
    :pswitch_39
    const/16 v5, 0x3e

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 415
    goto :goto_55

    .line 411
    :pswitch_3f
    const/16 v5, 0x2a

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 412
    goto :goto_55

    .line 408
    :pswitch_45
    const/16 v5, 0xd

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 409
    goto :goto_55

    .line 422
    :cond_4b
    const/16 v5, 0x28

    if-ge v3, v5, :cond_58

    .line 423
    add-int/lit8 v5, v3, 0x33

    int-to-char v5, v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 404
    .end local v3    # "cValue":I
    :goto_55
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 425
    :cond_58
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 430
    .end local v2    # "firstByte":I
    .end local v4    # "i":I
    :cond_5d
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v4

    if-gtz v4, :cond_5

    .line 431
    return-void

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_45
        :pswitch_3f
        :pswitch_39
        :pswitch_33
    .end packed-switch
.end method

.method private static decodeAsciiSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;
    .registers 9
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .param p2, "resultTrailer"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 129
    const/4 v0, 0x0

    .local v0, "upperShift":Z
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 131
    :cond_3
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v3

    .line 132
    .local v1, "oneByte":I
    move v1, v3

    if-eqz v3, :cond_82

    .line 134
    const/16 v3, 0x80

    if-gt v1, v3, :cond_1d

    .line 135
    if-eqz v0, :cond_14

    .line 136
    add-int/lit16 v1, v1, 0x80

    .line 139
    :cond_14
    add-int/lit8 v2, v1, -0x1

    int-to-char v2, v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 140
    sget-object v2, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ASCII_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    return-object v2

    .line 141
    :cond_1d
    const/16 v3, 0x81

    if-ne v1, v3, :cond_24

    .line 142
    sget-object v2, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->PAD_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    return-object v2

    .line 143
    :cond_24
    const/16 v3, 0xe5

    if-gt v1, v3, :cond_38

    .line 144
    add-int/lit16 v3, v1, -0x82

    .line 145
    .local v2, "value":I
    move v2, v3

    const/16 v4, 0xa

    if-ge v3, v4, :cond_34

    .line 146
    const/16 v3, 0x30

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 148
    :cond_34
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    .end local v2    # "value":I
    goto :goto_74

    .line 150
    :cond_38
    const-string v3, "\u001e\u0004"

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_88

    .line 188
    const/16 v3, 0xfe

    if-ne v1, v3, :cond_7d

    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v3

    if-nez v3, :cond_7d

    goto :goto_74

    .line 184
    :pswitch_49
    goto :goto_74

    .line 179
    :pswitch_4a
    sget-object v2, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->EDIFACT_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    return-object v2

    .line 177
    :pswitch_4d
    sget-object v2, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->TEXT_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    return-object v2

    .line 175
    :pswitch_50
    sget-object v2, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ANSIX12_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    return-object v2

    .line 171
    :pswitch_53
    const-string v5, "[)>\u001e06\u001d"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {p2, v4, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    goto :goto_74

    .line 167
    :pswitch_5c
    const-string v5, "[)>\u001e05\u001d"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {p2, v4, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    goto :goto_74

    .line 164
    :pswitch_65
    const/4 v0, 0x1

    .line 165
    goto :goto_74

    .line 162
    :pswitch_67
    goto :goto_74

    .line 156
    :pswitch_68
    const/16 v3, 0x1d

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 157
    goto :goto_74

    .line 154
    :pswitch_6e
    sget-object v2, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->BASE256_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    return-object v2

    .line 152
    :pswitch_71
    sget-object v2, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->C40_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    return-object v2

    .line 194
    .end local v1    # "oneByte":I
    :goto_74
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v3

    if-gtz v3, :cond_3

    .line 195
    sget-object v1, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ASCII_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    return-object v1

    .line 189
    :cond_7d
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v2

    throw v2

    .line 133
    .restart local v1    # "oneByte":I
    :cond_82
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v2

    throw v2

    nop

    :pswitch_data_88
    .packed-switch 0xe6
        :pswitch_71
        :pswitch_6e
        :pswitch_68
        :pswitch_67
        :pswitch_67
        :pswitch_65
        :pswitch_5c
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_49
    .end packed-switch
.end method

.method private static decodeBase256Segment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;Ljava/util/Collection;)V
    .registers 11
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitSource;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Collection<",
            "[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 482
    .local p2, "byteSegments":Ljava/util/Collection;, "Ljava/util/Collection<[B>;"
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->getByteOffset()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 483
    .local v0, "codewordPosition":I
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v2

    add-int/lit8 v3, v0, 0x1

    .end local v0    # "codewordPosition":I
    .local v3, "codewordPosition":I
    invoke-static {v2, v0}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->unrandomize255State(II)I

    move-result v0

    const/4 v2, 0x0

    .line 485
    .local v2, "d1":I
    move v2, v0

    if-nez v0, :cond_1c

    .line 486
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v0

    div-int/2addr v0, v1

    .local v0, "count":I
    goto :goto_32

    .line 487
    .end local v0    # "count":I
    :cond_1c
    const/16 v0, 0xfa

    if-ge v2, v0, :cond_22

    .line 488
    move v0, v2

    .restart local v0    # "count":I
    goto :goto_32

    .line 490
    .end local v0    # "count":I
    :cond_22
    add-int/lit16 v4, v2, -0xf9

    mul-int/lit16 v4, v4, 0xfa

    invoke-virtual {p0, v1}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v0

    add-int/lit8 v5, v3, 0x1

    .end local v3    # "codewordPosition":I
    .local v5, "codewordPosition":I
    invoke-static {v0, v3}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->unrandomize255State(II)I

    move-result v0

    add-int/2addr v0, v4

    move v3, v5

    .line 494
    .end local v5    # "codewordPosition":I
    .restart local v0    # "count":I
    .restart local v3    # "codewordPosition":I
    :goto_32
    if-ltz v0, :cond_74

    .line 498
    new-array v4, v0, [B

    .line 499
    .local v4, "bytes":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_37
    if-ge v5, v0, :cond_55

    .line 502
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v6

    if-lt v6, v1, :cond_50

    .line 505
    invoke-virtual {p0, v1}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v6

    add-int/lit8 v7, v3, 0x1

    .end local v3    # "codewordPosition":I
    .local v7, "codewordPosition":I
    invoke-static {v6, v3}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->unrandomize255State(II)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v4, v5

    .line 499
    add-int/lit8 v5, v5, 0x1

    move v3, v7

    goto :goto_37

    .line 503
    .end local v7    # "codewordPosition":I
    .restart local v3    # "codewordPosition":I
    :cond_50
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 507
    .end local v5    # "i":I
    :cond_55
    invoke-interface {p2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 509
    :try_start_58
    new-instance v1, Ljava/lang/String;

    const-string v5, "ISO8859_1"

    invoke-direct {v1, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_62
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_58 .. :try_end_62} :catch_63

    .line 512
    return-void

    .line 510
    :catch_63
    move-exception v1

    .line 511
    .local v1, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Platform does not support required encoding: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 495
    .end local v1    # "uee":Ljava/io/UnsupportedEncodingException;
    .end local v4    # "bytes":[B
    :cond_74
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1
.end method

.method private static decodeC40Segment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;)V
    .registers 11
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 205
    const/4 v0, 0x0

    .line 207
    .local v0, "upperShift":Z
    const/4 v1, 0x3

    new-array v2, v1, [I

    .line 208
    .local v2, "cValues":[I
    const/4 v3, 0x0

    .local v3, "shift":I
    const/4 v4, 0x0

    .line 212
    :cond_6
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_f

    .line 213
    return-void

    .line 215
    :cond_f
    invoke-virtual {p0, v6}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v5

    .line 216
    .local v4, "firstByte":I
    move v4, v5

    const/16 v7, 0xfe

    if-ne v5, v7, :cond_19

    .line 217
    return-void

    .line 220
    :cond_19
    invoke-virtual {p0, v6}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v5

    invoke-static {v4, v5, v2}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->parseTwoBytes(II[I)V

    .line 222
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_21
    if-ge v5, v1, :cond_9c

    .line 223
    aget v6, v2, v5

    .line 224
    .local v6, "cValue":I
    packed-switch v3, :pswitch_data_a4

    .line 282
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 273
    :pswitch_2d
    if-eqz v0, :cond_37

    .line 274
    add-int/lit16 v7, v6, 0xe0

    int-to-char v7, v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 275
    const/4 v0, 0x0

    goto :goto_3d

    .line 277
    :cond_37
    add-int/lit8 v7, v6, 0x60

    int-to-char v7, v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 279
    :goto_3d
    const/4 v3, 0x0

    .line 280
    goto :goto_94

    .line 250
    :pswitch_3f
    sget-object v7, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_SHIFT2_SET_CHARS:[C

    array-length v7, v7

    if-ge v6, v7, :cond_56

    .line 251
    sget-object v7, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_SHIFT2_SET_CHARS:[C

    aget-char v7, v7, v6

    .line 252
    .local v7, "c40char":C
    if-eqz v0, :cond_52

    .line 253
    add-int/lit16 v8, v7, 0x80

    int-to-char v8, v8

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 254
    const/4 v0, 0x0

    goto :goto_66

    .line 256
    :cond_52
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 258
    .end local v7    # "c40char":C
    goto :goto_66

    .line 259
    :cond_56
    sparse-switch v6, :sswitch_data_b0

    .line 267
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 264
    :sswitch_5e
    const/4 v0, 0x1

    .line 265
    goto :goto_66

    .line 261
    :sswitch_60
    const/16 v7, 0x1d

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 262
    nop

    .line 270
    :goto_66
    const/4 v3, 0x0

    .line 271
    goto :goto_94

    .line 241
    :pswitch_68
    if-eqz v0, :cond_72

    .line 242
    add-int/lit16 v7, v6, 0x80

    int-to-char v7, v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 243
    const/4 v0, 0x0

    goto :goto_76

    .line 245
    :cond_72
    int-to-char v7, v6

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 247
    :goto_76
    const/4 v3, 0x0

    .line 248
    goto :goto_94

    .line 226
    :pswitch_78
    if-ge v6, v1, :cond_7d

    .line 227
    add-int/lit8 v3, v6, 0x1

    goto :goto_94

    .line 228
    :cond_7d
    sget-object v7, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_BASIC_SET_CHARS:[C

    array-length v7, v7

    if-ge v6, v7, :cond_97

    .line 229
    sget-object v7, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_BASIC_SET_CHARS:[C

    aget-char v7, v7, v6

    .line 230
    .restart local v7    # "c40char":C
    if-eqz v0, :cond_90

    .line 231
    add-int/lit16 v8, v7, 0x80

    int-to-char v8, v8

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 232
    const/4 v0, 0x0

    goto :goto_94

    .line 234
    :cond_90
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 236
    .end local v7    # "c40char":C
    nop

    .line 222
    .end local v6    # "cValue":I
    :goto_94
    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    .line 237
    .restart local v6    # "cValue":I
    :cond_97
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 285
    .end local v4    # "firstByte":I
    .end local v5    # "i":I
    .end local v6    # "cValue":I
    :cond_9c
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v5

    if-gtz v5, :cond_6

    .line 286
    return-void

    nop

    :pswitch_data_a4
    .packed-switch 0x0
        :pswitch_78
        :pswitch_68
        :pswitch_3f
        :pswitch_2d
    .end packed-switch

    :sswitch_data_b0
    .sparse-switch
        0x1b -> :sswitch_60
        0x1e -> :sswitch_5e
    .end sparse-switch
.end method

.method private static decodeEdifactSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;)V
    .registers 7
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Ljava/lang/StringBuilder;

    .line 449
    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_2
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v2

    const/16 v3, 0x10

    if-gt v2, v3, :cond_b

    .line 450
    return-void

    .line 453
    :cond_b
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    const/4 v3, 0x4

    if-ge v2, v3, :cond_35

    .line 454
    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v3

    .line 457
    .local v1, "edifactValue":I
    move v1, v3

    const/16 v4, 0x1f

    if-ne v3, v4, :cond_28

    .line 459
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->getBitOffset()I

    move-result v3

    const/16 v4, 0x8

    rsub-int/lit8 v3, v3, 0x8

    .line 460
    .local v0, "bitsLeft":I
    move v0, v3

    if-eq v3, v4, :cond_27

    .line 461
    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    .line 463
    :cond_27
    return-void

    .line 466
    .end local v0    # "bitsLeft":I
    :cond_28
    and-int/lit8 v3, v1, 0x20

    if-nez v3, :cond_2e

    .line 467
    or-int/lit8 v1, v1, 0x40

    .line 469
    :cond_2e
    int-to-char v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 453
    .end local v1    # "edifactValue":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 471
    .end local v2    # "i":I
    :cond_35
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v2

    if-gtz v2, :cond_2

    .line 472
    return-void
.end method

.method private static decodeTextSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;)V
    .registers 11
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 295
    const/4 v0, 0x0

    .line 297
    .local v0, "upperShift":Z
    const/4 v1, 0x3

    new-array v2, v1, [I

    .line 298
    .local v2, "cValues":[I
    const/4 v3, 0x0

    .local v3, "shift":I
    const/4 v4, 0x0

    .line 301
    :cond_6
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_f

    .line 302
    return-void

    .line 304
    :cond_f
    invoke-virtual {p0, v6}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v5

    .line 305
    .local v4, "firstByte":I
    move v4, v5

    const/16 v7, 0xfe

    if-ne v5, v7, :cond_19

    .line 306
    return-void

    .line 309
    :cond_19
    invoke-virtual {p0, v6}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v5

    invoke-static {v4, v5, v2}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->parseTwoBytes(II[I)V

    .line 311
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_21
    if-ge v5, v1, :cond_a8

    .line 312
    aget v6, v2, v5

    .line 313
    .local v6, "cValue":I
    packed-switch v3, :pswitch_data_b0

    .line 377
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 363
    :pswitch_2d
    sget-object v7, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_SHIFT3_SET_CHARS:[C

    array-length v7, v7

    if-ge v6, v7, :cond_45

    .line 364
    sget-object v7, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_SHIFT3_SET_CHARS:[C

    aget-char v7, v7, v6

    .line 365
    .local v7, "textChar":C
    if-eqz v0, :cond_40

    .line 366
    add-int/lit16 v8, v7, 0x80

    int-to-char v8, v8

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 367
    const/4 v0, 0x0

    goto :goto_43

    .line 369
    :cond_40
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 371
    :goto_43
    const/4 v3, 0x0

    .line 372
    .end local v7    # "textChar":C
    goto :goto_9f

    .line 373
    :cond_45
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 340
    :pswitch_4a
    sget-object v7, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_SHIFT2_SET_CHARS:[C

    array-length v7, v7

    if-ge v6, v7, :cond_61

    .line 341
    sget-object v7, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_SHIFT2_SET_CHARS:[C

    aget-char v7, v7, v6

    .line 342
    .restart local v7    # "textChar":C
    if-eqz v0, :cond_5d

    .line 343
    add-int/lit16 v8, v7, 0x80

    int-to-char v8, v8

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 344
    const/4 v0, 0x0

    goto :goto_71

    .line 346
    :cond_5d
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 348
    .end local v7    # "textChar":C
    goto :goto_71

    .line 349
    :cond_61
    sparse-switch v6, :sswitch_data_bc

    .line 357
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 354
    :sswitch_69
    const/4 v0, 0x1

    .line 355
    goto :goto_71

    .line 351
    :sswitch_6b
    const/16 v7, 0x1d

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 352
    nop

    .line 360
    :goto_71
    const/4 v3, 0x0

    .line 361
    goto :goto_9f

    .line 330
    :pswitch_73
    if-eqz v0, :cond_7d

    .line 331
    add-int/lit16 v7, v6, 0x80

    int-to-char v7, v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 332
    const/4 v0, 0x0

    goto :goto_81

    .line 334
    :cond_7d
    int-to-char v7, v6

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 336
    :goto_81
    const/4 v3, 0x0

    .line 337
    goto :goto_9f

    .line 315
    :pswitch_83
    if-ge v6, v1, :cond_88

    .line 316
    add-int/lit8 v3, v6, 0x1

    goto :goto_9f

    .line 317
    :cond_88
    sget-object v7, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_BASIC_SET_CHARS:[C

    array-length v7, v7

    if-ge v6, v7, :cond_a3

    .line 318
    sget-object v7, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_BASIC_SET_CHARS:[C

    aget-char v7, v7, v6

    .line 319
    .restart local v7    # "textChar":C
    if-eqz v0, :cond_9b

    .line 320
    add-int/lit16 v8, v7, 0x80

    int-to-char v8, v8

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 321
    const/4 v0, 0x0

    goto :goto_9f

    .line 323
    :cond_9b
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 325
    .end local v7    # "textChar":C
    nop

    .line 311
    .end local v6    # "cValue":I
    :goto_9f
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_21

    .line 326
    .restart local v6    # "cValue":I
    :cond_a3
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 380
    .end local v4    # "firstByte":I
    .end local v5    # "i":I
    .end local v6    # "cValue":I
    :cond_a8
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v5

    if-gtz v5, :cond_6

    .line 381
    return-void

    nop

    :pswitch_data_b0
    .packed-switch 0x0
        :pswitch_83
        :pswitch_73
        :pswitch_4a
        :pswitch_2d
    .end packed-switch

    :sswitch_data_bc
    .sparse-switch
        0x1b -> :sswitch_6b
        0x1e -> :sswitch_69
    .end sparse-switch
.end method

.method private static parseTwoBytes(II[I)V
    .registers 7
    .param p0, "firstByte"    # I
    .param p1, "secondByte"    # I
    .param p2, "result"    # [I

    .line 434
    shl-int/lit8 v0, p0, 0x8

    add-int/2addr v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    .line 435
    .local v2, "fullBitValue":I
    move v2, v0

    div-int/lit16 v0, v0, 0x640

    .line 436
    .local v0, "temp":I
    const/4 v3, 0x0

    aput v0, p2, v3

    .line 437
    mul-int/lit16 v3, v0, 0x640

    sub-int v3, v2, v3

    .line 438
    move v2, v3

    div-int/lit8 v3, v3, 0x28

    .line 439
    .end local v0    # "temp":I
    .local v3, "temp":I
    aput v3, p2, v1

    .line 440
    mul-int/lit8 v0, v3, 0x28

    sub-int v0, v2, v0

    const/4 v1, 0x2

    aput v0, p2, v1

    .line 441
    return-void
.end method

.method private static unrandomize255State(II)I
    .registers 5
    .param p0, "randomizedBase256Codeword"    # I
    .param p1, "base256CodewordPosition"    # I

    .line 520
    mul-int/lit16 v0, p1, 0x95

    rem-int/lit16 v0, v0, 0xff

    add-int/lit8 v0, v0, 0x1

    .line 521
    .local v0, "pseudoRandomNumber":I
    sub-int v1, p0, v0

    const/4 v2, 0x0

    .line 522
    .local v2, "tempVariable":I
    move v2, v1

    if-ltz v1, :cond_d

    return v2

    :cond_d
    add-int/lit16 v1, v2, 0x100

    return v1
.end method
