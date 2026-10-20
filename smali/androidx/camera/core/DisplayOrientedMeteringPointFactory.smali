.class public final Landroidx/camera/core/DisplayOrientedMeteringPointFactory;
.super Landroidx/camera/core/MeteringPointFactory;
.source "DisplayOrientedMeteringPointFactory.java"


# instance fields
.field private final mCameraInfo:Landroidx/camera/core/CameraInfo;

.field private final mDisplay:Landroid/view/Display;

.field private final mHeight:F

.field private final mWidth:F


# direct methods
.method public constructor <init>(Landroid/view/Display;Landroidx/camera/core/CameraInfo;FF)V
    .locals 0
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "cameraInfo"    # Landroidx/camera/core/CameraInfo;
    .param p3, "width"    # F
    .param p4, "height"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "display",
            "cameraInfo",
            "width",
            "height"
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Landroidx/camera/core/MeteringPointFactory;-><init>()V

    .line 87
    iput p3, p0, Landroidx/camera/core/DisplayOrientedMeteringPointFactory;->mWidth:F

    .line 88
    iput p4, p0, Landroidx/camera/core/DisplayOrientedMeteringPointFactory;->mHeight:F

    .line 89
    iput-object p1, p0, Landroidx/camera/core/DisplayOrientedMeteringPointFactory;->mDisplay:Landroid/view/Display;

    .line 90
    iput-object p2, p0, Landroidx/camera/core/DisplayOrientedMeteringPointFactory;->mCameraInfo:Landroidx/camera/core/CameraInfo;

    .line 91
    return-void
.end method

.method private getLensFacing()Ljava/lang/Integer;
    .locals 1

    .line 98
    iget-object v0, p0, Landroidx/camera/core/DisplayOrientedMeteringPointFactory;->mCameraInfo:Landroidx/camera/core/CameraInfo;

    instance-of v0, v0, Landroidx/camera/core/impl/CameraInfoInternal;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Landroidx/camera/core/DisplayOrientedMeteringPointFactory;->mCameraInfo:Landroidx/camera/core/CameraInfo;

    check-cast v0, Landroidx/camera/core/impl/CameraInfoInternal;

    invoke-interface {v0}, Landroidx/camera/core/impl/CameraInfoInternal;->getLensFacing()Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 101
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getRelativeCameraOrientation(Z)I
    .locals 3
    .param p1, "compensateForMirroring"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "compensateForMirroring"
        }
    .end annotation

    .line 164
    :try_start_0
    iget-object v0, p0, Landroidx/camera/core/DisplayOrientedMeteringPointFactory;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 165
    .local v0, "displayRotation":I
    iget-object v1, p0, Landroidx/camera/core/DisplayOrientedMeteringPointFactory;->mCameraInfo:Landroidx/camera/core/CameraInfo;

    invoke-interface {v1, v0}, Landroidx/camera/core/CameraInfo;->getSensorRotationDegrees(I)I

    move-result v1

    .line 166
    .local v1, "rotationDegrees":I
    if-eqz p1, :cond_0

    .line 167
    rsub-int v2, v1, 0x168

    rem-int/lit16 v2, v2, 0x168
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 171
    .end local v0    # "displayRotation":I
    :cond_0
    goto :goto_0

    .line 169
    .end local v1    # "rotationDegrees":I
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 172
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "rotationDegrees":I
    :goto_0
    return v1
.end method


# virtual methods
.method protected convertPoint(FF)Landroid/graphics/PointF;
    .locals 10
    .param p1, "x"    # F
    .param p2, "y"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 113
    iget v0, p0, Landroidx/camera/core/DisplayOrientedMeteringPointFactory;->mWidth:F

    .line 114
    .local v0, "width":F
    iget v1, p0, Landroidx/camera/core/DisplayOrientedMeteringPointFactory;->mHeight:F

    .line 116
    .local v1, "height":F
    invoke-direct {p0}, Landroidx/camera/core/DisplayOrientedMeteringPointFactory;->getLensFacing()Ljava/lang/Integer;

    move-result-object v2

    .line 117
    .local v2, "lensFacing":Ljava/lang/Integer;
    if-eqz v2, :cond_0

    .line 118
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 119
    .local v3, "compensateForMirroring":Z
    :goto_0
    invoke-direct {p0, v3}, Landroidx/camera/core/DisplayOrientedMeteringPointFactory;->getRelativeCameraOrientation(Z)I

    move-result v4

    .line 120
    .local v4, "relativeCameraOrientation":I
    move v5, p1

    .line 121
    .local v5, "outputX":F
    move v6, p2

    .line 122
    .local v6, "outputY":F
    move v7, v0

    .line 123
    .local v7, "outputWidth":F
    move v8, v1

    .line 125
    .local v8, "outputHeight":F
    const/16 v9, 0x5a

    if-eq v4, v9, :cond_1

    const/16 v9, 0x10e

    if-ne v4, v9, :cond_2

    .line 127
    :cond_1
    move v5, p2

    .line 128
    move v6, p1

    .line 129
    move v7, v1

    .line 130
    move v8, v0

    .line 133
    :cond_2
    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    .line 143
    :sswitch_0
    sub-float v5, v7, v5

    .line 144
    goto :goto_1

    .line 139
    :sswitch_1
    sub-float v5, v7, v5

    .line 140
    sub-float v6, v8, v6

    .line 141
    goto :goto_1

    .line 136
    :sswitch_2
    sub-float v6, v8, v6

    .line 137
    nop

    .line 150
    :goto_1
    if-eqz v3, :cond_3

    .line 151
    sub-float v5, v7, v5

    .line 155
    :cond_3
    div-float/2addr v5, v7

    .line 156
    div-float/2addr v6, v8

    .line 158
    new-instance v9, Landroid/graphics/PointF;

    invoke-direct {v9, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v9

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_2
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_0
    .end sparse-switch
.end method
