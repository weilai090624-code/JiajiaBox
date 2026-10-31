.class public final Landroidx/camera/core/impl/CameraValidator;
.super Ljava/lang/Object;
.source "CameraValidator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/impl/CameraValidator$CameraIdListIncorrectException;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraValidator"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static validateCameras(Landroid/content/Context;Landroidx/camera/core/impl/CameraRepository;Landroidx/camera/core/CameraSelector;)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cameraRepository"    # Landroidx/camera/core/impl/CameraRepository;
    .param p2, "availableCamerasSelector"    # Landroidx/camera/core/CameraSelector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "cameraRepository",
            "availableCamerasSelector"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/camera/core/impl/CameraValidator$CameraIdListIncorrectException;
        }
    .end annotation

    .line 55
    const/4 v0, 0x0

    .line 57
    .local v0, "lensFacing":Ljava/lang/Integer;
    const-string v1, "CameraValidator"

    if-eqz p2, :cond_19

    .line 58
    :try_start_5
    invoke-virtual {p2}, Landroidx/camera/core/CameraSelector;->getLensFacing()Ljava/lang/Integer;

    move-result-object v2

    move-object v0, v2

    if-nez v2, :cond_19

    .line 59
    const-string v2, "No lens facing info in the availableCamerasSelector, don\'t verify the camera lens facing."

    invoke-static {v1, v2}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_11} :catch_12

    .line 61
    return-void

    .line 63
    :catch_12
    move-exception v2

    .line 64
    .local v2, "e":Ljava/lang/IllegalStateException;
    const-string v3, "Cannot get lens facing from the availableCamerasSelector don\'t verify the camera lens facing."

    invoke-static {v1, v3, v2}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    return-void

    .line 67
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :cond_19
    nop

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Verifying camera lens facing on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", lensFacingInteger: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 75
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_40
    const-string v3, "android.hardware.camera"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 76
    if-eqz p2, :cond_51

    .line 77
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5a

    .line 80
    :cond_51
    sget-object v3, Landroidx/camera/core/CameraSelector;->DEFAULT_BACK_CAMERA:Landroidx/camera/core/CameraSelector;

    invoke-virtual {p1}, Landroidx/camera/core/impl/CameraRepository;->getCameras()Ljava/util/LinkedHashSet;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/camera/core/CameraSelector;->select(Ljava/util/LinkedHashSet;)Landroidx/camera/core/impl/CameraInternal;

    .line 83
    :cond_5a
    const-string v3, "android.hardware.camera.front"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_73

    .line 84
    if-eqz p2, :cond_6a

    .line 85
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_73

    .line 88
    :cond_6a
    sget-object v3, Landroidx/camera/core/CameraSelector;->DEFAULT_FRONT_CAMERA:Landroidx/camera/core/CameraSelector;

    invoke-virtual {p1}, Landroidx/camera/core/impl/CameraRepository;->getCameras()Ljava/util/LinkedHashSet;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/camera/core/CameraSelector;->select(Ljava/util/LinkedHashSet;)Landroidx/camera/core/impl/CameraInternal;
    :try_end_73
    .catch Ljava/lang/IllegalArgumentException; {:try_start_40 .. :try_end_73} :catch_75

    .line 95
    :cond_73
    nop

    .line 96
    return-void

    .line 91
    :catch_75
    move-exception v3

    .line 92
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Camera LensFacing verification failed, existing cameras: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 93
    invoke-virtual {p1}, Landroidx/camera/core/impl/CameraRepository;->getCameras()Ljava/util/LinkedHashSet;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 92
    invoke-static {v1, v4}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance v1, Landroidx/camera/core/impl/CameraValidator$CameraIdListIncorrectException;

    const-string v4, "Expected camera missing from device."

    invoke-direct {v1, v4, v3}, Landroidx/camera/core/impl/CameraValidator$CameraIdListIncorrectException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
