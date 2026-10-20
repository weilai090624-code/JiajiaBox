.class public final Landroidx/work/multiprocess/RemoteWorkManagerInfo;
.super Ljava/lang/Object;
.source "RemoteWorkManagerInfo.java"


# static fields
.field private static volatile sInstance:Landroidx/work/multiprocess/RemoteWorkManagerInfo;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private final mConfiguration:Landroidx/work/Configuration;

.field private final mForegroundUpdater:Landroidx/work/ForegroundUpdater;

.field private final mProgressUpdater:Landroidx/work/ProgressUpdater;

.field private final mTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/work/multiprocess/RemoteWorkManagerInfo;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-static {}, Landroidx/work/impl/WorkManagerImpl;->getInstance()Landroidx/work/impl/WorkManagerImpl;

    move-result-object v0

    .line 81
    .local v0, "instance":Landroidx/work/impl/WorkManagerImpl;
    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0}, Landroidx/work/impl/WorkManagerImpl;->getConfiguration()Landroidx/work/Configuration;

    move-result-object v1

    iput-object v1, p0, Landroidx/work/multiprocess/RemoteWorkManagerInfo;->mConfiguration:Landroidx/work/Configuration;

    .line 84
    invoke-virtual {v0}, Landroidx/work/impl/WorkManagerImpl;->getWorkTaskExecutor()Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    move-result-object v1

    iput-object v1, p0, Landroidx/work/multiprocess/RemoteWorkManagerInfo;->mTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    goto :goto_1

    .line 86
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 87
    .local v1, "appContext":Landroid/content/Context;
    instance-of v2, v1, Landroidx/work/Configuration$Provider;

    if-eqz v2, :cond_1

    .line 88
    move-object v2, v1

    check-cast v2, Landroidx/work/Configuration$Provider;

    .line 89
    .local v2, "provider":Landroidx/work/Configuration$Provider;
    invoke-interface {v2}, Landroidx/work/Configuration$Provider;->getWorkManagerConfiguration()Landroidx/work/Configuration;

    move-result-object v3

    iput-object v3, p0, Landroidx/work/multiprocess/RemoteWorkManagerInfo;->mConfiguration:Landroidx/work/Configuration;

    .line 90
    .end local v2    # "provider":Landroidx/work/Configuration$Provider;
    goto :goto_0

    .line 92
    :cond_1
    new-instance v2, Landroidx/work/Configuration$Builder;

    invoke-direct {v2}, Landroidx/work/Configuration$Builder;-><init>()V

    .line 93
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/work/Configuration$Builder;->setDefaultProcessName(Ljava/lang/String;)Landroidx/work/Configuration$Builder;

    move-result-object v2

    .line 94
    invoke-virtual {v2}, Landroidx/work/Configuration$Builder;->build()Landroidx/work/Configuration;

    move-result-object v2

    iput-object v2, p0, Landroidx/work/multiprocess/RemoteWorkManagerInfo;->mConfiguration:Landroidx/work/Configuration;

    .line 96
    :goto_0
    new-instance v2, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    iget-object v3, p0, Landroidx/work/multiprocess/RemoteWorkManagerInfo;->mConfiguration:Landroidx/work/Configuration;

    invoke-virtual {v3}, Landroidx/work/Configuration;->getTaskExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v2, p0, Landroidx/work/multiprocess/RemoteWorkManagerInfo;->mTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 98
    .end local v1    # "appContext":Landroid/content/Context;
    :goto_1
    new-instance v1, Landroidx/work/multiprocess/RemoteProgressUpdater;

    invoke-direct {v1}, Landroidx/work/multiprocess/RemoteProgressUpdater;-><init>()V

    iput-object v1, p0, Landroidx/work/multiprocess/RemoteWorkManagerInfo;->mProgressUpdater:Landroidx/work/ProgressUpdater;

    .line 99
    new-instance v1, Landroidx/work/multiprocess/RemoteForegroundUpdater;

    invoke-direct {v1}, Landroidx/work/multiprocess/RemoteForegroundUpdater;-><init>()V

    iput-object v1, p0, Landroidx/work/multiprocess/RemoteWorkManagerInfo;->mForegroundUpdater:Landroidx/work/ForegroundUpdater;

    .line 100
    return-void
.end method

.method public static clearInstance()V
    .locals 2

    .line 73
    sget-object v0, Landroidx/work/multiprocess/RemoteWorkManagerInfo;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Landroidx/work/multiprocess/RemoteWorkManagerInfo;->sInstance:Landroidx/work/multiprocess/RemoteWorkManagerInfo;

    .line 75
    monitor-exit v0

    .line 76
    return-void

    .line 75
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getInstance(Landroid/content/Context;)Landroidx/work/multiprocess/RemoteWorkManagerInfo;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 58
    sget-object v0, Landroidx/work/multiprocess/RemoteWorkManagerInfo;->sInstance:Landroidx/work/multiprocess/RemoteWorkManagerInfo;

    if-nez v0, :cond_1

    .line 59
    sget-object v0, Landroidx/work/multiprocess/RemoteWorkManagerInfo;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 60
    :try_start_0
    sget-object v1, Landroidx/work/multiprocess/RemoteWorkManagerInfo;->sInstance:Landroidx/work/multiprocess/RemoteWorkManagerInfo;

    if-nez v1, :cond_0

    .line 61
    new-instance v1, Landroidx/work/multiprocess/RemoteWorkManagerInfo;

    invoke-direct {v1, p0}, Landroidx/work/multiprocess/RemoteWorkManagerInfo;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroidx/work/multiprocess/RemoteWorkManagerInfo;->sInstance:Landroidx/work/multiprocess/RemoteWorkManagerInfo;

    .line 63
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 65
    :cond_1
    :goto_0
    sget-object v0, Landroidx/work/multiprocess/RemoteWorkManagerInfo;->sInstance:Landroidx/work/multiprocess/RemoteWorkManagerInfo;

    return-object v0
.end method


# virtual methods
.method public getConfiguration()Landroidx/work/Configuration;
    .locals 1

    .line 108
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerInfo;->mConfiguration:Landroidx/work/Configuration;

    return-object v0
.end method

.method public getForegroundUpdater()Landroidx/work/ForegroundUpdater;
    .locals 1

    .line 135
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerInfo;->mForegroundUpdater:Landroidx/work/ForegroundUpdater;

    return-object v0
.end method

.method public getProgressUpdater()Landroidx/work/ProgressUpdater;
    .locals 1

    .line 126
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerInfo;->mProgressUpdater:Landroidx/work/ProgressUpdater;

    return-object v0
.end method

.method public getTaskExecutor()Landroidx/work/impl/utils/taskexecutor/TaskExecutor;
    .locals 1

    .line 117
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerInfo;->mTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    return-object v0
.end method
