.class public final Lio/nekohasekai/sagernet/ui/SubscriptionDownload;
.super Ljava/lang/Object;
.source "SubscriptionDownload.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/ui/SubscriptionDownload$Protocols;,
        Lio/nekohasekai/sagernet/ui/SubscriptionDownload$Response;
    }
.end annotation


# static fields
.field private static final DEFAULT_UA:Ljava/lang/String; = "NekoBox/Android/0.0.2 (Prefer ClashMeta Format)"

.field private static final MAX_BYTES:I = 0x4000000


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static basicAuth(Ljava/net/URL;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 81
    invoke-virtual {p0}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 82
    :cond_8
    invoke-virtual {p0}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object p0

    const-string v0, "+"

    const-string v1, "%2B"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Basic "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static describe(Ljava/lang/Exception;)Ljava/lang/String;
    .registers 2

    .line 30
    instance-of v0, p0, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_7

    const-string p0, "\u57df\u540d\u89e3\u6790\u5931\u8d25"

    return-object p0

    .line 31
    :cond_7
    instance-of v0, p0, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_e

    const-string p0, "\u7f51\u7edc\u8fde\u63a5\u6216\u8bfb\u53d6\u8d85\u65f6"

    return-object p0

    .line 32
    :cond_e
    instance-of v0, p0, Ljavax/net/ssl/SSLException;

    if-eqz v0, :cond_15

    const-string p0, "TLS \u6216\u8bc1\u4e66\u9a8c\u8bc1\u5931\u8d25"

    return-object p0

    .line 33
    :cond_15
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_23

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :cond_23
    return-object v0
.end method

.method static direct(Lio/nekohasekai/sagernet/database/SubscriptionBean;ZZ)Llibcore/HTTPResponse;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 36
    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-static {p0, p1, p2, v0}, Lio/nekohasekai/sagernet/ui/SubscriptionDownload;->fetch(Lio/nekohasekai/sagernet/database/SubscriptionBean;ZZLjava/net/Proxy;)Llibcore/HTTPResponse;

    move-result-object p0

    return-object p0
.end method

.method public static execute(Llibcore/HTTPRequest;Lio/nekohasekai/sagernet/database/SubscriptionBean;)Llibcore/HTTPResponse;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 23
    sget-object p0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    .line 24
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/database/DataStore;->getServiceState()Lio/nekohasekai/sagernet/bg/BaseService$State;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/database/DataStore;->getServiceState()Lio/nekohasekai/sagernet/bg/BaseService$State;

    move-result-object v0

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/bg/BaseService$State;->getConnected()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 25
    :goto_15
    if-eqz v0, :cond_2a

    new-instance v1, Ljava/net/Proxy;

    sget-object v2, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    new-instance v3, Ljava/net/InetSocketAddress;

    const-string v4, "127.0.0.1"

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/database/DataStore;->getMixedPort()I

    move-result v5

    invoke-direct {v3, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v1, v2, v3}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    goto :goto_2c

    :cond_2a
    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 26
    :goto_2c
    :try_start_2c
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/database/DataStore;->getAllowInsecureOnRequest()Z

    move-result v2

    const-string v3, "1.3"

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/database/DataStore;->getAppTLSVersion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p1, v2, p0, v1}, Lio/nekohasekai/sagernet/ui/SubscriptionDownload;->fetch(Lio/nekohasekai/sagernet/database/SubscriptionBean;ZZLjava/net/Proxy;)Llibcore/HTTPResponse;

    move-result-object p0
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_3e} :catch_3f

    return-object p0

    .line 27
    :catch_3f
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_4c

    const-string v0, "\u4ee3\u7406\u66f4\u65b0\u8ba2\u9605\u5931\u8d25\uff1a"

    goto :goto_4e

    :cond_4c
    const-string v0, "\u76f4\u8fde\u66f4\u65b0\u8ba2\u9605\u5931\u8d25\uff1a"

    :goto_4e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/SubscriptionDownload;->describe(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static fetch(Lio/nekohasekai/sagernet/database/SubscriptionBean;ZZLjava/net/Proxy;)Llibcore/HTTPResponse;
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 39
    move-object/from16 v0, p0

    const-string v1, "gzip"

    new-instance v2, Ljava/net/URL;

    iget-object v3, v0, Lio/nekohasekai/sagernet/database/SubscriptionBean;->link:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 40
    iget-object v0, v0, Lio/nekohasekai/sagernet/database/SubscriptionBean;->customUserAgent:Ljava/lang/String;

    .line 41
    if-eqz v0, :cond_19

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1b

    :cond_19
    const-string v0, "NekoBox/Android/0.0.2 (Prefer ClashMeta Format)"

    .line 42
    :cond_1b
    new-instance v3, Lio/nekohasekai/sagernet/ui/SubscriptionDownload$Protocols;

    invoke-static/range {p1 .. p1}, Lio/nekohasekai/sagernet/ui/SubscriptionDownload;->socketFactory(Z)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    move/from16 v5, p2

    invoke-direct {v3, v4, v5}, Lio/nekohasekai/sagernet/ui/SubscriptionDownload$Protocols;-><init>(Ljavax/net/ssl/SSLSocketFactory;Z)V

    .line 43
    invoke-static {v2}, Lio/nekohasekai/sagernet/ui/SubscriptionDownload;->basicAuth(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v4

    .line 44
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    const-wide v7, 0x6fc23ac00L

    add-long/2addr v5, v7

    .line 45
    const/4 v7, 0x0

    move v8, v7

    :goto_36
    const-string v9, "\u8ba2\u9605\u91cd\u5b9a\u5411\u6b21\u6570\u8fc7\u591a"

    const/16 v10, 0xa

    if-gt v8, v10, :cond_207

    .line 46
    const-string v11, "http"

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5d

    const-string v11, "https"

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_55

    goto :goto_5d

    :cond_55
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u8ba2\u9605\u5730\u5740\u5fc5\u987b\u662f HTTP \u6216 HTTPS"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_5d
    :goto_5d
    move-object/from16 v11, p3

    invoke-virtual {v2, v11}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v12

    check-cast v12, Ljava/net/HttpURLConnection;

    .line 49
    :try_start_65
    invoke-static {v5, v6}, Lio/nekohasekai/sagernet/ui/SubscriptionDownload;->remaining(J)I

    move-result v13

    const/16 v14, 0x2710

    invoke-static {v14, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-static {v5, v6}, Lio/nekohasekai/sagernet/ui/SubscriptionDownload;->remaining(J)I

    move-result v13

    const/16 v14, 0x3a98

    invoke-static {v14, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 50
    invoke-virtual {v12, v7}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    invoke-virtual {v12, v7}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v13, "GET"

    invoke-virtual {v12, v13}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 51
    const-string v13, "User-Agent"

    invoke-virtual {v12, v13, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "Accept-Encoding"

    invoke-virtual {v12, v13, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    if-eqz v4, :cond_9b

    const-string v13, "Authorization"

    invoke-virtual {v12, v13, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_9b
    instance-of v13, v12, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v13, :cond_af

    move-object v13, v12

    check-cast v13, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v13, v3}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    if-eqz p1, :cond_af

    new-instance v15, Lio/nekohasekai/sagernet/ui/SubscriptionDownload$0;

    invoke-direct {v15}, Lio/nekohasekai/sagernet/ui/SubscriptionDownload$0;-><init>()V

    invoke-virtual {v13, v15}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 54
    :cond_af
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v13
    :try_end_b3
    .catchall {:try_start_65 .. :try_end_b3} :catchall_202

    .line 55
    const/16 v15, 0x12d

    const-string v10, "HTTP "

    if-eq v13, v15, :cond_1b6

    const/16 v15, 0x12e

    if-eq v13, v15, :cond_1b6

    const/16 v15, 0x12f

    if-eq v13, v15, :cond_1b6

    const/16 v15, 0x133

    if-eq v13, v15, :cond_1b6

    const/16 v15, 0x134

    if-ne v13, v15, :cond_cb

    goto/16 :goto_1b6

    .line 63
    :cond_cb
    const/16 v0, 0xc8

    if-ne v13, v0, :cond_19f

    .line 64
    :try_start_cf
    new-instance v0, Ljava/util/TreeMap;

    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 65
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e2
    :goto_e2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_e2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_e2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_e2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e2

    .line 66
    :cond_11c
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_120
    .catchall {:try_start_cf .. :try_end_120} :catchall_202

    :try_start_120
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_130

    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_12f
    .catchall {:try_start_120 .. :try_end_12f} :catchall_192

    goto :goto_131

    :cond_130
    move-object v1, v2

    :goto_131
    :try_start_131
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_136
    .catchall {:try_start_131 .. :try_end_136} :catchall_185

    .line 67
    const/16 v4, 0x4000

    :try_start_138
    new-array v4, v4, [B

    .line 68
    :goto_13a
    invoke-static {v5, v6}, Lio/nekohasekai/sagernet/ui/SubscriptionDownload;->remaining(J)I

    move-result v8

    invoke-static {v14, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v12, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-gez v8, :cond_165

    .line 69
    new-instance v4, Lio/nekohasekai/sagernet/ui/SubscriptionDownload$Response;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lio/nekohasekai/sagernet/ui/SubscriptionDownload$Response;-><init>([BLjava/util/Map;)V
    :try_end_154
    .catchall {:try_start_138 .. :try_end_154} :catchall_17a

    .line 70
    :try_start_154
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_157
    .catchall {:try_start_154 .. :try_end_157} :catchall_185

    if-eqz v1, :cond_15c

    :try_start_159
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_15c
    .catchall {:try_start_159 .. :try_end_15c} :catchall_192

    :cond_15c
    if-eqz v2, :cond_161

    :try_start_15e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_161
    .catchall {:try_start_15e .. :try_end_161} :catchall_202

    .line 71
    :cond_161
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 69
    return-object v4

    .line 68
    :cond_165
    :try_start_165
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v9

    const/high16 v10, 0x4000000

    sub-int/2addr v10, v9

    if-gt v8, v10, :cond_172

    invoke-virtual {v3, v4, v7, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_13a

    :cond_172
    new-instance v0, Ljava/io/IOException;

    const-string v4, "\u8ba2\u9605\u5185\u5bb9\u8d85\u8fc7 64 MiB"

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_17a
    .catchall {:try_start_165 .. :try_end_17a} :catchall_17a

    .line 66
    :catchall_17a
    move-exception v0

    move-object v4, v0

    :try_start_17c
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_17f
    .catchall {:try_start_17c .. :try_end_17f} :catchall_180

    goto :goto_184

    :catchall_180
    move-exception v0

    :try_start_181
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_184
    throw v4
    :try_end_185
    .catchall {:try_start_181 .. :try_end_185} :catchall_185

    :catchall_185
    move-exception v0

    move-object v3, v0

    if-eqz v1, :cond_191

    :try_start_189
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_18c
    .catchall {:try_start_189 .. :try_end_18c} :catchall_18d

    goto :goto_191

    :catchall_18d
    move-exception v0

    :try_start_18e
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_191
    :goto_191
    throw v3
    :try_end_192
    .catchall {:try_start_18e .. :try_end_192} :catchall_192

    :catchall_192
    move-exception v0

    move-object v1, v0

    if-eqz v2, :cond_19e

    :try_start_196
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_199
    .catchall {:try_start_196 .. :try_end_199} :catchall_19a

    goto :goto_19e

    :catchall_19a
    move-exception v0

    :try_start_19b
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_19e
    :goto_19e
    throw v1

    .line 63
    :cond_19f
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_1b6
    :goto_1b6
    const-string v14, "Location"

    invoke-virtual {v12, v14}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 57
    if-eqz v14, :cond_1e5

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_1e5

    .line 58
    const/16 v10, 0xa

    if-eq v8, v10, :cond_1df

    .line 59
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, v2, v14}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 60
    invoke-static {v2, v9}, Lio/nekohasekai/sagernet/ui/SubscriptionDownload;->sameOrigin(Ljava/net/URL;Ljava/net/URL;)Z

    move-result v2
    :try_end_1d1
    .catchall {:try_start_19b .. :try_end_1d1} :catchall_202

    if-nez v2, :cond_1d5

    const/4 v2, 0x0

    move-object v4, v2

    .line 61
    :cond_1d5
    nop

    .line 71
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 61
    nop

    .line 45
    add-int/lit8 v8, v8, 0x1

    move-object v2, v9

    goto/16 :goto_36

    .line 58
    :cond_1df
    :try_start_1df
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_1e5
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\uff1a\u91cd\u5b9a\u5411\u7f3a\u5c11\u5730\u5740"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_202
    .catchall {:try_start_1df .. :try_end_202} :catchall_202

    .line 71
    :catchall_202
    move-exception v0

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0

    .line 73
    :cond_207
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$fetch$0(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .registers 2

    .line 53
    const/4 p0, 0x1

    return p0
.end method

.method private static port(Ljava/net/URL;)I
    .registers 2

    .line 79
    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    move-result v0

    if-gez v0, :cond_b

    invoke-virtual {p0}, Ljava/net/URL;->getDefaultPort()I

    move-result p0

    goto :goto_f

    :cond_b
    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    move-result p0

    :goto_f
    return p0
.end method

.method private static remaining(J)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketTimeoutException;
        }
    .end annotation

    .line 76
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_21

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_21

    const-wide/32 v0, 0xf4240

    div-long/2addr p0, v0

    const-wide/16 v0, 0x1

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    long-to-int p0, p0

    return p0

    :cond_21
    new-instance p0, Ljava/net/SocketTimeoutException;

    const-string p1, "\u8ba2\u9605\u4e0b\u8f7d\u8d85\u65f6\u6216\u5df2\u4e2d\u65ad"

    invoke-direct {p0, p1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static sameOrigin(Ljava/net/URL;Ljava/net/URL;)Z
    .registers 4

    .line 78
    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/SubscriptionDownload;->port(Ljava/net/URL;)I

    move-result p0

    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/SubscriptionDownload;->port(Ljava/net/URL;)I

    move-result p1

    if-ne p0, p1, :cond_28

    const/4 p0, 0x1

    goto :goto_29

    :cond_28
    const/4 p0, 0x0

    :goto_29
    return p0
.end method

.method private static socketFactory(Z)Ljavax/net/ssl/SSLSocketFactory;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 86
    if-nez p0, :cond_7

    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p0

    return-object p0

    .line 87
    :cond_7
    const-string p0, "TLS"

    invoke-static {p0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object p0

    .line 88
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    new-instance v1, Lio/nekohasekai/sagernet/ui/SubscriptionDownload$1;

    invoke-direct {v1}, Lio/nekohasekai/sagernet/ui/SubscriptionDownload$1;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 89
    invoke-virtual {p0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p0

    return-object p0
.end method
