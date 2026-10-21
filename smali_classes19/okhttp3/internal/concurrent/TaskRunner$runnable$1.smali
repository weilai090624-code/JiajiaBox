.class public final Lokhttp3/internal/concurrent/TaskRunner$runnable$1;
.super Ljava/lang/Object;
.source "TaskRunner.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/concurrent/TaskRunner;-><init>(Lokhttp3/internal/concurrent/TaskRunner$Backend;Ljava/util/logging/Logger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTaskRunner.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TaskRunner.kt\nokhttp3/internal/concurrent/TaskRunner$runnable$1\n+ 2 TaskLogger.kt\nokhttp3/internal/concurrent/TaskLoggerKt\n*L\n1#1,316:1\n36#2,19:317\n*S KotlinDebug\n*F\n+ 1 TaskRunner.kt\nokhttp3/internal/concurrent/TaskRunner$runnable$1\n*L\n63#1:317,19\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "okhttp3/internal/concurrent/TaskRunner$runnable$1",
        "Ljava/lang/Runnable;",
        "run",
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
.field final synthetic this$0:Lokhttp3/internal/concurrent/TaskRunner;


# direct methods
.method constructor <init>(Lokhttp3/internal/concurrent/TaskRunner;)V
    .registers 2
    .param p1, "$receiver"    # Lokhttp3/internal/concurrent/TaskRunner;

    iput-object p1, p0, Lokhttp3/internal/concurrent/TaskRunner$runnable$1;->this$0:Lokhttp3/internal/concurrent/TaskRunner;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .line 58
    nop

    :goto_1
    nop

    .line 59
    iget-object v0, p0, Lokhttp3/internal/concurrent/TaskRunner$runnable$1;->this$0:Lokhttp3/internal/concurrent/TaskRunner;

    iget-object v1, p0, Lokhttp3/internal/concurrent/TaskRunner$runnable$1;->this$0:Lokhttp3/internal/concurrent/TaskRunner;

    monitor-enter v0

    const/4 v2, 0x0

    .line 60
    .local v2, "$i$a$-synchronized-TaskRunner$runnable$1$run$task$1":I
    :try_start_8
    invoke-virtual {v1}, Lokhttp3/internal/concurrent/TaskRunner;->awaitTaskToRun()Lokhttp3/internal/concurrent/Task;

    move-result-object v1
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_a7

    .line 59
    .end local v2    # "$i$a$-synchronized-TaskRunner$runnable$1$run$task$1":I
    monitor-exit v0

    if-nez v1, :cond_10

    .line 61
    return-void

    .line 59
    :cond_10
    move-object v0, v1

    .line 63
    .local v0, "task":Lokhttp3/internal/concurrent/Task;
    iget-object v1, p0, Lokhttp3/internal/concurrent/TaskRunner$runnable$1;->this$0:Lokhttp3/internal/concurrent/TaskRunner;

    invoke-virtual {v1}, Lokhttp3/internal/concurrent/TaskRunner;->getLogger$okhttp()Ljava/util/logging/Logger;

    move-result-object v1

    .local v1, "$this$logElapsed$iv":Ljava/util/logging/Logger;
    invoke-virtual {v0}, Lokhttp3/internal/concurrent/Task;->getQueue$okhttp()Lokhttp3/internal/concurrent/TaskQueue;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, p0, Lokhttp3/internal/concurrent/TaskRunner$runnable$1;->this$0:Lokhttp3/internal/concurrent/TaskRunner;

    .local v2, "queue$iv":Lokhttp3/internal/concurrent/TaskQueue;
    const/4 v4, 0x0

    .line 317
    .local v4, "$i$f$logElapsed":I
    const-wide/16 v5, -0x1

    .line 318
    .local v5, "startNs$iv":J
    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v7}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    .line 319
    .local v7, "loggingEnabled$iv":Z
    if-eqz v7, :cond_3c

    .line 320
    invoke-virtual {v2}, Lokhttp3/internal/concurrent/TaskQueue;->getTaskRunner$okhttp()Lokhttp3/internal/concurrent/TaskRunner;

    move-result-object v8

    invoke-virtual {v8}, Lokhttp3/internal/concurrent/TaskRunner;->getBackend()Lokhttp3/internal/concurrent/TaskRunner$Backend;

    move-result-object v8

    invoke-interface {v8}, Lokhttp3/internal/concurrent/TaskRunner$Backend;->nanoTime()J

    move-result-wide v5

    .line 321
    const-string v8, "starting"

    # invokes: Lokhttp3/internal/concurrent/TaskLoggerKt;->log(Ljava/util/logging/Logger;Lokhttp3/internal/concurrent/Task;Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;)V
    invoke-static {v1, v0, v2, v8}, Lokhttp3/internal/concurrent/TaskLoggerKt;->access$log(Ljava/util/logging/Logger;Lokhttp3/internal/concurrent/Task;Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;)V

    .line 324
    :cond_3c
    const/4 v8, 0x0

    .line 325
    .local v8, "completedNormally$iv":Z
    nop

    .line 326
    const/4 v9, 0x0

    .line 64
    .local v9, "$i$a$-logElapsed-TaskRunner$runnable$1$run$1":I
    const/4 v10, 0x0

    .line 65
    .local v10, "completedNormally":Z
    nop

    .line 66
    :try_start_41
    # invokes: Lokhttp3/internal/concurrent/TaskRunner;->runTask(Lokhttp3/internal/concurrent/Task;)V
    invoke-static {v3, v0}, Lokhttp3/internal/concurrent/TaskRunner;->access$runTask(Lokhttp3/internal/concurrent/TaskRunner;Lokhttp3/internal/concurrent/Task;)V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_6d

    .line 67
    const/4 v3, 0x1

    .line 70
    .end local v10    # "completedNormally":Z
    .local v3, "completedNormally":Z
    nop

    .line 73
    nop

    .line 74
    nop

    .end local v3    # "completedNormally":Z
    .end local v9    # "$i$a$-logElapsed-TaskRunner$runnable$1$run$1":I
    :try_start_48
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4a
    .catchall {:try_start_48 .. :try_end_4a} :catchall_6b

    .line 327
    .local v3, "result$iv":Ljava/lang/Object;
    const/4 v8, 0x1

    .line 328
    nop

    .line 330
    .end local v3    # "result$iv":Ljava/lang/Object;
    if-eqz v7, :cond_6a

    .line 331
    invoke-virtual {v2}, Lokhttp3/internal/concurrent/TaskQueue;->getTaskRunner$okhttp()Lokhttp3/internal/concurrent/TaskRunner;

    move-result-object v9

    invoke-virtual {v9}, Lokhttp3/internal/concurrent/TaskRunner;->getBackend()Lokhttp3/internal/concurrent/TaskRunner$Backend;

    move-result-object v9

    invoke-interface {v9}, Lokhttp3/internal/concurrent/TaskRunner$Backend;->nanoTime()J

    move-result-wide v9

    sub-long/2addr v9, v5

    .line 332
    .local v9, "elapsedNs$iv":J
    nop

    .line 333
    const-string v11, "finished run in "

    invoke-static {v9, v10}, Lokhttp3/internal/concurrent/TaskLoggerKt;->formatDuration(J)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    # invokes: Lokhttp3/internal/concurrent/TaskLoggerKt;->log(Ljava/util/logging/Logger;Lokhttp3/internal/concurrent/Task;Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;)V
    invoke-static {v1, v0, v2, v11}, Lokhttp3/internal/concurrent/TaskLoggerKt;->access$log(Ljava/util/logging/Logger;Lokhttp3/internal/concurrent/Task;Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;)V

    .end local v9    # "elapsedNs$iv":J
    .restart local v3    # "result$iv":Ljava/lang/Object;
    nop

    .line 328
    :cond_6a
    goto :goto_1

    .end local v3    # "result$iv":Ljava/lang/Object;
    :catchall_6b
    move-exception v3

    goto :goto_7a

    .line 73
    .local v9, "$i$a$-logElapsed-TaskRunner$runnable$1$run$1":I
    .restart local v10    # "completedNormally":Z
    :catchall_6d
    move-exception v11

    .line 70
    nop

    .line 71
    :try_start_6f
    invoke-virtual {v3}, Lokhttp3/internal/concurrent/TaskRunner;->getBackend()Lokhttp3/internal/concurrent/TaskRunner$Backend;

    move-result-object v3

    move-object v12, p0

    check-cast v12, Ljava/lang/Runnable;

    invoke-interface {v3, v12}, Lokhttp3/internal/concurrent/TaskRunner$Backend;->execute(Ljava/lang/Runnable;)V

    .end local v0    # "task":Lokhttp3/internal/concurrent/Task;
    .end local v1    # "$this$logElapsed$iv":Ljava/util/logging/Logger;
    .end local v2    # "queue$iv":Lokhttp3/internal/concurrent/TaskQueue;
    .end local v4    # "$i$f$logElapsed":I
    .end local v5    # "startNs$iv":J
    .end local v7    # "loggingEnabled$iv":Z
    .end local v8    # "completedNormally$iv":Z
    throw v11
    :try_end_7a
    .catchall {:try_start_6f .. :try_end_7a} :catchall_6b

    .line 330
    .end local v9    # "$i$a$-logElapsed-TaskRunner$runnable$1$run$1":I
    .end local v10    # "completedNormally":Z
    .restart local v0    # "task":Lokhttp3/internal/concurrent/Task;
    .restart local v1    # "$this$logElapsed$iv":Ljava/util/logging/Logger;
    .restart local v2    # "queue$iv":Lokhttp3/internal/concurrent/TaskQueue;
    .restart local v4    # "$i$f$logElapsed":I
    .restart local v5    # "startNs$iv":J
    .restart local v7    # "loggingEnabled$iv":Z
    .restart local v8    # "completedNormally$iv":Z
    :goto_7a
    if-eqz v7, :cond_a6

    .line 331
    invoke-virtual {v2}, Lokhttp3/internal/concurrent/TaskQueue;->getTaskRunner$okhttp()Lokhttp3/internal/concurrent/TaskRunner;

    move-result-object v9

    invoke-virtual {v9}, Lokhttp3/internal/concurrent/TaskRunner;->getBackend()Lokhttp3/internal/concurrent/TaskRunner$Backend;

    move-result-object v9

    invoke-interface {v9}, Lokhttp3/internal/concurrent/TaskRunner$Backend;->nanoTime()J

    move-result-wide v9

    sub-long/2addr v9, v5

    .line 332
    .local v9, "elapsedNs$iv":J
    if-eqz v8, :cond_99

    .line 333
    const-string v11, "finished run in "

    invoke-static {v9, v10}, Lokhttp3/internal/concurrent/TaskLoggerKt;->formatDuration(J)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    # invokes: Lokhttp3/internal/concurrent/TaskLoggerKt;->log(Ljava/util/logging/Logger;Lokhttp3/internal/concurrent/Task;Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;)V
    invoke-static {v1, v0, v2, v11}, Lokhttp3/internal/concurrent/TaskLoggerKt;->access$log(Ljava/util/logging/Logger;Lokhttp3/internal/concurrent/Task;Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;)V

    goto :goto_a6

    .line 335
    :cond_99
    const-string v11, "failed a run in "

    invoke-static {v9, v10}, Lokhttp3/internal/concurrent/TaskLoggerKt;->formatDuration(J)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    # invokes: Lokhttp3/internal/concurrent/TaskLoggerKt;->log(Ljava/util/logging/Logger;Lokhttp3/internal/concurrent/Task;Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;)V
    invoke-static {v1, v0, v2, v11}, Lokhttp3/internal/concurrent/TaskLoggerKt;->access$log(Ljava/util/logging/Logger;Lokhttp3/internal/concurrent/Task;Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;)V

    .end local v9    # "elapsedNs$iv":J
    :cond_a6
    :goto_a6
    throw v3

    .line 59
    .end local v0    # "task":Lokhttp3/internal/concurrent/Task;
    .end local v1    # "$this$logElapsed$iv":Ljava/util/logging/Logger;
    .end local v2    # "queue$iv":Lokhttp3/internal/concurrent/TaskQueue;
    .end local v4    # "$i$f$logElapsed":I
    .end local v5    # "startNs$iv":J
    .end local v7    # "loggingEnabled$iv":Z
    .end local v8    # "completedNormally$iv":Z
    :catchall_a7
    move-exception v1

    monitor-exit v0

    throw v1
.end method
