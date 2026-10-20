.class public Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;
.super Lcom/esotericsoftware/kryo/io/ByteBufferOutput;
.source "UnsafeByteBufferOutput.java"


# instance fields
.field private bufferAddress:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;-><init>()V

    .line 50
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "bufferSize"    # I

    .line 56
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;-><init>(I)V

    .line 57
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->updateBufferAddress()V

    .line 58
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "bufferSize"    # I
    .param p2, "maxBufferSize"    # I

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;-><init>(II)V

    .line 66
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->updateBufferAddress()V

    .line 67
    return-void
.end method

.method public constructor <init>(JI)V
    .locals 1
    .param p1, "address"    # J
    .param p3, "size"    # I

    .line 84
    invoke-static {p1, p2, p3}, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->newDirectBuffer(JI)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;-><init>(Ljava/nio/ByteBuffer;)V

    .line 85
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->updateBufferAddress()V

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    .line 71
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;-><init>(Ljava/io/OutputStream;)V

    .line 72
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->updateBufferAddress()V

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 0
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "bufferSize"    # I

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;-><init>(Ljava/io/OutputStream;I)V

    .line 78
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->updateBufferAddress()V

    .line 79
    return-void
.end method

.method private setBufferPosition(Ljava/nio/Buffer;I)V
    .locals 0
    .param p1, "buffer"    # Ljava/nio/Buffer;
    .param p2, "position"    # I

    .line 118
    invoke-virtual {p1, p2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 119
    return-void
.end method

.method private updateBufferAddress()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    check-cast v0, Lsun/nio/ch/DirectBuffer;

    invoke-interface {v0}, Lsun/nio/ch/DirectBuffer;->address()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->bufferAddress:J

    .line 97
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->dispose(Ljava/nio/ByteBuffer;)V

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 114
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->bufferAddress:J

    .line 115
    return-void
.end method

.method protected require(I)Z
    .locals 3
    .param p1, "required"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 101
    .local v0, "oldBuffer":Ljava/nio/ByteBuffer;
    invoke-super {p0, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    move-result v1

    .line 102
    .local v1, "result":Z
    iget-object v2, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    if-eq v2, v0, :cond_0

    .line 103
    invoke-static {v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->dispose(Ljava/nio/ByteBuffer;)V

    .line 104
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->updateBufferAddress()V

    .line 106
    :cond_0
    return v1
.end method

.method public setBuffer(Ljava/nio/ByteBuffer;I)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "maxBufferSize"    # I

    .line 89
    instance-of v0, p1, Lsun/nio/ch/DirectBuffer;

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->dispose(Ljava/nio/ByteBuffer;)V

    .line 91
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->setBuffer(Ljava/nio/ByteBuffer;I)V

    .line 92
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->updateBufferAddress()V

    .line 93
    return-void

    .line 89
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "buffer must be direct."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write(I)V
    .locals 5
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 122
    iget v0, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->capacity:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->require(I)Z

    .line 123
    :cond_0
    sget-object v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->bufferAddress:J

    iget v3, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->position:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    int-to-byte v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->putByte(JB)V

    .line 124
    iget-object v0, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->position:I

    invoke-direct {p0, v0, v1}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->setBufferPosition(Ljava/nio/Buffer;I)V

    .line 125
    return-void
.end method

.method public writeBoolean(Z)V
    .locals 5
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 182
    iget v0, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->capacity:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->require(I)Z

    .line 183
    :cond_0
    sget-object v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->bufferAddress:J

    iget v3, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->position:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2, p1}, Lsun/misc/Unsafe;->putByte(JB)V

    .line 184
    iget-object v0, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->position:I

    invoke-direct {p0, v0, v1}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->setBufferPosition(Ljava/nio/Buffer;I)V

    .line 185
    return-void
.end method

.method public writeBooleans([ZII)V
    .locals 3
    .param p1, "array"    # [Z
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 212
    sget-wide v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->booleanArrayBaseOffset:J

    array-length v2, p1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->writeBytes(Ljava/lang/Object;JI)V

    .line 213
    return-void
.end method

.method public writeByte(B)V
    .locals 5
    .param p1, "value"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 128
    iget v0, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->capacity:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->require(I)Z

    .line 129
    :cond_0
    sget-object v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->bufferAddress:J

    iget v3, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->position:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2, p1}, Lsun/misc/Unsafe;->putByte(JB)V

    .line 130
    iget-object v0, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->position:I

    invoke-direct {p0, v0, v1}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->setBufferPosition(Ljava/nio/Buffer;I)V

    .line 131
    return-void
.end method

.method public writeByte(I)V
    .locals 5
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 134
    iget v0, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->capacity:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->require(I)Z

    .line 135
    :cond_0
    sget-object v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->bufferAddress:J

    iget v3, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->position:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    int-to-byte v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->putByte(JB)V

    .line 136
    iget-object v0, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->position:I

    invoke-direct {p0, v0, v1}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->setBufferPosition(Ljava/nio/Buffer;I)V

    .line 137
    return-void
.end method

.method public writeBytes(Ljava/lang/Object;JI)V
    .locals 10
    .param p1, "from"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 221
    iget v0, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->capacity:I

    iget v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->position:I

    sub-int/2addr v0, v1

    invoke-static {v0, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 223
    .local v0, "copyCount":I
    :goto_0
    sget-object v1, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    iget-wide v2, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->bufferAddress:J

    iget v4, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->position:I

    int-to-long v4, v4

    add-long v6, v2, v4

    int-to-long v8, v0

    const/4 v5, 0x0

    move-object v2, p1

    move-wide v3, p2

    invoke-virtual/range {v1 .. v9}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    .line 224
    iget v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->position:I

    .line 225
    sub-int/2addr p4, v0

    .line 226
    if-nez p4, :cond_0

    .line 231
    iget-object v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->position:I

    invoke-direct {p0, v1, v2}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->setBufferPosition(Ljava/nio/Buffer;I)V

    .line 232
    return-void

    .line 227
    :cond_0
    int-to-long v1, v0

    add-long/2addr p2, v1

    .line 228
    iget v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->capacity:I

    invoke-static {v1, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 229
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->require(I)Z

    goto :goto_0
.end method

.method public writeBytes([BII)V
    .locals 4
    .param p1, "array"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 216
    sget-wide v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->byteArrayBaseOffset:J

    int-to-long v2, p2

    add-long/2addr v0, v2

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->writeBytes(Ljava/lang/Object;JI)V

    .line 217
    return-void
.end method

.method public writeChar(C)V
    .locals 6
    .param p1, "value"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 175
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->require(I)Z

    .line 176
    sget-object v1, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    iget-wide v2, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->bufferAddress:J

    iget v4, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->position:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3, p1}, Lsun/misc/Unsafe;->putChar(JC)V

    .line 177
    iget v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->position:I

    .line 178
    iget-object v0, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->position:I

    invoke-direct {p0, v0, v1}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->setBufferPosition(Ljava/nio/Buffer;I)V

    .line 179
    return-void
.end method

.method public writeChars([CII)V
    .locals 3
    .param p1, "array"    # [C
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 208
    sget-wide v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->charArrayBaseOffset:J

    array-length v2, p1

    shl-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->writeBytes(Ljava/lang/Object;JI)V

    .line 209
    return-void
.end method

.method public writeDouble(D)V
    .locals 6
    .param p1, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 161
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->require(I)Z

    .line 162
    sget-object v1, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    iget-wide v2, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->bufferAddress:J

    iget v4, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->position:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3, p1, p2}, Lsun/misc/Unsafe;->putDouble(JD)V

    .line 163
    iget v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->position:I

    .line 164
    iget-object v0, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->position:I

    invoke-direct {p0, v0, v1}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->setBufferPosition(Ljava/nio/Buffer;I)V

    .line 165
    return-void
.end method

.method public writeDoubles([DII)V
    .locals 3
    .param p1, "array"    # [D
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 200
    sget-wide v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->doubleArrayBaseOffset:J

    array-length v2, p1

    shl-int/lit8 v2, v2, 0x3

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->writeBytes(Ljava/lang/Object;JI)V

    .line 201
    return-void
.end method

.method public writeFloat(F)V
    .locals 6
    .param p1, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 154
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->require(I)Z

    .line 155
    sget-object v1, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    iget-wide v2, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->bufferAddress:J

    iget v4, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->position:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3, p1}, Lsun/misc/Unsafe;->putFloat(JF)V

    .line 156
    iget v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->position:I

    .line 157
    iget-object v0, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->position:I

    invoke-direct {p0, v0, v1}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->setBufferPosition(Ljava/nio/Buffer;I)V

    .line 158
    return-void
.end method

.method public writeFloats([FII)V
    .locals 3
    .param p1, "array"    # [F
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 196
    sget-wide v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->floatArrayBaseOffset:J

    array-length v2, p1

    shl-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->writeBytes(Ljava/lang/Object;JI)V

    .line 197
    return-void
.end method

.method public writeInt(I)V
    .locals 6
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 140
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->require(I)Z

    .line 141
    sget-object v1, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    iget-wide v2, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->bufferAddress:J

    iget v4, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->position:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3, p1}, Lsun/misc/Unsafe;->putInt(JI)V

    .line 142
    iget v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->position:I

    .line 143
    iget-object v0, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->position:I

    invoke-direct {p0, v0, v1}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->setBufferPosition(Ljava/nio/Buffer;I)V

    .line 144
    return-void
.end method

.method public writeInts([III)V
    .locals 3
    .param p1, "array"    # [I
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 188
    sget-wide v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->intArrayBaseOffset:J

    array-length v2, p1

    shl-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->writeBytes(Ljava/lang/Object;JI)V

    .line 189
    return-void
.end method

.method public writeLong(J)V
    .locals 6
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 147
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->require(I)Z

    .line 148
    sget-object v1, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    iget-wide v2, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->bufferAddress:J

    iget v4, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->position:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3, p1, p2}, Lsun/misc/Unsafe;->putLong(JJ)V

    .line 149
    iget v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->position:I

    .line 150
    iget-object v0, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->position:I

    invoke-direct {p0, v0, v1}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->setBufferPosition(Ljava/nio/Buffer;I)V

    .line 151
    return-void
.end method

.method public writeLongs([JII)V
    .locals 3
    .param p1, "array"    # [J
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 192
    sget-wide v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->longArrayBaseOffset:J

    array-length v2, p1

    shl-int/lit8 v2, v2, 0x3

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->writeBytes(Ljava/lang/Object;JI)V

    .line 193
    return-void
.end method

.method public writeShort(I)V
    .locals 6
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 168
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->require(I)Z

    .line 169
    sget-object v1, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    iget-wide v2, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->bufferAddress:J

    iget v4, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->position:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    int-to-short v4, p1

    invoke-virtual {v1, v2, v3, v4}, Lsun/misc/Unsafe;->putShort(JS)V

    .line 170
    iget v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->position:I

    .line 171
    iget-object v0, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->position:I

    invoke-direct {p0, v0, v1}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->setBufferPosition(Ljava/nio/Buffer;I)V

    .line 172
    return-void
.end method

.method public writeShorts([SII)V
    .locals 3
    .param p1, "array"    # [S
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 204
    sget-wide v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->shortArrayBaseOffset:J

    array-length v2, p1

    shl-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->writeBytes(Ljava/lang/Object;JI)V

    .line 205
    return-void
.end method
