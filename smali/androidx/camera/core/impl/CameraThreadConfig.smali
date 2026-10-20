.class public abstract Landroidx/camera/core/impl/CameraThreadConfig;
.super Ljava/lang/Object;
.source "CameraThreadConfig.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/util/concurrent/Executor;Landroid/os/Handler;)Landroidx/camera/core/impl/CameraThreadConfig;
    .locals 1
    .param p0, "cameraExecutor"    # Ljava/util/concurrent/Executor;
    .param p1, "schedulerHandler"    # Landroid/os/Handler;
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

    .line 46
    new-instance v0, Landroidx/camera/core/impl/AutoValue_CameraThreadConfig;

    invoke-direct {v0, p0, p1}, Landroidx/camera/core/impl/AutoValue_CameraThreadConfig;-><init>(Ljava/util/concurrent/Executor;Landroid/os/Handler;)V

    return-object v0
.end method


# virtual methods
.method public abstract getCameraExecutor()Ljava/util/concurrent/Executor;
.end method

.method public abstract getSchedulerHandler()Landroid/os/Handler;
.end method
