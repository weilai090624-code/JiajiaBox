.class final Lokhttp3/internal/http2/Http2Connection$pushRequestLater$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Http2Connection.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/http2/Http2Connection;->pushRequestLater$okhttp(ILjava/util/List;)V
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
    value = "SMAP\nHttp2Connection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http2Connection.kt\nokhttp3/internal/http2/Http2Connection$pushRequestLater$2\n+ 2 Util.kt\nokhttp3/internal/Util\n*L\n1#1,1006:1\n403#2,5:1007\n*S KotlinDebug\n*F\n+ 1 Http2Connection.kt\nokhttp3/internal/http2/Http2Connection$pushRequestLater$2\n*L\n895#1:1007,5\n*E\n"
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
.method constructor <init>(Lokhttp3/internal/http2/Http2Connection;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/internal/http2/Http2Connection;",
            "I",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lokhttp3/internal/http2/Http2Connection$pushRequestLater$2;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iput p2, p0, Lokhttp3/internal/http2/Http2Connection$pushRequestLater$2;->$streamId:I

    iput-object p3, p0, Lokhttp3/internal/http2/Http2Connection$pushRequestLater$2;->$requestHeaders:Ljava/util/List;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 893
    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Connection$pushRequestLater$2;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 7

    .line 894
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$pushRequestLater$2;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-static {v0}, Lokhttp3/internal/http2/Http2Connection;->access$getPushObserver$p(Lokhttp3/internal/http2/Http2Connection;)Lokhttp3/internal/http2/PushObserver;

    move-result-object v0

    iget v1, p0, Lokhttp3/internal/http2/Http2Connection$pushRequestLater$2;->$streamId:I

    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection$pushRequestLater$2;->$requestHeaders:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lokhttp3/internal/http2/PushObserver;->onRequest(ILjava/util/List;)Z

    move-result v0

    .line 895
    .local v0, "cancel":Z
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$pushRequestLater$2;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget v2, p0, Lokhttp3/internal/http2/Http2Connection$pushRequestLater$2;->$streamId:I

    const/4 v3, 0x0

    .line 1007
    .local v3, "$i$f$ignoreIoExceptions":I
    nop

    .line 1008
    const/4 v4, 0x0

    .line 896
    .local v4, "$i$a$-ignoreIoExceptions-Http2Connection$pushRequestLater$2$1":I
    if-eqz v0, :cond_0

    .line 897
    :try_start_0
    invoke-virtual {v1}, Lokhttp3/internal/http2/Http2Connection;->getWriter()Lokhttp3/internal/http2/Http2Writer;

    move-result-object v5

    sget-object v6, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v5, v2, v6}, Lokhttp3/internal/http2/Http2Writer;->rstStream(ILokhttp3/internal/http2/ErrorCode;)V

    .line 898
    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x0

    .line 899
    .local v5, "$i$a$-synchronized-Http2Connection$pushRequestLater$2$1$1":I
    :try_start_1
    invoke-static {v1}, Lokhttp3/internal/http2/Http2Connection;->access$getCurrentPushRequests$p(Lokhttp3/internal/http2/Http2Connection;)Ljava/util/Set;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 898
    .end local v5    # "$i$a$-synchronized-Http2Connection$pushRequestLater$2$1$1":I
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1

    .end local v0    # "cancel":Z
    .end local v3    # "$i$f$ignoreIoExceptions":I
    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1009
    .end local v4    # "$i$a$-ignoreIoExceptions-Http2Connection$pushRequestLater$2$1":I
    .restart local v0    # "cancel":Z
    .restart local v3    # "$i$f$ignoreIoExceptions":I
    :catch_0
    move-exception v1

    goto :goto_1

    .line 902
    .restart local v4    # "$i$a$-ignoreIoExceptions-Http2Connection$pushRequestLater$2$1":I
    :cond_0
    :goto_0
    nop

    .line 1011
    .end local v4    # "$i$a$-ignoreIoExceptions-Http2Connection$pushRequestLater$2$1":I
    :goto_1
    nop

    .line 903
    .end local v3    # "$i$f$ignoreIoExceptions":I
    return-void
.end method
