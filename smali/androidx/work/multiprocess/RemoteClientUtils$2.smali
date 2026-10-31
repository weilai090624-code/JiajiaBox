.class Landroidx/work/multiprocess/RemoteClientUtils$2;
.super Ljava/lang/Object;
.source "RemoteClientUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/multiprocess/RemoteClientUtils;->map(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/arch/core/util/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$input:Lcom/google/common/util/concurrent/ListenableFuture;

.field final synthetic val$output:Landroidx/work/impl/utils/futures/SettableFuture;

.field final synthetic val$transformation:Landroidx/arch/core/util/Function;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/arch/core/util/Function;Landroidx/work/impl/utils/futures/SettableFuture;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 60
    iput-object p1, p0, Landroidx/work/multiprocess/RemoteClientUtils$2;->val$input:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p2, p0, Landroidx/work/multiprocess/RemoteClientUtils$2;->val$transformation:Landroidx/arch/core/util/Function;

    iput-object p3, p0, Landroidx/work/multiprocess/RemoteClientUtils$2;->val$output:Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 64
    :try_start_0
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteClientUtils$2;->val$input:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    .line 65
    .local v0, "in":Ljava/lang/Object;, "TI;"
    iget-object v1, p0, Landroidx/work/multiprocess/RemoteClientUtils$2;->val$transformation:Landroidx/arch/core/util/Function;

    invoke-interface {v1, v0}, Landroidx/arch/core/util/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 66
    .local v1, "out":Ljava/lang/Object;, "TO;"
    iget-object v2, p0, Landroidx/work/multiprocess/RemoteClientUtils$2;->val$output:Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-virtual {v2, v1}, Landroidx/work/impl/utils/futures/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_13

    .line 71
    nop

    .end local v0    # "in":Ljava/lang/Object;, "TI;"
    .end local v1    # "out":Ljava/lang/Object;, "TO;"
    goto :goto_23

    .line 67
    :catchall_13
    move-exception v0

    .line 68
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 69
    .local v1, "cause":Ljava/lang/Throwable;
    if-nez v1, :cond_1c

    move-object v2, v0

    goto :goto_1d

    :cond_1c
    move-object v2, v1

    :goto_1d
    move-object v1, v2

    .line 70
    iget-object v2, p0, Landroidx/work/multiprocess/RemoteClientUtils$2;->val$output:Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-virtual {v2, v1}, Landroidx/work/impl/utils/futures/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 72
    .end local v0    # "throwable":Ljava/lang/Throwable;
    .end local v1    # "cause":Ljava/lang/Throwable;
    :goto_23
    return-void
.end method
