.class public final Lokhttp3/internal/connection/RealConnectionPool;
.super Ljava/lang/Object;
.source "RealConnectionPool.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/connection/RealConnectionPool$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRealConnectionPool.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealConnectionPool.kt\nokhttp3/internal/connection/RealConnectionPool\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Util.kt\nokhttp3/internal/Util\n*L\n1#1,248:1\n1#2:249\n1768#3,4:250\n646#4,4:254\n646#4,4:258\n646#4,4:262\n*S KotlinDebug\n*F\n+ 1 RealConnectionPool.kt\nokhttp3/internal/connection/RealConnectionPool\n*L\n60#1:250,4\n95#1:254,4\n106#1:258,4\n213#1:262,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0005*\u0001\u000e\u0018\u0000 (2\u00020\u0001:\u0001(B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ.\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u000e\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u001b2\u0006\u0010\u001d\u001a\u00020\u0015J\u000e\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020\u0007J\u000e\u0010 \u001a\u00020\u00152\u0006\u0010!\u001a\u00020\u0012J\u0006\u0010\"\u001a\u00020\u0005J\u0006\u0010#\u001a\u00020$J\u0006\u0010%\u001a\u00020\u0005J\u0018\u0010&\u001a\u00020\u00052\u0006\u0010!\u001a\u00020\u00122\u0006\u0010\u001f\u001a\u00020\u0007H\u0002J\u000e\u0010\'\u001a\u00020$2\u0006\u0010!\u001a\u00020\u0012R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000fR\u0014\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006)"
    }
    d2 = {
        "Lokhttp3/internal/connection/RealConnectionPool;",
        "",
        "taskRunner",
        "Lokhttp3/internal/concurrent/TaskRunner;",
        "maxIdleConnections",
        "",
        "keepAliveDuration",
        "",
        "timeUnit",
        "Ljava/util/concurrent/TimeUnit;",
        "(Lokhttp3/internal/concurrent/TaskRunner;IJLjava/util/concurrent/TimeUnit;)V",
        "cleanupQueue",
        "Lokhttp3/internal/concurrent/TaskQueue;",
        "cleanupTask",
        "okhttp3/internal/connection/RealConnectionPool$cleanupTask$1",
        "Lokhttp3/internal/connection/RealConnectionPool$cleanupTask$1;",
        "connections",
        "Ljava/util/concurrent/ConcurrentLinkedQueue;",
        "Lokhttp3/internal/connection/RealConnection;",
        "keepAliveDurationNs",
        "callAcquirePooledConnection",
        "",
        "address",
        "Lokhttp3/Address;",
        "call",
        "Lokhttp3/internal/connection/RealCall;",
        "routes",
        "",
        "Lokhttp3/Route;",
        "requireMultiplexed",
        "cleanup",
        "now",
        "connectionBecameIdle",
        "connection",
        "connectionCount",
        "evictAll",
        "",
        "idleConnectionCount",
        "pruneAndGetAllocationCount",
        "put",
        "Companion",
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


# static fields
.field public static final Companion:Lokhttp3/internal/connection/RealConnectionPool$Companion;


# instance fields
.field private final cleanupQueue:Lokhttp3/internal/concurrent/TaskQueue;

.field private final cleanupTask:Lokhttp3/internal/connection/RealConnectionPool$cleanupTask$1;

.field private final connections:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lokhttp3/internal/connection/RealConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final keepAliveDurationNs:J

.field private final maxIdleConnections:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lokhttp3/internal/connection/RealConnectionPool$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/internal/connection/RealConnectionPool$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokhttp3/internal/connection/RealConnectionPool;->Companion:Lokhttp3/internal/connection/RealConnectionPool$Companion;

    return-void
.end method

.method public constructor <init>(Lokhttp3/internal/concurrent/TaskRunner;IJLjava/util/concurrent/TimeUnit;)V
    .registers 9
    .param p1, "taskRunner"    # Lokhttp3/internal/concurrent/TaskRunner;
    .param p2, "maxIdleConnections"    # I
    .param p3, "keepAliveDuration"    # J
    .param p5, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    const-string v0, "taskRunner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeUnit"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p2, p0, Lokhttp3/internal/connection/RealConnectionPool;->maxIdleConnections:I

    .line 40
    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/internal/connection/RealConnectionPool;->keepAliveDurationNs:J

    .line 42
    invoke-virtual {p1}, Lokhttp3/internal/concurrent/TaskRunner;->newQueue()Lokhttp3/internal/concurrent/TaskQueue;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/connection/RealConnectionPool;->cleanupQueue:Lokhttp3/internal/concurrent/TaskQueue;

    .line 43
    sget-object v0, Lokhttp3/internal/Util;->okHttpName:Ljava/lang/String;

    const-string v1, " ConnectionPool"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lokhttp3/internal/connection/RealConnectionPool$cleanupTask$1;

    invoke-direct {v1, p0, v0}, Lokhttp3/internal/connection/RealConnectionPool$cleanupTask$1;-><init>(Lokhttp3/internal/connection/RealConnectionPool;Ljava/lang/String;)V

    iput-object v1, p0, Lokhttp3/internal/connection/RealConnectionPool;->cleanupTask:Lokhttp3/internal/connection/RealConnectionPool$cleanupTask$1;

    .line 52
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 54
    nop

    .line 56
    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-lez v2, :cond_3a

    const/4 v0, 0x1

    goto :goto_3b

    :cond_3a
    const/4 v0, 0x0

    :goto_3b
    if-eqz v0, :cond_3f

    .line 57
    nop

    .line 33
    return-void

    .line 249
    :cond_3f
    const/4 v0, 0x0

    .line 56
    .local v0, "$i$a$-require-RealConnectionPool$1":I
    const-string v1, "keepAliveDuration <= 0: "

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-RealConnectionPool$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method private final pruneAndGetAllocationCount(Lokhttp3/internal/connection/RealConnection;J)I
    .registers 11
    .param p1, "connection"    # Lokhttp3/internal/connection/RealConnection;
    .param p2, "now"    # J

    .line 213
    move-object v0, p1

    .local v0, "$this$assertThreadHoldsLock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 262
    .local v1, "$i$f$assertThreadHoldsLock":I
    sget-boolean v2, Lokhttp3/internal/Util;->assertionsEnabled:Z

    if-eqz v2, :cond_38

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_38

    .line 263
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

    const-string v4, " MUST hold lock on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 265
    :cond_38
    :goto_38
    nop

    .line 215
    .end local v0    # "$this$assertThreadHoldsLock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$assertThreadHoldsLock":I
    invoke-virtual {p1}, Lokhttp3/internal/connection/RealConnection;->getCalls()Ljava/util/List;

    move-result-object v0

    .line 216
    .local v0, "references":Ljava/util/List;
    const/4 v1, 0x0

    .line 217
    .local v1, "i":I
    :cond_3e
    :goto_3e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_9e

    .line 218
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/Reference;

    .line 220
    .local v2, "reference":Ljava/lang/ref/Reference;
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_53

    .line 221
    add-int/lit8 v1, v1, 0x1

    .line 222
    goto :goto_3e

    .line 226
    :cond_53
    move-object v3, v2

    check-cast v3, Lokhttp3/internal/connection/RealCall$CallReference;

    .line 227
    .local v3, "callReference":Lokhttp3/internal/connection/RealCall$CallReference;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "A connection to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lokhttp3/internal/connection/RealConnection;->route()Lokhttp3/Route;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " was leaked. Did you forget to close a response body?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 229
    .local v4, "message":Ljava/lang/String;
    sget-object v5, Lokhttp3/internal/platform/Platform;->Companion:Lokhttp3/internal/platform/Platform$Companion;

    invoke-virtual {v5}, Lokhttp3/internal/platform/Platform$Companion;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v5

    invoke-virtual {v3}, Lokhttp3/internal/connection/RealCall$CallReference;->getCallStackTrace()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lokhttp3/internal/platform/Platform;->logCloseableLeak(Ljava/lang/String;Ljava/lang/Object;)V

    .line 231
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 232
    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Lokhttp3/internal/connection/RealConnection;->setNoNewExchanges(Z)V

    .line 235
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 236
    iget-wide v5, p0, Lokhttp3/internal/connection/RealConnectionPool;->keepAliveDurationNs:J

    sub-long v5, p2, v5

    invoke-virtual {p1, v5, v6}, Lokhttp3/internal/connection/RealConnection;->setIdleAtNs(J)V

    .line 237
    const/4 v5, 0x0

    return v5

    .line 241
    .end local v2    # "reference":Ljava/lang/ref/Reference;
    .end local v3    # "callReference":Lokhttp3/internal/connection/RealCall$CallReference;
    .end local v4    # "message":Ljava/lang/String;
    :cond_9e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    return v2
.end method


# virtual methods
.method public final callAcquirePooledConnection(Lokhttp3/Address;Lokhttp3/internal/connection/RealCall;Ljava/util/List;Z)Z
    .registers 9
    .param p1, "address"    # Lokhttp3/Address;
    .param p2, "call"    # Lokhttp3/internal/connection/RealCall;
    .param p3, "routes"    # Ljava/util/List;
    .param p4, "requireMultiplexed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Address;",
            "Lokhttp3/internal/connection/RealCall;",
            "Ljava/util/List<",
            "Lokhttp3/Route;",
            ">;Z)Z"
        }
    .end annotation

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "call"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/internal/connection/RealConnection;

    .line 84
    .local v1, "connection":Lokhttp3/internal/connection/RealConnection;
    const-string v2, "connection"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter v1

    const/4 v2, 0x0

    .line 85
    .local v2, "$i$a$-synchronized-RealConnectionPool$callAcquirePooledConnection$1":I
    if-eqz p4, :cond_2c

    :try_start_25
    invoke-virtual {v1}, Lokhttp3/internal/connection/RealConnection;->isMultiplexed$okhttp()Z

    move-result v3

    if-nez v3, :cond_2c

    goto :goto_32

    .line 86
    :cond_2c
    invoke-virtual {v1, p1, p3}, Lokhttp3/internal/connection/RealConnection;->isEligible$okhttp(Lokhttp3/Address;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_36

    .line 88
    .end local v2    # "$i$a$-synchronized-RealConnectionPool$callAcquirePooledConnection$1":I
    :goto_32
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_34
    .catchall {:try_start_25 .. :try_end_34} :catchall_3d

    .line 84
    monitor-exit v1

    goto :goto_10

    .line 87
    .restart local v2    # "$i$a$-synchronized-RealConnectionPool$callAcquirePooledConnection$1":I
    :cond_36
    :try_start_36
    invoke-virtual {p2, v1}, Lokhttp3/internal/connection/RealCall;->acquireConnectionNoEvents(Lokhttp3/internal/connection/RealConnection;)V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3d

    .line 88
    nop

    .end local v2    # "$i$a$-synchronized-RealConnectionPool$callAcquirePooledConnection$1":I
    monitor-exit v1

    const/4 v0, 0x1

    return v0

    .line 84
    :catchall_3d
    move-exception v0

    monitor-exit v1

    throw v0

    .line 91
    .end local v1    # "connection":Lokhttp3/internal/connection/RealConnection;
    :cond_40
    const/4 v0, 0x0

    return v0
.end method

.method public final cleanup(J)J
    .registers 15
    .param p1, "now"    # J

    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, "inUseConnectionCount":I
    const/4 v1, 0x0

    .line 148
    .local v1, "idleConnectionCount":I
    const/4 v2, 0x0

    .line 149
    .local v2, "longestIdleConnection":Ljava/lang/Object;
    const-wide/16 v3, 0x0

    .local v3, "longestIdleDurationNs":J
    const-wide/high16 v3, -0x8000000000000000L

    .line 152
    iget-object v5, p0, Lokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_49

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lokhttp3/internal/connection/RealConnection;

    .line 153
    .local v6, "connection":Lokhttp3/internal/connection/RealConnection;
    const-string v7, "connection"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter v6

    const/4 v7, 0x0

    .line 155
    .local v7, "$i$a$-synchronized-RealConnectionPool$cleanup$1":I
    :try_start_20
    invoke-direct {p0, v6, p1, p2}, Lokhttp3/internal/connection/RealConnectionPool;->pruneAndGetAllocationCount(Lokhttp3/internal/connection/RealConnection;J)I

    move-result v8
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_44

    if-lez v8, :cond_2f

    .line 156
    add-int/lit8 v8, v0, 0x1

    .end local v0    # "inUseConnectionCount":I
    .local v8, "inUseConnectionCount":I
    :try_start_28
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2d

    move v0, v8

    goto :goto_41

    .line 153
    .end local v7    # "$i$a$-synchronized-RealConnectionPool$cleanup$1":I
    :catchall_2d
    move-exception v0

    goto :goto_47

    .line 158
    .end local v8    # "inUseConnectionCount":I
    .restart local v0    # "inUseConnectionCount":I
    .restart local v7    # "$i$a$-synchronized-RealConnectionPool$cleanup$1":I
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    .line 161
    :try_start_31
    invoke-virtual {v6}, Lokhttp3/internal/connection/RealConnection;->getIdleAtNs()J

    move-result-wide v8

    sub-long v8, p1, v8

    .line 162
    .local v8, "idleDurationNs":J
    cmp-long v10, v8, v3

    if-lez v10, :cond_3e

    .line 163
    move-wide v3, v8

    .line 164
    move-object v2, v6

    goto :goto_3f

    .line 165
    :cond_3e
    nop

    .end local v8    # "idleDurationNs":J
    :goto_3f
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_41
    .catchall {:try_start_31 .. :try_end_41} :catchall_44

    .line 155
    :goto_41
    nop

    .line 153
    .end local v7    # "$i$a$-synchronized-RealConnectionPool$cleanup$1":I
    monitor-exit v6

    goto :goto_d

    :catchall_44
    move-exception v5

    move v8, v0

    move-object v0, v5

    .end local v0    # "inUseConnectionCount":I
    .local v8, "inUseConnectionCount":I
    :goto_47
    monitor-exit v6

    throw v0

    .line 170
    .end local v6    # "connection":Lokhttp3/internal/connection/RealConnection;
    .end local v8    # "inUseConnectionCount":I
    .restart local v0    # "inUseConnectionCount":I
    :cond_49
    nop

    .line 171
    iget-wide v5, p0, Lokhttp3/internal/connection/RealConnectionPool;->keepAliveDurationNs:J

    cmp-long v7, v3, v5

    if-gez v7, :cond_63

    .line 172
    iget v5, p0, Lokhttp3/internal/connection/RealConnectionPool;->maxIdleConnections:I

    if-le v1, v5, :cond_55

    goto :goto_63

    .line 189
    :cond_55
    if-lez v1, :cond_5b

    .line 191
    iget-wide v5, p0, Lokhttp3/internal/connection/RealConnectionPool;->keepAliveDurationNs:J

    sub-long/2addr v5, v3

    return-wide v5

    .line 194
    :cond_5b
    if-lez v0, :cond_60

    .line 197
    iget-wide v5, p0, Lokhttp3/internal/connection/RealConnectionPool;->keepAliveDurationNs:J

    return-wide v5

    .line 202
    :cond_60
    const-wide/16 v5, -0x1

    return-wide v5

    .line 174
    :cond_63
    :goto_63
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v5, v2

    .line 175
    .local v5, "connection":Lokhttp3/internal/connection/RealConnection;
    monitor-enter v5

    const/4 v6, 0x0

    .line 176
    .local v6, "$i$a$-synchronized-RealConnectionPool$cleanup$2":I
    :try_start_69
    invoke-virtual {v5}, Lokhttp3/internal/connection/RealConnection;->getCalls()Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7
    :try_end_73
    .catchall {:try_start_69 .. :try_end_73} :catchall_a3

    const-wide/16 v8, 0x0

    if-nez v7, :cond_79

    .end local v6    # "$i$a$-synchronized-RealConnectionPool$cleanup$2":I
    monitor-exit v5

    return-wide v8

    .line 177
    .restart local v6    # "$i$a$-synchronized-RealConnectionPool$cleanup$2":I
    :cond_79
    :try_start_79
    invoke-virtual {v5}, Lokhttp3/internal/connection/RealConnection;->getIdleAtNs()J

    move-result-wide v10
    :try_end_7d
    .catchall {:try_start_79 .. :try_end_7d} :catchall_a3

    add-long/2addr v10, v3

    cmp-long v7, v10, p1

    if-eqz v7, :cond_84

    .end local v6    # "$i$a$-synchronized-RealConnectionPool$cleanup$2":I
    monitor-exit v5

    return-wide v8

    .line 178
    .restart local v6    # "$i$a$-synchronized-RealConnectionPool$cleanup$2":I
    :cond_84
    const/4 v7, 0x1

    :try_start_85
    invoke-virtual {v5, v7}, Lokhttp3/internal/connection/RealConnection;->setNoNewExchanges(Z)V

    .line 179
    iget-object v7, p0, Lokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v7, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z
    :try_end_8d
    .catchall {:try_start_85 .. :try_end_8d} :catchall_a3

    .line 175
    .end local v6    # "$i$a$-synchronized-RealConnectionPool$cleanup$2":I
    monitor-exit v5

    .line 182
    invoke-virtual {v5}, Lokhttp3/internal/connection/RealConnection;->socket()Ljava/net/Socket;

    move-result-object v6

    invoke-static {v6}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 183
    iget-object v6, p0, Lokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_a2

    iget-object v6, p0, Lokhttp3/internal/connection/RealConnectionPool;->cleanupQueue:Lokhttp3/internal/concurrent/TaskQueue;

    invoke-virtual {v6}, Lokhttp3/internal/concurrent/TaskQueue;->cancelAll()V

    .line 186
    :cond_a2
    return-wide v8

    .line 175
    :catchall_a3
    move-exception v6

    monitor-exit v5

    throw v6
.end method

.method public final connectionBecameIdle(Lokhttp3/internal/connection/RealConnection;)Z
    .registers 9
    .param p1, "connection"    # Lokhttp3/internal/connection/RealConnection;

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    move-object v0, p1

    .local v0, "$this$assertThreadHoldsLock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 258
    .local v1, "$i$f$assertThreadHoldsLock":I
    sget-boolean v2, Lokhttp3/internal/Util;->assertionsEnabled:Z

    if-eqz v2, :cond_3d

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    goto :goto_3d

    .line 259
    :cond_12
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

    const-string v4, " MUST hold lock on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 261
    :cond_3d
    :goto_3d
    nop

    .line 108
    .end local v0    # "$this$assertThreadHoldsLock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$assertThreadHoldsLock":I
    invoke-virtual {p1}, Lokhttp3/internal/connection/RealConnection;->getNoNewExchanges()Z

    move-result v0

    if-nez v0, :cond_59

    iget v0, p0, Lokhttp3/internal/connection/RealConnectionPool;->maxIdleConnections:I

    if-nez v0, :cond_49

    goto :goto_59

    .line 114
    :cond_49
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnectionPool;->cleanupQueue:Lokhttp3/internal/concurrent/TaskQueue;

    iget-object v0, p0, Lokhttp3/internal/connection/RealConnectionPool;->cleanupTask:Lokhttp3/internal/connection/RealConnectionPool$cleanupTask$1;

    move-object v2, v0

    check-cast v2, Lokhttp3/internal/concurrent/Task;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-wide/16 v3, 0x0

    invoke-static/range {v1 .. v6}, Lokhttp3/internal/concurrent/TaskQueue;->schedule$default(Lokhttp3/internal/concurrent/TaskQueue;Lokhttp3/internal/concurrent/Task;JILjava/lang/Object;)V

    .line 115
    const/4 v0, 0x0

    goto :goto_70

    .line 109
    :cond_59
    :goto_59
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lokhttp3/internal/connection/RealConnection;->setNoNewExchanges(Z)V

    .line 110
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 111
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6f

    iget-object v1, p0, Lokhttp3/internal/connection/RealConnectionPool;->cleanupQueue:Lokhttp3/internal/concurrent/TaskQueue;

    invoke-virtual {v1}, Lokhttp3/internal/concurrent/TaskQueue;->cancelAll()V

    .line 112
    :cond_6f
    nop

    .line 108
    :goto_70
    return v0
.end method

.method public final connectionCount()I
    .registers 2

    .line 66
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    return v0
.end method

.method public final evictAll()V
    .registers 5

    .line 120
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "connections.iterator()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    .local v0, "i":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 122
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/internal/connection/RealConnection;

    .line 123
    .local v1, "connection":Lokhttp3/internal/connection/RealConnection;
    const-string v2, "connection"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter v1

    const/4 v2, 0x0

    .line 124
    .local v2, "$i$a$-synchronized-RealConnectionPool$evictAll$socketToClose$1":I
    :try_start_1e
    invoke-virtual {v1}, Lokhttp3/internal/connection/RealConnection;->getCalls()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 125
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 126
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lokhttp3/internal/connection/RealConnection;->setNoNewExchanges(Z)V

    .line 127
    invoke-virtual {v1}, Lokhttp3/internal/connection/RealConnection;->socket()Ljava/net/Socket;

    move-result-object v3
    :try_end_33
    .catchall {:try_start_1e .. :try_end_33} :catchall_3e

    goto :goto_35

    .line 129
    :cond_34
    const/4 v3, 0x0

    .line 123
    .end local v2    # "$i$a$-synchronized-RealConnectionPool$evictAll$socketToClose$1":I
    :goto_35
    monitor-exit v1

    move-object v2, v3

    .line 132
    .local v2, "socketToClose":Ljava/net/Socket;
    if-nez v2, :cond_3a

    goto :goto_b

    :cond_3a
    invoke-static {v2}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .end local v1    # "connection":Lokhttp3/internal/connection/RealConnection;
    .end local v2    # "socketToClose":Ljava/net/Socket;
    goto :goto_b

    .line 123
    .restart local v1    # "connection":Lokhttp3/internal/connection/RealConnection;
    :catchall_3e
    move-exception v2

    monitor-exit v1

    throw v2

    .line 135
    .end local v1    # "connection":Lokhttp3/internal/connection/RealConnection;
    :cond_41
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4e

    iget-object v1, p0, Lokhttp3/internal/connection/RealConnectionPool;->cleanupQueue:Lokhttp3/internal/concurrent/TaskQueue;

    invoke-virtual {v1}, Lokhttp3/internal/concurrent/TaskQueue;->cancelAll()V

    .line 136
    :cond_4e
    return-void
.end method

.method public final idleConnectionCount()I
    .registers 10

    .line 60
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/util/concurrent/ConcurrentLinkedQueue;

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$count$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 250
    .local v1, "$i$f$count":I
    instance-of v2, v0, Ljava/util/Collection;

    if-eqz v2, :cond_14

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v2, 0x0

    goto :goto_45

    .line 251
    :cond_14
    const/4 v2, 0x0

    .line 252
    .local v2, "count$iv":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_44

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Lokhttp3/internal/connection/RealConnection;

    .local v5, "it":Lokhttp3/internal/connection/RealConnection;
    const/4 v6, 0x0

    .line 61
    .local v6, "$i$a$-count-RealConnectionPool$idleConnectionCount$1":I
    const-string v7, "it"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter v5

    .line 249
    const/4 v7, 0x0

    .line 61
    .local v7, "$i$a$-synchronized-RealConnectionPool$idleConnectionCount$1$1":I
    :try_start_2e
    invoke-virtual {v5}, Lokhttp3/internal/connection/RealConnection;->getCalls()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_41

    .end local v7    # "$i$a$-synchronized-RealConnectionPool$idleConnectionCount$1$1":I
    monitor-exit v5

    .end local v5    # "it":Lokhttp3/internal/connection/RealConnection;
    .end local v6    # "$i$a$-count-RealConnectionPool$idleConnectionCount$1":I
    if-eqz v8, :cond_40

    add-int/lit8 v2, v2, 0x1

    if-gez v2, :cond_40

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwCountOverflow()V

    .line 252
    .end local v4    # "element$iv":Ljava/lang/Object;
    :cond_40
    goto :goto_19

    .line 61
    .restart local v4    # "element$iv":Ljava/lang/Object;
    .restart local v5    # "it":Lokhttp3/internal/connection/RealConnection;
    .restart local v6    # "$i$a$-count-RealConnectionPool$idleConnectionCount$1":I
    :catchall_41
    move-exception v3

    monitor-exit v5

    throw v3

    .line 253
    .end local v4    # "element$iv":Ljava/lang/Object;
    .end local v5    # "it":Lokhttp3/internal/connection/RealConnection;
    .end local v6    # "$i$a$-count-RealConnectionPool$idleConnectionCount$1":I
    :cond_44
    nop

    .line 60
    .end local v0    # "$this$count$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$count":I
    .end local v2    # "count$iv":I
    :goto_45
    return v2
.end method

.method public final put(Lokhttp3/internal/connection/RealConnection;)V
    .registers 9
    .param p1, "connection"    # Lokhttp3/internal/connection/RealConnection;

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    move-object v0, p1

    .local v0, "$this$assertThreadHoldsLock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 254
    .local v1, "$i$f$assertThreadHoldsLock":I
    sget-boolean v2, Lokhttp3/internal/Util;->assertionsEnabled:Z

    if-eqz v2, :cond_3d

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    goto :goto_3d

    .line 255
    :cond_12
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

    const-string v4, " MUST hold lock on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 257
    :cond_3d
    :goto_3d
    nop

    .line 97
    .end local v0    # "$this$assertThreadHoldsLock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$assertThreadHoldsLock":I
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnectionPool;->cleanupQueue:Lokhttp3/internal/concurrent/TaskQueue;

    iget-object v0, p0, Lokhttp3/internal/connection/RealConnectionPool;->cleanupTask:Lokhttp3/internal/connection/RealConnectionPool$cleanupTask$1;

    move-object v2, v0

    check-cast v2, Lokhttp3/internal/concurrent/Task;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-wide/16 v3, 0x0

    invoke-static/range {v1 .. v6}, Lokhttp3/internal/concurrent/TaskQueue;->schedule$default(Lokhttp3/internal/concurrent/TaskQueue;Lokhttp3/internal/concurrent/Task;JILjava/lang/Object;)V

    .line 99
    return-void
.end method
