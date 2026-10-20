.class final Lokhttp3/Cache$Entry;
.super Ljava/lang/Object;
.source "Cache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/Cache$Entry$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0002\u0018\u0000 -2\u00020\u0001:\u0001-B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u000f\u0008\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0016\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0005\u001a\u00020\u0006J\u0016\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u001e2\u0006\u0010 \u001a\u00020!H\u0002J\u0012\u0010\u0005\u001a\u00020\u00062\n\u0010\"\u001a\u00060#R\u00020$J\u001e\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020(2\u000c\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u001eH\u0002J\u0012\u0010*\u001a\u00020&2\n\u0010+\u001a\u00060,R\u00020$R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006."
    }
    d2 = {
        "Lokhttp3/Cache$Entry;",
        "",
        "rawSource",
        "Lokio/Source;",
        "(Lokio/Source;)V",
        "response",
        "Lokhttp3/Response;",
        "(Lokhttp3/Response;)V",
        "code",
        "",
        "handshake",
        "Lokhttp3/Handshake;",
        "message",
        "",
        "protocol",
        "Lokhttp3/Protocol;",
        "receivedResponseMillis",
        "",
        "requestMethod",
        "responseHeaders",
        "Lokhttp3/Headers;",
        "sentRequestMillis",
        "url",
        "Lokhttp3/HttpUrl;",
        "varyHeaders",
        "matches",
        "",
        "request",
        "Lokhttp3/Request;",
        "readCertificateList",
        "",
        "Ljava/security/cert/Certificate;",
        "source",
        "Lokio/BufferedSource;",
        "snapshot",
        "Lokhttp3/internal/cache/DiskLruCache$Snapshot;",
        "Lokhttp3/internal/cache/DiskLruCache;",
        "writeCertList",
        "",
        "sink",
        "Lokio/BufferedSink;",
        "certificates",
        "writeTo",
        "editor",
        "Lokhttp3/internal/cache/DiskLruCache$Editor;",
        "Companion",
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


# static fields
.field public static final Companion:Lokhttp3/Cache$Entry$Companion;

.field private static final RECEIVED_MILLIS:Ljava/lang/String;

.field private static final SENT_MILLIS:Ljava/lang/String;


# instance fields
.field private final code:I

.field private final handshake:Lokhttp3/Handshake;

.field private final message:Ljava/lang/String;

.field private final protocol:Lokhttp3/Protocol;

.field private final receivedResponseMillis:J

.field private final requestMethod:Ljava/lang/String;

.field private final responseHeaders:Lokhttp3/Headers;

.field private final sentRequestMillis:J

.field private final url:Lokhttp3/HttpUrl;

.field private final varyHeaders:Lokhttp3/Headers;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokhttp3/Cache$Entry$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/Cache$Entry$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokhttp3/Cache$Entry;->Companion:Lokhttp3/Cache$Entry$Companion;

    .line 671
    sget-object v0, Lokhttp3/internal/platform/Platform;->Companion:Lokhttp3/internal/platform/Platform$Companion;

    invoke-virtual {v0}, Lokhttp3/internal/platform/Platform$Companion;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/platform/Platform;->getPrefix()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-Sent-Millis"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lokhttp3/Cache$Entry;->SENT_MILLIS:Ljava/lang/String;

    .line 674
    sget-object v0, Lokhttp3/internal/platform/Platform;->Companion:Lokhttp3/internal/platform/Platform$Companion;

    invoke-virtual {v0}, Lokhttp3/internal/platform/Platform$Companion;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/platform/Platform;->getPrefix()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-Received-Millis"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lokhttp3/Cache$Entry;->RECEIVED_MILLIS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lokhttp3/Response;)V
    .locals 2
    .param p1, "response"    # Lokhttp3/Response;

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 556
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$Entry;->url:Lokhttp3/HttpUrl;

    .line 557
    sget-object v0, Lokhttp3/Cache;->Companion:Lokhttp3/Cache$Companion;

    invoke-virtual {v0, p1}, Lokhttp3/Cache$Companion;->varyHeaders(Lokhttp3/Response;)Lokhttp3/Headers;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$Entry;->varyHeaders:Lokhttp3/Headers;

    .line 558
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    .line 559
    invoke-virtual {p1}, Lokhttp3/Response;->protocol()Lokhttp3/Protocol;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$Entry;->protocol:Lokhttp3/Protocol;

    .line 560
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v0

    iput v0, p0, Lokhttp3/Cache$Entry;->code:I

    .line 561
    invoke-virtual {p1}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$Entry;->message:Ljava/lang/String;

    .line 562
    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$Entry;->responseHeaders:Lokhttp3/Headers;

    .line 563
    invoke-virtual {p1}, Lokhttp3/Response;->handshake()Lokhttp3/Handshake;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$Entry;->handshake:Lokhttp3/Handshake;

    .line 564
    invoke-virtual {p1}, Lokhttp3/Response;->sentRequestAtMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/Cache$Entry;->sentRequestMillis:J

    .line 565
    invoke-virtual {p1}, Lokhttp3/Response;->receivedResponseAtMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/Cache$Entry;->receivedResponseMillis:J

    .line 566
    return-void
.end method

.method public constructor <init>(Lokio/Source;)V
    .locals 23
    .param p1, "rawSource"    # Lokio/Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "rawSource"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 500
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 501
    move-object v3, v2

    check-cast v3, Ljava/io/Closeable;

    const/4 v0, 0x0

    move-object v4, v0

    check-cast v4, Ljava/lang/Throwable;

    :try_start_0
    move-object v4, v3

    check-cast v4, Lokio/Source;

    .local v4, "it":Lokio/Source;
    const/4 v5, 0x0

    .line 502
    .local v5, "$i$a$-use-Cache$Entry$1":I
    invoke-static/range {p1 .. p1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v6

    .line 503
    .local v6, "source":Lokio/BufferedSource;
    invoke-interface {v6}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v7

    .line 506
    .local v7, "urlLine":Ljava/lang/String;
    sget-object v8, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    invoke-virtual {v8, v7}, Lokhttp3/HttpUrl$Companion;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v8

    if-eqz v8, :cond_a

    iput-object v8, v1, Lokhttp3/Cache$Entry;->url:Lokhttp3/HttpUrl;

    .line 509
    invoke-interface {v6}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lokhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    .line 510
    new-instance v8, Lokhttp3/Headers$Builder;

    invoke-direct {v8}, Lokhttp3/Headers$Builder;-><init>()V

    .line 511
    .local v8, "varyHeadersBuilder":Lokhttp3/Headers$Builder;
    sget-object v9, Lokhttp3/Cache;->Companion:Lokhttp3/Cache$Companion;

    invoke-virtual {v9, v6}, Lokhttp3/Cache$Companion;->readInt$okhttp(Lokio/BufferedSource;)I

    move-result v9

    .line 512
    .local v9, "varyRequestHeaderLineCount":I
    const/4 v10, 0x1

    if-lez v9, :cond_1

    const/4 v12, 0x0

    :cond_0
    move v13, v12

    .local v13, "i":I
    add-int/2addr v12, v10

    .line 513
    invoke-interface {v6}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Lokhttp3/Headers$Builder;->addLenient$okhttp(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 512
    if-lt v12, v9, :cond_0

    .line 515
    .end local v13    # "i":I
    :cond_1
    invoke-virtual {v8}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v12

    iput-object v12, v1, Lokhttp3/Cache$Entry;->varyHeaders:Lokhttp3/Headers;

    .line 517
    sget-object v12, Lokhttp3/internal/http/StatusLine;->Companion:Lokhttp3/internal/http/StatusLine$Companion;

    invoke-interface {v6}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lokhttp3/internal/http/StatusLine$Companion;->parse(Ljava/lang/String;)Lokhttp3/internal/http/StatusLine;

    move-result-object v12

    .line 518
    .local v12, "statusLine":Lokhttp3/internal/http/StatusLine;
    iget-object v13, v12, Lokhttp3/internal/http/StatusLine;->protocol:Lokhttp3/Protocol;

    iput-object v13, v1, Lokhttp3/Cache$Entry;->protocol:Lokhttp3/Protocol;

    .line 519
    iget v13, v12, Lokhttp3/internal/http/StatusLine;->code:I

    iput v13, v1, Lokhttp3/Cache$Entry;->code:I

    .line 520
    iget-object v13, v12, Lokhttp3/internal/http/StatusLine;->message:Ljava/lang/String;

    iput-object v13, v1, Lokhttp3/Cache$Entry;->message:Ljava/lang/String;

    .line 521
    new-instance v13, Lokhttp3/Headers$Builder;

    invoke-direct {v13}, Lokhttp3/Headers$Builder;-><init>()V

    .line 522
    .local v13, "responseHeadersBuilder":Lokhttp3/Headers$Builder;
    sget-object v14, Lokhttp3/Cache;->Companion:Lokhttp3/Cache$Companion;

    invoke-virtual {v14, v6}, Lokhttp3/Cache$Companion;->readInt$okhttp(Lokio/BufferedSource;)I

    move-result v14

    .line 523
    .local v14, "responseHeaderLineCount":I
    if-lez v14, :cond_3

    const/4 v15, 0x0

    :goto_0
    move/from16 v16, v15

    .local v16, "i":I
    add-int/2addr v15, v10

    .line 524
    invoke-interface {v6}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10}, Lokhttp3/Headers$Builder;->addLenient$okhttp(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 523
    if-lt v15, v14, :cond_2

    goto :goto_1

    :cond_2
    const/4 v10, 0x1

    goto :goto_0

    .line 526
    .end local v16    # "i":I
    :cond_3
    :goto_1
    sget-object v10, Lokhttp3/Cache$Entry;->SENT_MILLIS:Ljava/lang/String;

    invoke-virtual {v13, v10}, Lokhttp3/Headers$Builder;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 527
    .local v10, "sendRequestMillisString":Ljava/lang/String;
    sget-object v15, Lokhttp3/Cache$Entry;->RECEIVED_MILLIS:Ljava/lang/String;

    invoke-virtual {v13, v15}, Lokhttp3/Headers$Builder;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 528
    .local v15, "receivedResponseMillisString":Ljava/lang/String;
    sget-object v11, Lokhttp3/Cache$Entry;->SENT_MILLIS:Ljava/lang/String;

    invoke-virtual {v13, v11}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 529
    sget-object v11, Lokhttp3/Cache$Entry;->RECEIVED_MILLIS:Ljava/lang/String;

    invoke-virtual {v13, v11}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 530
    const-wide/16 v18, 0x0

    if-nez v10, :cond_4

    move-object v11, v4

    move/from16 v22, v5

    move-wide/from16 v4, v18

    goto :goto_2

    :cond_4
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    move-object v11, v4

    move/from16 v22, v5

    move-wide/from16 v4, v20

    .end local v4    # "it":Lokio/Source;
    .end local v5    # "$i$a$-use-Cache$Entry$1":I
    .local v11, "it":Lokio/Source;
    .local v22, "$i$a$-use-Cache$Entry$1":I
    :goto_2
    iput-wide v4, v1, Lokhttp3/Cache$Entry;->sentRequestMillis:J

    .line 531
    if-nez v15, :cond_5

    :goto_3
    move-wide/from16 v4, v18

    goto :goto_4

    :cond_5
    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    goto :goto_3

    :goto_4
    iput-wide v4, v1, Lokhttp3/Cache$Entry;->receivedResponseMillis:J

    .line 532
    invoke-virtual {v13}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v4

    iput-object v4, v1, Lokhttp3/Cache$Entry;->responseHeaders:Lokhttp3/Headers;

    .line 534
    iget-object v4, v1, Lokhttp3/Cache$Entry;->url:Lokhttp3/HttpUrl;

    invoke-virtual {v4}, Lokhttp3/HttpUrl;->isHttps()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 535
    invoke-interface {v6}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v4

    .line 536
    .local v4, "blank":Ljava/lang/String;
    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_6

    const/16 v16, 0x1

    goto :goto_5

    :cond_6
    const/16 v16, 0x0

    :goto_5
    if-nez v16, :cond_8

    .line 539
    invoke-interface {v6}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v5

    .line 540
    .local v5, "cipherSuiteString":Ljava/lang/String;
    sget-object v0, Lokhttp3/CipherSuite;->Companion:Lokhttp3/CipherSuite$Companion;

    invoke-virtual {v0, v5}, Lokhttp3/CipherSuite$Companion;->forJavaName(Ljava/lang/String;)Lokhttp3/CipherSuite;

    move-result-object v0

    .line 541
    .local v0, "cipherSuite":Lokhttp3/CipherSuite;
    invoke-direct {v1, v6}, Lokhttp3/Cache$Entry;->readCertificateList(Lokio/BufferedSource;)Ljava/util/List;

    move-result-object v17

    move-object/from16 v18, v17

    .line 542
    .local v18, "peerCertificates":Ljava/util/List;
    invoke-direct {v1, v6}, Lokhttp3/Cache$Entry;->readCertificateList(Lokio/BufferedSource;)Ljava/util/List;

    move-result-object v17

    move-object/from16 v19, v17

    .line 543
    .local v19, "localCertificates":Ljava/util/List;
    invoke-interface {v6}, Lokio/BufferedSource;->exhausted()Z

    move-result v17

    if-nez v17, :cond_7

    .line 544
    sget-object v2, Lokhttp3/TlsVersion;->Companion:Lokhttp3/TlsVersion$Companion;

    move-object/from16 v17, v5

    .end local v5    # "cipherSuiteString":Ljava/lang/String;
    .local v17, "cipherSuiteString":Ljava/lang/String;
    invoke-interface {v6}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lokhttp3/TlsVersion$Companion;->forJavaName(Ljava/lang/String;)Lokhttp3/TlsVersion;

    move-result-object v2

    goto :goto_6

    .line 546
    .end local v17    # "cipherSuiteString":Ljava/lang/String;
    .restart local v5    # "cipherSuiteString":Ljava/lang/String;
    :cond_7
    move-object/from16 v17, v5

    .end local v5    # "cipherSuiteString":Ljava/lang/String;
    .restart local v17    # "cipherSuiteString":Ljava/lang/String;
    sget-object v2, Lokhttp3/TlsVersion;->SSL_3_0:Lokhttp3/TlsVersion;

    .line 543
    :goto_6
    nop

    .line 548
    .local v2, "tlsVersion":Lokhttp3/TlsVersion;
    sget-object v5, Lokhttp3/Handshake;->Companion:Lokhttp3/Handshake$Companion;

    move-object/from16 v20, v6

    move-object/from16 v6, v18

    move-object/from16 v18, v8

    move-object/from16 v8, v19

    .end local v19    # "localCertificates":Ljava/util/List;
    .local v6, "peerCertificates":Ljava/util/List;
    .local v8, "localCertificates":Ljava/util/List;
    .local v18, "varyHeadersBuilder":Lokhttp3/Headers$Builder;
    .local v20, "source":Lokio/BufferedSource;
    invoke-virtual {v5, v2, v0, v6, v8}, Lokhttp3/Handshake$Companion;->get(Lokhttp3/TlsVersion;Lokhttp3/CipherSuite;Ljava/util/List;Ljava/util/List;)Lokhttp3/Handshake;

    move-result-object v5

    iput-object v5, v1, Lokhttp3/Cache$Entry;->handshake:Lokhttp3/Handshake;

    const/4 v0, 0x0

    .end local v0    # "cipherSuite":Lokhttp3/CipherSuite;
    .end local v2    # "tlsVersion":Lokhttp3/TlsVersion;
    .end local v4    # "blank":Ljava/lang/String;
    .end local v6    # "peerCertificates":Ljava/util/List;
    .end local v8    # "localCertificates":Ljava/util/List;
    .end local v17    # "cipherSuiteString":Ljava/lang/String;
    goto :goto_7

    .line 537
    .end local v18    # "varyHeadersBuilder":Lokhttp3/Headers$Builder;
    .end local v20    # "source":Lokio/BufferedSource;
    .restart local v4    # "blank":Ljava/lang/String;
    .local v6, "source":Lokio/BufferedSource;
    .local v8, "varyHeadersBuilder":Lokhttp3/Headers$Builder;
    :cond_8
    move-object/from16 v20, v6

    move-object/from16 v18, v8

    .end local v6    # "source":Lokio/BufferedSource;
    .end local v8    # "varyHeadersBuilder":Lokhttp3/Headers$Builder;
    .restart local v18    # "varyHeadersBuilder":Lokhttp3/Headers$Builder;
    .restart local v20    # "source":Lokio/BufferedSource;
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expected \"\" but was \""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v5, 0x22

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p1    # "rawSource":Lokio/Source;
    throw v0

    .line 550
    .end local v4    # "blank":Ljava/lang/String;
    .end local v18    # "varyHeadersBuilder":Lokhttp3/Headers$Builder;
    .end local v20    # "source":Lokio/BufferedSource;
    .restart local v6    # "source":Lokio/BufferedSource;
    .restart local v8    # "varyHeadersBuilder":Lokhttp3/Headers$Builder;
    .restart local p1    # "rawSource":Lokio/Source;
    :cond_9
    move-object/from16 v20, v6

    move-object/from16 v18, v8

    .end local v6    # "source":Lokio/BufferedSource;
    .end local v8    # "varyHeadersBuilder":Lokhttp3/Headers$Builder;
    .restart local v18    # "varyHeadersBuilder":Lokhttp3/Headers$Builder;
    .restart local v20    # "source":Lokio/BufferedSource;
    const/4 v0, 0x0

    iput-object v0, v1, Lokhttp3/Cache$Entry;->handshake:Lokhttp3/Handshake;

    .line 552
    :goto_7
    nop

    .end local v7    # "urlLine":Ljava/lang/String;
    .end local v9    # "varyRequestHeaderLineCount":I
    .end local v10    # "sendRequestMillisString":Ljava/lang/String;
    .end local v11    # "it":Lokio/Source;
    .end local v12    # "statusLine":Lokhttp3/internal/http/StatusLine;
    .end local v13    # "responseHeadersBuilder":Lokhttp3/Headers$Builder;
    .end local v14    # "responseHeaderLineCount":I
    .end local v15    # "receivedResponseMillisString":Ljava/lang/String;
    .end local v18    # "varyHeadersBuilder":Lokhttp3/Headers$Builder;
    .end local v20    # "source":Lokio/BufferedSource;
    .end local v22    # "$i$a$-use-Cache$Entry$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    invoke-static {v3, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 553
    return-void

    .line 506
    .local v4, "it":Lokio/Source;
    .local v5, "$i$a$-use-Cache$Entry$1":I
    .restart local v6    # "source":Lokio/BufferedSource;
    .restart local v7    # "urlLine":Ljava/lang/String;
    :cond_a
    move-object v11, v4

    move/from16 v22, v5

    move-object/from16 v20, v6

    .end local v4    # "it":Lokio/Source;
    .end local v5    # "$i$a$-use-Cache$Entry$1":I
    .end local v6    # "source":Lokio/BufferedSource;
    .restart local v11    # "it":Lokio/Source;
    .restart local v20    # "source":Lokio/BufferedSource;
    .restart local v22    # "$i$a$-use-Cache$Entry$1":I
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Cache corruption for "

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    .local v2, "it":Ljava/io/IOException;
    const/4 v4, 0x0

    .line 507
    .local v4, "$i$a$-also-Cache$Entry$1$1":I
    sget-object v5, Lokhttp3/internal/platform/Platform;->Companion:Lokhttp3/internal/platform/Platform$Companion;

    invoke-virtual {v5}, Lokhttp3/internal/platform/Platform$Companion;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v5

    const-string v6, "cache corruption"

    move-object v8, v2

    check-cast v8, Ljava/lang/Throwable;

    const/4 v9, 0x5

    invoke-virtual {v5, v6, v9, v8}, Lokhttp3/internal/platform/Platform;->log(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 508
    nop

    .end local v2    # "it":Ljava/io/IOException;
    .end local v4    # "$i$a$-also-Cache$Entry$1$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 506
    check-cast v0, Ljava/lang/Throwable;

    .end local p1    # "rawSource":Lokio/Source;
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 501
    .end local v7    # "urlLine":Ljava/lang/String;
    .end local v11    # "it":Lokio/Source;
    .end local v20    # "source":Lokio/BufferedSource;
    .end local v22    # "$i$a$-use-Cache$Entry$1":I
    .restart local p1    # "rawSource":Lokio/Source;
    :catchall_0
    move-exception v0

    move-object v2, v0

    .end local p1    # "rawSource":Lokio/Source;
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .restart local p1    # "rawSource":Lokio/Source;
    :catchall_1
    move-exception v0

    move-object v4, v0

    invoke-static {v3, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private final readCertificateList(Lokio/BufferedSource;)Ljava/util/List;
    .locals 8
    .param p1, "source"    # Lokio/BufferedSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/BufferedSource;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 610
    sget-object v0, Lokhttp3/Cache;->Companion:Lokhttp3/Cache$Companion;

    invoke-virtual {v0, p1}, Lokhttp3/Cache$Companion;->readInt$okhttp(Lokio/BufferedSource;)I

    move-result v0

    .line 611
    .local v0, "length":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 613
    :cond_0
    nop

    .line 614
    :try_start_0
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 615
    .local v1, "certificateFactory":Ljava/security/cert/CertificateFactory;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 616
    .local v2, "result":Ljava/util/ArrayList;
    if-lez v0, :cond_2

    const/4 v3, 0x0

    :cond_1
    move v4, v3

    .local v4, "i":I
    add-int/lit8 v3, v3, 0x1

    .line 617
    invoke-interface {p1}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v5

    .line 618
    .local v5, "line":Ljava/lang/String;
    new-instance v6, Lokio/Buffer;

    invoke-direct {v6}, Lokio/Buffer;-><init>()V

    .line 619
    .local v6, "bytes":Lokio/Buffer;
    sget-object v7, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    invoke-virtual {v7, v5}, Lokio/ByteString$Companion;->decodeBase64(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    .line 620
    invoke-virtual {v6}, Lokio/Buffer;->inputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 616
    nop

    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "bytes":Lokio/Buffer;
    if-lt v3, v0, :cond_1

    .line 622
    .end local v4    # "i":I
    :cond_2
    move-object v3, v2

    check-cast v3, Ljava/util/List;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 623
    .end local v1    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .end local v2    # "result":Ljava/util/ArrayList;
    :catch_0
    move-exception v1

    .line 624
    .local v1, "e":Ljava/security/cert/CertificateException;
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private final writeCertList(Lokio/BufferedSink;Ljava/util/List;)V
    .locals 10
    .param p1, "sink"    # Lokio/BufferedSink;
    .param p2, "certificates"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/BufferedSink;",
            "Ljava/util/List<",
            "+",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 630
    nop

    .line 631
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lokio/BufferedSink;->writeDecimalLong(J)Lokio/BufferedSink;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 632
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/Certificate;

    .line 633
    .local v2, "element":Ljava/security/cert/Certificate;
    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    .line 634
    .local v3, "bytes":[B
    sget-object v4, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    const-string v5, "bytes"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v3

    invoke-static/range {v4 .. v9}, Lokio/ByteString$Companion;->of$default(Lokio/ByteString$Companion;[BIIILjava/lang/Object;)Lokio/ByteString;

    move-result-object v4

    invoke-virtual {v4}, Lokio/ByteString;->base64()Ljava/lang/String;

    move-result-object v4

    .line 635
    .local v4, "line":Ljava/lang/String;
    invoke-interface {p1, v4}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v5

    invoke-interface {v5, v1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 640
    .end local v2    # "element":Ljava/security/cert/Certificate;
    .end local v3    # "bytes":[B
    .end local v4    # "line":Ljava/lang/String;
    :cond_0
    return-void

    .line 637
    :catch_0
    move-exception v0

    .line 638
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final matches(Lokhttp3/Request;Lokhttp3/Response;)Z
    .locals 2
    .param p1, "request"    # Lokhttp3/Request;
    .param p2, "response"    # Lokhttp3/Response;

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 643
    iget-object v0, p0, Lokhttp3/Cache$Entry;->url:Lokhttp3/HttpUrl;

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Lokhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    invoke-virtual {p1}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 645
    sget-object v0, Lokhttp3/Cache;->Companion:Lokhttp3/Cache$Companion;

    iget-object v1, p0, Lokhttp3/Cache$Entry;->varyHeaders:Lokhttp3/Headers;

    invoke-virtual {v0, p2, v1, p1}, Lokhttp3/Cache$Companion;->varyMatches(Lokhttp3/Response;Lokhttp3/Headers;Lokhttp3/Request;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 643
    :goto_0
    return v0
.end method

.method public final response(Lokhttp3/internal/cache/DiskLruCache$Snapshot;)Lokhttp3/Response;
    .locals 6
    .param p1, "snapshot"    # Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    const-string v0, "snapshot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 649
    iget-object v0, p0, Lokhttp3/Cache$Entry;->responseHeaders:Lokhttp3/Headers;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 650
    .local v0, "contentType":Ljava/lang/String;
    iget-object v1, p0, Lokhttp3/Cache$Entry;->responseHeaders:Lokhttp3/Headers;

    const-string v2, "Content-Length"

    invoke-virtual {v1, v2}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 651
    .local v1, "contentLength":Ljava/lang/String;
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    .line 652
    iget-object v3, p0, Lokhttp3/Cache$Entry;->url:Lokhttp3/HttpUrl;

    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 653
    iget-object v3, p0, Lokhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 654
    iget-object v3, p0, Lokhttp3/Cache$Entry;->varyHeaders:Lokhttp3/Headers;

    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 655
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    .line 651
    nop

    .line 656
    .local v2, "cacheRequest":Lokhttp3/Request;
    new-instance v3, Lokhttp3/Response$Builder;

    invoke-direct {v3}, Lokhttp3/Response$Builder;-><init>()V

    .line 657
    invoke-virtual {v3, v2}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    move-result-object v3

    .line 658
    iget-object v4, p0, Lokhttp3/Cache$Entry;->protocol:Lokhttp3/Protocol;

    invoke-virtual {v3, v4}, Lokhttp3/Response$Builder;->protocol(Lokhttp3/Protocol;)Lokhttp3/Response$Builder;

    move-result-object v3

    .line 659
    iget v4, p0, Lokhttp3/Cache$Entry;->code:I

    invoke-virtual {v3, v4}, Lokhttp3/Response$Builder;->code(I)Lokhttp3/Response$Builder;

    move-result-object v3

    .line 660
    iget-object v4, p0, Lokhttp3/Cache$Entry;->message:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lokhttp3/Response$Builder;->message(Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object v3

    .line 661
    iget-object v4, p0, Lokhttp3/Cache$Entry;->responseHeaders:Lokhttp3/Headers;

    invoke-virtual {v3, v4}, Lokhttp3/Response$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Response$Builder;

    move-result-object v3

    .line 662
    new-instance v4, Lokhttp3/Cache$CacheResponseBody;

    invoke-direct {v4, p1, v0, v1}, Lokhttp3/Cache$CacheResponseBody;-><init>(Lokhttp3/internal/cache/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v4, Lokhttp3/ResponseBody;

    invoke-virtual {v3, v4}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v3

    .line 663
    iget-object v4, p0, Lokhttp3/Cache$Entry;->handshake:Lokhttp3/Handshake;

    invoke-virtual {v3, v4}, Lokhttp3/Response$Builder;->handshake(Lokhttp3/Handshake;)Lokhttp3/Response$Builder;

    move-result-object v3

    .line 664
    iget-wide v4, p0, Lokhttp3/Cache$Entry;->sentRequestMillis:J

    invoke-virtual {v3, v4, v5}, Lokhttp3/Response$Builder;->sentRequestAtMillis(J)Lokhttp3/Response$Builder;

    move-result-object v3

    .line 665
    iget-wide v4, p0, Lokhttp3/Cache$Entry;->receivedResponseMillis:J

    invoke-virtual {v3, v4, v5}, Lokhttp3/Response$Builder;->receivedResponseAtMillis(J)Lokhttp3/Response$Builder;

    move-result-object v3

    .line 666
    invoke-virtual {v3}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v3

    .line 656
    return-object v3
.end method

.method public final writeTo(Lokhttp3/internal/cache/DiskLruCache$Editor;)V
    .locals 12
    .param p1, "editor"    # Lokhttp3/internal/cache/DiskLruCache$Editor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "editor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 570
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lokhttp3/internal/cache/DiskLruCache$Editor;->newSink(I)Lokio/Sink;

    move-result-object v1

    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v1

    check-cast v1, Ljava/io/Closeable;

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Ljava/lang/Throwable;

    :try_start_0
    move-object v3, v1

    check-cast v3, Lokio/BufferedSink;

    .local v3, "sink":Lokio/BufferedSink;
    const/4 v4, 0x0

    .line 571
    .local v4, "$i$a$-use-Cache$Entry$writeTo$1":I
    iget-object v5, p0, Lokhttp3/Cache$Entry;->url:Lokhttp3/HttpUrl;

    invoke-virtual {v5}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v5

    const/16 v6, 0xa

    invoke-interface {v5, v6}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 572
    iget-object v5, p0, Lokhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    invoke-interface {v3, v5}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v5

    invoke-interface {v5, v6}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 573
    iget-object v5, p0, Lokhttp3/Cache$Entry;->varyHeaders:Lokhttp3/Headers;

    invoke-virtual {v5}, Lokhttp3/Headers;->size()I

    move-result v5

    int-to-long v7, v5

    invoke-interface {v3, v7, v8}, Lokio/BufferedSink;->writeDecimalLong(J)Lokio/BufferedSink;

    move-result-object v5

    invoke-interface {v5, v6}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 574
    iget-object v5, p0, Lokhttp3/Cache$Entry;->varyHeaders:Lokhttp3/Headers;

    invoke-virtual {v5}, Lokhttp3/Headers;->size()I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, ": "

    if-lez v5, :cond_1

    const/4 v8, 0x0

    :cond_0
    move v9, v8

    .local v9, "i":I
    add-int/lit8 v8, v8, 0x1

    .line 575
    :try_start_1
    iget-object v10, p0, Lokhttp3/Cache$Entry;->varyHeaders:Lokhttp3/Headers;

    invoke-virtual {v10, v9}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v10}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v10

    .line 576
    invoke-interface {v10, v7}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v10

    .line 577
    iget-object v11, p0, Lokhttp3/Cache$Entry;->varyHeaders:Lokhttp3/Headers;

    invoke-virtual {v11, v9}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v10

    .line 578
    invoke-interface {v10, v6}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 574
    if-lt v8, v5, :cond_0

    .line 581
    .end local v9    # "i":I
    :cond_1
    new-instance v5, Lokhttp3/internal/http/StatusLine;

    iget-object v8, p0, Lokhttp3/Cache$Entry;->protocol:Lokhttp3/Protocol;

    iget v9, p0, Lokhttp3/Cache$Entry;->code:I

    iget-object v10, p0, Lokhttp3/Cache$Entry;->message:Ljava/lang/String;

    invoke-direct {v5, v8, v9, v10}, Lokhttp3/internal/http/StatusLine;-><init>(Lokhttp3/Protocol;ILjava/lang/String;)V

    invoke-virtual {v5}, Lokhttp3/internal/http/StatusLine;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v5

    invoke-interface {v5, v6}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 582
    iget-object v5, p0, Lokhttp3/Cache$Entry;->responseHeaders:Lokhttp3/Headers;

    invoke-virtual {v5}, Lokhttp3/Headers;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    int-to-long v8, v5

    invoke-interface {v3, v8, v9}, Lokio/BufferedSink;->writeDecimalLong(J)Lokio/BufferedSink;

    move-result-object v5

    invoke-interface {v5, v6}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 583
    iget-object v5, p0, Lokhttp3/Cache$Entry;->responseHeaders:Lokhttp3/Headers;

    invoke-virtual {v5}, Lokhttp3/Headers;->size()I

    move-result v5

    if-lez v5, :cond_3

    :cond_2
    move v8, v0

    .local v8, "i":I
    add-int/lit8 v0, v0, 0x1

    .line 584
    iget-object v9, p0, Lokhttp3/Cache$Entry;->responseHeaders:Lokhttp3/Headers;

    invoke-virtual {v9, v8}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v9

    .line 585
    invoke-interface {v9, v7}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v9

    .line 586
    iget-object v10, p0, Lokhttp3/Cache$Entry;->responseHeaders:Lokhttp3/Headers;

    invoke-virtual {v10, v8}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v9

    .line 587
    invoke-interface {v9, v6}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 583
    if-lt v0, v5, :cond_2

    .line 589
    .end local v8    # "i":I
    :cond_3
    sget-object v0, Lokhttp3/Cache$Entry;->SENT_MILLIS:Ljava/lang/String;

    invoke-interface {v3, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v0

    .line 590
    invoke-interface {v0, v7}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v0

    .line 591
    iget-wide v8, p0, Lokhttp3/Cache$Entry;->sentRequestMillis:J

    invoke-interface {v0, v8, v9}, Lokio/BufferedSink;->writeDecimalLong(J)Lokio/BufferedSink;

    move-result-object v0

    .line 592
    invoke-interface {v0, v6}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 593
    sget-object v0, Lokhttp3/Cache$Entry;->RECEIVED_MILLIS:Ljava/lang/String;

    invoke-interface {v3, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v0

    .line 594
    invoke-interface {v0, v7}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v0

    .line 595
    iget-wide v7, p0, Lokhttp3/Cache$Entry;->receivedResponseMillis:J

    invoke-interface {v0, v7, v8}, Lokio/BufferedSink;->writeDecimalLong(J)Lokio/BufferedSink;

    move-result-object v0

    .line 596
    invoke-interface {v0, v6}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 598
    iget-object v0, p0, Lokhttp3/Cache$Entry;->url:Lokhttp3/HttpUrl;

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->isHttps()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 599
    invoke-interface {v3, v6}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 600
    iget-object v0, p0, Lokhttp3/Cache$Entry;->handshake:Lokhttp3/Handshake;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lokhttp3/Handshake;->cipherSuite()Lokhttp3/CipherSuite;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/CipherSuite;->javaName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v0

    invoke-interface {v0, v6}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 601
    iget-object v0, p0, Lokhttp3/Cache$Entry;->handshake:Lokhttp3/Handshake;

    invoke-virtual {v0}, Lokhttp3/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lokhttp3/Cache$Entry;->writeCertList(Lokio/BufferedSink;Ljava/util/List;)V

    .line 602
    iget-object v0, p0, Lokhttp3/Cache$Entry;->handshake:Lokhttp3/Handshake;

    invoke-virtual {v0}, Lokhttp3/Handshake;->localCertificates()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lokhttp3/Cache$Entry;->writeCertList(Lokio/BufferedSink;Ljava/util/List;)V

    .line 603
    iget-object v0, p0, Lokhttp3/Cache$Entry;->handshake:Lokhttp3/Handshake;

    invoke-virtual {v0}, Lokhttp3/Handshake;->tlsVersion()Lokhttp3/TlsVersion;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/TlsVersion;->javaName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v0

    invoke-interface {v0, v6}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 605
    :cond_4
    nop

    .end local v3    # "sink":Lokio/BufferedSink;
    .end local v4    # "$i$a$-use-Cache$Entry$writeTo$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 570
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 606
    return-void

    .line 570
    :catchall_0
    move-exception v0

    .end local p1    # "editor":Lokhttp3/internal/cache/DiskLruCache$Editor;
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .restart local p1    # "editor":Lokhttp3/internal/cache/DiskLruCache$Editor;
    :catchall_1
    move-exception v2

    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method
