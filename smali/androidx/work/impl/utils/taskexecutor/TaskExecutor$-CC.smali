.class public final synthetic Landroidx/work/impl/utils/taskexecutor/TaskExecutor$-CC;
.super Ljava/lang/Object;
.source "TaskExecutor.java"


# direct methods
.method public static $default$executeOnTaskThread(Landroidx/work/impl/utils/taskexecutor/TaskExecutor;Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "_this"    # Landroidx/work/impl/utils/taskexecutor/TaskExecutor;
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "_this",
            "runnable"
        }
    .end annotation

    .line 44
    invoke-interface {p0}, Landroidx/work/impl/utils/taskexecutor/TaskExecutor;->getSerialTaskExecutor()Landroidx/work/impl/utils/taskexecutor/SerialExecutor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/work/impl/utils/taskexecutor/SerialExecutor;->execute(Ljava/lang/Runnable;)V

    .line 45
    return-void
.end method
