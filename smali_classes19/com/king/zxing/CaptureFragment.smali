.class public Lcom/king/zxing/CaptureFragment;
.super Landroidx/fragment/app/Fragment;
.source "CaptureFragment.java"

# interfaces
.implements Lcom/king/zxing/CameraScan$OnScanResultCallback;


# static fields
.field private static final CAMERA_PERMISSION_REQUEST_CODE:I = 0x86


# instance fields
.field protected ivFlashlight:Landroid/view/View;

.field private mCameraScan:Lcom/king/zxing/CameraScan;

.field private mRootView:Landroid/view/View;

.field protected previewView:Landroidx/camera/view/PreviewView;

.field protected viewfinderView:Lcom/king/zxing/ViewfinderView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/king/zxing/CaptureFragment;
    .locals 2

    .line 50
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 52
    .local v0, "args":Landroid/os/Bundle;
    new-instance v1, Lcom/king/zxing/CaptureFragment;

    invoke-direct {v1}, Lcom/king/zxing/CaptureFragment;-><init>()V

    .line 53
    .local v1, "fragment":Lcom/king/zxing/CaptureFragment;
    invoke-virtual {v1, v0}, Lcom/king/zxing/CaptureFragment;->setArguments(Landroid/os/Bundle;)V

    .line 54
    return-object v1
.end method

.method private releaseCamera()V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/king/zxing/CaptureFragment;->mCameraScan:Lcom/king/zxing/CameraScan;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/king/zxing/CaptureFragment;->mCameraScan:Lcom/king/zxing/CameraScan;

    invoke-virtual {v0}, Lcom/king/zxing/CameraScan;->release()V

    .line 124
    :cond_0
    return-void
.end method


# virtual methods
.method public createRootView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .line 183
    invoke-virtual {p0}, Lcom/king/zxing/CaptureFragment;->getLayoutId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getCameraScan()Lcom/king/zxing/CameraScan;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/king/zxing/CaptureFragment;->mCameraScan:Lcom/king/zxing/CameraScan;

    return-object v0
.end method

.method public getFlashlightId()I
    .locals 1

    .line 216
    sget v0, Lcom/king/zxing/R$id;->ivFlashlight:I

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 191
    sget v0, Lcom/king/zxing/R$layout;->zxl_capture:I

    return v0
.end method

.method public getPreviewViewId()I
    .locals 1

    .line 208
    sget v0, Lcom/king/zxing/R$id;->previewView:I

    return v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/king/zxing/CaptureFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public getViewfinderViewId()I
    .locals 1

    .line 199
    sget v0, Lcom/king/zxing/R$id;->viewfinderView:I

    return v0
.end method

.method public initCameraScan()V
    .locals 2

    .line 99
    new-instance v0, Lcom/king/zxing/DefaultCameraScan;

    iget-object v1, p0, Lcom/king/zxing/CaptureFragment;->previewView:Landroidx/camera/view/PreviewView;

    invoke-direct {v0, p0, v1}, Lcom/king/zxing/DefaultCameraScan;-><init>(Landroidx/fragment/app/Fragment;Landroidx/camera/view/PreviewView;)V

    iput-object v0, p0, Lcom/king/zxing/CaptureFragment;->mCameraScan:Lcom/king/zxing/CameraScan;

    .line 100
    iget-object v0, p0, Lcom/king/zxing/CaptureFragment;->mCameraScan:Lcom/king/zxing/CameraScan;

    invoke-virtual {v0, p0}, Lcom/king/zxing/CameraScan;->setOnScanResultCallback(Lcom/king/zxing/CameraScan$OnScanResultCallback;)Lcom/king/zxing/CameraScan;

    .line 101
    return-void
.end method

.method public initUI()V
    .locals 4

    .line 72
    iget-object v0, p0, Lcom/king/zxing/CaptureFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/king/zxing/CaptureFragment;->getPreviewViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/camera/view/PreviewView;

    iput-object v0, p0, Lcom/king/zxing/CaptureFragment;->previewView:Landroidx/camera/view/PreviewView;

    .line 73
    invoke-virtual {p0}, Lcom/king/zxing/CaptureFragment;->getViewfinderViewId()I

    move-result v0

    .line 74
    .local v0, "viewfinderViewId":I
    if-eqz v0, :cond_0

    .line 75
    iget-object v1, p0, Lcom/king/zxing/CaptureFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/king/zxing/ViewfinderView;

    iput-object v1, p0, Lcom/king/zxing/CaptureFragment;->viewfinderView:Lcom/king/zxing/ViewfinderView;

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/king/zxing/CaptureFragment;->getFlashlightId()I

    move-result v1

    .line 78
    .local v1, "ivFlashlightId":I
    if-eqz v1, :cond_1

    .line 79
    iget-object v2, p0, Lcom/king/zxing/CaptureFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/king/zxing/CaptureFragment;->ivFlashlight:Landroid/view/View;

    .line 80
    iget-object v2, p0, Lcom/king/zxing/CaptureFragment;->ivFlashlight:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 81
    iget-object v2, p0, Lcom/king/zxing/CaptureFragment;->ivFlashlight:Landroid/view/View;

    new-instance v3, Lcom/king/zxing/CaptureFragment$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/king/zxing/CaptureFragment$$ExternalSyntheticLambda0;-><init>(Lcom/king/zxing/CaptureFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    :cond_1
    invoke-virtual {p0}, Lcom/king/zxing/CaptureFragment;->initCameraScan()V

    .line 85
    invoke-virtual {p0}, Lcom/king/zxing/CaptureFragment;->startCamera()V

    .line 86
    return-void
.end method

.method public isContentView(I)Z
    .locals 1
    .param p1, "layoutId"    # I

    .line 172
    const/4 v0, 0x1

    return v0
.end method

.method synthetic lambda$initUI$0$com-king-zxing-CaptureFragment(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 81
    invoke-virtual {p0}, Lcom/king/zxing/CaptureFragment;->onClickFlashlight()V

    return-void
.end method

.method protected onClickFlashlight()V
    .locals 0

    .line 92
    invoke-virtual {p0}, Lcom/king/zxing/CaptureFragment;->toggleTorchState()V

    .line 93
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 60
    invoke-virtual {p0}, Lcom/king/zxing/CaptureFragment;->getLayoutId()I

    move-result v0

    .line 61
    .local v0, "layoutId":I
    invoke-virtual {p0, v0}, Lcom/king/zxing/CaptureFragment;->isContentView(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    invoke-virtual {p0, p1, p2}, Lcom/king/zxing/CaptureFragment;->createRootView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/king/zxing/CaptureFragment;->mRootView:Landroid/view/View;

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/king/zxing/CaptureFragment;->initUI()V

    .line 65
    iget-object v1, p0, Lcom/king/zxing/CaptureFragment;->mRootView:Landroid/view/View;

    return-object v1
.end method

.method public onDestroy()V
    .locals 0

    .line 162
    invoke-direct {p0}, Lcom/king/zxing/CaptureFragment;->releaseCamera()V

    .line 163
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 164
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 141
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 142
    const/16 v0, 0x86

    if-ne p1, v0, :cond_0

    .line 143
    invoke-virtual {p0, p2, p3}, Lcom/king/zxing/CaptureFragment;->requestCameraPermissionResult([Ljava/lang/String;[I)V

    .line 145
    :cond_0
    return-void
.end method

.method public onScanResultCallback(Lcom/google/zxing/Result;)Z
    .locals 1
    .param p1, "result"    # Lcom/google/zxing/Result;

    .line 234
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

    .line 153
    const-string v0, "android.permission.CAMERA"

    invoke-static {v0, p1, p2}, Lcom/king/zxing/util/PermissionUtils;->requestPermissionsResult(Ljava/lang/String;[Ljava/lang/String;[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/king/zxing/CaptureFragment;->startCamera()V

    goto :goto_0

    .line 156
    :cond_0
    invoke-virtual {p0}, Lcom/king/zxing/CaptureFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 158
    :goto_0
    return-void
.end method

.method public startCamera()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/king/zxing/CaptureFragment;->mCameraScan:Lcom/king/zxing/CameraScan;

    if-eqz v0, :cond_1

    .line 108
    invoke-virtual {p0}, Lcom/king/zxing/CaptureFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CAMERA"

    invoke-static {v0, v1}, Lcom/king/zxing/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/king/zxing/CaptureFragment;->mCameraScan:Lcom/king/zxing/CameraScan;

    invoke-virtual {v0}, Lcom/king/zxing/CameraScan;->startCamera()V

    goto :goto_0

    .line 111
    :cond_0
    const-string v0, "checkPermissionResult != PERMISSION_GRANTED"

    invoke-static {v0}, Lcom/king/zxing/util/LogUtils;->d(Ljava/lang/String;)V

    .line 112
    const/16 v0, 0x86

    invoke-static {p0, v1, v0}, Lcom/king/zxing/util/PermissionUtils;->requestPermission(Landroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 115
    :cond_1
    :goto_0
    return-void
.end method

.method protected toggleTorchState()V
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/king/zxing/CaptureFragment;->mCameraScan:Lcom/king/zxing/CameraScan;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/king/zxing/CaptureFragment;->mCameraScan:Lcom/king/zxing/CameraScan;

    invoke-virtual {v0}, Lcom/king/zxing/CameraScan;->isTorchEnabled()Z

    move-result v0

    .line 132
    .local v0, "isTorch":Z
    iget-object v1, p0, Lcom/king/zxing/CaptureFragment;->mCameraScan:Lcom/king/zxing/CameraScan;

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/king/zxing/CameraScan;->enableTorch(Z)V

    .line 133
    iget-object v1, p0, Lcom/king/zxing/CaptureFragment;->ivFlashlight:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/king/zxing/CaptureFragment;->ivFlashlight:Landroid/view/View;

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 137
    .end local v0    # "isTorch":Z
    :cond_0
    return-void
.end method
