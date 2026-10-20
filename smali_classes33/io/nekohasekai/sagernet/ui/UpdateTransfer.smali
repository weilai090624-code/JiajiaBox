.class public final Lio/nekohasekai/sagernet/ui/UpdateTransfer;
.super Ljava/lang/Object;
.source "UpdateTransfer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/ui/UpdateTransfer$Progress;,
        Lio/nekohasekai/sagernet/ui/UpdateTransfer$Cancelled;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static download(Ljava/net/URL;Ljava/net/Proxy;Ljava/io/File;JLjava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;Lio/nekohasekai/sagernet/ui/UpdateTransfer$Progress;)V
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12
    move-object/from16 v0, p2

    move-wide/from16 v1, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p7

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    if-lez v7, :cond_1a0

    const-wide/32 v7, 0x10000000

    cmp-long v9, v1, v7

    if-gtz v9, :cond_1a0

    const-string v7, "[a-f0-9]{64}"

    invoke-virtual {v3, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1a0

    .line 13
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v7

    cmp-long v9, v7, v1

    if-lez v9, :cond_34

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v7

    if-eqz v7, :cond_2c

    goto :goto_34

    :cond_2c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u65e0\u6cd5\u6e05\u7406\u65e7\u4e0b\u8f7d"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_34
    :goto_34
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v7

    cmp-long v9, v7, v1

    if-nez v9, :cond_46

    invoke-static {v0, v3}, Lio/nekohasekai/sagernet/ui/UpdateTransfer;->valid(Ljava/io/File;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_43

    return-void

    :cond_43
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 15
    :cond_46
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual/range {p0 .. p1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v9

    check-cast v9, Ljava/net/HttpURLConnection;

    .line 17
    const/4 v10, 0x0

    :try_start_51
    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/16 v11, 0x3a98

    invoke-virtual {v9, v11}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v11, 0x4e20

    invoke-virtual {v9, v11}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 18
    const-string v11, "Accept-Encoding"

    const-string v12, "identity"

    invoke-virtual {v9, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "User-Agent"

    const-string v12, "JiajiaBox-CloudUpdate/1"

    invoke-virtual {v9, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6f
    .catchall {:try_start_51 .. :try_end_6f} :catchall_19b

    .line 19
    const-string v11, "-"

    cmp-long v12, v7, v5

    if-lez v12, :cond_91

    :try_start_75
    const-string v13, "Range"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "bytes="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v13, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_91
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v13

    .line 21
    const/16 v14, 0xc8

    if-ne v13, v14, :cond_9b

    move-wide v7, v5

    goto :goto_d7

    .line 22
    :cond_9b
    const/16 v14, 0xce

    if-ne v13, v14, :cond_182

    .line 23
    const-string v13, "Content-Range"

    invoke-virtual {v9, v13}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 24
    if-eqz v12, :cond_17a

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "bytes "

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

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_17a

    .line 25
    nop

    .line 26
    :goto_d7
    const-string v11, "Content-Length"

    invoke-virtual {v9, v11}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_e2

    const-wide/16 v11, -0x1

    goto :goto_e6

    :cond_e2
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    :goto_e6
    cmp-long v13, v11, v5

    if-ltz v13, :cond_f9

    sub-long v13, v1, v7

    cmp-long v15, v11, v13

    if-nez v15, :cond_f1

    goto :goto_f9

    :cond_f1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u5b89\u88c5\u5305\u957f\u5ea6\u4e0d\u5339\u914d"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_f9
    :goto_f9
    invoke-interface {v4, v7, v8, v1, v2}, Lio/nekohasekai/sagernet/ui/UpdateTransfer$Progress;->update(JJ)V

    .line 28
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11
    :try_end_100
    .catchall {:try_start_75 .. :try_end_100} :catchall_19b

    :try_start_100
    new-instance v12, Ljava/io/FileOutputStream;

    cmp-long v13, v7, v5

    if-lez v13, :cond_108

    const/4 v5, 0x1

    goto :goto_109

    :cond_108
    const/4 v5, 0x0

    :goto_109
    invoke-direct {v12, v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_10c
    .catchall {:try_start_100 .. :try_end_10c} :catchall_16d

    .line 29
    const/high16 v5, 0x10000

    :try_start_10e
    new-array v5, v5, [B

    .line 30
    :goto_110
    invoke-virtual/range {p6 .. p6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-nez v6, :cond_15c

    invoke-virtual {v11, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6
    :try_end_11a
    .catchall {:try_start_10e .. :try_end_11a} :catchall_162

    if-gez v6, :cond_145

    .line 31
    :try_start_11c
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_11f
    .catchall {:try_start_11c .. :try_end_11f} :catchall_16d

    if-eqz v11, :cond_124

    :try_start_121
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 32
    :cond_124
    cmp-long v4, v7, v1

    if-nez v4, :cond_13d

    .line 33
    invoke-static {v0, v3}, Lio/nekohasekai/sagernet/ui/UpdateTransfer;->valid(Ljava/io/File;Ljava/lang/String;)Z

    move-result v1
    :try_end_12c
    .catchall {:try_start_121 .. :try_end_12c} :catchall_19b

    if-eqz v1, :cond_132

    .line 34
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 35
    return-void

    .line 33
    :cond_132
    :try_start_132
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u5b89\u88c5\u5305\u6821\u9a8c\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u4e0b\u8f7d"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_13d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u4e0b\u8f7d\u4e2d\u65ad\uff0c\u53ef\u91cd\u8bd5\u7eed\u4f20"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_145
    .catchall {:try_start_132 .. :try_end_145} :catchall_19b

    .line 30
    :cond_145
    int-to-long v13, v6

    sub-long v15, v1, v7

    cmp-long v17, v13, v15

    if-gtz v17, :cond_154

    :try_start_14c
    invoke-virtual {v12, v5, v10, v6}, Ljava/io/OutputStream;->write([BII)V

    add-long/2addr v7, v13

    invoke-interface {v4, v7, v8, v1, v2}, Lio/nekohasekai/sagernet/ui/UpdateTransfer$Progress;->update(JJ)V

    goto :goto_110

    :cond_154
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u5b89\u88c5\u5305\u957f\u5ea6\u8d85\u51fa\u9884\u671f"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_161

    :cond_15c
    new-instance v0, Lio/nekohasekai/sagernet/ui/UpdateTransfer$Cancelled;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/ui/UpdateTransfer$Cancelled;-><init>()V

    :goto_161
    throw v0
    :try_end_162
    .catchall {:try_start_14c .. :try_end_162} :catchall_162

    .line 28
    :catchall_162
    move-exception v0

    move-object v1, v0

    :try_start_164
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_167
    .catchall {:try_start_164 .. :try_end_167} :catchall_168

    goto :goto_16c

    :catchall_168
    move-exception v0

    :try_start_169
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_16c
    throw v1
    :try_end_16d
    .catchall {:try_start_169 .. :try_end_16d} :catchall_16d

    :catchall_16d
    move-exception v0

    move-object v1, v0

    if-eqz v11, :cond_179

    :try_start_171
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_174
    .catchall {:try_start_171 .. :try_end_174} :catchall_175

    goto :goto_179

    :catchall_175
    move-exception v0

    :try_start_176
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_179
    :goto_179
    throw v1

    .line 24
    :cond_17a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u670d\u52a1\u5668\u8fd4\u56de\u4e86\u9519\u8bef\u7684\u7eed\u4f20\u8303\u56f4"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_182
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e0b\u8f7d\u670d\u52a1 HTTP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_19b
    .catchall {:try_start_176 .. :try_end_19b} :catchall_19b

    .line 34
    :catchall_19b
    move-exception v0

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0

    .line 12
    :cond_1a0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u66f4\u65b0\u4fe1\u606f\u65e0\u6548"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static newer(JJ)Z
    .registers 5

    .line 41
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

    .line 37
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 38
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/high16 p0, 0x10000

    :try_start_d
    new-array p0, p0, [B

    :goto_f
    invoke-virtual {v1, p0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1b

    invoke-virtual {v0, p0, v4, v2}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_4f

    goto :goto_f

    :cond_1b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 39
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_29
    if-ge v2, v1, :cond_46

    aget-byte v3, v0, v2

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v4

    const-string v3, "%02x"

    invoke-static {v5, v3, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    :cond_46
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 38
    :catchall_4f
    move-exception p0

    :try_start_50
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_54

    goto :goto_58

    :catchall_54
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_58
    throw p0
.end method
