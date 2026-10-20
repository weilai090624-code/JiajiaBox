.class public abstract Landroidx/camera/camera2/internal/SynchronizedCaptureSession$StateCallback;
.super Ljava/lang/Object;
.source "SynchronizedCaptureSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/internal/SynchronizedCaptureSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StateCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method onActive(Landroidx/camera/camera2/internal/SynchronizedCaptureSession;)V
    .locals 0
    .param p1, "session"    # Landroidx/camera/camera2/internal/SynchronizedCaptureSession;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "session"
        }
    .end annotation

    .line 290
    return-void
.end method

.method onCaptureQueueEmpty(Landroidx/camera/camera2/internal/SynchronizedCaptureSession;)V
    .locals 0
    .param p1, "session"    # Landroidx/camera/camera2/internal/SynchronizedCaptureSession;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "session"
        }
    .end annotation

    .line 295
    return-void
.end method

.method onClosed(Landroidx/camera/camera2/internal/SynchronizedCaptureSession;)V
    .locals 0
    .param p1, "session"    # Landroidx/camera/camera2/internal/SynchronizedCaptureSession;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "session"
        }
    .end annotation

    .line 328
    return-void
.end method

.method onConfigureFailed(Landroidx/camera/camera2/internal/SynchronizedCaptureSession;)V
    .locals 0
    .param p1, "session"    # Landroidx/camera/camera2/internal/SynchronizedCaptureSession;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "session"
        }
    .end annotation

    .line 309
    return-void
.end method

.method onConfigured(Landroidx/camera/camera2/internal/SynchronizedCaptureSession;)V
    .locals 0
    .param p1, "session"    # Landroidx/camera/camera2/internal/SynchronizedCaptureSession;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "session"
        }
    .end annotation

    .line 305
    return-void
.end method

.method onReady(Landroidx/camera/camera2/internal/SynchronizedCaptureSession;)V
    .locals 0
    .param p1, "session"    # Landroidx/camera/camera2/internal/SynchronizedCaptureSession;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "session"
        }
    .end annotation

    .line 286
    return-void
.end method

.method onSessionFinished(Landroidx/camera/camera2/internal/SynchronizedCaptureSession;)V
    .locals 0
    .param p1, "session"    # Landroidx/camera/camera2/internal/SynchronizedCaptureSession;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "session"
        }
    .end annotation

    .line 350
    return-void
.end method

.method onSurfacePrepared(Landroidx/camera/camera2/internal/SynchronizedCaptureSession;Landroid/view/Surface;)V
    .locals 0
    .param p1, "session"    # Landroidx/camera/camera2/internal/SynchronizedCaptureSession;
    .param p2, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "session",
            "surface"
        }
    .end annotation

    .line 301
    return-void
.end method
