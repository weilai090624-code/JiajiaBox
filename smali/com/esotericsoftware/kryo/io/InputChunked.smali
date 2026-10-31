.class public Lcom/esotericsoftware/kryo/io/InputChunked;
.super Lcom/esotericsoftware/kryo/io/Input;
.source "InputChunked.java"


# instance fields
.field private chunkSize:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/Input;-><init>()V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->chunkSize:I

    .line 37
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "bufferSize"    # I

    .line 41
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/io/Input;-><init>(I)V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->chunkSize:I

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 46
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/io/Input;-><init>(Ljava/io/InputStream;)V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->chunkSize:I

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 4
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "bufferSize"    # I

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/io/Input;-><init>(Ljava/io/InputStream;I)V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->chunkSize:I

    .line 52
    return-void
.end method

.method private readChunkSize()Z
    .registers 8

    .line 83
    :try_start_0
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/InputChunked;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 84
    .local v0, "inputStream":Ljava/io/InputStream;
    const/4 v1, 0x0

    .local v1, "offset":I
    const/4 v2, 0x0

    .local v2, "result":I
    :goto_6
    const/16 v3, 0x20

    if-ge v1, v3, :cond_44

    .line 85
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 86
    .local v3, "b":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_13

    const/4 v4, 0x0

    return v4

    .line 87
    :cond_13
    and-int/lit8 v4, v3, 0x7f

    shl-int/2addr v4, v1

    or-int/2addr v2, v4

    .line 88
    and-int/lit16 v4, v3, 0x80

    if-nez v4, :cond_41

    .line 89
    iput v2, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->chunkSize:I

    .line 90
    sget-boolean v4, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v4, :cond_3f

    iget v4, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->chunkSize:I

    if-lez v4, :cond_3f

    const-string v4, "kryo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Read chunk: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->chunkSize:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3f} :catch_4d

    .line 91
    :cond_3f
    const/4 v4, 0x1

    return v4

    .line 84
    .end local v3    # "b":I
    :cond_41
    add-int/lit8 v1, v1, 0x7

    goto :goto_6

    .line 96
    .end local v0    # "inputStream":Ljava/io/InputStream;
    .end local v1    # "offset":I
    .end local v2    # "result":I
    :cond_44
    nop

    .line 97
    new-instance v0, Lcom/esotericsoftware/kryo/KryoException;

    const-string v1, "Unable to read chunk size: malformed integer"

    invoke-direct {v0, v1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :catch_4d
    move-exception v0

    .line 95
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Lcom/esotericsoftware/kryo/KryoException;

    const-string v2, "Unable to read chunk size."

    invoke-direct {v1, v2, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected fill([BII)I
    .registers 7
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 70
    iget v0, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->chunkSize:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 71
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/InputChunked;->readChunkSize()Z

    move-result v0

    if-nez v0, :cond_11

    return v1

    .line 72
    :cond_c
    iget v0, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->chunkSize:I

    if-nez v0, :cond_11

    .line 73
    return v1

    .line 74
    :cond_11
    iget v0, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->chunkSize:I

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-super {p0, p1, p2, v0}, Lcom/esotericsoftware/kryo/io/Input;->fill([BII)I

    move-result v0

    .line 75
    .local v0, "actual":I
    iget v2, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->chunkSize:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->chunkSize:I

    .line 76
    iget v2, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->chunkSize:I

    if-nez v2, :cond_2b

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/InputChunked;->readChunkSize()Z

    move-result v2

    if-nez v2, :cond_2b

    return v1

    .line 77
    :cond_2b
    return v0
.end method

.method public nextChunk()V
    .registers 3

    .line 102
    iget v0, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->limit:I

    iput v0, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->position:I

    .line 103
    iget v0, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->chunkSize:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/InputChunked;->readChunkSize()Z

    .line 104
    :cond_c
    :goto_c
    iget v0, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->chunkSize:I

    if-lez v0, :cond_16

    .line 105
    iget v0, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->chunkSize:I

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/InputChunked;->skip(I)V

    goto :goto_c

    .line 106
    :cond_16
    iput v1, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->chunkSize:I

    .line 107
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_23

    const-string v0, "kryo"

    const-string v1, "Next chunk."

    invoke-static {v0, v1}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_23
    return-void
.end method

.method public reset()V
    .registers 2

    .line 65
    invoke-super {p0}, Lcom/esotericsoftware/kryo/io/Input;->reset()V

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->chunkSize:I

    .line 67
    return-void
.end method

.method public setBuffer([BII)V
    .registers 5
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .line 60
    invoke-super {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/io/Input;->setBuffer([BII)V

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->chunkSize:I

    .line 62
    return-void
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 55
    invoke-super {p0, p1}, Lcom/esotericsoftware/kryo/io/Input;->setInputStream(Ljava/io/InputStream;)V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->chunkSize:I

    .line 57
    return-void
.end method
