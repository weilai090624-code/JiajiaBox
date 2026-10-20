.class public Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;
.super Lcom/esotericsoftware/kryo/io/ByteBufferInput;
.source "UnsafeByteBufferInput.java"


# instance fields
.field private bufferAddress:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;-><init>()V

    .line 49
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "bufferSize"    # I

    .line 55
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;-><init>(I)V

    .line 56
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->updateBufferAddress()V

    .line 57
    return-void
.end method

.method public constructor <init>(JI)V
    .locals 1
    .param p1, "address"    # J
    .param p3, "size"    # I

    .line 80
    invoke-static {p1, p2, p3}, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->newDirectBuffer(JI)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;-><init>(Ljava/nio/ByteBuffer;)V

    .line 81
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->updateBufferAddress()V

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 86
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;-><init>(Ljava/io/InputStream;)V

    .line 87
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->updateBufferAddress()V

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 0
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "bufferSize"    # I

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;-><init>(Ljava/io/InputStream;I)V

    .line 93
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->updateBufferAddress()V

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 73
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;-><init>(Ljava/nio/ByteBuffer;)V

    .line 74
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->updateBufferAddress()V

    .line 75
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "bytes"    # [B

    .line 61
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;-><init>([B)V

    .line 62
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->updateBufferAddress()V

    .line 63
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;-><init>([BII)V

    .line 68
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->updateBufferAddress()V

    .line 69
    return-void
.end method

.method private setBufferPosition(Ljava/nio/Buffer;I)V
    .locals 0
    .param p1, "buffer"    # Ljava/nio/Buffer;
    .param p2, "position"    # I

    .line 108
    invoke-virtual {p1, p2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 109
    return-void
.end method

.method private updateBufferAddress()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    check-cast v0, Lsun/nio/ch/DirectBuffer;

    invoke-interface {v0}, Lsun/nio/ch/DirectBuffer;->address()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->bufferAddress:J

    .line 105
    return-void
.end method


# virtual methods
.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 112
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->optional(I)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 113
    :cond_0
    sget-object v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->bufferAddress:J

    iget v3, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->position:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 114
    .local v0, "result":I
    iget-object v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->position:I

    invoke-direct {p0, v1, v2}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->setBufferPosition(Ljava/nio/Buffer;I)V

    .line 115
    return v0
.end method

.method public readBoolean()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 181
    iget v0, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->limit:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->require(I)I

    .line 182
    :cond_0
    sget-object v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    iget-wide v3, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->bufferAddress:J

    iget v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->position:I

    add-int/lit8 v5, v1, 0x1

    iput v5, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->position:I

    int-to-long v5, v1

    add-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .line 183
    .local v0, "result":Z
    iget-object v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->position:I

    invoke-direct {p0, v1, v2}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->setBufferPosition(Ljava/nio/Buffer;I)V

    .line 184
    return v0
.end method

.method public readBooleans(I)[Z
    .locals 3
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 224
    new-array v0, p1, [Z

    .line 225
    .local v0, "array":[Z
    sget-wide v1, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->booleanArrayBaseOffset:J

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->readBytes(Ljava/lang/Object;JI)V

    .line 226
    return-object v0
.end method

.method public readByte()B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 119
    iget v0, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->limit:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->require(I)I

    .line 120
    :cond_0
    sget-object v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->bufferAddress:J

    iget v3, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->position:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v0

    .line 121
    .local v0, "result":B
    iget-object v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->position:I

    invoke-direct {p0, v1, v2}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->setBufferPosition(Ljava/nio/Buffer;I)V

    .line 122
    return v0
.end method

.method public readByteUnsigned()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 126
    iget v0, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->limit:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->require(I)I

    .line 127
    :cond_0
    sget-object v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->bufferAddress:J

    iget v3, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->position:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 128
    .local v0, "result":I
    iget-object v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->position:I

    invoke-direct {p0, v1, v2}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->setBufferPosition(Ljava/nio/Buffer;I)V

    .line 129
    return v0
.end method

.method public readBytes(Ljava/lang/Object;JI)V
    .locals 10
    .param p1, "to"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 235
    iget v0, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->limit:I

    iget v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->position:I

    sub-int/2addr v0, v1

    invoke-static {v0, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 237
    .local v0, "copyCount":I
    :goto_0
    sget-object v1, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    iget-wide v2, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->bufferAddress:J

    iget v4, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->position:I

    int-to-long v4, v4

    add-long v3, v2, v4

    int-to-long v8, v0

    const/4 v2, 0x0

    move-object v5, p1

    move-wide v6, p2

    invoke-virtual/range {v1 .. v9}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    .line 238
    iget v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->position:I

    .line 239
    sub-int/2addr p4, v0

    .line 240
    if-nez p4, :cond_0

    .line 245
    iget-object v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->position:I

    invoke-direct {p0, v1, v2}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->setBufferPosition(Ljava/nio/Buffer;I)V

    .line 246
    return-void

    .line 241
    :cond_0
    int-to-long v1, v0

    add-long/2addr p2, v1

    .line 242
    iget v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->capacity:I

    invoke-static {p4, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 243
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->require(I)I

    goto :goto_0
.end method

.method public readBytes([BII)V
    .locals 4
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 230
    sget-wide v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->byteArrayBaseOffset:J

    int-to-long v2, p2

    add-long/2addr v0, v2

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->readBytes(Ljava/lang/Object;JI)V

    .line 231
    return-void
.end method

.method public readChar()C
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 173
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->require(I)I

    .line 174
    sget-object v1, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    iget-wide v2, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->bufferAddress:J

    iget v4, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->position:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lsun/misc/Unsafe;->getChar(J)C

    move-result v1

    .line 175
    .local v1, "result":C
    iget v2, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->position:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->position:I

    .line 176
    iget-object v0, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->position:I

    invoke-direct {p0, v0, v2}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->setBufferPosition(Ljava/nio/Buffer;I)V

    .line 177
    return v1
.end method

.method public readChars(I)[C
    .locals 4
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 218
    new-array v0, p1, [C

    .line 219
    .local v0, "array":[C
    sget-wide v1, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->charArrayBaseOffset:J

    shl-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->readBytes(Ljava/lang/Object;JI)V

    .line 220
    return-object v0
.end method

.method public readDouble()D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 157
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->require(I)I

    .line 158
    sget-object v1, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    iget-wide v2, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->bufferAddress:J

    iget v4, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->position:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lsun/misc/Unsafe;->getDouble(J)D

    move-result-wide v1

    .line 159
    .local v1, "result":D
    iget v3, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->position:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->position:I

    .line 160
    iget-object v0, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->position:I

    invoke-direct {p0, v0, v3}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->setBufferPosition(Ljava/nio/Buffer;I)V

    .line 161
    return-wide v1
.end method

.method public readDoubles(I)[D
    .locals 4
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 206
    new-array v0, p1, [D

    .line 207
    .local v0, "array":[D
    sget-wide v1, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->doubleArrayBaseOffset:J

    shl-int/lit8 v3, p1, 0x3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->readBytes(Ljava/lang/Object;JI)V

    .line 208
    return-object v0
.end method

.method public readFloat()F
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 149
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->require(I)I

    .line 150
    sget-object v1, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    iget-wide v2, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->bufferAddress:J

    iget v4, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->position:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lsun/misc/Unsafe;->getFloat(J)F

    move-result v1

    .line 151
    .local v1, "result":F
    iget v2, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->position:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->position:I

    .line 152
    iget-object v0, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->position:I

    invoke-direct {p0, v0, v2}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->setBufferPosition(Ljava/nio/Buffer;I)V

    .line 153
    return v1
.end method

.method public readFloats(I)[F
    .locals 4
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 200
    new-array v0, p1, [F

    .line 201
    .local v0, "array":[F
    sget-wide v1, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->floatArrayBaseOffset:J

    shl-int/lit8 v3, p1, 0x2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->readBytes(Ljava/lang/Object;JI)V

    .line 202
    return-object v0
.end method

.method public readInt()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 133
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->require(I)I

    .line 134
    sget-object v1, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    iget-wide v2, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->bufferAddress:J

    iget v4, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->position:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lsun/misc/Unsafe;->getInt(J)I

    move-result v1

    .line 135
    .local v1, "result":I
    iget v2, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->position:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->position:I

    .line 136
    iget-object v0, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->position:I

    invoke-direct {p0, v0, v2}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->setBufferPosition(Ljava/nio/Buffer;I)V

    .line 137
    return v1
.end method

.method public readInts(I)[I
    .locals 4
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 188
    new-array v0, p1, [I

    .line 189
    .local v0, "array":[I
    sget-wide v1, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->intArrayBaseOffset:J

    shl-int/lit8 v3, p1, 0x2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->readBytes(Ljava/lang/Object;JI)V

    .line 190
    return-object v0
.end method

.method public readLong()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 141
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->require(I)I

    .line 142
    sget-object v1, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    iget-wide v2, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->bufferAddress:J

    iget v4, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->position:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lsun/misc/Unsafe;->getLong(J)J

    move-result-wide v1

    .line 143
    .local v1, "result":J
    iget v3, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->position:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->position:I

    .line 144
    iget-object v0, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->position:I

    invoke-direct {p0, v0, v3}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->setBufferPosition(Ljava/nio/Buffer;I)V

    .line 145
    return-wide v1
.end method

.method public readLongs(I)[J
    .locals 4
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 194
    new-array v0, p1, [J

    .line 195
    .local v0, "array":[J
    sget-wide v1, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->longArrayBaseOffset:J

    shl-int/lit8 v3, p1, 0x3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->readBytes(Ljava/lang/Object;JI)V

    .line 196
    return-object v0
.end method

.method public readShort()S
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 165
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->require(I)I

    .line 166
    sget-object v1, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    iget-wide v2, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->bufferAddress:J

    iget v4, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->position:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lsun/misc/Unsafe;->getShort(J)S

    move-result v1

    .line 167
    .local v1, "result":S
    iget v2, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->position:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->position:I

    .line 168
    iget-object v0, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->position:I

    invoke-direct {p0, v0, v2}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->setBufferPosition(Ljava/nio/Buffer;I)V

    .line 169
    return v1
.end method

.method public readShorts(I)[S
    .locals 4
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 212
    new-array v0, p1, [S

    .line 213
    .local v0, "array":[S
    sget-wide v1, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->shortArrayBaseOffset:J

    shl-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->readBytes(Ljava/lang/Object;JI)V

    .line 214
    return-object v0
.end method

.method public setBuffer(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 97
    instance-of v0, p1, Lsun/nio/ch/DirectBuffer;

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->dispose(Ljava/nio/ByteBuffer;)V

    .line 99
    :cond_0
    invoke-super {p0, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 100
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->updateBufferAddress()V

    .line 101
    return-void

    .line 97
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "buffer must be direct."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
