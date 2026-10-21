.class public final Lokhttp3/internal/concurrent/TaskQueue;
.super Ljava/lang/Object;
.source "TaskQueue.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/concurrent/TaskQueue$AwaitIdleTask;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTaskQueue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TaskQueue.kt\nokhttp3/internal/concurrent/TaskQueue\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 TaskLogger.kt\nokhttp3/internal/concurrent/TaskLoggerKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 Util.kt\nokhttp3/internal/Util\n*L\n1#1,222:1\n1#2:223\n26#3,4:224\n26#3,4:228\n26#3,4:232\n26#3,4:236\n26#3,4:255\n348#4,7:240\n653#5,4:247\n653#5,4:251\n*S KotlinDebug\n*F\n+ 1 TaskQueue.kt\nokhttp3/internal/concurrent/TaskQueue\n*L\n65#1:224,4\n68#1:228,4\n157#1:232,4\n163#1:236,4\n212#1:255,4\n169#1:240,7\n183#1:247,4\n193#1:251,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001:\u00013B\u0017\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010!\u001a\u00020\"J\r\u0010#\u001a\u00020\u000eH\u0000\u00a2\u0006\u0002\u0008$J0\u0010%\u001a\u00020\"2\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010&\u001a\u00020\'2\u0008\u0008\u0002\u0010(\u001a\u00020\u000e2\u000c\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\"0*J\u0006\u0010+\u001a\u00020,J&\u0010-\u001a\u00020\"2\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010&\u001a\u00020\'2\u000c\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\'0*J\u0018\u0010-\u001a\u00020\"2\u0006\u0010.\u001a\u00020\u00082\u0008\u0008\u0002\u0010&\u001a\u00020\'J%\u0010/\u001a\u00020\u000e2\u0006\u0010.\u001a\u00020\u00082\u0006\u0010&\u001a\u00020\'2\u0006\u00100\u001a\u00020\u000eH\u0000\u00a2\u0006\u0002\u00081J\u0006\u0010\u001c\u001a\u00020\"J\u0008\u00102\u001a\u00020\u0005H\u0016R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\r\u001a\u00020\u000eX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0014X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0004\u001a\u00020\u0005X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0017\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u001a8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u0016R\u001a\u0010\u001c\u001a\u00020\u000eX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u0010\"\u0004\u0008\u001e\u0010\u0012R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 \u00a8\u00064"
    }
    d2 = {
        "Lokhttp3/internal/concurrent/TaskQueue;",
        "",
        "taskRunner",
        "Lokhttp3/internal/concurrent/TaskRunner;",
        "name",
        "",
        "(Lokhttp3/internal/concurrent/TaskRunner;Ljava/lang/String;)V",
        "activeTask",
        "Lokhttp3/internal/concurrent/Task;",
        "getActiveTask$okhttp",
        "()Lokhttp3/internal/concurrent/Task;",
        "setActiveTask$okhttp",
        "(Lokhttp3/internal/concurrent/Task;)V",
        "cancelActiveTask",
        "",
        "getCancelActiveTask$okhttp",
        "()Z",
        "setCancelActiveTask$okhttp",
        "(Z)V",
        "futureTasks",
        "",
        "getFutureTasks$okhttp",
        "()Ljava/util/List;",
        "getName$okhttp",
        "()Ljava/lang/String;",
        "scheduledTasks",
        "",
        "getScheduledTasks",
        "shutdown",
        "getShutdown$okhttp",
        "setShutdown$okhttp",
        "getTaskRunner$okhttp",
        "()Lokhttp3/internal/concurrent/TaskRunner;",
        "cancelAll",
        "",
        "cancelAllAndDecide",
        "cancelAllAndDecide$okhttp",
        "execute",
        "delayNanos",
        "",
        "cancelable",
        "block",
        "Lkotlin/Function0;",
        "idleLatch",
        "Ljava/util/concurrent/CountDownLatch;",
        "schedule",
        "task",
        "scheduleAndDecide",
        "recurrence",
        "scheduleAndDecide$okhttp",
        "toString",
        "AwaitIdleTask",
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
.field private activeTask:Lokhttp3/internal/concurrent/Task;

.field private cancelActiveTask:Z

.field private final futureTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/internal/concurrent/Task;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private shutdown:Z

.field private final taskRunner:Lokhttp3/internal/concurrent/TaskRunner;


# direct methods
.method public constructor <init>(Lokhttp3/internal/concurrent/TaskRunner;Ljava/lang/String;)V
    .registers 4
    .param p1, "taskRunner"    # Lokhttp3/internal/concurrent/TaskRunner;
    .param p2, "name"    # Ljava/lang/String;

    const-string v0, "taskRunner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lokhttp3/internal/concurrent/TaskQueue;->taskRunner:Lokhttp3/internal/concurrent/TaskRunner;

    .line 31
    iput-object p2, p0, Lokhttp3/internal/concurrent/TaskQueue;->name:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lokhttp3/internal/concurrent/TaskQueue;->futureTasks:Ljava/util/List;

    .line 29
    return-void
.end method

.method public static synthetic execute$default(Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;JZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .registers 14

    .line 94
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_8

    .line 96
    const-wide/16 p2, 0x0

    move-wide v2, p2

    goto :goto_9

    .line 94
    :cond_8
    move-wide v2, p2

    :goto_9
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_10

    .line 97
    const/4 p4, 0x1

    const/4 v4, 0x1

    goto :goto_11

    .line 94
    :cond_10
    move v4, p4

    :goto_11
    move-object v0, p0

    move-object v1, p1

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lokhttp3/internal/concurrent/TaskQueue;->execute(Ljava/lang/String;JZLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic schedule$default(Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .registers 7

    .line 80
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_6

    .line 82
    const-wide/16 p2, 0x0

    .line 80
    :cond_6
    invoke-virtual {p0, p1, p2, p3, p4}, Lokhttp3/internal/concurrent/TaskQueue;->schedule(Ljava/lang/String;JLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic schedule$default(Lokhttp3/internal/concurrent/TaskQueue;Lokhttp3/internal/concurrent/Task;JILjava/lang/Object;)V
    .registers 6

    .line 61
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_6

    const-wide/16 p2, 0x0

    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Lokhttp3/internal/concurrent/TaskQueue;->schedule(Lokhttp3/internal/concurrent/Task;J)V

    return-void
.end method


# virtual methods
.method public final cancelAll()V
    .registers 6

    .line 183
    move-object v0, p0

    .local v0, "$this$assertThreadDoesntHoldLock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 247
    .local v1, "$i$f$assertThreadDoesntHoldLock":I
    sget-boolean v2, Lokhttp3/internal/Util;->assertionsEnabled:Z

    if-eqz v2, :cond_38

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_38

    .line 248
    :cond_d
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

    .line 250
    :cond_38
    :goto_38
    nop

    .line 185
    .end local v0    # "$this$assertThreadDoesntHoldLock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$assertThreadDoesntHoldLock":I
    iget-object v0, p0, Lokhttp3/internal/concurrent/TaskQueue;->taskRunner:Lokhttp3/internal/concurrent/TaskRunner;

    monitor-enter v0

    const/4 v1, 0x0

    .line 186
    .local v1, "$i$a$-synchronized-TaskQueue$cancelAll$1":I
    :try_start_3d
    invoke-virtual {p0}, Lokhttp3/internal/concurrent/TaskQueue;->cancelAllAndDecide$okhttp()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 187
    invoke-virtual {p0}, Lokhttp3/internal/concurrent/TaskQueue;->getTaskRunner$okhttp()Lokhttp3/internal/concurrent/TaskRunner;

    move-result-object v2

    invoke-virtual {v2, p0}, Lokhttp3/internal/concurrent/TaskRunner;->kickCoordinator$okhttp(Lokhttp3/internal/concurrent/TaskQueue;)V

    .line 189
    :cond_4a
    nop

    .end local v1    # "$i$a$-synchronized-TaskQueue$cancelAll$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4d
    .catchall {:try_start_3d .. :try_end_4d} :catchall_4f

    .line 185
    monitor-exit v0

    .line 190
    return-void

    .line 185
    :catchall_4f
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final cancelAllAndDecide$okhttp()Z
    .registers 8

    .line 205
    iget-object v0, p0, Lokhttp3/internal/concurrent/TaskQueue;->activeTask:Lokhttp3/internal/concurrent/Task;

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    iget-object v0, p0, Lokhttp3/internal/concurrent/TaskQueue;->activeTask:Lokhttp3/internal/concurrent/Task;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lokhttp3/internal/concurrent/Task;->getCancelable()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 206
    iput-boolean v1, p0, Lokhttp3/internal/concurrent/TaskQueue;->cancelActiveTask:Z

    .line 209
    :cond_12
    const/4 v0, 0x0

    .line 210
    .local v0, "tasksCanceled":Z
    iget-object v2, p0, Lokhttp3/internal/concurrent/TaskQueue;->futureTasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    if-ltz v2, :cond_53

    :cond_1c
    move v1, v2

    .local v1, "i":I
    add-int/lit8 v2, v2, -0x1

    .line 211
    iget-object v3, p0, Lokhttp3/internal/concurrent/TaskQueue;->futureTasks:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokhttp3/internal/concurrent/Task;

    invoke-virtual {v3}, Lokhttp3/internal/concurrent/Task;->getCancelable()Z

    move-result v3

    if-eqz v3, :cond_51

    .line 212
    iget-object v3, p0, Lokhttp3/internal/concurrent/TaskQueue;->taskRunner:Lokhttp3/internal/concurrent/TaskRunner;

    invoke-virtual {v3}, Lokhttp3/internal/concurrent/TaskRunner;->getLogger$okhttp()Ljava/util/logging/Logger;

    move-result-object v3

    .local v3, "$this$taskLog$iv":Ljava/util/logging/Logger;
    iget-object v4, p0, Lokhttp3/internal/concurrent/TaskQueue;->futureTasks:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokhttp3/internal/concurrent/Task;

    .local v4, "task$iv":Lokhttp3/internal/concurrent/Task;
    const/4 v5, 0x0

    .line 255
    .local v5, "$i$f$taskLog":I
    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    if-eqz v6, :cond_4a

    .line 256
    const/4 v6, 0x0

    .line 212
    .local v6, "$i$a$-taskLog-TaskQueue$cancelAllAndDecide$1":I
    const-string v6, "canceled"

    .end local v6    # "$i$a$-taskLog-TaskQueue$cancelAllAndDecide$1":I
    # invokes: Lokhttp3/internal/concurrent/TaskLoggerKt;->log(Ljava/util/logging/Logger;Lokhttp3/internal/concurrent/Task;Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;)V
    invoke-static {v3, v4, p0, v6}, Lokhttp3/internal/concurrent/TaskLoggerKt;->access$log(Ljava/util/logging/Logger;Lokhttp3/internal/concurrent/Task;Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;)V

    .line 258
    :cond_4a
    nop

    .line 213
    .end local v3    # "$this$taskLog$iv":Ljava/util/logging/Logger;
    .end local v4    # "task$iv":Lokhttp3/internal/concurrent/Task;
    .end local v5    # "$i$f$taskLog":I
    const/4 v0, 0x1

    .line 214
    iget-object v3, p0, Lokhttp3/internal/concurrent/TaskQueue;->futureTasks:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 210
    :cond_51
    if-gez v2, :cond_1c

    .line 217
    .end local v1    # "i":I
    :cond_53
    return v0
.end method

.method public final execute(Ljava/lang/String;JZLkotlin/jvm/functions/Function0;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "delayNanos"    # J
    .param p4, "cancelable"    # Z
    .param p5, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JZ",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    new-instance v0, Lokhttp3/internal/concurrent/TaskQueue$execute$1;

    invoke-direct {v0, p5, p1, p4}, Lokhttp3/internal/concurrent/TaskQueue$execute$1;-><init>(Lkotlin/jvm/functions/Function0;Ljava/lang/String;Z)V

    check-cast v0, Lokhttp3/internal/concurrent/Task;

    .line 105
    nop

    .line 100
    invoke-virtual {p0, v0, p2, p3}, Lokhttp3/internal/concurrent/TaskQueue;->schedule(Lokhttp3/internal/concurrent/Task;J)V

    .line 106
    return-void
.end method

.method public final getActiveTask$okhttp()Lokhttp3/internal/concurrent/Task;
    .registers 2

    .line 36
    iget-object v0, p0, Lokhttp3/internal/concurrent/TaskQueue;->activeTask:Lokhttp3/internal/concurrent/Task;

    return-object v0
.end method

.method public final getCancelActiveTask$okhttp()Z
    .registers 2

    .line 42
    iget-boolean v0, p0, Lokhttp3/internal/concurrent/TaskQueue;->cancelActiveTask:Z

    return v0
.end method

.method public final getFutureTasks$okhttp()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/internal/concurrent/Task;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lokhttp3/internal/concurrent/TaskQueue;->futureTasks:Ljava/util/List;

    return-object v0
.end method

.method public final getName$okhttp()Ljava/lang/String;
    .registers 2

    .line 31
    iget-object v0, p0, Lokhttp3/internal/concurrent/TaskQueue;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getScheduledTasks()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/internal/concurrent/Task;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lokhttp3/internal/concurrent/TaskQueue;->taskRunner:Lokhttp3/internal/concurrent/TaskRunner;

    monitor-enter v0

    .line 223
    const/4 v1, 0x0

    .line 49
    .local v1, "$i$a$-synchronized-TaskQueue$scheduledTasks$1":I
    :try_start_4
    invoke-virtual {p0}, Lokhttp3/internal/concurrent/TaskQueue;->getFutureTasks$okhttp()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_10

    .end local v1    # "$i$a$-synchronized-TaskQueue$scheduledTasks$1":I
    monitor-exit v0

    return-object v2

    :catchall_10
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final getShutdown$okhttp()Z
    .registers 2

    .line 33
    iget-boolean v0, p0, Lokhttp3/internal/concurrent/TaskQueue;->shutdown:Z

    return v0
.end method

.method public final getTaskRunner$okhttp()Lokhttp3/internal/concurrent/TaskRunner;
    .registers 2

    .line 30
    iget-object v0, p0, Lokhttp3/internal/concurrent/TaskQueue;->taskRunner:Lokhttp3/internal/concurrent/TaskRunner;

    return-object v0
.end method

.method public final idleLatch()Ljava/util/concurrent/CountDownLatch;
    .registers 9

    .line 110
    iget-object v0, p0, Lokhttp3/internal/concurrent/TaskQueue;->taskRunner:Lokhttp3/internal/concurrent/TaskRunner;

    monitor-enter v0

    const/4 v1, 0x0

    .line 112
    .local v1, "$i$a$-synchronized-TaskQueue$idleLatch$1":I
    :try_start_4
    invoke-virtual {p0}, Lokhttp3/internal/concurrent/TaskQueue;->getActiveTask$okhttp()Lokhttp3/internal/concurrent/Task;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1c

    invoke-virtual {p0}, Lokhttp3/internal/concurrent/TaskQueue;->getFutureTasks$okhttp()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 113
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_6b

    .end local v1    # "$i$a$-synchronized-TaskQueue$idleLatch$1":I
    monitor-exit v0

    return-object v2

    .line 118
    .restart local v1    # "$i$a$-synchronized-TaskQueue$idleLatch$1":I
    :cond_1c
    :try_start_1c
    invoke-virtual {p0}, Lokhttp3/internal/concurrent/TaskQueue;->getActiveTask$okhttp()Lokhttp3/internal/concurrent/Task;

    move-result-object v2

    .line 119
    .local v2, "existingTask":Lokhttp3/internal/concurrent/Task;
    instance-of v4, v2, Lokhttp3/internal/concurrent/TaskQueue$AwaitIdleTask;

    if-eqz v4, :cond_2d

    .line 120
    move-object v3, v2

    check-cast v3, Lokhttp3/internal/concurrent/TaskQueue$AwaitIdleTask;

    invoke-virtual {v3}, Lokhttp3/internal/concurrent/TaskQueue$AwaitIdleTask;->getLatch()Ljava/util/concurrent/CountDownLatch;

    move-result-object v3
    :try_end_2b
    .catchall {:try_start_1c .. :try_end_2b} :catchall_6b

    .end local v1    # "$i$a$-synchronized-TaskQueue$idleLatch$1":I
    .end local v2    # "existingTask":Lokhttp3/internal/concurrent/Task;
    monitor-exit v0

    return-object v3

    .line 122
    .restart local v1    # "$i$a$-synchronized-TaskQueue$idleLatch$1":I
    .restart local v2    # "existingTask":Lokhttp3/internal/concurrent/Task;
    :cond_2d
    :try_start_2d
    invoke-virtual {p0}, Lokhttp3/internal/concurrent/TaskQueue;->getFutureTasks$okhttp()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_35
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokhttp3/internal/concurrent/Task;

    .line 123
    .local v5, "futureTask":Lokhttp3/internal/concurrent/Task;
    instance-of v6, v5, Lokhttp3/internal/concurrent/TaskQueue$AwaitIdleTask;

    if-eqz v6, :cond_35

    .line 124
    move-object v3, v5

    check-cast v3, Lokhttp3/internal/concurrent/TaskQueue$AwaitIdleTask;

    invoke-virtual {v3}, Lokhttp3/internal/concurrent/TaskQueue$AwaitIdleTask;->getLatch()Ljava/util/concurrent/CountDownLatch;

    move-result-object v3
    :try_end_4c
    .catchall {:try_start_2d .. :try_end_4c} :catchall_6b

    .end local v1    # "$i$a$-synchronized-TaskQueue$idleLatch$1":I
    .end local v2    # "existingTask":Lokhttp3/internal/concurrent/Task;
    .end local v5    # "futureTask":Lokhttp3/internal/concurrent/Task;
    monitor-exit v0

    return-object v3

    .line 129
    .restart local v1    # "$i$a$-synchronized-TaskQueue$idleLatch$1":I
    .restart local v2    # "existingTask":Lokhttp3/internal/concurrent/Task;
    :cond_4e
    :try_start_4e
    new-instance v4, Lokhttp3/internal/concurrent/TaskQueue$AwaitIdleTask;

    invoke-direct {v4}, Lokhttp3/internal/concurrent/TaskQueue$AwaitIdleTask;-><init>()V

    .line 130
    .local v4, "newTask":Lokhttp3/internal/concurrent/TaskQueue$AwaitIdleTask;
    move-object v5, v4

    check-cast v5, Lokhttp3/internal/concurrent/Task;

    const-wide/16 v6, 0x0

    invoke-virtual {p0, v5, v6, v7, v3}, Lokhttp3/internal/concurrent/TaskQueue;->scheduleAndDecide$okhttp(Lokhttp3/internal/concurrent/Task;JZ)Z

    move-result v3

    if-eqz v3, :cond_65

    .line 131
    invoke-virtual {p0}, Lokhttp3/internal/concurrent/TaskQueue;->getTaskRunner$okhttp()Lokhttp3/internal/concurrent/TaskRunner;

    move-result-object v3

    invoke-virtual {v3, p0}, Lokhttp3/internal/concurrent/TaskRunner;->kickCoordinator$okhttp(Lokhttp3/internal/concurrent/TaskQueue;)V

    .line 133
    :cond_65
    invoke-virtual {v4}, Lokhttp3/internal/concurrent/TaskQueue$AwaitIdleTask;->getLatch()Ljava/util/concurrent/CountDownLatch;

    move-result-object v3
    :try_end_69
    .catchall {:try_start_4e .. :try_end_69} :catchall_6b

    .end local v1    # "$i$a$-synchronized-TaskQueue$idleLatch$1":I
    .end local v2    # "existingTask":Lokhttp3/internal/concurrent/Task;
    .end local v4    # "newTask":Lokhttp3/internal/concurrent/TaskQueue$AwaitIdleTask;
    monitor-exit v0

    return-object v3

    :catchall_6b
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final schedule(Ljava/lang/String;JLkotlin/jvm/functions/Function0;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "delayNanos"    # J
    .param p4, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    new-instance v0, Lokhttp3/internal/concurrent/TaskQueue$schedule$2;

    invoke-direct {v0, p4, p1}, Lokhttp3/internal/concurrent/TaskQueue$schedule$2;-><init>(Lkotlin/jvm/functions/Function0;Ljava/lang/String;)V

    check-cast v0, Lokhttp3/internal/concurrent/Task;

    .line 89
    nop

    .line 85
    invoke-virtual {p0, v0, p2, p3}, Lokhttp3/internal/concurrent/TaskQueue;->schedule(Lokhttp3/internal/concurrent/Task;J)V

    .line 90
    return-void
.end method

.method public final schedule(Lokhttp3/internal/concurrent/Task;J)V
    .registers 10
    .param p1, "task"    # Lokhttp3/internal/concurrent/Task;
    .param p2, "delayNanos"    # J

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lokhttp3/internal/concurrent/TaskQueue;->taskRunner:Lokhttp3/internal/concurrent/TaskRunner;

    monitor-enter v0

    const/4 v1, 0x0

    .line 63
    .local v1, "$i$a$-synchronized-TaskQueue$schedule$1":I
    :try_start_9
    invoke-virtual {p0}, Lokhttp3/internal/concurrent/TaskQueue;->getShutdown$okhttp()Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 64
    invoke-virtual {p1}, Lokhttp3/internal/concurrent/Task;->getCancelable()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 65
    invoke-virtual {p0}, Lokhttp3/internal/concurrent/TaskQueue;->getTaskRunner$okhttp()Lokhttp3/internal/concurrent/TaskRunner;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/internal/concurrent/TaskRunner;->getLogger$okhttp()Ljava/util/logging/Logger;

    move-result-object v2

    .local v2, "$this$taskLog$iv":Ljava/util/logging/Logger;
    const/4 v3, 0x0

    .line 224
    .local v3, "$i$f$taskLog":I
    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 225
    const/4 v4, 0x0

    .line 65
    .local v4, "$i$a$-taskLog-TaskQueue$schedule$1$1":I
    const-string v5, "schedule canceled (queue is shutdown)"

    .end local v4    # "$i$a$-taskLog-TaskQueue$schedule$1$1":I
    # invokes: Lokhttp3/internal/concurrent/TaskLoggerKt;->log(Ljava/util/logging/Logger;Lokhttp3/internal/concurrent/Task;Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;)V
    invoke-static {v2, p1, p0, v5}, Lokhttp3/internal/concurrent/TaskLoggerKt;->access$log(Ljava/util/logging/Logger;Lokhttp3/internal/concurrent/Task;Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_9 .. :try_end_2c} :catchall_61

    .line 227
    :cond_2c
    nop

    .line 66
    .end local v2    # "$this$taskLog$iv":Ljava/util/logging/Logger;
    .end local v3    # "$i$f$taskLog":I
    nop

    .end local v1    # "$i$a$-synchronized-TaskQueue$schedule$1":I
    monitor-exit v0

    return-void

    .line 68
    .restart local v1    # "$i$a$-synchronized-TaskQueue$schedule$1":I
    :cond_30
    :try_start_30
    invoke-virtual {p0}, Lokhttp3/internal/concurrent/TaskQueue;->getTaskRunner$okhttp()Lokhttp3/internal/concurrent/TaskRunner;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/internal/concurrent/TaskRunner;->getLogger$okhttp()Ljava/util/logging/Logger;

    move-result-object v2

    .restart local v2    # "$this$taskLog$iv":Ljava/util/logging/Logger;
    const/4 v3, 0x0

    .line 228
    .restart local v3    # "$i$f$taskLog":I
    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 229
    const/4 v4, 0x0

    .line 68
    .local v4, "$i$a$-taskLog-TaskQueue$schedule$1$2":I
    const-string v5, "schedule failed (queue is shutdown)"

    .end local v4    # "$i$a$-taskLog-TaskQueue$schedule$1$2":I
    # invokes: Lokhttp3/internal/concurrent/TaskLoggerKt;->log(Ljava/util/logging/Logger;Lokhttp3/internal/concurrent/Task;Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;)V
    invoke-static {v2, p1, p0, v5}, Lokhttp3/internal/concurrent/TaskLoggerKt;->access$log(Ljava/util/logging/Logger;Lokhttp3/internal/concurrent/Task;Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;)V

    .line 231
    :cond_47
    nop

    .line 69
    .end local v2    # "$this$taskLog$iv":Ljava/util/logging/Logger;
    .end local v3    # "$i$f$taskLog":I
    new-instance v2, Ljava/util/concurrent/RejectedExecutionException;

    invoke-direct {v2}, Ljava/util/concurrent/RejectedExecutionException;-><init>()V

    .end local p1    # "task":Lokhttp3/internal/concurrent/Task;
    .end local p2    # "delayNanos":J
    throw v2

    .line 72
    .restart local p1    # "task":Lokhttp3/internal/concurrent/Task;
    .restart local p2    # "delayNanos":J
    :cond_4e
    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, p3, v2}, Lokhttp3/internal/concurrent/TaskQueue;->scheduleAndDecide$okhttp(Lokhttp3/internal/concurrent/Task;JZ)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 73
    invoke-virtual {p0}, Lokhttp3/internal/concurrent/TaskQueue;->getTaskRunner$okhttp()Lokhttp3/internal/concurrent/TaskRunner;

    move-result-object v2

    invoke-virtual {v2, p0}, Lokhttp3/internal/concurrent/TaskRunner;->kickCoordinator$okhttp(Lokhttp3/internal/concurrent/TaskQueue;)V

    .line 75
    :cond_5c
    nop

    .end local v1    # "$i$a$-synchronized-TaskQueue$schedule$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5f
    .catchall {:try_start_30 .. :try_end_5f} :catchall_61

    .line 62
    monitor-exit v0

    .line 76
    return-void

    .line 62
    :catchall_61
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final scheduleAndDecide$okhttp(Lokhttp3/internal/concurrent/Task;JZ)Z
    .registers 25
    .param p1, "task"    # Lokhttp3/internal/concurrent/Task;
    .param p2, "delayNanos"    # J
    .param p4, "recurrence"    # Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "task"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    invoke-virtual {v1, v0}, Lokhttp3/internal/concurrent/Task;->initQueue$okhttp(Lokhttp3/internal/concurrent/TaskQueue;)V

    .line 150
    iget-object v2, v0, Lokhttp3/internal/concurrent/TaskQueue;->taskRunner:Lokhttp3/internal/concurrent/TaskRunner;

    invoke-virtual {v2}, Lokhttp3/internal/concurrent/TaskRunner;->getBackend()Lokhttp3/internal/concurrent/TaskRunner$Backend;

    move-result-object v2

    invoke-interface {v2}, Lokhttp3/internal/concurrent/TaskRunner$Backend;->nanoTime()J

    move-result-wide v2

    .line 151
    .local v2, "now":J
    add-long v4, v2, p2

    .line 154
    .local v4, "executeNanoTime":J
    iget-object v6, v0, Lokhttp3/internal/concurrent/TaskQueue;->futureTasks:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 155
    .local v6, "existingIndex":I
    const/4 v7, 0x0

    const/4 v8, -0x1

    if-eq v6, v8, :cond_46

    .line 156
    invoke-virtual/range {p1 .. p1}, Lokhttp3/internal/concurrent/Task;->getNextExecuteNanoTime$okhttp()J

    move-result-wide v9

    cmp-long v11, v9, v4

    if-gtz v11, :cond_41

    .line 157
    iget-object v8, v0, Lokhttp3/internal/concurrent/TaskQueue;->taskRunner:Lokhttp3/internal/concurrent/TaskRunner;

    invoke-virtual {v8}, Lokhttp3/internal/concurrent/TaskRunner;->getLogger$okhttp()Ljava/util/logging/Logger;

    move-result-object v8

    .local v8, "$this$taskLog$iv":Ljava/util/logging/Logger;
    const/4 v9, 0x0

    .line 232
    .local v9, "$i$f$taskLog":I
    sget-object v10, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v8, v10}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v10

    if-eqz v10, :cond_3f

    .line 233
    const/4 v10, 0x0

    .line 157
    .local v10, "$i$a$-taskLog-TaskQueue$scheduleAndDecide$1":I
    const-string v10, "already scheduled"

    .end local v10    # "$i$a$-taskLog-TaskQueue$scheduleAndDecide$1":I
    # invokes: Lokhttp3/internal/concurrent/TaskLoggerKt;->log(Ljava/util/logging/Logger;Lokhttp3/internal/concurrent/Task;Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;)V
    invoke-static {v8, v1, v0, v10}, Lokhttp3/internal/concurrent/TaskLoggerKt;->access$log(Ljava/util/logging/Logger;Lokhttp3/internal/concurrent/Task;Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;)V

    .line 235
    :cond_3f
    nop

    .line 158
    .end local v8    # "$this$taskLog$iv":Ljava/util/logging/Logger;
    .end local v9    # "$i$f$taskLog":I
    return v7

    .line 160
    :cond_41
    iget-object v9, v0, Lokhttp3/internal/concurrent/TaskQueue;->futureTasks:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 162
    :cond_46
    invoke-virtual {v1, v4, v5}, Lokhttp3/internal/concurrent/Task;->setNextExecuteNanoTime$okhttp(J)V

    .line 163
    iget-object v9, v0, Lokhttp3/internal/concurrent/TaskQueue;->taskRunner:Lokhttp3/internal/concurrent/TaskRunner;

    invoke-virtual {v9}, Lokhttp3/internal/concurrent/TaskRunner;->getLogger$okhttp()Ljava/util/logging/Logger;

    move-result-object v9

    .local v9, "$this$taskLog$iv":Ljava/util/logging/Logger;
    const/4 v10, 0x0

    .line 236
    .local v10, "$i$f$taskLog":I
    sget-object v11, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v9, v11}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v11

    if-eqz v11, :cond_78

    .line 237
    const/4 v11, 0x0

    .line 164
    .local v11, "$i$a$-taskLog-TaskQueue$scheduleAndDecide$2":I
    if-eqz p4, :cond_68

    sub-long v12, v4, v2

    invoke-static {v12, v13}, Lokhttp3/internal/concurrent/TaskLoggerKt;->formatDuration(J)Ljava/lang/String;

    move-result-object v12

    const-string v13, "run again after "

    invoke-static {v13, v12}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto :goto_74

    .line 165
    :cond_68
    sub-long v12, v4, v2

    invoke-static {v12, v13}, Lokhttp3/internal/concurrent/TaskLoggerKt;->formatDuration(J)Ljava/lang/String;

    move-result-object v12

    const-string v13, "scheduled after "

    invoke-static {v13, v12}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 164
    :goto_74
    nop

    .end local v11    # "$i$a$-taskLog-TaskQueue$scheduleAndDecide$2":I
    # invokes: Lokhttp3/internal/concurrent/TaskLoggerKt;->log(Ljava/util/logging/Logger;Lokhttp3/internal/concurrent/Task;Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;)V
    invoke-static {v9, v1, v0, v12}, Lokhttp3/internal/concurrent/TaskLoggerKt;->access$log(Ljava/util/logging/Logger;Lokhttp3/internal/concurrent/Task;Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;)V

    .line 239
    :cond_78
    nop

    .line 169
    .end local v9    # "$this$taskLog$iv":Ljava/util/logging/Logger;
    .end local v10    # "$i$f$taskLog":I
    iget-object v9, v0, Lokhttp3/internal/concurrent/TaskQueue;->futureTasks:Ljava/util/List;

    .local v9, "$this$indexOfFirst$iv":Ljava/util/List;
    const/4 v10, 0x0

    .line 240
    .local v10, "$i$f$indexOfFirst":I
    const/4 v11, 0x0

    .line 241
    .local v11, "index$iv":I
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_81
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    const/4 v14, 0x1

    if-eqz v13, :cond_a5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 242
    .local v13, "item$iv":Ljava/lang/Object;
    move-object v15, v13

    check-cast v15, Lokhttp3/internal/concurrent/Task;

    .local v15, "it":Lokhttp3/internal/concurrent/Task;
    const/16 v16, 0x0

    .line 169
    .local v16, "$i$a$-indexOfFirst-TaskQueue$scheduleAndDecide$insertAt$1":I
    invoke-virtual {v15}, Lokhttp3/internal/concurrent/Task;->getNextExecuteNanoTime$okhttp()J

    move-result-wide v17

    sub-long v17, v17, v2

    cmp-long v19, v17, p2

    if-lez v19, :cond_9d

    const/4 v15, 0x1

    goto :goto_9e

    :cond_9d
    const/4 v15, 0x0

    .end local v15    # "it":Lokhttp3/internal/concurrent/Task;
    .end local v16    # "$i$a$-indexOfFirst-TaskQueue$scheduleAndDecide$insertAt$1":I
    :goto_9e
    if-eqz v15, :cond_a1

    .line 243
    goto :goto_a6

    .line 244
    :cond_a1
    nop

    .end local v13    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v11, v11, 0x1

    .line 241
    goto :goto_81

    .line 246
    :cond_a5
    const/4 v11, -0x1

    .line 169
    .end local v9    # "$this$indexOfFirst$iv":Ljava/util/List;
    .end local v10    # "$i$f$indexOfFirst":I
    .end local v11    # "index$iv":I
    :goto_a6
    move v9, v11

    .line 170
    .local v9, "insertAt":I
    if-ne v9, v8, :cond_af

    iget-object v8, v0, Lokhttp3/internal/concurrent/TaskQueue;->futureTasks:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    .line 171
    :cond_af
    iget-object v8, v0, Lokhttp3/internal/concurrent/TaskQueue;->futureTasks:Ljava/util/List;

    invoke-interface {v8, v9, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 174
    if-nez v9, :cond_b7

    const/4 v7, 0x1

    :cond_b7
    return v7
.end method

.method public final setActiveTask$okhttp(Lokhttp3/internal/concurrent/Task;)V
    .registers 2
    .param p1, "<set-?>"    # Lokhttp3/internal/concurrent/Task;

    .line 36
    iput-object p1, p0, Lokhttp3/internal/concurrent/TaskQueue;->activeTask:Lokhttp3/internal/concurrent/Task;

    return-void
.end method

.method public final setCancelActiveTask$okhttp(Z)V
    .registers 2
    .param p1, "<set-?>"    # Z

    .line 42
    iput-boolean p1, p0, Lokhttp3/internal/concurrent/TaskQueue;->cancelActiveTask:Z

    return-void
.end method

.method public final setShutdown$okhttp(Z)V
    .registers 2
    .param p1, "<set-?>"    # Z

    .line 33
    iput-boolean p1, p0, Lokhttp3/internal/concurrent/TaskQueue;->shutdown:Z

    return-void
.end method

.method public final shutdown()V
    .registers 6

    .line 193
    move-object v0, p0

    .local v0, "$this$assertThreadDoesntHoldLock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 251
    .local v1, "$i$f$assertThreadDoesntHoldLock":I
    sget-boolean v2, Lokhttp3/internal/Util;->assertionsEnabled:Z

    if-eqz v2, :cond_38

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_38

    .line 252
    :cond_d
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

    .line 254
    :cond_38
    :goto_38
    nop

    .line 195
    .end local v0    # "$this$assertThreadDoesntHoldLock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$assertThreadDoesntHoldLock":I
    iget-object v0, p0, Lokhttp3/internal/concurrent/TaskQueue;->taskRunner:Lokhttp3/internal/concurrent/TaskRunner;

    monitor-enter v0

    const/4 v1, 0x0

    .line 196
    .local v1, "$i$a$-synchronized-TaskQueue$shutdown$1":I
    const/4 v2, 0x1

    :try_start_3e
    invoke-virtual {p0, v2}, Lokhttp3/internal/concurrent/TaskQueue;->setShutdown$okhttp(Z)V

    .line 197
    invoke-virtual {p0}, Lokhttp3/internal/concurrent/TaskQueue;->cancelAllAndDecide$okhttp()Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 198
    invoke-virtual {p0}, Lokhttp3/internal/concurrent/TaskQueue;->getTaskRunner$okhttp()Lokhttp3/internal/concurrent/TaskRunner;

    move-result-object v2

    invoke-virtual {v2, p0}, Lokhttp3/internal/concurrent/TaskRunner;->kickCoordinator$okhttp(Lokhttp3/internal/concurrent/TaskQueue;)V

    .line 200
    :cond_4e
    nop

    .end local v1    # "$i$a$-synchronized-TaskQueue$shutdown$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_51
    .catchall {:try_start_3e .. :try_end_51} :catchall_53

    .line 195
    monitor-exit v0

    .line 201
    return-void

    .line 195
    :catchall_53
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 220
    iget-object v0, p0, Lokhttp3/internal/concurrent/TaskQueue;->name:Ljava/lang/String;

    return-object v0
.end method
