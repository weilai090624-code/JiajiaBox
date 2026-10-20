.class public interface abstract Landroidx/camera/camera2/interop/Camera2CameraFilter$Camera2Filter;
.super Ljava/lang/Object;
.source "Camera2CameraFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/interop/Camera2CameraFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Camera2Filter"
.end annotation


# virtual methods
.method public abstract filter(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraInfos"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/interop/Camera2CameraInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/interop/Camera2CameraInfo;",
            ">;"
        }
    .end annotation
.end method
