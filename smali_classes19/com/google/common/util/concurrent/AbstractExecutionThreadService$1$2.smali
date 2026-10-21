.class Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$2;
.super Ljava/lang/Object;
.source "AbstractExecutionThreadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->doStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;)V
    .registers 2
    .param p1, "this$1"    # Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    .line 56
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$2;->this$1:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$2;->this$1:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->this$0:Lcom/google/common/util/concurrent/AbstractExecutionThreadService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->startUp()V

    .line 61
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$2;->this$1:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->notifyStarted()V

    .line 64
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$2;->this$1:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->isRunning()Z

    move-result v0
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_44

    if-eqz v0, :cond_37

    .line 66
    :try_start_14
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$2;->this$1:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->this$0:Lcom/google/common/util/concurrent/AbstractExecutionThreadService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->run()V
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_1c

    .line 81
    goto :goto_37

    .line 67
    :catchall_1c
    move-exception v0

    .line 69
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_1d
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$2;->this$1:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    iget-object v1, v1, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->this$0:Lcom/google/common/util/concurrent/AbstractExecutionThreadService;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->shutDown()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_24} :catch_25
    .catchall {:try_start_1d .. :try_end_24} :catchall_44

    .line 78
    goto :goto_31

    .line 70
    :catch_25
    move-exception v1

    .line 74
    .local v1, "ignored":Ljava/lang/Exception;
    :try_start_26
    # getter for: Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->logger:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->access$000()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Error while attempting to shut down the service after failure."

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    .end local v1    # "ignored":Ljava/lang/Exception;
    :goto_31
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$2;->this$1:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->notifyFailed(Ljava/lang/Throwable;)V

    .line 80
    return-void

    .line 84
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_37
    :goto_37
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$2;->this$1:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->this$0:Lcom/google/common/util/concurrent/AbstractExecutionThreadService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->shutDown()V

    .line 85
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$2;->this$1:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->notifyStopped()V
    :try_end_43
    .catchall {:try_start_26 .. :try_end_43} :catchall_44

    .line 88
    goto :goto_4a

    .line 86
    :catchall_44
    move-exception v0

    .line 87
    .restart local v0    # "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$2;->this$1:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->notifyFailed(Ljava/lang/Throwable;)V

    .line 89
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_4a
    return-void
.end method
