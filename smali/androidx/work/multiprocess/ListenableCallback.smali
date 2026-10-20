.class public abstract Landroidx/work/multiprocess/ListenableCallback;
.super Ljava/lang/Object;
.source "ListenableCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mCallback:Landroidx/work/multiprocess/IWorkManagerImplCallback;

.field final mExecutor:Ljava/util/concurrent/Executor;

.field final mFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TI;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Landroidx/work/multiprocess/IWorkManagerImplCallback;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroidx/work/multiprocess/IWorkManagerImplCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/work/multiprocess/IWorkManagerImplCallback;",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TI;>;)V"
        }
    .end annotation

    .line 48
    .local p0, "this":Landroidx/work/multiprocess/ListenableCallback;, "Landroidx/work/multiprocess/ListenableCallback<TI;>;"
    .local p3, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TI;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Landroidx/work/multiprocess/ListenableCallback;->mExecutor:Ljava/util/concurrent/Executor;

    .line 50
    iput-object p2, p0, Landroidx/work/multiprocess/ListenableCallback;->mCallback:Landroidx/work/multiprocess/IWorkManagerImplCallback;

    .line 51
    iput-object p3, p0, Landroidx/work/multiprocess/ListenableCallback;->mFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 52
    return-void
.end method


# virtual methods
.method public dispatchCallbackSafely()V
    .locals 3

    .line 64
    .local p0, "this":Landroidx/work/multiprocess/ListenableCallback;, "Landroidx/work/multiprocess/ListenableCallback<TI;>;"
    iget-object v0, p0, Landroidx/work/multiprocess/ListenableCallback;->mFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v1, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;

    invoke-direct {v1, p0}, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;-><init>(Landroidx/work/multiprocess/ListenableCallback;)V

    iget-object v2, p0, Landroidx/work/multiprocess/ListenableCallback;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 65
    return-void
.end method

.method public abstract toByteArray(Ljava/lang/Object;)[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)[B"
        }
    .end annotation
.end method
