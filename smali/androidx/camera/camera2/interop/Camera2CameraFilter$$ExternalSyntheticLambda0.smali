.class public final synthetic Landroidx/camera/camera2/interop/Camera2CameraFilter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/camera/core/CameraFilter;


# instance fields
.field public final synthetic f$0:Landroidx/camera/camera2/interop/Camera2CameraFilter$Camera2Filter;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/interop/Camera2CameraFilter$Camera2Filter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/interop/Camera2CameraFilter$$ExternalSyntheticLambda0;->f$0:Landroidx/camera/camera2/interop/Camera2CameraFilter$Camera2Filter;

    return-void
.end method


# virtual methods
.method public final filter(Ljava/util/List;)Ljava/util/List;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/camera/camera2/interop/Camera2CameraFilter$$ExternalSyntheticLambda0;->f$0:Landroidx/camera/camera2/interop/Camera2CameraFilter$Camera2Filter;

    invoke-static {v0, p1}, Landroidx/camera/camera2/interop/Camera2CameraFilter;->lambda$createCameraFilter$0(Landroidx/camera/camera2/interop/Camera2CameraFilter$Camera2Filter;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
