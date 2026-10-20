.class public abstract Landroidx/camera/core/SurfaceRequest$TransformationInfo;
.super Ljava/lang/Object;
.source "SurfaceRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/SurfaceRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TransformationInfo"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 741
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 742
    return-void
.end method

.method public static of(Landroid/graphics/Rect;II)Landroidx/camera/core/SurfaceRequest$TransformationInfo;
    .locals 1
    .param p0, "cropRect"    # Landroid/graphics/Rect;
    .param p1, "rotationDegrees"    # I
    .param p2, "targetRotation"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cropRect",
            "rotationDegrees",
            "targetRotation"
        }
    .end annotation

    .line 736
    new-instance v0, Landroidx/camera/core/AutoValue_SurfaceRequest_TransformationInfo;

    invoke-direct {v0, p0, p1, p2}, Landroidx/camera/core/AutoValue_SurfaceRequest_TransformationInfo;-><init>(Landroid/graphics/Rect;II)V

    return-object v0
.end method


# virtual methods
.method public abstract getCropRect()Landroid/graphics/Rect;
.end method

.method public abstract getRotationDegrees()I
.end method

.method public abstract getTargetRotation()I
.end method
