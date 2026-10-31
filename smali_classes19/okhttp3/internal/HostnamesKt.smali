.class public final Lokhttp3/internal/HostnamesKt;
.super Ljava/lang/Object;
.source "hostnames.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a0\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0005H\u0002\u001a\"\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0002\u001a\u0010\u0010\u000c\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0002\u001a\u000c\u0010\r\u001a\u00020\u0001*\u00020\u0003H\u0002\u001a\u000c\u0010\u000e\u001a\u0004\u0018\u00010\u0003*\u00020\u0003\u00a8\u0006\u000f"
    }
    d2 = {
        "decodeIpv4Suffix",
        "",
        "input",
        "",
        "pos",
        "",
        "limit",
        "address",
        "",
        "addressOffset",
        "decodeIpv6",
        "Ljava/net/InetAddress;",
        "inet6AddressToAscii",
        "containsInvalidHostnameAsciiCodes",
        "toCanonicalHost",
        "okhttp"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private static final containsInvalidHostnameAsciiCodes(Ljava/lang/String;)Z
    .registers 13
    .param p0, "$this$containsInvalidHostnameAsciiCodes"    # Ljava/lang/String;

    .line 65
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_35

    const/4 v2, 0x0

    :cond_8
    move v3, v2

    .local v3, "i":I
    const/4 v4, 0x1

    add-int/2addr v2, v4

    .line 66
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 70
    .local v11, "c":C
    const/16 v5, 0x1f

    invoke-static {v11, v5}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v5

    if-lez v5, :cond_34

    const/16 v5, 0x7f

    invoke-static {v11, v5}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v5

    if-ltz v5, :cond_20

    goto :goto_34

    .line 76
    :cond_20
    const-string v5, " #%/:?@[\\]"

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v6, v11

    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_31

    .line 77
    return v4

    .line 65
    .end local v11    # "c":C
    :cond_31
    if-lt v2, v0, :cond_8

    goto :goto_35

    .line 71
    .restart local v11    # "c":C
    :cond_34
    :goto_34
    return v4

    .line 80
    .end local v3    # "i":I
    .end local v11    # "c":C
    :cond_35
    :goto_35
    return v1
.end method

.method private static final decodeIpv4Suffix(Ljava/lang/String;II[BI)Z
    .registers 13
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I
    .param p3, "address"    # [B
    .param p4, "addressOffset"    # I

    .line 159
    move v0, p4

    .line 161
    .local v0, "b":I
    move v1, p1

    .line 162
    .local v1, "i":I
    :goto_2
    const/4 v2, 0x0

    if-ge v1, p2, :cond_4d

    .line 163
    array-length v3, p3

    if-ne v0, v3, :cond_9

    return v2

    .line 166
    :cond_9
    if-eq v0, p4, :cond_16

    .line 167
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_14

    return v2

    .line 168
    :cond_14
    add-int/lit8 v1, v1, 0x1

    .line 172
    :cond_16
    const/4 v3, 0x0

    .line 173
    .local v3, "value":I
    move v4, v1

    .line 174
    .local v4, "groupOffset":I
    :goto_18
    if-ge v1, p2, :cond_41

    .line 175
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 176
    .local v5, "c":C
    const/16 v6, 0x30

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v7

    if-ltz v7, :cond_41

    const/16 v7, 0x39

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v7

    if-lez v7, :cond_2f

    goto :goto_41

    .line 177
    :cond_2f
    if-nez v3, :cond_34

    if-eq v4, v1, :cond_34

    return v2

    .line 178
    :cond_34
    mul-int/lit8 v7, v3, 0xa

    add-int/2addr v7, v5

    add-int/lit8 v3, v7, -0x30

    .line 179
    const/16 v6, 0xff

    if-le v3, v6, :cond_3e

    return v2

    .line 180
    :cond_3e
    add-int/lit8 v1, v1, 0x1

    .end local v5    # "c":C
    goto :goto_18

    .line 182
    :cond_41
    :goto_41
    sub-int v5, v1, v4

    .line 183
    .local v5, "groupLength":I
    if-nez v5, :cond_46

    return v2

    .line 186
    :cond_46
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "b":I
    .local v2, "b":I
    int-to-byte v6, v3

    aput-byte v6, p3, v0

    move v0, v2

    .end local v3    # "value":I
    .end local v4    # "groupOffset":I
    .end local v5    # "groupLength":I
    goto :goto_2

    .line 190
    .end local v2    # "b":I
    .restart local v0    # "b":I
    :cond_4d
    add-int/lit8 v3, p4, 0x4

    if-ne v0, v3, :cond_52

    const/4 v2, 0x1

    :cond_52
    return v2
.end method

.method private static final decodeIpv6(Ljava/lang/String;II)Ljava/net/InetAddress;
    .registers 16
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .line 85
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 86
    .local v0, "address":[B
    const/4 v1, 0x0

    .line 87
    .local v1, "b":I
    const/4 v2, -0x1

    .line 88
    .local v2, "compress":I
    const/4 v3, -0x1

    .line 90
    .local v3, "groupOffset":I
    move v4, p1

    move v10, v4

    .line 91
    .local v10, "i":I
    :goto_9
    const/4 v11, -0x1

    const/4 v12, 0x0

    if-ge v10, p2, :cond_89

    .line 92
    array-length v4, v0

    if-ne v1, v4, :cond_11

    return-object v12

    .line 95
    :cond_11
    add-int/lit8 v4, v10, 0x2

    if-gt v4, p2, :cond_2d

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v5, "::"

    const/4 v7, 0x0

    move-object v4, p0

    move v6, v10

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 97
    if-eq v2, v11, :cond_25

    return-object v12

    .line 98
    :cond_25
    add-int/lit8 v10, v10, 0x2

    .line 99
    add-int/lit8 v1, v1, 0x2

    .line 100
    move v2, v1

    .line 101
    if-ne v10, p2, :cond_59

    goto :goto_89

    .line 102
    :cond_2d
    if-eqz v1, :cond_59

    .line 104
    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v5, ":"

    const/4 v7, 0x0

    move-object v4, p0

    move v6, v10

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 105
    add-int/lit8 v10, v10, 0x1

    goto :goto_59

    .line 106
    :cond_3f
    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v5, "."

    const/4 v7, 0x0

    move-object v4, p0

    move v6, v10

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_58

    .line 108
    add-int/lit8 v4, v1, -0x2

    invoke-static {p0, v3, p2, v0, v4}, Lokhttp3/internal/HostnamesKt;->decodeIpv4Suffix(Ljava/lang/String;II[BI)Z

    move-result v4

    if-nez v4, :cond_55

    return-object v12

    .line 109
    :cond_55
    add-int/lit8 v1, v1, 0x2

    .line 110
    goto :goto_89

    .line 112
    :cond_58
    return-object v12

    .line 117
    :cond_59
    :goto_59
    const/4 v4, 0x0

    .line 118
    .local v4, "value":I
    move v3, v10

    .line 119
    :goto_5b
    if-ge v10, p2, :cond_6f

    .line 120
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lokhttp3/internal/Util;->parseHexDigit(C)I

    move-result v5

    .line 121
    .local v5, "hexDigit":I
    if-ne v5, v11, :cond_68

    goto :goto_6f

    .line 122
    :cond_68
    shl-int/lit8 v6, v4, 0x4

    add-int v4, v6, v5

    .line 123
    add-int/lit8 v10, v10, 0x1

    .end local v5    # "hexDigit":I
    goto :goto_5b

    .line 125
    :cond_6f
    :goto_6f
    sub-int v5, v10, v3

    .line 126
    .local v5, "groupLength":I
    if-eqz v5, :cond_88

    const/4 v6, 0x4

    if-le v5, v6, :cond_77

    goto :goto_88

    .line 129
    :cond_77
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "b":I
    .local v6, "b":I
    ushr-int/lit8 v7, v4, 0x8

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v0, v1

    .line 130
    add-int/lit8 v1, v6, 0x1

    .end local v6    # "b":I
    .restart local v1    # "b":I
    and-int/lit16 v7, v4, 0xff

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    .end local v4    # "value":I
    .end local v5    # "groupLength":I
    goto :goto_9

    .line 126
    .restart local v4    # "value":I
    .restart local v5    # "groupLength":I
    :cond_88
    :goto_88
    return-object v12

    .line 142
    .end local v4    # "value":I
    .end local v5    # "groupLength":I
    :cond_89
    :goto_89
    array-length v4, v0

    if-eq v1, v4, :cond_9f

    .line 143
    if-ne v2, v11, :cond_8f

    return-object v12

    .line 144
    :cond_8f
    array-length v4, v0

    sub-int v5, v1, v2

    sub-int/2addr v4, v5

    sub-int v5, v1, v2

    invoke-static {v0, v2, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    array-length v4, v0

    sub-int/2addr v4, v1

    add-int/2addr v4, v2

    const/4 v5, 0x0

    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 148
    :cond_9f
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v4

    return-object v4
.end method

.method private static final inet6AddressToAscii([B)Ljava/lang/String;
    .registers 9
    .param p0, "address"    # [B

    .line 198
    const/4 v0, 0x0

    .local v0, "longestRunOffset":I
    const/4 v0, -0x1

    .line 199
    const/4 v1, 0x0

    .line 200
    .local v1, "longestRunLength":I
    const/4 v2, 0x0

    .line 201
    .local v2, "$i$a$-run-HostnamesKt$inet6AddressToAscii$1":I
    const/4 v3, 0x0

    .line 202
    .local v3, "i":I
    :goto_5
    array-length v4, p0

    const/16 v5, 0x10

    if-ge v3, v4, :cond_27

    .line 203
    move v4, v3

    .line 204
    .local v4, "currentRunOffset":I
    :goto_b
    if-ge v3, v5, :cond_1a

    aget-byte v6, p0, v3

    if-nez v6, :cond_1a

    add-int/lit8 v6, v3, 0x1

    aget-byte v6, p0, v6

    if-nez v6, :cond_1a

    .line 205
    add-int/lit8 v3, v3, 0x2

    goto :goto_b

    .line 207
    :cond_1a
    sub-int v5, v3, v4

    .line 208
    .local v5, "currentRunLength":I
    if-le v5, v1, :cond_23

    const/4 v6, 0x4

    if-lt v5, v6, :cond_23

    .line 209
    move v0, v4

    .line 210
    move v1, v5

    .line 212
    :cond_23
    nop

    .end local v4    # "currentRunOffset":I
    .end local v5    # "currentRunLength":I
    add-int/lit8 v3, v3, 0x2

    goto :goto_5

    .line 214
    :cond_27
    nop

    .line 200
    .end local v2    # "$i$a$-run-HostnamesKt$inet6AddressToAscii$1":I
    .end local v3    # "i":I
    nop

    .line 217
    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    .line 218
    .local v2, "result":Lokio/Buffer;
    const/4 v3, 0x0

    .line 219
    .restart local v3    # "i":I
    :cond_2f
    :goto_2f
    array-length v4, p0

    if-ge v3, v4, :cond_60

    .line 220
    const/16 v4, 0x3a

    if-ne v3, v0, :cond_40

    .line 221
    invoke-virtual {v2, v4}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 222
    add-int/2addr v3, v1

    .line 223
    if-ne v3, v5, :cond_2f

    invoke-virtual {v2, v4}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_2f

    .line 225
    :cond_40
    if-lez v3, :cond_45

    invoke-virtual {v2, v4}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 226
    :cond_45
    aget-byte v4, p0, v3

    const/16 v6, 0xff

    invoke-static {v4, v6}, Lokhttp3/internal/Util;->and(BI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v7, v3, 0x1

    aget-byte v7, p0, v7

    invoke-static {v7, v6}, Lokhttp3/internal/Util;->and(BI)I

    move-result v6

    or-int/2addr v4, v6

    .line 227
    .local v4, "group":I
    int-to-long v6, v4

    invoke-virtual {v2, v6, v7}, Lokio/Buffer;->writeHexadecimalUnsignedLong(J)Lokio/Buffer;

    .line 228
    nop

    .end local v4    # "group":I
    add-int/lit8 v3, v3, 0x2

    goto :goto_2f

    .line 231
    :cond_60
    invoke-virtual {v2}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static final toCanonicalHost(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "$this$toCanonicalHost"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    move-object v0, p0

    .line 36
    .local v0, "host":Ljava/lang/String;
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, ":"

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_77

    .line 38
    const-string v1, "["

    invoke-static {v0, v1, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    const-string v1, "]"

    invoke-static {v0, v1, v3, v4, v5}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 39
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-static {v0, v2, v1}, Lokhttp3/internal/HostnamesKt;->decodeIpv6(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object v1

    goto :goto_39

    .line 41
    :cond_31
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v3, v1}, Lokhttp3/internal/HostnamesKt;->decodeIpv6(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object v1

    .line 38
    :goto_39
    if-nez v1, :cond_3c

    .line 42
    return-object v5

    .line 43
    .local v1, "inetAddress":Ljava/net/InetAddress;
    :cond_3c
    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    .line 44
    .local v2, "address":[B
    array-length v3, v2

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4f

    const-string v3, "address"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lokhttp3/internal/HostnamesKt;->inet6AddressToAscii([B)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 45
    :cond_4f
    array-length v3, v2

    const/4 v4, 0x4

    if-ne v3, v4, :cond_58

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 46
    :cond_58
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid IPv6 address: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x27

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 49
    .end local v1    # "inetAddress":Ljava/net/InetAddress;
    .end local v2    # "address":[B
    :cond_77
    nop

    .line 50
    :try_start_78
    invoke-static {v0}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "toASCII(host)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "US"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .local v1, "result":Ljava/lang/String;
    move-object v4, v1

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_9b

    const/4 v3, 0x1

    :cond_9b
    if-eqz v3, :cond_9e

    return-object v5

    .line 54
    :cond_9e
    invoke-static {v1}, Lokhttp3/internal/HostnamesKt;->containsInvalidHostnameAsciiCodes(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 55
    move-object v2, v5

    check-cast v2, Ljava/lang/String;
    :try_end_a7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_78 .. :try_end_a7} :catch_aa

    goto :goto_a9

    .line 57
    :cond_a8
    move-object v5, v1

    .line 54
    :goto_a9
    return-object v5

    .line 59
    .end local v1    # "result":Ljava/lang/String;
    :catch_aa
    move-exception v1

    .line 60
    .local v1, "_":Ljava/lang/IllegalArgumentException;
    return-object v5
.end method
