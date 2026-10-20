.class public final Landroidx/camera/camera2/impl/CameraEventCallbacks$ComboCameraEventCallback;
.super Ljava/lang/Object;
.source "CameraEventCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/impl/CameraEventCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ComboCameraEventCallback"
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/camera2/impl/CameraEventCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 3
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
            "Landroidx/camera/camera2/impl/CameraEventCallback;",
            ">;)V"
        }
    .end annotation

    .line 64
    .local p1, "callbacks":Ljava/util/List;, "Ljava/util/List<Landroidx/camera/camera2/impl/CameraEventCallback;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/impl/CameraEventCallbacks$ComboCameraEventCallback;->mCallbacks:Ljava/util/List;

    .line 65
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/impl/CameraEventCallback;

    .line 66
    .local v1, "callback":Landroidx/camera/camera2/impl/CameraEventCallback;
    iget-object v2, p0, Landroidx/camera/camera2/impl/CameraEventCallbacks$ComboCameraEventCallback;->mCallbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    .end local v1    # "callback":Landroidx/camera/camera2/impl/CameraEventCallback;
    goto :goto_0

    .line 68
    :cond_0
    return-void
.end method


# virtual methods
.method public getCallbacks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/impl/CameraEventCallback;",
            ">;"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Landroidx/camera/camera2/impl/CameraEventCallbacks$ComboCameraEventCallback;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method public onDisableSession()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/CaptureConfig;",
            ">;"
        }
    .end annotation

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Landroidx/camera/core/impl/CaptureConfig;>;"
    iget-object v1, p0, Landroidx/camera/camera2/impl/CameraEventCallbacks$ComboCameraEventCallback;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/impl/CameraEventCallback;

    .line 134
    .local v2, "callback":Landroidx/camera/camera2/impl/CameraEventCallback;
    invoke-virtual {v2}, Landroidx/camera/camera2/impl/CameraEventCallback;->onDisableSession()Landroidx/camera/core/impl/CaptureConfig;

    move-result-object v3

    .line 135
    .local v3, "disableCaptureStage":Landroidx/camera/core/impl/CaptureConfig;
    if-eqz v3, :cond_0

    .line 136
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    .end local v2    # "callback":Landroidx/camera/camera2/impl/CameraEventCallback;
    .end local v3    # "disableCaptureStage":Landroidx/camera/core/impl/CaptureConfig;
    :cond_0
    goto :goto_0

    .line 139
    :cond_1
    return-object v0
.end method

.method public onEnableSession()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/CaptureConfig;",
            ">;"
        }
    .end annotation

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Landroidx/camera/core/impl/CaptureConfig;>;"
    iget-object v1, p0, Landroidx/camera/camera2/impl/CameraEventCallbacks$ComboCameraEventCallback;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/impl/CameraEventCallback;

    .line 98
    .local v2, "callback":Landroidx/camera/camera2/impl/CameraEventCallback;
    invoke-virtual {v2}, Landroidx/camera/camera2/impl/CameraEventCallback;->onEnableSession()Landroidx/camera/core/impl/CaptureConfig;

    move-result-object v3

    .line 99
    .local v3, "enableCaptureStage":Landroidx/camera/core/impl/CaptureConfig;
    if-eqz v3, :cond_0

    .line 100
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    .end local v2    # "callback":Landroidx/camera/camera2/impl/CameraEventCallback;
    .end local v3    # "enableCaptureStage":Landroidx/camera/core/impl/CaptureConfig;
    :cond_0
    goto :goto_0

    .line 103
    :cond_1
    return-object v0
.end method

.method public onPresetSession()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/CaptureConfig;",
            ">;"
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Landroidx/camera/core/impl/CaptureConfig;>;"
    iget-object v1, p0, Landroidx/camera/camera2/impl/CameraEventCallbacks$ComboCameraEventCallback;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/impl/CameraEventCallback;

    .line 80
    .local v2, "callback":Landroidx/camera/camera2/impl/CameraEventCallback;
    invoke-virtual {v2}, Landroidx/camera/camera2/impl/CameraEventCallback;->onPresetSession()Landroidx/camera/core/impl/CaptureConfig;

    move-result-object v3

    .line 81
    .local v3, "presetCaptureStage":Landroidx/camera/core/impl/CaptureConfig;
    if-eqz v3, :cond_0

    .line 82
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    .end local v2    # "callback":Landroidx/camera/camera2/impl/CameraEventCallback;
    .end local v3    # "presetCaptureStage":Landroidx/camera/core/impl/CaptureConfig;
    :cond_0
    goto :goto_0

    .line 85
    :cond_1
    return-object v0
.end method

.method public onRepeating()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/CaptureConfig;",
            ">;"
        }
    .end annotation

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Landroidx/camera/core/impl/CaptureConfig;>;"
    iget-object v1, p0, Landroidx/camera/camera2/impl/CameraEventCallbacks$ComboCameraEventCallback;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/impl/CameraEventCallback;

    .line 116
    .local v2, "callback":Landroidx/camera/camera2/impl/CameraEventCallback;
    invoke-virtual {v2}, Landroidx/camera/camera2/impl/CameraEventCallback;->onRepeating()Landroidx/camera/core/impl/CaptureConfig;

    move-result-object v3

    .line 117
    .local v3, "repeatingCaptureStage":Landroidx/camera/core/impl/CaptureConfig;
    if-eqz v3, :cond_0

    .line 118
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    .end local v2    # "callback":Landroidx/camera/camera2/impl/CameraEventCallback;
    .end local v3    # "repeatingCaptureStage":Landroidx/camera/core/impl/CaptureConfig;
    :cond_0
    goto :goto_0

    .line 121
    :cond_1
    return-object v0
.end method
