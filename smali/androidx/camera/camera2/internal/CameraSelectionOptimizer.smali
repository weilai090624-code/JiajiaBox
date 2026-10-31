.class Landroidx/camera/camera2/internal/CameraSelectionOptimizer;
.super Ljava/lang/Object;
.source "CameraSelectionOptimizer.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method private static decideSkippedCameraIdByHeuristic(Landroidx/camera/camera2/internal/compat/CameraManagerCompat;Ljava/lang/Integer;Ljava/util/List;)Ljava/lang/String;
    .registers 8
    .param p0, "cameraManager"    # Landroidx/camera/camera2/internal/compat/CameraManagerCompat;
    .param p1, "lensFacingInteger"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cameraManager",
            "lensFacingInteger",
            "cameraIdList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/internal/compat/CameraManagerCompat;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;
        }
    .end annotation

    .line 102
    .local p2, "cameraIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 103
    .local v0, "skippedCameraId":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez p1, :cond_5

    .line 104
    return-object v1

    .line 109
    :cond_5
    const-string v2, "0"

    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    const-string v3, "1"

    invoke-interface {p2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    goto :goto_4d

    .line 113
    :cond_16
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_32

    .line 114
    invoke-virtual {p0, v2}, Landroidx/camera/camera2/internal/compat/CameraManagerCompat;->getCameraCharacteristicsCompat(Ljava/lang/String;)Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

    move-result-object v1

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_4c

    .line 118
    const-string v0, "1"

    goto :goto_4c

    .line 120
    :cond_32
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_4c

    .line 121
    invoke-virtual {p0, v3}, Landroidx/camera/camera2/internal/compat/CameraManagerCompat;->getCameraCharacteristicsCompat(Ljava/lang/String;)Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

    move-result-object v1

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_4c

    .line 125
    const-string v0, "0"

    .line 129
    :cond_4c
    :goto_4c
    return-object v0

    .line 110
    :cond_4d
    :goto_4d
    return-object v1
.end method

.method static getSelectedAvailableCameraIds(Landroidx/camera/camera2/internal/Camera2CameraFactory;Landroidx/camera/core/CameraSelector;)Ljava/util/List;
    .registers 10
    .param p0, "cameraFactory"    # Landroidx/camera/camera2/internal/Camera2CameraFactory;
    .param p1, "availableCamerasSelector"    # Landroidx/camera/core/CameraSelector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cameraFactory",
            "availableCamerasSelector"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/internal/Camera2CameraFactory;",
            "Landroidx/camera/core/CameraSelector;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/camera/core/InitializationException;
        }
    .end annotation

    .line 45
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v0, "availableCameraIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 47
    invoke-virtual {p0}, Landroidx/camera/camera2/internal/Camera2CameraFactory;->getCameraManager()Landroidx/camera/camera2/internal/compat/CameraManagerCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/camera/camera2/internal/compat/CameraManagerCompat;->getCameraIdList()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 48
    .local v1, "cameraIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_2a

    .line 49
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 50
    .local v3, "id":Ljava/lang/String;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_27
    .catch Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat; {:try_start_0 .. :try_end_27} :catch_8b
    .catch Landroidx/camera/core/CameraUnavailableException; {:try_start_0 .. :try_end_27} :catch_84

    .line 51
    nop

    .end local v3    # "id":Ljava/lang/String;
    goto :goto_18

    .line 52
    :cond_29
    return-object v0

    .line 58
    :cond_2a
    :try_start_2a
    invoke-virtual {p1}, Landroidx/camera/core/CameraSelector;->getLensFacing()Ljava/lang/Integer;

    move-result-object v2

    .line 59
    .local v2, "lensFacingInteger":Ljava/lang/Integer;
    nop

    .line 60
    invoke-virtual {p0}, Landroidx/camera/camera2/internal/Camera2CameraFactory;->getCameraManager()Landroidx/camera/camera2/internal/compat/CameraManagerCompat;

    move-result-object v3

    .line 59
    invoke-static {v3, v2, v1}, Landroidx/camera/camera2/internal/CameraSelectionOptimizer;->decideSkippedCameraIdByHeuristic(Landroidx/camera/camera2/internal/compat/CameraManagerCompat;Ljava/lang/Integer;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3
    :try_end_37
    .catch Ljava/lang/IllegalStateException; {:try_start_2a .. :try_end_37} :catch_38
    .catch Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat; {:try_start_2a .. :try_end_37} :catch_8b
    .catch Landroidx/camera/core/CameraUnavailableException; {:try_start_2a .. :try_end_37} :catch_84

    .line 64
    .end local v2    # "lensFacingInteger":Ljava/lang/Integer;
    .local v3, "skippedCameraId":Ljava/lang/String;
    goto :goto_3a

    .line 61
    .end local v3    # "skippedCameraId":Ljava/lang/String;
    :catch_38
    move-exception v2

    .line 63
    .local v2, "e":Ljava/lang/IllegalStateException;
    const/4 v3, 0x0

    .line 66
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    .restart local v3    # "skippedCameraId":Ljava/lang/String;
    :goto_3a
    :try_start_3a
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v2, "cameraInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/camera/core/CameraInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_43
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 69
    .local v5, "id":Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_56

    .line 70
    goto :goto_43

    .line 72
    :cond_56
    invoke-virtual {p0, v5}, Landroidx/camera/camera2/internal/Camera2CameraFactory;->getCameraInfo(Ljava/lang/String;)Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;

    move-result-object v6

    .line 73
    .local v6, "cameraInfo":Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5d
    .catch Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat; {:try_start_3a .. :try_end_5d} :catch_8b
    .catch Landroidx/camera/core/CameraUnavailableException; {:try_start_3a .. :try_end_5d} :catch_84

    .line 74
    nop

    .end local v5    # "id":Ljava/lang/String;
    .end local v6    # "cameraInfo":Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;
    goto :goto_43

    .line 77
    :cond_5f
    nop

    .line 78
    :try_start_60
    invoke-virtual {p1, v2}, Landroidx/camera/core/CameraSelector;->filter(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 80
    .local v4, "filteredCameraInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/camera/core/CameraInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_68
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_80

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/camera/core/CameraInfo;

    .line 81
    .local v6, "cameraInfo":Landroidx/camera/core/CameraInfo;
    move-object v7, v6

    check-cast v7, Landroidx/camera/core/impl/CameraInfoInternal;

    invoke-interface {v7}, Landroidx/camera/core/impl/CameraInfoInternal;->getCameraId()Ljava/lang/String;

    move-result-object v7

    .line 82
    .local v7, "cameraId":Ljava/lang/String;
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_60 .. :try_end_7e} :catch_82
    .catch Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat; {:try_start_60 .. :try_end_7e} :catch_8b
    .catch Landroidx/camera/core/CameraUnavailableException; {:try_start_60 .. :try_end_7e} :catch_84

    .line 83
    nop

    .end local v6    # "cameraInfo":Landroidx/camera/core/CameraInfo;
    .end local v7    # "cameraId":Ljava/lang/String;
    goto :goto_68

    .line 87
    .end local v4    # "filteredCameraInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/camera/core/CameraInfo;>;"
    :cond_80
    nop

    .line 89
    return-object v0

    .line 84
    :catch_82
    move-exception v4

    .line 86
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    return-object v0

    .line 92
    .end local v0    # "availableCameraIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "cameraIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "cameraInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/camera/core/CameraInfo;>;"
    .end local v3    # "skippedCameraId":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :catch_84
    move-exception v0

    .line 93
    .local v0, "e":Landroidx/camera/core/CameraUnavailableException;
    new-instance v1, Landroidx/camera/core/InitializationException;

    invoke-direct {v1, v0}, Landroidx/camera/core/InitializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 90
    .end local v0    # "e":Landroidx/camera/core/CameraUnavailableException;
    :catch_8b
    move-exception v0

    .line 91
    .local v0, "e":Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;
    new-instance v1, Landroidx/camera/core/InitializationException;

    invoke-static {v0}, Landroidx/camera/camera2/internal/CameraUnavailableExceptionHelper;->createFrom(Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;)Landroidx/camera/core/CameraUnavailableException;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/camera/core/InitializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
