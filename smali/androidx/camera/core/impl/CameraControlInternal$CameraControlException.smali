.class public final Landroidx/camera/core/impl/CameraControlInternal$CameraControlException;
.super Ljava/lang/Exception;
.source "CameraControlInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/impl/CameraControlInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CameraControlException"
.end annotation


# instance fields
.field private mCameraCaptureFailure:Landroidx/camera/core/impl/CameraCaptureFailure;


# direct methods
.method public constructor <init>(Landroidx/camera/core/impl/CameraCaptureFailure;)V
    .locals 0
    .param p1, "failure"    # Landroidx/camera/core/impl/CameraCaptureFailure;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "failure"
        }
    .end annotation

    .line 223
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 224
    iput-object p1, p0, Landroidx/camera/core/impl/CameraControlInternal$CameraControlException;->mCameraCaptureFailure:Landroidx/camera/core/impl/CameraCaptureFailure;

    .line 225
    return-void
.end method

.method public constructor <init>(Landroidx/camera/core/impl/CameraCaptureFailure;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "failure"    # Landroidx/camera/core/impl/CameraCaptureFailure;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "failure",
            "cause"
        }
    .end annotation

    .line 229
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 230
    iput-object p1, p0, Landroidx/camera/core/impl/CameraControlInternal$CameraControlException;->mCameraCaptureFailure:Landroidx/camera/core/impl/CameraCaptureFailure;

    .line 231
    return-void
.end method


# virtual methods
.method public getCameraCaptureFailure()Landroidx/camera/core/impl/CameraCaptureFailure;
    .locals 1

    .line 235
    iget-object v0, p0, Landroidx/camera/core/impl/CameraControlInternal$CameraControlException;->mCameraCaptureFailure:Landroidx/camera/core/impl/CameraCaptureFailure;

    return-object v0
.end method
