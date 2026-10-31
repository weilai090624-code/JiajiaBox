.class public abstract Lcom/google/common/io/ByteSink;
.super Ljava/lang/Object;
.source "ByteSink.java"


# annotations
.annotation runtime Lcom/google/common/io/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/io/ByteSink$AsCharSink;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asCharSink(Ljava/nio/charset/Charset;)Lcom/google/common/io/CharSink;
    .registers 4
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 60
    new-instance v0, Lcom/google/common/io/ByteSink$AsCharSink;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/io/ByteSink$AsCharSink;-><init>(Lcom/google/common/io/ByteSink;Ljava/nio/charset/Charset;Lcom/google/common/io/ByteSink$1;)V

    return-object v0
.end method

.method public openBufferedStream()Ljava/io/OutputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    invoke-virtual {p0}, Lcom/google/common/io/ByteSink;->openStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 87
    .local v0, "out":Ljava/io/OutputStream;
    instance-of v1, v0, Ljava/io/BufferedOutputStream;

    if-eqz v1, :cond_c

    .line 88
    move-object v1, v0

    check-cast v1, Ljava/io/BufferedOutputStream;

    goto :goto_11

    .line 89
    :cond_c
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 87
    :goto_11
    return-object v1
.end method

.method public abstract openStream()Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public write([B)V
    .registers 5
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v0

    .line 102
    .local v0, "closer":Lcom/google/common/io/Closer;
    :try_start_7
    invoke-virtual {p0}, Lcom/google/common/io/ByteSink;->openStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/OutputStream;

    .line 103
    .local v1, "out":Ljava/io/OutputStream;
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 104
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_1c

    .line 108
    .end local v1    # "out":Ljava/io/OutputStream;
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    .line 109
    nop

    .line 110
    return-void

    .line 105
    :catchall_1c
    move-exception v1

    .line 106
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1d
    invoke-virtual {v0, v1}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    .end local v0    # "closer":Lcom/google/common/io/Closer;
    .end local p1    # "bytes":[B
    throw v2
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_22

    .line 108
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "closer":Lcom/google/common/io/Closer;
    .restart local p1    # "bytes":[B
    :catchall_22
    move-exception v1

    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    .line 109
    throw v1
.end method

.method public writeFrom(Ljava/io/InputStream;)J
    .registers 6
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v0

    .line 125
    .local v0, "closer":Lcom/google/common/io/Closer;
    :try_start_7
    invoke-virtual {p0}, Lcom/google/common/io/ByteSink;->openStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/OutputStream;

    .line 126
    .local v1, "out":Ljava/io/OutputStream;
    invoke-static {p1, v1}, Lcom/google/common/io/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v2

    .line 127
    .local v2, "written":J
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_1d

    .line 128
    nop

    .line 132
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    .line 128
    return-wide v2

    .line 129
    .end local v1    # "out":Ljava/io/OutputStream;
    .end local v2    # "written":J
    :catchall_1d
    move-exception v1

    .line 130
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1e
    invoke-virtual {v0, v1}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    .end local v0    # "closer":Lcom/google/common/io/Closer;
    .end local p1    # "input":Ljava/io/InputStream;
    throw v2
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_23

    .line 132
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "closer":Lcom/google/common/io/Closer;
    .restart local p1    # "input":Ljava/io/InputStream;
    :catchall_23
    move-exception v1

    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    .line 133
    throw v1
.end method
