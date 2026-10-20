.class public abstract Landroidx/camera/view/RotationReceiver;
.super Ljava/lang/Object;
.source "RotationReceiver.java"


# static fields
.field private static final INVALID_SURFACE_ROTATION:I = -0x1


# instance fields
.field private final mOrientationEventListener:Landroid/view/OrientationEventListener;

.field mRotation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Landroidx/camera/view/RotationReceiver;->mRotation:I

    .line 63
    new-instance v0, Landroidx/camera/view/RotationReceiver$1;

    invoke-direct {v0, p0, p1}, Landroidx/camera/view/RotationReceiver$1;-><init>(Landroidx/camera/view/RotationReceiver;Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/camera/view/RotationReceiver;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    .line 88
    return-void
.end method


# virtual methods
.method public canDetectOrientation()Z
    .locals 1

    .line 96
    iget-object v0, p0, Landroidx/camera/view/RotationReceiver;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v0

    return v0
.end method

.method public disable()V
    .locals 1

    .line 117
    iget-object v0, p0, Landroidx/camera/view/RotationReceiver;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 118
    return-void
.end method

.method public enable()V
    .locals 1

    .line 108
    iget-object v0, p0, Landroidx/camera/view/RotationReceiver;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 109
    return-void
.end method

.method public abstract onRotationChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rotation"
        }
    .end annotation
.end method
