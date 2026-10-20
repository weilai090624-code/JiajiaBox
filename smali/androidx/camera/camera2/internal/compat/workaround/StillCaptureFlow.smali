.class public Landroidx/camera/camera2/internal/compat/workaround/StillCaptureFlow;
.super Ljava/lang/Object;
.source "StillCaptureFlow.java"


# instance fields
.field private final mShouldStopRepeatingBeforeStillCapture:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-class v0, Landroidx/camera/camera2/internal/compat/quirk/StillCaptureFlashStopRepeatingQuirk;

    invoke-static {v0}, Landroidx/camera/camera2/internal/compat/quirk/DeviceQuirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/internal/compat/quirk/StillCaptureFlashStopRepeatingQuirk;

    .line 37
    .local v0, "quirk":Landroidx/camera/camera2/internal/compat/quirk/StillCaptureFlashStopRepeatingQuirk;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Landroidx/camera/camera2/internal/compat/workaround/StillCaptureFlow;->mShouldStopRepeatingBeforeStillCapture:Z

    .line 38
    return-void
.end method


# virtual methods
.method public shouldStopRepeatingBeforeCapture(Ljava/util/List;Z)Z
    .locals 5
    .param p2, "isStillCapture"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "captureRequests",
            "isStillCapture"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;Z)Z"
        }
    .end annotation

    .line 49
    .local p1, "captureRequests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    iget-boolean v0, p0, Landroidx/camera/camera2/internal/compat/workaround/StillCaptureFlow;->mShouldStopRepeatingBeforeStillCapture:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-nez p2, :cond_0

    goto :goto_2

    .line 53
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureRequest;

    .line 54
    .local v2, "request":Landroid/hardware/camera2/CaptureRequest;
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 55
    .local v3, "aeMode":I
    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    goto :goto_1

    .line 59
    .end local v2    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v3    # "aeMode":I
    :cond_1
    goto :goto_0

    .line 57
    .restart local v2    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local v3    # "aeMode":I
    :cond_2
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 61
    .end local v2    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v3    # "aeMode":I
    :cond_3
    return v1

    .line 50
    :cond_4
    :goto_2
    return v1
.end method
