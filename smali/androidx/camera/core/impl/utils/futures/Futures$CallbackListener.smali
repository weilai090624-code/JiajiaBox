.class final Landroidx/camera/core/impl/utils/futures/Futures$CallbackListener;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/impl/utils/futures/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallbackListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final mCallback:Landroidx/camera/core/impl/utils/futures/FutureCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/impl/utils/futures/FutureCallback<",
            "-TV;>;"
        }
    .end annotation
.end field

.field final mFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Future;Landroidx/camera/core/impl/utils/futures/FutureCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "future",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "TV;>;",
            "Landroidx/camera/core/impl/utils/futures/FutureCallback<",
            "-TV;>;)V"
        }
    .end annotation

    .line 327
    .local p0, "this":Landroidx/camera/core/impl/utils/futures/Futures$CallbackListener;, "Landroidx/camera/core/impl/utils/futures/Futures$CallbackListener<TV;>;"
    .local p1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TV;>;"
    .local p2, "callback":Landroidx/camera/core/impl/utils/futures/FutureCallback;, "Landroidx/camera/core/impl/utils/futures/FutureCallback<-TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    iput-object p1, p0, Landroidx/camera/core/impl/utils/futures/Futures$CallbackListener;->mFuture:Ljava/util/concurrent/Future;

    .line 329
    iput-object p2, p0, Landroidx/camera/core/impl/utils/futures/Futures$CallbackListener;->mCallback:Landroidx/camera/core/impl/utils/futures/FutureCallback;

    .line 330
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 336
    .local p0, "this":Landroidx/camera/core/impl/utils/futures/Futures$CallbackListener;, "Landroidx/camera/core/impl/utils/futures/Futures$CallbackListener<TV;>;"
    :try_start_0
    iget-object v0, p0, Landroidx/camera/core/impl/utils/futures/Futures$CallbackListener;->mFuture:Ljava/util/concurrent/Future;

    invoke-static {v0}, Landroidx/camera/core/impl/utils/futures/Futures;->getDone(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    .local v0, "value":Ljava/lang/Object;, "TV;"
    nop

    .line 344
    iget-object v1, p0, Landroidx/camera/core/impl/utils/futures/Futures$CallbackListener;->mCallback:Landroidx/camera/core/impl/utils/futures/FutureCallback;

    invoke-interface {v1, v0}, Landroidx/camera/core/impl/utils/futures/FutureCallback;->onSuccess(Ljava/lang/Object;)V

    .line 345
    return-void

    .line 340
    .end local v0    # "value":Ljava/lang/Object;, "TV;"
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 341
    .local v0, "e":Ljava/lang/Throwable;
    :goto_0
    iget-object v1, p0, Landroidx/camera/core/impl/utils/futures/Futures$CallbackListener;->mCallback:Landroidx/camera/core/impl/utils/futures/FutureCallback;

    invoke-interface {v1, v0}, Landroidx/camera/core/impl/utils/futures/FutureCallback;->onFailure(Ljava/lang/Throwable;)V

    .line 342
    return-void

    .line 337
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_2
    move-exception v0

    .line 338
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    iget-object v1, p0, Landroidx/camera/core/impl/utils/futures/Futures$CallbackListener;->mCallback:Landroidx/camera/core/impl/utils/futures/FutureCallback;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-interface {v1, v2}, Landroidx/camera/core/impl/utils/futures/FutureCallback;->onFailure(Ljava/lang/Throwable;)V

    .line 339
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 349
    .local p0, "this":Landroidx/camera/core/impl/utils/futures/Futures$CallbackListener;, "Landroidx/camera/core/impl/utils/futures/Futures$CallbackListener<TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/camera/core/impl/utils/futures/Futures$CallbackListener;->mCallback:Landroidx/camera/core/impl/utils/futures/FutureCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
