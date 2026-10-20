.class Lorg/objenesis/instantiator/basic/ObjectInputStreamInstantiator$MockStream;
.super Ljava/io/InputStream;
.source "ObjectInputStreamInstantiator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/objenesis/instantiator/basic/ObjectInputStreamInstantiator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MockStream"
.end annotation


# static fields
.field private static HEADER:[B

.field private static final NEXT:[I

.field private static REPEATING_DATA:[B


# instance fields
.field private final buffers:[[B

.field private data:[B

.field private pointer:I

.field private sequence:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    const/4 v0, 0x1

    const/4 v1, 0x2

    filled-new-array {v0, v1, v1}, [I

    move-result-object v0

    sput-object v0, Lorg/objenesis/instantiator/basic/ObjectInputStreamInstantiator$MockStream;->NEXT:[I

    .line 57
    invoke-static {}, Lorg/objenesis/instantiator/basic/ObjectInputStreamInstantiator$MockStream;->initialize()V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 82
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lorg/objenesis/instantiator/basic/ObjectInputStreamInstantiator$MockStream;->pointer:I

    .line 84
    iput v0, p0, Lorg/objenesis/instantiator/basic/ObjectInputStreamInstantiator$MockStream;->sequence:I

    .line 85
    sget-object v1, Lorg/objenesis/instantiator/basic/ObjectInputStreamInstantiator$MockStream;->HEADER:[B

    iput-object v1, p0, Lorg/objenesis/instantiator/basic/ObjectInputStreamInstantiator$MockStream;->data:[B

    .line 96
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 97
    .local v1, "byteOut":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 99
    .local v2, "dout":Ljava/io/DataOutputStream;
    const/16 v3, 0x73

    :try_start_0
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 100
    const/16 v3, 0x72

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 101
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 102
    invoke-static {p1}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/ObjectStreamClass;->getSerialVersionUID()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 103
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 104
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 105
    const/16 v4, 0x78

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 106
    const/16 v4, 0x70

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    nop

    .line 111
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 112
    .local v4, "firstData":[B
    const/4 v5, 0x3

    new-array v5, v5, [[B

    sget-object v6, Lorg/objenesis/instantiator/basic/ObjectInputStreamInstantiator$MockStream;->HEADER:[B

    aput-object v6, v5, v0

    const/4 v0, 0x1

    aput-object v4, v5, v0

    sget-object v0, Lorg/objenesis/instantiator/basic/ObjectInputStreamInstantiator$MockStream;->REPEATING_DATA:[B

    aput-object v0, v5, v3

    iput-object v5, p0, Lorg/objenesis/instantiator/basic/ObjectInputStreamInstantiator$MockStream;->buffers:[[B

    .line 113
    return-void

    .line 108
    .end local v4    # "firstData":[B
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/Error;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private advanceBuffer()V
    .locals 2

    .line 116
    const/4 v0, 0x0

    iput v0, p0, Lorg/objenesis/instantiator/basic/ObjectInputStreamInstantiator$MockStream;->pointer:I

    .line 117
    sget-object v0, Lorg/objenesis/instantiator/basic/ObjectInputStreamInstantiator$MockStream;->NEXT:[I

    iget v1, p0, Lorg/objenesis/instantiator/basic/ObjectInputStreamInstantiator$MockStream;->sequence:I

    aget v0, v0, v1

    iput v0, p0, Lorg/objenesis/instantiator/basic/ObjectInputStreamInstantiator$MockStream;->sequence:I

    .line 118
    iget-object v0, p0, Lorg/objenesis/instantiator/basic/ObjectInputStreamInstantiator$MockStream;->buffers:[[B

    iget v1, p0, Lorg/objenesis/instantiator/basic/ObjectInputStreamInstantiator$MockStream;->sequence:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/objenesis/instantiator/basic/ObjectInputStreamInstantiator$MockStream;->data:[B

    .line 119
    return-void
.end method

.method private static initialize()V
    .locals 4

    .line 62
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 63
    .local v0, "byteOut":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 64
    .local v1, "dout":Ljava/io/DataOutputStream;
    const/16 v2, -0x5313

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 65
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 66
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    sput-object v2, Lorg/objenesis/instantiator/basic/ObjectInputStreamInstantiator$MockStream;->HEADER:[B

    .line 68
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v0, v2

    .line 69
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v2

    .line 71
    const/16 v2, 0x73

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 72
    const/16 v2, 0x71

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 73
    const/high16 v2, 0x7e0000

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 74
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    sput-object v2, Lorg/objenesis/instantiator/basic/ObjectInputStreamInstantiator$MockStream;->REPEATING_DATA:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v0    # "byteOut":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "dout":Ljava/io/DataOutputStream;
    nop

    .line 80
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public available()I
    .locals 1

    .line 133
    const v0, 0x7fffffff

    return v0
.end method

.method public read()I
    .locals 3

    .line 123
    iget-object v0, p0, Lorg/objenesis/instantiator/basic/ObjectInputStreamInstantiator$MockStream;->data:[B

    iget v1, p0, Lorg/objenesis/instantiator/basic/ObjectInputStreamInstantiator$MockStream;->pointer:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/objenesis/instantiator/basic/ObjectInputStreamInstantiator$MockStream;->pointer:I

    aget-byte v0, v0, v1

    .line 124
    .local v0, "result":I
    iget v1, p0, Lorg/objenesis/instantiator/basic/ObjectInputStreamInstantiator$MockStream;->pointer:I

    iget-object v2, p0, Lorg/objenesis/instantiator/basic/ObjectInputStreamInstantiator$MockStream;->data:[B

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 125
    invoke-direct {p0}, Lorg/objenesis/instantiator/basic/ObjectInputStreamInstantiator$MockStream;->advanceBuffer()V

    .line 128
    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 138
    move v0, p3

    .line 139
    .local v0, "left":I
    iget-object v1, p0, Lorg/objenesis/instantiator/basic/ObjectInputStreamInstantiator$MockStream;->data:[B

    array-length v1, v1

    iget v2, p0, Lorg/objenesis/instantiator/basic/ObjectInputStreamInstantiator$MockStream;->pointer:I

    sub-int/2addr v1, v2

    .line 141
    .local v1, "remaining":I
    :goto_0
    if-gt v1, v0, :cond_0

    .line 142
    iget-object v2, p0, Lorg/objenesis/instantiator/basic/ObjectInputStreamInstantiator$MockStream;->data:[B

    iget v3, p0, Lorg/objenesis/instantiator/basic/ObjectInputStreamInstantiator$MockStream;->pointer:I

    invoke-static {v2, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    add-int/2addr p2, v1

    .line 144
    sub-int/2addr v0, v1

    .line 145
    invoke-direct {p0}, Lorg/objenesis/instantiator/basic/ObjectInputStreamInstantiator$MockStream;->advanceBuffer()V

    .line 146
    iget-object v2, p0, Lorg/objenesis/instantiator/basic/ObjectInputStreamInstantiator$MockStream;->data:[B

    array-length v2, v2

    iget v3, p0, Lorg/objenesis/instantiator/basic/ObjectInputStreamInstantiator$MockStream;->pointer:I

    sub-int v1, v2, v3

    goto :goto_0

    .line 148
    :cond_0
    if-lez v0, :cond_1

    .line 149
    iget-object v2, p0, Lorg/objenesis/instantiator/basic/ObjectInputStreamInstantiator$MockStream;->data:[B

    iget v3, p0, Lorg/objenesis/instantiator/basic/ObjectInputStreamInstantiator$MockStream;->pointer:I

    invoke-static {v2, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    iget v2, p0, Lorg/objenesis/instantiator/basic/ObjectInputStreamInstantiator$MockStream;->pointer:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/objenesis/instantiator/basic/ObjectInputStreamInstantiator$MockStream;->pointer:I

    .line 153
    :cond_1
    return p3
.end method
