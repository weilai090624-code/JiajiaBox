.class abstract Lcom/google/common/hash/AbstractByteHasher;
.super Lcom/google/common/hash/AbstractHasher;
.source "AbstractByteHasher.java"


# annotations
.annotation runtime Lcom/google/common/hash/ElementTypesAreNonnullByDefault;
.end annotation


# instance fields
.field private final scratch:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>()V
    .registers 3

    .line 36
    invoke-direct {p0}, Lcom/google/common/hash/AbstractHasher;-><init>()V

    .line 37
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/hash/AbstractByteHasher;->scratch:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private update(I)Lcom/google/common/hash/Hasher;
    .registers 4
    .param p1, "bytes"    # I

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/google/common/hash/AbstractByteHasher;->scratch:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/common/hash/AbstractByteHasher;->update([BII)V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_11

    .line 71
    iget-object v0, p0, Lcom/google/common/hash/AbstractByteHasher;->scratch:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/common/hash/Java8Compatibility;->clear(Ljava/nio/Buffer;)V

    .line 72
    nop

    .line 73
    return-object p0

    .line 71
    :catchall_11
    move-exception v0

    iget-object v1, p0, Lcom/google/common/hash/AbstractByteHasher;->scratch:Ljava/nio/ByteBuffer;

    invoke-static {v1}, Lcom/google/common/hash/Java8Compatibility;->clear(Ljava/nio/Buffer;)V

    .line 72
    throw v0
.end method


# virtual methods
.method public putByte(B)Lcom/google/common/hash/Hasher;
    .registers 2
    .param p1, "b"    # B

    .line 78
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractByteHasher;->update(B)V

    .line 79
    return-object p0
.end method

.method public bridge synthetic putByte(B)Lcom/google/common/hash/PrimitiveSink;
    .registers 2

    .line 34
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractByteHasher;->putByte(B)Lcom/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public putBytes(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/Hasher;
    .registers 2
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;

    .line 98
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractByteHasher;->update(Ljava/nio/ByteBuffer;)V

    .line 99
    return-object p0
.end method

.method public putBytes([B)Lcom/google/common/hash/Hasher;
    .registers 2
    .param p1, "bytes"    # [B

    .line 84
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractByteHasher;->update([B)V

    .line 86
    return-object p0
.end method

.method public putBytes([BII)Lcom/google/common/hash/Hasher;
    .registers 6
    .param p1, "bytes"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 91
    add-int v0, p2, p3

    array-length v1, p1

    invoke-static {p2, v0, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 92
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/hash/AbstractByteHasher;->update([BII)V

    .line 93
    return-object p0
.end method

.method public bridge synthetic putBytes(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/PrimitiveSink;
    .registers 2

    .line 34
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractByteHasher;->putBytes(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic putBytes([B)Lcom/google/common/hash/PrimitiveSink;
    .registers 2

    .line 34
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractByteHasher;->putBytes([B)Lcom/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic putBytes([BII)Lcom/google/common/hash/PrimitiveSink;
    .registers 4

    .line 34
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/hash/AbstractByteHasher;->putBytes([BII)Lcom/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public putChar(C)Lcom/google/common/hash/Hasher;
    .registers 3
    .param p1, "c"    # C

    .line 122
    iget-object v0, p0, Lcom/google/common/hash/AbstractByteHasher;->scratch:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    .line 123
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/common/hash/AbstractByteHasher;->update(I)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic putChar(C)Lcom/google/common/hash/PrimitiveSink;
    .registers 2

    .line 34
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractByteHasher;->putChar(C)Lcom/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public putInt(I)Lcom/google/common/hash/Hasher;
    .registers 3
    .param p1, "i"    # I

    .line 110
    iget-object v0, p0, Lcom/google/common/hash/AbstractByteHasher;->scratch:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 111
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/common/hash/AbstractByteHasher;->update(I)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic putInt(I)Lcom/google/common/hash/PrimitiveSink;
    .registers 2

    .line 34
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractByteHasher;->putInt(I)Lcom/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public putLong(J)Lcom/google/common/hash/Hasher;
    .registers 4
    .param p1, "l"    # J

    .line 116
    iget-object v0, p0, Lcom/google/common/hash/AbstractByteHasher;->scratch:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 117
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/common/hash/AbstractByteHasher;->update(I)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic putLong(J)Lcom/google/common/hash/PrimitiveSink;
    .registers 3

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/AbstractByteHasher;->putLong(J)Lcom/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public putShort(S)Lcom/google/common/hash/Hasher;
    .registers 3
    .param p1, "s"    # S

    .line 104
    iget-object v0, p0, Lcom/google/common/hash/AbstractByteHasher;->scratch:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 105
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/common/hash/AbstractByteHasher;->update(I)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic putShort(S)Lcom/google/common/hash/PrimitiveSink;
    .registers 2

    .line 34
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractByteHasher;->putShort(S)Lcom/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method protected abstract update(B)V
.end method

.method protected update(Ljava/nio/ByteBuffer;)V
    .registers 5
    .param p1, "b"    # Ljava/nio/ByteBuffer;

    .line 56
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 57
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/common/hash/AbstractByteHasher;->update([BII)V

    .line 58
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/hash/Java8Compatibility;->position(Ljava/nio/Buffer;I)V

    goto :goto_32

    .line 60
    :cond_22
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .local v0, "remaining":I
    :goto_26
    if-lez v0, :cond_32

    .line 61
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/common/hash/AbstractByteHasher;->update(B)V

    .line 60
    add-int/lit8 v0, v0, -0x1

    goto :goto_26

    .line 64
    .end local v0    # "remaining":I
    :cond_32
    :goto_32
    return-void
.end method

.method protected update([B)V
    .registers 4
    .param p1, "b"    # [B

    .line 44
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/hash/AbstractByteHasher;->update([BII)V

    .line 45
    return-void
.end method

.method protected update([BII)V
    .registers 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 49
    move v0, p2

    .local v0, "i":I
    :goto_1
    add-int v1, p2, p3

    if-ge v0, v1, :cond_d

    .line 50
    aget-byte v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/google/common/hash/AbstractByteHasher;->update(B)V

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 52
    .end local v0    # "i":I
    :cond_d
    return-void
.end method
