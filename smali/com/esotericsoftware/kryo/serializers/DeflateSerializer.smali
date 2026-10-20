.class public Lcom/esotericsoftware/kryo/serializers/DeflateSerializer;
.super Lcom/esotericsoftware/kryo/Serializer;
.source "DeflateSerializer.java"


# instance fields
.field private compressionLevel:I

.field private noHeaders:Z

.field private final serializer:Lcom/esotericsoftware/kryo/Serializer;


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryo/Serializer;)V
    .locals 1
    .param p1, "serializer"    # Lcom/esotericsoftware/kryo/Serializer;

    .line 41
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/Serializer;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/DeflateSerializer;->noHeaders:Z

    .line 39
    const/4 v0, 0x4

    iput v0, p0, Lcom/esotericsoftware/kryo/serializers/DeflateSerializer;->compressionLevel:I

    .line 42
    iput-object p1, p0, Lcom/esotericsoftware/kryo/serializers/DeflateSerializer;->serializer:Lcom/esotericsoftware/kryo/Serializer;

    .line 43
    return-void
.end method


# virtual methods
.method public copy(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "original"    # Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/DeflateSerializer;->serializer:Lcom/esotericsoftware/kryo/Serializer;

    invoke-virtual {v0, p1, p2}, Lcom/esotericsoftware/kryo/Serializer;->copy(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "input"    # Lcom/esotericsoftware/kryo/io/Input;
    .param p3, "type"    # Ljava/lang/Class;

    .line 64
    new-instance v0, Ljava/util/zip/Inflater;

    iget-boolean v1, p0, Lcom/esotericsoftware/kryo/serializers/DeflateSerializer;->noHeaders:Z

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 66
    .local v0, "inflater":Ljava/util/zip/Inflater;
    :try_start_0
    new-instance v1, Ljava/util/zip/InflaterInputStream;

    new-instance v2, Lcom/esotericsoftware/kryo/io/InputChunked;

    const/16 v3, 0x100

    invoke-direct {v2, p2, v3}, Lcom/esotericsoftware/kryo/io/InputChunked;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v1, v2, v0}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    .line 67
    .local v1, "inflaterStream":Ljava/util/zip/InflaterInputStream;
    iget-object v2, p0, Lcom/esotericsoftware/kryo/serializers/DeflateSerializer;->serializer:Lcom/esotericsoftware/kryo/Serializer;

    new-instance v4, Lcom/esotericsoftware/kryo/io/Input;

    invoke-direct {v4, v1, v3}, Lcom/esotericsoftware/kryo/io/Input;-><init>(Ljava/io/InputStream;I)V

    invoke-virtual {v2, p1, v4, p3}, Lcom/esotericsoftware/kryo/Serializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 67
    return-object v2

    .line 69
    .end local v1    # "inflaterStream":Ljava/util/zip/InflaterInputStream;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 70
    throw v1
.end method

.method public setCompressionLevel(I)V
    .locals 0
    .param p1, "compressionLevel"    # I

    .line 80
    iput p1, p0, Lcom/esotericsoftware/kryo/serializers/DeflateSerializer;->compressionLevel:I

    .line 81
    return-void
.end method

.method public setNoHeaders(Z)V
    .locals 0
    .param p1, "noHeaders"    # Z

    .line 74
    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/serializers/DeflateSerializer;->noHeaders:Z

    .line 75
    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 5
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "output"    # Lcom/esotericsoftware/kryo/io/Output;
    .param p3, "object"    # Ljava/lang/Object;

    .line 46
    new-instance v0, Lcom/esotericsoftware/kryo/io/OutputChunked;

    const/16 v1, 0x100

    invoke-direct {v0, p2, v1}, Lcom/esotericsoftware/kryo/io/OutputChunked;-><init>(Ljava/io/OutputStream;I)V

    .line 47
    .local v0, "outputChunked":Lcom/esotericsoftware/kryo/io/OutputChunked;
    new-instance v2, Ljava/util/zip/Deflater;

    iget v3, p0, Lcom/esotericsoftware/kryo/serializers/DeflateSerializer;->compressionLevel:I

    iget-boolean v4, p0, Lcom/esotericsoftware/kryo/serializers/DeflateSerializer;->noHeaders:Z

    invoke-direct {v2, v3, v4}, Ljava/util/zip/Deflater;-><init>(IZ)V

    .line 49
    .local v2, "deflater":Ljava/util/zip/Deflater;
    :try_start_0
    new-instance v3, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v3, v0, v2}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V

    .line 50
    .local v3, "deflaterStream":Ljava/util/zip/DeflaterOutputStream;
    new-instance v4, Lcom/esotericsoftware/kryo/io/Output;

    invoke-direct {v4, v3, v1}, Lcom/esotericsoftware/kryo/io/Output;-><init>(Ljava/io/OutputStream;I)V

    move-object v1, v4

    .line 51
    .local v1, "deflaterOutput":Lcom/esotericsoftware/kryo/io/Output;
    iget-object v4, p0, Lcom/esotericsoftware/kryo/serializers/DeflateSerializer;->serializer:Lcom/esotericsoftware/kryo/Serializer;

    invoke-virtual {v4, p1, v1, p3}, Lcom/esotericsoftware/kryo/Serializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    .line 52
    invoke-virtual {v1}, Lcom/esotericsoftware/kryo/io/Output;->flush()V

    .line 53
    invoke-virtual {v3}, Ljava/util/zip/DeflaterOutputStream;->finish()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .end local v1    # "deflaterOutput":Lcom/esotericsoftware/kryo/io/Output;
    .end local v3    # "deflaterStream":Ljava/util/zip/DeflaterOutputStream;
    invoke-virtual {v2}, Ljava/util/zip/Deflater;->end()V

    .line 58
    nop

    .line 59
    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/io/OutputChunked;->endChunk()V

    .line 60
    return-void

    .line 57
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 54
    :catch_0
    move-exception v1

    .line 55
    .local v1, "ex":Ljava/io/IOException;
    :try_start_1
    new-instance v3, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v3, v1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "outputChunked":Lcom/esotericsoftware/kryo/io/OutputChunked;
    .end local v2    # "deflater":Ljava/util/zip/Deflater;
    .end local p1    # "kryo":Lcom/esotericsoftware/kryo/Kryo;
    .end local p2    # "output":Lcom/esotericsoftware/kryo/io/Output;
    .end local p3    # "object":Ljava/lang/Object;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local v0    # "outputChunked":Lcom/esotericsoftware/kryo/io/OutputChunked;
    .restart local v2    # "deflater":Ljava/util/zip/Deflater;
    .restart local p1    # "kryo":Lcom/esotericsoftware/kryo/Kryo;
    .restart local p2    # "output":Lcom/esotericsoftware/kryo/io/Output;
    .restart local p3    # "object":Ljava/lang/Object;
    :goto_0
    invoke-virtual {v2}, Ljava/util/zip/Deflater;->end()V

    .line 58
    throw v1
.end method
