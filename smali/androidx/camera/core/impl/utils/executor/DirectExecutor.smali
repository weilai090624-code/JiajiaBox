.class final Landroidx/camera/core/impl/utils/executor/DirectExecutor;
.super Ljava/lang/Object;
.source "DirectExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field private static volatile sDirectExecutor:Landroidx/camera/core/impl/utils/executor/DirectExecutor;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getInstance()Ljava/util/concurrent/Executor;
    .registers 2

    .line 29
    sget-object v0, Landroidx/camera/core/impl/utils/executor/DirectExecutor;->sDirectExecutor:Landroidx/camera/core/impl/utils/executor/DirectExecutor;

    if-eqz v0, :cond_7

    .line 30
    sget-object v0, Landroidx/camera/core/impl/utils/executor/DirectExecutor;->sDirectExecutor:Landroidx/camera/core/impl/utils/executor/DirectExecutor;

    return-object v0

    .line 32
    :cond_7
    const-class v0, Landroidx/camera/core/impl/utils/executor/DirectExecutor;

    monitor-enter v0

    .line 33
    :try_start_a
    sget-object v1, Landroidx/camera/core/impl/utils/executor/DirectExecutor;->sDirectExecutor:Landroidx/camera/core/impl/utils/executor/DirectExecutor;

    if-nez v1, :cond_15

    .line 34
    new-instance v1, Landroidx/camera/core/impl/utils/executor/DirectExecutor;

    invoke-direct {v1}, Landroidx/camera/core/impl/utils/executor/DirectExecutor;-><init>()V

    sput-object v1, Landroidx/camera/core/impl/utils/executor/DirectExecutor;->sDirectExecutor:Landroidx/camera/core/impl/utils/executor/DirectExecutor;

    .line 36
    :cond_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_19

    .line 38
    sget-object v0, Landroidx/camera/core/impl/utils/executor/DirectExecutor;->sDirectExecutor:Landroidx/camera/core/impl/utils/executor/DirectExecutor;

    return-object v0

    .line 36
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
    .registers 2
    .param p1, "command"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "command"
        }
    .end annotation

    .line 43
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 44
    return-void
.end method
