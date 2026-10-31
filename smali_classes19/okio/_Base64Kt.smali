.class public final Lokio/_Base64Kt;
.super Ljava/lang/Object;
.source "-Base64.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u001a\u000e\u0010\t\u001a\u0004\u0018\u00010\u0001*\u00020\nH\u0000\u001a\u0016\u0010\u000b\u001a\u00020\n*\u00020\u00012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0001H\u0000\"\u001c\u0010\u0000\u001a\u00020\u00018\u0000X\u0081\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0002\u0010\u0003\u001a\u0004\u0008\u0004\u0010\u0005\"\u001c\u0010\u0006\u001a\u00020\u00018\u0000X\u0081\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0007\u0010\u0003\u001a\u0004\u0008\u0008\u0010\u0005\u00a8\u0006\r"
    }
    d2 = {
        "BASE64",
        "",
        "getBASE64$annotations",
        "()V",
        "getBASE64",
        "()[B",
        "BASE64_URL_SAFE",
        "getBASE64_URL_SAFE$annotations",
        "getBASE64_URL_SAFE",
        "decodeBase64ToArray",
        "",
        "encodeBase64",
        "map",
        "okio"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final BASE64:[B

.field private static final BASE64_URL_SAFE:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 27
    sget-object v0, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v0, v1}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v0

    sput-object v0, Lokio/_Base64Kt;->BASE64:[B

    .line 30
    sget-object v0, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    invoke-virtual {v0, v1}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v0

    sput-object v0, Lokio/_Base64Kt;->BASE64_URL_SAFE:[B

    return-void
.end method

.method public static final decodeBase64ToArray(Ljava/lang/String;)[B
    .registers 18
    .param p0, "$this$decodeBase64ToArray"    # Ljava/lang/String;

    move-object/from16 v0, p0

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 35
    .local v1, "limit":I
    :goto_b
    const/16 v2, 0x9

    const/16 v3, 0x20

    const/16 v4, 0xd

    const/16 v5, 0xa

    if-lez v1, :cond_2b

    .line 36
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 37
    .local v6, "c":C
    const/16 v7, 0x3d

    if-eq v6, v7, :cond_28

    if-eq v6, v5, :cond_28

    if-eq v6, v4, :cond_28

    if-eq v6, v3, :cond_28

    if-eq v6, v2, :cond_28

    .line 38
    goto :goto_2b

    .line 40
    :cond_28
    add-int/lit8 v1, v1, -0x1

    .end local v6    # "c":C
    goto :goto_b

    .line 44
    :cond_2b
    :goto_2b
    int-to-long v6, v1

    const-wide/16 v8, 0x6

    mul-long v6, v6, v8

    const-wide/16 v8, 0x8

    div-long/2addr v6, v8

    long-to-int v7, v6

    new-array v6, v7, [B

    .line 45
    .local v6, "out":[B
    const/4 v7, 0x0

    .line 46
    .local v7, "outCount":I
    const/4 v8, 0x0

    .line 48
    .local v8, "inCount":I
    const/4 v9, 0x0

    .line 49
    .local v9, "word":I
    const/4 v10, 0x0

    if-lez v1, :cond_ba

    const/4 v12, 0x0

    :goto_3d
    move v13, v12

    .local v13, "pos":I
    const/4 v14, 0x1

    add-int/2addr v12, v14

    .line 50
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v15

    .local v15, "c":C
    const/16 v16, 0x0

    .line 53
    .local v16, "bits":I
    const/16 v11, 0x41

    if-gt v11, v15, :cond_50

    const/16 v11, 0x5a

    if-gt v15, v11, :cond_50

    const/4 v11, 0x1

    goto :goto_51

    :cond_50
    const/4 v11, 0x0

    :goto_51
    if-eqz v11, :cond_56

    .line 57
    add-int/lit8 v11, v15, -0x41

    .end local v16    # "bits":I
    .local v11, "bits":I
    goto :goto_97

    .line 58
    .end local v11    # "bits":I
    .restart local v16    # "bits":I
    :cond_56
    const/16 v11, 0x61

    if-gt v11, v15, :cond_60

    const/16 v11, 0x7a

    if-gt v15, v11, :cond_60

    const/4 v11, 0x1

    goto :goto_61

    :cond_60
    const/4 v11, 0x0

    :goto_61
    if-eqz v11, :cond_66

    .line 62
    add-int/lit8 v11, v15, -0x47

    .end local v16    # "bits":I
    .restart local v11    # "bits":I
    goto :goto_97

    .line 63
    .end local v11    # "bits":I
    .restart local v16    # "bits":I
    :cond_66
    const/16 v11, 0x30

    if-gt v11, v15, :cond_6f

    const/16 v11, 0x39

    if-gt v15, v11, :cond_6f

    goto :goto_70

    :cond_6f
    const/4 v14, 0x0

    :goto_70
    if-eqz v14, :cond_75

    .line 67
    add-int/lit8 v11, v15, 0x4

    .end local v16    # "bits":I
    .restart local v11    # "bits":I
    goto :goto_97

    .line 68
    .end local v11    # "bits":I
    .restart local v16    # "bits":I
    :cond_75
    const/16 v11, 0x2b

    if-eq v15, v11, :cond_95

    const/16 v11, 0x2d

    if-ne v15, v11, :cond_7e

    goto :goto_95

    .line 70
    :cond_7e
    const/16 v11, 0x2f

    if-eq v15, v11, :cond_92

    const/16 v11, 0x5f

    if-ne v15, v11, :cond_87

    goto :goto_92

    .line 72
    :cond_87
    if-eq v15, v5, :cond_91

    if-eq v15, v4, :cond_91

    if-eq v15, v3, :cond_91

    if-ne v15, v2, :cond_90

    goto :goto_91

    .line 75
    :cond_90
    return-object v10

    .line 73
    :cond_91
    :goto_91
    goto :goto_b4

    .line 71
    :cond_92
    :goto_92
    const/16 v11, 0x3f

    .end local v16    # "bits":I
    .restart local v11    # "bits":I
    goto :goto_97

    .line 69
    .end local v11    # "bits":I
    .restart local v16    # "bits":I
    :cond_95
    :goto_95
    const/16 v11, 0x3e

    .line 79
    .end local v16    # "bits":I
    .restart local v11    # "bits":I
    :goto_97
    shl-int/lit8 v14, v9, 0x6

    or-int v9, v14, v11

    .line 82
    add-int/lit8 v8, v8, 0x1

    .line 83
    rem-int/lit8 v14, v8, 0x4

    if-nez v14, :cond_b4

    .line 84
    add-int/lit8 v14, v7, 0x1

    .end local v7    # "outCount":I
    .local v14, "outCount":I
    shr-int/lit8 v2, v9, 0x10

    int-to-byte v2, v2

    aput-byte v2, v6, v7

    .line 85
    add-int/lit8 v2, v14, 0x1

    .end local v14    # "outCount":I
    .local v2, "outCount":I
    shr-int/lit8 v7, v9, 0x8

    int-to-byte v7, v7

    aput-byte v7, v6, v14

    .line 86
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "outCount":I
    .restart local v7    # "outCount":I
    int-to-byte v14, v9

    aput-byte v14, v6, v2

    .line 49
    .end local v11    # "bits":I
    .end local v15    # "c":C
    :cond_b4
    :goto_b4
    if-lt v12, v1, :cond_b7

    goto :goto_ba

    :cond_b7
    const/16 v2, 0x9

    goto :goto_3d

    .line 90
    .end local v13    # "pos":I
    :cond_ba
    :goto_ba
    rem-int/lit8 v2, v8, 0x4

    .line 91
    .local v2, "lastWordChars":I
    packed-switch v2, :pswitch_data_ec

    goto :goto_dd

    .line 103
    :pswitch_c0
    shl-int/lit8 v9, v9, 0x6

    .line 104
    add-int/lit8 v3, v7, 0x1

    .end local v7    # "outCount":I
    .local v3, "outCount":I
    shr-int/lit8 v4, v9, 0x10

    int-to-byte v4, v4

    aput-byte v4, v6, v7

    .line 105
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "outCount":I
    .restart local v7    # "outCount":I
    shr-int/lit8 v4, v9, 0x8

    int-to-byte v4, v4

    aput-byte v4, v6, v3

    goto :goto_dd

    .line 98
    :pswitch_d1
    shl-int/lit8 v9, v9, 0xc

    .line 99
    add-int/lit8 v3, v7, 0x1

    .end local v7    # "outCount":I
    .restart local v3    # "outCount":I
    shr-int/lit8 v4, v9, 0x10

    int-to-byte v4, v4

    aput-byte v4, v6, v7

    move v7, v3

    goto :goto_dd

    .line 94
    .end local v3    # "outCount":I
    .restart local v7    # "outCount":I
    :pswitch_dc
    return-object v10

    .line 110
    :goto_dd
    array-length v3, v6

    if-ne v7, v3, :cond_e1

    return-object v6

    .line 113
    :cond_e1
    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    const-string v4, "java.util.Arrays.copyOf(this, newSize)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v3

    nop

    :pswitch_data_ec
    .packed-switch 0x1
        :pswitch_dc
        :pswitch_d1
        :pswitch_c0
    .end packed-switch
.end method

.method public static final encodeBase64([B[B)Ljava/lang/String;
    .registers 13
    .param p0, "$this$encodeBase64"    # [B
    .param p1, "map"    # [B

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "map"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    array-length v0, p0

    add-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    .line 118
    .local v0, "length":I
    new-array v1, v0, [B

    .line 119
    .local v1, "out":[B
    const/4 v2, 0x0

    .line 120
    .local v2, "index":I
    array-length v3, p0

    array-length v4, p0

    rem-int/lit8 v4, v4, 0x3

    sub-int/2addr v3, v4

    .line 121
    .local v3, "end":I
    const/4 v4, 0x0

    .line 122
    .local v4, "i":I
    :goto_1a
    if-ge v4, v3, :cond_5a

    .line 123
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .local v5, "i":I
    aget-byte v4, p0, v4

    .line 124
    .local v4, "b0":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .local v6, "i":I
    aget-byte v5, p0, v5

    .line 125
    .local v5, "b1":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .local v7, "i":I
    aget-byte v6, p0, v6

    .line 126
    .local v6, "b2":I
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "index":I
    .local v8, "index":I
    and-int/lit16 v9, v4, 0xff

    shr-int/lit8 v9, v9, 0x2

    aget-byte v9, p1, v9

    aput-byte v9, v1, v2

    .line 127
    add-int/lit8 v2, v8, 0x1

    .end local v8    # "index":I
    .restart local v2    # "index":I
    and-int/lit8 v9, v4, 0x3

    shl-int/lit8 v9, v9, 0x4

    and-int/lit16 v10, v5, 0xff

    shr-int/lit8 v10, v10, 0x4

    or-int/2addr v9, v10

    aget-byte v9, p1, v9

    aput-byte v9, v1, v8

    .line 128
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "index":I
    .restart local v8    # "index":I
    and-int/lit8 v9, v5, 0xf

    shl-int/lit8 v9, v9, 0x2

    and-int/lit16 v10, v6, 0xff

    shr-int/lit8 v10, v10, 0x6

    or-int/2addr v9, v10

    aget-byte v9, p1, v9

    aput-byte v9, v1, v2

    .line 129
    add-int/lit8 v2, v8, 0x1

    .end local v8    # "index":I
    .restart local v2    # "index":I
    and-int/lit8 v9, v6, 0x3f

    aget-byte v9, p1, v9

    aput-byte v9, v1, v8

    move v4, v7

    .end local v4    # "b0":I
    .end local v5    # "b1":I
    .end local v6    # "b2":I
    goto :goto_1a

    .line 131
    .end local v7    # "i":I
    .local v4, "i":I
    :cond_5a
    array-length v5, p0

    sub-int/2addr v5, v3

    const/16 v6, 0x3d

    packed-switch v5, :pswitch_data_b4

    goto :goto_af

    .line 140
    :pswitch_62
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .local v5, "i":I
    aget-byte v4, p0, v4

    .line 141
    .local v4, "b0":I
    aget-byte v7, p0, v5

    .line 142
    .local v7, "b1":I
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "index":I
    .restart local v8    # "index":I
    and-int/lit16 v9, v4, 0xff

    shr-int/lit8 v9, v9, 0x2

    aget-byte v9, p1, v9

    aput-byte v9, v1, v2

    .line 143
    add-int/lit8 v2, v8, 0x1

    .end local v8    # "index":I
    .restart local v2    # "index":I
    and-int/lit8 v9, v4, 0x3

    shl-int/lit8 v9, v9, 0x4

    and-int/lit16 v10, v7, 0xff

    shr-int/lit8 v10, v10, 0x4

    or-int/2addr v9, v10

    aget-byte v9, p1, v9

    aput-byte v9, v1, v8

    .line 144
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "index":I
    .restart local v8    # "index":I
    and-int/lit8 v9, v7, 0xf

    shl-int/lit8 v9, v9, 0x2

    aget-byte v9, p1, v9

    aput-byte v9, v1, v2

    .line 145
    int-to-byte v2, v6

    aput-byte v2, v1, v8

    move v4, v5

    move v2, v8

    goto :goto_af

    .line 133
    .end local v5    # "i":I
    .end local v7    # "b1":I
    .end local v8    # "index":I
    .restart local v2    # "index":I
    .local v4, "i":I
    :pswitch_91
    aget-byte v5, p0, v4

    .line 134
    .local v5, "b0":I
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "index":I
    .local v7, "index":I
    and-int/lit16 v8, v5, 0xff

    shr-int/lit8 v8, v8, 0x2

    aget-byte v8, p1, v8

    aput-byte v8, v1, v2

    .line 135
    add-int/lit8 v2, v7, 0x1

    .end local v7    # "index":I
    .restart local v2    # "index":I
    and-int/lit8 v8, v5, 0x3

    shl-int/lit8 v8, v8, 0x4

    aget-byte v8, p1, v8

    aput-byte v8, v1, v7

    .line 136
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "index":I
    .restart local v7    # "index":I
    int-to-byte v6, v6

    aput-byte v6, v1, v2

    .line 137
    aput-byte v6, v1, v7

    move v2, v7

    .line 148
    .end local v5    # "b0":I
    .end local v7    # "index":I
    .restart local v2    # "index":I
    :goto_af
    invoke-static {v1}, Lokio/_JvmPlatformKt;->toUtf8String([B)Ljava/lang/String;

    move-result-object v5

    return-object v5

    :pswitch_data_b4
    .packed-switch 0x1
        :pswitch_91
        :pswitch_62
    .end packed-switch
.end method

.method public static synthetic encodeBase64$default([B[BILjava/lang/Object;)Ljava/lang/String;
    .registers 4

    .line 116
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    sget-object p1, Lokio/_Base64Kt;->BASE64:[B

    :cond_6
    invoke-static {p0, p1}, Lokio/_Base64Kt;->encodeBase64([B[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getBASE64()[B
    .registers 1

    .line 26
    sget-object v0, Lokio/_Base64Kt;->BASE64:[B

    return-object v0
.end method

.method public static synthetic getBASE64$annotations()V
    .registers 0

    return-void
.end method

.method public static final getBASE64_URL_SAFE()[B
    .registers 1

    .line 29
    sget-object v0, Lokio/_Base64Kt;->BASE64_URL_SAFE:[B

    return-object v0
.end method

.method public static synthetic getBASE64_URL_SAFE$annotations()V
    .registers 0

    return-void
.end method
