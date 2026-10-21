.class final Lcom/google/common/util/concurrent/Futures$InCompletionOrderFuture;
.super Lcom/google/common/util/concurrent/AbstractFuture;
.source "Futures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InCompletionOrderFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/AbstractFuture<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private state:Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/Futures$InCompletionOrderState<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/Futures$InCompletionOrderState<",
            "TT;>;)V"
        }
    .end annotation

    .line 923
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$InCompletionOrderFuture;, "Lcom/google/common/util/concurrent/Futures$InCompletionOrderFuture<TT;>;"
    .local p1, "state":Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;, "Lcom/google/common/util/concurrent/Futures$InCompletionOrderState<TT;>;"
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture;-><init>()V

    .line 924
    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$InCompletionOrderFuture;->state:Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;

    .line 925
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;Lcom/google/common/util/concurrent/Futures$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;
    .param p2, "x1"    # Lcom/google/common/util/concurrent/Futures$1;

    .line 919
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$InCompletionOrderFuture;, "Lcom/google/common/util/concurrent/Futures$InCompletionOrderFuture<TT;>;"
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Futures$InCompletionOrderFuture;-><init>(Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;)V

    return-void
.end method


# virtual methods
.method protected afterDone()V
    .registers 2

    .line 947
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$InCompletionOrderFuture;, "Lcom/google/common/util/concurrent/Futures$InCompletionOrderFuture<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/util/concurrent/Futures$InCompletionOrderFuture;->state:Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;

    .line 948
    return-void
.end method

.method public cancel(Z)Z
    .registers 4
    .param p1, "interruptIfRunning"    # Z

    .line 929
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$InCompletionOrderFuture;, "Lcom/google/common/util/concurrent/Futures$InCompletionOrderFuture<TT;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$InCompletionOrderFuture;->state:Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;

    .line 930
    .local v0, "localState":Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;, "Lcom/google/common/util/concurrent/Futures$InCompletionOrderState<TT;>;"
    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->cancel(Z)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 939
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;

    # invokes: Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;->recordOutputCancellation(Z)V
    invoke-static {v1, p1}, Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;->access$400(Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;Z)V

    .line 940
    const/4 v1, 0x1

    return v1

    .line 942
    :cond_13
    const/4 v1, 0x0

    return v1
.end method

.method protected pendingToString()Ljava/lang/String;
    .registers 6
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 953
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$InCompletionOrderFuture;, "Lcom/google/common/util/concurrent/Futures$InCompletionOrderFuture<TT;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$InCompletionOrderFuture;->state:Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;

    .line 954
    .local v0, "localState":Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;, "Lcom/google/common/util/concurrent/Futures$InCompletionOrderState<TT;>;"
    if-eqz v0, :cond_38

    .line 957
    nop

    .line 958
    # getter for: Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;->inputFutures:[Lcom/google/common/util/concurrent/ListenableFuture;
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;->access$500(Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;)[Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    array-length v1, v1

    .line 960
    # getter for: Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;->incompleteOutputCount:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;->access$600(Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x31

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "inputCount=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "], remaining=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 957
    return-object v1

    .line 963
    :cond_38
    const/4 v1, 0x0

    return-object v1
.end method
