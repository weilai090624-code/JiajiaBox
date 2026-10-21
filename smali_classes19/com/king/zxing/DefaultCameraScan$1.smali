.class Lcom/king/zxing/DefaultCameraScan$1;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "DefaultCameraScan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/king/zxing/DefaultCameraScan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/king/zxing/DefaultCameraScan;


# direct methods
.method constructor <init>(Lcom/king/zxing/DefaultCameraScan;)V
    .registers 2
    .param p1, "this$0"    # Lcom/king/zxing/DefaultCameraScan;

    .line 118
    iput-object p1, p0, Lcom/king/zxing/DefaultCameraScan$1;->this$0:Lcom/king/zxing/DefaultCameraScan;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 6
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .line 121
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    .line 122
    .local v0, "scale":F
    iget-object v1, p0, Lcom/king/zxing/DefaultCameraScan$1;->this$0:Lcom/king/zxing/DefaultCameraScan;

    # getter for: Lcom/king/zxing/DefaultCameraScan;->mCamera:Landroidx/camera/core/Camera;
    invoke-static {v1}, Lcom/king/zxing/DefaultCameraScan;->access$000(Lcom/king/zxing/DefaultCameraScan;)Landroidx/camera/core/Camera;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 123
    iget-object v1, p0, Lcom/king/zxing/DefaultCameraScan$1;->this$0:Lcom/king/zxing/DefaultCameraScan;

    # getter for: Lcom/king/zxing/DefaultCameraScan;->mCamera:Landroidx/camera/core/Camera;
    invoke-static {v1}, Lcom/king/zxing/DefaultCameraScan;->access$000(Lcom/king/zxing/DefaultCameraScan;)Landroidx/camera/core/Camera;

    move-result-object v1

    invoke-interface {v1}, Landroidx/camera/core/Camera;->getCameraInfo()Landroidx/camera/core/CameraInfo;

    move-result-object v1

    invoke-interface {v1}, Landroidx/camera/core/CameraInfo;->getZoomState()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/ZoomState;

    invoke-interface {v1}, Landroidx/camera/core/ZoomState;->getZoomRatio()F

    move-result v1

    .line 124
    .local v1, "ratio":F
    iget-object v2, p0, Lcom/king/zxing/DefaultCameraScan$1;->this$0:Lcom/king/zxing/DefaultCameraScan;

    mul-float v3, v1, v0

    invoke-virtual {v2, v3}, Lcom/king/zxing/DefaultCameraScan;->zoomTo(F)V

    .line 126
    .end local v1    # "ratio":F
    :cond_2b
    const/4 v1, 0x1

    return v1
.end method
