.class Landroidx/camera/view/PreviewViewMeteringPointFactory;
.super Landroidx/camera/core/MeteringPointFactory;
.source "PreviewViewMeteringPointFactory.java"


# static fields
.field static final INVALID_POINT:Landroid/graphics/PointF;


# instance fields
.field private mMatrix:Landroid/graphics/Matrix;

.field private final mPreviewTransformation:Landroidx/camera/view/PreviewTransformation;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 40
    new-instance v0, Landroid/graphics/PointF;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    sput-object v0, Landroidx/camera/view/PreviewViewMeteringPointFactory;->INVALID_POINT:Landroid/graphics/PointF;

    return-void
.end method

.method constructor <init>(Landroidx/camera/view/PreviewTransformation;)V
    .registers 2
    .param p1, "previewTransformation"    # Landroidx/camera/view/PreviewTransformation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "previewTransformation"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Landroidx/camera/core/MeteringPointFactory;-><init>()V

    .line 50
    iput-object p1, p0, Landroidx/camera/view/PreviewViewMeteringPointFactory;->mPreviewTransformation:Landroidx/camera/view/PreviewTransformation;

    .line 51
    return-void
.end method


# virtual methods
.method protected convertPoint(FF)Landroid/graphics/PointF;
    .registers 7
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

    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v2, 0x1

    aput p2, v0, v2

    .line 58
    .local v0, "point":[F
    monitor-enter p0

    .line 59
    :try_start_a
    iget-object v3, p0, Landroidx/camera/view/PreviewViewMeteringPointFactory;->mMatrix:Landroid/graphics/Matrix;

    if-nez v3, :cond_12

    .line 60
    sget-object v1, Landroidx/camera/view/PreviewViewMeteringPointFactory;->INVALID_POINT:Landroid/graphics/PointF;

    monitor-exit p0

    return-object v1

    .line 62
    :cond_12
    iget-object v3, p0, Landroidx/camera/view/PreviewViewMeteringPointFactory;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 63
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_22

    .line 64
    new-instance v3, Landroid/graphics/PointF;

    aget v1, v0, v1

    aget v2, v0, v2

    invoke-direct {v3, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v3

    .line 63
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v1
.end method

.method recalculate(Landroid/util/Size;I)V
    .registers 4
    .param p1, "previewViewSize"    # Landroid/util/Size;
    .param p2, "layoutDirection"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "previewViewSize",
            "layoutDirection"
        }
    .end annotation

    .line 69
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 70
    monitor-enter p0

    .line 71
    :try_start_4
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v0

    if-nez v0, :cond_11

    goto :goto_1b

    .line 75
    :cond_11
    iget-object v0, p0, Landroidx/camera/view/PreviewViewMeteringPointFactory;->mPreviewTransformation:Landroidx/camera/view/PreviewTransformation;

    invoke-virtual {v0, p1, p2}, Landroidx/camera/view/PreviewTransformation;->getPreviewViewToNormalizedSurfaceMatrix(Landroid/util/Size;I)Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/view/PreviewViewMeteringPointFactory;->mMatrix:Landroid/graphics/Matrix;

    .line 78
    monitor-exit p0

    .line 79
    return-void

    .line 72
    :cond_1b
    :goto_1b
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/camera/view/PreviewViewMeteringPointFactory;->mMatrix:Landroid/graphics/Matrix;

    .line 73
    monitor-exit p0

    return-void

    .line 78
    :catchall_20
    move-exception v0

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_20

    throw v0
.end method
