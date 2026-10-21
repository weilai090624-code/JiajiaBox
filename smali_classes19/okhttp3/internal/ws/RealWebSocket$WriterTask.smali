.class final Lokhttp3/internal/ws/RealWebSocket$WriterTask;
.super Lokhttp3/internal/concurrent/Task;
.source "RealWebSocket.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/ws/RealWebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WriterTask"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "Lokhttp3/internal/ws/RealWebSocket$WriterTask;",
        "Lokhttp3/internal/concurrent/Task;",
        "(Lokhttp3/internal/ws/RealWebSocket;)V",
        "runOnce",
        "",
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
.field final synthetic this$0:Lokhttp3/internal/ws/RealWebSocket;


# direct methods
.method public constructor <init>(Lokhttp3/internal/ws/RealWebSocket;)V
    .registers 6
    .param p1, "this$0"    # Lokhttp3/internal/ws/RealWebSocket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 617
    iput-object p1, p0, Lokhttp3/internal/ws/RealWebSocket$WriterTask;->this$0:Lokhttp3/internal/ws/RealWebSocket;

    # getter for: Lokhttp3/internal/ws/RealWebSocket;->name:Ljava/lang/String;
    invoke-static {p1}, Lokhttp3/internal/ws/RealWebSocket;->access$getName$p(Lokhttp3/internal/ws/RealWebSocket;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " writer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3, v1, v2}, Lokhttp3/internal/concurrent/Task;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public runOnce()J
    .registers 5

    .line 619
    nop

    .line 620
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket$WriterTask;->this$0:Lokhttp3/internal/ws/RealWebSocket;

    invoke-virtual {v0}, Lokhttp3/internal/ws/RealWebSocket;->writeOneFrame$okhttp()Z

    move-result v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_7} :catch_c

    if-eqz v0, :cond_16

    const-wide/16 v0, 0x0

    return-wide v0

    .line 621
    :catch_c
    move-exception v0

    .line 622
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lokhttp3/internal/ws/RealWebSocket$WriterTask;->this$0:Lokhttp3/internal/ws/RealWebSocket;

    move-object v2, v0

    check-cast v2, Ljava/lang/Exception;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lokhttp3/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Lokhttp3/Response;)V

    .line 624
    .end local v0    # "e":Ljava/io/IOException;
    :cond_16
    const-wide/16 v0, -0x1

    return-wide v0
.end method
