.class public Landroidx/camera/camera2/internal/compat/workaround/ExcludedSupportedSizesContainer;
.super Ljava/lang/Object;
.source "ExcludedSupportedSizesContainer.java"


# instance fields
.field private final mCameraId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraId"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Landroidx/camera/camera2/internal/compat/workaround/ExcludedSupportedSizesContainer;->mCameraId:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public get(I)Ljava/util/List;
    .locals 2
    .param p1, "imageFormat"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageFormat"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 53
    const-class v0, Landroidx/camera/camera2/internal/compat/quirk/ExcludedSupportedSizesQuirk;

    invoke-static {v0}, Landroidx/camera/camera2/internal/compat/quirk/DeviceQuirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/internal/compat/quirk/ExcludedSupportedSizesQuirk;

    .line 55
    .local v0, "quirk":Landroidx/camera/camera2/internal/compat/quirk/ExcludedSupportedSizesQuirk;
    if-nez v0, :cond_0

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    .line 58
    :cond_0
    iget-object v1, p0, Landroidx/camera/camera2/internal/compat/workaround/ExcludedSupportedSizesContainer;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroidx/camera/camera2/internal/compat/quirk/ExcludedSupportedSizesQuirk;->getExcludedSizes(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
