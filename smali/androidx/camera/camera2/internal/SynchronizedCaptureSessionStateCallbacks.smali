.class final Landroidx/camera/camera2/internal/SynchronizedCaptureSessionStateCallbacks;
.super Landroidx/camera/camera2/internal/SynchronizedCaptureSession$StateCallback;
.source "SynchronizedCaptureSessionStateCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/internal/SynchronizedCaptureSessionStateCallbacks$Adapter;
    }
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/camera2/internal/SynchronizedCaptureSession$StateCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callbacks"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/internal/SynchronizedCaptureSession$StateCallback;",
            ">;)V"
        }
    .end annotation

    .line 45
    .local p1, "callbacks":Ljava/util/List;, "Ljava/util/List<Landroidx/camera/camera2/internal/SynchronizedCaptureSession$StateCallback;>;"
    invoke-direct {p0}, Landroidx/camera/camera2/internal/SynchronizedCaptureSession$StateCallback;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionStateCallbacks;->mCallbacks:Ljava/util/List;

    .line 46
    iget-object v0, p0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionStateCallbacks;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 47
    return-void
.end method

.method static varargs createComboCallback([Landroidx/camera/camera2/internal/SynchronizedCaptureSession$StateCallback;)Landroidx/camera/camera2/internal/SynchronizedCaptureSession$StateCallback;
    .locals 2
    .param p0, "callbacks"    # [Landroidx/camera/camera2/internal/SynchronizedCaptureSession$StateCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callbacks"
        }
    .end annotation

    .line 41
    new-instance v0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionStateCallbacks;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionStateCallbacks;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public onActive(Landroidx/camera/camera2/internal/SynchronizedCaptureSession;)V
    .locals 2
    .param p1, "session"    # Landroidx/camera/camera2/internal/SynchronizedCaptureSession;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "session"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionStateCallbacks;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/internal/SynchronizedCaptureSession$StateCallback;

    .line 68
    .local v1, "callback":Landroidx/camera/camera2/internal/SynchronizedCaptureSession$StateCallback;
    invoke-virtual {v1, p1}, Landroidx/camera/camera2/internal/SynchronizedCaptureSession$StateCallback;->onActive(Landroidx/camera/camera2/internal/SynchronizedCaptureSession;)V

    .line 69
    .end local v1    # "callback":Landroidx/camera/camera2/internal/SynchronizedCaptureSession$StateCallback;
    goto :goto_0

    .line 70
    :cond_0
    return-void
.end method

.method public onCaptureQueueEmpty(Landroidx/camera/camera2/internal/SynchronizedCaptureSession;)V
    .locals 2
    .param p1, "session"    # Landroidx/camera/camera2/internal/SynchronizedCaptureSession;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "session"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionStateCallbacks;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/internal/SynchronizedCaptureSession$StateCallback;

    .line 76
    .local v1, "callback":Landroidx/camera/camera2/internal/SynchronizedCaptureSession$StateCallback;
    invoke-virtual {v1, p1}, Landroidx/camera/camera2/internal/SynchronizedCaptureSession$StateCallback;->onCaptureQueueEmpty(Landroidx/camera/camera2/internal/SynchronizedCaptureSession;)V

    .line 77
    .end local v1    # "callback":Landroidx/camera/camera2/internal/SynchronizedCaptureSession$StateCallback;
    goto :goto_0

    .line 78
    :cond_0
    return-void
.end method

.method public onClosed(Landroidx/camera/camera2/internal/SynchronizedCaptureSession;)V
    .locals 2
    .param p1, "session"    # Landroidx/camera/camera2/internal/SynchronizedCaptureSession;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "session"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionStateCallbacks;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/internal/SynchronizedCaptureSession$StateCallback;

    .line 97
    .local v1, "callback":Landroidx/camera/camera2/internal/SynchronizedCaptureSession$StateCallback;
    invoke-virtual {v1, p1}, Landroidx/camera/camera2/internal/SynchronizedCaptureSession$StateCallback;->onClosed(Landroidx/camera/camera2/internal/SynchronizedCaptureSession;)V

    .line 98
    .end local v1    # "callback":Landroidx/camera/camera2/internal/SynchronizedCaptureSession$StateCallback;
    goto :goto_0

    .line 99
    :cond_0
    return-void
.end method

.method public onConfigureFailed(Landroidx/camera/camera2/internal/SynchronizedCaptureSession;)V
    .locals 2
    .param p1, "session"    # Landroidx/camera/camera2/internal/SynchronizedCaptureSession;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "session"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionStateCallbacks;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/internal/SynchronizedCaptureSession$StateCallback;

    .line 90
    .local v1, "callback":Landroidx/camera/camera2/internal/SynchronizedCaptureSession$StateCallback;
    invoke-virtual {v1, p1}, Landroidx/camera/camera2/internal/SynchronizedCaptureSession$StateCallback;->onConfigureFailed(Landroidx/camera/camera2/internal/SynchronizedCaptureSession;)V

    .line 91
    .end local v1    # "callback":Landroidx/camera/camera2/internal/SynchronizedCaptureSession$StateCallback;
    goto :goto_0

    .line 92
    :cond_0
    return-void
.end method

.method public onConfigured(Landroidx/camera/camera2/internal/SynchronizedCaptureSession;)V
    .locals 2
    .param p1, "session"    # Landroidx/camera/camera2/internal/SynchronizedCaptureSession;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "session"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionStateCallbacks;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/internal/SynchronizedCaptureSession$StateCallback;

    .line 83
    .local v1, "callback":Landroidx/camera/camera2/internal/SynchronizedCaptureSession$StateCallback;
    invoke-virtual {v1, p1}, Landroidx/camera/camera2/internal/SynchronizedCaptureSession$StateCallback;->onConfigured(Landroidx/camera/camera2/internal/SynchronizedCaptureSession;)V

    .line 84
    .end local v1    # "callback":Landroidx/camera/camera2/internal/SynchronizedCaptureSession$StateCallback;
    goto :goto_0

    .line 85
    :cond_0
    return-void
.end method

.method public onReady(Landroidx/camera/camera2/internal/SynchronizedCaptureSession;)V
    .locals 2
    .param p1, "session"    # Landroidx/camera/camera2/internal/SynchronizedCaptureSession;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "session"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionStateCallbacks;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/internal/SynchronizedCaptureSession$StateCallback;

    .line 61
    .local v1, "callback":Landroidx/camera/camera2/internal/SynchronizedCaptureSession$StateCallback;
    invoke-virtual {v1, p1}, Landroidx/camera/camera2/internal/SynchronizedCaptureSession$StateCallback;->onReady(Landroidx/camera/camera2/internal/SynchronizedCaptureSession;)V

    .line 62
    .end local v1    # "callback":Landroidx/camera/camera2/internal/SynchronizedCaptureSession$StateCallback;
    goto :goto_0

    .line 63
    :cond_0
    return-void
.end method

.method onSessionFinished(Landroidx/camera/camera2/internal/SynchronizedCaptureSession;)V
    .locals 2
    .param p1, "session"    # Landroidx/camera/camera2/internal/SynchronizedCaptureSession;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "session"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionStateCallbacks;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/internal/SynchronizedCaptureSession$StateCallback;

    .line 104
    .local v1, "callback":Landroidx/camera/camera2/internal/SynchronizedCaptureSession$StateCallback;
    invoke-virtual {v1, p1}, Landroidx/camera/camera2/internal/SynchronizedCaptureSession$StateCallback;->onSessionFinished(Landroidx/camera/camera2/internal/SynchronizedCaptureSession;)V

    .line 105
    .end local v1    # "callback":Landroidx/camera/camera2/internal/SynchronizedCaptureSession$StateCallback;
    goto :goto_0

    .line 106
    :cond_0
    return-void
.end method

.method public onSurfacePrepared(Landroidx/camera/camera2/internal/SynchronizedCaptureSession;Landroid/view/Surface;)V
    .locals 2
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

    .line 53
    iget-object v0, p0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionStateCallbacks;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/internal/SynchronizedCaptureSession$StateCallback;

    .line 54
    .local v1, "callback":Landroidx/camera/camera2/internal/SynchronizedCaptureSession$StateCallback;
    invoke-virtual {v1, p1, p2}, Landroidx/camera/camera2/internal/SynchronizedCaptureSession$StateCallback;->onSurfacePrepared(Landroidx/camera/camera2/internal/SynchronizedCaptureSession;Landroid/view/Surface;)V

    .line 55
    .end local v1    # "callback":Landroidx/camera/camera2/internal/SynchronizedCaptureSession$StateCallback;
    goto :goto_0

    .line 56
    :cond_0
    return-void
.end method
