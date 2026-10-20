.class public Lcom/esotericsoftware/kryo/io/ByteBufferOutput;
.super Lcom/esotericsoftware/kryo/io/Output;
.source "ByteBufferOutput.java"


# static fields
.field private static final nativeOrder:Ljava/nio/ByteOrder;


# instance fields
.field protected byteBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sput-object v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->nativeOrder:Ljava/nio/ByteOrder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/Output;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "bufferSize"    # I

    .line 50
    invoke-direct {p0, p1, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;-><init>(II)V

    .line 51
    return-void
.end method

.method public constructor <init>(II)V
    .locals 3
    .param p1, "bufferSize"    # I
    .param p2, "maxBufferSize"    # I

    .line 57
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/Output;-><init>()V

    .line 58
    const/4 v0, -0x1

    if-lt p2, v0, :cond_1

    .line 59
    iput p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    .line 60
    if-ne p2, v0, :cond_0

    const v0, 0x7ffffff7

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->maxCapacity:I

    .line 61
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 62
    return-void

    .line 58
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxBufferSize cannot be < -1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    .line 78
    const/16 v0, 0x1000

    invoke-direct {p0, v0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;-><init>(II)V

    .line 79
    if-eqz p1, :cond_0

    .line 80
    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->outputStream:Ljava/io/OutputStream;

    .line 81
    return-void

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "outputStream cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 2
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "bufferSize"    # I

    .line 85
    invoke-direct {p0, p2, p2}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;-><init>(II)V

    .line 86
    if-eqz p1, :cond_0

    .line 87
    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->outputStream:Ljava/io/OutputStream;

    .line 88
    return-void

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "outputStream cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 65
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/Output;-><init>()V

    .line 66
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .locals 0
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "maxBufferSize"    # I

    .line 72
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/Output;-><init>()V

    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->setBuffer(Ljava/nio/ByteBuffer;I)V

    .line 74
    return-void
.end method

.method private getBufferPosition(Ljava/nio/Buffer;)I
    .locals 1
    .param p1, "buffer"    # Ljava/nio/Buffer;

    .line 170
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    return v0
.end method

.method private setBufferLimit(Ljava/nio/Buffer;I)V
    .locals 0
    .param p1, "buffer"    # Ljava/nio/Buffer;
    .param p2, "length"    # I

    .line 178
    invoke-virtual {p1, p2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 179
    return-void
.end method

.method private setBufferPosition(Ljava/nio/Buffer;I)V
    .locals 0
    .param p1, "buffer"    # Ljava/nio/Buffer;
    .param p2, "newPosition"    # I

    .line 174
    invoke-virtual {p1, p2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 175
    return-void
.end method

.method private writeAscii_slow(Ljava/lang/String;I)V
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "charCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 643
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 644
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .line 645
    .local v1, "charIndex":I
    iget v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    sub-int/2addr v2, v3

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 646
    .local v2, "charsToWrite":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 647
    new-array v3, p2, [B

    .line 648
    .local v3, "tmp":[B
    add-int v4, v1, v2

    const/4 v5, 0x0

    invoke-virtual {p1, v1, v4, v3, v5}, Ljava/lang/String;->getBytes(II[BI)V

    .line 649
    invoke-virtual {v0, v3, v5, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 650
    add-int/2addr v1, v2

    .line 651
    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 652
    sub-int v4, p2, v1

    iget v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 653
    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 654
    .end local v3    # "tmp":[B
    :cond_0
    goto :goto_0

    .line 655
    :cond_1
    return-void
.end method

.method private writeUtf8_slow(Ljava/lang/String;II)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "charCount"    # I
    .param p3, "charIndex"    # I

    .line 621
    nop

    :goto_0
    if-ge p3, p2, :cond_4

    .line 622
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    sub-int v1, p2, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 623
    :cond_0
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 624
    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 625
    .local v0, "c":I
    const/16 v2, 0x7f

    if-gt v0, v2, :cond_1

    .line 626
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    int-to-byte v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 627
    :cond_1
    const/16 v2, 0x7ff

    if-le v0, v2, :cond_2

    .line 628
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    shr-int/lit8 v2, v0, 0xc

    and-int/lit8 v2, v2, 0xf

    or-int/lit16 v2, v2, 0xe0

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 629
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 630
    iget v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 631
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    shr-int/lit8 v2, v0, 0x6

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 632
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    and-int/lit8 v2, v0, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 634
    :cond_2
    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    shr-int/lit8 v3, v0, 0x6

    and-int/lit8 v3, v3, 0x1f

    or-int/lit16 v3, v3, 0xc0

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 635
    iget v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    if-ne v2, v3, :cond_3

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 636
    :cond_3
    iget v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 637
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    and-int/lit8 v2, v0, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 621
    .end local v0    # "c":I
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 640
    :cond_4
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 221
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->flush()V

    .line 222
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->outputStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 224
    :try_start_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    goto :goto_0

    .line 225
    :catch_0
    move-exception v0

    .line 228
    :cond_0
    :goto_0
    return-void
.end method

.method public flush()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->outputStream:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    return-void

    .line 208
    :cond_0
    :try_start_0
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    new-array v0, v0, [B

    .line 209
    .local v0, "tmp":[B
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->setBufferPosition(Ljava/nio/Buffer;I)V

    .line 210
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 211
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1, v2}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->setBufferPosition(Ljava/nio/Buffer;I)V

    .line 212
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->outputStream:Ljava/io/OutputStream;

    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    .end local v0    # "tmp":[B
    nop

    .line 216
    iget-wide v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->total:J

    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    int-to-long v3, v3

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->total:J

    .line 217
    iput v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 218
    return-void

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v1, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getBuffer()[B
    .locals 2

    .line 98
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This buffer does not used a byte[], see #getByteBuffer()."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->outputStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method protected require(I)Z
    .locals 5
    .param p1, "required"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 182
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-lt v0, p1, :cond_0

    return v1

    .line 183
    :cond_0
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->flush()V

    .line 184
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    iget v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    sub-int/2addr v0, v2

    const/4 v2, 0x1

    if-lt v0, p1, :cond_1

    return v2

    .line 185
    :cond_1
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->maxCapacity:I

    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    sub-int/2addr v0, v3

    if-le p1, v0, :cond_3

    .line 186
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->maxCapacity:I

    const-string v1, ", required: "

    if-le p1, v0, :cond_2

    .line 187
    new-instance v0, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Buffer overflow. Max capacity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->maxCapacity:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_2
    new-instance v0, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Buffer overflow. Available: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->maxCapacity:I

    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_3
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    if-nez v0, :cond_4

    const/16 v0, 0x10

    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    .line 192
    :cond_4
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    mul-int/lit8 v0, v0, 0x2

    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->maxCapacity:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    .line 193
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    sub-int/2addr v0, v3

    if-lt v0, p1, :cond_4

    .line 194
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-nez v0, :cond_5

    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 195
    .local v0, "newBuffer":Ljava/nio/ByteBuffer;
    :goto_0
    iget-object v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v3, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->setBufferPosition(Ljava/nio/Buffer;I)V

    .line 196
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    invoke-direct {p0, v1, v3}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->setBufferLimit(Ljava/nio/Buffer;I)V

    .line 197
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 198
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 199
    iput-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 200
    return v2
.end method

.method public reset()V
    .locals 2

    .line 165
    invoke-super {p0}, Lcom/esotericsoftware/kryo/io/Output;->reset()V

    .line 166
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->setBufferPosition(Ljava/nio/Buffer;I)V

    .line 167
    return-void
.end method

.method public setBuffer(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 128
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->setBuffer(Ljava/nio/ByteBuffer;I)V

    .line 129
    return-void
.end method

.method public setBuffer(Ljava/nio/ByteBuffer;I)V
    .locals 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "maxBufferSize"    # I

    .line 137
    if-eqz p1, :cond_2

    .line 138
    const/4 v0, -0x1

    if-lt p2, v0, :cond_1

    .line 139
    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 140
    if-ne p2, v0, :cond_0

    const v0, 0x7ffffff7

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->maxCapacity:I

    .line 141
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    .line 142
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 143
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->total:J

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->outputStream:Ljava/io/OutputStream;

    .line 145
    return-void

    .line 138
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxBufferSize cannot be < -1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "buffer cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBuffer([B)V
    .locals 2
    .param p1, "buffer"    # [B

    .line 105
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This buffer does not used a byte[], see #setByteBuffer(ByteBuffer)."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBuffer([BI)V
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "maxBufferSize"    # I

    .line 112
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This buffer does not used a byte[], see #setByteBuffer(ByteBuffer)."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBuffer([BII)V
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .line 118
    array-length v0, p1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 119
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 120
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->setBufferPosition(Ljava/nio/Buffer;I)V

    .line 121
    array-length v1, p1

    invoke-direct {p0, v0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->setBufferLimit(Ljava/nio/Buffer;I)V

    .line 122
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 123
    return-void
.end method

.method public setPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .line 160
    iput p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 161
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->setBufferPosition(Ljava/nio/Buffer;I)V

    .line 162
    return-void
.end method

.method public toBytes()[B
    .locals 4

    .line 153
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    new-array v0, v0, [B

    .line 154
    .local v0, "newBuffer":[B
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->setBufferPosition(Ljava/nio/Buffer;I)V

    .line 155
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    invoke-virtual {v1, v0, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 156
    return-object v0
.end method

.method public write(I)V
    .locals 3
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 231
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 233
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 234
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 237
    if-eqz p1, :cond_0

    .line 238
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeBytes([BII)V

    .line 239
    return-void

    .line 237
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bytes cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write([BII)V
    .locals 0
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 242
    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeBytes([BII)V

    .line 243
    return-void
.end method

.method public writeAscii(Ljava/lang/String;)V
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 600
    const/16 v0, 0x80

    if-nez p1, :cond_0

    .line 601
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeByte(I)V

    .line 602
    return-void

    .line 604
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 605
    .local v1, "charCount":I
    if-nez v1, :cond_1

    .line 606
    const/16 v0, 0x81

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeByte(I)V

    .line 607
    return-void

    .line 609
    :cond_1
    iget v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    sub-int/2addr v2, v3

    if-ge v2, v1, :cond_2

    .line 610
    invoke-direct {p0, p1, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeAscii_slow(Ljava/lang/String;I)V

    goto :goto_1

    .line 612
    :cond_2
    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 613
    .local v2, "byteBuffer":Ljava/nio/ByteBuffer;
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .local v4, "n":I
    :goto_0
    if-ge v3, v4, :cond_3

    .line 614
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 613
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 615
    .end local v3    # "i":I
    .end local v4    # "n":I
    :cond_3
    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 617
    .end local v2    # "byteBuffer":Ljava/nio/ByteBuffer;
    :goto_1
    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    or-int/2addr v0, v4

    int-to-byte v0, v0

    invoke-virtual {v2, v3, v0}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 618
    return-void
.end method

.method public writeBoolean(Z)V
    .locals 3
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 547
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 549
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 550
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

    .line 770
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    if-lt v0, p3, :cond_1

    .line 771
    invoke-virtual {p0, p3}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 772
    add-int v0, p2, p3

    .local v0, "n":I
    :goto_0
    if-ge p2, v0, :cond_0

    .line 773
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    aget-boolean v2, p1, p2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 772
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 774
    .end local v0    # "n":I
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->getBufferPosition(Ljava/nio/Buffer;)I

    move-result v0

    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    goto :goto_2

    .line 776
    :cond_1
    add-int v0, p2, p3

    .restart local v0    # "n":I
    :goto_1
    if-ge p2, v0, :cond_2

    .line 777
    aget-boolean v1, p1, p2

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeBoolean(Z)V

    .line 776
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 779
    .end local v0    # "n":I
    :cond_2
    :goto_2
    return-void
.end method

.method public writeByte(B)V
    .locals 3
    .param p1, "value"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 248
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 250
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 251
    return-void
.end method

.method public writeByte(I)V
    .locals 3
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 254
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 256
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 257
    return-void
.end method

.method public writeBytes([B)V
    .locals 2
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 260
    if-eqz p1, :cond_0

    .line 261
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeBytes([BII)V

    .line 262
    return-void

    .line 260
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bytes cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeBytes([BII)V
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 265
    if-eqz p1, :cond_1

    .line 266
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    sub-int/2addr v0, v1

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 268
    .local v0, "copyCount":I
    :goto_0
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 269
    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 270
    sub-int/2addr p3, v0

    .line 271
    if-nez p3, :cond_0

    return-void

    .line 272
    :cond_0
    add-int/2addr p2, v0

    .line 273
    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 274
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    goto :goto_0

    .line 265
    .end local v0    # "copyCount":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bytes cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeChar(C)V
    .locals 2
    .param p1, "value"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 538
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 539
    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 540
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 541
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 542
    return-void
.end method

.method public writeChars([CII)V
    .locals 4
    .param p1, "array"    # [C
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 755
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    shl-int/lit8 v1, p3, 0x1

    if-lt v0, v1, :cond_1

    .line 756
    shl-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 757
    add-int v0, p2, p3

    .local v0, "n":I
    :goto_0
    if-ge p2, v0, :cond_0

    .line 758
    aget-char v1, p1, p2

    .line 759
    .local v1, "value":I
    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    int-to-byte v3, v1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 760
    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    ushr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 757
    .end local v1    # "value":I
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 762
    .end local v0    # "n":I
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->getBufferPosition(Ljava/nio/Buffer;)I

    move-result v0

    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    goto :goto_2

    .line 764
    :cond_1
    add-int v0, p2, p3

    .restart local v0    # "n":I
    :goto_1
    if-ge p2, v0, :cond_2

    .line 765
    aget-char v1, p1, p2

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeChar(C)V

    .line 764
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 767
    .end local v0    # "n":I
    :cond_2
    :goto_2
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

    .line 512
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 513
    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 514
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 515
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 516
    .local v2, "longValue":J
    long-to-int v4, v2

    int-to-byte v4, v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 517
    ushr-long v4, v2, v0

    long-to-int v0, v4

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 518
    const/16 v0, 0x10

    ushr-long v4, v2, v0

    long-to-int v0, v4

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 519
    const/16 v0, 0x18

    ushr-long v4, v2, v0

    long-to-int v0, v4

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 520
    const/16 v0, 0x20

    ushr-long v4, v2, v0

    long-to-int v0, v4

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 521
    const/16 v0, 0x28

    ushr-long v4, v2, v0

    long-to-int v0, v4

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 522
    const/16 v0, 0x30

    ushr-long v4, v2, v0

    long-to-int v0, v4

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 523
    const/16 v0, 0x38

    ushr-long v4, v2, v0

    long-to-int v0, v4

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 524
    return-void
.end method

.method public writeDoubles([DII)V
    .locals 6
    .param p1, "array"    # [D
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 718
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    shl-int/lit8 v1, p3, 0x3

    if-lt v0, v1, :cond_1

    .line 719
    shl-int/lit8 v0, p3, 0x3

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 720
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 721
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    add-int v1, p2, p3

    .local v1, "n":I
    :goto_0
    if-ge p2, v1, :cond_0

    .line 722
    aget-wide v2, p1, p2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 723
    .local v2, "value":J
    long-to-int v4, v2

    int-to-byte v4, v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 724
    const/16 v4, 0x8

    ushr-long v4, v2, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 725
    const/16 v4, 0x10

    ushr-long v4, v2, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 726
    const/16 v4, 0x18

    ushr-long v4, v2, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 727
    const/16 v4, 0x20

    ushr-long v4, v2, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 728
    const/16 v4, 0x28

    ushr-long v4, v2, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 729
    const/16 v4, 0x30

    ushr-long v4, v2, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 730
    const/16 v4, 0x38

    ushr-long v4, v2, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 721
    .end local v2    # "value":J
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 732
    .end local v1    # "n":I
    :cond_0
    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->getBufferPosition(Ljava/nio/Buffer;)I

    move-result v1

    iput v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 733
    .end local v0    # "byteBuffer":Ljava/nio/ByteBuffer;
    goto :goto_2

    .line 734
    :cond_1
    add-int v0, p2, p3

    .local v0, "n":I
    :goto_1
    if-ge p2, v0, :cond_2

    .line 735
    aget-wide v1, p1, p2

    invoke-virtual {p0, v1, v2}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeDouble(D)V

    .line 734
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 737
    .end local v0    # "n":I
    :cond_2
    :goto_2
    return-void
.end method

.method public writeFloat(F)V
    .locals 3
    .param p1, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 499
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 500
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 501
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    iget v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 502
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 503
    .local v0, "intValue":I
    int-to-byte v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 504
    shr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 505
    shr-int/lit8 v2, v0, 0x10

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 506
    shr-int/lit8 v2, v0, 0x18

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 507
    return-void
.end method

.method public writeFloats([FII)V
    .locals 4
    .param p1, "array"    # [F
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 700
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    shl-int/lit8 v1, p3, 0x2

    if-lt v0, v1, :cond_1

    .line 701
    shl-int/lit8 v0, p3, 0x2

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 702
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 703
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    add-int v1, p2, p3

    .local v1, "n":I
    :goto_0
    if-ge p2, v1, :cond_0

    .line 704
    aget v2, p1, p2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    .line 705
    .local v2, "value":I
    int-to-byte v3, v2

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 706
    shr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 707
    shr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 708
    shr-int/lit8 v3, v2, 0x18

    int-to-byte v3, v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 703
    .end local v2    # "value":I
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 710
    .end local v1    # "n":I
    :cond_0
    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->getBufferPosition(Ljava/nio/Buffer;)I

    move-result v1

    iput v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 711
    .end local v0    # "byteBuffer":Ljava/nio/ByteBuffer;
    goto :goto_2

    .line 712
    :cond_1
    add-int v0, p2, p3

    .local v0, "n":I
    :goto_1
    if-ge p2, v0, :cond_2

    .line 713
    aget v1, p1, p2

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeFloat(F)V

    .line 712
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 715
    .end local v0    # "n":I
    :cond_2
    :goto_2
    return-void
.end method

.method public writeInt(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 281
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 282
    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 283
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 284
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 285
    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 286
    shr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 287
    shr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 288
    return-void
.end method

.method public writeInts([III)V
    .locals 4
    .param p1, "array"    # [I
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 660
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    shl-int/lit8 v1, p3, 0x2

    if-lt v0, v1, :cond_1

    .line 661
    shl-int/lit8 v0, p3, 0x2

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 662
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 663
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    add-int v1, p2, p3

    .local v1, "n":I
    :goto_0
    if-ge p2, v1, :cond_0

    .line 664
    aget v2, p1, p2

    .line 665
    .local v2, "value":I
    int-to-byte v3, v2

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 666
    shr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 667
    shr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 668
    shr-int/lit8 v3, v2, 0x18

    int-to-byte v3, v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 663
    .end local v2    # "value":I
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 670
    .end local v1    # "n":I
    :cond_0
    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->getBufferPosition(Ljava/nio/Buffer;)I

    move-result v1

    iput v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 671
    .end local v0    # "byteBuffer":Ljava/nio/ByteBuffer;
    goto :goto_2

    .line 672
    :cond_1
    add-int v0, p2, p3

    .local v0, "n":I
    :goto_1
    if-ge p2, v0, :cond_2

    .line 673
    aget v1, p1, p2

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeInt(I)V

    .line 672
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 675
    .end local v0    # "n":I
    :cond_2
    :goto_2
    return-void
.end method

.method public writeLong(J)V
    .locals 4
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 384
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 385
    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 386
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 387
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    long-to-int v2, p1

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 388
    ushr-long v2, p1, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 389
    const/16 v0, 0x10

    ushr-long v2, p1, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 390
    const/16 v0, 0x18

    ushr-long v2, p1, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 391
    const/16 v0, 0x20

    ushr-long v2, p1, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 392
    const/16 v0, 0x28

    ushr-long v2, p1, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 393
    const/16 v0, 0x30

    ushr-long v2, p1, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 394
    const/16 v0, 0x38

    ushr-long v2, p1, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 395
    return-void
.end method

.method public writeLongs([JII)V
    .locals 6
    .param p1, "array"    # [J
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 678
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    shl-int/lit8 v1, p3, 0x3

    if-lt v0, v1, :cond_1

    .line 679
    shl-int/lit8 v0, p3, 0x3

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 680
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 681
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    add-int v1, p2, p3

    .local v1, "n":I
    :goto_0
    if-ge p2, v1, :cond_0

    .line 682
    aget-wide v2, p1, p2

    .line 683
    .local v2, "value":J
    long-to-int v4, v2

    int-to-byte v4, v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 684
    const/16 v4, 0x8

    ushr-long v4, v2, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 685
    const/16 v4, 0x10

    ushr-long v4, v2, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 686
    const/16 v4, 0x18

    ushr-long v4, v2, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 687
    const/16 v4, 0x20

    ushr-long v4, v2, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 688
    const/16 v4, 0x28

    ushr-long v4, v2, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 689
    const/16 v4, 0x30

    ushr-long v4, v2, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 690
    const/16 v4, 0x38

    ushr-long v4, v2, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 681
    .end local v2    # "value":J
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 692
    .end local v1    # "n":I
    :cond_0
    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->getBufferPosition(Ljava/nio/Buffer;)I

    move-result v1

    iput v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 693
    .end local v0    # "byteBuffer":Ljava/nio/ByteBuffer;
    goto :goto_2

    .line 694
    :cond_1
    add-int v0, p2, p3

    .local v0, "n":I
    :goto_1
    if-ge p2, v0, :cond_2

    .line 695
    aget-wide v1, p1, p2

    invoke-virtual {p0, v1, v2}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeLong(J)V

    .line 694
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 697
    .end local v0    # "n":I
    :cond_2
    :goto_2
    return-void
.end method

.method public writeShort(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 529
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 530
    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 531
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 532
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 533
    return-void
.end method

.method public writeShorts([SII)V
    .locals 4
    .param p1, "array"    # [S
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 740
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    shl-int/lit8 v1, p3, 0x1

    if-lt v0, v1, :cond_1

    .line 741
    shl-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 742
    add-int v0, p2, p3

    .local v0, "n":I
    :goto_0
    if-ge p2, v0, :cond_0

    .line 743
    aget-short v1, p1, p2

    .line 744
    .local v1, "value":I
    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    int-to-byte v3, v1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 745
    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    ushr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 742
    .end local v1    # "value":I
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 747
    .end local v0    # "n":I
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->getBufferPosition(Ljava/nio/Buffer;)I

    move-result v0

    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    goto :goto_2

    .line 749
    :cond_1
    add-int v0, p2, p3

    .restart local v0    # "n":I
    :goto_1
    if-ge p2, v0, :cond_2

    .line 750
    aget-short v1, p1, p2

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeShort(I)V

    .line 749
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 752
    .end local v0    # "n":I
    :cond_2
    :goto_2
    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 7
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 555
    const/16 v0, 0x80

    if-nez p1, :cond_0

    .line 556
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeByte(I)V

    .line 557
    return-void

    .line 559
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 560
    .local v1, "charCount":I
    if-nez v1, :cond_1

    .line 561
    const/16 v0, 0x81

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeByte(I)V

    .line 562
    return-void

    .line 566
    :cond_1
    const/16 v2, 0x7f

    const/4 v3, 0x1

    if-le v1, v3, :cond_6

    const/16 v4, 0x20

    if-gt v1, v4, :cond_6

    .line 567
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_3

    .line 568
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-le v5, v2, :cond_2

    goto :goto_3

    .line 567
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 569
    .end local v4    # "i":I
    :cond_3
    iget v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    sub-int/2addr v2, v4

    if-ge v2, v1, :cond_4

    .line 570
    invoke-direct {p0, p1, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeAscii_slow(Ljava/lang/String;I)V

    goto :goto_2

    .line 572
    :cond_4
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .local v4, "n":I
    :goto_1
    if-ge v2, v4, :cond_5

    .line 573
    iget-object v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    int-to-byte v6, v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 572
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 574
    .end local v2    # "i":I
    .end local v4    # "n":I
    :cond_5
    iget v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 576
    :goto_2
    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    sub-int/2addr v4, v3

    iget-object v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v6, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    sub-int/2addr v6, v3

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    or-int/2addr v0, v3

    int-to-byte v0, v0

    invoke-virtual {v2, v4, v0}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 577
    return-void

    .line 579
    :cond_6
    :goto_3
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v3, v0, v3}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeVarIntFlag(ZIZ)I

    .line 580
    const/4 v0, 0x0

    .line 581
    .local v0, "charIndex":I
    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    sub-int/2addr v3, v4

    if-lt v3, v1, :cond_9

    .line 583
    iget-object v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 585
    .local v3, "byteBuffer":Ljava/nio/ByteBuffer;
    :goto_4
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 586
    .local v4, "c":I
    if-le v4, v2, :cond_7

    .line 594
    .end local v4    # "c":I
    invoke-direct {p0, v3}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->getBufferPosition(Ljava/nio/Buffer;)I

    move-result v2

    iput v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    goto :goto_5

    .line 587
    .restart local v4    # "c":I
    :cond_7
    int-to-byte v5, v4

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 588
    add-int/lit8 v0, v0, 0x1

    .line 589
    if-ne v0, v1, :cond_8

    .line 590
    invoke-direct {p0, v3}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->getBufferPosition(Ljava/nio/Buffer;)I

    move-result v2

    iput v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 591
    return-void

    .line 593
    .end local v4    # "c":I
    :cond_8
    goto :goto_4

    .line 596
    .end local v3    # "byteBuffer":Ljava/nio/ByteBuffer;
    :cond_9
    :goto_5
    if-ge v0, v1, :cond_a

    invoke-direct {p0, p1, v1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeUtf8_slow(Ljava/lang/String;II)V

    .line 597
    :cond_a
    return-void
.end method

.method public writeVarInt(IZ)I
    .locals 3
    .param p1, "value"    # I
    .param p2, "optimizePositive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 291
    if-nez p2, :cond_0

    shl-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p1, 0x1f

    xor-int p1, v0, v1

    .line 292
    :cond_0
    ushr-int/lit8 v0, p1, 0x7

    if-nez v0, :cond_2

    .line 293
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 294
    :cond_1
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 295
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 296
    return v2

    .line 298
    :cond_2
    ushr-int/lit8 v0, p1, 0xe

    if-nez v0, :cond_3

    .line 299
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 300
    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 301
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 302
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    ushr-int/lit8 v2, p1, 0x7

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 303
    return v0

    .line 305
    :cond_3
    ushr-int/lit8 v0, p1, 0x15

    if-nez v0, :cond_4

    .line 306
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 307
    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 308
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 309
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 310
    ushr-int/lit8 v2, p1, 0x7

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 311
    ushr-int/lit8 v2, p1, 0xe

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 312
    return v0

    .line 314
    .end local v1    # "byteBuffer":Ljava/nio/ByteBuffer;
    :cond_4
    ushr-int/lit8 v0, p1, 0x1c

    if-nez v0, :cond_5

    .line 315
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 316
    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 317
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 318
    .restart local v1    # "byteBuffer":Ljava/nio/ByteBuffer;
    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 319
    ushr-int/lit8 v2, p1, 0x7

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 320
    ushr-int/lit8 v2, p1, 0xe

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 321
    ushr-int/lit8 v2, p1, 0x15

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 322
    return v0

    .line 324
    .end local v1    # "byteBuffer":Ljava/nio/ByteBuffer;
    :cond_5
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 325
    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 326
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 327
    .restart local v1    # "byteBuffer":Ljava/nio/ByteBuffer;
    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 328
    ushr-int/lit8 v2, p1, 0x7

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 329
    ushr-int/lit8 v2, p1, 0xe

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 330
    ushr-int/lit8 v2, p1, 0x15

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 331
    ushr-int/lit8 v2, p1, 0x1c

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 332
    return v0
.end method

.method public writeVarIntFlag(ZIZ)I
    .locals 5
    .param p1, "flag"    # Z
    .param p2, "value"    # I
    .param p3, "optimizePositive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 336
    if-nez p3, :cond_0

    shl-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p2, 0x1f

    xor-int p2, v0, v1

    .line 337
    :cond_0
    and-int/lit8 v0, p2, 0x3f

    const/16 v1, 0x80

    if-eqz p1, :cond_1

    const/16 v2, 0x80

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    or-int/2addr v0, v2

    .line 338
    .local v0, "first":I
    ushr-int/lit8 v2, p2, 0x6

    if-nez v2, :cond_3

    .line 339
    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    iget v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    const/4 v3, 0x1

    if-ne v1, v2, :cond_2

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 340
    :cond_2
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    int-to-byte v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 341
    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 342
    return v3

    .line 344
    :cond_3
    ushr-int/lit8 v2, p2, 0xd

    if-nez v2, :cond_4

    .line 345
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 346
    iget v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 347
    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    or-int/lit8 v3, v0, 0x40

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 348
    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    ushr-int/lit8 v3, p2, 0x6

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 349
    return v1

    .line 351
    :cond_4
    ushr-int/lit8 v2, p2, 0x14

    if-nez v2, :cond_5

    .line 352
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 353
    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 354
    iget-object v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 355
    .local v3, "byteBuffer":Ljava/nio/ByteBuffer;
    or-int/lit8 v4, v0, 0x40

    int-to-byte v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 356
    ushr-int/lit8 v4, p2, 0x6

    or-int/2addr v1, v4

    int-to-byte v1, v1

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 357
    ushr-int/lit8 v1, p2, 0xd

    int-to-byte v1, v1

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 358
    return v2

    .line 360
    .end local v3    # "byteBuffer":Ljava/nio/ByteBuffer;
    :cond_5
    ushr-int/lit8 v2, p2, 0x1b

    if-nez v2, :cond_6

    .line 361
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 362
    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 363
    iget-object v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 364
    .restart local v3    # "byteBuffer":Ljava/nio/ByteBuffer;
    or-int/lit8 v4, v0, 0x40

    int-to-byte v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 365
    ushr-int/lit8 v4, p2, 0x6

    or-int/2addr v4, v1

    int-to-byte v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 366
    ushr-int/lit8 v4, p2, 0xd

    or-int/2addr v1, v4

    int-to-byte v1, v1

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 367
    ushr-int/lit8 v1, p2, 0x14

    int-to-byte v1, v1

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 368
    return v2

    .line 370
    .end local v3    # "byteBuffer":Ljava/nio/ByteBuffer;
    :cond_6
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 371
    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 372
    iget-object v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 373
    .restart local v3    # "byteBuffer":Ljava/nio/ByteBuffer;
    or-int/lit8 v4, v0, 0x40

    int-to-byte v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 374
    ushr-int/lit8 v4, p2, 0x6

    or-int/2addr v4, v1

    int-to-byte v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 375
    ushr-int/lit8 v4, p2, 0xd

    or-int/2addr v4, v1

    int-to-byte v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 376
    ushr-int/lit8 v4, p2, 0x14

    or-int/2addr v1, v4

    int-to-byte v1, v1

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 377
    ushr-int/lit8 v1, p2, 0x1b

    int-to-byte v1, v1

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 378
    return v2
.end method

.method public writeVarLong(JZ)I
    .locals 20
    .param p1, "value"    # J
    .param p3, "optimizePositive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 398
    move-object/from16 v0, p0

    const/4 v1, 0x1

    if-nez p3, :cond_0

    shl-long v2, p1, v1

    const/16 v4, 0x3f

    shr-long v4, p1, v4

    xor-long/2addr v2, v4

    .end local p1    # "value":J
    .local v2, "value":J
    goto :goto_0

    .end local v2    # "value":J
    .restart local p1    # "value":J
    :cond_0
    move-wide/from16 v2, p1

    .line 399
    .end local p1    # "value":J
    .restart local v2    # "value":J
    :goto_0
    const/4 v4, 0x7

    ushr-long v5, v2, v4

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-nez v9, :cond_2

    .line 400
    iget v4, v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    iget v5, v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    if-ne v4, v5, :cond_1

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 401
    :cond_1
    iget v4, v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr v4, v1

    iput v4, v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 402
    iget-object v4, v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    long-to-int v5, v2

    int-to-byte v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 403
    return v1

    .line 405
    :cond_2
    const/16 v1, 0xe

    ushr-long v5, v2, v1

    const-wide/16 v9, 0x7f

    const-wide/16 v11, 0x80

    cmp-long v13, v5, v7

    if-nez v13, :cond_3

    .line 406
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 407
    iget v5, v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr v5, v1

    iput v5, v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 408
    iget-object v5, v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    and-long v6, v2, v9

    or-long/2addr v6, v11

    long-to-int v7, v6

    int-to-byte v6, v7

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 409
    iget-object v5, v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    ushr-long v6, v2, v4

    long-to-int v4, v6

    int-to-byte v4, v4

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 410
    return v1

    .line 412
    :cond_3
    const/16 v5, 0x15

    ushr-long v13, v2, v5

    cmp-long v6, v13, v7

    if-nez v6, :cond_4

    .line 413
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 414
    iget v6, v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr v6, v5

    iput v6, v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 415
    iget-object v6, v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 416
    .local v6, "byteBuffer":Ljava/nio/ByteBuffer;
    and-long v7, v2, v9

    or-long/2addr v7, v11

    long-to-int v8, v7

    int-to-byte v7, v8

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 417
    ushr-long v7, v2, v4

    or-long/2addr v7, v11

    long-to-int v4, v7

    int-to-byte v4, v4

    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 418
    ushr-long v7, v2, v1

    long-to-int v1, v7

    int-to-byte v1, v1

    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 419
    return v5

    .line 421
    .end local v6    # "byteBuffer":Ljava/nio/ByteBuffer;
    :cond_4
    const/16 v6, 0x1c

    ushr-long v13, v2, v6

    cmp-long v15, v13, v7

    if-nez v15, :cond_5

    .line 422
    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 423
    iget v7, v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr v7, v6

    iput v7, v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 424
    iget-object v7, v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 425
    .local v7, "byteBuffer":Ljava/nio/ByteBuffer;
    and-long v8, v2, v9

    or-long/2addr v8, v11

    long-to-int v9, v8

    int-to-byte v8, v9

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 426
    ushr-long v8, v2, v4

    or-long/2addr v8, v11

    long-to-int v4, v8

    int-to-byte v4, v4

    invoke-virtual {v7, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 427
    ushr-long v8, v2, v1

    or-long/2addr v8, v11

    long-to-int v1, v8

    int-to-byte v1, v1

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 428
    ushr-long v4, v2, v5

    long-to-int v1, v4

    int-to-byte v1, v1

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 429
    return v6

    .line 431
    .end local v7    # "byteBuffer":Ljava/nio/ByteBuffer;
    :cond_5
    const/16 v13, 0x23

    ushr-long v14, v2, v13

    cmp-long v16, v14, v7

    if-nez v16, :cond_6

    .line 432
    const/4 v7, 0x5

    invoke-virtual {v0, v7}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 433
    iget v8, v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr v8, v7

    iput v8, v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 434
    iget-object v8, v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 435
    .local v8, "byteBuffer":Ljava/nio/ByteBuffer;
    and-long/2addr v9, v2

    or-long/2addr v9, v11

    long-to-int v10, v9

    int-to-byte v9, v10

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 436
    ushr-long v9, v2, v4

    or-long/2addr v9, v11

    long-to-int v4, v9

    int-to-byte v4, v4

    invoke-virtual {v8, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 437
    ushr-long v9, v2, v1

    or-long/2addr v9, v11

    long-to-int v1, v9

    int-to-byte v1, v1

    invoke-virtual {v8, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 438
    ushr-long v4, v2, v5

    or-long/2addr v4, v11

    long-to-int v1, v4

    int-to-byte v1, v1

    invoke-virtual {v8, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 439
    ushr-long v4, v2, v6

    long-to-int v1, v4

    int-to-byte v1, v1

    invoke-virtual {v8, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 440
    return v7

    .line 442
    .end local v8    # "byteBuffer":Ljava/nio/ByteBuffer;
    :cond_6
    const/16 v14, 0x2a

    ushr-long v15, v2, v14

    cmp-long v17, v15, v7

    if-nez v17, :cond_7

    .line 443
    const/4 v7, 0x6

    invoke-virtual {v0, v7}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 444
    iget v8, v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr v8, v7

    iput v8, v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 445
    iget-object v8, v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 446
    .restart local v8    # "byteBuffer":Ljava/nio/ByteBuffer;
    and-long/2addr v9, v2

    or-long/2addr v9, v11

    long-to-int v10, v9

    int-to-byte v9, v10

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 447
    ushr-long v9, v2, v4

    or-long/2addr v9, v11

    long-to-int v4, v9

    int-to-byte v4, v4

    invoke-virtual {v8, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 448
    ushr-long v9, v2, v1

    or-long/2addr v9, v11

    long-to-int v1, v9

    int-to-byte v1, v1

    invoke-virtual {v8, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 449
    ushr-long v4, v2, v5

    or-long/2addr v4, v11

    long-to-int v1, v4

    int-to-byte v1, v1

    invoke-virtual {v8, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 450
    ushr-long v4, v2, v6

    or-long/2addr v4, v11

    long-to-int v1, v4

    int-to-byte v1, v1

    invoke-virtual {v8, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 451
    ushr-long v4, v2, v13

    long-to-int v1, v4

    int-to-byte v1, v1

    invoke-virtual {v8, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 452
    return v7

    .line 454
    .end local v8    # "byteBuffer":Ljava/nio/ByteBuffer;
    :cond_7
    const/16 v15, 0x31

    ushr-long v16, v2, v15

    cmp-long v18, v16, v7

    if-nez v18, :cond_8

    .line 455
    invoke-virtual {v0, v4}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 456
    iget v7, v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr v7, v4

    iput v7, v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 457
    iget-object v7, v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 458
    .restart local v7    # "byteBuffer":Ljava/nio/ByteBuffer;
    and-long v8, v2, v9

    or-long/2addr v8, v11

    long-to-int v9, v8

    int-to-byte v8, v9

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 459
    ushr-long v8, v2, v4

    or-long/2addr v8, v11

    long-to-int v9, v8

    int-to-byte v8, v9

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 460
    ushr-long v8, v2, v1

    or-long/2addr v8, v11

    long-to-int v1, v8

    int-to-byte v1, v1

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 461
    ushr-long v8, v2, v5

    or-long/2addr v8, v11

    long-to-int v1, v8

    int-to-byte v1, v1

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 462
    ushr-long v5, v2, v6

    or-long/2addr v5, v11

    long-to-int v1, v5

    int-to-byte v1, v1

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 463
    ushr-long v5, v2, v13

    or-long/2addr v5, v11

    long-to-int v1, v5

    int-to-byte v1, v1

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 464
    ushr-long v5, v2, v14

    long-to-int v1, v5

    int-to-byte v1, v1

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 465
    return v4

    .line 467
    .end local v7    # "byteBuffer":Ljava/nio/ByteBuffer;
    :cond_8
    const/16 v16, 0x38

    ushr-long v17, v2, v16

    cmp-long v19, v17, v7

    if-nez v19, :cond_9

    .line 468
    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 469
    iget v8, v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr v8, v7

    iput v8, v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 470
    iget-object v8, v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 471
    .restart local v8    # "byteBuffer":Ljava/nio/ByteBuffer;
    and-long/2addr v9, v2

    or-long/2addr v9, v11

    long-to-int v10, v9

    int-to-byte v9, v10

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 472
    ushr-long v9, v2, v4

    or-long/2addr v9, v11

    long-to-int v4, v9

    int-to-byte v4, v4

    invoke-virtual {v8, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 473
    ushr-long v9, v2, v1

    or-long/2addr v9, v11

    long-to-int v1, v9

    int-to-byte v1, v1

    invoke-virtual {v8, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 474
    ushr-long v4, v2, v5

    or-long/2addr v4, v11

    long-to-int v1, v4

    int-to-byte v1, v1

    invoke-virtual {v8, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 475
    ushr-long v4, v2, v6

    or-long/2addr v4, v11

    long-to-int v1, v4

    int-to-byte v1, v1

    invoke-virtual {v8, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 476
    ushr-long v4, v2, v13

    or-long/2addr v4, v11

    long-to-int v1, v4

    int-to-byte v1, v1

    invoke-virtual {v8, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 477
    ushr-long v4, v2, v14

    or-long/2addr v4, v11

    long-to-int v1, v4

    int-to-byte v1, v1

    invoke-virtual {v8, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 478
    ushr-long v4, v2, v15

    long-to-int v1, v4

    int-to-byte v1, v1

    invoke-virtual {v8, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 479
    return v7

    .line 481
    .end local v8    # "byteBuffer":Ljava/nio/ByteBuffer;
    :cond_9
    const/16 v7, 0x9

    invoke-virtual {v0, v7}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 482
    iget v8, v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr v8, v7

    iput v8, v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 483
    iget-object v8, v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 484
    .restart local v8    # "byteBuffer":Ljava/nio/ByteBuffer;
    and-long/2addr v9, v2

    or-long/2addr v9, v11

    long-to-int v10, v9

    int-to-byte v9, v10

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 485
    ushr-long v9, v2, v4

    or-long/2addr v9, v11

    long-to-int v4, v9

    int-to-byte v4, v4

    invoke-virtual {v8, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 486
    ushr-long v9, v2, v1

    or-long/2addr v9, v11

    long-to-int v1, v9

    int-to-byte v1, v1

    invoke-virtual {v8, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 487
    ushr-long v4, v2, v5

    or-long/2addr v4, v11

    long-to-int v1, v4

    int-to-byte v1, v1

    invoke-virtual {v8, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 488
    ushr-long v4, v2, v6

    or-long/2addr v4, v11

    long-to-int v1, v4

    int-to-byte v1, v1

    invoke-virtual {v8, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 489
    ushr-long v4, v2, v13

    or-long/2addr v4, v11

    long-to-int v1, v4

    int-to-byte v1, v1

    invoke-virtual {v8, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 490
    ushr-long v4, v2, v14

    or-long/2addr v4, v11

    long-to-int v1, v4

    int-to-byte v1, v1

    invoke-virtual {v8, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 491
    ushr-long v4, v2, v15

    or-long/2addr v4, v11

    long-to-int v1, v4

    int-to-byte v1, v1

    invoke-virtual {v8, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 492
    ushr-long v4, v2, v16

    long-to-int v1, v4

    int-to-byte v1, v1

    invoke-virtual {v8, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 493
    return v7
.end method
