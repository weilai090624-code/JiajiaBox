.class public final Lokhttp3/internal/http/CallServerInterceptor;
.super Ljava/lang/Object;
.source "CallServerInterceptor.kt"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lokhttp3/internal/http/CallServerInterceptor;",
        "Lokhttp3/Interceptor;",
        "forWebSocket",
        "",
        "(Z)V",
        "intercept",
        "Lokhttp3/Response;",
        "chain",
        "Lokhttp3/Interceptor$Chain;",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final forWebSocket:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "forWebSocket"    # Z

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lokhttp3/internal/http/CallServerInterceptor;->forWebSocket:Z

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 18
    .param p1, "chain"    # Lokhttp3/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p1

    const-string v2, "Connection"

    const-string v3, "close"

    const-string v0, "chain"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    move-object v4, v1

    check-cast v4, Lokhttp3/internal/http/RealInterceptorChain;

    .line 32
    .local v4, "realChain":Lokhttp3/internal/http/RealInterceptorChain;
    invoke-virtual {v4}, Lokhttp3/internal/http/RealInterceptorChain;->getExchange$okhttp()Lokhttp3/internal/connection/Exchange;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v5, v0

    .line 33
    .local v5, "exchange":Lokhttp3/internal/connection/Exchange;
    invoke-virtual {v4}, Lokhttp3/internal/http/RealInterceptorChain;->getRequest$okhttp()Lokhttp3/Request;

    move-result-object v6

    .line 34
    .local v6, "request":Lokhttp3/Request;
    invoke-virtual {v6}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v7

    .line 35
    .local v7, "requestBody":Lokhttp3/RequestBody;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 37
    .local v8, "sentRequestMillis":J
    const/4 v10, 0x1

    .line 38
    .local v10, "invokeStartEvent":Z
    const/4 v11, 0x0

    .line 39
    .local v11, "responseBuilder":Lokhttp3/Response$Builder;
    const/4 v12, 0x0

    .line 40
    .local v12, "sendRequestException":Ljava/io/IOException;
    nop

    .line 41
    const/4 v13, 0x0

    const/4 v14, 0x1

    :try_start_0
    invoke-virtual {v5, v6}, Lokhttp3/internal/connection/Exchange;->writeRequestHeaders(Lokhttp3/Request;)V

    .line 43
    invoke-virtual {v6}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v7, :cond_3

    .line 47
    const-string v0, "100-continue"

    const-string v15, "Expect"

    invoke-virtual {v6, v15}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v0, v15, v14}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v5}, Lokhttp3/internal/connection/Exchange;->flushRequest()V

    .line 49
    invoke-virtual {v5, v14}, Lokhttp3/internal/connection/Exchange;->readResponseHeaders(Z)Lokhttp3/Response$Builder;

    move-result-object v0

    move-object v11, v0

    .line 50
    invoke-virtual {v5}, Lokhttp3/internal/connection/Exchange;->responseHeadersStart()V

    .line 51
    const/4 v10, 0x0

    .line 53
    :cond_0
    if-nez v11, :cond_2

    .line 54
    invoke-virtual {v7}, Lokhttp3/RequestBody;->isDuplex()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    invoke-virtual {v5}, Lokhttp3/internal/connection/Exchange;->flushRequest()V

    .line 57
    invoke-virtual {v5, v6, v14}, Lokhttp3/internal/connection/Exchange;->createRequestBody(Lokhttp3/Request;Z)Lokio/Sink;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v0

    .line 58
    .local v0, "bufferedRequestBody":Lokio/BufferedSink;
    invoke-virtual {v7, v0}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .end local v0    # "bufferedRequestBody":Lokio/BufferedSink;
    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {v5, v6, v13}, Lokhttp3/internal/connection/Exchange;->createRequestBody(Lokhttp3/Request;Z)Lokio/Sink;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v0

    .line 62
    .restart local v0    # "bufferedRequestBody":Lokio/BufferedSink;
    invoke-virtual {v7, v0}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 63
    invoke-interface {v0}, Lokio/BufferedSink;->close()V

    .end local v0    # "bufferedRequestBody":Lokio/BufferedSink;
    goto :goto_0

    .line 66
    :cond_2
    invoke-virtual {v5}, Lokhttp3/internal/connection/Exchange;->noRequestBody()V

    .line 67
    invoke-virtual {v5}, Lokhttp3/internal/connection/Exchange;->getConnection$okhttp()Lokhttp3/internal/connection/RealConnection;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->isMultiplexed$okhttp()Z

    move-result v0

    if-nez v0, :cond_4

    .line 71
    invoke-virtual {v5}, Lokhttp3/internal/connection/Exchange;->noNewExchangesOnConnection()V

    goto :goto_0

    .line 75
    :cond_3
    invoke-virtual {v5}, Lokhttp3/internal/connection/Exchange;->noRequestBody()V

    .line 78
    :cond_4
    :goto_0
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Lokhttp3/RequestBody;->isDuplex()Z

    move-result v0

    if-nez v0, :cond_6

    .line 79
    :cond_5
    invoke-virtual {v5}, Lokhttp3/internal/connection/Exchange;->finishRequest()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/io/IOException;
    instance-of v15, v0, Lokhttp3/internal/http2/ConnectionShutdownException;

    if-nez v15, :cond_13

    .line 85
    invoke-virtual {v5}, Lokhttp3/internal/connection/Exchange;->getHasFailure$okhttp()Z

    move-result v15

    if-eqz v15, :cond_12

    .line 88
    move-object v12, v0

    .line 91
    .end local v0    # "e":Ljava/io/IOException;
    :cond_6
    :goto_1
    nop

    .line 92
    if-nez v11, :cond_7

    .line 93
    :try_start_1
    invoke-virtual {v5, v13}, Lokhttp3/internal/connection/Exchange;->readResponseHeaders(Z)Lokhttp3/Response$Builder;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v11, v0

    .line 94
    if-eqz v10, :cond_7

    .line 95
    invoke-virtual {v5}, Lokhttp3/internal/connection/Exchange;->responseHeadersStart()V

    .line 96
    const/4 v10, 0x0

    .line 99
    :cond_7
    nop

    .line 100
    invoke-virtual {v11, v6}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    move-result-object v0

    .line 101
    invoke-virtual {v5}, Lokhttp3/internal/connection/Exchange;->getConnection$okhttp()Lokhttp3/internal/connection/RealConnection;

    move-result-object v15

    invoke-virtual {v15}, Lokhttp3/internal/connection/RealConnection;->handshake()Lokhttp3/Handshake;

    move-result-object v15

    invoke-virtual {v0, v15}, Lokhttp3/Response$Builder;->handshake(Lokhttp3/Handshake;)Lokhttp3/Response$Builder;

    move-result-object v0

    .line 102
    invoke-virtual {v0, v8, v9}, Lokhttp3/Response$Builder;->sentRequestAtMillis(J)Lokhttp3/Response$Builder;

    move-result-object v0

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v0, v14, v15}, Lokhttp3/Response$Builder;->receivedResponseAtMillis(J)Lokhttp3/Response$Builder;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v0

    .line 99
    nop

    .line 105
    .local v0, "response":Lokhttp3/Response;
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v14

    .line 106
    .local v14, "code":I
    const/16 v15, 0x64

    if-ne v14, v15, :cond_9

    .line 109
    invoke-virtual {v5, v13}, Lokhttp3/internal/connection/Exchange;->readResponseHeaders(Z)Lokhttp3/Response$Builder;

    move-result-object v13

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v11, v13

    .line 110
    if-eqz v10, :cond_8

    .line 111
    invoke-virtual {v5}, Lokhttp3/internal/connection/Exchange;->responseHeadersStart()V

    .line 118
    :cond_8
    nop

    .line 113
    nop

    .line 114
    invoke-virtual {v11, v6}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    move-result-object v13

    .line 115
    invoke-virtual {v5}, Lokhttp3/internal/connection/Exchange;->getConnection$okhttp()Lokhttp3/internal/connection/RealConnection;

    move-result-object v15

    invoke-virtual {v15}, Lokhttp3/internal/connection/RealConnection;->handshake()Lokhttp3/Handshake;

    move-result-object v15

    invoke-virtual {v13, v15}, Lokhttp3/Response$Builder;->handshake(Lokhttp3/Handshake;)Lokhttp3/Response$Builder;

    move-result-object v13

    .line 116
    invoke-virtual {v13, v8, v9}, Lokhttp3/Response$Builder;->sentRequestAtMillis(J)Lokhttp3/Response$Builder;

    move-result-object v13

    .line 117
    move-object v15, v0

    .end local v0    # "response":Lokhttp3/Response;
    .local v15, "response":Lokhttp3/Response;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v13, v0, v1}, Lokhttp3/Response$Builder;->receivedResponseAtMillis(J)Lokhttp3/Response$Builder;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v0

    .line 113
    nop

    .line 119
    .end local v15    # "response":Lokhttp3/Response;
    .restart local v0    # "response":Lokhttp3/Response;
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v1

    move v14, v1

    goto :goto_2

    .line 106
    :cond_9
    move-object v15, v0

    .line 122
    :goto_2
    invoke-virtual {v5, v0}, Lokhttp3/internal/connection/Exchange;->responseHeadersEnd(Lokhttp3/Response;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 124
    move-object/from16 v1, p0

    :try_start_2
    iget-boolean v13, v1, Lokhttp3/internal/http/CallServerInterceptor;->forWebSocket:Z

    if-eqz v13, :cond_a

    const/16 v13, 0x65

    if-ne v14, v13, :cond_a

    .line 126
    invoke-virtual {v0}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v13

    .line 127
    sget-object v15, Lokhttp3/internal/Util;->EMPTY_RESPONSE:Lokhttp3/ResponseBody;

    invoke-virtual {v13, v15}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v13

    .line 128
    invoke-virtual {v13}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v13

    goto :goto_3

    .line 130
    :cond_a
    invoke-virtual {v0}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v13

    .line 131
    invoke-virtual {v5, v0}, Lokhttp3/internal/connection/Exchange;->openResponseBody(Lokhttp3/Response;)Lokhttp3/ResponseBody;

    move-result-object v15

    invoke-virtual {v13, v15}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v13

    .line 132
    invoke-virtual {v13}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v13

    .line 124
    :goto_3
    move-object v0, v13

    .line 134
    invoke-virtual {v0}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v13

    invoke-virtual {v13, v2}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x1

    invoke-static {v3, v13, v15}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v13

    const/4 v15, 0x0

    if-nez v13, :cond_b

    .line 135
    const/4 v13, 0x2

    invoke-static {v0, v2, v15, v13, v15}, Lokhttp3/Response;->header$default(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v13, 0x1

    invoke-static {v3, v2, v13}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 136
    :cond_b
    invoke-virtual {v5}, Lokhttp3/internal/connection/Exchange;->noNewExchangesOnConnection()V

    .line 138
    :cond_c
    const/16 v2, 0xcc

    if-eq v14, v2, :cond_d

    const/16 v2, 0xcd

    if-ne v14, v2, :cond_10

    :cond_d
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    if-nez v2, :cond_e

    const-wide/16 v2, -0x1

    goto :goto_4

    :cond_e
    invoke-virtual {v2}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v2

    :goto_4
    const-wide/16 v16, 0x0

    cmp-long v13, v2, v16

    if-lez v13, :cond_10

    .line 139
    new-instance v2, Ljava/net/ProtocolException;

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "HTTP "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, " had non-zero Content-Length: "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v13

    if-nez v13, :cond_f

    :goto_5
    goto :goto_6

    :cond_f
    invoke-virtual {v13}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    goto :goto_5

    :goto_6
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 139
    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .end local v4    # "realChain":Lokhttp3/internal/http/RealInterceptorChain;
    .end local v5    # "exchange":Lokhttp3/internal/connection/Exchange;
    .end local v6    # "request":Lokhttp3/Request;
    .end local v7    # "requestBody":Lokhttp3/RequestBody;
    .end local v8    # "sentRequestMillis":J
    .end local v10    # "invokeStartEvent":Z
    .end local v11    # "responseBuilder":Lokhttp3/Response$Builder;
    .end local v12    # "sendRequestException":Ljava/io/IOException;
    .end local p1    # "chain":Lokhttp3/Interceptor$Chain;
    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 142
    .restart local v4    # "realChain":Lokhttp3/internal/http/RealInterceptorChain;
    .restart local v5    # "exchange":Lokhttp3/internal/connection/Exchange;
    .restart local v6    # "request":Lokhttp3/Request;
    .restart local v7    # "requestBody":Lokhttp3/RequestBody;
    .restart local v8    # "sentRequestMillis":J
    .restart local v10    # "invokeStartEvent":Z
    .restart local v11    # "responseBuilder":Lokhttp3/Response$Builder;
    .restart local v12    # "sendRequestException":Ljava/io/IOException;
    .restart local p1    # "chain":Lokhttp3/Interceptor$Chain;
    :cond_10
    return-object v0

    .line 143
    .end local v0    # "response":Lokhttp3/Response;
    .end local v14    # "code":I
    :catch_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    move-object/from16 v1, p0

    .line 144
    .local v0, "e":Ljava/io/IOException;
    :goto_7
    if-eqz v12, :cond_11

    .line 145
    move-object v2, v12

    check-cast v2, Ljava/lang/Throwable;

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v2, v3}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 146
    throw v12

    .line 148
    :cond_11
    throw v0

    .line 86
    :cond_12
    move-object/from16 v1, p0

    throw v0

    .line 83
    :cond_13
    move-object/from16 v1, p0

    throw v0
.end method
