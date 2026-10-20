.class public Lcom/king/zxing/CaptureActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "CaptureActivity.java"

# interfaces
.implements Lcom/king/zxing/CameraScan$OnScanResultCallback;


# static fields
.field private static final CAMERA_PERMISSION_REQUEST_CODE:I = 0x86


# instance fields
.field protected ivFlashlight:Landroid/view/View;

.field private mCameraScan:Lcom/king/zxing/CameraScan;

.field protected previewView:Landroidx/camera/view/PreviewView;

.field protected viewfinderView:Lcom/king/zxing/ViewfinderView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private releaseCamera()V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/king/zxing/CaptureActivity;->mCameraScan:Lcom/king/zxing/CameraScan;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/king/zxing/CaptureActivity;->mCameraScan:Lcom/king/zxing/CameraScan;

    invoke-virtual {v0}, Lcom/king/zxing/CameraScan;->release()V

    .line 113
    :cond_0
    return-void
.end method


# virtual methods
.method public getCameraScan()Lcom/king/zxing/CameraScan;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/king/zxing/CaptureActivity;->mCameraScan:Lcom/king/zxing/CameraScan;

    return-object v0
.end method

.method public getFlashlightId()I
    .locals 1

    .line 194
    sget v0, Lcom/king/zxing/R$id;->ivFlashlight:I

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 169
    sget v0, Lcom/king/zxing/R$layout;->zxl_capture:I

    return v0
.end method

.method public getPreviewViewId()I
    .locals 1

    .line 186
    sget v0, Lcom/king/zxing/R$id;->previewView:I

    return v0
.end method

.method public getViewfinderViewId()I
    .locals 1

    .line 177
    sget v0, Lcom/king/zxing/R$id;->viewfinderView:I

    return v0
.end method

.method public initCameraScan()V
    .locals 2

    .line 86
    new-instance v0, Lcom/king/zxing/DefaultCameraScan;

    iget-object v1, p0, Lcom/king/zxing/CaptureActivity;->previewView:Landroidx/camera/view/PreviewView;

    invoke-direct {v0, p0, v1}, Lcom/king/zxing/DefaultCameraScan;-><init>(Landroidx/fragment/app/FragmentActivity;Landroidx/camera/view/PreviewView;)V

    iput-object v0, p0, Lcom/king/zxing/CaptureActivity;->mCameraScan:Lcom/king/zxing/CameraScan;

    .line 87
    iget-object v0, p0, Lcom/king/zxing/CaptureActivity;->mCameraScan:Lcom/king/zxing/CameraScan;

    invoke-virtual {v0, p0}, Lcom/king/zxing/CameraScan;->setOnScanResultCallback(Lcom/king/zxing/CameraScan$OnScanResultCallback;)Lcom/king/zxing/CameraScan;

    .line 88
    return-void
.end method

.method public initUI()V
    .locals 4

    .line 59
    invoke-virtual {p0}, Lcom/king/zxing/CaptureActivity;->getPreviewViewId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/king/zxing/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/camera/view/PreviewView;

    iput-object v0, p0, Lcom/king/zxing/CaptureActivity;->previewView:Landroidx/camera/view/PreviewView;

    .line 60
    invoke-virtual {p0}, Lcom/king/zxing/CaptureActivity;->getViewfinderViewId()I

    move-result v0

    .line 61
    .local v0, "viewfinderViewId":I
    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0, v0}, Lcom/king/zxing/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/king/zxing/ViewfinderView;

    iput-object v1, p0, Lcom/king/zxing/CaptureActivity;->viewfinderView:Lcom/king/zxing/ViewfinderView;

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/king/zxing/CaptureActivity;->getFlashlightId()I

    move-result v1

    .line 65
    .local v1, "ivFlashlightId":I
    if-eqz v1, :cond_1

    .line 66
    invoke-virtual {p0, v1}, Lcom/king/zxing/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/king/zxing/CaptureActivity;->ivFlashlight:Landroid/view/View;

    .line 67
    iget-object v2, p0, Lcom/king/zxing/CaptureActivity;->ivFlashlight:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 68
    iget-object v2, p0, Lcom/king/zxing/CaptureActivity;->ivFlashlight:Landroid/view/View;

    new-instance v3, Lcom/king/zxing/CaptureActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/king/zxing/CaptureActivity$$ExternalSyntheticLambda0;-><init>(Lcom/king/zxing/CaptureActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    :cond_1
    invoke-virtual {p0}, Lcom/king/zxing/CaptureActivity;->initCameraScan()V

    .line 72
    invoke-virtual {p0}, Lcom/king/zxing/CaptureActivity;->startCamera()V

    .line 73
    return-void
.end method

.method public isContentView(I)Z
    .locals 1
    .param p1, "layoutId"    # I

    .line 161
    const/4 v0, 0x1

    return v0
.end method

.method synthetic lambda$initUI$0$com-king-zxing-CaptureActivity(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 68
    invoke-virtual {p0}, Lcom/king/zxing/CaptureActivity;->onClickFlashlight()V

    return-void
.end method

.method protected onClickFlashlight()V
    .locals 0

    .line 79
    invoke-virtual {p0}, Lcom/king/zxing/CaptureActivity;->toggleTorchState()V

    .line 80
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 47
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/king/zxing/CaptureActivity;->getLayoutId()I

    move-result v0

    .line 49
    .local v0, "layoutId":I
    invoke-virtual {p0, v0}, Lcom/king/zxing/CaptureActivity;->isContentView(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    invoke-virtual {p0, v0}, Lcom/king/zxing/CaptureActivity;->setContentView(I)V

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/king/zxing/CaptureActivity;->initUI()V

    .line 53
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 151
    invoke-direct {p0}, Lcom/king/zxing/CaptureActivity;->releaseCamera()V

    .line 152
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 153
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 130
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 131
    const/16 v0, 0x86

    if-ne p1, v0, :cond_0

    .line 132
    invoke-virtual {p0, p2, p3}, Lcom/king/zxing/CaptureActivity;->requestCameraPermissionResult([Ljava/lang/String;[I)V

    .line 134
    :cond_0
    return-void
.end method

.method public onScanResultCallback(Lcom/google/zxing/Result;)Z
    .locals 1
    .param p1, "result"    # Lcom/google/zxing/Result;

    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic onScanResultFailure()V
    .locals 0

    invoke-static {p0}, Lcom/king/zxing/CameraScan$OnScanResultCallback$-CC;->$default$onScanResultFailure(Lcom/king/zxing/CameraScan$OnScanResultCallback;)V

    return-void
.end method

.method public requestCameraPermissionResult([Ljava/lang/String;[I)V
    .locals 1
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "grantResults"    # [I

    .line 142
    const-string v0, "android.permission.CAMERA"

    invoke-static {v0, p1, p2}, Lcom/king/zxing/util/PermissionUtils;->requestPermissionsResult(Ljava/lang/String;[Ljava/lang/String;[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/king/zxing/CaptureActivity;->startCamera()V

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/king/zxing/CaptureActivity;->finish()V

    .line 147
    :goto_0
    return-void
.end method

.method public startCamera()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/king/zxing/CaptureActivity;->mCameraScan:Lcom/king/zxing/CameraScan;

    if-eqz v0, :cond_1

    .line 96
    const-string v0, "android.permission.CAMERA"

    invoke-static {p0, v0}, Lcom/king/zxing/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    iget-object v0, p0, Lcom/king/zxing/CaptureActivity;->mCameraScan:Lcom/king/zxing/CameraScan;

    invoke-virtual {v0}, Lcom/king/zxing/CameraScan;->startCamera()V

    goto :goto_0

    .line 99
    :cond_0
    const-string v1, "checkPermissionResult != PERMISSION_GRANTED"

    invoke-static {v1}, Lcom/king/zxing/util/LogUtils;->d(Ljava/lang/String;)V

    .line 100
    const/16 v1, 0x86

    invoke-static {p0, v0, v1}, Lcom/king/zxing/util/PermissionUtils;->requestPermission(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 103
    :cond_1
    :goto_0
    return-void
.end method

.method protected toggleTorchState()V
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/king/zxing/CaptureActivity;->mCameraScan:Lcom/king/zxing/CameraScan;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/king/zxing/CaptureActivity;->mCameraScan:Lcom/king/zxing/CameraScan;

    invoke-virtual {v0}, Lcom/king/zxing/CameraScan;->isTorchEnabled()Z

    move-result v0

    .line 121
    .local v0, "isTorch":Z
    iget-object v1, p0, Lcom/king/zxing/CaptureActivity;->mCameraScan:Lcom/king/zxing/CameraScan;

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/king/zxing/CameraScan;->enableTorch(Z)V

    .line 122
    iget-object v1, p0, Lcom/king/zxing/CaptureActivity;->ivFlashlight:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/king/zxing/CaptureActivity;->ivFlashlight:Landroid/view/View;

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 126
    .end local v0    # "isTorch":Z
    :cond_0
    return-void
.end method
