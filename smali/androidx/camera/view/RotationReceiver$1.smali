.class Landroidx/camera/view/RotationReceiver$1;
.super Landroid/view/OrientationEventListener;
.source "RotationReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/view/RotationReceiver;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/view/RotationReceiver;


# direct methods
.method constructor <init>(Landroidx/camera/view/RotationReceiver;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Landroidx/camera/view/RotationReceiver;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "context"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Landroidx/camera/view/RotationReceiver$1;->this$0:Landroidx/camera/view/RotationReceiver;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .registers 4
    .param p1, "orientation"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    .line 66
    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    .line 69
    return-void

    .line 73
    :cond_4
    const/16 v0, 0x13b

    if-ge p1, v0, :cond_1b

    const/16 v0, 0x2d

    if-ge p1, v0, :cond_d

    goto :goto_1b

    .line 75
    :cond_d
    const/16 v0, 0xe1

    if-lt p1, v0, :cond_13

    .line 76
    const/4 v0, 0x1

    .local v0, "newRotation":I
    goto :goto_1c

    .line 77
    .end local v0    # "newRotation":I
    :cond_13
    const/16 v0, 0x87

    if-lt p1, v0, :cond_19

    .line 78
    const/4 v0, 0x2

    .restart local v0    # "newRotation":I
    goto :goto_1c

    .line 80
    .end local v0    # "newRotation":I
    :cond_19
    const/4 v0, 0x3

    .restart local v0    # "newRotation":I
    goto :goto_1c

    .line 74
    .end local v0    # "newRotation":I
    :cond_1b
    :goto_1b
    const/4 v0, 0x0

    .line 82
    .restart local v0    # "newRotation":I
    :goto_1c
    iget-object v1, p0, Landroidx/camera/view/RotationReceiver$1;->this$0:Landroidx/camera/view/RotationReceiver;

    iget v1, v1, Landroidx/camera/view/RotationReceiver;->mRotation:I

    if-eq v1, v0, :cond_2b

    .line 83
    iget-object v1, p0, Landroidx/camera/view/RotationReceiver$1;->this$0:Landroidx/camera/view/RotationReceiver;

    iput v0, v1, Landroidx/camera/view/RotationReceiver;->mRotation:I

    .line 84
    iget-object v1, p0, Landroidx/camera/view/RotationReceiver$1;->this$0:Landroidx/camera/view/RotationReceiver;

    invoke-virtual {v1, v0}, Landroidx/camera/view/RotationReceiver;->onRotationChanged(I)V

    .line 86
    :cond_2b
    return-void
.end method
