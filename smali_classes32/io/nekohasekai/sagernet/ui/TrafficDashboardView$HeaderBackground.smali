.class final Lio/nekohasekai/sagernet/ui/TrafficDashboardView$HeaderBackground;
.super Landroid/graphics/drawable/GradientDrawable;
.source "TrafficDashboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/TrafficDashboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HeaderBackground"
.end annotation


# instance fields
.field private final bottom:Landroid/graphics/Path;

.field private final density:F

.field private final edge:Landroid/graphics/Paint;


# direct methods
.method constructor <init>(F)V
    .registers 4

    .line 411
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 412
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 413
    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$HeaderBackground;->edge:Landroid/graphics/Paint;

    .line 414
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$HeaderBackground;->bottom:Landroid/graphics/Path;

    .line 415
    iput p1, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$HeaderBackground;->density:F

    .line 416
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float p1, p1, v1

    .line 417
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const p1, 0x407a8494

    .line 418
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 4

    .line 440
    invoke-super {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 441
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$HeaderBackground;->bottom:Landroid/graphics/Path;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$HeaderBackground;->edge:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 10

    .line 423
    invoke-super {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 424
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$HeaderBackground;->edge:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 425
    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    .line 426
    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    sub-float/2addr v3, v0

    .line 427
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    sub-float/2addr p1, v0

    .line 428
    iget v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$HeaderBackground;->density:F

    const/high16 v4, 0x41800000    # 16.0f

    mul-float v0, v0, v4

    sub-float v4, v3, v2

    div-float/2addr v4, v1

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 429
    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$HeaderBackground;->bottom:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 430
    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$HeaderBackground;->bottom:Landroid/graphics/Path;

    sub-float v5, p1, v0

    invoke-virtual {v4, v2, v5}, Landroid/graphics/Path;->moveTo(FF)V

    mul-float v1, v1, v0

    sub-float v4, p1, v1

    .line 433
    iget-object v5, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$HeaderBackground;->bottom:Landroid/graphics/Path;

    new-instance v6, Landroid/graphics/RectF;

    add-float v7, v2, v1

    invoke-direct {v6, v2, v4, v7, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v2, 0x43340000    # 180.0f

    const/high16 v7, -0x3d4c0000    # -90.0f

    invoke-virtual {v5, v6, v2, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 434
    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$HeaderBackground;->bottom:Landroid/graphics/Path;

    sub-float v0, v3, v0

    invoke-virtual {v2, v0, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 435
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$HeaderBackground;->bottom:Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/RectF;

    sub-float v1, v3, v1

    invoke-direct {v2, v1, v4, v3, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 p1, 0x42b40000    # 90.0f

    invoke-virtual {v0, v2, p1, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    return-void
.end method
