.class public final synthetic Landroidx/camera/core/impl/CameraConfig$-CC;
.super Ljava/lang/Object;
.source "CameraConfig.java"


# direct methods
.method public static $default$getCameraFilter(Landroidx/camera/core/impl/CameraConfig;)Landroidx/camera/core/CameraFilter;
    .locals 2
    .param p0, "_this"    # Landroidx/camera/core/impl/CameraConfig;

    .line 50
    sget-object v0, Landroidx/camera/core/impl/CameraConfig;->OPTION_CAMERA_FILTER:Landroidx/camera/core/impl/Config$Option;

    sget-object v1, Landroidx/camera/core/impl/CameraFilters;->ANY:Landroidx/camera/core/CameraFilter;

    invoke-interface {p0, v0, v1}, Landroidx/camera/core/impl/CameraConfig;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/CameraFilter;

    return-object v0
.end method
