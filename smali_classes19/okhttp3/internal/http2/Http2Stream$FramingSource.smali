.class public final Lokhttp3/internal/http2/Http2Stream$FramingSource;
.super Ljava/lang/Object;
.source "Http2Stream.kt"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/Http2Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FramingSource"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHttp2Stream.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http2Stream.kt\nokhttp3/internal/http2/Http2Stream$FramingSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Util.kt\nokhttp3/internal/Util\n*L\n1#1,688:1\n1#2:689\n653#3,4:690\n653#3,4:694\n601#3:698\n601#3:699\n*S KotlinDebug\n*F\n+ 1 Http2Stream.kt\nokhttp3/internal/http2/Http2Stream$FramingSource\n*L\n408#1:690,4\n419#1:694,4\n461#1:698\n480#1:699\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0017\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u001a\u001a\u00020\u001bH\u0016J\u0018\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u001e\u001a\u00020\u0003H\u0016J\u001d\u0010\u001f\u001a\u00020\u001b2\u0006\u0010 \u001a\u00020!2\u0006\u0010\u001e\u001a\u00020\u0003H\u0000\u00a2\u0006\u0002\u0008\"J\u0008\u0010#\u001a\u00020$H\u0016J\u0010\u0010%\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0003H\u0002R\u001a\u0010\u0007\u001a\u00020\u0005X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u0005X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\t\"\u0004\u0008\r\u0010\u000bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0012\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0011R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019\u00a8\u0006&"
    }
    d2 = {
        "Lokhttp3/internal/http2/Http2Stream$FramingSource;",
        "Lokio/Source;",
        "maxByteCount",
        "",
        "finished",
        "",
        "(Lokhttp3/internal/http2/Http2Stream;JZ)V",
        "closed",
        "getClosed$okhttp",
        "()Z",
        "setClosed$okhttp",
        "(Z)V",
        "getFinished$okhttp",
        "setFinished$okhttp",
        "readBuffer",
        "Lokio/Buffer;",
        "getReadBuffer",
        "()Lokio/Buffer;",
        "receiveBuffer",
        "getReceiveBuffer",
        "trailers",
        "Lokhttp3/Headers;",
        "getTrailers",
        "()Lokhttp3/Headers;",
        "setTrailers",
        "(Lokhttp3/Headers;)V",
        "close",
        "",
        "read",
        "sink",
        "byteCount",
        "receive",
        "source",
        "Lokio/BufferedSource;",
        "receive$okhttp",
        "timeout",
        "Lokio/Timeout;",
        "updateConnectionFlowControl",
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
.field private closed:Z

.field private finished:Z

.field private final maxByteCount:J

.field private final readBuffer:Lokio/Buffer;

.field private final receiveBuffer:Lokio/Buffer;

.field final synthetic this$0:Lokhttp3/internal/http2/Http2Stream;

.field private trailers:Lokhttp3/Headers;


# direct methods
.method public constructor <init>(Lokhttp3/internal/http2/Http2Stream;JZ)V
    .registers 6
    .param p1, "this$0"    # Lokhttp3/internal/http2/Http2Stream;
    .param p2, "maxByteCount"    # J
    .param p4, "finished"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ)V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    iput-wide p2, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->maxByteCount:J

    .line 322
    iput-boolean p4, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    .line 325
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->receiveBuffer:Lokio/Buffer;

    .line 328
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    .line 314
    return-void
.end method

.method private final updateConnectionFlowControl(J)V
    .registers 8
    .param p1, "read"    # J

    .line 408
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    .local v0, "$this$assertThreadDoesntHoldLock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 690
    .local v1, "$i$f$assertThreadDoesntHoldLock":I
    sget-boolean v2, Lokhttp3/internal/Util;->assertionsEnabled:Z

    if-eqz v2, :cond_39

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_39

    .line 691
    :cond_e
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Thread "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " MUST NOT hold lock on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 693
    :cond_39
    :goto_39
    nop

    .line 410
    .end local v0    # "$this$assertThreadDoesntHoldLock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$assertThreadDoesntHoldLock":I
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream;->getConnection()Lokhttp3/internal/http2/Http2Connection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lokhttp3/internal/http2/Http2Connection;->updateConnectionFlowControl$okhttp(J)V

    .line 411
    return-void
.end method


# virtual methods
.method public close()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 475
    const-wide/16 v0, 0x0

    .line 476
    .local v0, "bytesDiscarded":J
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v3, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    monitor-enter v2

    const/4 v4, 0x0

    .line 477
    .local v4, "$i$a$-synchronized-Http2Stream$FramingSource$close$1":I
    const/4 v5, 0x1

    :try_start_9
    invoke-virtual {p0, v5}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->setClosed$okhttp(Z)V

    .line 478
    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->getReadBuffer()Lokio/Buffer;

    move-result-object v5

    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v5

    move-wide v0, v5

    .line 479
    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->getReadBuffer()Lokio/Buffer;

    move-result-object v5

    invoke-virtual {v5}, Lokio/Buffer;->clear()V

    .line 480
    nop

    .local v3, "$this$notifyAll$iv":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 699
    .local v5, "$i$f$notifyAll":I
    move-object v6, v3

    check-cast v6, Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 481
    .end local v3    # "$this$notifyAll$iv":Ljava/lang/Object;
    .end local v5    # "$i$f$notifyAll":I
    nop

    .end local v4    # "$i$a$-synchronized-Http2Stream$FramingSource$close$1":I
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_27
    .catchall {:try_start_9 .. :try_end_27} :catchall_37

    .line 476
    monitor-exit v2

    .line 482
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_31

    .line 483
    invoke-direct {p0, v0, v1}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->updateConnectionFlowControl(J)V

    .line 485
    :cond_31
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v2}, Lokhttp3/internal/http2/Http2Stream;->cancelStreamIfNecessary$okhttp()V

    .line 486
    return-void

    .line 476
    :catchall_37
    move-exception v3

    monitor-exit v2

    throw v3
.end method

.method public final getClosed$okhttp()Z
    .registers 2

    .line 337
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->closed:Z

    return v0
.end method

.method public final getFinished$okhttp()Z
    .registers 2

    .line 322
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    return v0
.end method

.method public final getReadBuffer()Lokio/Buffer;
    .registers 2

    .line 328
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    return-object v0
.end method

.method public final getReceiveBuffer()Lokio/Buffer;
    .registers 2

    .line 325
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->receiveBuffer:Lokio/Buffer;

    return-object v0
.end method

.method public final getTrailers()Lokhttp3/Headers;
    .registers 2

    .line 334
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->trailers:Lokhttp3/Headers;

    return-object v0
.end method

.method public read(Lokio/Buffer;J)J
    .registers 22
    .param p1, "sink"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    const-string v0, "sink"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 341
    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    if-eqz v0, :cond_f1

    .line 343
    :goto_16
    nop

    .line 344
    const/4 v7, 0x0

    .line 345
    .local v7, "tryAgain":Z
    const-wide/16 v8, 0x0

    .local v8, "readBytesDelivered":J
    const-wide/16 v8, -0x1

    .line 346
    const/4 v10, 0x0

    .line 350
    .local v10, "errorExceptionToDeliver":Ljava/lang/Object;
    iget-object v11, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v12, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    monitor-enter v11

    const/4 v13, 0x0

    .line 351
    .local v13, "$i$a$-synchronized-Http2Stream$FramingSource$read$2":I
    :try_start_23
    invoke-virtual {v12}, Lokhttp3/internal/http2/Http2Stream;->getReadTimeout$okhttp()Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->enter()V
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_ee

    .line 352
    nop

    .line 353
    :try_start_2b
    invoke-virtual {v12}, Lokhttp3/internal/http2/Http2Stream;->getErrorCode$okhttp()Lokhttp3/internal/http2/ErrorCode;

    move-result-object v0

    if-eqz v0, :cond_4c

    invoke-virtual/range {p0 .. p0}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->getFinished$okhttp()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 355
    invoke-virtual {v12}, Lokhttp3/internal/http2/Http2Stream;->getErrorException$okhttp()Ljava/io/IOException;

    move-result-object v0

    if-nez v0, :cond_4b

    new-instance v0, Lokhttp3/internal/http2/StreamResetException;

    invoke-virtual {v12}, Lokhttp3/internal/http2/Http2Stream;->getErrorCode$okhttp()Lokhttp3/internal/http2/ErrorCode;

    move-result-object v14

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, v14}, Lokhttp3/internal/http2/StreamResetException;-><init>(Lokhttp3/internal/http2/ErrorCode;)V

    check-cast v0, Ljava/io/IOException;

    :cond_4b
    move-object v10, v0

    .line 358
    :cond_4c
    invoke-virtual/range {p0 .. p0}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->getClosed$okhttp()Z

    move-result v0

    if-nez v0, :cond_dd

    .line 360
    invoke-virtual/range {p0 .. p0}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->getReadBuffer()Lokio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v14

    cmp-long v0, v14, v5

    if-lez v0, :cond_ad

    .line 362
    invoke-virtual/range {p0 .. p0}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->getReadBuffer()Lokio/Buffer;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->getReadBuffer()Lokio/Buffer;

    move-result-object v14

    invoke-virtual {v14}, Lokio/Buffer;->size()J

    move-result-wide v14

    invoke-static {v3, v4, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    invoke-virtual {v0, v2, v14, v15}, Lokio/Buffer;->read(Lokio/Buffer;J)J

    move-result-wide v14

    move-wide v8, v14

    .line 363
    invoke-virtual {v12}, Lokhttp3/internal/http2/Http2Stream;->getReadBytesTotal()J

    move-result-wide v14

    add-long/2addr v14, v8

    invoke-virtual {v12, v14, v15}, Lokhttp3/internal/http2/Http2Stream;->setReadBytesTotal$okhttp(J)V

    .line 365
    invoke-virtual {v12}, Lokhttp3/internal/http2/Http2Stream;->getReadBytesTotal()J

    move-result-wide v14

    invoke-virtual {v12}, Lokhttp3/internal/http2/Http2Stream;->getReadBytesAcknowledged()J

    move-result-wide v16

    sub-long v14, v14, v16

    .line 366
    .local v14, "unacknowledgedBytesRead":J
    if-nez v10, :cond_ba

    .line 367
    invoke-virtual {v12}, Lokhttp3/internal/http2/Http2Stream;->getConnection()Lokhttp3/internal/http2/Http2Connection;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Connection;->getOkHttpSettings()Lokhttp3/internal/http2/Settings;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-long v5, v0

    cmp-long v0, v14, v5

    if-ltz v0, :cond_ba

    .line 370
    invoke-virtual {v12}, Lokhttp3/internal/http2/Http2Stream;->getConnection()Lokhttp3/internal/http2/Http2Connection;

    move-result-object v0

    invoke-virtual {v12}, Lokhttp3/internal/http2/Http2Stream;->getId()I

    move-result v5

    invoke-virtual {v0, v5, v14, v15}, Lokhttp3/internal/http2/Http2Connection;->writeWindowUpdateLater$okhttp(IJ)V

    .line 371
    invoke-virtual {v12}, Lokhttp3/internal/http2/Http2Stream;->getReadBytesTotal()J

    move-result-wide v5

    invoke-virtual {v12, v5, v6}, Lokhttp3/internal/http2/Http2Stream;->setReadBytesAcknowledged$okhttp(J)V

    .end local v14    # "unacknowledgedBytesRead":J
    goto :goto_ba

    .line 373
    :cond_ad
    invoke-virtual/range {p0 .. p0}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->getFinished$okhttp()Z

    move-result v0

    if-nez v0, :cond_ba

    if-nez v10, :cond_ba

    .line 375
    invoke-virtual {v12}, Lokhttp3/internal/http2/Http2Stream;->waitForIo$okhttp()V
    :try_end_b8
    .catchall {:try_start_2b .. :try_end_b8} :catchall_e5

    .line 376
    const/4 v0, 0x1

    move v7, v0

    .line 379
    :cond_ba
    :goto_ba
    :try_start_ba
    invoke-virtual {v12}, Lokhttp3/internal/http2/Http2Stream;->getReadTimeout$okhttp()Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 380
    nop

    .line 381
    nop

    .end local v13    # "$i$a$-synchronized-Http2Stream$FramingSource$read$2":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_c5
    .catchall {:try_start_ba .. :try_end_c5} :catchall_ee

    .line 350
    monitor-exit v11

    .line 385
    if-eqz v7, :cond_cc

    .line 386
    const-wide/16 v5, 0x0

    goto/16 :goto_16

    .line 389
    :cond_cc
    const-wide/16 v5, -0x1

    cmp-long v0, v8, v5

    if-eqz v0, :cond_d6

    .line 391
    invoke-direct {v1, v8, v9}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->updateConnectionFlowControl(J)V

    .line 392
    return-wide v8

    .line 395
    :cond_d6
    if-nez v10, :cond_d9

    .line 403
    return-wide v5

    .line 400
    :cond_d9
    move-object v0, v10

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 359
    .restart local v13    # "$i$a$-synchronized-Http2Stream$FramingSource$read$2":I
    :cond_dd
    :try_start_dd
    new-instance v0, Ljava/io/IOException;

    const-string v5, "stream closed"

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v7    # "tryAgain":Z
    .end local v8    # "readBytesDelivered":J
    .end local v10    # "errorExceptionToDeliver":Ljava/lang/Object;
    .end local v13    # "$i$a$-synchronized-Http2Stream$FramingSource$read$2":I
    .end local p1    # "sink":Lokio/Buffer;
    .end local p2    # "byteCount":J
    throw v0
    :try_end_e5
    .catchall {:try_start_dd .. :try_end_e5} :catchall_e5

    .line 380
    .restart local v7    # "tryAgain":Z
    .restart local v8    # "readBytesDelivered":J
    .restart local v10    # "errorExceptionToDeliver":Ljava/lang/Object;
    .restart local v13    # "$i$a$-synchronized-Http2Stream$FramingSource$read$2":I
    .restart local p1    # "sink":Lokio/Buffer;
    .restart local p2    # "byteCount":J
    :catchall_e5
    move-exception v0

    .line 379
    :try_start_e6
    invoke-virtual {v12}, Lokhttp3/internal/http2/Http2Stream;->getReadTimeout$okhttp()Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .end local v7    # "tryAgain":Z
    .end local v8    # "readBytesDelivered":J
    .end local v10    # "errorExceptionToDeliver":Ljava/lang/Object;
    .end local p1    # "sink":Lokio/Buffer;
    .end local p2    # "byteCount":J
    throw v0
    :try_end_ee
    .catchall {:try_start_e6 .. :try_end_ee} :catchall_ee

    .line 350
    .end local v13    # "$i$a$-synchronized-Http2Stream$FramingSource$read$2":I
    .restart local v7    # "tryAgain":Z
    .restart local v8    # "readBytesDelivered":J
    .restart local v10    # "errorExceptionToDeliver":Ljava/lang/Object;
    .restart local p1    # "sink":Lokio/Buffer;
    .restart local p2    # "byteCount":J
    :catchall_ee
    move-exception v0

    monitor-exit v11

    throw v0

    .line 689
    .end local v7    # "tryAgain":Z
    .end local v8    # "readBytesDelivered":J
    .end local v10    # "errorExceptionToDeliver":Ljava/lang/Object;
    :cond_f1
    const/4 v0, 0x0

    .line 341
    .local v0, "$i$a$-require-Http2Stream$FramingSource$read$1":I
    const-string v5, "byteCount < 0: "

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-Http2Stream$FramingSource$read$1":I
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Throwable;

    throw v5
.end method

.method public final receive$okhttp(Lokio/BufferedSource;J)V
    .registers 24
    .param p1, "source"    # Lokio/BufferedSource;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "source"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 419
    iget-object v0, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    .local v0, "$this$assertThreadDoesntHoldLock$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 694
    .local v3, "$i$f$assertThreadDoesntHoldLock":I
    sget-boolean v4, Lokhttp3/internal/Util;->assertionsEnabled:Z

    if-eqz v4, :cond_42

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    goto :goto_42

    .line 695
    :cond_17
    new-instance v4, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Thread "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " MUST NOT hold lock on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 697
    :cond_42
    :goto_42
    nop

    .line 421
    .end local v0    # "$this$assertThreadDoesntHoldLock$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$assertThreadDoesntHoldLock":I
    move-wide/from16 v3, p2

    .line 423
    .local v3, "byteCount":J
    :cond_45
    :goto_45
    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_f1

    .line 424
    const/4 v7, 0x0

    .line 425
    .local v7, "finished":Z
    const/4 v8, 0x0

    .line 426
    .local v8, "flowControlError":Z
    iget-object v9, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    monitor-enter v9

    const/4 v0, 0x0

    .line 427
    .local v0, "$i$a$-synchronized-Http2Stream$FramingSource$receive$1":I
    :try_start_51
    invoke-virtual/range {p0 .. p0}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->getFinished$okhttp()Z

    move-result v10

    move v7, v10

    .line 428
    invoke-virtual/range {p0 .. p0}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->getReadBuffer()Lokio/Buffer;

    move-result-object v10

    invoke-virtual {v10}, Lokio/Buffer;->size()J

    move-result-wide v10

    add-long/2addr v10, v3

    iget-wide v12, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->maxByteCount:J

    const/4 v14, 0x1

    const/4 v15, 0x0

    cmp-long v16, v10, v12

    if-lez v16, :cond_69

    const/4 v10, 0x1

    goto :goto_6a

    :cond_69
    const/4 v10, 0x0

    :goto_6a
    move v8, v10

    .line 429
    nop

    .end local v0    # "$i$a$-synchronized-Http2Stream$FramingSource$receive$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6e
    .catchall {:try_start_51 .. :try_end_6e} :catchall_ee

    .line 426
    monitor-exit v9

    .line 432
    if-eqz v8, :cond_7c

    .line 433
    invoke-interface {v2, v3, v4}, Lokio/BufferedSource;->skip(J)V

    .line 434
    iget-object v0, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    sget-object v5, Lokhttp3/internal/http2/ErrorCode;->FLOW_CONTROL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0, v5}, Lokhttp3/internal/http2/Http2Stream;->closeLater(Lokhttp3/internal/http2/ErrorCode;)V

    .line 435
    return-void

    .line 439
    :cond_7c
    if-eqz v7, :cond_82

    .line 440
    invoke-interface {v2, v3, v4}, Lokio/BufferedSource;->skip(J)V

    .line 441
    return-void

    .line 445
    :cond_82
    iget-object v0, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->receiveBuffer:Lokio/Buffer;

    invoke-interface {v2, v0, v3, v4}, Lokio/BufferedSource;->read(Lokio/Buffer;J)J

    move-result-wide v9

    .line 446
    .local v9, "read":J
    const-wide/16 v11, -0x1

    cmp-long v0, v9, v11

    if-eqz v0, :cond_e8

    .line 447
    sub-long/2addr v3, v9

    .line 452
    const-wide/16 v11, 0x0

    .line 453
    .local v11, "bytesDiscarded":J
    iget-object v13, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v0, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    monitor-enter v13

    const/16 v16, 0x0

    .line 454
    .local v16, "$i$a$-synchronized-Http2Stream$FramingSource$receive$2":I
    :try_start_98
    invoke-virtual/range {p0 .. p0}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->getClosed$okhttp()Z

    move-result v17

    if-eqz v17, :cond_af

    .line 455
    invoke-virtual/range {p0 .. p0}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->getReceiveBuffer()Lokio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v14

    move-wide v11, v14

    .line 456
    invoke-virtual/range {p0 .. p0}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->getReceiveBuffer()Lokio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Lokio/Buffer;->clear()V

    goto :goto_d6

    .line 458
    :cond_af
    invoke-virtual/range {p0 .. p0}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->getReadBuffer()Lokio/Buffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lokio/Buffer;->size()J

    move-result-wide v17

    cmp-long v19, v17, v5

    if-nez v19, :cond_bc

    goto :goto_bd

    :cond_bc
    const/4 v14, 0x0

    .line 459
    .local v14, "wasEmpty":Z
    :goto_bd
    invoke-virtual/range {p0 .. p0}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->getReadBuffer()Lokio/Buffer;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->getReceiveBuffer()Lokio/Buffer;

    move-result-object v17

    move-object/from16 v5, v17

    check-cast v5, Lokio/Source;

    invoke-virtual {v15, v5}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    .line 460
    if-eqz v14, :cond_d6

    .line 461
    nop

    .local v0, "$this$notifyAll$iv":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 698
    .local v5, "$i$f$notifyAll":I
    move-object v6, v0

    check-cast v6, Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 464
    .end local v0    # "$this$notifyAll$iv":Ljava/lang/Object;
    .end local v5    # "$i$f$notifyAll":I
    .end local v14    # "wasEmpty":Z
    :cond_d6
    :goto_d6
    nop

    .end local v16    # "$i$a$-synchronized-Http2Stream$FramingSource$receive$2":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_d9
    .catchall {:try_start_98 .. :try_end_d9} :catchall_e5

    .line 453
    monitor-exit v13

    .line 465
    const-wide/16 v5, 0x0

    cmp-long v0, v11, v5

    if-lez v0, :cond_45

    .line 466
    invoke-direct {v1, v11, v12}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->updateConnectionFlowControl(J)V

    .end local v7    # "finished":Z
    .end local v8    # "flowControlError":Z
    .end local v9    # "read":J
    .end local v11    # "bytesDiscarded":J
    goto/16 :goto_45

    .line 453
    .restart local v7    # "finished":Z
    .restart local v8    # "flowControlError":Z
    .restart local v9    # "read":J
    .restart local v11    # "bytesDiscarded":J
    :catchall_e5
    move-exception v0

    monitor-exit v13

    throw v0

    .line 446
    .end local v11    # "bytesDiscarded":J
    :cond_e8
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 426
    .end local v9    # "read":J
    :catchall_ee
    move-exception v0

    monitor-exit v9

    throw v0

    .line 469
    .end local v7    # "finished":Z
    .end local v8    # "flowControlError":Z
    :cond_f1
    return-void
.end method

.method public final setClosed$okhttp(Z)V
    .registers 2
    .param p1, "<set-?>"    # Z

    .line 337
    iput-boolean p1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->closed:Z

    return-void
.end method

.method public final setFinished$okhttp(Z)V
    .registers 2
    .param p1, "<set-?>"    # Z

    .line 322
    iput-boolean p1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    return-void
.end method

.method public final setTrailers(Lokhttp3/Headers;)V
    .registers 2
    .param p1, "<set-?>"    # Lokhttp3/Headers;

    .line 334
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->trailers:Lokhttp3/Headers;

    return-void
.end method

.method public timeout()Lokio/Timeout;
    .registers 2

    .line 471
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream;->getReadTimeout$okhttp()Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    move-result-object v0

    check-cast v0, Lokio/Timeout;

    return-object v0
.end method
