.class public final Landroidx/room/util/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFileUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileUtil.kt\nandroidx/room/util/FileUtil\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,59:1\n1#2:60\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0007\u00a8\u0006\u0006"
    }
    d2 = {
        "copy",
        "",
        "input",
        "Ljava/nio/channels/ReadableByteChannel;",
        "output",
        "Ljava/nio/channels/FileChannel;",
        "room-runtime_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final copy(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/channels/FileChannel;)V
    .locals 9
    .param p0, "input"    # Ljava/nio/channels/ReadableByteChannel;
    .param p1, "output"    # Ljava/nio/channels/FileChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    nop

    .line 40
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 41
    const-wide/16 v5, 0x0

    const-wide v7, 0x7fffffffffffffffL

    move-object v3, p1

    move-object v4, p0

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    goto :goto_1

    .line 43
    :cond_0
    invoke-static {p0}, Ljava/nio/channels/Channels;->newInputStream(Ljava/nio/channels/ReadableByteChannel;)Ljava/io/InputStream;

    move-result-object v0

    .line 44
    .local v0, "inputStream":Ljava/io/InputStream;
    move-object v1, p1

    check-cast v1, Ljava/nio/channels/WritableByteChannel;

    invoke-static {v1}, Ljava/nio/channels/Channels;->newOutputStream(Ljava/nio/channels/WritableByteChannel;)Ljava/io/OutputStream;

    move-result-object v1

    .line 45
    .local v1, "outputStream":Ljava/io/OutputStream;
    const/4 v3, 0x0

    .line 46
    .local v3, "length":I
    const/16 v4, 0x1000

    new-array v4, v4, [B

    .line 49
    .local v4, "buffer":[B
    :goto_0
    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    move v6, v5

    .line 60
    .local v6, "it":I
    const/4 v7, 0x0

    .line 49
    .local v7, "$i$a$-also-FileUtil$copy$1":I
    move v3, v6

    .end local v6    # "it":I
    .end local v7    # "$i$a$-also-FileUtil$copy$1":I
    if-lez v5, :cond_1

    .line 50
    invoke-virtual {v1, v4, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 53
    .end local v0    # "inputStream":Ljava/io/InputStream;
    .end local v1    # "outputStream":Ljava/io/OutputStream;
    .end local v3    # "length":I
    .end local v4    # "buffer":[B
    :cond_1
    :goto_1
    invoke-virtual {p1, v2}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-interface {p0}, Ljava/nio/channels/ReadableByteChannel;->close()V

    .line 56
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V

    .line 57
    nop

    .line 58
    return-void

    .line 55
    :catchall_0
    move-exception v0

    invoke-interface {p0}, Ljava/nio/channels/ReadableByteChannel;->close()V

    .line 56
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V

    throw v0
.end method
