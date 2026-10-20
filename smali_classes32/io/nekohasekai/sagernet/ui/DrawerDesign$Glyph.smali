.class final Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;
.super Landroid/view/View;
.source "DrawerDesign.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/DrawerDesign;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Glyph"
.end annotation


# instance fields
.field color:I

.field final kind:I

.field final path:Landroid/graphics/Path;

.field final pen:Landroid/graphics/Paint;


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .registers 5

    .line 83
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 82
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->pen:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->path:Landroid/graphics/Path;

    .line 83
    iput p2, p0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->kind:I

    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->muted(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->color:I

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->setImportantForAccessibility(I)V

    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const p1, 0x3fc66666    # 1.55f

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object p1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget-object p1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 84
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x41c00000    # 24.0f

    div-float/2addr v2, v3

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->pen:Landroid/graphics/Paint;

    iget v3, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->color:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 85
    iget v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->kind:I

    const/high16 v3, 0x41100000    # 9.0f

    const/high16 v4, 0x41600000    # 14.0f

    const/high16 v5, 0x41a00000    # 20.0f

    const/high16 v6, 0x41980000    # 19.0f

    const/high16 v8, 0x40a00000    # 5.0f

    const/high16 v10, 0x41400000    # 12.0f

    if-eqz v2, :cond_172

    const/high16 v12, 0x40e00000    # 7.0f

    const/4 v13, 0x1

    const/high16 v14, 0x41000000    # 8.0f

    const/high16 v15, 0x40000000    # 2.0f

    if-eq v2, v13, :cond_129

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/high16 v16, 0x41200000    # 10.0f

    const/4 v7, 0x5

    const/4 v11, 0x3

    if-eq v2, v4, :cond_fa

    if-eq v2, v11, :cond_c6

    const/4 v4, 0x4

    if-eq v2, v4, :cond_83

    if-eq v2, v7, :cond_6a

    .line 92
    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->path:Landroid/graphics/Path;

    invoke-virtual {v2, v14, v8}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->path:Landroid/graphics/Path;

    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual {v2, v3, v10}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->path:Landroid/graphics/Path;

    invoke-virtual {v2, v14, v6}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->path:Landroid/graphics/Path;

    iget-object v3, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->pen:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_1b8

    .line 91
    :cond_6a
    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->pen:Landroid/graphics/Paint;

    invoke-virtual {v1, v10, v10, v3, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/high16 v5, 0x41880000    # 17.0f

    iget-object v6, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->pen:Landroid/graphics/Paint;

    const/high16 v2, 0x41400000    # 12.0f

    const/high16 v3, 0x41300000    # 11.0f

    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->pen:Landroid/graphics/Paint;

    invoke-virtual {v1, v10, v12, v2}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    goto/16 :goto_1b8

    .line 90
    :cond_83
    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->pen:Landroid/graphics/Paint;

    invoke-virtual {v1, v10, v10, v8, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/4 v7, 0x0

    :goto_89
    const/16 v2, 0x8

    if-ge v7, v2, :cond_125

    int-to-double v2, v7

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double v2, v2, v4

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float v4, v4, v14

    add-float/2addr v4, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float v5, v5, v14

    add-float/2addr v5, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    double-to-float v6, v11

    mul-float v6, v6, v16

    add-float/2addr v6, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v2, v2, v16

    add-float/2addr v2, v10

    move v3, v5

    move v5, v2

    move v2, v4

    move v4, v6

    iget-object v6, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->pen:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p1

    goto :goto_89

    :cond_c6
    const/high16 v7, 0x40000000    # 2.0f

    .line 89
    iget-object v8, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->pen:Landroid/graphics/Paint;

    const/high16 v2, 0x40400000    # 3.0f

    const/high16 v3, 0x40400000    # 3.0f

    const/high16 v4, 0x41200000    # 10.0f

    const/high16 v5, 0x41200000    # 10.0f

    const/high16 v6, 0x40000000    # 2.0f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    iget-object v8, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->pen:Landroid/graphics/Paint;

    const/high16 v2, 0x41600000    # 14.0f

    const/high16 v4, 0x41a80000    # 21.0f

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    iget-object v8, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->pen:Landroid/graphics/Paint;

    const/high16 v2, 0x40400000    # 3.0f

    const/high16 v3, 0x41600000    # 14.0f

    const/high16 v4, 0x41200000    # 10.0f

    const/high16 v5, 0x41a80000    # 21.0f

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    iget-object v8, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->pen:Landroid/graphics/Paint;

    const/high16 v2, 0x41600000    # 14.0f

    const/high16 v4, 0x41a80000    # 21.0f

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1b8

    :cond_fa
    const/4 v8, 0x0

    :goto_fb
    if-ge v8, v11, :cond_125

    mul-int/lit8 v1, v8, 0x7

    add-int/2addr v1, v7

    int-to-float v3, v1

    if-ne v8, v13, :cond_106

    const/high16 v10, 0x41000000    # 8.0f

    goto :goto_108

    :cond_106
    const/high16 v10, 0x41800000    # 16.0f

    :goto_108
    sub-float v4, v10, v15

    .line 88
    iget-object v6, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->pen:Landroid/graphics/Paint;

    const/high16 v2, 0x40400000    # 3.0f

    move v5, v3

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float v2, v10, v15

    const/high16 v4, 0x41a80000    # 21.0f

    iget-object v6, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->pen:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->pen:Landroid/graphics/Paint;

    invoke-virtual {v1, v10, v3, v15, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_fb

    :cond_125
    move-object/from16 v1, p1

    goto/16 :goto_1b8

    .line 87
    :cond_129
    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->pen:Landroid/graphics/Paint;

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-virtual {v1, v3, v8, v15, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/high16 v2, 0x41900000    # 18.0f

    iget-object v7, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->pen:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v6, v15, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->path:Landroid/graphics/Path;

    invoke-virtual {v2, v3, v12}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->path:Landroid/graphics/Path;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->path:Landroid/graphics/Path;

    const/high16 v4, 0x41300000    # 11.0f

    invoke-virtual {v2, v3, v6, v4, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->path:Landroid/graphics/Path;

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v2, v3, v6}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->path:Landroid/graphics/Path;

    invoke-virtual {v2, v4, v8}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->path:Landroid/graphics/Path;

    invoke-virtual {v2, v5, v8}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->path:Landroid/graphics/Path;

    const/high16 v3, 0x41880000    # 17.0f

    invoke-virtual {v2, v3, v15}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->path:Landroid/graphics/Path;

    invoke-virtual {v2, v5, v8}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->path:Landroid/graphics/Path;

    invoke-virtual {v2, v3, v14}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->path:Landroid/graphics/Path;

    iget-object v3, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->pen:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1b8

    :cond_172
    const/high16 v16, 0x41200000    # 10.0f

    .line 86
    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->path:Landroid/graphics/Path;

    const/high16 v7, 0x40400000    # 3.0f

    const/high16 v11, 0x41200000    # 10.0f

    invoke-virtual {v2, v7, v11}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->path:Landroid/graphics/Path;

    invoke-virtual {v2, v10, v7}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->path:Landroid/graphics/Path;

    const/high16 v7, 0x41a80000    # 21.0f

    invoke-virtual {v2, v7, v11}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->path:Landroid/graphics/Path;

    invoke-virtual {v2, v8, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->path:Landroid/graphics/Path;

    invoke-virtual {v2, v8, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->path:Landroid/graphics/Path;

    invoke-virtual {v2, v11, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->path:Landroid/graphics/Path;

    invoke-virtual {v2, v11, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->path:Landroid/graphics/Path;

    invoke-virtual {v2, v4, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->path:Landroid/graphics/Path;

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->path:Landroid/graphics/Path;

    invoke-virtual {v2, v6, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->path:Landroid/graphics/Path;

    invoke-virtual {v2, v6, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->path:Landroid/graphics/Path;

    iget-object v3, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->pen:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 93
    :goto_1b8
    invoke-virtual {v1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method
