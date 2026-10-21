.class final Lokhttp3/internal/http2/Http2Connection$pushHeadersLater$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Http2Connection.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/http2/Http2Connection;->pushHeadersLater$okhttp(ILjava/util/List;Z)V
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
    value = "SMAP\nHttp2Connection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http2Connection.kt\nokhttp3/internal/http2/Http2Connection$pushHeadersLater$1\n+ 2 Util.kt\nokhttp3/internal/Util\n*L\n1#1,1006:1\n403#2,5:1007\n*S KotlinDebug\n*F\n+ 1 Http2Connection.kt\nokhttp3/internal/http2/Http2Connection$pushHeadersLater$1\n*L\n913#1:1007,5\n*E\n"
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
.field final synthetic $inFinished:Z

.field final synthetic $requestHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/Header;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $streamId:I

.field final synthetic this$0:Lokhttp3/internal/http2/Http2Connection;


# direct methods
.method constructor <init>(Lokhttp3/internal/http2/Http2Connection;ILjava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/internal/http2/Http2Connection;",
            "I",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/Header;",
            ">;Z)V"
        }
    .end annotation

    iput-object p1, p0, Lokhttp3/internal/http2/Http2Connection$pushHeadersLater$1;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iput p2, p0, Lokhttp3/internal/http2/Http2Connection$pushHeadersLater$1;->$streamId:I

    iput-object p3, p0, Lokhttp3/internal/http2/Http2Connection$pushHeadersLater$1;->$requestHeaders:Ljava/util/List;

    iput-boolean p4, p0, Lokhttp3/internal/http2/Http2Connection$pushHeadersLater$1;->$inFinished:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 911
    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Connection$pushHeadersLater$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .registers 9

    .line 912
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$pushHeadersLater$1;->this$0:Lokhttp3/internal/http2/Http2Connection;

    # getter for: Lokhttp3/internal/http2/Http2Connection;->pushObserver:Lokhttp3/internal/http2/PushObserver;
    invoke-static {v0}, Lokhttp3/internal/http2/Http2Connection;->access$getPushObserver$p(Lokhttp3/internal/http2/Http2Connection;)Lokhttp3/internal/http2/PushObserver;

    move-result-object v0

    iget v1, p0, Lokhttp3/internal/http2/Http2Connection$pushHeadersLater$1;->$streamId:I

    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection$pushHeadersLater$1;->$requestHeaders:Ljava/util/List;

    iget-boolean v3, p0, Lokhttp3/internal/http2/Http2Connection$pushHeadersLater$1;->$inFinished:Z

    invoke-interface {v0, v1, v2, v3}, Lokhttp3/internal/http2/PushObserver;->onHeaders(ILjava/util/List;Z)Z

    move-result v0

    .line 913
    .local v0, "cancel":Z
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$pushHeadersLater$1;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget v2, p0, Lokhttp3/internal/http2/Http2Connection$pushHeadersLater$1;->$streamId:I

    iget-boolean v3, p0, Lokhttp3/internal/http2/Http2Connection$pushHeadersLater$1;->$inFinished:Z

    const/4 v4, 0x0

    .line 1007
    .local v4, "$i$f$ignoreIoExceptions":I
    nop

    .line 1008
    const/4 v5, 0x0

    .line 914
    .local v5, "$i$a$-ignoreIoExceptions-Http2Connection$pushHeadersLater$1$1":I
    if-eqz v0, :cond_27

    :try_start_1b
    invoke-virtual {v1}, Lokhttp3/internal/http2/Http2Connection;->getWriter()Lokhttp3/internal/http2/Http2Writer;

    move-result-object v6

    sget-object v7, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v6, v2, v7}, Lokhttp3/internal/http2/Http2Writer;->rstStream(ILokhttp3/internal/http2/ErrorCode;)V

    goto :goto_27

    .line 1009
    .end local v5    # "$i$a$-ignoreIoExceptions-Http2Connection$pushHeadersLater$1$1":I
    :catch_25
    move-exception v1

    goto :goto_3e

    .line 915
    .restart local v5    # "$i$a$-ignoreIoExceptions-Http2Connection$pushHeadersLater$1$1":I
    :cond_27
    :goto_27
    if-nez v0, :cond_2b

    if-eqz v3, :cond_39

    .line 916
    :cond_2b
    monitor-enter v1
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_2c} :catch_25

    const/4 v3, 0x0

    .line 917
    .local v3, "$i$a$-synchronized-Http2Connection$pushHeadersLater$1$1$1":I
    :try_start_2d
    # getter for: Lokhttp3/internal/http2/Http2Connection;->currentPushRequests:Ljava/util/Set;
    invoke-static {v1}, Lokhttp3/internal/http2/Http2Connection;->access$getCurrentPushRequests$p(Lokhttp3/internal/http2/Http2Connection;)Ljava/util/Set;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_38
    .catchall {:try_start_2d .. :try_end_38} :catchall_3b

    .line 916
    .end local v3    # "$i$a$-synchronized-Http2Connection$pushHeadersLater$1$1$1":I
    :try_start_38
    monitor-exit v1

    .line 920
    :cond_39
    nop

    .end local v5    # "$i$a$-ignoreIoExceptions-Http2Connection$pushHeadersLater$1$1":I
    goto :goto_3e

    .line 916
    .restart local v5    # "$i$a$-ignoreIoExceptions-Http2Connection$pushHeadersLater$1$1":I
    :catchall_3b
    move-exception v2

    monitor-exit v1

    .end local v0    # "cancel":Z
    .end local v4    # "$i$f$ignoreIoExceptions":I
    throw v2
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3e} :catch_25

    .line 1011
    .end local v5    # "$i$a$-ignoreIoExceptions-Http2Connection$pushHeadersLater$1$1":I
    .restart local v0    # "cancel":Z
    .restart local v4    # "$i$f$ignoreIoExceptions":I
    :goto_3e
    nop

    .line 921
    .end local v4    # "$i$f$ignoreIoExceptions":I
    return-void
.end method
