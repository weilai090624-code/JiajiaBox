.class public final Landroidx/camera/core/impl/CameraCaptureCallbacks;
.super Ljava/lang/Object;
.source "CameraCaptureCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/impl/CameraCaptureCallbacks$ComboCameraCaptureCallback;,
        Landroidx/camera/core/impl/CameraCaptureCallbacks$NoOpCameraCaptureCallback;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method static createComboCallback(Ljava/util/List;)Landroidx/camera/core/impl/CameraCaptureCallback;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callbacks"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/CameraCaptureCallback;",
            ">;)",
            "Landroidx/camera/core/impl/CameraCaptureCallback;"
        }
    .end annotation

    .line 42
    .local p0, "callbacks":Ljava/util/List;, "Ljava/util/List<Landroidx/camera/core/impl/CameraCaptureCallback;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-static {}, Landroidx/camera/core/impl/CameraCaptureCallbacks;->createNoOpCallback()Landroidx/camera/core/impl/CameraCaptureCallback;

    move-result-object v0

    return-object v0

    .line 44
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 45
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/CameraCaptureCallback;

    return-object v0

    .line 47
    :cond_1
    new-instance v0, Landroidx/camera/core/impl/CameraCaptureCallbacks$ComboCameraCaptureCallback;

    invoke-direct {v0, p0}, Landroidx/camera/core/impl/CameraCaptureCallbacks$ComboCameraCaptureCallback;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static varargs createComboCallback([Landroidx/camera/core/impl/CameraCaptureCallback;)Landroidx/camera/core/impl/CameraCaptureCallback;
    .locals 1
    .param p0, "callbacks"    # [Landroidx/camera/core/impl/CameraCaptureCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callbacks"
        }
    .end annotation

    .line 54
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroidx/camera/core/impl/CameraCaptureCallbacks;->createComboCallback(Ljava/util/List;)Landroidx/camera/core/impl/CameraCaptureCallback;

    move-result-object v0

    return-object v0
.end method

.method public static createNoOpCallback()Landroidx/camera/core/impl/CameraCaptureCallback;
    .locals 1

    .line 35
    new-instance v0, Landroidx/camera/core/impl/CameraCaptureCallbacks$NoOpCameraCaptureCallback;

    invoke-direct {v0}, Landroidx/camera/core/impl/CameraCaptureCallbacks$NoOpCameraCaptureCallback;-><init>()V

    return-object v0
.end method
