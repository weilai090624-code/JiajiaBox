.class public Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;
.super Lcom/esotericsoftware/kryo/io/Output;
.source "UnsafeOutput.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/Output;-><init>()V

    .line 42
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "bufferSize"    # I

    .line 48
    invoke-direct {p0, p1, p1}, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;-><init>(II)V

    .line 49
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "bufferSize"    # I
    .param p2, "maxBufferSize"    # I

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/io/Output;-><init>(II)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    .line 73
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/io/Output;-><init>(Ljava/io/OutputStream;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 0
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "bufferSize"    # I

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/io/Output;-><init>(Ljava/io/OutputStream;I)V

    .line 79
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "buffer"    # [B

    .line 62
    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;-><init>([BI)V

    .line 63
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0
    .param p1, "buffer"    # [B
    .param p2, "maxBufferSize"    # I

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/io/Output;-><init>([BI)V

    .line 69
    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 6
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 82
    iget v0, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->capacity:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->require(I)Z

    .line 83
    :cond_0
    sget-object v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->buffer:[B

    sget-wide v2, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->byteArrayBaseOffset:J

    iget v4, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->position:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->position:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    int-to-byte v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    .line 84
    return-void
.end method

.method public writeBoolean(Z)V
    .locals 6
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 133
    iget v0, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->capacity:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->require(I)Z

    .line 134
    :cond_0
    sget-object v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->buffer:[B

    sget-wide v2, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->byteArrayBaseOffset:J

    iget v4, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->position:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->position:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3, p1}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    .line 135
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

    .line 162
    sget-wide v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->booleanArrayBaseOffset:J

    array-length v2, p1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->writeBytes(Ljava/lang/Object;JI)V

    .line 163
    return-void
.end method

.method public writeByte(B)V
    .locals 6
    .param p1, "value"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 87
    iget v0, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->capacity:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->require(I)Z

    .line 88
    :cond_0
    sget-object v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->buffer:[B

    sget-wide v2, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->byteArrayBaseOffset:J

    iget v4, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->position:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->position:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3, p1}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    .line 89
    return-void
.end method

.method public writeByte(I)V
    .locals 6
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 92
    iget v0, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->capacity:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->require(I)Z

    .line 93
    :cond_0
    sget-object v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->buffer:[B

    sget-wide v2, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->byteArrayBaseOffset:J

    iget v4, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->position:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->position:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    int-to-byte v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    .line 94
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

    .line 171
    iget v0, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->capacity:I

    iget v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->position:I

    sub-int/2addr v0, v1

    invoke-static {v0, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 173
    .local v0, "copyCount":I
    :goto_0
    sget-object v1, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    iget-object v5, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->buffer:[B

    sget-wide v2, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->byteArrayBaseOffset:J

    iget v4, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->position:I

    int-to-long v6, v4

    add-long/2addr v6, v2

    int-to-long v8, v0

    move-object v2, p1

    move-wide v3, p2

    invoke-virtual/range {v1 .. v9}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    .line 174
    iget v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->position:I

    .line 175
    sub-int/2addr p4, v0

    .line 176
    if-nez p4, :cond_0

    .line 181
    return-void

    .line 177
    :cond_0
    int-to-long v1, v0

    add-long/2addr p2, v1

    .line 178
    iget v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->capacity:I

    invoke-static {v1, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 179
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->require(I)Z

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

    .line 166
    sget-wide v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->byteArrayBaseOffset:J

    int-to-long v2, p2

    add-long/2addr v0, v2

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->writeBytes(Ljava/lang/Object;JI)V

    .line 167
    return-void
.end method

.method public writeChar(C)V
    .locals 7
    .param p1, "value"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 127
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->require(I)Z

    .line 128
    sget-object v1, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    iget-object v2, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->buffer:[B

    sget-wide v3, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->byteArrayBaseOffset:J

    iget v5, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->position:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4, p1}, Lsun/misc/Unsafe;->putChar(Ljava/lang/Object;JC)V

    .line 129
    iget v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->position:I

    .line 130
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

    .line 158
    sget-wide v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->charArrayBaseOffset:J

    array-length v2, p1

    shl-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->writeBytes(Ljava/lang/Object;JI)V

    .line 159
    return-void
.end method

.method public writeDouble(D)V
    .locals 7
    .param p1, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 115
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->require(I)Z

    .line 116
    sget-object v1, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    iget-object v2, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->buffer:[B

    sget-wide v3, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->byteArrayBaseOffset:J

    iget v5, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->position:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    move-wide v5, p1

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putDouble(Ljava/lang/Object;JD)V

    .line 117
    iget v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->position:I

    .line 118
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

    .line 150
    sget-wide v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->doubleArrayBaseOffset:J

    array-length v2, p1

    shl-int/lit8 v2, v2, 0x3

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->writeBytes(Ljava/lang/Object;JI)V

    .line 151
    return-void
.end method

.method public writeFloat(F)V
    .locals 7
    .param p1, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 109
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->require(I)Z

    .line 110
    sget-object v1, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    iget-object v2, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->buffer:[B

    sget-wide v3, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->byteArrayBaseOffset:J

    iget v5, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->position:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4, p1}, Lsun/misc/Unsafe;->putFloat(Ljava/lang/Object;JF)V

    .line 111
    iget v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->position:I

    .line 112
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

    .line 146
    sget-wide v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->floatArrayBaseOffset:J

    array-length v2, p1

    shl-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->writeBytes(Ljava/lang/Object;JI)V

    .line 147
    return-void
.end method

.method public writeInt(I)V
    .locals 7
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 97
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->require(I)Z

    .line 98
    sget-object v1, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    iget-object v2, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->buffer:[B

    sget-wide v3, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->byteArrayBaseOffset:J

    iget v5, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->position:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4, p1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 99
    iget v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->position:I

    .line 100
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

    .line 138
    sget-wide v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->intArrayBaseOffset:J

    array-length v2, p1

    shl-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->writeBytes(Ljava/lang/Object;JI)V

    .line 139
    return-void
.end method

.method public writeLong(J)V
    .locals 7
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 103
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->require(I)Z

    .line 104
    sget-object v1, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    iget-object v2, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->buffer:[B

    sget-wide v3, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->byteArrayBaseOffset:J

    iget v5, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->position:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    move-wide v5, p1

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 105
    iget v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->position:I

    .line 106
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

    .line 142
    sget-wide v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->longArrayBaseOffset:J

    array-length v2, p1

    shl-int/lit8 v2, v2, 0x3

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->writeBytes(Ljava/lang/Object;JI)V

    .line 143
    return-void
.end method

.method public writeShort(I)V
    .locals 7
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 121
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->require(I)Z

    .line 122
    sget-object v1, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    iget-object v2, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->buffer:[B

    sget-wide v3, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->byteArrayBaseOffset:J

    iget v5, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->position:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    int-to-short v5, p1

    invoke-virtual {v1, v2, v3, v4, v5}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    .line 123
    iget v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->position:I

    .line 124
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

    .line 154
    sget-wide v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->shortArrayBaseOffset:J

    array-length v2, p1

    shl-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->writeBytes(Ljava/lang/Object;JI)V

    .line 155
    return-void
.end method
