.class public Lcom/esotericsoftware/kryo/io/KryoDataInput;
.super Ljava/lang/Object;
.source "KryoDataInput.java"

# interfaces
.implements Ljava/io/DataInput;
.implements Ljava/lang/AutoCloseable;


# instance fields
.field protected input:Lcom/esotericsoftware/kryo/io/Input;


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryo/io/Input;)V
    .registers 2
    .param p1, "input"    # Lcom/esotericsoftware/kryo/io/Input;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/KryoDataInput;->input:Lcom/esotericsoftware/kryo/io/Input;

    .line 36
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/KryoDataInput;->input:Lcom/esotericsoftware/kryo/io/Input;

    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/io/Input;->close()V

    .line 115
    return-void
.end method

.method public readBoolean()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/KryoDataInput;->input:Lcom/esotericsoftware/kryo/io/Input;

    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v0

    return v0
.end method

.method public readByte()B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/KryoDataInput;->input:Lcom/esotericsoftware/kryo/io/Input;

    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/io/Input;->readByte()B

    move-result v0

    return v0
.end method

.method public readChar()C
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/KryoDataInput;->input:Lcom/esotericsoftware/kryo/io/Input;

    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/io/Input;->readChar()C

    move-result v0

    return v0
.end method

.method public readDouble()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/KryoDataInput;->input:Lcom/esotericsoftware/kryo/io/Input;

    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/io/Input;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/KryoDataInput;->input:Lcom/esotericsoftware/kryo/io/Input;

    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    return v0
.end method

.method public readFully([B)V
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/esotericsoftware/kryo/io/KryoDataInput;->readFully([BII)V

    .line 44
    return-void
.end method

.method public readFully([BII)V
    .registers 7
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/KryoDataInput;->input:Lcom/esotericsoftware/kryo/io/Input;

    invoke-virtual {v0, p1, p2, p3}, Lcom/esotericsoftware/kryo/io/Input;->readBytes([BII)V
    :try_end_5
    .catch Lcom/esotericsoftware/kryo/KryoException; {:try_start_0 .. :try_end_5} :catch_7

    .line 51
    nop

    .line 52
    return-void

    .line 49
    :catch_7
    move-exception v0

    .line 50
    .local v0, "ex":Lcom/esotericsoftware/kryo/KryoException;
    new-instance v1, Ljava/io/EOFException;

    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/KryoException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readInt()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/KryoDataInput;->input:Lcom/esotericsoftware/kryo/io/Input;

    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v0

    return v0
.end method

.method public readLine()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 102
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public readLong()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/KryoDataInput;->input:Lcom/esotericsoftware/kryo/io/Input;

    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/io/Input;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readShort()S
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/KryoDataInput;->input:Lcom/esotericsoftware/kryo/io/Input;

    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/io/Input;->readShort()S

    move-result v0

    return v0
.end method

.method public readUTF()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/KryoDataInput;->input:Lcom/esotericsoftware/kryo/io/Input;

    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/io/Input;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUnsignedByte()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/KryoDataInput;->input:Lcom/esotericsoftware/kryo/io/Input;

    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/io/Input;->readByteUnsigned()I

    move-result v0

    return v0
.end method

.method public readUnsignedShort()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/KryoDataInput;->input:Lcom/esotericsoftware/kryo/io/Input;

    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/io/Input;->readShortUnsigned()I

    move-result v0

    return v0
.end method

.method public setInput(Lcom/esotericsoftware/kryo/io/Input;)V
    .registers 2
    .param p1, "input"    # Lcom/esotericsoftware/kryo/io/Input;

    .line 39
    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/KryoDataInput;->input:Lcom/esotericsoftware/kryo/io/Input;

    .line 40
    return-void
.end method

.method public skipBytes(I)I
    .registers 5
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/KryoDataInput;->input:Lcom/esotericsoftware/kryo/io/Input;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/esotericsoftware/kryo/io/Input;->skip(J)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method
