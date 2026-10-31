.class public final Landroidx/camera/core/impl/utils/Threads;
.super Ljava/lang/Object;
.source "Threads.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static checkBackgroundThread()V
    .registers 2

    .line 57
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->isBackgroundThread()Z

    move-result v0

    const-string v1, "In application\'s main thread"

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 58
    return-void
.end method

.method public static checkMainThread()V
    .registers 2

    .line 48
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->isMainThread()Z

    move-result v0

    const-string v1, "Not in application\'s main thread"

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 49
    return-void
.end method

.method public static isBackgroundThread()Z
    .registers 1

    .line 39
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->isMainThread()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isMainThread()Z
    .registers 2

    .line 34
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method
