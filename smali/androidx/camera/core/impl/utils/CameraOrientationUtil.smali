.class public final Landroidx/camera/core/impl/utils/CameraOrientationUtil;
.super Ljava/lang/Object;
.source "CameraOrientationUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraOrientationUtil"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static degreesToSurfaceRotation(I)I
    .registers 5
    .param p0, "degrees"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "degrees"
        }
    .end annotation

    .line 114
    const/4 v0, 0x0

    .line 115
    .local v0, "surfaceRotation":I
    sparse-switch p0, :sswitch_data_26

    .line 129
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid sensor rotation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 126
    :sswitch_1d
    const/4 v0, 0x3

    .line 127
    goto :goto_25

    .line 123
    :sswitch_1f
    const/4 v0, 0x2

    .line 124
    goto :goto_25

    .line 120
    :sswitch_21
    const/4 v0, 0x1

    .line 121
    goto :goto_25

    .line 117
    :sswitch_23
    const/4 v0, 0x0

    .line 118
    nop

    .line 132
    :goto_25
    return v0

    :sswitch_data_26
    .sparse-switch
        0x0 -> :sswitch_23
        0x5a -> :sswitch_21
        0xb4 -> :sswitch_1f
        0x10e -> :sswitch_1d
    .end sparse-switch
.end method

.method public static getRelativeImageRotation(IIZ)I
    .registers 11
    .param p0, "destRotationDegrees"    # I
    .param p1, "sourceRotationDegrees"    # I
    .param p2, "isOppositeFacing"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "destRotationDegrees",
            "sourceRotationDegrees",
            "isOppositeFacing"
        }
    .end annotation

    .line 50
    if-eqz p2, :cond_9

    .line 51
    sub-int v0, p1, p0

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    .local v0, "result":I
    goto :goto_d

    .line 53
    .end local v0    # "result":I
    :cond_9
    add-int v0, p1, p0

    rem-int/lit16 v0, v0, 0x168

    .line 55
    .restart local v0    # "result":I
    :goto_d
    const-string v1, "CameraOrientationUtil"

    invoke-static {v1}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 56
    nop

    .line 62
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v2, 0x1

    aput-object v3, v6, v2

    const/4 v2, 0x2

    aput-object v4, v6, v2

    const/4 v2, 0x3

    aput-object v5, v6, v2

    .line 58
    const-string v2, "getRelativeImageRotation: destRotationDegrees=%s, sourceRotationDegrees=%s, isOppositeFacing=%s, result=%s"

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-static {v1, v2}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_3e
    return v0
.end method

.method public static surfaceRotationToDegrees(I)I
    .registers 4
    .param p0, "rotation"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rotation"
        }
    .end annotation

    .line 81
    packed-switch p0, :pswitch_data_28

    .line 95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported surface rotation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :pswitch_1c
    const/16 v0, 0x10e

    .line 93
    .local v0, "rotationDegrees":I
    goto :goto_27

    .line 89
    .end local v0    # "rotationDegrees":I
    :pswitch_1f
    const/16 v0, 0xb4

    .line 90
    .restart local v0    # "rotationDegrees":I
    goto :goto_27

    .line 86
    .end local v0    # "rotationDegrees":I
    :pswitch_22
    const/16 v0, 0x5a

    .line 87
    .restart local v0    # "rotationDegrees":I
    goto :goto_27

    .line 83
    .end local v0    # "rotationDegrees":I
    :pswitch_25
    const/4 v0, 0x0

    .line 84
    .restart local v0    # "rotationDegrees":I
    nop

    .line 98
    :goto_27
    return v0

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method
