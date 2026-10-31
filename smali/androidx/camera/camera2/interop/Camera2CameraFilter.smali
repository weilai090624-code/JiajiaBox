.class public final Landroidx/camera/camera2/interop/Camera2CameraFilter;
.super Ljava/lang/Object;
.source "Camera2CameraFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/interop/Camera2CameraFilter$Camera2Filter;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCameraFilter(Landroidx/camera/camera2/interop/Camera2CameraFilter$Camera2Filter;)Landroidx/camera/core/CameraFilter;
    .registers 2
    .param p0, "filter"    # Landroidx/camera/camera2/interop/Camera2CameraFilter$Camera2Filter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filter"
        }
    .end annotation

    .line 41
    new-instance v0, Landroidx/camera/camera2/interop/Camera2CameraFilter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroidx/camera/camera2/interop/Camera2CameraFilter$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/camera2/interop/Camera2CameraFilter$Camera2Filter;)V

    return-object v0
.end method

.method static synthetic lambda$createCameraFilter$0(Landroidx/camera/camera2/interop/Camera2CameraFilter$Camera2Filter;Ljava/util/List;)Ljava/util/List;
    .registers 8
    .param p0, "filter"    # Landroidx/camera/camera2/interop/Camera2CameraFilter$Camera2Filter;
    .param p1, "cameraInfos"    # Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v0, "input":Ljava/util/List;, "Ljava/util/List<Landroidx/camera/camera2/interop/Camera2CameraInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/CameraInfo;

    .line 44
    .local v2, "cameraInfo":Landroidx/camera/core/CameraInfo;
    invoke-static {v2}, Landroidx/camera/camera2/interop/Camera2CameraInfo;->from(Landroidx/camera/core/CameraInfo;)Landroidx/camera/camera2/interop/Camera2CameraInfo;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    .end local v2    # "cameraInfo":Landroidx/camera/core/CameraInfo;
    goto :goto_9

    .line 47
    :cond_1d
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p0, v1}, Landroidx/camera/camera2/interop/Camera2CameraFilter$Camera2Filter;->filter(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 49
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroidx/camera/camera2/interop/Camera2CameraInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v2, "output":Ljava/util/List;, "Ljava/util/List<Landroidx/camera/core/CameraInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/camera/core/CameraInfo;

    .line 51
    .local v4, "cameraInfo":Landroidx/camera/core/CameraInfo;
    invoke-static {v4}, Landroidx/camera/camera2/interop/Camera2CameraInfo;->from(Landroidx/camera/core/CameraInfo;)Landroidx/camera/camera2/interop/Camera2CameraInfo;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 52
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    .end local v4    # "cameraInfo":Landroidx/camera/core/CameraInfo;
    :cond_47
    goto :goto_2e

    .line 56
    :cond_48
    return-object v2
.end method
