.class Landroidx/camera/core/impl/LiveDataObservable$1$1;
.super Ljava/lang/Object;
.source "LiveDataObservable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/core/impl/LiveDataObservable$1;->attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/camera/core/impl/LiveDataObservable$1;

.field final synthetic val$completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;


# direct methods
.method constructor <init>(Landroidx/camera/core/impl/LiveDataObservable$1;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 0
    .param p1, "this$1"    # Landroidx/camera/core/impl/LiveDataObservable$1;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$completer"
        }
    .end annotation

    .line 88
    .local p0, "this":Landroidx/camera/core/impl/LiveDataObservable$1$1;, "Landroidx/camera/core/impl/LiveDataObservable$1$1;"
    iput-object p1, p0, Landroidx/camera/core/impl/LiveDataObservable$1$1;->this$1:Landroidx/camera/core/impl/LiveDataObservable$1;

    iput-object p2, p0, Landroidx/camera/core/impl/LiveDataObservable$1$1;->val$completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 91
    .local p0, "this":Landroidx/camera/core/impl/LiveDataObservable$1$1;, "Landroidx/camera/core/impl/LiveDataObservable$1$1;"
    iget-object v0, p0, Landroidx/camera/core/impl/LiveDataObservable$1$1;->this$1:Landroidx/camera/core/impl/LiveDataObservable$1;

    iget-object v0, v0, Landroidx/camera/core/impl/LiveDataObservable$1;->this$0:Landroidx/camera/core/impl/LiveDataObservable;

    iget-object v0, v0, Landroidx/camera/core/impl/LiveDataObservable;->mLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/LiveDataObservable$Result;

    .line 92
    .local v0, "result":Landroidx/camera/core/impl/LiveDataObservable$Result;, "Landroidx/camera/core/impl/LiveDataObservable$Result<TT;>;"
    if-nez v0, :cond_0

    .line 93
    iget-object v1, p0, Landroidx/camera/core/impl/LiveDataObservable$1$1;->val$completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Observable has not yet been initialized with a value."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {v0}, Landroidx/camera/core/impl/LiveDataObservable$Result;->completedSuccessfully()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    iget-object v1, p0, Landroidx/camera/core/impl/LiveDataObservable$1$1;->val$completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-virtual {v0}, Landroidx/camera/core/impl/LiveDataObservable$Result;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    goto :goto_0

    .line 98
    :cond_1
    invoke-virtual {v0}, Landroidx/camera/core/impl/LiveDataObservable$Result;->getError()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v1, p0, Landroidx/camera/core/impl/LiveDataObservable$1$1;->val$completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-virtual {v0}, Landroidx/camera/core/impl/LiveDataObservable$Result;->getError()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    .line 101
    :goto_0
    return-void
.end method
