.class final Landroidx/camera/core/impl/utils/executor/IoExecutor;
.super Ljava/lang/Object;
.source "IoExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field private static volatile sExecutor:Ljava/util/concurrent/Executor;


# instance fields
.field private final mIoService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method constructor <init>()V
    .registers 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroidx/camera/core/impl/utils/executor/IoExecutor$1;

    invoke-direct {v0, p0}, Landroidx/camera/core/impl/utils/executor/IoExecutor$1;-><init>(Landroidx/camera/core/impl/utils/executor/IoExecutor;)V

    .line 37
    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/core/impl/utils/executor/IoExecutor;->mIoService:Ljava/util/concurrent/ExecutorService;

    .line 36
    return-void
.end method

.method static getInstance()Ljava/util/concurrent/Executor;
    .registers 2

    .line 58
    sget-object v0, Landroidx/camera/core/impl/utils/executor/IoExecutor;->sExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_7

    .line 59
    sget-object v0, Landroidx/camera/core/impl/utils/executor/IoExecutor;->sExecutor:Ljava/util/concurrent/Executor;

    return-object v0

    .line 61
    :cond_7
    const-class v0, Landroidx/camera/core/impl/utils/executor/IoExecutor;

    monitor-enter v0

    .line 62
    :try_start_a
    sget-object v1, Landroidx/camera/core/impl/utils/executor/IoExecutor;->sExecutor:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_15

    .line 63
    new-instance v1, Landroidx/camera/core/impl/utils/executor/IoExecutor;

    invoke-direct {v1}, Landroidx/camera/core/impl/utils/executor/IoExecutor;-><init>()V

    sput-object v1, Landroidx/camera/core/impl/utils/executor/IoExecutor;->sExecutor:Ljava/util/concurrent/Executor;

    .line 65
    :cond_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_19

    .line 67
    sget-object v0, Landroidx/camera/core/impl/utils/executor/IoExecutor;->sExecutor:Ljava/util/concurrent/Executor;

    return-object v0

    .line 65
    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v1
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "command"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "command"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Landroidx/camera/core/impl/utils/executor/IoExecutor;->mIoService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 73
    return-void
.end method
