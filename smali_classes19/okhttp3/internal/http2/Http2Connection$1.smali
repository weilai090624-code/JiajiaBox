.class final Lokhttp3/internal/http2/Http2Connection$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Http2Connection.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/http2/Http2Connection;-><init>(Lokhttp3/internal/http2/Http2Connection$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0006\n\u0000\n\u0002\u0010\t\u0010\u0000\u001a\u00020\u0001H\n"
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
.field final synthetic $pingIntervalNanos:J

.field final synthetic this$0:Lokhttp3/internal/http2/Http2Connection;


# direct methods
.method constructor <init>(Lokhttp3/internal/http2/Http2Connection;J)V
    .registers 5

    iput-object p1, p0, Lokhttp3/internal/http2/Http2Connection$1;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iput-wide p2, p0, Lokhttp3/internal/http2/Http2Connection$1;->$pingIntervalNanos:J

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Long;
    .registers 11

    .line 153
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$1;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$1;->this$0:Lokhttp3/internal/http2/Http2Connection;

    monitor-enter v0

    const/4 v2, 0x0

    .line 154
    .local v2, "$i$a$-synchronized-Http2Connection$1$failDueToMissingPong$1":I
    :try_start_6
    # getter for: Lokhttp3/internal/http2/Http2Connection;->intervalPongsReceived:J
    invoke-static {v1}, Lokhttp3/internal/http2/Http2Connection;->access$getIntervalPongsReceived$p(Lokhttp3/internal/http2/Http2Connection;)J

    move-result-wide v3

    # getter for: Lokhttp3/internal/http2/Http2Connection;->intervalPingsSent:J
    invoke-static {v1}, Lokhttp3/internal/http2/Http2Connection;->access$getIntervalPingsSent$p(Lokhttp3/internal/http2/Http2Connection;)J

    move-result-wide v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    cmp-long v9, v3, v5

    if-gez v9, :cond_16

    .line 155
    const/4 v1, 0x1

    goto :goto_21

    .line 157
    :cond_16
    # getter for: Lokhttp3/internal/http2/Http2Connection;->intervalPingsSent:J
    invoke-static {v1}, Lokhttp3/internal/http2/Http2Connection;->access$getIntervalPingsSent$p(Lokhttp3/internal/http2/Http2Connection;)J

    move-result-wide v3

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    invoke-static {v1, v3, v4}, Lokhttp3/internal/http2/Http2Connection;->access$setIntervalPingsSent$p(Lokhttp3/internal/http2/Http2Connection;J)V
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_3e

    .line 158
    const/4 v1, 0x0

    .line 153
    .end local v2    # "$i$a$-synchronized-Http2Connection$1$failDueToMissingPong$1":I
    :goto_21
    monitor-exit v0

    move v0, v1

    .line 161
    .local v0, "failDueToMissingPong":Z
    if-eqz v0, :cond_32

    .line 162
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$1;->this$0:Lokhttp3/internal/http2/Http2Connection;

    const/4 v2, 0x0

    # invokes: Lokhttp3/internal/http2/Http2Connection;->failConnection(Ljava/io/IOException;)V
    invoke-static {v1, v2}, Lokhttp3/internal/http2/Http2Connection;->access$failConnection(Lokhttp3/internal/http2/Http2Connection;Ljava/io/IOException;)V

    .line 163
    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 165
    :cond_32
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$1;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v1, v8, v7, v8}, Lokhttp3/internal/http2/Http2Connection;->writePing(ZII)V

    .line 166
    iget-wide v1, p0, Lokhttp3/internal/http2/Http2Connection$1;->$pingIntervalNanos:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 153
    .end local v0    # "failDueToMissingPong":Z
    :catchall_3e
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 152
    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Connection$1;->invoke()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
