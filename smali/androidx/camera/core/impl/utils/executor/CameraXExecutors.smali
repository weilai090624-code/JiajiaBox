.class public final Landroidx/camera/core/impl/utils/executor/CameraXExecutors;
.super Ljava/lang/Object;
.source "CameraXExecutors.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static directExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 51
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/DirectExecutor;->getInstance()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method public static highPriorityExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 102
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/HighPriorityExecutor;->getInstance()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method public static ioExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 45
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/IoExecutor;->getInstance()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method public static isSequentialExecutor(Ljava/util/concurrent/Executor;)Z
    .locals 1
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "executor"
        }
    .end annotation

    .line 73
    instance-of v0, p0, Landroidx/camera/core/impl/utils/executor/SequentialExecutor;

    return v0
.end method

.method public static mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 39
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/MainThreadExecutor;->getInstance()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static myLooperExecutor()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 84
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/HandlerScheduledExecutorService;->currentThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static newHandlerExecutor(Landroid/os/Handler;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1
    .param p0, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handler"
        }
    .end annotation

    .line 94
    new-instance v0, Landroidx/camera/core/impl/utils/executor/HandlerScheduledExecutorService;

    invoke-direct {v0, p0}, Landroidx/camera/core/impl/utils/executor/HandlerScheduledExecutorService;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public static newSequentialExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "delegate"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delegate"
        }
    .end annotation

    .line 65
    new-instance v0, Landroidx/camera/core/impl/utils/executor/SequentialExecutor;

    invoke-direct {v0, p0}, Landroidx/camera/core/impl/utils/executor/SequentialExecutor;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method
