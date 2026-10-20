.class public abstract Landroidx/camera/core/MeteringPointFactory;
.super Ljava/lang/Object;
.source "MeteringPointFactory.java"


# instance fields
.field private mSurfaceAspectRatio:Landroid/util/Rational;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/camera/core/MeteringPointFactory;-><init>(Landroid/util/Rational;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/util/Rational;)V
    .locals 0
    .param p1, "surfaceAspectRatio"    # Landroid/util/Rational;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surfaceAspectRatio"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Landroidx/camera/core/MeteringPointFactory;->mSurfaceAspectRatio:Landroid/util/Rational;

    .line 66
    return-void
.end method

.method public static getDefaultPointSize()F
    .locals 1

    .line 78
    const v0, 0x3e19999a    # 0.15f

    return v0
.end method


# virtual methods
.method protected abstract convertPoint(FF)Landroid/graphics/PointF;
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
.end method

.method public final createPoint(FF)Landroidx/camera/core/MeteringPoint;
    .locals 1
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

    .line 116
    invoke-static {}, Landroidx/camera/core/MeteringPointFactory;->getDefaultPointSize()F

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/camera/core/MeteringPointFactory;->createPoint(FFF)Landroidx/camera/core/MeteringPoint;

    move-result-object v0

    return-object v0
.end method

.method public final createPoint(FFF)Landroidx/camera/core/MeteringPoint;
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "size"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "size"
        }
    .end annotation

    .line 137
    invoke-virtual {p0, p1, p2}, Landroidx/camera/core/MeteringPointFactory;->convertPoint(FF)Landroid/graphics/PointF;

    move-result-object v0

    .line 138
    .local v0, "convertedPoint":Landroid/graphics/PointF;
    new-instance v1, Landroidx/camera/core/MeteringPoint;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Landroidx/camera/core/MeteringPointFactory;->mSurfaceAspectRatio:Landroid/util/Rational;

    invoke-direct {v1, v2, v3, p3, v4}, Landroidx/camera/core/MeteringPoint;-><init>(FFFLandroid/util/Rational;)V

    return-object v1
.end method
