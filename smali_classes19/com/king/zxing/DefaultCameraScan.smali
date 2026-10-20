.class public Lcom/king/zxing/DefaultCameraScan;
.super Lcom/king/zxing/CameraScan;
.source "DefaultCameraScan.java"


# static fields
.field private static final HOVER_TAP_SLOP:I = 0x14

.field private static final HOVER_TAP_TIMEOUT:I = 0x96


# instance fields
.field private flashlightView:Landroid/view/View;

.field private volatile isAnalyze:Z

.field private volatile isAnalyzeResult:Z

.field private isClickTap:Z

.field private mAmbientLightManager:Lcom/king/zxing/manager/AmbientLightManager;

.field private mAnalyzer:Lcom/king/zxing/analyze/Analyzer;

.field private mBeepManager:Lcom/king/zxing/manager/BeepManager;

.field private mCamera:Landroidx/camera/core/Camera;

.field private mCameraConfig:Lcom/king/zxing/config/CameraConfig;

.field private mCameraProviderFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/camera/lifecycle/ProcessCameraProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDownX:F

.field private mDownY:F

.field private mFragmentActivity:Landroidx/fragment/app/FragmentActivity;

.field private mLastAutoZoomTime:J

.field private mLastHoveTapTime:J

.field private mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

.field private mOnScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field private mOnScanResultCallback:Lcom/king/zxing/CameraScan$OnScanResultCallback;

.field private mOrientation:I

.field private mPreviewView:Landroidx/camera/view/PreviewView;

.field private mResultLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/google/zxing/Result;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenHeight:I

.field private mScreenWidth:I


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Landroidx/camera/view/PreviewView;)V
    .locals 1
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p2, "previewView"    # Landroidx/camera/view/PreviewView;

    .line 110
    invoke-direct {p0}, Lcom/king/zxing/CameraScan;-><init>()V

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/king/zxing/DefaultCameraScan;->isAnalyze:Z

    .line 118
    new-instance v0, Lcom/king/zxing/DefaultCameraScan$1;

    invoke-direct {v0, p0}, Lcom/king/zxing/DefaultCameraScan$1;-><init>(Lcom/king/zxing/DefaultCameraScan;)V

    iput-object v0, p0, Lcom/king/zxing/DefaultCameraScan;->mOnScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 111
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/king/zxing/DefaultCameraScan;->mFragmentActivity:Landroidx/fragment/app/FragmentActivity;

    .line 112
    iput-object p1, p0, Lcom/king/zxing/DefaultCameraScan;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 113
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/king/zxing/DefaultCameraScan;->mContext:Landroid/content/Context;

    .line 114
    iput-object p2, p0, Lcom/king/zxing/DefaultCameraScan;->mPreviewView:Landroidx/camera/view/PreviewView;

    .line 115
    invoke-direct {p0}, Lcom/king/zxing/DefaultCameraScan;->initData()V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Landroidx/camera/view/PreviewView;)V
    .locals 1
    .param p1, "activity"    # Landroidx/fragment/app/FragmentActivity;
    .param p2, "previewView"    # Landroidx/camera/view/PreviewView;

    .line 102
    invoke-direct {p0}, Lcom/king/zxing/CameraScan;-><init>()V

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/king/zxing/DefaultCameraScan;->isAnalyze:Z

    .line 118
    new-instance v0, Lcom/king/zxing/DefaultCameraScan$1;

    invoke-direct {v0, p0}, Lcom/king/zxing/DefaultCameraScan$1;-><init>(Lcom/king/zxing/DefaultCameraScan;)V

    iput-object v0, p0, Lcom/king/zxing/DefaultCameraScan;->mOnScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 103
    iput-object p1, p0, Lcom/king/zxing/DefaultCameraScan;->mFragmentActivity:Landroidx/fragment/app/FragmentActivity;

    .line 104
    iput-object p1, p0, Lcom/king/zxing/DefaultCameraScan;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 105
    iput-object p1, p0, Lcom/king/zxing/DefaultCameraScan;->mContext:Landroid/content/Context;

    .line 106
    iput-object p2, p0, Lcom/king/zxing/DefaultCameraScan;->mPreviewView:Landroidx/camera/view/PreviewView;

    .line 107
    invoke-direct {p0}, Lcom/king/zxing/DefaultCameraScan;->initData()V

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/king/zxing/DefaultCameraScan;)Landroidx/camera/core/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/king/zxing/DefaultCameraScan;

    .line 47
    iget-object v0, p0, Lcom/king/zxing/DefaultCameraScan;->mCamera:Landroidx/camera/core/Camera;

    return-object v0
.end method

.method private declared-synchronized handleAnalyzeResult(Lcom/google/zxing/Result;)V
    .locals 8
    .param p1, "result"    # Lcom/google/zxing/Result;

    monitor-enter p0

    .line 270
    :try_start_0
    iget-boolean v0, p0, Lcom/king/zxing/DefaultCameraScan;->isAnalyzeResult:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/king/zxing/DefaultCameraScan;->isAnalyze:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 273
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/king/zxing/DefaultCameraScan;->isAnalyzeResult:Z

    .line 274
    iget-object v1, p0, Lcom/king/zxing/DefaultCameraScan;->mBeepManager:Lcom/king/zxing/manager/BeepManager;

    if-eqz v1, :cond_1

    .line 275
    iget-object v1, p0, Lcom/king/zxing/DefaultCameraScan;->mBeepManager:Lcom/king/zxing/manager/BeepManager;

    invoke-virtual {v1}, Lcom/king/zxing/manager/BeepManager;->playBeepSoundAndVibrate()V

    .line 278
    .end local p0    # "this":Lcom/king/zxing/DefaultCameraScan;
    :cond_1
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v1

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/king/zxing/DefaultCameraScan;->isNeedAutoZoom()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-wide v1, p0, Lcom/king/zxing/DefaultCameraScan;->mLastAutoZoomTime:J

    const-wide/16 v3, 0x64

    add-long/2addr v1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gez v5, :cond_3

    .line 279
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v1

    .line 280
    .local v1, "points":[Lcom/google/zxing/ResultPoint;
    if-eqz v1, :cond_3

    array-length v2, v1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_3

    .line 281
    const/4 v2, 0x0

    aget-object v4, v1, v2

    aget-object v5, v1, v0

    invoke-static {v4, v5}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v4

    .line 282
    .local v4, "distance1":F
    move v5, v4

    .line 283
    .local v5, "maxDistance":F
    array-length v6, v1

    const/4 v7, 0x3

    if-lt v6, v7, :cond_2

    .line 284
    aget-object v0, v1, v0

    aget-object v6, v1, v3

    invoke-static {v0, v6}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v0

    .line 285
    .local v0, "distance2":F
    aget-object v2, v1, v2

    aget-object v3, v1, v3

    invoke-static {v2, v3}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v2

    .line 286
    .local v2, "distance3":F
    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    move v5, v3

    .line 288
    .end local v0    # "distance2":F
    .end local v2    # "distance3":F
    :cond_2
    float-to-int v0, v5

    invoke-direct {p0, v0, p1}, Lcom/king/zxing/DefaultCameraScan;->handleAutoZoom(ILcom/google/zxing/Result;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    .line 289
    monitor-exit p0

    return-void

    .line 294
    .end local v1    # "points":[Lcom/google/zxing/ResultPoint;
    .end local v4    # "distance1":F
    .end local v5    # "maxDistance":F
    :cond_3
    :try_start_1
    invoke-direct {p0, p1}, Lcom/king/zxing/DefaultCameraScan;->scanResultCallback(Lcom/google/zxing/Result;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 295
    monitor-exit p0

    return-void

    .line 271
    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    .line 269
    .end local p1    # "result":Lcom/google/zxing/Result;
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private handleAutoZoom(ILcom/google/zxing/Result;)Z
    .locals 3
    .param p1, "distance"    # I
    .param p2, "result"    # Lcom/google/zxing/Result;

    .line 298
    iget v0, p0, Lcom/king/zxing/DefaultCameraScan;->mScreenWidth:I

    iget v1, p0, Lcom/king/zxing/DefaultCameraScan;->mScreenHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 299
    .local v0, "size":I
    mul-int/lit8 v1, p1, 0x4

    if-ge v1, v0, :cond_0

    .line 300
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/king/zxing/DefaultCameraScan;->mLastAutoZoomTime:J

    .line 301
    invoke-virtual {p0}, Lcom/king/zxing/DefaultCameraScan;->zoomIn()V

    .line 302
    invoke-direct {p0, p2}, Lcom/king/zxing/DefaultCameraScan;->scanResultCallback(Lcom/google/zxing/Result;)V

    .line 303
    const/4 v1, 0x1

    return v1

    .line 305
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private handlePreviewViewClickTap(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 180
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 181
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 189
    :pswitch_0
    iget v0, p0, Lcom/king/zxing/DefaultCameraScan;->mDownX:F

    iget v2, p0, Lcom/king/zxing/DefaultCameraScan;->mDownY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v0

    const/high16 v2, 0x41a00000    # 20.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/king/zxing/DefaultCameraScan;->isClickTap:Z

    .line 190
    goto :goto_1

    .line 192
    :pswitch_1
    iget-boolean v0, p0, Lcom/king/zxing/DefaultCameraScan;->isClickTap:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/king/zxing/DefaultCameraScan;->mLastHoveTapTime:J

    const-wide/16 v2, 0x96

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 193
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/king/zxing/DefaultCameraScan;->startFocusAndMetering(FF)V

    goto :goto_1

    .line 183
    :pswitch_2
    iput-boolean v1, p0, Lcom/king/zxing/DefaultCameraScan;->isClickTap:Z

    .line 184
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/king/zxing/DefaultCameraScan;->mDownX:F

    .line 185
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/king/zxing/DefaultCameraScan;->mDownY:F

    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/king/zxing/DefaultCameraScan;->mLastHoveTapTime:J

    .line 187
    nop

    .line 198
    :cond_1
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initConfig()V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/king/zxing/DefaultCameraScan;->mCameraConfig:Lcom/king/zxing/config/CameraConfig;

    if-nez v0, :cond_0

    .line 212
    new-instance v0, Lcom/king/zxing/config/CameraConfig;

    invoke-direct {v0}, Lcom/king/zxing/config/CameraConfig;-><init>()V

    iput-object v0, p0, Lcom/king/zxing/DefaultCameraScan;->mCameraConfig:Lcom/king/zxing/config/CameraConfig;

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/king/zxing/DefaultCameraScan;->mAnalyzer:Lcom/king/zxing/analyze/Analyzer;

    if-nez v0, :cond_1

    .line 215
    new-instance v0, Lcom/king/zxing/analyze/MultiFormatAnalyzer;

    invoke-direct {v0}, Lcom/king/zxing/analyze/MultiFormatAnalyzer;-><init>()V

    iput-object v0, p0, Lcom/king/zxing/DefaultCameraScan;->mAnalyzer:Lcom/king/zxing/analyze/Analyzer;

    .line 217
    :cond_1
    return-void
.end method

.method private initData()V
    .locals 6

    .line 132
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/king/zxing/DefaultCameraScan;->mResultLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 133
    iget-object v0, p0, Lcom/king/zxing/DefaultCameraScan;->mResultLiveData:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/king/zxing/DefaultCameraScan;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    new-instance v2, Lcom/king/zxing/DefaultCameraScan$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/king/zxing/DefaultCameraScan$$ExternalSyntheticLambda2;-><init>(Lcom/king/zxing/DefaultCameraScan;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 141
    iget-object v0, p0, Lcom/king/zxing/DefaultCameraScan;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/king/zxing/DefaultCameraScan;->mOrientation:I

    .line 143
    new-instance v0, Landroid/view/ScaleGestureDetector;

    iget-object v1, p0, Lcom/king/zxing/DefaultCameraScan;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/king/zxing/DefaultCameraScan;->mOnScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    .line 144
    .local v0, "scaleGestureDetector":Landroid/view/ScaleGestureDetector;
    iget-object v1, p0, Lcom/king/zxing/DefaultCameraScan;->mPreviewView:Landroidx/camera/view/PreviewView;

    new-instance v2, Lcom/king/zxing/DefaultCameraScan$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0}, Lcom/king/zxing/DefaultCameraScan$$ExternalSyntheticLambda3;-><init>(Lcom/king/zxing/DefaultCameraScan;Landroid/view/ScaleGestureDetector;)V

    invoke-virtual {v1, v2}, Landroidx/camera/view/PreviewView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 152
    iget-object v1, p0, Lcom/king/zxing/DefaultCameraScan;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 153
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/king/zxing/DefaultCameraScan;->mScreenWidth:I

    .line 154
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/king/zxing/DefaultCameraScan;->mScreenHeight:I

    .line 156
    iget v2, p0, Lcom/king/zxing/DefaultCameraScan;->mScreenWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/king/zxing/DefaultCameraScan;->mScreenHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v3, v4, v2

    const-string v2, "displayMetrics:%dx%d"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/king/zxing/util/LogUtils;->d(Ljava/lang/String;)V

    .line 158
    new-instance v2, Lcom/king/zxing/manager/BeepManager;

    iget-object v3, p0, Lcom/king/zxing/DefaultCameraScan;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/king/zxing/manager/BeepManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/king/zxing/DefaultCameraScan;->mBeepManager:Lcom/king/zxing/manager/BeepManager;

    .line 159
    new-instance v2, Lcom/king/zxing/manager/AmbientLightManager;

    iget-object v3, p0, Lcom/king/zxing/DefaultCameraScan;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/king/zxing/manager/AmbientLightManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/king/zxing/DefaultCameraScan;->mAmbientLightManager:Lcom/king/zxing/manager/AmbientLightManager;

    .line 160
    iget-object v2, p0, Lcom/king/zxing/DefaultCameraScan;->mAmbientLightManager:Lcom/king/zxing/manager/AmbientLightManager;

    if-eqz v2, :cond_0

    .line 161
    iget-object v2, p0, Lcom/king/zxing/DefaultCameraScan;->mAmbientLightManager:Lcom/king/zxing/manager/AmbientLightManager;

    invoke-virtual {v2}, Lcom/king/zxing/manager/AmbientLightManager;->register()V

    .line 162
    iget-object v2, p0, Lcom/king/zxing/DefaultCameraScan;->mAmbientLightManager:Lcom/king/zxing/manager/AmbientLightManager;

    new-instance v3, Lcom/king/zxing/DefaultCameraScan$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lcom/king/zxing/DefaultCameraScan$$ExternalSyntheticLambda4;-><init>(Lcom/king/zxing/DefaultCameraScan;)V

    invoke-virtual {v2, v3}, Lcom/king/zxing/manager/AmbientLightManager;->setOnLightSensorEventListener(Lcom/king/zxing/manager/AmbientLightManager$OnLightSensorEventListener;)V

    .line 177
    :cond_0
    return-void
.end method

.method private scanResultCallback(Lcom/google/zxing/Result;)V
    .locals 3
    .param p1, "result"    # Lcom/google/zxing/Result;

    .line 309
    iget-object v0, p0, Lcom/king/zxing/DefaultCameraScan;->mOnScanResultCallback:Lcom/king/zxing/CameraScan$OnScanResultCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/king/zxing/DefaultCameraScan;->mOnScanResultCallback:Lcom/king/zxing/CameraScan$OnScanResultCallback;

    invoke-interface {v0, p1}, Lcom/king/zxing/CameraScan$OnScanResultCallback;->onScanResultCallback(Lcom/google/zxing/Result;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/king/zxing/DefaultCameraScan;->isAnalyzeResult:Z

    .line 316
    return-void

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/king/zxing/DefaultCameraScan;->mFragmentActivity:Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_1

    .line 320
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 321
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/king/zxing/DefaultCameraScan;->SCAN_RESULT:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    iget-object v1, p0, Lcom/king/zxing/DefaultCameraScan;->mFragmentActivity:Landroidx/fragment/app/FragmentActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 323
    iget-object v1, p0, Lcom/king/zxing/DefaultCameraScan;->mFragmentActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 325
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method private startFocusAndMetering(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 201
    iget-object v0, p0, Lcom/king/zxing/DefaultCameraScan;->mCamera:Landroidx/camera/core/Camera;

    if-eqz v0, :cond_0

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startFocusAndMetering:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/king/zxing/util/LogUtils;->d(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/king/zxing/DefaultCameraScan;->mPreviewView:Landroidx/camera/view/PreviewView;

    invoke-virtual {v0}, Landroidx/camera/view/PreviewView;->getMeteringPointFactory()Landroidx/camera/core/MeteringPointFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/camera/core/MeteringPointFactory;->createPoint(FF)Landroidx/camera/core/MeteringPoint;

    move-result-object v0

    .line 204
    .local v0, "point":Landroidx/camera/core/MeteringPoint;
    iget-object v1, p0, Lcom/king/zxing/DefaultCameraScan;->mCamera:Landroidx/camera/core/Camera;

    invoke-interface {v1}, Landroidx/camera/core/Camera;->getCameraControl()Landroidx/camera/core/CameraControl;

    move-result-object v1

    new-instance v2, Landroidx/camera/core/FocusMeteringAction$Builder;

    invoke-direct {v2, v0}, Landroidx/camera/core/FocusMeteringAction$Builder;-><init>(Landroidx/camera/core/MeteringPoint;)V

    invoke-virtual {v2}, Landroidx/camera/core/FocusMeteringAction$Builder;->build()Landroidx/camera/core/FocusMeteringAction;

    move-result-object v2

    invoke-interface {v1, v2}, Landroidx/camera/core/CameraControl;->startFocusAndMetering(Landroidx/camera/core/FocusMeteringAction;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 206
    .end local v0    # "point":Landroidx/camera/core/MeteringPoint;
    :cond_0
    return-void
.end method


# virtual methods
.method public bindFlashlightView(Landroid/view/View;)Lcom/king/zxing/CameraScan;
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 483
    iput-object p1, p0, Lcom/king/zxing/DefaultCameraScan;->flashlightView:Landroid/view/View;

    .line 484
    iget-object v0, p0, Lcom/king/zxing/DefaultCameraScan;->mAmbientLightManager:Lcom/king/zxing/manager/AmbientLightManager;

    if-eqz v0, :cond_1

    .line 485
    iget-object v0, p0, Lcom/king/zxing/DefaultCameraScan;->mAmbientLightManager:Lcom/king/zxing/manager/AmbientLightManager;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/king/zxing/manager/AmbientLightManager;->setLightSensorEnabled(Z)V

    .line 487
    :cond_1
    return-object p0
.end method

.method public enableTorch(Z)V
    .locals 1
    .param p1, "torch"    # Z

    .line 414
    iget-object v0, p0, Lcom/king/zxing/DefaultCameraScan;->mCamera:Landroidx/camera/core/Camera;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/king/zxing/DefaultCameraScan;->hasFlashUnit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/king/zxing/DefaultCameraScan;->mCamera:Landroidx/camera/core/Camera;

    invoke-interface {v0}, Landroidx/camera/core/Camera;->getCameraControl()Landroidx/camera/core/CameraControl;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/camera/core/CameraControl;->enableTorch(Z)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 417
    :cond_0
    return-void
.end method

.method public getCamera()Landroidx/camera/core/Camera;
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/king/zxing/DefaultCameraScan;->mCamera:Landroidx/camera/core/Camera;

    return-object v0
.end method

.method public hasFlashUnit()Z
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/king/zxing/DefaultCameraScan;->mCamera:Landroidx/camera/core/Camera;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/king/zxing/DefaultCameraScan;->mCamera:Landroidx/camera/core/Camera;

    invoke-interface {v0}, Landroidx/camera/core/Camera;->getCameraInfo()Landroidx/camera/core/CameraInfo;

    move-result-object v0

    invoke-interface {v0}, Landroidx/camera/core/CameraInfo;->hasFlashUnit()Z

    move-result v0

    return v0

    .line 436
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isTorchEnabled()Z
    .locals 3

    .line 421
    iget-object v0, p0, Lcom/king/zxing/DefaultCameraScan;->mCamera:Landroidx/camera/core/Camera;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 422
    iget-object v0, p0, Lcom/king/zxing/DefaultCameraScan;->mCamera:Landroidx/camera/core/Camera;

    invoke-interface {v0}, Landroidx/camera/core/Camera;->getCameraInfo()Landroidx/camera/core/CameraInfo;

    move-result-object v0

    invoke-interface {v0}, Landroidx/camera/core/CameraInfo;->getTorchState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 424
    :cond_1
    return v1
.end method

.method synthetic lambda$initData$0$com-king-zxing-DefaultCameraScan(Lcom/google/zxing/Result;)V
    .locals 1
    .param p1, "result"    # Lcom/google/zxing/Result;

    .line 134
    if-eqz p1, :cond_0

    .line 135
    invoke-direct {p0, p1}, Lcom/king/zxing/DefaultCameraScan;->handleAnalyzeResult(Lcom/google/zxing/Result;)V

    goto :goto_0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/king/zxing/DefaultCameraScan;->mOnScanResultCallback:Lcom/king/zxing/CameraScan$OnScanResultCallback;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/king/zxing/DefaultCameraScan;->mOnScanResultCallback:Lcom/king/zxing/CameraScan$OnScanResultCallback;

    invoke-interface {v0}, Lcom/king/zxing/CameraScan$OnScanResultCallback;->onScanResultFailure()V

    .line 139
    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$initData$1$com-king-zxing-DefaultCameraScan(Landroid/view/ScaleGestureDetector;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "scaleGestureDetector"    # Landroid/view/ScaleGestureDetector;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "event"    # Landroid/view/MotionEvent;

    .line 145
    invoke-direct {p0, p3}, Lcom/king/zxing/DefaultCameraScan;->handlePreviewViewClickTap(Landroid/view/MotionEvent;)V

    .line 146
    invoke-virtual {p0}, Lcom/king/zxing/DefaultCameraScan;->isNeedTouchZoom()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p1, p3}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 149
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method synthetic lambda$initData$2$com-king-zxing-DefaultCameraScan(ZF)V
    .locals 3
    .param p1, "dark"    # Z
    .param p2, "lightLux"    # F

    .line 163
    iget-object v0, p0, Lcom/king/zxing/DefaultCameraScan;->flashlightView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 164
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/king/zxing/DefaultCameraScan;->flashlightView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 166
    iget-object v1, p0, Lcom/king/zxing/DefaultCameraScan;->flashlightView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/king/zxing/DefaultCameraScan;->flashlightView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/king/zxing/DefaultCameraScan;->isTorchEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 169
    :cond_0
    iget-object v1, p0, Lcom/king/zxing/DefaultCameraScan;->flashlightView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/king/zxing/DefaultCameraScan;->isTorchEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 170
    iget-object v1, p0, Lcom/king/zxing/DefaultCameraScan;->flashlightView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 171
    iget-object v1, p0, Lcom/king/zxing/DefaultCameraScan;->flashlightView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 175
    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$null$3$com-king-zxing-DefaultCameraScan(Landroidx/camera/core/ImageProxy;)V
    .locals 2
    .param p1, "image"    # Landroidx/camera/core/ImageProxy;

    .line 246
    iget-boolean v0, p0, Lcom/king/zxing/DefaultCameraScan;->isAnalyze:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/king/zxing/DefaultCameraScan;->isAnalyzeResult:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/king/zxing/DefaultCameraScan;->mAnalyzer:Lcom/king/zxing/analyze/Analyzer;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/king/zxing/DefaultCameraScan;->mAnalyzer:Lcom/king/zxing/analyze/Analyzer;

    iget v1, p0, Lcom/king/zxing/DefaultCameraScan;->mOrientation:I

    invoke-interface {v0, p1, v1}, Lcom/king/zxing/analyze/Analyzer;->analyze(Landroidx/camera/core/ImageProxy;I)Lcom/google/zxing/Result;

    move-result-object v0

    .line 248
    .local v0, "result":Lcom/google/zxing/Result;
    iget-object v1, p0, Lcom/king/zxing/DefaultCameraScan;->mResultLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 250
    .end local v0    # "result":Lcom/google/zxing/Result;
    :cond_0
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->close()V

    .line 251
    return-void
.end method

.method synthetic lambda$startCamera$4$com-king-zxing-DefaultCameraScan()V
    .locals 7

    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/king/zxing/DefaultCameraScan;->mCameraConfig:Lcom/king/zxing/config/CameraConfig;

    new-instance v1, Landroidx/camera/core/Preview$Builder;

    invoke-direct {v1}, Landroidx/camera/core/Preview$Builder;-><init>()V

    invoke-virtual {v0, v1}, Lcom/king/zxing/config/CameraConfig;->options(Landroidx/camera/core/Preview$Builder;)Landroidx/camera/core/Preview;

    move-result-object v0

    .line 238
    .local v0, "preview":Landroidx/camera/core/Preview;
    iget-object v1, p0, Lcom/king/zxing/DefaultCameraScan;->mCameraConfig:Lcom/king/zxing/config/CameraConfig;

    new-instance v2, Landroidx/camera/core/CameraSelector$Builder;

    invoke-direct {v2}, Landroidx/camera/core/CameraSelector$Builder;-><init>()V

    invoke-virtual {v1, v2}, Lcom/king/zxing/config/CameraConfig;->options(Landroidx/camera/core/CameraSelector$Builder;)Landroidx/camera/core/CameraSelector;

    move-result-object v1

    .line 240
    .local v1, "cameraSelector":Landroidx/camera/core/CameraSelector;
    iget-object v2, p0, Lcom/king/zxing/DefaultCameraScan;->mPreviewView:Landroidx/camera/view/PreviewView;

    invoke-virtual {v2}, Landroidx/camera/view/PreviewView;->getSurfaceProvider()Landroidx/camera/core/Preview$SurfaceProvider;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/camera/core/Preview;->setSurfaceProvider(Landroidx/camera/core/Preview$SurfaceProvider;)V

    .line 243
    iget-object v2, p0, Lcom/king/zxing/DefaultCameraScan;->mCameraConfig:Lcom/king/zxing/config/CameraConfig;

    new-instance v3, Landroidx/camera/core/ImageAnalysis$Builder;

    invoke-direct {v3}, Landroidx/camera/core/ImageAnalysis$Builder;-><init>()V

    .line 244
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/camera/core/ImageAnalysis$Builder;->setBackpressureStrategy(I)Landroidx/camera/core/ImageAnalysis$Builder;

    move-result-object v3

    .line 243
    invoke-virtual {v2, v3}, Lcom/king/zxing/config/CameraConfig;->options(Landroidx/camera/core/ImageAnalysis$Builder;)Landroidx/camera/core/ImageAnalysis;

    move-result-object v2

    .line 245
    .local v2, "imageAnalysis":Landroidx/camera/core/ImageAnalysis;
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    new-instance v5, Lcom/king/zxing/DefaultCameraScan$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Lcom/king/zxing/DefaultCameraScan$$ExternalSyntheticLambda1;-><init>(Lcom/king/zxing/DefaultCameraScan;)V

    invoke-virtual {v2, v3, v5}, Landroidx/camera/core/ImageAnalysis;->setAnalyzer(Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageAnalysis$Analyzer;)V

    .line 252
    iget-object v3, p0, Lcom/king/zxing/DefaultCameraScan;->mCamera:Landroidx/camera/core/Camera;

    if-eqz v3, :cond_0

    .line 253
    iget-object v3, p0, Lcom/king/zxing/DefaultCameraScan;->mCameraProviderFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v3}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/lifecycle/ProcessCameraProvider;

    invoke-virtual {v3}, Landroidx/camera/lifecycle/ProcessCameraProvider;->unbindAll()V

    .line 256
    :cond_0
    iget-object v3, p0, Lcom/king/zxing/DefaultCameraScan;->mCameraProviderFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v3}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/lifecycle/ProcessCameraProvider;

    iget-object v5, p0, Lcom/king/zxing/DefaultCameraScan;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    const/4 v6, 0x2

    new-array v6, v6, [Landroidx/camera/core/UseCase;

    aput-object v0, v6, v4

    const/4 v4, 0x1

    aput-object v2, v6, v4

    invoke-virtual {v3, v5, v1, v6}, Landroidx/camera/lifecycle/ProcessCameraProvider;->bindToLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;[Landroidx/camera/core/UseCase;)Landroidx/camera/core/Camera;

    move-result-object v3

    iput-object v3, p0, Lcom/king/zxing/DefaultCameraScan;->mCamera:Landroidx/camera/core/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    .end local v0    # "preview":Landroidx/camera/core/Preview;
    .end local v1    # "cameraSelector":Landroidx/camera/core/CameraSelector;
    .end local v2    # "imageAnalysis":Landroidx/camera/core/ImageAnalysis;
    goto :goto_0

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/king/zxing/util/LogUtils;->e(Ljava/lang/Throwable;)V

    .line 261
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public lineZoomIn()V
    .locals 2

    .line 387
    iget-object v0, p0, Lcom/king/zxing/DefaultCameraScan;->mCamera:Landroidx/camera/core/Camera;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/king/zxing/DefaultCameraScan;->mCamera:Landroidx/camera/core/Camera;

    invoke-interface {v0}, Landroidx/camera/core/Camera;->getCameraInfo()Landroidx/camera/core/CameraInfo;

    move-result-object v0

    invoke-interface {v0}, Landroidx/camera/core/CameraInfo;->getZoomState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/ZoomState;

    invoke-interface {v0}, Landroidx/camera/core/ZoomState;->getLinearZoom()F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    add-float/2addr v0, v1

    .line 389
    .local v0, "zoom":F
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    .line 390
    iget-object v1, p0, Lcom/king/zxing/DefaultCameraScan;->mCamera:Landroidx/camera/core/Camera;

    invoke-interface {v1}, Landroidx/camera/core/Camera;->getCameraControl()Landroidx/camera/core/CameraControl;

    move-result-object v1

    invoke-interface {v1, v0}, Landroidx/camera/core/CameraControl;->setLinearZoom(F)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 393
    .end local v0    # "zoom":F
    :cond_0
    return-void
.end method

.method public lineZoomOut()V
    .locals 2

    .line 397
    iget-object v0, p0, Lcom/king/zxing/DefaultCameraScan;->mCamera:Landroidx/camera/core/Camera;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/king/zxing/DefaultCameraScan;->mCamera:Landroidx/camera/core/Camera;

    invoke-interface {v0}, Landroidx/camera/core/Camera;->getCameraInfo()Landroidx/camera/core/CameraInfo;

    move-result-object v0

    invoke-interface {v0}, Landroidx/camera/core/CameraInfo;->getZoomState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/ZoomState;

    invoke-interface {v0}, Landroidx/camera/core/ZoomState;->getLinearZoom()F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    sub-float/2addr v0, v1

    .line 399
    .local v0, "zoom":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    .line 400
    iget-object v1, p0, Lcom/king/zxing/DefaultCameraScan;->mCamera:Landroidx/camera/core/Camera;

    invoke-interface {v1}, Landroidx/camera/core/Camera;->getCameraControl()Landroidx/camera/core/CameraControl;

    move-result-object v1

    invoke-interface {v1, v0}, Landroidx/camera/core/CameraControl;->setLinearZoom(F)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 403
    .end local v0    # "zoom":F
    :cond_0
    return-void
.end method

.method public lineZoomTo(F)V
    .locals 1
    .param p1, "linearZoom"    # F

    .line 407
    iget-object v0, p0, Lcom/king/zxing/DefaultCameraScan;->mCamera:Landroidx/camera/core/Camera;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/king/zxing/DefaultCameraScan;->mCamera:Landroidx/camera/core/Camera;

    invoke-interface {v0}, Landroidx/camera/core/Camera;->getCameraControl()Landroidx/camera/core/CameraControl;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/camera/core/CameraControl;->setLinearZoom(F)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 410
    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 470
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/king/zxing/DefaultCameraScan;->isAnalyze:Z

    .line 471
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/king/zxing/DefaultCameraScan;->flashlightView:Landroid/view/View;

    .line 472
    iget-object v0, p0, Lcom/king/zxing/DefaultCameraScan;->mAmbientLightManager:Lcom/king/zxing/manager/AmbientLightManager;

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/king/zxing/DefaultCameraScan;->mAmbientLightManager:Lcom/king/zxing/manager/AmbientLightManager;

    invoke-virtual {v0}, Lcom/king/zxing/manager/AmbientLightManager;->unregister()V

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/king/zxing/DefaultCameraScan;->mBeepManager:Lcom/king/zxing/manager/BeepManager;

    if-eqz v0, :cond_1

    .line 476
    iget-object v0, p0, Lcom/king/zxing/DefaultCameraScan;->mBeepManager:Lcom/king/zxing/manager/BeepManager;

    invoke-virtual {v0}, Lcom/king/zxing/manager/BeepManager;->close()V

    .line 478
    :cond_1
    invoke-virtual {p0}, Lcom/king/zxing/DefaultCameraScan;->stopCamera()V

    .line 479
    return-void
.end method

.method public setAnalyzeImage(Z)Lcom/king/zxing/CameraScan;
    .locals 0
    .param p1, "analyze"    # Z

    .line 341
    iput-boolean p1, p0, Lcom/king/zxing/DefaultCameraScan;->isAnalyze:Z

    .line 342
    return-object p0
.end method

.method public setAnalyzer(Lcom/king/zxing/analyze/Analyzer;)Lcom/king/zxing/CameraScan;
    .locals 0
    .param p1, "analyzer"    # Lcom/king/zxing/analyze/Analyzer;

    .line 347
    iput-object p1, p0, Lcom/king/zxing/DefaultCameraScan;->mAnalyzer:Lcom/king/zxing/analyze/Analyzer;

    .line 348
    return-object p0
.end method

.method public setBrightLightLux(F)Lcom/king/zxing/CameraScan;
    .locals 1
    .param p1, "lightLux"    # F

    .line 498
    iget-object v0, p0, Lcom/king/zxing/DefaultCameraScan;->mAmbientLightManager:Lcom/king/zxing/manager/AmbientLightManager;

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/king/zxing/DefaultCameraScan;->mAmbientLightManager:Lcom/king/zxing/manager/AmbientLightManager;

    invoke-virtual {v0, p1}, Lcom/king/zxing/manager/AmbientLightManager;->setBrightLightLux(F)V

    .line 501
    :cond_0
    return-object p0
.end method

.method public setCameraConfig(Lcom/king/zxing/config/CameraConfig;)Lcom/king/zxing/CameraScan;
    .locals 0
    .param p1, "cameraConfig"    # Lcom/king/zxing/config/CameraConfig;

    .line 222
    if-eqz p1, :cond_0

    .line 223
    iput-object p1, p0, Lcom/king/zxing/DefaultCameraScan;->mCameraConfig:Lcom/king/zxing/config/CameraConfig;

    .line 225
    :cond_0
    return-object p0
.end method

.method public setDarkLightLux(F)Lcom/king/zxing/CameraScan;
    .locals 1
    .param p1, "lightLux"    # F

    .line 491
    iget-object v0, p0, Lcom/king/zxing/DefaultCameraScan;->mAmbientLightManager:Lcom/king/zxing/manager/AmbientLightManager;

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/king/zxing/DefaultCameraScan;->mAmbientLightManager:Lcom/king/zxing/manager/AmbientLightManager;

    invoke-virtual {v0, p1}, Lcom/king/zxing/manager/AmbientLightManager;->setDarkLightLux(F)V

    .line 494
    :cond_0
    return-object p0
.end method

.method public setOnScanResultCallback(Lcom/king/zxing/CameraScan$OnScanResultCallback;)Lcom/king/zxing/CameraScan;
    .locals 0
    .param p1, "callback"    # Lcom/king/zxing/CameraScan$OnScanResultCallback;

    .line 457
    iput-object p1, p0, Lcom/king/zxing/DefaultCameraScan;->mOnScanResultCallback:Lcom/king/zxing/CameraScan$OnScanResultCallback;

    .line 458
    return-object p0
.end method

.method public setPlayBeep(Z)Lcom/king/zxing/CameraScan;
    .locals 1
    .param p1, "playBeep"    # Z

    .line 449
    iget-object v0, p0, Lcom/king/zxing/DefaultCameraScan;->mBeepManager:Lcom/king/zxing/manager/BeepManager;

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/king/zxing/DefaultCameraScan;->mBeepManager:Lcom/king/zxing/manager/BeepManager;

    invoke-virtual {v0, p1}, Lcom/king/zxing/manager/BeepManager;->setPlayBeep(Z)V

    .line 452
    :cond_0
    return-object p0
.end method

.method public setVibrate(Z)Lcom/king/zxing/CameraScan;
    .locals 1
    .param p1, "vibrate"    # Z

    .line 441
    iget-object v0, p0, Lcom/king/zxing/DefaultCameraScan;->mBeepManager:Lcom/king/zxing/manager/BeepManager;

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/king/zxing/DefaultCameraScan;->mBeepManager:Lcom/king/zxing/manager/BeepManager;

    invoke-virtual {v0, p1}, Lcom/king/zxing/manager/BeepManager;->setVibrate(Z)V

    .line 444
    :cond_0
    return-object p0
.end method

.method public startCamera()V
    .locals 3

    .line 230
    invoke-direct {p0}, Lcom/king/zxing/DefaultCameraScan;->initConfig()V

    .line 231
    iget-object v0, p0, Lcom/king/zxing/DefaultCameraScan;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->getInstance(Landroid/content/Context;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/king/zxing/DefaultCameraScan;->mCameraProviderFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 232
    iget-object v0, p0, Lcom/king/zxing/DefaultCameraScan;->mCameraProviderFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v1, Lcom/king/zxing/DefaultCameraScan$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/king/zxing/DefaultCameraScan$$ExternalSyntheticLambda0;-><init>(Lcom/king/zxing/DefaultCameraScan;)V

    iget-object v2, p0, Lcom/king/zxing/DefaultCameraScan;->mContext:Landroid/content/Context;

    .line 261
    invoke-static {v2}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 232
    invoke-interface {v0, v1, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 262
    return-void
.end method

.method public stopCamera()V
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/king/zxing/DefaultCameraScan;->mCameraProviderFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v0, :cond_0

    .line 332
    :try_start_0
    iget-object v0, p0, Lcom/king/zxing/DefaultCameraScan;->mCameraProviderFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/lifecycle/ProcessCameraProvider;

    invoke-virtual {v0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->unbindAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    goto :goto_0

    .line 333
    :catch_0
    move-exception v0

    .line 334
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/king/zxing/util/LogUtils;->e(Ljava/lang/Throwable;)V

    .line 337
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public zoomIn()V
    .locals 3

    .line 353
    iget-object v0, p0, Lcom/king/zxing/DefaultCameraScan;->mCamera:Landroidx/camera/core/Camera;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/king/zxing/DefaultCameraScan;->mCamera:Landroidx/camera/core/Camera;

    invoke-interface {v0}, Landroidx/camera/core/Camera;->getCameraInfo()Landroidx/camera/core/CameraInfo;

    move-result-object v0

    invoke-interface {v0}, Landroidx/camera/core/CameraInfo;->getZoomState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/ZoomState;

    invoke-interface {v0}, Landroidx/camera/core/ZoomState;->getZoomRatio()F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    add-float/2addr v0, v1

    .line 355
    .local v0, "ratio":F
    iget-object v1, p0, Lcom/king/zxing/DefaultCameraScan;->mCamera:Landroidx/camera/core/Camera;

    invoke-interface {v1}, Landroidx/camera/core/Camera;->getCameraInfo()Landroidx/camera/core/CameraInfo;

    move-result-object v1

    invoke-interface {v1}, Landroidx/camera/core/CameraInfo;->getZoomState()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/ZoomState;

    invoke-interface {v1}, Landroidx/camera/core/ZoomState;->getMaxZoomRatio()F

    move-result v1

    .line 356
    .local v1, "maxRatio":F
    cmpg-float v2, v0, v1

    if-gtz v2, :cond_0

    .line 357
    iget-object v2, p0, Lcom/king/zxing/DefaultCameraScan;->mCamera:Landroidx/camera/core/Camera;

    invoke-interface {v2}, Landroidx/camera/core/Camera;->getCameraControl()Landroidx/camera/core/CameraControl;

    move-result-object v2

    invoke-interface {v2, v0}, Landroidx/camera/core/CameraControl;->setZoomRatio(F)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 360
    .end local v0    # "ratio":F
    .end local v1    # "maxRatio":F
    :cond_0
    return-void
.end method

.method public zoomOut()V
    .locals 3

    .line 364
    iget-object v0, p0, Lcom/king/zxing/DefaultCameraScan;->mCamera:Landroidx/camera/core/Camera;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/king/zxing/DefaultCameraScan;->mCamera:Landroidx/camera/core/Camera;

    invoke-interface {v0}, Landroidx/camera/core/Camera;->getCameraInfo()Landroidx/camera/core/CameraInfo;

    move-result-object v0

    invoke-interface {v0}, Landroidx/camera/core/CameraInfo;->getZoomState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/ZoomState;

    invoke-interface {v0}, Landroidx/camera/core/ZoomState;->getZoomRatio()F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    sub-float/2addr v0, v1

    .line 366
    .local v0, "ratio":F
    iget-object v1, p0, Lcom/king/zxing/DefaultCameraScan;->mCamera:Landroidx/camera/core/Camera;

    invoke-interface {v1}, Landroidx/camera/core/Camera;->getCameraInfo()Landroidx/camera/core/CameraInfo;

    move-result-object v1

    invoke-interface {v1}, Landroidx/camera/core/CameraInfo;->getZoomState()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/ZoomState;

    invoke-interface {v1}, Landroidx/camera/core/ZoomState;->getMinZoomRatio()F

    move-result v1

    .line 367
    .local v1, "minRatio":F
    cmpl-float v2, v0, v1

    if-ltz v2, :cond_0

    .line 368
    iget-object v2, p0, Lcom/king/zxing/DefaultCameraScan;->mCamera:Landroidx/camera/core/Camera;

    invoke-interface {v2}, Landroidx/camera/core/Camera;->getCameraControl()Landroidx/camera/core/CameraControl;

    move-result-object v2

    invoke-interface {v2, v0}, Landroidx/camera/core/CameraControl;->setZoomRatio(F)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 371
    .end local v0    # "ratio":F
    .end local v1    # "minRatio":F
    :cond_0
    return-void
.end method

.method public zoomTo(F)V
    .locals 5
    .param p1, "ratio"    # F

    .line 376
    iget-object v0, p0, Lcom/king/zxing/DefaultCameraScan;->mCamera:Landroidx/camera/core/Camera;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/king/zxing/DefaultCameraScan;->mCamera:Landroidx/camera/core/Camera;

    invoke-interface {v0}, Landroidx/camera/core/Camera;->getCameraInfo()Landroidx/camera/core/CameraInfo;

    move-result-object v0

    invoke-interface {v0}, Landroidx/camera/core/CameraInfo;->getZoomState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/ZoomState;

    .line 378
    .local v0, "zoomState":Landroidx/camera/core/ZoomState;
    invoke-interface {v0}, Landroidx/camera/core/ZoomState;->getMaxZoomRatio()F

    move-result v1

    .line 379
    .local v1, "maxRatio":F
    invoke-interface {v0}, Landroidx/camera/core/ZoomState;->getMinZoomRatio()F

    move-result v2

    .line 380
    .local v2, "minRatio":F
    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 381
    .local v3, "zoom":F
    iget-object v4, p0, Lcom/king/zxing/DefaultCameraScan;->mCamera:Landroidx/camera/core/Camera;

    invoke-interface {v4}, Landroidx/camera/core/Camera;->getCameraControl()Landroidx/camera/core/CameraControl;

    move-result-object v4

    invoke-interface {v4, v3}, Landroidx/camera/core/CameraControl;->setZoomRatio(F)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 383
    .end local v0    # "zoomState":Landroidx/camera/core/ZoomState;
    .end local v1    # "maxRatio":F
    .end local v2    # "minRatio":F
    .end local v3    # "zoom":F
    :cond_0
    return-void
.end method
