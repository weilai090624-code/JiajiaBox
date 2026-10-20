.class public Landroidx/work/multiprocess/RemoteWorkContinuationImpl;
.super Landroidx/work/multiprocess/RemoteWorkContinuation;
.source "RemoteWorkContinuationImpl.java"


# instance fields
.field private final mClient:Landroidx/work/multiprocess/RemoteWorkManagerClient;

.field private final mContinuation:Landroidx/work/WorkContinuation;


# direct methods
.method public constructor <init>(Landroidx/work/multiprocess/RemoteWorkManagerClient;Landroidx/work/WorkContinuation;)V
    .locals 0
    .param p1, "client"    # Landroidx/work/multiprocess/RemoteWorkManagerClient;
    .param p2, "continuation"    # Landroidx/work/WorkContinuation;

    .line 43
    invoke-direct {p0}, Landroidx/work/multiprocess/RemoteWorkContinuation;-><init>()V

    .line 44
    iput-object p1, p0, Landroidx/work/multiprocess/RemoteWorkContinuationImpl;->mClient:Landroidx/work/multiprocess/RemoteWorkManagerClient;

    .line 45
    iput-object p2, p0, Landroidx/work/multiprocess/RemoteWorkContinuationImpl;->mContinuation:Landroidx/work/WorkContinuation;

    .line 46
    return-void
.end method


# virtual methods
.method protected combineInternal(Ljava/util/List;)Landroidx/work/multiprocess/RemoteWorkContinuation;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/work/multiprocess/RemoteWorkContinuation;",
            ">;)",
            "Landroidx/work/multiprocess/RemoteWorkContinuation;"
        }
    .end annotation

    .line 67
    .local p1, "continuations":Ljava/util/List;, "Ljava/util/List<Landroidx/work/multiprocess/RemoteWorkContinuation;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 68
    .local v0, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 69
    .local v1, "workContinuations":Ljava/util/List;, "Ljava/util/List<Landroidx/work/WorkContinuation;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/work/multiprocess/RemoteWorkContinuation;

    .line 70
    .local v3, "continuation":Landroidx/work/multiprocess/RemoteWorkContinuation;
    move-object v4, v3

    check-cast v4, Landroidx/work/multiprocess/RemoteWorkContinuationImpl;

    iget-object v4, v4, Landroidx/work/multiprocess/RemoteWorkContinuationImpl;->mContinuation:Landroidx/work/WorkContinuation;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    .end local v3    # "continuation":Landroidx/work/multiprocess/RemoteWorkContinuation;
    goto :goto_0

    .line 72
    :cond_0
    invoke-static {v1}, Landroidx/work/WorkContinuation;->combine(Ljava/util/List;)Landroidx/work/WorkContinuation;

    move-result-object v2

    .line 73
    .local v2, "result":Landroidx/work/WorkContinuation;
    new-instance v3, Landroidx/work/multiprocess/RemoteWorkContinuationImpl;

    iget-object v4, p0, Landroidx/work/multiprocess/RemoteWorkContinuationImpl;->mClient:Landroidx/work/multiprocess/RemoteWorkManagerClient;

    invoke-direct {v3, v4, v2}, Landroidx/work/multiprocess/RemoteWorkContinuationImpl;-><init>(Landroidx/work/multiprocess/RemoteWorkManagerClient;Landroidx/work/WorkContinuation;)V

    return-object v3
.end method

.method public enqueue()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkContinuationImpl;->mClient:Landroidx/work/multiprocess/RemoteWorkManagerClient;

    iget-object v1, p0, Landroidx/work/multiprocess/RemoteWorkContinuationImpl;->mContinuation:Landroidx/work/WorkContinuation;

    invoke-virtual {v0, v1}, Landroidx/work/multiprocess/RemoteWorkManagerClient;->enqueue(Landroidx/work/WorkContinuation;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public then(Ljava/util/List;)Landroidx/work/multiprocess/RemoteWorkContinuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/work/OneTimeWorkRequest;",
            ">;)",
            "Landroidx/work/multiprocess/RemoteWorkContinuation;"
        }
    .end annotation

    .line 52
    .local p1, "work":Ljava/util/List;, "Ljava/util/List<Landroidx/work/OneTimeWorkRequest;>;"
    new-instance v0, Landroidx/work/multiprocess/RemoteWorkContinuationImpl;

    iget-object v1, p0, Landroidx/work/multiprocess/RemoteWorkContinuationImpl;->mClient:Landroidx/work/multiprocess/RemoteWorkManagerClient;

    iget-object v2, p0, Landroidx/work/multiprocess/RemoteWorkContinuationImpl;->mContinuation:Landroidx/work/WorkContinuation;

    invoke-virtual {v2, p1}, Landroidx/work/WorkContinuation;->then(Ljava/util/List;)Landroidx/work/WorkContinuation;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/work/multiprocess/RemoteWorkContinuationImpl;-><init>(Landroidx/work/multiprocess/RemoteWorkManagerClient;Landroidx/work/WorkContinuation;)V

    return-object v0
.end method
