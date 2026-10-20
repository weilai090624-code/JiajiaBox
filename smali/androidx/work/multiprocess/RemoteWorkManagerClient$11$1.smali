.class Landroidx/work/multiprocess/RemoteWorkManagerClient$11$1;
.super Ljava/lang/Object;
.source "RemoteWorkManagerClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/multiprocess/RemoteWorkManagerClient$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/work/multiprocess/RemoteWorkManagerClient$11;

.field final synthetic val$iWorkManager:Landroidx/work/multiprocess/IWorkManagerImpl;


# direct methods
.method constructor <init>(Landroidx/work/multiprocess/RemoteWorkManagerClient$11;Landroidx/work/multiprocess/IWorkManagerImpl;)V
    .locals 0
    .param p1, "this$1"    # Landroidx/work/multiprocess/RemoteWorkManagerClient$11;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 405
    iput-object p1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$11$1;->this$1:Landroidx/work/multiprocess/RemoteWorkManagerClient$11;

    iput-object p2, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$11$1;->val$iWorkManager:Landroidx/work/multiprocess/IWorkManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 409
    :try_start_0
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$11$1;->this$1:Landroidx/work/multiprocess/RemoteWorkManagerClient$11;

    iget-object v0, v0, Landroidx/work/multiprocess/RemoteWorkManagerClient$11;->val$dispatcher:Landroidx/work/multiprocess/RemoteDispatcher;

    iget-object v1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$11$1;->val$iWorkManager:Landroidx/work/multiprocess/IWorkManagerImpl;

    iget-object v2, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$11$1;->this$1:Landroidx/work/multiprocess/RemoteWorkManagerClient$11;

    iget-object v2, v2, Landroidx/work/multiprocess/RemoteWorkManagerClient$11;->val$callback:Landroidx/work/multiprocess/RemoteCallback;

    invoke-interface {v0, v1, v2}, Landroidx/work/multiprocess/RemoteDispatcher;->execute(Ljava/lang/Object;Landroidx/work/multiprocess/IWorkManagerImplCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    goto :goto_0

    .line 410
    :catchall_0
    move-exception v0

    .line 411
    .local v0, "innerThrowable":Ljava/lang/Throwable;
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v1

    sget-object v2, Landroidx/work/multiprocess/RemoteWorkManagerClient;->TAG:Ljava/lang/String;

    const-string v3, "Unable to execute"

    invoke-virtual {v1, v2, v3, v0}, Landroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 412
    iget-object v1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$11$1;->this$1:Landroidx/work/multiprocess/RemoteWorkManagerClient$11;

    iget-object v1, v1, Landroidx/work/multiprocess/RemoteWorkManagerClient$11;->val$callback:Landroidx/work/multiprocess/RemoteCallback;

    invoke-static {v1, v0}, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;->reportFailure(Landroidx/work/multiprocess/IWorkManagerImplCallback;Ljava/lang/Throwable;)V

    .line 414
    .end local v0    # "innerThrowable":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
