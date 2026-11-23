.class public final La/a/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/c$Progress;,
        La/a/c$Cancelled;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static download(Ljava/net/URL;Ljava/net/Proxy;Ljava/io/File;JLjava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;La/a/c$Progress;)V
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p2

    move-wide/from16 v1, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p7

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    if-lez v7, :cond_1ec

    const-wide/32 v7, 0x10000000

    cmp-long v9, v1, v7

    if-gtz v9, :cond_1ec

    const-string v7, "\u0001\u0018\u00b5\u00d1\u00e6\u00d8-n)G\u00a4\u00d2"

    invoke-static {v7}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1ec

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v7

    cmp-long v9, v7, v1

    if-lez v9, :cond_3c

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v7

    if-eqz v7, :cond_30

    goto :goto_3c

    :cond_30
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u65ba\u6cac\u6e9d\u74b1\u6531\u4efe\u8f69"

    invoke-static {v1}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3c
    :goto_3c
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v7

    cmp-long v9, v7, v1

    if-nez v9, :cond_4e

    invoke-static {v0, v3}, La/a/c;->valid(Ljava/io/File;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4b

    return-void

    :cond_4b
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_4e
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual/range {p0 .. p1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v9

    check-cast v9, Ljava/net/HttpURLConnection;

    const/4 v10, 0x0

    :try_start_59
    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/16 v11, 0x3a98

    invoke-virtual {v9, v11}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v11, 0x4e20

    invoke-virtual {v9, v11}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v11, "\u001b\u001a\u00fb\u00d2\u00a6\u00819v<\u0012\u00ff\u00cb\u00a7\u0083k"

    invoke-static {v11}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "3\u001d\u00fd\u00d9\u00a2\u009c`J"

    invoke-static {v12}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "\u000f\n\u00fd\u00c5\u00fb\u00b4sV<\u0005"

    invoke-static {v11}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "\u0010\u0010\u00f9\u00dd\u00bf\u0094V\\*\\\u00d3\u00c3\u00a1\u0098h~:\r\u00e9\u00d3\u00a3\u00ca5"

    invoke-static {v12}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_87
    .catchall {:try_start_59 .. :try_end_87} :catchall_1e7

    const-string v11, "w"

    invoke-static {v11}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    cmp-long v12, v7, v5

    if-lez v12, :cond_b5

    :try_start_91
    const-string v13, "\u0008\u0018\u00f6\u00d0\u00b3"

    invoke-static {v13}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "8\u0000\u00ec\u00d2\u00a5\u00c8"

    invoke-static {v15}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v13, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b5
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v13

    const/16 v14, 0xc8

    if-ne v13, v14, :cond_bf

    move-wide v7, v5

    goto :goto_107

    :cond_bf
    const/16 v14, 0xce

    if-ne v13, v14, :cond_1ca

    const-string v13, "\u0019\u0016\u00f6\u00c3\u00b3\u009b`\u001e\u0000\u0010\u00fe\u00c8\u00ab"

    invoke-static {v13}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v12, :cond_1be

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "8\u0000\u00ec\u00d2\u00a5\u00d5"

    invoke-static {v14}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-wide/16 v14, 0x1

    sub-long v14, v1, v14

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "u"

    invoke-static {v12}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1be

    nop

    :goto_107
    const-string v11, "\u0019\u0016\u00f6\u00c3\u00b3\u009b`\u001e\u001e\u0014\u00fe\u00c8\u00ba\u0085"

    invoke-static {v11}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_116

    const-wide/16 v11, -0x1

    goto :goto_11a

    :cond_116
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    :goto_11a
    cmp-long v13, v11, v5

    if-ltz v13, :cond_131

    sub-long v13, v1, v7

    cmp-long v15, v11, v13

    if-nez v15, :cond_125

    goto :goto_131

    :cond_125
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u5bd3\u88bc\u539d\u95c8\u5e70\u4ef8\u532d\u917e"

    invoke-static {v1}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_131
    :goto_131
    invoke-interface {v4, v7, v8, v1, v2}, La/a/c$Progress;->update(JJ)V

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11
    :try_end_138
    .catchall {:try_start_91 .. :try_end_138} :catchall_1e7

    :try_start_138
    new-instance v12, Ljava/io/FileOutputStream;

    cmp-long v13, v7, v5

    if-lez v13, :cond_140

    const/4 v5, 0x1

    goto :goto_141

    :cond_140
    const/4 v5, 0x0

    :goto_141
    invoke-direct {v12, v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_144
    .catchall {:try_start_138 .. :try_end_144} :catchall_1b1

    const/high16 v5, 0x10000

    :try_start_146
    new-array v5, v5, [B

    :goto_148
    invoke-virtual/range {p6 .. p6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-nez v6, :cond_1a0

    invoke-virtual {v11, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6
    :try_end_152
    .catchall {:try_start_146 .. :try_end_152} :catchall_1a6

    if-gez v6, :cond_185

    :try_start_154
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_157
    .catchall {:try_start_154 .. :try_end_157} :catchall_1b1

    if-eqz v11, :cond_15c

    :try_start_159
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    :cond_15c
    cmp-long v4, v7, v1

    if-nez v4, :cond_179

    invoke-static {v0, v3}, La/a/c;->valid(Ljava/io/File;Ljava/lang/String;)Z

    move-result v1
    :try_end_164
    .catchall {:try_start_159 .. :try_end_164} :catchall_1e7

    if-eqz v1, :cond_16a

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :cond_16a
    :try_start_16a
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u5bd3\u88bc\u539d\u6896\u9a5a\u59c4\u8d31\uff3f\u8ba5\u91bc\u6520\u4ea4\u8fb3"

    invoke-static {v1}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_179
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u4e51\u8f04\u4eb5\u651a\uffda\u531a\u91d9\u8be6\u7ebf\u4f51"

    invoke-static {v1}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_185
    .catchall {:try_start_16a .. :try_end_185} :catchall_1e7

    :cond_185
    int-to-long v13, v6

    sub-long v15, v1, v7

    cmp-long v17, v13, v15

    if-gtz v17, :cond_194

    :try_start_18c
    invoke-virtual {v12, v5, v10, v6}, Ljava/io/OutputStream;->write([BII)V

    add-long/2addr v7, v13

    invoke-interface {v4, v7, v8, v1, v2}, La/a/c$Progress;->update(JJ)V

    goto :goto_148

    :cond_194
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u5bd3\u88bc\u539d\u95c8\u5e70\u8d70\u51ee\u98b7\u674d"

    invoke-static {v1}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_1a5

    :cond_1a0
    new-instance v0, La/a/c$Cancelled;

    invoke-direct {v0}, La/a/c$Cancelled;-><init>()V

    :goto_1a5
    throw v0
    :try_end_1a6
    .catchall {:try_start_18c .. :try_end_1a6} :catchall_1a6

    :catchall_1a6
    move-exception v0

    move-object v1, v0

    :try_start_1a8
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_1ab
    .catchall {:try_start_1a8 .. :try_end_1ab} :catchall_1ac

    goto :goto_1b0

    :catchall_1ac
    move-exception v0

    :try_start_1ad
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1b0
    throw v1
    :try_end_1b1
    .catchall {:try_start_1ad .. :try_end_1b1} :catchall_1b1

    :catchall_1b1
    move-exception v0

    move-object v1, v0

    if-eqz v11, :cond_1bd

    :try_start_1b5
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_1b8
    .catchall {:try_start_1b5 .. :try_end_1b8} :catchall_1b9

    goto :goto_1bd

    :catchall_1b9
    move-exception v0

    :try_start_1ba
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1bd
    :goto_1bd
    throw v1

    :cond_1be
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u6757\u52d8\u56f0\u8f63\u5608\u4e73\u950d\u8bdc\u76d6\u7e9c\u4fb0\u83ac\u563a"

    invoke-static {v1}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1ca
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e51\u8f04\u6795\u5216\u00f6\u00bd@g\u0002Q"

    invoke-static {v2}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1e7
    .catchall {:try_start_1ba .. :try_end_1e7} :catchall_1e7

    :catchall_1e7
    move-exception v0

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0

    :cond_1ec
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u66ae\u65c9\u4f79\u60d8\u6536\u65bd"

    invoke-static {v1}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static newer(JJ)Z
    .registers 5

    cmp-long v0, p2, p0

    if-lez v0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static valid(Ljava/io/File;Ljava/lang/String;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "\t1\u00d9\u009a\u00e4\u00c0\""

    invoke-static {v0}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/high16 p0, 0x10000

    :try_start_11
    new-array p0, p0, [B

    :goto_13
    invoke-virtual {v1, p0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1f

    invoke-virtual {v0, p0, v4, v2}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_57

    goto :goto_13

    :cond_1f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_2d
    if-ge v2, v1, :cond_4e

    aget-byte v3, v0, v2

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v4

    const-string v3, "\u007fI\u00aa\u00cf"

    invoke-static {v3}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    :cond_4e
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :catchall_57
    move-exception p0

    :try_start_58
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_5c

    goto :goto_60

    :catchall_5c
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_60
    throw p0
.end method
