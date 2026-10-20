.class final Landroidx/camera/core/impl/AutoValue_CameraThreadConfig;
.super Landroidx/camera/core/impl/CameraThreadConfig;
.source "AutoValue_CameraThreadConfig.java"


# instance fields
.field private final cameraExecutor:Ljava/util/concurrent/Executor;

.field private final schedulerHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Landroid/os/Handler;)V
    .locals 2
    .param p1, "cameraExecutor"    # Ljava/util/concurrent/Executor;
    .param p2, "schedulerHandler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cameraExecutor",
            "schedulerHandler"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Landroidx/camera/core/impl/CameraThreadConfig;-><init>()V

    .line 19
    if-eqz p1, :cond_1

    .line 22
    iput-object p1, p0, Landroidx/camera/core/impl/AutoValue_CameraThreadConfig;->cameraExecutor:Ljava/util/concurrent/Executor;

    .line 23
    if-eqz p2, :cond_0

    .line 26
    iput-object p2, p0, Landroidx/camera/core/impl/AutoValue_CameraThreadConfig;->schedulerHandler:Landroid/os/Handler;

    .line 27
    return-void

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null schedulerHandler"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null cameraExecutor"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 51
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 52
    return v0

    .line 54
    :cond_0
    instance-of v1, p1, Landroidx/camera/core/impl/CameraThreadConfig;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 55
    move-object v1, p1

    check-cast v1, Landroidx/camera/core/impl/CameraThreadConfig;

    .line 56
    .local v1, "that":Landroidx/camera/core/impl/CameraThreadConfig;
    iget-object v3, p0, Landroidx/camera/core/impl/AutoValue_CameraThreadConfig;->cameraExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v1}, Landroidx/camera/core/impl/CameraThreadConfig;->getCameraExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroidx/camera/core/impl/AutoValue_CameraThreadConfig;->schedulerHandler:Landroid/os/Handler;

    .line 57
    invoke-virtual {v1}, Landroidx/camera/core/impl/CameraThreadConfig;->getSchedulerHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 56
    :goto_0
    return v0

    .line 59
    .end local v1    # "that":Landroidx/camera/core/impl/CameraThreadConfig;
    :cond_2
    return v2
.end method

.method public getCameraExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 32
    iget-object v0, p0, Landroidx/camera/core/impl/AutoValue_CameraThreadConfig;->cameraExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public getSchedulerHandler()Landroid/os/Handler;
    .locals 1

    .line 38
    iget-object v0, p0, Landroidx/camera/core/impl/AutoValue_CameraThreadConfig;->schedulerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 64
    const/4 v0, 0x1

    .line 65
    .local v0, "h$":I
    const v1, 0xf4243

    mul-int v0, v0, v1

    .line 66
    iget-object v2, p0, Landroidx/camera/core/impl/AutoValue_CameraThreadConfig;->cameraExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    .line 67
    mul-int v0, v0, v1

    .line 68
    iget-object v1, p0, Landroidx/camera/core/impl/AutoValue_CameraThreadConfig;->schedulerHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 69
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraThreadConfig{cameraExecutor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/camera/core/impl/AutoValue_CameraThreadConfig;->cameraExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", schedulerHandler="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/camera/core/impl/AutoValue_CameraThreadConfig;->schedulerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
