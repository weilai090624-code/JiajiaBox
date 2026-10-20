.class final Landroidx/camera/core/SettableImageProxyBundle;
.super Ljava/lang/Object;
.source "SettableImageProxyBundle.java"

# interfaces
.implements Landroidx/camera/core/impl/ImageProxyBundle;


# instance fields
.field private final mCaptureIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mClosed:Z

.field final mCompleters:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<",
            "Landroidx/camera/core/ImageProxy;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mFutureResults:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/camera/core/ImageProxy;",
            ">;>;"
        }
    .end annotation
.end field

.field final mLock:Ljava/lang/Object;

.field private final mOwnedImageProxies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/core/ImageProxy;",
            ">;"
        }
    .end annotation
.end field

.field private mTagBundleKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .param p2, "tagBundleKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "captureIds",
            "tagBundleKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 63
    .local p1, "captureIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/SettableImageProxyBundle;->mLock:Ljava/lang/Object;

    .line 39
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/SettableImageProxyBundle;->mCompleters:Landroid/util/SparseArray;

    .line 44
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/SettableImageProxyBundle;->mFutureResults:Landroid/util/SparseArray;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/SettableImageProxyBundle;->mOwnedImageProxies:Ljava/util/List;

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/camera/core/SettableImageProxyBundle;->mTagBundleKey:Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/camera/core/SettableImageProxyBundle;->mClosed:Z

    .line 64
    iput-object p1, p0, Landroidx/camera/core/SettableImageProxyBundle;->mCaptureIdList:Ljava/util/List;

    .line 65
    iput-object p2, p0, Landroidx/camera/core/SettableImageProxyBundle;->mTagBundleKey:Ljava/lang/String;

    .line 66
    invoke-direct {p0}, Landroidx/camera/core/SettableImageProxyBundle;->setup()V

    .line 67
    return-void
.end method

.method private setup()V
    .locals 5

    .line 158
    iget-object v0, p0, Landroidx/camera/core/SettableImageProxyBundle;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 159
    :try_start_0
    iget-object v1, p0, Landroidx/camera/core/SettableImageProxyBundle;->mCaptureIdList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 160
    .local v2, "captureId":I
    new-instance v3, Landroidx/camera/core/SettableImageProxyBundle$1;

    invoke-direct {v3, p0, v2}, Landroidx/camera/core/SettableImageProxyBundle$1;-><init>(Landroidx/camera/core/SettableImageProxyBundle;I)V

    invoke-static {v3}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    .line 174
    .local v3, "futureResult":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/camera/core/ImageProxy;>;"
    iget-object v4, p0, Landroidx/camera/core/SettableImageProxyBundle;->mFutureResults:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 175
    .end local v2    # "captureId":I
    .end local v3    # "futureResult":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/camera/core/ImageProxy;>;"
    goto :goto_0

    .line 176
    :cond_0
    monitor-exit v0

    .line 177
    return-void

    .line 176
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method addImageProxy(Landroidx/camera/core/ImageProxy;)V
    .locals 6
    .param p1, "imageProxy"    # Landroidx/camera/core/ImageProxy;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageProxy"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Landroidx/camera/core/SettableImageProxyBundle;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 99
    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/core/SettableImageProxyBundle;->mClosed:Z

    if-eqz v1, :cond_0

    .line 100
    monitor-exit v0

    return-void

    .line 103
    :cond_0
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getImageInfo()Landroidx/camera/core/ImageInfo;

    move-result-object v1

    invoke-interface {v1}, Landroidx/camera/core/ImageInfo;->getTagBundle()Landroidx/camera/core/impl/TagBundle;

    move-result-object v1

    iget-object v2, p0, Landroidx/camera/core/SettableImageProxyBundle;->mTagBundleKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/camera/core/impl/TagBundle;->getTag(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 104
    .local v1, "captureId":Ljava/lang/Integer;
    if-eqz v1, :cond_2

    .line 110
    iget-object v2, p0, Landroidx/camera/core/SettableImageProxyBundle;->mCompleters:Landroid/util/SparseArray;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 111
    .local v2, "completer":Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;, "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<Landroidx/camera/core/ImageProxy;>;"
    if-eqz v2, :cond_1

    .line 112
    iget-object v3, p0, Landroidx/camera/core/SettableImageProxyBundle;->mOwnedImageProxies:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-virtual {v2, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    .line 118
    .end local v1    # "captureId":Ljava/lang/Integer;
    .end local v2    # "completer":Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;, "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<Landroidx/camera/core/ImageProxy;>;"
    monitor-exit v0

    .line 119
    return-void

    .line 115
    .restart local v1    # "captureId":Ljava/lang/Integer;
    .restart local v2    # "completer":Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;, "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<Landroidx/camera/core/ImageProxy;>;"
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ImageProxyBundle does not contain this id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "imageProxy":Landroidx/camera/core/ImageProxy;
    throw v3

    .line 105
    .end local v2    # "completer":Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;, "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<Landroidx/camera/core/ImageProxy;>;"
    .restart local p1    # "imageProxy":Landroidx/camera/core/ImageProxy;
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "CaptureId is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "imageProxy":Landroidx/camera/core/ImageProxy;
    throw v2

    .line 118
    .end local v1    # "captureId":Ljava/lang/Integer;
    .restart local p1    # "imageProxy":Landroidx/camera/core/ImageProxy;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method close()V
    .locals 3

    .line 125
    iget-object v0, p0, Landroidx/camera/core/SettableImageProxyBundle;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 126
    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/core/SettableImageProxyBundle;->mClosed:Z

    if-eqz v1, :cond_0

    .line 127
    monitor-exit v0

    return-void

    .line 129
    :cond_0
    iget-object v1, p0, Landroidx/camera/core/SettableImageProxyBundle;->mOwnedImageProxies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/ImageProxy;

    .line 130
    .local v2, "imageProxy":Landroidx/camera/core/ImageProxy;
    invoke-interface {v2}, Landroidx/camera/core/ImageProxy;->close()V

    .line 131
    .end local v2    # "imageProxy":Landroidx/camera/core/ImageProxy;
    goto :goto_0

    .line 132
    :cond_1
    iget-object v1, p0, Landroidx/camera/core/SettableImageProxyBundle;->mOwnedImageProxies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 133
    iget-object v1, p0, Landroidx/camera/core/SettableImageProxyBundle;->mFutureResults:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 134
    iget-object v1, p0, Landroidx/camera/core/SettableImageProxyBundle;->mCompleters:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 135
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/camera/core/SettableImageProxyBundle;->mClosed:Z

    .line 136
    monitor-exit v0

    .line 137
    return-void

    .line 136
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCaptureIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Landroidx/camera/core/SettableImageProxyBundle;->mCaptureIdList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getImageProxy(I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 5
    .param p1, "captureId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "captureId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/camera/core/ImageProxy;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Landroidx/camera/core/SettableImageProxyBundle;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 73
    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/core/SettableImageProxyBundle;->mClosed:Z

    if-nez v1, :cond_1

    .line 78
    iget-object v1, p0, Landroidx/camera/core/SettableImageProxyBundle;->mFutureResults:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 79
    .local v1, "result":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/camera/core/ImageProxy;>;"
    if-eqz v1, :cond_0

    .line 84
    monitor-exit v0

    return-object v1

    .line 80
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ImageProxyBundle does not contain this id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "captureId":I
    throw v2

    .line 74
    .end local v1    # "result":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/camera/core/ImageProxy;>;"
    .restart local p1    # "captureId":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ImageProxyBundle already closed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p1    # "captureId":I
    throw v1

    .line 85
    .restart local p1    # "captureId":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method reset()V
    .locals 3

    .line 143
    iget-object v0, p0, Landroidx/camera/core/SettableImageProxyBundle;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 144
    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/core/SettableImageProxyBundle;->mClosed:Z

    if-eqz v1, :cond_0

    .line 145
    monitor-exit v0

    return-void

    .line 147
    :cond_0
    iget-object v1, p0, Landroidx/camera/core/SettableImageProxyBundle;->mOwnedImageProxies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/ImageProxy;

    .line 148
    .local v2, "imageProxy":Landroidx/camera/core/ImageProxy;
    invoke-interface {v2}, Landroidx/camera/core/ImageProxy;->close()V

    .line 149
    .end local v2    # "imageProxy":Landroidx/camera/core/ImageProxy;
    goto :goto_0

    .line 150
    :cond_1
    iget-object v1, p0, Landroidx/camera/core/SettableImageProxyBundle;->mOwnedImageProxies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 151
    iget-object v1, p0, Landroidx/camera/core/SettableImageProxyBundle;->mFutureResults:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 152
    iget-object v1, p0, Landroidx/camera/core/SettableImageProxyBundle;->mCompleters:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 153
    invoke-direct {p0}, Landroidx/camera/core/SettableImageProxyBundle;->setup()V

    .line 154
    monitor-exit v0

    .line 155
    return-void

    .line 154
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
