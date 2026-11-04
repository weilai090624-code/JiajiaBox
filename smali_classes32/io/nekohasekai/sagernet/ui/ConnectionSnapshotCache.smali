.class final Lio/nekohasekai/sagernet/ui/ConnectionSnapshotCache;
.super Ljava/lang/Object;
.source "ConnectionSnapshotCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/ui/ConnectionSnapshotCache$Snapshot;
    }
.end annotation


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static final TTL_MS:J = 0x7d0L

.field private static final WAIT_MS:J = 0xbb8L

.field private static cached:Lio/nekohasekai/sagernet/ui/ConnectionSnapshotCache$Snapshot;

.field private static cachedAt:J

.field private static inFlight:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "Lio/nekohasekai/sagernet/ui/ConnectionSnapshotCache$Snapshot;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/nekohasekai/sagernet/ui/ConnectionSnapshotCache;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$load$0(Landroid/content/Context;)Lio/nekohasekai/sagernet/ui/ConnectionSnapshotCache$Snapshot;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 63
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/ConnectionSnapshotCache;->read(Landroid/content/Context;)Lio/nekohasekai/sagernet/ui/ConnectionSnapshotCache$Snapshot;

    move-result-object p0

    return-object p0
.end method

.method static load(Landroid/content/Context;)Lio/nekohasekai/sagernet/ui/ConnectionSnapshotCache$Snapshot;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 55
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 58
    sget-object v2, Lio/nekohasekai/sagernet/ui/ConnectionSnapshotCache;->LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 59
    :try_start_7
    sget-object v3, Lio/nekohasekai/sagernet/ui/ConnectionSnapshotCache;->cached:Lio/nekohasekai/sagernet/ui/ConnectionSnapshotCache$Snapshot;

    if-eqz v3, :cond_16

    sget-wide v4, Lio/nekohasekai/sagernet/ui/ConnectionSnapshotCache;->cachedAt:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x7d0

    cmp-long v6, v0, v4

    if-gez v6, :cond_16

    monitor-exit v2

    return-object v3

    .line 60
    :cond_16
    sget-object v0, Lio/nekohasekai/sagernet/ui/ConnectionSnapshotCache;->inFlight:Ljava/util/concurrent/FutureTask;

    if-nez v0, :cond_2c

    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 63
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lio/nekohasekai/sagernet/ui/ConnectionSnapshotCache$0;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/ConnectionSnapshotCache$0;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 64
    sput-object v0, Lio/nekohasekai/sagernet/ui/ConnectionSnapshotCache;->inFlight:Ljava/util/concurrent/FutureTask;

    const/4 p0, 0x1

    goto :goto_2d

    :cond_2c
    const/4 p0, 0x0

    .line 67
    :goto_2d
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_7 .. :try_end_2e} :catchall_82

    if-eqz p0, :cond_59

    .line 69
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->run()V

    const/4 p0, 0x0

    .line 71
    :try_start_34
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/ui/ConnectionSnapshotCache$Snapshot;

    .line 72
    monitor-enter v2
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_4a

    :try_start_3b
    sput-object v0, Lio/nekohasekai/sagernet/ui/ConnectionSnapshotCache;->cached:Lio/nekohasekai/sagernet/ui/ConnectionSnapshotCache$Snapshot;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sput-wide v3, Lio/nekohasekai/sagernet/ui/ConnectionSnapshotCache;->cachedAt:J

    sput-object p0, Lio/nekohasekai/sagernet/ui/ConnectionSnapshotCache;->inFlight:Ljava/util/concurrent/FutureTask;

    monitor-exit v2

    return-object v0

    :catchall_47
    move-exception v0

    monitor-exit v2
    :try_end_49
    .catchall {:try_start_3b .. :try_end_49} :catchall_47

    :try_start_49
    throw v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_4a

    :catchall_4a
    move-exception v0

    .line 75
    sget-object v1, Lio/nekohasekai/sagernet/ui/ConnectionSnapshotCache;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4e
    sput-object p0, Lio/nekohasekai/sagernet/ui/ConnectionSnapshotCache;->inFlight:Ljava/util/concurrent/FutureTask;

    monitor-exit v1
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_56

    .line 76
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/ConnectionSnapshotCache;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    :catchall_56
    move-exception p0

    .line 75
    :try_start_57
    monitor-exit v1
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw p0

    .line 80
    :cond_59
    :try_start_59
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/nekohasekai/sagernet/ui/ConnectionSnapshotCache$Snapshot;
    :try_end_63
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_59 .. :try_end_63} :catch_7a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_59 .. :try_end_63} :catch_74
    .catch Ljava/lang/InterruptedException; {:try_start_59 .. :try_end_63} :catch_64

    return-object p0

    :catch_64
    move-exception p0

    .line 86
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 87
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u8bfb\u53d6\u8fde\u63a5\u4fe1\u606f\u88ab\u4e2d\u65ad"

    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_74
    move-exception p0

    .line 84
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/ConnectionSnapshotCache;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    .line 82
    :catch_7a
    new-instance p0, Ljava/io/IOException;

    const-string v0, "\u8bfb\u53d6\u8fde\u63a5\u4fe1\u606f\u8d85\u65f6"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_82
    move-exception p0

    .line 67
    :try_start_83
    monitor-exit v2
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_82

    throw p0
.end method

.method private static read(Landroid/content/Context;)Lio/nekohasekai/sagernet/ui/ConnectionSnapshotCache$Snapshot;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 92
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/ConnectionInspector;->endpoint(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p0

    .line 93
    const-string v0, "/connections"

    invoke-static {p0, v0}, Lio/nekohasekai/sagernet/ui/ConnectionInspector;->request(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 94
    new-instance v1, Lio/nekohasekai/sagernet/ui/ConnectionSnapshotCache$Snapshot;

    const-string v2, "types"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lio/nekohasekai/sagernet/ui/ConnectionSnapshotCache$Snapshot;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-object v1
.end method

.method private static unwrap(Ljava/lang/Throwable;)Ljava/lang/Exception;
    .registers 2

    .line 98
    instance-of v0, p0, Ljava/util/concurrent/ExecutionException;

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 99
    :cond_e
    instance-of v0, p0, Ljava/lang/Exception;

    if-eqz v0, :cond_15

    check-cast p0, Ljava/lang/Exception;

    return-object p0

    .line 100
    :cond_15
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method
