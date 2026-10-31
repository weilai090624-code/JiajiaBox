.class final Landroidx/camera/core/impl/utils/executor/MainThreadExecutor;
.super Ljava/lang/Object;
.source "MainThreadExecutor.java"


# static fields
.field private static volatile sInstance:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method static getInstance()Ljava/util/concurrent/ScheduledExecutorService;
    .registers 4

    .line 39
    sget-object v0, Landroidx/camera/core/impl/utils/executor/MainThreadExecutor;->sInstance:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_7

    .line 40
    sget-object v0, Landroidx/camera/core/impl/utils/executor/MainThreadExecutor;->sInstance:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0

    .line 42
    :cond_7
    const-class v0, Landroidx/camera/core/impl/utils/executor/MainThreadExecutor;

    monitor-enter v0

    .line 43
    :try_start_a
    sget-object v1, Landroidx/camera/core/impl/utils/executor/MainThreadExecutor;->sInstance:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v1, :cond_1e

    .line 44
    new-instance v1, Landroidx/camera/core/impl/utils/executor/HandlerScheduledExecutorService;

    new-instance v2, Landroid/os/Handler;

    .line 45
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, v2}, Landroidx/camera/core/impl/utils/executor/HandlerScheduledExecutorService;-><init>(Landroid/os/Handler;)V

    sput-object v1, Landroidx/camera/core/impl/utils/executor/MainThreadExecutor;->sInstance:Ljava/util/concurrent/ScheduledExecutorService;

    .line 47
    :cond_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_a .. :try_end_1f} :catchall_22

    .line 49
    sget-object v0, Landroidx/camera/core/impl/utils/executor/MainThreadExecutor;->sInstance:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0

    .line 47
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v1
.end method
