.class final Landroidx/camera/core/impl/utils/executor/HighPriorityExecutor;
.super Ljava/lang/Object;
.source "HighPriorityExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field private static volatile sExecutor:Ljava/util/concurrent/Executor;


# instance fields
.field private final mHighPriorityService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroidx/camera/core/impl/utils/executor/HighPriorityExecutor$1;

    invoke-direct {v0, p0}, Landroidx/camera/core/impl/utils/executor/HighPriorityExecutor$1;-><init>(Landroidx/camera/core/impl/utils/executor/HighPriorityExecutor;)V

    .line 34
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/core/impl/utils/executor/HighPriorityExecutor;->mHighPriorityService:Ljava/util/concurrent/ExecutorService;

    .line 33
    return-void
.end method

.method static getInstance()Ljava/util/concurrent/Executor;
    .locals 2

    .line 50
    sget-object v0, Landroidx/camera/core/impl/utils/executor/HighPriorityExecutor;->sExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    .line 51
    sget-object v0, Landroidx/camera/core/impl/utils/executor/HighPriorityExecutor;->sExecutor:Ljava/util/concurrent/Executor;

    return-object v0

    .line 53
    :cond_0
    const-class v0, Landroidx/camera/core/impl/utils/executor/HighPriorityExecutor;

    monitor-enter v0

    .line 54
    :try_start_0
    sget-object v1, Landroidx/camera/core/impl/utils/executor/HighPriorityExecutor;->sExecutor:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_1

    .line 55
    new-instance v1, Landroidx/camera/core/impl/utils/executor/HighPriorityExecutor;

    invoke-direct {v1}, Landroidx/camera/core/impl/utils/executor/HighPriorityExecutor;-><init>()V

    sput-object v1, Landroidx/camera/core/impl/utils/executor/HighPriorityExecutor;->sExecutor:Ljava/util/concurrent/Executor;

    .line 57
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    sget-object v0, Landroidx/camera/core/impl/utils/executor/HighPriorityExecutor;->sExecutor:Ljava/util/concurrent/Executor;

    return-object v0

    .line 57
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "command"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Landroidx/camera/core/impl/utils/executor/HighPriorityExecutor;->mHighPriorityService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 65
    return-void
.end method
