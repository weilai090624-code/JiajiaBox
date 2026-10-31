.class public final Lokhttp3/Dispatcher;
.super Ljava/lang/Object;
.source "Dispatcher.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDispatcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Dispatcher.kt\nokhttp3/Dispatcher\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Util.kt\nokhttp3/internal/Util\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,241:1\n1#2:242\n653#3,4:243\n1547#4:247\n1618#4,3:248\n1547#4:251\n1618#4,3:252\n*S KotlinDebug\n*F\n+ 1 Dispatcher.kt\nokhttp3/Dispatcher\n*L\n162#1:243,4\n222#1:247\n222#1:248,3\n227#1:251\n227#1:252,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u0005\u00a2\u0006\u0002\u0010\u0005J\u0006\u0010\u001e\u001a\u00020\u001fJ\u0019\u0010 \u001a\u00020\u001f2\n\u0010!\u001a\u00060\u001aR\u00020\u001bH\u0000\u00a2\u0006\u0002\u0008\"J\u0015\u0010#\u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u001bH\u0000\u00a2\u0006\u0002\u0008$J\r\u0010\u0002\u001a\u00020\u0003H\u0007\u00a2\u0006\u0002\u0008%J\u0016\u0010&\u001a\u0008\u0018\u00010\u001aR\u00020\u001b2\u0006\u0010\'\u001a\u00020(H\u0002J)\u0010)\u001a\u00020\u001f\"\u0004\u0008\u0000\u0010*2\u000c\u0010+\u001a\u0008\u0012\u0004\u0012\u0002H*0,2\u0006\u0010!\u001a\u0002H*H\u0002\u00a2\u0006\u0002\u0010-J\u0015\u0010)\u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u001bH\u0000\u00a2\u0006\u0002\u0008.J\u0019\u0010)\u001a\u00020\u001f2\n\u0010!\u001a\u00060\u001aR\u00020\u001bH\u0000\u00a2\u0006\u0002\u0008.J\u0008\u0010/\u001a\u000200H\u0002J\u000c\u00101\u001a\u0008\u0012\u0004\u0012\u00020302J\u0006\u00104\u001a\u00020\u0010J\u000c\u00105\u001a\u0008\u0012\u0004\u0012\u00020302J\u0006\u00106\u001a\u00020\u0010R\u0011\u0010\u0002\u001a\u00020\u00038G\u00a2\u0006\u0006\u001a\u0004\u0008\u0002\u0010\u0006R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R*\u0010\n\u001a\u0004\u0018\u00010\t2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t8F@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR&\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u00108F@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R&\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u00108F@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0012\"\u0004\u0008\u0017\u0010\u0014R\u0018\u0010\u0018\u001a\u000c\u0012\u0008\u0012\u00060\u001aR\u00020\u001b0\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u001c\u001a\u000c\u0012\u0008\u0012\u00060\u001aR\u00020\u001b0\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00067"
    }
    d2 = {
        "Lokhttp3/Dispatcher;",
        "",
        "executorService",
        "Ljava/util/concurrent/ExecutorService;",
        "(Ljava/util/concurrent/ExecutorService;)V",
        "()V",
        "()Ljava/util/concurrent/ExecutorService;",
        "executorServiceOrNull",
        "<set-?>",
        "Ljava/lang/Runnable;",
        "idleCallback",
        "getIdleCallback",
        "()Ljava/lang/Runnable;",
        "setIdleCallback",
        "(Ljava/lang/Runnable;)V",
        "maxRequests",
        "",
        "getMaxRequests",
        "()I",
        "setMaxRequests",
        "(I)V",
        "maxRequestsPerHost",
        "getMaxRequestsPerHost",
        "setMaxRequestsPerHost",
        "readyAsyncCalls",
        "Ljava/util/ArrayDeque;",
        "Lokhttp3/internal/connection/RealCall$AsyncCall;",
        "Lokhttp3/internal/connection/RealCall;",
        "runningAsyncCalls",
        "runningSyncCalls",
        "cancelAll",
        "",
        "enqueue",
        "call",
        "enqueue$okhttp",
        "executed",
        "executed$okhttp",
        "-deprecated_executorService",
        "findExistingCallWithHost",
        "host",
        "",
        "finished",
        "T",
        "calls",
        "Ljava/util/Deque;",
        "(Ljava/util/Deque;Ljava/lang/Object;)V",
        "finished$okhttp",
        "promoteAndExecute",
        "",
        "queuedCalls",
        "",
        "Lokhttp3/Call;",
        "queuedCallsCount",
        "runningCalls",
        "runningCallsCount",
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
.field private executorServiceOrNull:Ljava/util/concurrent/ExecutorService;

.field private idleCallback:Ljava/lang/Runnable;

.field private maxRequests:I

.field private maxRequestsPerHost:I

.field private final readyAsyncCalls:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lokhttp3/internal/connection/RealCall$AsyncCall;",
            ">;"
        }
    .end annotation
.end field

.field private final runningAsyncCalls:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lokhttp3/internal/connection/RealCall$AsyncCall;",
            ">;"
        }
    .end annotation
.end field

.field private final runningSyncCalls:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lokhttp3/internal/connection/RealCall;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/16 v0, 0x40

    iput v0, p0, Lokhttp3/Dispatcher;->maxRequests:I

    .line 65
    const/4 v0, 0x5

    iput v0, p0, Lokhttp3/Dispatcher;->maxRequestsPerHost:I

    .line 102
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/util/ArrayDeque;

    .line 105
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/ArrayDeque;

    .line 108
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/util/ArrayDeque;

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .registers 3
    .param p1, "executorService"    # Ljava/util/concurrent/ExecutorService;

    const-string v0, "executorService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-direct {p0}, Lokhttp3/Dispatcher;-><init>()V

    .line 111
    iput-object p1, p0, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/util/concurrent/ExecutorService;

    .line 112
    return-void
.end method

.method private final findExistingCallWithHost(Ljava/lang/String;)Lokhttp3/internal/connection/RealCall$AsyncCall;
    .registers 5
    .param p1, "host"    # Ljava/lang/String;

    .line 129
    iget-object v0, p0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/internal/connection/RealCall$AsyncCall;

    .line 130
    .local v1, "existingCall":Lokhttp3/internal/connection/RealCall$AsyncCall;
    invoke-virtual {v1}, Lokhttp3/internal/connection/RealCall$AsyncCall;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-object v1

    .line 132
    .end local v1    # "existingCall":Lokhttp3/internal/connection/RealCall$AsyncCall;
    :cond_1d
    iget-object v0, p0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/internal/connection/RealCall$AsyncCall;

    .line 133
    .restart local v1    # "existingCall":Lokhttp3/internal/connection/RealCall$AsyncCall;
    invoke-virtual {v1}, Lokhttp3/internal/connection/RealCall$AsyncCall;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    return-object v1

    .line 135
    .end local v1    # "existingCall":Lokhttp3/internal/connection/RealCall$AsyncCall;
    :cond_3a
    const/4 v0, 0x0

    return-object v0
.end method

.method private final finished(Ljava/util/Deque;Ljava/lang/Object;)V
    .registers 7
    .param p1, "calls"    # Ljava/util/Deque;
    .param p2, "call"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Deque<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 207
    const/4 v0, 0x0

    .line 208
    .local v0, "idleCallback":Ljava/lang/Object;
    monitor-enter p0

    const/4 v1, 0x0

    .line 209
    .local v1, "$i$a$-synchronized-Dispatcher$finished$1":I
    :try_start_3
    invoke-interface {p1, p2}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 210
    invoke-virtual {p0}, Lokhttp3/Dispatcher;->getIdleCallback()Ljava/lang/Runnable;

    move-result-object v2

    move-object v0, v2

    .line 211
    nop

    .end local v1    # "$i$a$-synchronized-Dispatcher$finished$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_26

    .line 208
    monitor-exit p0

    .line 213
    invoke-direct {p0}, Lokhttp3/Dispatcher;->promoteAndExecute()Z

    move-result v1

    .line 215
    .local v1, "isRunning":Z
    if-nez v1, :cond_1d

    if-eqz v0, :cond_1d

    .line 216
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 218
    :cond_1d
    return-void

    .line 209
    .local v1, "$i$a$-synchronized-Dispatcher$finished$1":I
    :cond_1e
    :try_start_1e
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "Call wasn\'t in-flight!"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v0    # "idleCallback":Ljava/lang/Object;
    .end local p1    # "calls":Ljava/util/Deque;
    .end local p2    # "call":Ljava/lang/Object;
    throw v2
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_26

    .line 208
    .end local v1    # "$i$a$-synchronized-Dispatcher$finished$1":I
    .restart local v0    # "idleCallback":Ljava/lang/Object;
    .restart local p1    # "calls":Ljava/util/Deque;
    .restart local p2    # "call":Ljava/lang/Object;
    :catchall_26
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private final promoteAndExecute()Z
    .registers 9

    .line 162
    move-object v0, p0

    .local v0, "$this$assertThreadDoesntHoldLock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 243
    .local v1, "$i$f$assertThreadDoesntHoldLock":I
    sget-boolean v2, Lokhttp3/internal/Util;->assertionsEnabled:Z

    if-eqz v2, :cond_38

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_38

    .line 244
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

    .line 246
    :cond_38
    :goto_38
    nop

    .line 164
    .end local v0    # "$this$assertThreadDoesntHoldLock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$assertThreadDoesntHoldLock":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 165
    .local v0, "executableCalls":Ljava/util/List;
    const/4 v1, 0x0

    .line 166
    .local v1, "isRunning":Z
    monitor-enter p0

    const/4 v2, 0x0

    .line 167
    .local v2, "$i$a$-synchronized-Dispatcher$promoteAndExecute$1":I
    :try_start_43
    iget-object v3, p0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const-string v4, "readyAsyncCalls.iterator()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    .local v3, "i":Ljava/util/Iterator;
    :goto_4e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 169
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokhttp3/internal/connection/RealCall$AsyncCall;

    .line 171
    .local v4, "asyncCall":Lokhttp3/internal/connection/RealCall$AsyncCall;
    iget-object v5, p0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->size()I

    move-result v5

    invoke-virtual {p0}, Lokhttp3/Dispatcher;->getMaxRequests()I

    move-result v6

    if-lt v5, v6, :cond_67

    goto :goto_8e

    .line 172
    :cond_67
    invoke-virtual {v4}, Lokhttp3/internal/connection/RealCall$AsyncCall;->getCallsPerHost()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-virtual {p0}, Lokhttp3/Dispatcher;->getMaxRequestsPerHost()I

    move-result v6

    if-lt v5, v6, :cond_76

    goto :goto_4e

    .line 174
    :cond_76
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 175
    invoke-virtual {v4}, Lokhttp3/internal/connection/RealCall$AsyncCall;->getCallsPerHost()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 176
    const-string v5, "asyncCall"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    iget-object v5, p0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/ArrayDeque;

    invoke-virtual {v5, v4}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    .line 179
    .end local v4    # "asyncCall":Lokhttp3/internal/connection/RealCall$AsyncCall;
    :cond_8e
    :goto_8e
    invoke-virtual {p0}, Lokhttp3/Dispatcher;->runningCallsCount()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez v4, :cond_98

    const/4 v4, 0x1

    goto :goto_99

    :cond_98
    const/4 v4, 0x0

    :goto_99
    move v1, v4

    .line 180
    nop

    .end local v2    # "$i$a$-synchronized-Dispatcher$promoteAndExecute$1":I
    .end local v3    # "i":Ljava/util/Iterator;
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_9d
    .catchall {:try_start_43 .. :try_end_9d} :catchall_b6

    .line 166
    monitor-exit p0

    .line 182
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_b5

    :cond_a4
    move v3, v6

    .local v3, "i":I
    add-int/2addr v6, v5

    .line 183
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokhttp3/internal/connection/RealCall$AsyncCall;

    .line 184
    .restart local v4    # "asyncCall":Lokhttp3/internal/connection/RealCall$AsyncCall;
    invoke-virtual {p0}, Lokhttp3/Dispatcher;->executorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    invoke-virtual {v4, v7}, Lokhttp3/internal/connection/RealCall$AsyncCall;->executeOn(Ljava/util/concurrent/ExecutorService;)V

    .line 182
    .end local v4    # "asyncCall":Lokhttp3/internal/connection/RealCall$AsyncCall;
    if-lt v6, v2, :cond_a4

    .line 187
    .end local v3    # "i":I
    :cond_b5
    return v1

    .line 166
    :catchall_b6
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public final -deprecated_executorService()Ljava/util/concurrent/ExecutorService;
    .registers 2
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "executorService"
            imports = {}
        .end subannotation
    .end annotation

    .line 239
    invoke-virtual {p0}, Lokhttp3/Dispatcher;->executorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized cancelAll()V
    .registers 4

    monitor-enter p0

    .line 143
    :try_start_1
    iget-object v0, p0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/internal/connection/RealCall$AsyncCall;

    .line 144
    .local v1, "call":Lokhttp3/internal/connection/RealCall$AsyncCall;
    invoke-virtual {v1}, Lokhttp3/internal/connection/RealCall$AsyncCall;->getCall()Lokhttp3/internal/connection/RealCall;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/internal/connection/RealCall;->cancel()V

    .end local v1    # "call":Lokhttp3/internal/connection/RealCall$AsyncCall;
    goto :goto_7

    .line 146
    .end local p0    # "this":Lokhttp3/Dispatcher;
    :cond_1b
    iget-object v0, p0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/internal/connection/RealCall$AsyncCall;

    .line 147
    .restart local v1    # "call":Lokhttp3/internal/connection/RealCall$AsyncCall;
    invoke-virtual {v1}, Lokhttp3/internal/connection/RealCall$AsyncCall;->getCall()Lokhttp3/internal/connection/RealCall;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/internal/connection/RealCall;->cancel()V

    .end local v1    # "call":Lokhttp3/internal/connection/RealCall$AsyncCall;
    goto :goto_21

    .line 149
    :cond_35
    iget-object v0, p0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/internal/connection/RealCall;

    .line 150
    .local v1, "call":Lokhttp3/internal/connection/RealCall;
    invoke-virtual {v1}, Lokhttp3/internal/connection/RealCall;->cancel()V
    :try_end_4a
    .catchall {:try_start_1 .. :try_end_4a} :catchall_4d

    .end local v1    # "call":Lokhttp3/internal/connection/RealCall;
    goto :goto_3b

    .line 152
    :cond_4b
    monitor-exit p0

    return-void

    .line 142
    :catchall_4d
    move-exception v0

    :try_start_4e
    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw v0
.end method

.method public final enqueue$okhttp(Lokhttp3/internal/connection/RealCall$AsyncCall;)V
    .registers 4
    .param p1, "call"    # Lokhttp3/internal/connection/RealCall$AsyncCall;

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    monitor-enter p0

    const/4 v0, 0x0

    .line 116
    .local v0, "$i$a$-synchronized-Dispatcher$enqueue$1":I
    :try_start_7
    iget-object v1, p0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-virtual {p1}, Lokhttp3/internal/connection/RealCall$AsyncCall;->getCall()Lokhttp3/internal/connection/RealCall;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/internal/connection/RealCall;->getForWebSocket()Z

    move-result v1

    if-nez v1, :cond_23

    .line 121
    invoke-virtual {p1}, Lokhttp3/internal/connection/RealCall$AsyncCall;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lokhttp3/Dispatcher;->findExistingCallWithHost(Ljava/lang/String;)Lokhttp3/internal/connection/RealCall$AsyncCall;

    move-result-object v1

    .line 122
    .local v1, "existingCall":Lokhttp3/internal/connection/RealCall$AsyncCall;
    if-eqz v1, :cond_23

    invoke-virtual {p1, v1}, Lokhttp3/internal/connection/RealCall$AsyncCall;->reuseCallsPerHostFrom(Lokhttp3/internal/connection/RealCall$AsyncCall;)V

    .line 124
    .end local v1    # "existingCall":Lokhttp3/internal/connection/RealCall$AsyncCall;
    :cond_23
    nop

    .end local v0    # "$i$a$-synchronized-Dispatcher$enqueue$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_2b

    .line 115
    monitor-exit p0

    .line 125
    invoke-direct {p0}, Lokhttp3/Dispatcher;->promoteAndExecute()Z

    .line 126
    return-void

    .line 115
    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized executed$okhttp(Lokhttp3/internal/connection/RealCall;)V
    .registers 3
    .param p1, "call"    # Lokhttp3/internal/connection/RealCall;

    monitor-enter p0

    :try_start_1
    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 193
    monitor-exit p0

    return-void

    .line 191
    .end local p0    # "this":Lokhttp3/Dispatcher;
    .end local p1    # "call":Lokhttp3/internal/connection/RealCall;
    :catchall_d
    move-exception p1

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw p1
.end method

.method public final declared-synchronized executorService()Ljava/util/concurrent/ExecutorService;
    .registers 10

    monitor-enter p0

    .line 94
    :try_start_1
    iget-object v0, p0, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_2c

    .line 95
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 96
    new-instance v1, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v1}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    move-object v7, v1

    check-cast v7, Ljava/util/concurrent/BlockingQueue;

    sget-object v1, Lokhttp3/internal/Util;->okHttpName:Ljava/lang/String;

    const-string v2, " Dispatcher"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lokhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    .line 95
    const/4 v2, 0x0

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/util/concurrent/ExecutorService;

    .line 98
    .end local p0    # "this":Lokhttp3/Dispatcher;
    :cond_2c
    iget-object v0, p0, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_33

    monitor-exit p0

    return-object v0

    .line 93
    :catchall_33
    move-exception v0

    :try_start_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v0
.end method

.method public final finished$okhttp(Lokhttp3/internal/connection/RealCall$AsyncCall;)V
    .registers 3
    .param p1, "call"    # Lokhttp3/internal/connection/RealCall$AsyncCall;

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    invoke-virtual {p1}, Lokhttp3/internal/connection/RealCall$AsyncCall;->getCallsPerHost()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 198
    iget-object v0, p0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/ArrayDeque;

    check-cast v0, Ljava/util/Deque;

    invoke-direct {p0, v0, p1}, Lokhttp3/Dispatcher;->finished(Ljava/util/Deque;Ljava/lang/Object;)V

    .line 199
    return-void
.end method

.method public final finished$okhttp(Lokhttp3/internal/connection/RealCall;)V
    .registers 3
    .param p1, "call"    # Lokhttp3/internal/connection/RealCall;

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/util/ArrayDeque;

    check-cast v0, Ljava/util/Deque;

    invoke-direct {p0, v0, p1}, Lokhttp3/Dispatcher;->finished(Ljava/util/Deque;Ljava/lang/Object;)V

    .line 204
    return-void
.end method

.method public final declared-synchronized getIdleCallback()Ljava/lang/Runnable;
    .registers 2

    monitor-enter p0

    .line 87
    :try_start_1
    iget-object v0, p0, Lokhttp3/Dispatcher;->idleCallback:Ljava/lang/Runnable;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 87
    .end local p0    # "this":Lokhttp3/Dispatcher;
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public final declared-synchronized getMaxRequests()I
    .registers 2

    monitor-enter p0

    .line 46
    :try_start_1
    iget v0, p0, Lokhttp3/Dispatcher;->maxRequests:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 46
    .end local p0    # "this":Lokhttp3/Dispatcher;
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public final declared-synchronized getMaxRequestsPerHost()I
    .registers 2

    monitor-enter p0

    .line 65
    :try_start_1
    iget v0, p0, Lokhttp3/Dispatcher;->maxRequestsPerHost:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 65
    .end local p0    # "this":Lokhttp3/Dispatcher;
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public final declared-synchronized queuedCalls()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/Call;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 222
    :try_start_1
    iget-object v0, p0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/util/ArrayDeque;

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 247
    .local v1, "$i$f$map":I
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 248
    .local v4, "$i$f$mapTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_19
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_30

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 249
    .local v6, "item$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lokhttp3/internal/connection/RealCall$AsyncCall;

    .local v7, "it":Lokhttp3/internal/connection/RealCall$AsyncCall;
    const/4 v8, 0x0

    .line 222
    .local v8, "$i$a$-map-Dispatcher$queuedCalls$1":I
    invoke-virtual {v7}, Lokhttp3/internal/connection/RealCall$AsyncCall;->getCall()Lokhttp3/internal/connection/RealCall;

    move-result-object v9

    .end local v7    # "it":Lokhttp3/internal/connection/RealCall$AsyncCall;
    .end local v8    # "$i$a$-map-Dispatcher$queuedCalls$1":I
    invoke-interface {v2, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 248
    nop

    .end local v6    # "item$iv$iv":Ljava/lang/Object;
    goto :goto_19

    .line 250
    .end local p0    # "this":Lokhttp3/Dispatcher;
    :cond_30
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$mapTo":I
    check-cast v2, Ljava/util/List;

    .line 247
    nop

    .line 222
    .end local v0    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$map":I
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const-string v1, "unmodifiableList(readyAsyncCalls.map { it.call })"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_3f

    monitor-exit p0

    return-object v0

    .line 221
    :catchall_3f
    move-exception v0

    :try_start_40
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v0
.end method

.method public final declared-synchronized queuedCallsCount()I
    .registers 2

    monitor-enter p0

    .line 230
    :try_start_1
    iget-object v0, p0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    .line 230
    .end local p0    # "this":Lokhttp3/Dispatcher;
    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public final declared-synchronized runningCalls()Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/Call;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 227
    :try_start_1
    iget-object v0, p0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/util/ArrayDeque;

    check-cast v0, Ljava/util/Collection;

    iget-object v1, p0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/ArrayDeque;

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 251
    .local v2, "$i$f$map":I
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v1

    .local v4, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 252
    .local v5, "$i$f$mapTo":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_34

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 253
    .local v7, "item$iv$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Lokhttp3/internal/connection/RealCall$AsyncCall;

    .local v8, "it":Lokhttp3/internal/connection/RealCall$AsyncCall;
    const/4 v9, 0x0

    .line 227
    .local v9, "$i$a$-map-Dispatcher$runningCalls$1":I
    invoke-virtual {v8}, Lokhttp3/internal/connection/RealCall$AsyncCall;->getCall()Lokhttp3/internal/connection/RealCall;

    move-result-object v10

    .end local v8    # "it":Lokhttp3/internal/connection/RealCall$AsyncCall;
    .end local v9    # "$i$a$-map-Dispatcher$runningCalls$1":I
    invoke-interface {v3, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 252
    nop

    .end local v7    # "item$iv$iv":Ljava/lang/Object;
    goto :goto_1d

    .line 254
    .end local p0    # "this":Lokhttp3/Dispatcher;
    :cond_34
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$mapTo":I
    check-cast v3, Ljava/util/List;

    .line 251
    nop

    .end local v1    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$map":I
    check-cast v3, Ljava/lang/Iterable;

    .line 227
    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const-string v1, "unmodifiableList(running\u2026yncCalls.map { it.call })"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_47
    .catchall {:try_start_1 .. :try_end_47} :catchall_49

    monitor-exit p0

    return-object v0

    .line 226
    :catchall_49
    move-exception v0

    :try_start_4a
    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw v0
.end method

.method public final declared-synchronized runningCallsCount()I
    .registers 3

    monitor-enter p0

    .line 232
    :try_start_1
    iget-object v0, p0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    iget-object v1, p0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_10

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    .line 232
    .end local p0    # "this":Lokhttp3/Dispatcher;
    :catchall_10
    move-exception v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public final declared-synchronized setIdleCallback(Ljava/lang/Runnable;)V
    .registers 2
    .param p1, "<set-?>"    # Ljava/lang/Runnable;

    monitor-enter p0

    .line 87
    :try_start_1
    iput-object p1, p0, Lokhttp3/Dispatcher;->idleCallback:Ljava/lang/Runnable;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    .line 87
    .end local p0    # "this":Lokhttp3/Dispatcher;
    .end local p1    # "<set-?>":Ljava/lang/Runnable;
    :catchall_5
    move-exception p1

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw p1
.end method

.method public final setMaxRequests(I)V
    .registers 5
    .param p1, "maxRequests"    # I

    .line 48
    const/4 v0, 0x1

    if-lt p1, v0, :cond_4

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_16

    .line 49
    monitor-enter p0

    const/4 v0, 0x0

    .line 50
    .local v0, "$i$a$-synchronized-Dispatcher$maxRequests$2":I
    :try_start_9
    iput p1, p0, Lokhttp3/Dispatcher;->maxRequests:I

    .line 51
    nop

    .end local v0    # "$i$a$-synchronized-Dispatcher$maxRequests$2":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_13

    .line 49
    monitor-exit p0

    .line 52
    invoke-direct {p0}, Lokhttp3/Dispatcher;->promoteAndExecute()Z

    .line 53
    return-void

    .line 49
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0

    .line 242
    :cond_16
    const/4 v0, 0x0

    .line 48
    .local v0, "$i$a$-require-Dispatcher$maxRequests$1":I
    const-string v1, "max < 1: "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-Dispatcher$maxRequests$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public final setMaxRequestsPerHost(I)V
    .registers 5
    .param p1, "maxRequestsPerHost"    # I

    .line 67
    const/4 v0, 0x1

    if-lt p1, v0, :cond_4

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_16

    .line 68
    monitor-enter p0

    const/4 v0, 0x0

    .line 69
    .local v0, "$i$a$-synchronized-Dispatcher$maxRequestsPerHost$2":I
    :try_start_9
    iput p1, p0, Lokhttp3/Dispatcher;->maxRequestsPerHost:I

    .line 70
    nop

    .end local v0    # "$i$a$-synchronized-Dispatcher$maxRequestsPerHost$2":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_13

    .line 68
    monitor-exit p0

    .line 71
    invoke-direct {p0}, Lokhttp3/Dispatcher;->promoteAndExecute()Z

    .line 72
    return-void

    .line 68
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0

    .line 242
    :cond_16
    const/4 v0, 0x0

    .line 67
    .local v0, "$i$a$-require-Dispatcher$maxRequestsPerHost$1":I
    const-string v1, "max < 1: "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-Dispatcher$maxRequestsPerHost$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method
