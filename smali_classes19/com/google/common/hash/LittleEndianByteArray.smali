.class final Lcom/google/common/hash/LittleEndianByteArray;
.super Ljava/lang/Object;
.source "LittleEndianByteArray.java"


# annotations
.annotation runtime Lcom/google/common/hash/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;,
        Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;,
        Lcom/google/common/hash/LittleEndianByteArray$LittleEndianBytes;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final byteArray:Lcom/google/common/hash/LittleEndianByteArray$LittleEndianBytes;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 27
    nop

    .line 233
    sget-object v0, Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;->INSTANCE:Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;

    .line 246
    .local v0, "theGetter":Lcom/google/common/hash/LittleEndianByteArray$LittleEndianBytes;
    :try_start_3
    const-string v1, "os.arch"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, "arch":Ljava/lang/String;
    const-string v2, "amd64"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 249
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 250
    sget-object v2, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;->UNSAFE_LITTLE_ENDIAN:Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;

    goto :goto_22

    .line 251
    :cond_20
    sget-object v2, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;->UNSAFE_BIG_ENDIAN:Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_24

    :goto_22
    move-object v0, v2

    .line 255
    .end local v1    # "arch":Ljava/lang/String;
    :cond_23
    goto :goto_25

    .line 253
    :catchall_24
    move-exception v1

    .line 256
    :goto_25
    sput-object v0, Lcom/google/common/hash/LittleEndianByteArray;->byteArray:Lcom/google/common/hash/LittleEndianByteArray$LittleEndianBytes;

    .line 257
    .end local v0    # "theGetter":Lcom/google/common/hash/LittleEndianByteArray$LittleEndianBytes;
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static load32([BI)I
    .registers 4
    .param p0, "source"    # [B
    .param p1, "offset"    # I

    .line 95
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method static load64([BI)J
    .registers 4
    .param p0, "input"    # [B
    .param p1, "offset"    # I

    .line 43
    array-length v0, p0

    add-int/lit8 v1, p1, 0x8

    if-lt v0, v1, :cond_c

    .line 45
    sget-object v0, Lcom/google/common/hash/LittleEndianByteArray;->byteArray:Lcom/google/common/hash/LittleEndianByteArray$LittleEndianBytes;

    invoke-interface {v0, p0, p1}, Lcom/google/common/hash/LittleEndianByteArray$LittleEndianBytes;->getLongLittleEndian([BI)J

    move-result-wide v0

    return-wide v0

    .line 43
    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method static load64Safely([BII)J
    .registers 11
    .param p0, "input"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 59
    const-wide/16 v0, 0x0

    .line 64
    .local v0, "result":J
    const/16 v2, 0x8

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 65
    .local v2, "limit":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    if-ge v3, v2, :cond_1a

    .line 67
    add-int v4, p1, v3

    aget-byte v4, p0, v4

    int-to-long v4, v4

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    mul-int/lit8 v6, v3, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 65
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 69
    .end local v3    # "i":I
    :cond_1a
    return-wide v0
.end method

.method static store64([BIJ)V
    .registers 6
    .param p0, "sink"    # [B
    .param p1, "offset"    # I
    .param p2, "value"    # J

    .line 81
    if-ltz p1, :cond_d

    add-int/lit8 v0, p1, 0x8

    array-length v1, p0

    if-gt v0, v1, :cond_d

    .line 83
    sget-object v0, Lcom/google/common/hash/LittleEndianByteArray;->byteArray:Lcom/google/common/hash/LittleEndianByteArray$LittleEndianBytes;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/google/common/hash/LittleEndianByteArray$LittleEndianBytes;->putLongLittleEndian([BIJ)V

    .line 84
    return-void

    .line 81
    :cond_d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method static usingUnsafe()Z
    .registers 1

    .line 107
    sget-object v0, Lcom/google/common/hash/LittleEndianByteArray;->byteArray:Lcom/google/common/hash/LittleEndianByteArray$LittleEndianBytes;

    instance-of v0, v0, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;

    return v0
.end method
