.class Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;
.super Ljava/lang/Object;
.source "ImageCapture.java"

# interfaces
.implements Landroidx/camera/core/ForwardingImageProxy$OnImageCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/ImageCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImageCaptureRequestProcessor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor$ImageCaptor;
    }
.end annotation


# instance fields
.field mCurrentRequest:Landroidx/camera/core/ImageCapture$ImageCaptureRequest;

.field mCurrentRequestFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/camera/core/ImageProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final mImageCaptor:Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor$ImageCaptor;

.field final mLock:Ljava/lang/Object;

.field private final mMaxImages:I

.field mOutstandingImages:I

.field private final mPendingRequests:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Landroidx/camera/core/ImageCapture$ImageCaptureRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILandroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor$ImageCaptor;)V
    .locals 1
    .param p1, "maxImages"    # I
    .param p2, "imageCaptor"    # Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor$ImageCaptor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "maxImages",
            "imageCaptor"
        }
    .end annotation

    .line 1059
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1036
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->mPendingRequests:Ljava/util/Deque;

    .line 1039
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->mCurrentRequest:Landroidx/camera/core/ImageCapture$ImageCaptureRequest;

    .line 1043
    iput-object v0, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->mCurrentRequestFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 1047
    const/4 v0, 0x0

    iput v0, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->mOutstandingImages:I

    .line 1056
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->mLock:Ljava/lang/Object;

    .line 1060
    iput p1, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->mMaxImages:I

    .line 1061
    iput-object p2, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->mImageCaptor:Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor$ImageCaptor;

    .line 1062
    return-void
.end method


# virtual methods
.method public cancelRequests(Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "throwable"
        }
    .end annotation

    .line 1084
    iget-object v0, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1085
    :try_start_0
    iget-object v1, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->mCurrentRequest:Landroidx/camera/core/ImageCapture$ImageCaptureRequest;

    .line 1086
    .local v1, "currentRequest":Landroidx/camera/core/ImageCapture$ImageCaptureRequest;
    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->mCurrentRequest:Landroidx/camera/core/ImageCapture$ImageCaptureRequest;

    .line 1087
    iget-object v3, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->mCurrentRequestFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 1088
    .local v3, "currentRequestFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/camera/core/ImageProxy;>;"
    iput-object v2, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->mCurrentRequestFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 1089
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->mPendingRequests:Ljava/util/Deque;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1090
    .local v2, "pendingRequests":Ljava/util/List;, "Ljava/util/List<Landroidx/camera/core/ImageCapture$ImageCaptureRequest;>;"
    iget-object v4, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->mPendingRequests:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->clear()V

    .line 1091
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1092
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    .line 1093
    invoke-static {p1}, Landroidx/camera/core/ImageCapture;->getError(Ljava/lang/Throwable;)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4, p1}, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->notifyCallbackError(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 1095
    const/4 v0, 0x1

    invoke-interface {v3, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    .line 1097
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;

    .line 1098
    .local v4, "request":Landroidx/camera/core/ImageCapture$ImageCaptureRequest;
    invoke-static {p1}, Landroidx/camera/core/ImageCapture;->getError(Ljava/lang/Throwable;)I

    move-result v5

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, p1}, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->notifyCallbackError(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 1099
    .end local v4    # "request":Landroidx/camera/core/ImageCapture$ImageCaptureRequest;
    goto :goto_0

    .line 1100
    :cond_1
    return-void

    .line 1091
    .end local v1    # "currentRequest":Landroidx/camera/core/ImageCapture$ImageCaptureRequest;
    .end local v2    # "pendingRequests":Ljava/util/List;, "Ljava/util/List<Landroidx/camera/core/ImageCapture$ImageCaptureRequest;>;"
    .end local v3    # "currentRequestFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/camera/core/ImageProxy;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onImageClose(Landroidx/camera/core/ImageProxy;)V
    .locals 2
    .param p1, "image"    # Landroidx/camera/core/ImageProxy;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "image"
        }
    .end annotation

    .line 1104
    iget-object v0, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1105
    :try_start_0
    iget v1, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->mOutstandingImages:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->mOutstandingImages:I

    .line 1106
    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->processNextRequest()V

    .line 1107
    monitor-exit v0

    .line 1108
    return-void

    .line 1107
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method processNextRequest()V
    .locals 5

    .line 1112
    iget-object v0, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1114
    :try_start_0
    iget-object v1, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->mCurrentRequest:Landroidx/camera/core/ImageCapture$ImageCaptureRequest;

    if-eqz v1, :cond_0

    .line 1115
    monitor-exit v0

    return-void

    .line 1119
    :cond_0
    iget v1, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->mOutstandingImages:I

    iget v2, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->mMaxImages:I

    if-lt v1, v2, :cond_1

    .line 1120
    const-string v1, "ImageCapture"

    const-string v2, "Too many acquire images. Close image to be able to process next."

    invoke-static {v1, v2}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    monitor-exit v0

    return-void

    .line 1125
    :cond_1
    iget-object v1, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->mPendingRequests:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;

    .line 1126
    .local v1, "imageCaptureRequest":Landroidx/camera/core/ImageCapture$ImageCaptureRequest;
    if-nez v1, :cond_2

    .line 1127
    monitor-exit v0

    return-void

    .line 1130
    :cond_2
    iput-object v1, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->mCurrentRequest:Landroidx/camera/core/ImageCapture$ImageCaptureRequest;

    .line 1131
    iget-object v2, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->mImageCaptor:Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor$ImageCaptor;

    invoke-interface {v2, v1}, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor$ImageCaptor;->capture(Landroidx/camera/core/ImageCapture$ImageCaptureRequest;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    iput-object v2, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->mCurrentRequestFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 1132
    iget-object v2, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->mCurrentRequestFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v3, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor$1;

    invoke-direct {v3, p0, v1}, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor$1;-><init>(Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;Landroidx/camera/core/ImageCapture$ImageCaptureRequest;)V

    .line 1164
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    .line 1132
    invoke-static {v2, v3, v4}, Landroidx/camera/core/impl/utils/futures/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/impl/utils/futures/FutureCallback;Ljava/util/concurrent/Executor;)V

    .line 1165
    .end local v1    # "imageCaptureRequest":Landroidx/camera/core/ImageCapture$ImageCaptureRequest;
    monitor-exit v0

    .line 1166
    return-void

    .line 1165
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendRequest(Landroidx/camera/core/ImageCapture$ImageCaptureRequest;)V
    .locals 9
    .param p1, "imageCaptureRequest"    # Landroidx/camera/core/ImageCapture$ImageCaptureRequest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageCaptureRequest"
        }
    .end annotation

    .line 1070
    iget-object v0, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1071
    :try_start_0
    iget-object v1, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->mPendingRequests:Ljava/util/Deque;

    invoke-interface {v1, p1}, Ljava/util/Deque;->offer(Ljava/lang/Object;)Z

    .line 1072
    const-string v1, "ImageCapture"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "Send image capture request [current, pending] = [%d, %d]"

    .line 1074
    iget-object v4, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->mCurrentRequest:Landroidx/camera/core/ImageCapture$ImageCaptureRequest;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v7, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->mPendingRequests:Ljava/util/Deque;

    invoke-interface {v7}, Ljava/util/Deque;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v4, v8, v6

    aput-object v7, v8, v5

    .line 1072
    invoke-static {v2, v3, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->processNextRequest()V

    .line 1076
    monitor-exit v0

    .line 1077
    return-void

    .line 1076
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
