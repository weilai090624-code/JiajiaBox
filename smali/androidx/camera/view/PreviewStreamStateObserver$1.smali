.class Landroidx/camera/view/PreviewStreamStateObserver$1;
.super Ljava/lang/Object;
.source "PreviewStreamStateObserver.java"

# interfaces
.implements Landroidx/camera/core/impl/utils/futures/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/view/PreviewStreamStateObserver;->startPreviewStreamStateFlow(Landroidx/camera/core/CameraInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/camera/core/impl/utils/futures/FutureCallback<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/view/PreviewStreamStateObserver;

.field final synthetic val$callbacksToClear:Ljava/util/List;

.field final synthetic val$cameraInfo:Landroidx/camera/core/CameraInfo;


# direct methods
.method constructor <init>(Landroidx/camera/view/PreviewStreamStateObserver;Ljava/util/List;Landroidx/camera/core/CameraInfo;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/camera/view/PreviewStreamStateObserver;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$callbacksToClear",
            "val$cameraInfo"
        }
    .end annotation

    .line 135
    iput-object p1, p0, Landroidx/camera/view/PreviewStreamStateObserver$1;->this$0:Landroidx/camera/view/PreviewStreamStateObserver;

    iput-object p2, p0, Landroidx/camera/view/PreviewStreamStateObserver$1;->val$callbacksToClear:Ljava/util/List;

    iput-object p3, p0, Landroidx/camera/view/PreviewStreamStateObserver$1;->val$cameraInfo:Landroidx/camera/core/CameraInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Landroidx/camera/view/PreviewStreamStateObserver$1;->this$0:Landroidx/camera/view/PreviewStreamStateObserver;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/camera/view/PreviewStreamStateObserver;->mFlowFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 145
    iget-object v0, p0, Landroidx/camera/view/PreviewStreamStateObserver$1;->val$callbacksToClear:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 146
    iget-object v0, p0, Landroidx/camera/view/PreviewStreamStateObserver$1;->val$callbacksToClear:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/CameraCaptureCallback;

    .line 147
    .local v1, "callback":Landroidx/camera/core/impl/CameraCaptureCallback;
    iget-object v2, p0, Landroidx/camera/view/PreviewStreamStateObserver$1;->val$cameraInfo:Landroidx/camera/core/CameraInfo;

    check-cast v2, Landroidx/camera/core/impl/CameraInfoInternal;

    invoke-interface {v2, v1}, Landroidx/camera/core/impl/CameraInfoInternal;->removeSessionCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;)V

    .line 149
    .end local v1    # "callback":Landroidx/camera/core/impl/CameraCaptureCallback;
    goto :goto_0

    .line 150
    :cond_0
    iget-object v0, p0, Landroidx/camera/view/PreviewStreamStateObserver$1;->val$callbacksToClear:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 152
    :cond_1
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "result"
        }
    .end annotation

    .line 135
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroidx/camera/view/PreviewStreamStateObserver$1;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Landroidx/camera/view/PreviewStreamStateObserver$1;->this$0:Landroidx/camera/view/PreviewStreamStateObserver;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/camera/view/PreviewStreamStateObserver;->mFlowFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 139
    return-void
.end method
