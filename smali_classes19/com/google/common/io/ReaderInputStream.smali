.class final Lcom/google/common/io/ReaderInputStream;
.super Ljava/io/InputStream;
.source "ReaderInputStream.java"


# annotations
.annotation runtime Lcom/google/common/io/ElementTypesAreNonnullByDefault;
.end annotation


# instance fields
.field private byteBuffer:Ljava/nio/ByteBuffer;

.field private charBuffer:Ljava/nio/CharBuffer;

.field private doneFlushing:Z

.field private draining:Z

.field private final encoder:Ljava/nio/charset/CharsetEncoder;

.field private endOfInput:Z

.field private final reader:Ljava/io/Reader;

.field private final singleByte:[B


# direct methods
.method constructor <init>(Ljava/io/Reader;Ljava/nio/charset/Charset;I)V
    .registers 6
    .param p1, "reader"    # Ljava/io/Reader;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "bufferSize"    # I

    .line 83
    nop

    .line 86
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 87
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 88
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    .line 83
    invoke-direct {p0, p1, v0, p3}, Lcom/google/common/io/ReaderInputStream;-><init>(Ljava/io/Reader;Ljava/nio/charset/CharsetEncoder;I)V

    .line 90
    return-void
.end method

.method constructor <init>(Ljava/io/Reader;Ljava/nio/charset/CharsetEncoder;I)V
    .registers 6
    .param p1, "reader"    # Ljava/io/Reader;
    .param p2, "encoder"    # Ljava/nio/charset/CharsetEncoder;
    .param p3, "bufferSize"    # I

    .line 101
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 51
    const/4 v0, 0x1

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/google/common/io/ReaderInputStream;->singleByte:[B

    .line 102
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Reader;

    iput-object v1, p0, Lcom/google/common/io/ReaderInputStream;->reader:Ljava/io/Reader;

    .line 103
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/charset/CharsetEncoder;

    iput-object v1, p0, Lcom/google/common/io/ReaderInputStream;->encoder:Ljava/nio/charset/CharsetEncoder;

    .line 104
    if-lez p3, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    const-string v1, "bufferSize must be positive: %s"

    invoke-static {v0, v1, p3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 105
    invoke-virtual {p2}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    .line 107
    invoke-static {p3}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/io/ReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    .line 108
    iget-object v0, p0, Lcom/google/common/io/ReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    invoke-static {v0}, Lcom/google/common/io/Java8Compatibility;->flip(Ljava/nio/Buffer;)V

    .line 110
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/io/ReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 111
    return-void
.end method

.method private static availableCapacity(Ljava/nio/Buffer;)I
    .registers 3
    .param p0, "buffer"    # Ljava/nio/Buffer;

    .line 230
    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private drain([BII)I
    .registers 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 252
    iget-object v0, p0, Lcom/google/common/io/ReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 253
    .local v0, "remaining":I
    iget-object v1, p0, Lcom/google/common/io/ReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 254
    return v0
.end method

.method private static grow(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;
    .registers 4
    .param p0, "buf"    # Ljava/nio/CharBuffer;

    .line 191
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v0

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v0

    .line 192
    .local v0, "copy":[C
    invoke-static {v0}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 193
    .local v1, "bigger":Ljava/nio/CharBuffer;
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/common/io/Java8Compatibility;->position(Ljava/nio/Buffer;I)V

    .line 194
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->limit()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/common/io/Java8Compatibility;->limit(Ljava/nio/Buffer;I)V

    .line 195
    return-object v1
.end method

.method private readMoreChars()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/google/common/io/ReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    invoke-static {v0}, Lcom/google/common/io/ReaderInputStream;->availableCapacity(Ljava/nio/Buffer;)I

    move-result v0

    if-nez v0, :cond_22

    .line 209
    iget-object v0, p0, Lcom/google/common/io/ReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    if-lez v0, :cond_1a

    .line 211
    iget-object v0, p0, Lcom/google/common/io/ReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->compact()Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/io/Java8Compatibility;->flip(Ljava/nio/Buffer;)V

    goto :goto_22

    .line 214
    :cond_1a
    iget-object v0, p0, Lcom/google/common/io/ReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    invoke-static {v0}, Lcom/google/common/io/ReaderInputStream;->grow(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/io/ReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    .line 219
    :cond_22
    :goto_22
    iget-object v0, p0, Lcom/google/common/io/ReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->limit()I

    move-result v0

    .line 220
    .local v0, "limit":I
    iget-object v1, p0, Lcom/google/common/io/ReaderInputStream;->reader:Ljava/io/Reader;

    iget-object v2, p0, Lcom/google/common/io/ReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/io/ReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    invoke-static {v3}, Lcom/google/common/io/ReaderInputStream;->availableCapacity(Ljava/nio/Buffer;)I

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/Reader;->read([CII)I

    move-result v1

    .line 221
    .local v1, "numChars":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_41

    .line 222
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/common/io/ReaderInputStream;->endOfInput:Z

    goto :goto_48

    .line 224
    :cond_41
    iget-object v2, p0, Lcom/google/common/io/ReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    add-int v3, v0, v1

    invoke-static {v2, v3}, Lcom/google/common/io/Java8Compatibility;->limit(Ljava/nio/Buffer;I)V

    .line 226
    :goto_48
    return-void
.end method

.method private startDraining(Z)V
    .registers 3
    .param p1, "overflow"    # Z

    .line 239
    iget-object v0, p0, Lcom/google/common/io/ReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/common/io/Java8Compatibility;->flip(Ljava/nio/Buffer;)V

    .line 240
    if-eqz p1, :cond_1e

    iget-object v0, p0, Lcom/google/common/io/ReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-nez v0, :cond_1e

    .line 241
    iget-object v0, p0, Lcom/google/common/io/ReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/io/ReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    goto :goto_21

    .line 243
    :cond_1e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/io/ReaderInputStream;->draining:Z

    .line 245
    :goto_21
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/google/common/io/ReaderInputStream;->reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 116
    return-void
.end method

.method public read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/google/common/io/ReaderInputStream;->singleByte:[B

    invoke-virtual {p0, v0}, Lcom/google/common/io/ReaderInputStream;->read([B)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lcom/google/common/io/ReaderInputStream;->singleByte:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v0

    goto :goto_14

    :cond_13
    const/4 v0, -0x1

    :goto_14
    return v0
.end method

.method public read([BII)I
    .registers 11
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    add-int v0, p2, p3

    array-length v1, p1

    invoke-static {p2, v0, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 129
    const/4 v0, 0x0

    if-nez p3, :cond_a

    .line 130
    return v0

    .line 134
    :cond_a
    const/4 v1, 0x0

    .line 135
    .local v1, "totalBytesRead":I
    iget-boolean v2, p0, Lcom/google/common/io/ReaderInputStream;->endOfInput:Z

    .line 141
    .local v2, "doneEncoding":Z
    :goto_d
    iget-boolean v3, p0, Lcom/google/common/io/ReaderInputStream;->draining:Z

    if-eqz v3, :cond_2f

    .line 142
    add-int v3, p2, v1

    sub-int v4, p3, v1

    invoke-direct {p0, p1, v3, v4}, Lcom/google/common/io/ReaderInputStream;->drain([BII)I

    move-result v3

    add-int/2addr v1, v3

    .line 143
    if-eq v1, p3, :cond_29

    iget-boolean v3, p0, Lcom/google/common/io/ReaderInputStream;->doneFlushing:Z

    if-eqz v3, :cond_21

    goto :goto_29

    .line 146
    :cond_21
    iput-boolean v0, p0, Lcom/google/common/io/ReaderInputStream;->draining:Z

    .line 147
    iget-object v3, p0, Lcom/google/common/io/ReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v3}, Lcom/google/common/io/Java8Compatibility;->clear(Ljava/nio/Buffer;)V

    goto :goto_2f

    .line 144
    :cond_29
    :goto_29
    if-lez v1, :cond_2d

    move v0, v1

    goto :goto_2e

    :cond_2d
    const/4 v0, -0x1

    :goto_2e
    return v0

    .line 154
    :cond_2f
    :goto_2f
    iget-boolean v3, p0, Lcom/google/common/io/ReaderInputStream;->doneFlushing:Z

    if-eqz v3, :cond_36

    .line 155
    sget-object v3, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    .local v3, "result":Ljava/nio/charset/CoderResult;
    goto :goto_4d

    .line 156
    .end local v3    # "result":Ljava/nio/charset/CoderResult;
    :cond_36
    if-eqz v2, :cond_41

    .line 157
    iget-object v3, p0, Lcom/google/common/io/ReaderInputStream;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v4, p0, Lcom/google/common/io/ReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v3

    .restart local v3    # "result":Ljava/nio/charset/CoderResult;
    goto :goto_4d

    .line 159
    .end local v3    # "result":Ljava/nio/charset/CoderResult;
    :cond_41
    iget-object v3, p0, Lcom/google/common/io/ReaderInputStream;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v4, p0, Lcom/google/common/io/ReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    iget-object v5, p0, Lcom/google/common/io/ReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-boolean v6, p0, Lcom/google/common/io/ReaderInputStream;->endOfInput:Z

    invoke-virtual {v3, v4, v5, v6}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v3

    .line 162
    .restart local v3    # "result":Ljava/nio/charset/CoderResult;
    :goto_4d
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_58

    .line 164
    invoke-direct {p0, v5}, Lcom/google/common/io/ReaderInputStream;->startDraining(Z)V

    .line 165
    goto :goto_d

    .line 166
    :cond_58
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v4

    if-eqz v4, :cond_70

    .line 171
    if-eqz v2, :cond_66

    .line 172
    iput-boolean v5, p0, Lcom/google/common/io/ReaderInputStream;->doneFlushing:Z

    .line 173
    invoke-direct {p0, v0}, Lcom/google/common/io/ReaderInputStream;->startDraining(Z)V

    .line 174
    goto :goto_d

    .line 175
    :cond_66
    iget-boolean v4, p0, Lcom/google/common/io/ReaderInputStream;->endOfInput:Z

    if-eqz v4, :cond_6c

    .line 176
    const/4 v2, 0x1

    goto :goto_7a

    .line 178
    :cond_6c
    invoke-direct {p0}, Lcom/google/common/io/ReaderInputStream;->readMoreChars()V

    goto :goto_7a

    .line 180
    :cond_70
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v4

    if-eqz v4, :cond_7a

    .line 182
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 183
    return v0

    .line 185
    .end local v3    # "result":Ljava/nio/charset/CoderResult;
    :cond_7a
    :goto_7a
    goto :goto_2f
.end method
