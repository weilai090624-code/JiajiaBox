.class public final Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;
.super Landroid/view/View;
.source "DrawerDesign.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/DrawerDesign;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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

    .line 511
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 512
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 513
    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->pen:Landroid/graphics/Paint;

    .line 514
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->path:Landroid/graphics/Path;

    .line 515
    iput p2, p0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->kind:I

    .line 516
    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->muted(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->color:I

    const/4 p1, 0x2

    .line 517
    invoke-virtual {p0, p1}, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->setImportantForAccessibility(I)V

    .line 518
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const p1, 0x3fd9999a    # 1.7f

    .line 519
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 520
    sget-object p1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 521
    sget-object p1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 527
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 528
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    .line 529
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

    .line 530
    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->pen:Landroid/graphics/Paint;

    iget v3, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->color:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 531
    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 532
    iget v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->kind:I

    const/high16 v3, 0x41100000    # 9.0f

    const/high16 v4, 0x41600000    # 14.0f

    const/high16 v5, 0x41a00000    # 20.0f

    const/high16 v7, 0x41200000    # 10.0f

    const/high16 v6, 0x41980000    # 19.0f

    const/high16 v8, 0x40a00000    # 5.0f

    const/high16 v10, 0x41400000    # 12.0f

    if-nez v2, :cond_7e

    .line 534
    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->path:Landroid/graphics/Path;

    const/high16 v11, 0x40400000    # 3.0f

    invoke-virtual {v2, v11, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 535
    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->path:Landroid/graphics/Path;

    invoke-virtual {v2, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 536
    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->path:Landroid/graphics/Path;

    const/high16 v10, 0x41a80000    # 21.0f

    invoke-virtual {v2, v10, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 537
    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->path:Landroid/graphics/Path;

    invoke-virtual {v2, v8, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 538
    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->path:Landroid/graphics/Path;

    invoke-virtual {v2, v8, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 539
    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->path:Landroid/graphics/Path;

    invoke-virtual {v2, v7, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 540
    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->path:Landroid/graphics/Path;

    invoke-virtual {v2, v7, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 541
    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->path:Landroid/graphics/Path;

    invoke-virtual {v2, v4, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 542
    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->path:Landroid/graphics/Path;

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 543
    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->path:Landroid/graphics/Path;

    invoke-virtual {v2, v6, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 544
    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->path:Landroid/graphics/Path;

    invoke-virtual {v2, v6, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 545
    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->path:Landroid/graphics/Path;

    iget-object v3, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->pen:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_1b3

    :cond_7e
    const/high16 v11, 0x41800000    # 16.0f

    const/high16 v12, 0x40e00000    # 7.0f

    const/4 v13, 0x1

    const/high16 v14, 0x41000000    # 8.0f

    const/high16 v15, 0x40000000    # 2.0f

    if-eq v2, v13, :cond_16d

    const/4 v4, 0x2

    const/4 v5, 0x5

    const/16 v16, 0x0

    const/high16 v17, 0x41200000    # 10.0f

    const/4 v7, 0x3

    if-ne v2, v4, :cond_bf

    const/4 v8, 0x0

    :goto_93
    if-ge v8, v7, :cond_1b3

    mul-int/lit8 v2, v8, 0x7

    add-int/2addr v2, v5

    int-to-float v3, v2

    if-ne v8, v13, :cond_9e

    const/high16 v10, 0x41000000    # 8.0f

    goto :goto_a0

    :cond_9e
    const/high16 v10, 0x41800000    # 16.0f

    :goto_a0
    sub-float v4, v10, v15

    .line 552
    iget-object v6, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->pen:Landroid/graphics/Paint;

    const/high16 v2, 0x40400000    # 3.0f

    const/4 v12, 0x5

    move v5, v3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float v2, v10, v15

    const/high16 v4, 0x41a80000    # 21.0f

    .line 553
    iget-object v6, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->pen:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 554
    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->pen:Landroid/graphics/Paint;

    invoke-virtual {v1, v10, v3, v15, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v8, v8, 0x1

    const/4 v5, 0x5

    goto :goto_93

    :cond_bf
    const/4 v4, 0x5

    if-ne v2, v7, :cond_f6

    const/high16 v7, 0x40000000    # 2.0f

    .line 559
    iget-object v8, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->pen:Landroid/graphics/Paint;

    const/high16 v2, 0x40400000    # 3.0f

    const/high16 v3, 0x40400000    # 3.0f

    const/high16 v4, 0x41200000    # 10.0f

    const/high16 v5, 0x41200000    # 10.0f

    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 560
    iget-object v8, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->pen:Landroid/graphics/Paint;

    const/high16 v2, 0x41600000    # 14.0f

    const/high16 v4, 0x41a80000    # 21.0f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 561
    iget-object v8, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->pen:Landroid/graphics/Paint;

    const/high16 v2, 0x40400000    # 3.0f

    const/high16 v3, 0x41600000    # 14.0f

    const/high16 v4, 0x41200000    # 10.0f

    const/high16 v5, 0x41a80000    # 21.0f

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 562
    iget-object v8, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->pen:Landroid/graphics/Paint;

    const/high16 v2, 0x41600000    # 14.0f

    const/high16 v4, 0x41a80000    # 21.0f

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1b3

    :cond_f6
    const/4 v5, 0x4

    if-ne v2, v5, :cond_13a

    .line 564
    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->pen:Landroid/graphics/Paint;

    invoke-virtual {v1, v10, v10, v8, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/4 v7, 0x0

    :goto_ff
    const/16 v2, 0x8

    if-ge v7, v2, :cond_1b3

    int-to-double v2, v7

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double v2, v2, v4

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    div-double/2addr v2, v4

    .line 568
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

    mul-float v6, v6, v17

    add-float/2addr v6, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v2, v2, v17

    add-float/2addr v2, v10

    move v3, v5

    move v5, v2

    move v2, v4

    move v4, v6

    iget-object v6, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->pen:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_ff

    :cond_13a
    if-ne v2, v4, :cond_154

    .line 573
    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->pen:Landroid/graphics/Paint;

    invoke-virtual {v1, v10, v10, v3, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/high16 v5, 0x41880000    # 17.0f

    .line 574
    iget-object v6, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->pen:Landroid/graphics/Paint;

    const/high16 v2, 0x41400000    # 12.0f

    const/high16 v3, 0x41300000    # 11.0f

    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 575
    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->pen:Landroid/graphics/Paint;

    invoke-virtual {v1, v10, v12, v2}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    goto :goto_1b3

    .line 577
    :cond_154
    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->path:Landroid/graphics/Path;

    invoke-virtual {v2, v14, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 578
    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->path:Landroid/graphics/Path;

    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual {v2, v3, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 579
    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->path:Landroid/graphics/Path;

    invoke-virtual {v2, v14, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 580
    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->path:Landroid/graphics/Path;

    iget-object v3, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->pen:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1b3

    .line 584
    :cond_16d
    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->pen:Landroid/graphics/Paint;

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-virtual {v1, v3, v8, v15, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/high16 v2, 0x41900000    # 18.0f

    .line 585
    iget-object v7, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->pen:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v6, v15, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 586
    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->path:Landroid/graphics/Path;

    invoke-virtual {v2, v3, v12}, Landroid/graphics/Path;->moveTo(FF)V

    .line 587
    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->path:Landroid/graphics/Path;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 588
    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->path:Landroid/graphics/Path;

    const/high16 v4, 0x41300000    # 11.0f

    invoke-virtual {v2, v3, v6, v4, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 589
    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->path:Landroid/graphics/Path;

    invoke-virtual {v2, v11, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 590
    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->path:Landroid/graphics/Path;

    invoke-virtual {v2, v4, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 591
    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->path:Landroid/graphics/Path;

    invoke-virtual {v2, v5, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 592
    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->path:Landroid/graphics/Path;

    const/high16 v3, 0x41880000    # 17.0f

    invoke-virtual {v2, v3, v15}, Landroid/graphics/Path;->moveTo(FF)V

    .line 593
    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->path:Landroid/graphics/Path;

    invoke-virtual {v2, v5, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 594
    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->path:Landroid/graphics/Path;

    invoke-virtual {v2, v3, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 595
    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->path:Landroid/graphics/Path;

    iget-object v3, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->pen:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 597
    :cond_1b3
    :goto_1b3
    invoke-virtual {v1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method
