.class final Landroidx/camera/core/ImageCapture$CaptureCallbackChecker;
.super Landroidx/camera/core/impl/CameraCaptureCallback;
.source "ImageCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/ImageCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CaptureCallbackChecker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$CaptureResultListener;,
        Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$CaptureResultChecker;
    }
.end annotation


# static fields
.field private static final NO_TIMEOUT:J


# instance fields
.field private final mCaptureResultListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$CaptureResultListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 2107
    invoke-direct {p0}, Landroidx/camera/core/impl/CameraCaptureCallback;-><init>()V

    .line 2111
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/ImageCapture$CaptureCallbackChecker;->mCaptureResultListeners:Ljava/util/Set;

    return-void
.end method

.method private deliverCaptureResultToListeners(Landroidx/camera/core/impl/CameraCaptureResult;)V
    .locals 5
    .param p1, "captureResult"    # Landroidx/camera/core/impl/CameraCaptureResult;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "captureResult"
        }
    .end annotation

    .line 2180
    iget-object v0, p0, Landroidx/camera/core/ImageCapture$CaptureCallbackChecker;->mCaptureResultListeners:Ljava/util/Set;

    monitor-enter v0

    .line 2181
    const/4 v1, 0x0

    .line 2182
    .local v1, "removeSet":Ljava/util/Set;, "Ljava/util/Set<Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$CaptureResultListener;>;"
    :try_start_0
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Landroidx/camera/core/ImageCapture$CaptureCallbackChecker;->mCaptureResultListeners:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$CaptureResultListener;

    .line 2184
    .local v3, "listener":Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$CaptureResultListener;
    invoke-interface {v3, p1}, Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$CaptureResultListener;->onCaptureResult(Landroidx/camera/core/impl/CameraCaptureResult;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2185
    if-nez v1, :cond_0

    .line 2186
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    move-object v1, v4

    .line 2188
    :cond_0
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2190
    .end local v3    # "listener":Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$CaptureResultListener;
    :cond_1
    goto :goto_0

    .line 2191
    :cond_2
    if-eqz v1, :cond_3

    .line 2192
    iget-object v2, p0, Landroidx/camera/core/ImageCapture$CaptureCallbackChecker;->mCaptureResultListeners:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 2194
    .end local v1    # "removeSet":Ljava/util/Set;, "Ljava/util/Set<Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$CaptureResultListener;>;"
    :cond_3
    monitor-exit v0

    .line 2195
    return-void

    .line 2194
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method addListener(Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$CaptureResultListener;)V
    .locals 2
    .param p1, "listener"    # Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$CaptureResultListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 2199
    iget-object v0, p0, Landroidx/camera/core/ImageCapture$CaptureCallbackChecker;->mCaptureResultListeners:Ljava/util/Set;

    monitor-enter v0

    .line 2200
    :try_start_0
    iget-object v1, p0, Landroidx/camera/core/ImageCapture$CaptureCallbackChecker;->mCaptureResultListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2201
    monitor-exit v0

    .line 2202
    return-void

    .line 2201
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method checkCaptureResult(Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$CaptureResultChecker;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "checker"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$CaptureResultChecker<",
            "TT;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 2128
    .local p1, "checker":Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$CaptureResultChecker;, "Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$CaptureResultChecker<TT;>;"
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroidx/camera/core/ImageCapture$CaptureCallbackChecker;->checkCaptureResult(Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$CaptureResultChecker;JLjava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method checkCaptureResult(Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$CaptureResultChecker;JLjava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 10
    .param p2, "timeoutInMs"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "checker",
            "timeoutInMs",
            "defValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$CaptureResultChecker<",
            "TT;>;JTT;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 2145
    .local p1, "checker":Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$CaptureResultChecker;, "Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$CaptureResultChecker<TT;>;"
    .local p4, "defValue":Ljava/lang/Object;, "TT;"
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_1

    .line 2149
    cmp-long v2, p2, v0

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    :cond_0
    move-wide v5, v0

    .line 2151
    .local v5, "startTimeInMs":J
    new-instance v0, Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$$ExternalSyntheticLambda0;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-wide v7, p2

    move-object v9, p4

    invoke-direct/range {v2 .. v9}, Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/core/ImageCapture$CaptureCallbackChecker;Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$CaptureResultChecker;JJLjava/lang/Object;)V

    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 2146
    .end local v5    # "startTimeInMs":J
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid timeout value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic lambda$checkCaptureResult$0$androidx-camera-core-ImageCapture$CaptureCallbackChecker(Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$CaptureResultChecker;JJLjava/lang/Object;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 10
    .param p1, "checker"    # Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$CaptureResultChecker;
    .param p2, "startTimeInMs"    # J
    .param p4, "timeoutInMs"    # J
    .param p6, "defValue"    # Ljava/lang/Object;
    .param p7, "completer"    # Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2153
    new-instance v9, Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$1;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p7

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$1;-><init>(Landroidx/camera/core/ImageCapture$CaptureCallbackChecker;Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$CaptureResultChecker;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;JJLjava/lang/Object;)V

    move-object v0, p0

    invoke-virtual {p0, v9}, Landroidx/camera/core/ImageCapture$CaptureCallbackChecker;->addListener(Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$CaptureResultListener;)V

    .line 2172
    const-string v1, "checkCaptureResult"

    return-object v1
.end method

.method public onCaptureCompleted(Landroidx/camera/core/impl/CameraCaptureResult;)V
    .locals 0
    .param p1, "cameraCaptureResult"    # Landroidx/camera/core/impl/CameraCaptureResult;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraCaptureResult"
        }
    .end annotation

    .line 2115
    invoke-direct {p0, p1}, Landroidx/camera/core/ImageCapture$CaptureCallbackChecker;->deliverCaptureResultToListeners(Landroidx/camera/core/impl/CameraCaptureResult;)V

    .line 2116
    return-void
.end method
