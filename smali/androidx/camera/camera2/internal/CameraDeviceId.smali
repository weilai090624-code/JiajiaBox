.class abstract Landroidx/camera/camera2/internal/CameraDeviceId;
.super Ljava/lang/Object;
.source "CameraDeviceId.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/camera/camera2/internal/CameraDeviceId;
    .locals 5
    .param p0, "brand"    # Ljava/lang/String;
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "model"    # Ljava/lang/String;
    .param p3, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "brand",
            "device",
            "model",
            "cameraId"
        }
    .end annotation

    .line 39
    new-instance v0, Landroidx/camera/camera2/internal/AutoValue_CameraDeviceId;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 40
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/camera/camera2/internal/AutoValue_CameraDeviceId;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-object v0
.end method


# virtual methods
.method public abstract getBrand()Ljava/lang/String;
.end method

.method public abstract getCameraId()Ljava/lang/String;
.end method

.method public abstract getDevice()Ljava/lang/String;
.end method

.method public abstract getModel()Ljava/lang/String;
.end method
