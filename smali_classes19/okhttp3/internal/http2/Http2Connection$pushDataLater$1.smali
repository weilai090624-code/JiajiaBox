.class final Lokhttp3/internal/http2/Http2Connection$pushDataLater$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Http2Connection.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/http2/Http2Connection;->pushDataLater$okhttp(ILokio/BufferedSource;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHttp2Connection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http2Connection.kt\nokhttp3/internal/http2/Http2Connection$pushDataLater$1\n+ 2 Util.kt\nokhttp3/internal/Util\n*L\n1#1,1006:1\n403#2,5:1007\n*S KotlinDebug\n*F\n+ 1 Http2Connection.kt\nokhttp3/internal/http2/Http2Connection$pushDataLater$1\n*L\n939#1:1007,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        ""
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $buffer:Lokio/Buffer;

.field final synthetic $byteCount:I

.field final synthetic $inFinished:Z

.field final synthetic $streamId:I

.field final synthetic this$0:Lokhttp3/internal/http2/Http2Connection;


# direct methods
.method constructor <init>(Lokhttp3/internal/http2/Http2Connection;ILokio/Buffer;IZ)V
    .locals 1

    iput-object p1, p0, Lokhttp3/internal/http2/Http2Connection$pushDataLater$1;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iput p2, p0, Lokhttp3/internal/http2/Http2Connection$pushDataLater$1;->$streamId:I

    iput-object p3, p0, Lokhttp3/internal/http2/Http2Connection$pushDataLater$1;->$buffer:Lokio/Buffer;

    iput p4, p0, Lokhttp3/internal/http2/Http2Connection$pushDataLater$1;->$byteCount:I

    iput-boolean p5, p0, Lokhttp3/internal/http2/Http2Connection$pushDataLater$1;->$inFinished:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 938
    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Connection$pushDataLater$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 8

    .line 939
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$pushDataLater$1;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget v1, p0, Lokhttp3/internal/http2/Http2Connection$pushDataLater$1;->$streamId:I

    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection$pushDataLater$1;->$buffer:Lokio/Buffer;

    iget v3, p0, Lokhttp3/internal/http2/Http2Connection$pushDataLater$1;->$byteCount:I

    iget-boolean v4, p0, Lokhttp3/internal/http2/Http2Connection$pushDataLater$1;->$inFinished:Z

    const/4 v5, 0x0

    .line 1007
    .local v5, "$i$f$ignoreIoExceptions":I
    nop

    .line 1008
    const/4 v6, 0x0

    .line 940
    .local v6, "$i$a$-ignoreIoExceptions-Http2Connection$pushDataLater$1$1":I
    :try_start_0
    invoke-static {v0}, Lokhttp3/internal/http2/Http2Connection;->access$getPushObserver$p(Lokhttp3/internal/http2/Http2Connection;)Lokhttp3/internal/http2/PushObserver;

    move-result-object v7

    check-cast v2, Lokio/BufferedSource;

    invoke-interface {v7, v1, v2, v3, v4}, Lokhttp3/internal/http2/PushObserver;->onData(ILokio/BufferedSource;IZ)Z

    move-result v2

    .line 941
    .local v2, "cancel":Z
    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Connection;->getWriter()Lokhttp3/internal/http2/Http2Writer;

    move-result-object v3

    sget-object v7, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v3, v1, v7}, Lokhttp3/internal/http2/Http2Writer;->rstStream(ILokhttp3/internal/http2/ErrorCode;)V

    .line 942
    :cond_0
    if-nez v2, :cond_1

    if-eqz v4, :cond_2

    .line 943
    :cond_1
    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    .line 944
    .local v3, "$i$a$-synchronized-Http2Connection$pushDataLater$1$1$1":I
    :try_start_1
    invoke-static {v0}, Lokhttp3/internal/http2/Http2Connection;->access$getCurrentPushRequests$p(Lokhttp3/internal/http2/Http2Connection;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 943
    .end local v3    # "$i$a$-synchronized-Http2Connection$pushDataLater$1$1$1":I
    :try_start_2
    monitor-exit v0

    .line 947
    :cond_2
    nop

    .end local v2    # "cancel":Z
    .end local v6    # "$i$a$-ignoreIoExceptions-Http2Connection$pushDataLater$1$1":I
    goto :goto_0

    .line 943
    .restart local v2    # "cancel":Z
    .restart local v6    # "$i$a$-ignoreIoExceptions-Http2Connection$pushDataLater$1$1":I
    :catchall_0
    move-exception v1

    monitor-exit v0

    .end local v5    # "$i$f$ignoreIoExceptions":I
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1009
    .end local v2    # "cancel":Z
    .end local v6    # "$i$a$-ignoreIoExceptions-Http2Connection$pushDataLater$1$1":I
    .restart local v5    # "$i$f$ignoreIoExceptions":I
    :catch_0
    move-exception v0

    .line 1011
    :goto_0
    nop

    .line 948
    .end local v5    # "$i$f$ignoreIoExceptions":I
    return-void
.end method
