.class public Landroidx/camera/view/CameraController$OutputSize;
.super Ljava/lang/Object;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/view/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OutputSize"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/view/CameraController$OutputSize$OutputAspectRatio;
    }
.end annotation


# static fields
.field public static final UNASSIGNED_ASPECT_RATIO:I = -0x1


# instance fields
.field private final mAspectRatio:I

.field private final mResolution:Landroid/util/Size;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "aspectRatio"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aspectRatio"
        }
    .end annotation

    .line 1765
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1766
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 1767
    iput p1, p0, Landroidx/camera/view/CameraController$OutputSize;->mAspectRatio:I

    .line 1768
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/camera/view/CameraController$OutputSize;->mResolution:Landroid/util/Size;

    .line 1769
    return-void
.end method

.method public constructor <init>(Landroid/util/Size;)V
    .locals 1
    .param p1, "resolution"    # Landroid/util/Size;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolution"
        }
    .end annotation

    .line 1777
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1778
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1779
    const/4 v0, -0x1

    iput v0, p0, Landroidx/camera/view/CameraController$OutputSize;->mAspectRatio:I

    .line 1780
    iput-object p1, p0, Landroidx/camera/view/CameraController$OutputSize;->mResolution:Landroid/util/Size;

    .line 1781
    return-void
.end method


# virtual methods
.method public getAspectRatio()I
    .locals 1

    .line 1790
    iget v0, p0, Landroidx/camera/view/CameraController$OutputSize;->mAspectRatio:I

    return v0
.end method

.method public getResolution()Landroid/util/Size;
    .locals 1

    .line 1800
    iget-object v0, p0, Landroidx/camera/view/CameraController$OutputSize;->mResolution:Landroid/util/Size;

    return-object v0
.end method
