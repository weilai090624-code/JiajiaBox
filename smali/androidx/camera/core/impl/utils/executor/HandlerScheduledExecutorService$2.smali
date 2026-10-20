.class Landroidx/camera/core/impl/utils/executor/HandlerScheduledExecutorService$2;
.super Ljava/lang/Object;
.source "HandlerScheduledExecutorService.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/core/impl/utils/executor/HandlerScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/core/impl/utils/executor/HandlerScheduledExecutorService;

.field final synthetic val$command:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroidx/camera/core/impl/utils/executor/HandlerScheduledExecutorService;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/camera/core/impl/utils/executor/HandlerScheduledExecutorService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$command"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Landroidx/camera/core/impl/utils/executor/HandlerScheduledExecutorService$2;->this$0:Landroidx/camera/core/impl/utils/executor/HandlerScheduledExecutorService;

    iput-object p2, p0, Landroidx/camera/core/impl/utils/executor/HandlerScheduledExecutorService$2;->val$command:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 95
    invoke-virtual {p0}, Landroidx/camera/core/impl/utils/executor/HandlerScheduledExecutorService$2;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 1

    .line 98
    iget-object v0, p0, Landroidx/camera/core/impl/utils/executor/HandlerScheduledExecutorService$2;->val$command:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 99
    const/4 v0, 0x0

    return-object v0
.end method
