.class public final Lcom/google/common/net/InetAddresses;
.super Ljava/lang/Object;
.source "InetAddresses.java"


# annotations
.annotation runtime Lcom/google/common/net/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/net/InetAddresses$TeredoInfo;
    }
.end annotation


# static fields
.field private static final ANY4:Ljava/net/Inet4Address;

.field private static final IPV4_DELIMITER:C = '.'

.field private static final IPV4_DELIMITER_MATCHER:Lcom/google/common/base/CharMatcher;

.field private static final IPV4_PART_COUNT:I = 0x4

.field private static final IPV6_DELIMITER:C = ':'

.field private static final IPV6_DELIMITER_MATCHER:Lcom/google/common/base/CharMatcher;

.field private static final IPV6_PART_COUNT:I = 0x8

.field private static final LOOPBACK4:Ljava/net/Inet4Address;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 106
    const/16 v0, 0x2e

    invoke-static {v0}, Lcom/google/common/base/CharMatcher;->is(C)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/InetAddresses;->IPV4_DELIMITER_MATCHER:Lcom/google/common/base/CharMatcher;

    .line 107
    const/16 v0, 0x3a

    invoke-static {v0}, Lcom/google/common/base/CharMatcher;->is(C)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/InetAddresses;->IPV6_DELIMITER_MATCHER:Lcom/google/common/base/CharMatcher;

    .line 108
    const-string v0, "127.0.0.1"

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->forString(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    sput-object v0, Lcom/google/common/net/InetAddresses;->LOOPBACK4:Ljava/net/Inet4Address;

    .line 109
    const-string v0, "0.0.0.0"

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->forString(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    sput-object v0, Lcom/google/common/net/InetAddresses;->ANY4:Ljava/net/Inet4Address;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/net/Inet4Address;
    .registers 1

    .line 101
    sget-object v0, Lcom/google/common/net/InetAddresses;->ANY4:Ljava/net/Inet4Address;

    return-object v0
.end method

.method private static bytesToInetAddress([B)Ljava/net/InetAddress;
    .registers 3
    .param p0, "addr"    # [B

    .line 385
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 386
    :catch_5
    move-exception v0

    .line 387
    .local v0, "e":Ljava/net/UnknownHostException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static coerceToInteger(Ljava/net/InetAddress;)I
    .registers 2
    .param p0, "ip"    # Ljava/net/InetAddress;

    .line 979
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->getCoercedIPv4Address(Ljava/net/InetAddress;)Ljava/net/Inet4Address;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/io/ByteStreams;->newDataInput([B)Lcom/google/common/io/ByteArrayDataInput;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/io/ByteArrayDataInput;->readInt()I

    move-result v0

    return v0
.end method

.method private static compressLongestRunOfZeroes([I)V
    .registers 6
    .param p0, "hextets"    # [I

    .line 431
    const/4 v0, -0x1

    .line 432
    .local v0, "bestRunStart":I
    const/4 v1, -0x1

    .line 433
    .local v1, "bestRunLength":I
    const/4 v2, -0x1

    .line 434
    .local v2, "runStart":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    array-length v4, p0

    add-int/lit8 v4, v4, 0x1

    if-ge v3, v4, :cond_20

    .line 435
    array-length v4, p0

    if-ge v3, v4, :cond_14

    aget v4, p0, v3

    if-nez v4, :cond_14

    .line 436
    if-gez v2, :cond_1d

    .line 437
    move v2, v3

    goto :goto_1d

    .line 439
    :cond_14
    if-ltz v2, :cond_1d

    .line 440
    sub-int v4, v3, v2

    .line 441
    .local v4, "runLength":I
    if-le v4, v1, :cond_1c

    .line 442
    move v0, v2

    .line 443
    move v1, v4

    .line 445
    :cond_1c
    const/4 v2, -0x1

    .line 434
    .end local v4    # "runLength":I
    :cond_1d
    :goto_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 448
    .end local v3    # "i":I
    :cond_20
    const/4 v3, 0x2

    if-lt v1, v3, :cond_29

    .line 449
    add-int v3, v0, v1

    const/4 v4, -0x1

    invoke-static {p0, v0, v3, v4}, Ljava/util/Arrays;->fill([IIII)V

    .line 451
    :cond_29
    return-void
.end method

.method private static convertDottedQuadToHex(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "ipString"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 319
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 320
    .local v0, "lastColon":I
    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 321
    .local v1, "initialPart":Ljava/lang/String;
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 322
    .local v3, "dottedQuad":Ljava/lang/String;
    invoke-static {v3}, Lcom/google/common/net/InetAddresses;->textToNumericFormatV4(Ljava/lang/String;)[B

    move-result-object v4

    .line 323
    .local v4, "quad":[B
    if-nez v4, :cond_1b

    .line 324
    const/4 v2, 0x0

    return-object v2

    .line 326
    :cond_1b
    aget-byte v2, v4, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    const/4 v5, 0x1

    aget-byte v6, v4, v5

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 327
    .local v2, "penultimate":Ljava/lang/String;
    const/4 v6, 0x2

    aget-byte v6, v4, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    const/4 v7, 0x3

    aget-byte v7, v4, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 328
    .local v6, "ultimate":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v7, v5

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v7, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static decrement(Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .registers 6
    .param p0, "address"    # Ljava/net/InetAddress;

    .line 1098
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 1099
    .local v0, "addr":[B
    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 1100
    .local v1, "i":I
    :goto_7
    if-ltz v1, :cond_13

    aget-byte v3, v0, v1

    if-nez v3, :cond_13

    .line 1101
    const/4 v3, -0x1

    aput-byte v3, v0, v1

    .line 1102
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 1105
    :cond_13
    if-ltz v1, :cond_17

    const/4 v3, 0x1

    goto :goto_18

    :cond_17
    const/4 v3, 0x0

    :goto_18
    const-string v4, "Decrementing %s would wrap."

    invoke-static {v3, v4, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 1107
    aget-byte v3, v0, v1

    sub-int/2addr v3, v2

    int-to-byte v2, v3

    aput-byte v2, v0, v1

    .line 1108
    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->bytesToInetAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    return-object v2
.end method

.method public static forString(Ljava/lang/String;)Ljava/net/InetAddress;
    .registers 4
    .param p0, "ipString"    # Ljava/lang/String;

    .line 148
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->ipStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 151
    .local v0, "addr":[B
    if-eqz v0, :cond_b

    .line 155
    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->bytesToInetAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    return-object v1

    .line 152
    :cond_b
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string v2, "\'%s\' is not an IP string literal."

    invoke-static {v2, v1}, Lcom/google/common/net/InetAddresses;->formatIllegalArgumentException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public static forUriString(Ljava/lang/String;)Ljava/net/InetAddress;
    .registers 4
    .param p0, "hostAddr"    # Ljava/lang/String;

    .line 531
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->forUriStringNoThrow(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 532
    .local v0, "addr":Ljava/net/InetAddress;
    if-eqz v0, :cond_7

    .line 536
    return-object v0

    .line 533
    :cond_7
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string v2, "Not a valid URI IP literal: \'%s\'"

    invoke-static {v2, v1}, Lcom/google/common/net/InetAddresses;->formatIllegalArgumentException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method private static forUriStringNoThrow(Ljava/lang/String;)Ljava/net/InetAddress;
    .registers 5
    .param p0, "hostAddr"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 541
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 547
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 548
    .local v0, "ipString":Ljava/lang/String;
    const/16 v1, 0x10

    .local v1, "expectBytes":I
    goto :goto_22

    .line 550
    .end local v0    # "ipString":Ljava/lang/String;
    .end local v1    # "expectBytes":I
    :cond_20
    move-object v0, p0

    .line 551
    .restart local v0    # "ipString":Ljava/lang/String;
    const/4 v1, 0x4

    .line 555
    .restart local v1    # "expectBytes":I
    :goto_22
    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->ipStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 556
    .local v2, "addr":[B
    if-eqz v2, :cond_31

    array-length v3, v2

    if-eq v3, v1, :cond_2c

    goto :goto_31

    .line 560
    :cond_2c
    invoke-static {v2}, Lcom/google/common/net/InetAddresses;->bytesToInetAddress([B)Ljava/net/InetAddress;

    move-result-object v3

    return-object v3

    .line 557
    :cond_31
    :goto_31
    const/4 v3, 0x0

    return-object v3
.end method

.method private static varargs formatIllegalArgumentException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .registers 4
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 1154
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v1, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static fromBigInteger(Ljava/math/BigInteger;Z)Ljava/net/InetAddress;
    .registers 13
    .param p0, "address"    # Ljava/math/BigInteger;
    .param p1, "isIpv6"    # Z

    .line 1039
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    const-string v3, "BigInteger must be greater than or equal to 0"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1041
    if-eqz p1, :cond_15

    const/16 v0, 0x10

    goto :goto_16

    :cond_15
    const/4 v0, 0x4

    .line 1043
    .local v0, "numBytes":I
    :goto_16
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    .line 1044
    .local v3, "addressBytes":[B
    new-array v4, v0, [B

    .line 1046
    .local v4, "targetCopyArray":[B
    array-length v5, v3

    sub-int/2addr v5, v0

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1047
    .local v5, "srcPos":I
    array-length v6, v3

    sub-int/2addr v6, v5

    .line 1048
    .local v6, "copyLength":I
    sub-int v7, v0, v6

    .line 1051
    .local v7, "destPos":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_27
    if-ge v8, v5, :cond_43

    .line 1052
    aget-byte v9, v3, v8

    if-nez v9, :cond_30

    .line 1051
    add-int/lit8 v8, v8, 0x1

    goto :goto_27

    .line 1053
    :cond_30
    nop

    .line 1056
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v9, v10, v2

    aput-object p0, v10, v1

    .line 1053
    const-string v1, "BigInteger cannot be converted to InetAddress because it has more than %d bytes: %s"

    invoke-static {v1, v10}, Lcom/google/common/net/InetAddresses;->formatIllegalArgumentException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1

    .line 1061
    .end local v8    # "i":I
    :cond_43
    invoke-static {v3, v5, v4, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1064
    :try_start_46
    invoke-static {v4}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1
    :try_end_4a
    .catch Ljava/net/UnknownHostException; {:try_start_46 .. :try_end_4a} :catch_4b

    return-object v1

    .line 1065
    :catch_4b
    move-exception v1

    .line 1066
    .local v1, "impossible":Ljava/net/UnknownHostException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public static fromIPv4BigInteger(Ljava/math/BigInteger;)Ljava/net/Inet4Address;
    .registers 2
    .param p0, "address"    # Ljava/math/BigInteger;

    .line 1014
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/common/net/InetAddresses;->fromBigInteger(Ljava/math/BigInteger;Z)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    return-object v0
.end method

.method public static fromIPv6BigInteger(Ljava/math/BigInteger;)Ljava/net/Inet6Address;
    .registers 2
    .param p0, "address"    # Ljava/math/BigInteger;

    .line 1025
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/common/net/InetAddresses;->fromBigInteger(Ljava/math/BigInteger;Z)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet6Address;

    return-object v0
.end method

.method public static fromInteger(I)Ljava/net/Inet4Address;
    .registers 2
    .param p0, "address"    # I

    .line 1002
    invoke-static {p0}, Lcom/google/common/primitives/Ints;->toByteArray(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0
.end method

.method public static fromLittleEndianByteArray([B)Ljava/net/InetAddress;
    .registers 4
    .param p0, "addr"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 1081
    array-length v0, p0

    new-array v0, v0, [B

    .line 1082
    .local v0, "reversed":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_12

    .line 1083
    array-length v2, p0

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, p0, v2

    aput-byte v2, v0, v1

    .line 1082
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1085
    .end local v1    # "i":I
    :cond_12
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    return-object v1
.end method

.method public static get6to4IPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;
    .registers 4
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .line 652
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->is6to4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    const-string v1, "Address \'%s\' is not a 6to4 address."

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 654
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0
.end method

.method public static getCoercedIPv4Address(Ljava/net/InetAddress;)Ljava/net/Inet4Address;
    .registers 9
    .param p0, "ip"    # Ljava/net/InetAddress;

    .line 917
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_8

    .line 918
    move-object v0, p0

    check-cast v0, Ljava/net/Inet4Address;

    return-object v0

    .line 922
    :cond_8
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 923
    .local v0, "bytes":[B
    const/4 v1, 0x1

    .line 924
    .local v1, "leadingBytesOfZero":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    const/16 v3, 0xf

    if-ge v2, v3, :cond_1b

    .line 925
    aget-byte v4, v0, v2

    if-eqz v4, :cond_18

    .line 926
    const/4 v1, 0x0

    .line 927
    goto :goto_1b

    .line 924
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 930
    .end local v2    # "i":I
    :cond_1b
    :goto_1b
    if-eqz v1, :cond_25

    aget-byte v2, v0, v3

    const/4 v4, 0x1

    if-ne v2, v4, :cond_25

    .line 931
    sget-object v2, Lcom/google/common/net/InetAddresses;->LOOPBACK4:Ljava/net/Inet4Address;

    return-object v2

    .line 932
    :cond_25
    if-eqz v1, :cond_2e

    aget-byte v2, v0, v3

    if-nez v2, :cond_2e

    .line 933
    sget-object v2, Lcom/google/common/net/InetAddresses;->ANY4:Ljava/net/Inet4Address;

    return-object v2

    .line 936
    :cond_2e
    move-object v2, p0

    check-cast v2, Ljava/net/Inet6Address;

    .line 937
    .local v2, "ip6":Ljava/net/Inet6Address;
    const-wide/16 v3, 0x0

    .line 938
    .local v3, "addressAsLong":J
    invoke-static {v2}, Lcom/google/common/net/InetAddresses;->hasEmbeddedIPv4ClientAddress(Ljava/net/Inet6Address;)Z

    move-result v5

    if-eqz v5, :cond_43

    .line 939
    invoke-static {v2}, Lcom/google/common/net/InetAddresses;->getEmbeddedIPv4ClientAddress(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/Inet4Address;->hashCode()I

    move-result v5

    int-to-long v3, v5

    goto :goto_52

    .line 942
    :cond_43
    invoke-virtual {v2}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0x8

    invoke-static {v5, v6, v7}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3

    .line 946
    :goto_52
    invoke-static {}, Lcom/google/common/hash/Hashing;->murmur3_32_fixed()Lcom/google/common/hash/HashFunction;

    move-result-object v5

    invoke-interface {v5, v3, v4}, Lcom/google/common/hash/HashFunction;->hashLong(J)Lcom/google/common/hash/HashCode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/common/hash/HashCode;->asInt()I

    move-result v5

    .line 949
    .local v5, "coercedHash":I
    const/high16 v6, -0x20000000

    or-int/2addr v5, v6

    .line 953
    const/4 v6, -0x1

    if-ne v5, v6, :cond_65

    .line 954
    const/4 v5, -0x2

    .line 957
    :cond_65
    invoke-static {v5}, Lcom/google/common/primitives/Ints;->toByteArray(I)[B

    move-result-object v6

    invoke-static {v6}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v6

    return-object v6
.end method

.method public static getCompatIPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;
    .registers 4
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .line 621
    nop

    .line 622
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isCompatIPv4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v1

    .line 621
    const-string v2, "Address \'%s\' is not IPv4-compatible."

    invoke-static {v0, v2, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 624
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    const/16 v1, 0xc

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0
.end method

.method public static getEmbeddedIPv4ClientAddress(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;
    .registers 4
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .line 838
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isCompatIPv4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 839
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->getCompatIPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0

    .line 842
    :cond_b
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->is6to4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 843
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->get6to4IPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0

    .line 846
    :cond_16
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isTeredoAddress(Ljava/net/Inet6Address;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 847
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->getTeredoInfo(Ljava/net/Inet6Address;)Lcom/google/common/net/InetAddresses$TeredoInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/net/InetAddresses$TeredoInfo;->getClient()Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0

    .line 850
    :cond_25
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "\'%s\' has no embedded IPv4 address."

    invoke-static {v0, v1}, Lcom/google/common/net/InetAddresses;->formatIllegalArgumentException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method private static getInet4Address([B)Ljava/net/Inet4Address;
    .registers 4
    .param p0, "bytes"    # [B

    .line 121
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    const-string v1, "Byte array has invalid length for an IPv4 address: %s != 4."

    array-length v2, p0

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 127
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->bytesToInetAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    return-object v0
.end method

.method public static getIsatapIPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;
    .registers 4
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .line 804
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isIsatapAddress(Ljava/net/Inet6Address;)Z

    move-result v0

    const-string v1, "Address \'%s\' is not an ISATAP address."

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 806
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    const/16 v1, 0xc

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0
.end method

.method public static getTeredoInfo(Ljava/net/Inet6Address;)Lcom/google/common/net/InetAddresses$TeredoInfo;
    .registers 8
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .line 743
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isTeredoAddress(Ljava/net/Inet6Address;)Z

    move-result v0

    const-string v1, "Address \'%s\' is not a Teredo address."

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 745
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    .line 746
    .local v0, "bytes":[B
    const/4 v1, 0x4

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v1

    .line 748
    .local v1, "server":Ljava/net/Inet4Address;
    invoke-static {v0, v2}, Lcom/google/common/io/ByteStreams;->newDataInput([BI)Lcom/google/common/io/ByteArrayDataInput;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/common/io/ByteArrayDataInput;->readShort()S

    move-result v2

    const v3, 0xffff

    and-int/2addr v2, v3

    .line 751
    .local v2, "flags":I
    const/16 v4, 0xa

    invoke-static {v0, v4}, Lcom/google/common/io/ByteStreams;->newDataInput([BI)Lcom/google/common/io/ByteArrayDataInput;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/common/io/ByteArrayDataInput;->readShort()S

    move-result v4

    not-int v4, v4

    and-int/2addr v3, v4

    .line 753
    .local v3, "port":I
    const/16 v4, 0xc

    const/16 v5, 0x10

    invoke-static {v0, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    .line 754
    .local v4, "clientBytes":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3d
    array-length v6, v4

    if-ge v5, v6, :cond_49

    .line 756
    aget-byte v6, v4, v5

    not-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 754
    add-int/lit8 v5, v5, 0x1

    goto :goto_3d

    .line 758
    .end local v5    # "i":I
    :cond_49
    invoke-static {v4}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v5

    .line 760
    .local v5, "client":Ljava/net/Inet4Address;
    new-instance v6, Lcom/google/common/net/InetAddresses$TeredoInfo;

    invoke-direct {v6, v1, v5, v3, v2}, Lcom/google/common/net/InetAddresses$TeredoInfo;-><init>(Ljava/net/Inet4Address;Ljava/net/Inet4Address;II)V

    return-object v6
.end method

.method public static hasEmbeddedIPv4ClientAddress(Ljava/net/Inet6Address;)Z
    .registers 2
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .line 822
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isCompatIPv4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->is6to4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isTeredoAddress(Ljava/net/Inet6Address;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method private static hextetsToIPv6String([I)Ljava/lang/String;
    .registers 6
    .param p0, "hextets"    # [I

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 467
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 468
    .local v1, "lastWasNumber":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    array-length v3, p0

    if-ge v2, v3, :cond_33

    .line 469
    aget v3, p0, v2

    if-ltz v3, :cond_12

    const/4 v3, 0x1

    goto :goto_13

    :cond_12
    const/4 v3, 0x0

    .line 470
    .local v3, "thisIsNumber":Z
    :goto_13
    if-eqz v3, :cond_26

    .line 471
    if-eqz v1, :cond_1c

    .line 472
    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 474
    :cond_1c
    aget v4, p0, v2

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2f

    .line 476
    :cond_26
    if-eqz v2, :cond_2a

    if-eqz v1, :cond_2f

    .line 477
    :cond_2a
    const-string v4, "::"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    :cond_2f
    :goto_2f
    move v1, v3

    .line 468
    .end local v3    # "thisIsNumber":Z
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 482
    .end local v2    # "i":I
    :cond_33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static increment(Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .registers 7
    .param p0, "address"    # Ljava/net/InetAddress;

    .line 1121
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 1122
    .local v0, "addr":[B
    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 1123
    .local v1, "i":I
    :goto_7
    const/4 v3, 0x0

    if-ltz v1, :cond_14

    aget-byte v4, v0, v1

    const/4 v5, -0x1

    if-ne v4, v5, :cond_14

    .line 1124
    aput-byte v3, v0, v1

    .line 1125
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 1128
    :cond_14
    if-ltz v1, :cond_17

    const/4 v3, 0x1

    :cond_17
    const-string v4, "Incrementing %s would wrap."

    invoke-static {v3, v4, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 1130
    aget-byte v3, v0, v1

    add-int/2addr v3, v2

    int-to-byte v2, v3

    aput-byte v2, v0, v1

    .line 1131
    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->bytesToInetAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    return-object v2
.end method

.method private static ipStringToBytes(Ljava/lang/String;)[B
    .registers 10
    .param p0, "ipStringParam"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 177
    move-object v0, p0

    .line 179
    .local v0, "ipString":Ljava/lang/String;
    const/4 v1, 0x0

    .line 180
    .local v1, "hasColon":Z
    const/4 v2, 0x0

    .line 181
    .local v2, "hasDot":Z
    const/4 v3, -0x1

    .line 182
    .local v3, "percentIndex":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-ge v4, v5, :cond_32

    .line 183
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 184
    .local v5, "c":C
    const/16 v8, 0x2e

    if-ne v5, v8, :cond_17

    .line 185
    const/4 v2, 0x1

    goto :goto_2f

    .line 186
    :cond_17
    const/16 v8, 0x3a

    if-ne v5, v8, :cond_20

    .line 187
    if-eqz v2, :cond_1e

    .line 188
    return-object v7

    .line 190
    :cond_1e
    const/4 v1, 0x1

    goto :goto_2f

    .line 191
    :cond_20
    const/16 v8, 0x25

    if-ne v5, v8, :cond_26

    .line 192
    move v3, v4

    .line 193
    goto :goto_32

    .line 194
    :cond_26
    const/16 v8, 0x10

    invoke-static {v5, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v8

    if-ne v8, v6, :cond_2f

    .line 195
    return-object v7

    .line 182
    .end local v5    # "c":C
    :cond_2f
    :goto_2f
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 200
    .end local v4    # "i":I
    :cond_32
    :goto_32
    if-eqz v1, :cond_49

    .line 201
    if-eqz v2, :cond_3d

    .line 202
    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->convertDottedQuadToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    if-nez v0, :cond_3d

    .line 204
    return-object v7

    .line 207
    :cond_3d
    if-eq v3, v6, :cond_44

    .line 208
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 210
    :cond_44
    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->textToNumericFormatV6(Ljava/lang/String;)[B

    move-result-object v4

    return-object v4

    .line 211
    :cond_49
    if-eqz v2, :cond_53

    .line 212
    if-eq v3, v6, :cond_4e

    .line 213
    return-object v7

    .line 215
    :cond_4e
    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->textToNumericFormatV4(Ljava/lang/String;)[B

    move-result-object v4

    return-object v4

    .line 217
    :cond_53
    return-object v7
.end method

.method public static is6to4Address(Ljava/net/Inet6Address;)Z
    .registers 6
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .line 640
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    .line 641
    .local v0, "bytes":[B
    const/4 v1, 0x0

    aget-byte v2, v0, v1

    const/16 v3, 0x20

    if-ne v2, v3, :cond_12

    const/4 v2, 0x1

    aget-byte v3, v0, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_12

    const/4 v1, 0x1

    :cond_12
    return v1
.end method

.method public static isCompatIPv4Address(Ljava/net/Inet6Address;)Z
    .registers 6
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .line 598
    invoke-virtual {p0}, Ljava/net/Inet6Address;->isIPv4CompatibleAddress()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 599
    return v1

    .line 602
    :cond_8
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    .line 603
    .local v0, "bytes":[B
    const/16 v2, 0xc

    aget-byte v2, v0, v2

    const/4 v3, 0x1

    if-nez v2, :cond_2a

    const/16 v2, 0xd

    aget-byte v2, v0, v2

    if-nez v2, :cond_2a

    const/16 v2, 0xe

    aget-byte v2, v0, v2

    if-nez v2, :cond_2a

    const/16 v2, 0xf

    aget-byte v4, v0, v2

    if-eqz v4, :cond_29

    aget-byte v2, v0, v2

    if-ne v2, v3, :cond_2a

    .line 607
    :cond_29
    return v1

    .line 610
    :cond_2a
    return v3
.end method

.method public static isInetAddress(Ljava/lang/String;)Z
    .registers 2
    .param p0, "ipString"    # Ljava/lang/String;

    .line 171
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->ipStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static isIsatapAddress(Ljava/net/Inet6Address;)Z
    .registers 5
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .line 780
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isTeredoAddress(Ljava/net/Inet6Address;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 781
    return v1

    .line 784
    :cond_8
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    .line 786
    .local v0, "bytes":[B
    const/16 v2, 0x8

    aget-byte v2, v0, v2

    const/4 v3, 0x3

    or-int/2addr v2, v3

    if-eq v2, v3, :cond_15

    .line 790
    return v1

    .line 793
    :cond_15
    const/16 v2, 0x9

    aget-byte v2, v0, v2

    if-nez v2, :cond_2b

    const/16 v2, 0xa

    aget-byte v2, v0, v2

    const/16 v3, 0x5e

    if-ne v2, v3, :cond_2b

    const/16 v2, 0xb

    aget-byte v2, v0, v2

    const/4 v3, -0x2

    if-ne v2, v3, :cond_2b

    const/4 v1, 0x1

    :cond_2b
    return v1
.end method

.method public static isMappedIPv4Address(Ljava/lang/String;)Z
    .registers 6
    .param p0, "ipString"    # Ljava/lang/String;

    .line 876
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->ipStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 877
    .local v0, "bytes":[B
    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    array-length v2, v0

    const/16 v3, 0x10

    if-ne v2, v3, :cond_2a

    .line 878
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    const/16 v3, 0xa

    if-ge v2, v3, :cond_19

    .line 879
    aget-byte v3, v0, v2

    if-eqz v3, :cond_16

    .line 880
    return v1

    .line 878
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 883
    .end local v2    # "i":I
    :cond_19
    const/16 v2, 0xa

    .restart local v2    # "i":I
    :goto_1b
    const/16 v3, 0xc

    if-ge v2, v3, :cond_28

    .line 884
    aget-byte v3, v0, v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_25

    .line 885
    return v1

    .line 883
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 888
    .end local v2    # "i":I
    :cond_28
    const/4 v1, 0x1

    return v1

    .line 890
    :cond_2a
    return v1
.end method

.method public static isMaximum(Ljava/net/InetAddress;)Z
    .registers 7
    .param p0, "address"    # Ljava/net/InetAddress;

    .line 1143
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 1144
    .local v0, "addr":[B
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v1, :cond_12

    aget-byte v4, v0, v3

    .line 1145
    .local v4, "b":B
    const/4 v5, -0x1

    if-eq v4, v5, :cond_f

    .line 1146
    return v2

    .line 1144
    .end local v4    # "b":B
    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 1149
    :cond_12
    const/4 v1, 0x1

    return v1
.end method

.method public static isTeredoAddress(Ljava/net/Inet6Address;)Z
    .registers 5
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .line 728
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    .line 729
    .local v0, "bytes":[B
    const/4 v1, 0x0

    aget-byte v2, v0, v1

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1b

    const/4 v2, 0x1

    aget-byte v3, v0, v2

    if-ne v3, v2, :cond_1b

    const/4 v3, 0x2

    aget-byte v3, v0, v3

    if-nez v3, :cond_1b

    const/4 v3, 0x3

    aget-byte v3, v0, v3

    if-nez v3, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    return v1
.end method

.method public static isUriInetAddress(Ljava/lang/String;)Z
    .registers 2
    .param p0, "ipString"    # Ljava/lang/String;

    .line 576
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->forUriStringNoThrow(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private static parseHextet(Ljava/lang/String;II)S
    .registers 8
    .param p0, "ipString"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 361
    sub-int v0, p2, p1

    .line 362
    .local v0, "length":I
    if-lez v0, :cond_1d

    const/4 v1, 0x4

    if-gt v0, v1, :cond_1d

    .line 365
    const/4 v1, 0x0

    .line 366
    .local v1, "hextet":I
    move v2, p1

    .local v2, "i":I
    :goto_9
    if-ge v2, p2, :cond_1b

    .line 367
    shl-int/lit8 v1, v1, 0x4

    .line 368
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    or-int/2addr v1, v3

    .line 366
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 370
    .end local v2    # "i":I
    :cond_1b
    int-to-short v2, v1

    return v2

    .line 363
    .end local v1    # "hextet":I
    :cond_1d
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-direct {v1}, Ljava/lang/NumberFormatException;-><init>()V

    throw v1
.end method

.method private static parseOctet(Ljava/lang/String;II)B
    .registers 8
    .param p0, "ipString"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 334
    sub-int v0, p2, p1

    .line 335
    .local v0, "length":I
    if-lez v0, :cond_41

    const/4 v1, 0x3

    if-gt v0, v1, :cond_41

    .line 340
    const/4 v1, 0x1

    if-le v0, v1, :cond_19

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-eq v1, v2, :cond_13

    goto :goto_19

    .line 341
    :cond_13
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-direct {v1}, Ljava/lang/NumberFormatException;-><init>()V

    throw v1

    .line 343
    :cond_19
    :goto_19
    const/4 v1, 0x0

    .line 344
    .local v1, "octet":I
    move v2, p1

    .local v2, "i":I
    :goto_1b
    if-ge v2, p2, :cond_35

    .line 345
    mul-int/lit8 v1, v1, 0xa

    .line 346
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    .line 347
    .local v3, "digit":I
    if-ltz v3, :cond_2f

    .line 350
    add-int/2addr v1, v3

    .line 344
    .end local v3    # "digit":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 348
    .restart local v3    # "digit":I
    :cond_2f
    new-instance v4, Ljava/lang/NumberFormatException;

    invoke-direct {v4}, Ljava/lang/NumberFormatException;-><init>()V

    throw v4

    .line 352
    .end local v2    # "i":I
    .end local v3    # "digit":I
    :cond_35
    const/16 v2, 0xff

    if-gt v1, v2, :cond_3b

    .line 355
    int-to-byte v2, v1

    return v2

    .line 353
    :cond_3b
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-direct {v2}, Ljava/lang/NumberFormatException;-><init>()V

    throw v2

    .line 336
    .end local v1    # "octet":I
    :cond_41
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-direct {v1}, Ljava/lang/NumberFormatException;-><init>()V

    throw v1
.end method

.method private static textToNumericFormatV4(Ljava/lang/String;)[B
    .registers 8
    .param p0, "ipString"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 222
    sget-object v0, Lcom/google/common/net/InetAddresses;->IPV4_DELIMITER_MATCHER:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v0, p0}, Lcom/google/common/base/CharMatcher;->countIn(Ljava/lang/CharSequence;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_d

    .line 223
    return-object v1

    .line 226
    :cond_d
    new-array v0, v2, [B

    .line 227
    .local v0, "bytes":[B
    const/4 v3, 0x0

    .line 230
    .local v3, "start":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_11
    if-ge v4, v2, :cond_2e

    .line 231
    const/16 v5, 0x2e

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 232
    .local v5, "end":I
    const/4 v6, -0x1

    if-ne v5, v6, :cond_20

    .line 233
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 236
    :cond_20
    :try_start_20
    invoke-static {p0, v3, v5}, Lcom/google/common/net/InetAddresses;->parseOctet(Ljava/lang/String;II)B

    move-result v6

    aput-byte v6, v0, v4
    :try_end_26
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_26} :catch_2c

    .line 239
    nop

    .line 240
    add-int/lit8 v3, v5, 0x1

    .line 230
    .end local v5    # "end":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 237
    .restart local v5    # "end":I
    :catch_2c
    move-exception v2

    .line 238
    .local v2, "ex":Ljava/lang/NumberFormatException;
    return-object v1

    .line 243
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    .end local v4    # "i":I
    .end local v5    # "end":I
    :cond_2e
    return-object v0
.end method

.method private static textToNumericFormatV6(Ljava/lang/String;)[B
    .registers 11
    .param p0, "ipString"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 249
    sget-object v0, Lcom/google/common/net/InetAddresses;->IPV6_DELIMITER_MATCHER:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v0, p0}, Lcom/google/common/base/CharMatcher;->countIn(Ljava/lang/CharSequence;)I

    move-result v0

    .line 250
    .local v0, "delimiterCount":I
    const/4 v1, 0x0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_b7

    const/16 v3, 0x8

    if-le v0, v3, :cond_10

    goto/16 :goto_b7

    .line 253
    :cond_10
    add-int/lit8 v4, v0, 0x1

    rsub-int/lit8 v4, v4, 0x8

    .line 254
    .local v4, "partsSkipped":I
    const/4 v5, 0x0

    .line 257
    .local v5, "hasSkip":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_16
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    const/16 v9, 0x3a

    if-ge v6, v7, :cond_44

    .line 258
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v9, :cond_41

    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v9, :cond_41

    .line 259
    if-eqz v5, :cond_31

    .line 260
    return-object v1

    .line 262
    :cond_31
    const/4 v5, 0x1

    .line 263
    add-int/lit8 v4, v4, 0x1

    .line 264
    if-nez v6, :cond_38

    .line 265
    add-int/lit8 v4, v4, 0x1

    .line 267
    :cond_38
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v2

    if-ne v6, v7, :cond_41

    .line 268
    add-int/lit8 v4, v4, 0x1

    .line 257
    :cond_41
    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    .line 272
    .end local v6    # "i":I
    :cond_44
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v9, :cond_52

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v9, :cond_52

    .line 273
    return-object v1

    .line 275
    :cond_52
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v8

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v9, :cond_69

    .line 276
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v2

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v9, :cond_69

    .line 277
    return-object v1

    .line 279
    :cond_69
    if-eqz v5, :cond_6e

    if-gtz v4, :cond_6e

    .line 280
    return-object v1

    .line 282
    :cond_6e
    if-nez v5, :cond_75

    add-int/lit8 v2, v0, 0x1

    if-eq v2, v3, :cond_75

    .line 283
    return-object v1

    .line 286
    :cond_75
    const/16 v2, 0x10

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 291
    .local v2, "rawBytes":Ljava/nio/ByteBuffer;
    const/4 v3, 0x0

    .line 292
    .local v3, "start":I
    :try_start_7c
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v9, :cond_83

    .line 293
    const/4 v3, 0x1

    .line 295
    :cond_83
    :goto_83
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v3, v7, :cond_af

    .line 296
    invoke-virtual {p0, v9, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 297
    .local v7, "end":I
    const/4 v8, -0x1

    if-ne v7, v8, :cond_95

    .line 298
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    move v7, v8

    .line 300
    :cond_95
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_a5

    .line 302
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_9c
    if-ge v8, v4, :cond_a4

    .line 303
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 302
    add-int/lit8 v8, v8, 0x1

    goto :goto_9c

    .end local v8    # "i":I
    :cond_a4
    goto :goto_ac

    .line 307
    :cond_a5
    invoke-static {p0, v3, v7}, Lcom/google/common/net/InetAddresses;->parseHextet(Ljava/lang/String;II)S

    move-result v8

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;
    :try_end_ac
    .catch Ljava/lang/NumberFormatException; {:try_start_7c .. :try_end_ac} :catch_b5

    .line 309
    :goto_ac
    add-int/lit8 v3, v7, 0x1

    .line 310
    .end local v7    # "end":I
    goto :goto_83

    .line 313
    .end local v3    # "start":I
    :cond_af
    nop

    .line 314
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1

    .line 311
    :catch_b5
    move-exception v3

    .line 312
    .local v3, "ex":Ljava/lang/NumberFormatException;
    return-object v1

    .line 251
    .end local v2    # "rawBytes":Ljava/nio/ByteBuffer;
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    .end local v4    # "partsSkipped":I
    .end local v5    # "hasSkip":Z
    :cond_b7
    :goto_b7
    return-object v1
.end method

.method public static toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;
    .registers 7
    .param p0, "ip"    # Ljava/net/InetAddress;

    .line 407
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_c

    .line 410
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 412
    :cond_c
    instance-of v0, p0, Ljava/net/Inet6Address;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 413
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 414
    .local v0, "bytes":[B
    const/16 v1, 0x8

    new-array v1, v1, [I

    .line 415
    .local v1, "hextets":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1a
    array-length v3, v1

    if-ge v2, v3, :cond_31

    .line 416
    mul-int/lit8 v3, v2, 0x2

    aget-byte v3, v0, v3

    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, v0, v4

    const/4 v5, 0x0

    invoke-static {v5, v5, v3, v4}, Lcom/google/common/primitives/Ints;->fromBytes(BBBB)I

    move-result v3

    aput v3, v1, v2

    .line 415
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 418
    .end local v2    # "i":I
    :cond_31
    invoke-static {v1}, Lcom/google/common/net/InetAddresses;->compressLongestRunOfZeroes([I)V

    .line 419
    invoke-static {v1}, Lcom/google/common/net/InetAddresses;->hextetsToIPv6String([I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static toBigInteger(Ljava/net/InetAddress;)Ljava/math/BigInteger;
    .registers 4
    .param p0, "address"    # Ljava/net/InetAddress;

    .line 992
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public static toUriString(Ljava/net/InetAddress;)Ljava/lang/String;
    .registers 4
    .param p0, "ip"    # Ljava/net/InetAddress;

    .line 505
    instance-of v0, p0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_2c

    .line 506
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 508
    :cond_2c
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
