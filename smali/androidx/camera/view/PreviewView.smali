.class public final Landroidx/camera/view/PreviewView;
.super Landroid/widget/FrameLayout;
.source "PreviewView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/view/PreviewView$PinchToZoomOnScaleGestureListener;,
        Landroidx/camera/view/PreviewView$StreamState;,
        Landroidx/camera/view/PreviewView$ScaleType;,
        Landroidx/camera/view/PreviewView$ImplementationMode;
    }
.end annotation


# static fields
.field static final DEFAULT_BACKGROUND_COLOR:I = 0x106000c

.field private static final DEFAULT_IMPL_MODE:Landroidx/camera/view/PreviewView$ImplementationMode;

.field private static final TAG:Ljava/lang/String; = "PreviewView"


# instance fields
.field final mActiveStreamStateObserver:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroidx/camera/view/PreviewStreamStateObserver;",
            ">;"
        }
    .end annotation
.end field

.field mCameraController:Landroidx/camera/view/CameraController;

.field mImplementation:Landroidx/camera/view/PreviewViewImplementation;

.field mImplementationMode:Landroidx/camera/view/PreviewView$ImplementationMode;

.field private final mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field final mPreviewStreamStateLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Landroidx/camera/view/PreviewView$StreamState;",
            ">;"
        }
    .end annotation
.end field

.field final mPreviewTransform:Landroidx/camera/view/PreviewTransformation;

.field mPreviewViewMeteringPointFactory:Landroidx/camera/view/PreviewViewMeteringPointFactory;

.field private final mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field final mSurfaceProvider:Landroidx/camera/core/Preview$SurfaceProvider;

.field private mTouchUpEvent:Landroid/view/MotionEvent;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 105
    sget-object v0, Landroidx/camera/view/PreviewView$ImplementationMode;->PERFORMANCE:Landroidx/camera/view/PreviewView$ImplementationMode;

    sput-object v0, Landroidx/camera/view/PreviewView;->DEFAULT_IMPL_MODE:Landroidx/camera/view/PreviewView$ImplementationMode;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 213
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/camera/view/PreviewView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 214
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 218
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/camera/view/PreviewView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 219
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 223
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/camera/view/PreviewView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 224
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr",
            "defStyleRes"
        }
    .end annotation

    .line 229
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 108
    sget-object v0, Landroidx/camera/view/PreviewView;->DEFAULT_IMPL_MODE:Landroidx/camera/view/PreviewView$ImplementationMode;

    iput-object v0, p0, Landroidx/camera/view/PreviewView;->mImplementationMode:Landroidx/camera/view/PreviewView$ImplementationMode;

    .line 116
    new-instance v0, Landroidx/camera/view/PreviewTransformation;

    invoke-direct {v0}, Landroidx/camera/view/PreviewTransformation;-><init>()V

    iput-object v0, p0, Landroidx/camera/view/PreviewView;->mPreviewTransform:Landroidx/camera/view/PreviewTransformation;

    .line 120
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Landroidx/camera/view/PreviewView$StreamState;->IDLE:Landroidx/camera/view/PreviewView$StreamState;

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/camera/view/PreviewView;->mPreviewStreamStateLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 126
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Landroidx/camera/view/PreviewView;->mActiveStreamStateObserver:Ljava/util/concurrent/atomic/AtomicReference;

    .line 134
    new-instance v0, Landroidx/camera/view/PreviewViewMeteringPointFactory;

    iget-object v1, p0, Landroidx/camera/view/PreviewView;->mPreviewTransform:Landroidx/camera/view/PreviewTransformation;

    invoke-direct {v0, v1}, Landroidx/camera/view/PreviewViewMeteringPointFactory;-><init>(Landroidx/camera/view/PreviewTransformation;)V

    iput-object v0, p0, Landroidx/camera/view/PreviewView;->mPreviewViewMeteringPointFactory:Landroidx/camera/view/PreviewViewMeteringPointFactory;

    .line 145
    new-instance v0, Landroidx/camera/view/PreviewView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroidx/camera/view/PreviewView$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/view/PreviewView;)V

    iput-object v0, p0, Landroidx/camera/view/PreviewView;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 156
    new-instance v0, Landroidx/camera/view/PreviewView$1;

    invoke-direct {v0, p0}, Landroidx/camera/view/PreviewView$1;-><init>(Landroidx/camera/view/PreviewView;)V

    iput-object v0, p0, Landroidx/camera/view/PreviewView;->mSurfaceProvider:Landroidx/camera/core/Preview$SurfaceProvider;

    .line 230
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 231
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Landroidx/camera/view/R$styleable;->PreviewView:[I

    invoke-virtual {v0, p2, v1, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 233
    .local v0, "attributes":Landroid/content/res/TypedArray;
    sget-object v4, Landroidx/camera/view/R$styleable;->PreviewView:[I

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, v0

    move v7, p3

    move v8, p4

    invoke-static/range {v2 .. v8}, Landroidx/core/view/ViewCompat;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 237
    :try_start_4d
    sget v1, Landroidx/camera/view/R$styleable;->PreviewView_scaleType:I

    iget-object v2, p0, Landroidx/camera/view/PreviewView;->mPreviewTransform:Landroidx/camera/view/PreviewTransformation;

    .line 239
    invoke-virtual {v2}, Landroidx/camera/view/PreviewTransformation;->getScaleType()Landroidx/camera/view/PreviewView$ScaleType;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/camera/view/PreviewView$ScaleType;->getId()I

    move-result v2

    .line 237
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    .line 240
    .local v1, "scaleTypeId":I
    invoke-static {v1}, Landroidx/camera/view/PreviewView$ScaleType;->fromId(I)Landroidx/camera/view/PreviewView$ScaleType;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidx/camera/view/PreviewView;->setScaleType(Landroidx/camera/view/PreviewView$ScaleType;)V

    .line 242
    sget v2, Landroidx/camera/view/R$styleable;->PreviewView_implementationMode:I

    sget-object v3, Landroidx/camera/view/PreviewView;->DEFAULT_IMPL_MODE:Landroidx/camera/view/PreviewView$ImplementationMode;

    .line 244
    invoke-virtual {v3}, Landroidx/camera/view/PreviewView$ImplementationMode;->getId()I

    move-result v3

    .line 243
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    .line 245
    .local v2, "implementationModeId":I
    invoke-static {v2}, Landroidx/camera/view/PreviewView$ImplementationMode;->fromId(I)Landroidx/camera/view/PreviewView$ImplementationMode;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroidx/camera/view/PreviewView;->setImplementationMode(Landroidx/camera/view/PreviewView$ImplementationMode;)V
    :try_end_77
    .catchall {:try_start_4d .. :try_end_77} :catchall_9c

    .line 247
    .end local v1    # "scaleTypeId":I
    .end local v2    # "implementationModeId":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 248
    nop

    .line 250
    new-instance v1, Landroid/view/ScaleGestureDetector;

    new-instance v2, Landroidx/camera/view/PreviewView$PinchToZoomOnScaleGestureListener;

    invoke-direct {v2, p0}, Landroidx/camera/view/PreviewView$PinchToZoomOnScaleGestureListener;-><init>(Landroidx/camera/view/PreviewView;)V

    invoke-direct {v1, p1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Landroidx/camera/view/PreviewView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 255
    invoke-virtual {p0}, Landroidx/camera/view/PreviewView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_9b

    .line 256
    invoke-virtual {p0}, Landroidx/camera/view/PreviewView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x106000c

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/camera/view/PreviewView;->setBackgroundColor(I)V

    .line 258
    :cond_9b
    return-void

    .line 247
    :catchall_9c
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 248
    throw v1
.end method

.method private attachToControllerIfReady(Z)V
    .registers 7
    .param p1, "shouldFailSilently"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shouldFailSilently"
        }
    .end annotation

    .line 887
    invoke-virtual {p0}, Landroidx/camera/view/PreviewView;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 888
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {p0}, Landroidx/camera/view/PreviewView;->getViewPort()Landroidx/camera/core/ViewPort;

    move-result-object v1

    .line 889
    .local v1, "viewPort":Landroidx/camera/core/ViewPort;
    iget-object v2, p0, Landroidx/camera/view/PreviewView;->mCameraController:Landroidx/camera/view/CameraController;

    if-eqz v2, :cond_2e

    if-eqz v1, :cond_2e

    invoke-virtual {p0}, Landroidx/camera/view/PreviewView;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_2e

    if-eqz v0, :cond_2e

    .line 892
    :try_start_16
    iget-object v2, p0, Landroidx/camera/view/PreviewView;->mCameraController:Landroidx/camera/view/CameraController;

    invoke-virtual {p0}, Landroidx/camera/view/PreviewView;->getSurfaceProvider()Landroidx/camera/core/Preview$SurfaceProvider;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v0}, Landroidx/camera/view/CameraController;->attachPreviewSurface(Landroidx/camera/core/Preview$SurfaceProvider;Landroidx/camera/core/ViewPort;Landroid/view/Display;)V
    :try_end_1f
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_1f} :catch_20

    .line 901
    goto :goto_2e

    .line 893
    :catch_20
    move-exception v2

    .line 894
    .local v2, "ex":Ljava/lang/IllegalStateException;
    if-eqz p1, :cond_2d

    .line 897
    const-string v3, "PreviewView"

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2e

    .line 899
    :cond_2d
    throw v2

    .line 903
    .end local v2    # "ex":Ljava/lang/IllegalStateException;
    :cond_2e
    :goto_2e
    return-void
.end method

.method private getViewPortScaleType()I
    .registers 4

    .line 566
    sget-object v0, Landroidx/camera/view/PreviewView$2;->$SwitchMap$androidx$camera$view$PreviewView$ScaleType:[I

    invoke-virtual {p0}, Landroidx/camera/view/PreviewView;->getScaleType()Landroidx/camera/view/PreviewView$ScaleType;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/camera/view/PreviewView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_34

    .line 580
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected scale type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/camera/view/PreviewView;->getScaleType()Landroidx/camera/view/PreviewView$ScaleType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 578
    :pswitch_2c
    const/4 v0, 0x3

    return v0

    .line 572
    :pswitch_2e
    const/4 v0, 0x0

    return v0

    .line 570
    :pswitch_30
    const/4 v0, 0x1

    return v0

    .line 568
    :pswitch_32
    const/4 v0, 0x2

    return v0

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_32
        :pswitch_30
        :pswitch_2e
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
    .end packed-switch
.end method

.method static shouldUseTextureView(Landroidx/camera/core/SurfaceRequest;Landroidx/camera/view/PreviewView$ImplementationMode;)Z
    .registers 8
    .param p0, "surfaceRequest"    # Landroidx/camera/core/SurfaceRequest;
    .param p1, "implementationMode"    # Landroidx/camera/view/PreviewView$ImplementationMode;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "surfaceRequest",
            "implementationMode"
        }
    .end annotation

    .line 599
    invoke-virtual {p0}, Landroidx/camera/core/SurfaceRequest;->getCamera()Landroidx/camera/core/impl/CameraInternal;

    move-result-object v0

    invoke-interface {v0}, Landroidx/camera/core/impl/CameraInternal;->getCameraInfoInternal()Landroidx/camera/core/impl/CameraInfoInternal;

    move-result-object v0

    .line 600
    invoke-interface {v0}, Landroidx/camera/core/impl/CameraInfoInternal;->getImplementationType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "androidx.camera.camera2.legacy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 601
    .local v0, "isLegacyDevice":Z
    const-class v1, Landroidx/camera/view/internal/compat/quirk/SurfaceViewStretchedQuirk;

    invoke-static {v1}, Landroidx/camera/view/internal/compat/quirk/DeviceQuirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1e

    const/4 v1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    .line 602
    .local v1, "hasSurfaceViewQuirk":Z
    :goto_1f
    invoke-virtual {p0}, Landroidx/camera/core/SurfaceRequest;->isRGBA8888Required()Z

    move-result v4

    if-nez v4, :cond_56

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-le v4, v5, :cond_56

    if-nez v0, :cond_56

    if-eqz v1, :cond_30

    goto :goto_56

    .line 608
    :cond_30
    sget-object v4, Landroidx/camera/view/PreviewView$2;->$SwitchMap$androidx$camera$view$PreviewView$ImplementationMode:[I

    invoke-virtual {p1}, Landroidx/camera/view/PreviewView$ImplementationMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_58

    .line 614
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid implementation mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 612
    :pswitch_54
    return v2

    .line 610
    :pswitch_55
    return v3

    .line 606
    :cond_56
    :goto_56
    return v3

    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_55
        :pswitch_54
    .end packed-switch
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .line 482
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 483
    iget-object v0, p0, Landroidx/camera/view/PreviewView;->mImplementation:Landroidx/camera/view/PreviewViewImplementation;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_f

    :cond_9
    iget-object v0, p0, Landroidx/camera/view/PreviewView;->mImplementation:Landroidx/camera/view/PreviewViewImplementation;

    invoke-virtual {v0}, Landroidx/camera/view/PreviewViewImplementation;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_f
    return-object v0
.end method

.method public getController()Landroidx/camera/view/CameraController;
    .registers 2

    .line 833
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 834
    iget-object v0, p0, Landroidx/camera/view/PreviewView;->mCameraController:Landroidx/camera/view/CameraController;

    return-object v0
.end method

.method public getImplementationMode()Landroidx/camera/view/PreviewView$ImplementationMode;
    .registers 2

    .line 346
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 347
    iget-object v0, p0, Landroidx/camera/view/PreviewView;->mImplementationMode:Landroidx/camera/view/PreviewView$ImplementationMode;

    return-object v0
.end method

.method public getMeteringPointFactory()Landroidx/camera/core/MeteringPointFactory;
    .registers 2

    .line 432
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 433
    iget-object v0, p0, Landroidx/camera/view/PreviewView;->mPreviewViewMeteringPointFactory:Landroidx/camera/view/PreviewViewMeteringPointFactory;

    return-object v0
.end method

.method public getOutputTransform()Landroidx/camera/view/transform/OutputTransform;
    .registers 7

    .line 856
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 857
    const/4 v0, 0x0

    .line 859
    .local v0, "matrix":Landroid/graphics/Matrix;
    :try_start_4
    iget-object v1, p0, Landroidx/camera/view/PreviewView;->mPreviewTransform:Landroidx/camera/view/PreviewTransformation;

    new-instance v2, Landroid/util/Size;

    .line 860
    invoke-virtual {p0}, Landroidx/camera/view/PreviewView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroidx/camera/view/PreviewView;->getHeight()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {p0}, Landroidx/camera/view/PreviewView;->getLayoutDirection()I

    move-result v3

    .line 859
    invoke-virtual {v1, v2, v3}, Landroidx/camera/view/PreviewTransformation;->getSurfaceToPreviewViewMatrix(Landroid/util/Size;I)Landroid/graphics/Matrix;

    move-result-object v1
    :try_end_1b
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_1b} :catch_1d

    move-object v0, v1

    .line 863
    goto :goto_1e

    .line 861
    :catch_1d
    move-exception v1

    .line 865
    :goto_1e
    iget-object v1, p0, Landroidx/camera/view/PreviewView;->mPreviewTransform:Landroidx/camera/view/PreviewTransformation;

    invoke-virtual {v1}, Landroidx/camera/view/PreviewTransformation;->getSurfaceCropRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 866
    .local v1, "surfaceCropRect":Landroid/graphics/Rect;
    const-string v2, "PreviewView"

    if-eqz v0, :cond_58

    if-nez v1, :cond_2b

    goto :goto_58

    .line 871
    :cond_2b
    invoke-static {v1}, Landroidx/camera/view/TransformUtils;->getNormalizedToBuffer(Landroid/graphics/Rect;)Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 874
    iget-object v3, p0, Landroidx/camera/view/PreviewView;->mImplementation:Landroidx/camera/view/PreviewViewImplementation;

    instance-of v3, v3, Landroidx/camera/view/TextureViewImplementation;

    if-eqz v3, :cond_40

    .line 875
    invoke-virtual {p0}, Landroidx/camera/view/PreviewView;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    goto :goto_45

    .line 877
    :cond_40
    const-string v3, "PreviewView needs to be in COMPATIBLE mode for the transform to work correctly."

    invoke-static {v2, v3}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    :goto_45
    new-instance v2, Landroidx/camera/view/transform/OutputTransform;

    new-instance v3, Landroid/util/Size;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 882
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/util/Size;-><init>(II)V

    invoke-direct {v2, v0, v3}, Landroidx/camera/view/transform/OutputTransform;-><init>(Landroid/graphics/Matrix;Landroid/util/Size;)V

    .line 881
    return-object v2

    .line 867
    :cond_58
    :goto_58
    const-string v3, "Transform info is not ready"

    invoke-static {v2, v3}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    const/4 v2, 0x0

    return-object v2
.end method

.method public getPreviewStreamState()Landroidx/lifecycle/LiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Landroidx/camera/view/PreviewView$StreamState;",
            ">;"
        }
    .end annotation

    .line 457
    iget-object v0, p0, Landroidx/camera/view/PreviewView;->mPreviewStreamStateLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getScaleType()Landroidx/camera/view/PreviewView$ScaleType;
    .registers 2

    .line 406
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 407
    iget-object v0, p0, Landroidx/camera/view/PreviewView;->mPreviewTransform:Landroidx/camera/view/PreviewTransformation;

    invoke-virtual {v0}, Landroidx/camera/view/PreviewTransformation;->getScaleType()Landroidx/camera/view/PreviewView$ScaleType;

    move-result-object v0

    return-object v0
.end method

.method public getSurfaceProvider()Landroidx/camera/core/Preview$SurfaceProvider;
    .registers 2

    .line 367
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 368
    iget-object v0, p0, Landroidx/camera/view/PreviewView;->mSurfaceProvider:Landroidx/camera/core/Preview$SurfaceProvider;

    return-object v0
.end method

.method public getViewPort()Landroidx/camera/core/ViewPort;
    .registers 2

    .line 501
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 502
    invoke-virtual {p0}, Landroidx/camera/view/PreviewView;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_b

    .line 504
    const/4 v0, 0x0

    return-object v0

    .line 506
    :cond_b
    invoke-virtual {p0}, Landroidx/camera/view/PreviewView;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/camera/view/PreviewView;->getViewPort(I)Landroidx/camera/core/ViewPort;

    move-result-object v0

    return-object v0
.end method

.method public getViewPort(I)Landroidx/camera/core/ViewPort;
    .registers 6
    .param p1, "targetRotation"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "targetRotation"
        }
    .end annotation

    .line 552
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 553
    invoke-virtual {p0}, Landroidx/camera/view/PreviewView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_37

    invoke-virtual {p0}, Landroidx/camera/view/PreviewView;->getHeight()I

    move-result v0

    if-nez v0, :cond_10

    goto :goto_37

    .line 556
    :cond_10
    new-instance v0, Landroidx/camera/core/ViewPort$Builder;

    new-instance v1, Landroid/util/Rational;

    invoke-virtual {p0}, Landroidx/camera/view/PreviewView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroidx/camera/view/PreviewView;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/util/Rational;-><init>(II)V

    invoke-direct {v0, v1, p1}, Landroidx/camera/core/ViewPort$Builder;-><init>(Landroid/util/Rational;I)V

    .line 557
    invoke-direct {p0}, Landroidx/camera/view/PreviewView;->getViewPortScaleType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/camera/core/ViewPort$Builder;->setScaleType(I)Landroidx/camera/core/ViewPort$Builder;

    move-result-object v0

    .line 558
    invoke-virtual {p0}, Landroidx/camera/view/PreviewView;->getLayoutDirection()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/camera/core/ViewPort$Builder;->setLayoutDirection(I)Landroidx/camera/core/ViewPort$Builder;

    move-result-object v0

    .line 559
    invoke-virtual {v0}, Landroidx/camera/core/ViewPort$Builder;->build()Landroidx/camera/core/ViewPort;

    move-result-object v0

    .line 556
    return-object v0

    .line 554
    :cond_37
    :goto_37
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$new$0$androidx-camera-view-PreviewView(Landroid/view/View;IIIIIIII)V
    .registers 13
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .line 147
    sub-int v0, p4, p2

    sub-int v1, p8, p6

    const/4 v2, 0x1

    if-ne v0, v1, :cond_10

    sub-int v0, p5, p3

    sub-int v1, p9, p7

    if-eq v0, v1, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    .line 149
    .local v0, "isSizeChanged":Z
    :goto_11
    if-eqz v0, :cond_19

    .line 150
    invoke-virtual {p0}, Landroidx/camera/view/PreviewView;->redrawPreview()V

    .line 151
    invoke-direct {p0, v2}, Landroidx/camera/view/PreviewView;->attachToControllerIfReady(Z)V

    .line 153
    :cond_19
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .line 262
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 263
    iget-object v0, p0, Landroidx/camera/view/PreviewView;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0, v0}, Landroidx/camera/view/PreviewView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 264
    iget-object v0, p0, Landroidx/camera/view/PreviewView;->mImplementation:Landroidx/camera/view/PreviewViewImplementation;

    if-eqz v0, :cond_11

    .line 265
    iget-object v0, p0, Landroidx/camera/view/PreviewView;->mImplementation:Landroidx/camera/view/PreviewViewImplementation;

    invoke-virtual {v0}, Landroidx/camera/view/PreviewViewImplementation;->onAttachedToWindow()V

    .line 267
    :cond_11
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/camera/view/PreviewView;->attachToControllerIfReady(Z)V

    .line 268
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 272
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 273
    iget-object v0, p0, Landroidx/camera/view/PreviewView;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0, v0}, Landroidx/camera/view/PreviewView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 274
    iget-object v0, p0, Landroidx/camera/view/PreviewView;->mImplementation:Landroidx/camera/view/PreviewViewImplementation;

    if-eqz v0, :cond_11

    .line 275
    iget-object v0, p0, Landroidx/camera/view/PreviewView;->mImplementation:Landroidx/camera/view/PreviewViewImplementation;

    invoke-virtual {v0}, Landroidx/camera/view/PreviewViewImplementation;->onDetachedFromWindow()V

    .line 277
    :cond_11
    iget-object v0, p0, Landroidx/camera/view/PreviewView;->mCameraController:Landroidx/camera/view/CameraController;

    if-eqz v0, :cond_1a

    .line 278
    iget-object v0, p0, Landroidx/camera/view/PreviewView;->mCameraController:Landroidx/camera/view/CameraController;

    invoke-virtual {v0}, Landroidx/camera/view/CameraController;->clearPreviewSurface()V

    .line 280
    :cond_1a
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11
    .param p1, "event"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 284
    iget-object v0, p0, Landroidx/camera/view/PreviewView;->mCameraController:Landroidx/camera/view/CameraController;

    if-nez v0, :cond_9

    .line 286
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 288
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 289
    .local v0, "isSingleTouch":Z
    :goto_14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_1c

    const/4 v3, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v3, 0x0

    .line 290
    .local v3, "isUpEvent":Z
    :goto_1d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 291
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-long v6, v6

    cmp-long v8, v4, v6

    if-gez v8, :cond_31

    const/4 v4, 0x1

    goto :goto_32

    :cond_31
    const/4 v4, 0x0

    .line 292
    .local v4, "notALongPress":Z
    :goto_32
    if-eqz v0, :cond_3e

    if-eqz v3, :cond_3e

    if-eqz v4, :cond_3e

    .line 295
    iput-object p1, p0, Landroidx/camera/view/PreviewView;->mTouchUpEvent:Landroid/view/MotionEvent;

    .line 296
    invoke-virtual {p0}, Landroidx/camera/view/PreviewView;->performClick()Z

    .line 299
    return v2

    .line 301
    :cond_3e
    iget-object v5, p0, Landroidx/camera/view/PreviewView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v5, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-nez v5, :cond_4c

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_4d

    :cond_4c
    const/4 v1, 0x1

    :cond_4d
    return v1
.end method

.method public performClick()Z
    .registers 5

    .line 306
    iget-object v0, p0, Landroidx/camera/view/PreviewView;->mCameraController:Landroidx/camera/view/CameraController;

    if-eqz v0, :cond_30

    .line 308
    iget-object v0, p0, Landroidx/camera/view/PreviewView;->mTouchUpEvent:Landroid/view/MotionEvent;

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroidx/camera/view/PreviewView;->mTouchUpEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    goto :goto_17

    :cond_11
    invoke-virtual {p0}, Landroidx/camera/view/PreviewView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    .line 309
    .local v0, "x":F
    :goto_17
    iget-object v2, p0, Landroidx/camera/view/PreviewView;->mTouchUpEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_22

    iget-object v1, p0, Landroidx/camera/view/PreviewView;->mTouchUpEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    goto :goto_29

    :cond_22
    invoke-virtual {p0}, Landroidx/camera/view/PreviewView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v1

    .line 310
    .local v1, "y":F
    :goto_29
    iget-object v2, p0, Landroidx/camera/view/PreviewView;->mCameraController:Landroidx/camera/view/CameraController;

    iget-object v3, p0, Landroidx/camera/view/PreviewView;->mPreviewViewMeteringPointFactory:Landroidx/camera/view/PreviewViewMeteringPointFactory;

    invoke-virtual {v2, v3, v0, v1}, Landroidx/camera/view/CameraController;->onTapToFocus(Landroidx/camera/core/MeteringPointFactory;FF)V

    .line 312
    .end local v0    # "x":F
    .end local v1    # "y":F
    :cond_30
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/camera/view/PreviewView;->mTouchUpEvent:Landroid/view/MotionEvent;

    .line 313
    invoke-super {p0}, Landroid/widget/FrameLayout;->performClick()Z

    move-result v0

    return v0
.end method

.method redrawPreview()V
    .registers 5

    .line 587
    iget-object v0, p0, Landroidx/camera/view/PreviewView;->mImplementation:Landroidx/camera/view/PreviewViewImplementation;

    if-eqz v0, :cond_9

    .line 588
    iget-object v0, p0, Landroidx/camera/view/PreviewView;->mImplementation:Landroidx/camera/view/PreviewViewImplementation;

    invoke-virtual {v0}, Landroidx/camera/view/PreviewViewImplementation;->redrawPreview()V

    .line 590
    :cond_9
    iget-object v0, p0, Landroidx/camera/view/PreviewView;->mPreviewViewMeteringPointFactory:Landroidx/camera/view/PreviewViewMeteringPointFactory;

    new-instance v1, Landroid/util/Size;

    invoke-virtual {p0}, Landroidx/camera/view/PreviewView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroidx/camera/view/PreviewView;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    .line 591
    invoke-virtual {p0}, Landroidx/camera/view/PreviewView;->getLayoutDirection()I

    move-result v2

    .line 590
    invoke-virtual {v0, v1, v2}, Landroidx/camera/view/PreviewViewMeteringPointFactory;->recalculate(Landroid/util/Size;I)V

    .line 592
    return-void
.end method

.method public setController(Landroidx/camera/view/CameraController;)V
    .registers 3
    .param p1, "cameraController"    # Landroidx/camera/view/CameraController;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraController"
        }
    .end annotation

    .line 817
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 818
    iget-object v0, p0, Landroidx/camera/view/PreviewView;->mCameraController:Landroidx/camera/view/CameraController;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroidx/camera/view/PreviewView;->mCameraController:Landroidx/camera/view/CameraController;

    if-eq v0, p1, :cond_10

    .line 821
    iget-object v0, p0, Landroidx/camera/view/PreviewView;->mCameraController:Landroidx/camera/view/CameraController;

    invoke-virtual {v0}, Landroidx/camera/view/CameraController;->clearPreviewSurface()V

    .line 823
    :cond_10
    iput-object p1, p0, Landroidx/camera/view/PreviewView;->mCameraController:Landroidx/camera/view/CameraController;

    .line 824
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/camera/view/PreviewView;->attachToControllerIfReady(Z)V

    .line 825
    return-void
.end method

.method public setImplementationMode(Landroidx/camera/view/PreviewView$ImplementationMode;)V
    .registers 2
    .param p1, "implementationMode"    # Landroidx/camera/view/PreviewView$ImplementationMode;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "implementationMode"
        }
    .end annotation

    .line 331
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 332
    iput-object p1, p0, Landroidx/camera/view/PreviewView;->mImplementationMode:Landroidx/camera/view/PreviewView$ImplementationMode;

    .line 333
    return-void
.end method

.method public setScaleType(Landroidx/camera/view/PreviewView$ScaleType;)V
    .registers 3
    .param p1, "scaleType"    # Landroidx/camera/view/PreviewView$ScaleType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "scaleType"
        }
    .end annotation

    .line 389
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 390
    iget-object v0, p0, Landroidx/camera/view/PreviewView;->mPreviewTransform:Landroidx/camera/view/PreviewTransformation;

    invoke-virtual {v0, p1}, Landroidx/camera/view/PreviewTransformation;->setScaleType(Landroidx/camera/view/PreviewView$ScaleType;)V

    .line 391
    invoke-virtual {p0}, Landroidx/camera/view/PreviewView;->redrawPreview()V

    .line 393
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/camera/view/PreviewView;->attachToControllerIfReady(Z)V

    .line 394
    return-void
.end method
