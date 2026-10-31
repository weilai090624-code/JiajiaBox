.class public Lcom/google/android/material/shape/ShapeAppearancePathProvider;
.super Ljava/lang/Object;
.source "ShapeAppearancePathProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;,
        Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;,
        Lcom/google/android/material/shape/ShapeAppearancePathProvider$Lazy;
    }
.end annotation


# instance fields
.field private final boundsPath:Landroid/graphics/Path;

.field private final cornerPath:Landroid/graphics/Path;

.field private final cornerPaths:[Lcom/google/android/material/shape/ShapePath;

.field private final cornerTransforms:[Landroid/graphics/Matrix;

.field private edgeIntersectionCheckEnabled:Z

.field private final edgePath:Landroid/graphics/Path;

.field private final edgeTransforms:[Landroid/graphics/Matrix;

.field private final overlappedEdgePath:Landroid/graphics/Path;

.field private final pointF:Landroid/graphics/PointF;

.field private final scratch:[F

.field private final scratch2:[F

.field private final shapePath:Lcom/google/android/material/shape/ShapePath;


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x4

    new-array v1, v0, [Lcom/google/android/material/shape/ShapePath;

    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    .line 56
    new-array v1, v0, [Landroid/graphics/Matrix;

    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    .line 57
    new-array v1, v0, [Landroid/graphics/Matrix;

    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Landroid/graphics/Matrix;

    .line 60
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->pointF:Landroid/graphics/PointF;

    .line 61
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->overlappedEdgePath:Landroid/graphics/Path;

    .line 62
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->boundsPath:Landroid/graphics/Path;

    .line 63
    new-instance v1, Lcom/google/android/material/shape/ShapePath;

    invoke-direct {v1}, Lcom/google/android/material/shape/ShapePath;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->shapePath:Lcom/google/android/material/shape/ShapePath;

    .line 64
    const/4 v1, 0x2

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    .line 65
    new-array v1, v1, [F

    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch2:[F

    .line 66
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgePath:Landroid/graphics/Path;

    .line 67
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPath:Landroid/graphics/Path;

    .line 69
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeIntersectionCheckEnabled:Z

    .line 72
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_47
    if-ge v1, v0, :cond_67

    .line 73
    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    new-instance v3, Lcom/google/android/material/shape/ShapePath;

    invoke-direct {v3}, Lcom/google/android/material/shape/ShapePath;-><init>()V

    aput-object v3, v2, v1

    .line 74
    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    aput-object v3, v2, v1

    .line 75
    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Landroid/graphics/Matrix;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    aput-object v3, v2, v1

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_47

    .line 77
    .end local v1    # "i":I
    :cond_67
    return-void
.end method

.method private angleOfEdge(I)F
    .registers 3
    .param p1, "index"    # I

    .line 325
    add-int/lit8 v0, p1, 0x1

    rem-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x5a

    int-to-float v0, v0

    return v0
.end method

.method private appendCornerPath(Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;I)V
    .registers 7
    .param p1, "spec"    # Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;
    .param p2, "index"    # I

    .line 170
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapePath;->getStartX()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 171
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapePath;->getStartY()F

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 172
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 173
    if-nez p2, :cond_33

    .line 174
    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    aget v1, v1, v2

    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_40

    .line 176
    :cond_33
    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    aget v1, v1, v2

    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 178
    :goto_40
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    aget-object v1, v1, p2

    iget-object v2, p1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->path:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/shape/ShapePath;->applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 179
    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->pathListener:Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;

    if-eqz v0, :cond_5e

    .line 180
    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->pathListener:Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    aget-object v1, v1, p2

    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    aget-object v2, v2, p2

    invoke-interface {v0, v1, v2, p2}, Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;->onCornerPathCreated(Lcom/google/android/material/shape/ShapePath;Landroid/graphics/Matrix;I)V

    .line 182
    :cond_5e
    return-void
.end method

.method private appendEdgePath(Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;I)V
    .registers 13
    .param p1, "spec"    # Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;
    .param p2, "index"    # I

    .line 185
    add-int/lit8 v0, p2, 0x1

    rem-int/lit8 v0, v0, 0x4

    .line 186
    .local v0, "nextIndex":I
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    aget-object v2, v2, p2

    invoke-virtual {v2}, Lcom/google/android/material/shape/ShapePath;->getEndX()F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 187
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    aget-object v2, v2, p2

    invoke-virtual {v2}, Lcom/google/android/material/shape/ShapePath;->getEndY()F

    move-result v2

    const/4 v4, 0x1

    aput v2, v1, v4

    .line 188
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    aget-object v1, v1, p2

    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 190
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch2:[F

    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/shape/ShapePath;->getStartX()F

    move-result v2

    aput v2, v1, v3

    .line 191
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch2:[F

    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/shape/ShapePath;->getStartY()F

    move-result v2

    aput v2, v1, v4

    .line 192
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch2:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 194
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    aget v1, v1, v3

    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch2:[F

    aget v2, v2, v3

    sub-float/2addr v1, v2

    float-to-double v1, v1

    iget-object v5, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    aget v5, v5, v4

    iget-object v6, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch2:[F

    aget v6, v6, v4

    sub-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    double-to-float v1, v1

    .line 196
    .local v1, "edgeLength":F
    const v2, 0x3a83126f    # 0.001f

    sub-float v2, v1, v2

    const/4 v5, 0x0

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 197
    iget-object v2, p1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->bounds:Landroid/graphics/RectF;

    invoke-direct {p0, v2, p2}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->getEdgeCenterForIndex(Landroid/graphics/RectF;I)F

    move-result v2

    .line 198
    .local v2, "center":F
    iget-object v6, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->shapePath:Lcom/google/android/material/shape/ShapePath;

    invoke-virtual {v6, v5, v5}, Lcom/google/android/material/shape/ShapePath;->reset(FF)V

    .line 199
    iget-object v5, p1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {p0, p2, v5}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->getEdgeTreatmentForIndex(ILcom/google/android/material/shape/ShapeAppearanceModel;)Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v5

    .line 200
    .local v5, "edgeTreatment":Lcom/google/android/material/shape/EdgeTreatment;
    iget v6, p1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->interpolation:F

    iget-object v7, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->shapePath:Lcom/google/android/material/shape/ShapePath;

    invoke-virtual {v5, v1, v2, v6, v7}, Lcom/google/android/material/shape/EdgeTreatment;->getEdgePath(FFFLcom/google/android/material/shape/ShapePath;)V

    .line 201
    iget-object v6, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgePath:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 202
    iget-object v6, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->shapePath:Lcom/google/android/material/shape/ShapePath;

    iget-object v7, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Landroid/graphics/Matrix;

    aget-object v7, v7, p2

    iget-object v8, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgePath:Landroid/graphics/Path;

    invoke-virtual {v6, v7, v8}, Lcom/google/android/material/shape/ShapePath;->applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 204
    iget-boolean v6, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeIntersectionCheckEnabled:Z

    if-eqz v6, :cond_ee

    .line 206
    invoke-virtual {v5}, Lcom/google/android/material/shape/EdgeTreatment;->forceIntersection()Z

    move-result v6

    if-nez v6, :cond_ad

    iget-object v6, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgePath:Landroid/graphics/Path;

    .line 207
    invoke-direct {p0, v6, p2}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->pathOverlapsCorner(Landroid/graphics/Path;I)Z

    move-result v6

    if-nez v6, :cond_ad

    iget-object v6, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgePath:Landroid/graphics/Path;

    .line 208
    invoke-direct {p0, v6, v0}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->pathOverlapsCorner(Landroid/graphics/Path;I)Z

    move-result v6

    if-eqz v6, :cond_ee

    .line 212
    :cond_ad
    iget-object v6, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgePath:Landroid/graphics/Path;

    iget-object v7, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgePath:Landroid/graphics/Path;

    iget-object v8, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->boundsPath:Landroid/graphics/Path;

    sget-object v9, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v6, v7, v8, v9}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 216
    iget-object v6, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    iget-object v7, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->shapePath:Lcom/google/android/material/shape/ShapePath;

    invoke-virtual {v7}, Lcom/google/android/material/shape/ShapePath;->getStartX()F

    move-result v7

    aput v7, v6, v3

    .line 217
    iget-object v6, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    iget-object v7, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->shapePath:Lcom/google/android/material/shape/ShapePath;

    invoke-virtual {v7}, Lcom/google/android/material/shape/ShapePath;->getStartY()F

    move-result v7

    aput v7, v6, v4

    .line 218
    iget-object v6, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Landroid/graphics/Matrix;

    aget-object v6, v6, p2

    iget-object v7, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 219
    iget-object v6, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->overlappedEdgePath:Landroid/graphics/Path;

    iget-object v7, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    aget v3, v7, v3

    iget-object v7, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    aget v4, v7, v4

    invoke-virtual {v6, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 222
    iget-object v3, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->shapePath:Lcom/google/android/material/shape/ShapePath;

    iget-object v4, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Landroid/graphics/Matrix;

    aget-object v4, v4, p2

    iget-object v6, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->overlappedEdgePath:Landroid/graphics/Path;

    invoke-virtual {v3, v4, v6}, Lcom/google/android/material/shape/ShapePath;->applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    goto :goto_f9

    .line 224
    :cond_ee
    iget-object v3, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->shapePath:Lcom/google/android/material/shape/ShapePath;

    iget-object v4, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Landroid/graphics/Matrix;

    aget-object v4, v4, p2

    iget-object v6, p1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->path:Landroid/graphics/Path;

    invoke-virtual {v3, v4, v6}, Lcom/google/android/material/shape/ShapePath;->applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 227
    :goto_f9
    iget-object v3, p1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->pathListener:Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;

    if-eqz v3, :cond_108

    .line 228
    iget-object v3, p1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->pathListener:Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;

    iget-object v4, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->shapePath:Lcom/google/android/material/shape/ShapePath;

    iget-object v6, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Landroid/graphics/Matrix;

    aget-object v6, v6, p2

    invoke-interface {v3, v4, v6, p2}, Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;->onEdgePathCreated(Lcom/google/android/material/shape/ShapePath;Landroid/graphics/Matrix;I)V

    .line 230
    :cond_108
    return-void
.end method

.method private getCoordinatesOfCorner(ILandroid/graphics/RectF;Landroid/graphics/PointF;)V
    .registers 6
    .param p1, "index"    # I
    .param p2, "bounds"    # Landroid/graphics/RectF;
    .param p3, "pointF"    # Landroid/graphics/PointF;

    .line 307
    packed-switch p1, :pswitch_data_24

    .line 319
    iget v0, p2, Landroid/graphics/RectF;->right:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_23

    .line 315
    :pswitch_b
    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 316
    goto :goto_23

    .line 312
    :pswitch_13
    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p3, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 313
    goto :goto_23

    .line 309
    :pswitch_1b
    iget v0, p2, Landroid/graphics/RectF;->right:F

    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p3, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 310
    nop

    .line 322
    :goto_23
    return-void

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_13
        :pswitch_b
    .end packed-switch
.end method

.method private getCornerSizeForIndex(ILcom/google/android/material/shape/ShapeAppearanceModel;)Lcom/google/android/material/shape/CornerSize;
    .registers 4
    .param p1, "index"    # I
    .param p2, "shapeAppearanceModel"    # Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 278
    packed-switch p1, :pswitch_data_18

    .line 287
    invoke-virtual {p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v0

    return-object v0

    .line 284
    :pswitch_8
    invoke-virtual {p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v0

    return-object v0

    .line 282
    :pswitch_d
    invoke-virtual {p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v0

    return-object v0

    .line 280
    :pswitch_12
    invoke-virtual {p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_12
        :pswitch_d
        :pswitch_8
    .end packed-switch
.end method

.method private getCornerTreatmentForIndex(ILcom/google/android/material/shape/ShapeAppearanceModel;)Lcom/google/android/material/shape/CornerTreatment;
    .registers 4
    .param p1, "index"    # I
    .param p2, "shapeAppearanceModel"    # Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 263
    packed-switch p1, :pswitch_data_18

    .line 272
    invoke-virtual {p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCorner()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    return-object v0

    .line 269
    :pswitch_8
    invoke-virtual {p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCorner()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    return-object v0

    .line 267
    :pswitch_d
    invoke-virtual {p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomLeftCorner()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    return-object v0

    .line 265
    :pswitch_12
    invoke-virtual {p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomRightCorner()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_12
        :pswitch_d
        :pswitch_8
    .end packed-switch
.end method

.method private getEdgeCenterForIndex(Landroid/graphics/RectF;I)F
    .registers 7
    .param p1, "bounds"    # Landroid/graphics/RectF;
    .param p2, "index"    # I

    .line 247
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    aget-object v1, v1, p2

    iget v1, v1, Lcom/google/android/material/shape/ShapePath;->endX:F

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 248
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    aget-object v1, v1, p2

    iget v1, v1, Lcom/google/android/material/shape/ShapePath;->endY:F

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 249
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 250
    packed-switch p2, :pswitch_data_3e

    .line 257
    :pswitch_22
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    aget v1, v1, v3

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0

    .line 253
    :pswitch_30
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    aget v1, v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_30
        :pswitch_22
        :pswitch_30
    .end packed-switch
.end method

.method private getEdgeTreatmentForIndex(ILcom/google/android/material/shape/ShapeAppearanceModel;)Lcom/google/android/material/shape/EdgeTreatment;
    .registers 4
    .param p1, "index"    # I
    .param p2, "shapeAppearanceModel"    # Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 293
    packed-switch p1, :pswitch_data_18

    .line 302
    invoke-virtual {p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getRightEdge()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    return-object v0

    .line 299
    :pswitch_8
    invoke-virtual {p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopEdge()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    return-object v0

    .line 297
    :pswitch_d
    invoke-virtual {p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getLeftEdge()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    return-object v0

    .line 295
    :pswitch_12
    invoke-virtual {p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomEdge()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_12
        :pswitch_d
        :pswitch_8
    .end packed-switch
.end method

.method public static getInstance()Lcom/google/android/material/shape/ShapeAppearancePathProvider;
    .registers 1

    .line 83
    sget-object v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider$Lazy;->INSTANCE:Lcom/google/android/material/shape/ShapeAppearancePathProvider;

    return-object v0
.end method

.method private pathOverlapsCorner(Landroid/graphics/Path;I)Z
    .registers 7
    .param p1, "edgePath"    # Landroid/graphics/Path;
    .param p2, "index"    # I

    .line 234
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 235
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    aget-object v1, v1, p2

    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPath:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/shape/ShapePath;->applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 237
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 238
    .local v0, "bounds":Landroid/graphics/RectF;
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 239
    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPath:Landroid/graphics/Path;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 240
    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPath:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 241
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 243
    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_43

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpl-float v2, v2, v3

    if-lez v2, :cond_43

    goto :goto_44

    :cond_43
    const/4 v1, 0x0

    :cond_44
    :goto_44
    return v1
.end method

.method private setCornerPathAndTransform(Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;I)V
    .registers 10
    .param p1, "spec"    # Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;
    .param p2, "index"    # I

    .line 148
    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {p0, p2, v0}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->getCornerSizeForIndex(ILcom/google/android/material/shape/ShapeAppearanceModel;)Lcom/google/android/material/shape/CornerSize;

    move-result-object v0

    .line 149
    .local v0, "size":Lcom/google/android/material/shape/CornerSize;
    iget-object v1, p1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {p0, p2, v1}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->getCornerTreatmentForIndex(ILcom/google/android/material/shape/ShapeAppearanceModel;)Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    aget-object v2, v2, p2

    iget v4, p1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->interpolation:F

    iget-object v5, p1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->bounds:Landroid/graphics/RectF;

    .line 150
    const/high16 v3, 0x42b40000    # 90.0f

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/material/shape/CornerTreatment;->getCornerPath(Lcom/google/android/material/shape/ShapePath;FFLandroid/graphics/RectF;Lcom/google/android/material/shape/CornerSize;)V

    .line 152
    invoke-direct {p0, p2}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->angleOfEdge(I)F

    move-result v1

    .line 153
    .local v1, "edgeAngle":F
    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    aget-object v2, v2, p2

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 154
    iget-object v2, p1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->bounds:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->pointF:Landroid/graphics/PointF;

    invoke-direct {p0, p2, v2, v3}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->getCoordinatesOfCorner(ILandroid/graphics/RectF;Landroid/graphics/PointF;)V

    .line 155
    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    aget-object v2, v2, p2

    iget-object v3, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->pointF:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->pointF:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 156
    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    aget-object v2, v2, p2

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 157
    return-void
.end method

.method private setEdgePathAndTransform(I)V
    .registers 7
    .param p1, "index"    # I

    .line 160
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapePath;->getEndX()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 161
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapePath;->getEndY()F

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 162
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 163
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->angleOfEdge(I)F

    move-result v0

    .line 164
    .local v0, "edgeAngle":F
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Landroid/graphics/Matrix;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 165
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Landroid/graphics/Matrix;

    aget-object v1, v1, p1

    iget-object v4, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    aget v2, v4, v2

    iget-object v4, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    aget v3, v4, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 166
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Landroid/graphics/Matrix;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 167
    return-void
.end method


# virtual methods
.method public calculatePath(Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/graphics/RectF;Landroid/graphics/Path;)V
    .registers 11
    .param p1, "shapeAppearanceModel"    # Lcom/google/android/material/shape/ShapeAppearanceModel;
    .param p2, "interpolation"    # F
    .param p3, "bounds"    # Landroid/graphics/RectF;
    .param p4, "path"    # Landroid/graphics/Path;

    .line 99
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->calculatePath(Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;Landroid/graphics/Path;)V

    .line 100
    return-void
.end method

.method public calculatePath(Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;Landroid/graphics/Path;)V
    .registers 14
    .param p1, "shapeAppearanceModel"    # Lcom/google/android/material/shape/ShapeAppearanceModel;
    .param p2, "interpolation"    # F
    .param p3, "bounds"    # Landroid/graphics/RectF;
    .param p4, "pathListener"    # Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;
    .param p5, "path"    # Landroid/graphics/Path;

    .line 118
    invoke-virtual {p5}, Landroid/graphics/Path;->rewind()V

    .line 119
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->overlappedEdgePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 120
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->boundsPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 121
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->boundsPath:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, p3, v1}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 122
    new-instance v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;

    move-object v2, v0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;Landroid/graphics/Path;)V

    .line 128
    .local v0, "spec":Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_20
    const/4 v2, 0x4

    if-ge v1, v2, :cond_2c

    .line 129
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->setCornerPathAndTransform(Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;I)V

    .line 130
    invoke-direct {p0, v1}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->setEdgePathAndTransform(I)V

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 133
    .end local v1    # "index":I
    :cond_2c
    const/4 v1, 0x0

    .restart local v1    # "index":I
    :goto_2d
    if-ge v1, v2, :cond_38

    .line 134
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->appendCornerPath(Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;I)V

    .line 135
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->appendEdgePath(Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;I)V

    .line 133
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 138
    .end local v1    # "index":I
    :cond_38
    invoke-virtual {p5}, Landroid/graphics/Path;->close()V

    .line 139
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->overlappedEdgePath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 142
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->overlappedEdgePath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4f

    .line 143
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->overlappedEdgePath:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-virtual {p5, v1, v2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 145
    :cond_4f
    return-void
.end method

.method setEdgeIntersectionCheckEnable(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .line 329
    iput-boolean p1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeIntersectionCheckEnabled:Z

    .line 330
    return-void
.end method
