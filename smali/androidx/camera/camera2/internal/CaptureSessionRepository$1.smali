.class Landroidx/camera/camera2/internal/CaptureSessionRepository$1;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "CaptureSessionRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/internal/CaptureSessionRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/camera2/internal/CaptureSessionRepository;


# direct methods
.method constructor <init>(Landroidx/camera/camera2/internal/CaptureSessionRepository;)V
    .registers 2
    .param p1, "this$0"    # Landroidx/camera/camera2/internal/CaptureSessionRepository;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Landroidx/camera/camera2/internal/CaptureSessionRepository$1;->this$0:Landroidx/camera/camera2/internal/CaptureSessionRepository;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method

.method private cameraClosed()V
    .registers 4

    .line 107
    iget-object v0, p0, Landroidx/camera/camera2/internal/CaptureSessionRepository$1;->this$0:Landroidx/camera/camera2/internal/CaptureSessionRepository;

    iget-object v0, v0, Landroidx/camera/camera2/internal/CaptureSessionRepository;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 108
    :try_start_5
    iget-object v1, p0, Landroidx/camera/camera2/internal/CaptureSessionRepository$1;->this$0:Landroidx/camera/camera2/internal/CaptureSessionRepository;

    invoke-virtual {v1}, Landroidx/camera/camera2/internal/CaptureSessionRepository;->getSessionsInOrder()Ljava/util/List;

    move-result-object v1

    .line 109
    .local v1, "sessions":Ljava/util/List;, "Ljava/util/List<Landroidx/camera/camera2/internal/SynchronizedCaptureSession;>;"
    iget-object v2, p0, Landroidx/camera/camera2/internal/CaptureSessionRepository$1;->this$0:Landroidx/camera/camera2/internal/CaptureSessionRepository;

    iget-object v2, v2, Landroidx/camera/camera2/internal/CaptureSessionRepository;->mCreatingCaptureSessions:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 110
    iget-object v2, p0, Landroidx/camera/camera2/internal/CaptureSessionRepository$1;->this$0:Landroidx/camera/camera2/internal/CaptureSessionRepository;

    iget-object v2, v2, Landroidx/camera/camera2/internal/CaptureSessionRepository;->mCaptureSessions:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 111
    iget-object v2, p0, Landroidx/camera/camera2/internal/CaptureSessionRepository$1;->this$0:Landroidx/camera/camera2/internal/CaptureSessionRepository;

    iget-object v2, v2, Landroidx/camera/camera2/internal/CaptureSessionRepository;->mClosingCaptureSession:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 112
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_36

    .line 113
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/internal/SynchronizedCaptureSession;

    .line 114
    .local v2, "s":Landroidx/camera/camera2/internal/SynchronizedCaptureSession;
    invoke-interface {v2}, Landroidx/camera/camera2/internal/SynchronizedCaptureSession;->finishClose()V

    .line 115
    .end local v2    # "s":Landroidx/camera/camera2/internal/SynchronizedCaptureSession;
    goto :goto_25

    .line 116
    :cond_35
    return-void

    .line 112
    .end local v1    # "sessions":Ljava/util/List;, "Ljava/util/List<Landroidx/camera/camera2/internal/SynchronizedCaptureSession;>;"
    :catchall_36
    move-exception v1

    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v1
.end method

.method private forceOnClosedCaptureSessions()V
    .registers 4

    .line 97
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 98
    .local v0, "sessions":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Landroidx/camera/camera2/internal/SynchronizedCaptureSession;>;"
    iget-object v1, p0, Landroidx/camera/camera2/internal/CaptureSessionRepository$1;->this$0:Landroidx/camera/camera2/internal/CaptureSessionRepository;

    iget-object v1, v1, Landroidx/camera/camera2/internal/CaptureSessionRepository;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 99
    :try_start_a
    iget-object v2, p0, Landroidx/camera/camera2/internal/CaptureSessionRepository$1;->this$0:Landroidx/camera/camera2/internal/CaptureSessionRepository;

    iget-object v2, v2, Landroidx/camera/camera2/internal/CaptureSessionRepository;->mCreatingCaptureSessions:Ljava/util/Set;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 100
    iget-object v2, p0, Landroidx/camera/camera2/internal/CaptureSessionRepository$1;->this$0:Landroidx/camera/camera2/internal/CaptureSessionRepository;

    iget-object v2, v2, Landroidx/camera/camera2/internal/CaptureSessionRepository;->mCaptureSessions:Ljava/util/Set;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 101
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_26

    .line 102
    iget-object v1, p0, Landroidx/camera/camera2/internal/CaptureSessionRepository$1;->this$0:Landroidx/camera/camera2/internal/CaptureSessionRepository;

    iget-object v1, v1, Landroidx/camera/camera2/internal/CaptureSessionRepository;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroidx/camera/camera2/internal/CaptureSessionRepository$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Landroidx/camera/camera2/internal/CaptureSessionRepository$1$$ExternalSyntheticLambda0;-><init>(Ljava/util/LinkedHashSet;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 103
    return-void

    .line 101
    :catchall_26
    move-exception v2

    :try_start_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v2
.end method

.method static synthetic lambda$forceOnClosedCaptureSessions$0(Ljava/util/LinkedHashSet;)V
    .registers 1
    .param p0, "sessions"    # Ljava/util/LinkedHashSet;

    .line 102
    invoke-static {p0}, Landroidx/camera/camera2/internal/CaptureSessionRepository;->forceOnClosed(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .registers 2
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "camera"
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Landroidx/camera/camera2/internal/CaptureSessionRepository$1;->cameraClosed()V

    .line 77
    return-void
.end method

.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .registers 2
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "camera"
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Landroidx/camera/camera2/internal/CaptureSessionRepository$1;->forceOnClosedCaptureSessions()V

    .line 93
    invoke-direct {p0}, Landroidx/camera/camera2/internal/CaptureSessionRepository$1;->cameraClosed()V

    .line 94
    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .registers 3
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "error"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "camera",
            "error"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Landroidx/camera/camera2/internal/CaptureSessionRepository$1;->forceOnClosedCaptureSessions()V

    .line 71
    invoke-direct {p0}, Landroidx/camera/camera2/internal/CaptureSessionRepository$1;->cameraClosed()V

    .line 72
    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .registers 2
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "camera"
        }
    .end annotation

    .line 63
    return-void
.end method
