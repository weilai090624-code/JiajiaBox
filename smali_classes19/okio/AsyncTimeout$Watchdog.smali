.class final Lokio/AsyncTimeout$Watchdog;
.super Ljava/lang/Thread;
.source "AsyncTimeout.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/AsyncTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Watchdog"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAsyncTimeout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AsyncTimeout.kt\nokio/AsyncTimeout$Watchdog\n+ 2 -JvmPlatform.kt\nokio/_JvmPlatformKt\n*L\n1#1,329:1\n27#2:330\n*S KotlinDebug\n*F\n+ 1 AsyncTimeout.kt\nokio/AsyncTimeout$Watchdog\n*L\n182#1:330\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0000\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "Lokio/AsyncTimeout$Watchdog;",
        "Ljava/lang/Thread;",
        "()V",
        "run",
        "",
        "okio"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 173
    const-string v0, "Okio Watchdog"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 174
    nop

    .line 175
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lokio/AsyncTimeout$Watchdog;->setDaemon(Z)V

    .line 176
    nop

    .line 173
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 179
    nop

    :goto_1
    nop

    .line 180
    nop

    .line 181
    const/4 v0, 0x0

    .local v0, "timedOut":Ljava/lang/Object;
    :try_start_4
    const-class v1, Lokio/AsyncTimeout;

    .line 182
    nop

    .local v1, "lock$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 330
    .local v2, "$i$f$synchronized":I
    monitor-enter v1
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_9} :catch_2f

    const/4 v3, 0x0

    .line 183
    .local v3, "$i$a$-synchronized-AsyncTimeout$Watchdog$run$1":I
    :try_start_a
    sget-object v4, Lokio/AsyncTimeout;->Companion:Lokio/AsyncTimeout$Companion;

    invoke-virtual {v4}, Lokio/AsyncTimeout$Companion;->awaitTimeout$okio()Lokio/AsyncTimeout;

    move-result-object v4

    move-object v0, v4

    .line 187
    # getter for: Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;
    invoke-static {}, Lokio/AsyncTimeout;->access$getHead$cp()Lokio/AsyncTimeout;

    move-result-object v4

    if-ne v0, v4, :cond_20

    .line 188
    sget-object v4, Lokio/AsyncTimeout;->Companion:Lokio/AsyncTimeout$Companion;

    const/4 v4, 0x0

    invoke-static {v4}, Lokio/AsyncTimeout;->access$setHead$cp(Lokio/AsyncTimeout;)V
    :try_end_1d
    .catchall {:try_start_a .. :try_end_1d} :catchall_2c

    .line 189
    nop

    .end local v1    # "lock$iv":Ljava/lang/Object;
    .end local v2    # "$i$f$synchronized":I
    .end local v3    # "$i$a$-synchronized-AsyncTimeout$Watchdog$run$1":I
    :try_start_1e
    monitor-exit v1
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_1f} :catch_2f

    return-void

    .line 191
    .restart local v1    # "lock$iv":Ljava/lang/Object;
    .restart local v2    # "$i$f$synchronized":I
    .restart local v3    # "$i$a$-synchronized-AsyncTimeout$Watchdog$run$1":I
    :cond_20
    nop

    .end local v3    # "$i$a$-synchronized-AsyncTimeout$Watchdog$run$1":I
    :try_start_21
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_23
    .catchall {:try_start_21 .. :try_end_23} :catchall_2c

    :try_start_23
    monitor-exit v1

    .line 330
    nop

    .line 194
    .end local v1    # "lock$iv":Ljava/lang/Object;
    .end local v2    # "$i$f$synchronized":I
    if-nez v0, :cond_28

    goto :goto_1

    :cond_28
    invoke-virtual {v0}, Lokio/AsyncTimeout;->timedOut()V

    .end local v0    # "timedOut":Ljava/lang/Object;
    goto :goto_1

    .line 191
    .restart local v0    # "timedOut":Ljava/lang/Object;
    .restart local v1    # "lock$iv":Ljava/lang/Object;
    .restart local v2    # "$i$f$synchronized":I
    :catchall_2c
    move-exception v3

    monitor-exit v1

    throw v3
    :try_end_2f
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_2f} :catch_2f

    .line 195
    .end local v0    # "timedOut":Ljava/lang/Object;
    .end local v1    # "lock$iv":Ljava/lang/Object;
    .end local v2    # "$i$f$synchronized":I
    :catch_2f
    move-exception v0

    goto :goto_1
.end method
