.class public Lcom/king/zxing/ViewfinderView;
.super Landroid/view/View;
.source "ViewfinderView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/king/zxing/ViewfinderView$FrameGravity;,
        Lcom/king/zxing/ViewfinderView$TextLocation;,
        Lcom/king/zxing/ViewfinderView$LaserStyle;
    }
.end annotation


# static fields
.field private static final CURRENT_POINT_OPACITY:I = 0xa0

.field private static final MAX_RESULT_POINTS:I = 0x14

.field private static final POINT_SIZE:I = 0x1e


# instance fields
.field private cornerColor:I

.field private cornerRectHeight:I

.field private cornerRectWidth:I

.field private frame:Landroid/graphics/Rect;

.field private frameColor:I

.field private frameGravity:Lcom/king/zxing/ViewfinderView$FrameGravity;

.field private frameHeight:I

.field private frameLineWidth:I

.field private framePaddingBottom:F

.field private framePaddingLeft:F

.field private framePaddingRight:F

.field private framePaddingTop:F

.field private frameRatio:F

.field private frameWidth:I

.field private gridColumn:I

.field private gridHeight:I

.field private labelText:Ljava/lang/String;

.field private labelTextColor:I

.field private labelTextLocation:Lcom/king/zxing/ViewfinderView$TextLocation;

.field private labelTextPadding:F

.field private labelTextSize:F

.field private labelTextWidth:I

.field private laserColor:I

.field private laserStyle:Lcom/king/zxing/ViewfinderView$LaserStyle;

.field private maskColor:I

.field private paint:Landroid/graphics/Paint;

.field private point:Landroid/graphics/Point;

.field private pointColor:I

.field private pointRadius:F

.field private pointStrokeColor:I

.field private pointStrokeRatio:F

.field private scannerAnimationDelay:I

.field public scannerEnd:I

.field private scannerLineHeight:I

.field private scannerLineMoveDistance:I

.field public scannerStart:I

.field private textPaint:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 253
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/king/zxing/ViewfinderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 254
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 257
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/king/zxing/ViewfinderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 258
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 261
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 110
    const/4 v0, 0x0

    iput v0, p0, Lcom/king/zxing/ViewfinderView;->scannerStart:I

    .line 114
    iput v0, p0, Lcom/king/zxing/ViewfinderView;->scannerEnd:I

    .line 193
    const v0, 0x3f99999a    # 1.2f

    iput v0, p0, Lcom/king/zxing/ViewfinderView;->pointStrokeRatio:F

    .line 262
    invoke-direct {p0, p1, p2}, Lcom/king/zxing/ViewfinderView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 263
    return-void
.end method

.method private drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "frame"    # Landroid/graphics/Rect;

    .line 430
    iget-object v0, p0, Lcom/king/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/king/zxing/ViewfinderView;->cornerColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 432
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/king/zxing/ViewfinderView;->cornerRectWidth:I

    add-int/2addr v0, v1

    int-to-float v4, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/king/zxing/ViewfinderView;->cornerRectHeight:I

    add-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/king/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 433
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/king/zxing/ViewfinderView;->cornerRectHeight:I

    add-int/2addr v0, v1

    int-to-float v4, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/king/zxing/ViewfinderView;->cornerRectWidth:I

    add-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/king/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 435
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/king/zxing/ViewfinderView;->cornerRectWidth:I

    sub-int/2addr v0, v1

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/king/zxing/ViewfinderView;->cornerRectHeight:I

    add-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/king/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 436
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/king/zxing/ViewfinderView;->cornerRectHeight:I

    sub-int/2addr v0, v1

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/king/zxing/ViewfinderView;->cornerRectWidth:I

    add-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/king/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 438
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/king/zxing/ViewfinderView;->cornerRectWidth:I

    sub-int/2addr v0, v1

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/king/zxing/ViewfinderView;->cornerRectHeight:I

    add-int/2addr v0, v1

    int-to-float v4, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/king/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 439
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/king/zxing/ViewfinderView;->cornerRectHeight:I

    sub-int/2addr v0, v1

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/king/zxing/ViewfinderView;->cornerRectWidth:I

    add-int/2addr v0, v1

    int-to-float v4, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/king/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 441
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/king/zxing/ViewfinderView;->cornerRectWidth:I

    sub-int/2addr v0, v1

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/king/zxing/ViewfinderView;->cornerRectHeight:I

    sub-int/2addr v0, v1

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/king/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 442
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/king/zxing/ViewfinderView;->cornerRectHeight:I

    sub-int/2addr v0, v1

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/king/zxing/ViewfinderView;->cornerRectWidth:I

    sub-int/2addr v0, v1

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/king/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 443
    return-void
.end method

.method private drawExterior(Landroid/graphics/Canvas;Landroid/graphics/Rect;II)V
    .registers 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "frame"    # Landroid/graphics/Rect;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 559
    iget v0, p0, Lcom/king/zxing/ViewfinderView;->maskColor:I

    if-eqz v0, :cond_41

    .line 560
    iget-object v0, p0, Lcom/king/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/king/zxing/ViewfinderView;->maskColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 561
    int-to-float v5, p3

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/king/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 562
    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/king/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 563
    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    int-to-float v4, p3

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/king/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 564
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v0

    int-to-float v4, p3

    int-to-float v5, p4

    iget-object v6, p0, Lcom/king/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 566
    :cond_41
    return-void
.end method

.method private drawFrame(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "frame"    # Landroid/graphics/Rect;

    .line 544
    iget-object v0, p0, Lcom/king/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/king/zxing/ViewfinderView;->frameColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 545
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/king/zxing/ViewfinderView;->frameLineWidth:I

    add-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/king/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 546
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/king/zxing/ViewfinderView;->frameLineWidth:I

    add-int/2addr v0, v1

    int-to-float v4, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/king/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 547
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/king/zxing/ViewfinderView;->frameLineWidth:I

    sub-int/2addr v0, v1

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/king/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 548
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/king/zxing/ViewfinderView;->frameLineWidth:I

    sub-int/2addr v0, v1

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/king/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 549
    return-void
.end method

.method private drawGridScanner(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .registers 19
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "frame"    # Landroid/graphics/Rect;

    .line 496
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x2

    .line 497
    .local v2, "stroke":I
    iget-object v3, v0, Lcom/king/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 499
    iget v3, v0, Lcom/king/zxing/ViewfinderView;->gridHeight:I

    if-lez v3, :cond_1e

    iget v3, v0, Lcom/king/zxing/ViewfinderView;->scannerStart:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget v4, v0, Lcom/king/zxing/ViewfinderView;->gridHeight:I

    if-le v3, v4, :cond_1e

    iget v3, v0, Lcom/king/zxing/ViewfinderView;->scannerStart:I

    iget v4, v0, Lcom/king/zxing/ViewfinderView;->gridHeight:I

    sub-int/2addr v3, v4

    goto :goto_20

    :cond_1e
    iget v3, v1, Landroid/graphics/Rect;->top:I

    .line 501
    .local v3, "startY":I
    :goto_20
    new-instance v12, Landroid/graphics/LinearGradient;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v5

    const/4 v6, 0x2

    div-int/2addr v5, v6

    add-int/2addr v4, v5

    int-to-float v5, v4

    int-to-float v7, v3

    iget v4, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v8

    div-int/2addr v8, v6

    add-int/2addr v4, v8

    int-to-float v8, v4

    iget v4, v0, Lcom/king/zxing/ViewfinderView;->scannerStart:I

    int-to-float v9, v4

    iget v4, v0, Lcom/king/zxing/ViewfinderView;->laserColor:I

    invoke-virtual {v0, v4}, Lcom/king/zxing/ViewfinderView;->shadeColor(I)I

    move-result v4

    iget v10, v0, Lcom/king/zxing/ViewfinderView;->laserColor:I

    filled-new-array {v4, v10}, [I

    move-result-object v10

    new-array v11, v6, [F

    fill-array-data v11, :array_dc

    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v4, v12

    move v6, v7

    move v7, v8

    move v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v13

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 503
    .local v4, "linearGradient":Landroid/graphics/LinearGradient;
    iget-object v5, v0, Lcom/king/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 505
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float v5, v5, v6

    iget v6, v0, Lcom/king/zxing/ViewfinderView;->gridColumn:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 506
    .local v5, "wUnit":F
    move v6, v5

    .line 508
    .local v6, "hUnit":F
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_6a
    iget v8, v0, Lcom/king/zxing/ViewfinderView;->gridColumn:I

    if-ge v7, v8, :cond_8c

    .line 509
    iget v8, v1, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    int-to-float v9, v7

    mul-float v9, v9, v5

    add-float v11, v8, v9

    int-to-float v12, v3

    iget v8, v1, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    int-to-float v9, v7

    mul-float v9, v9, v5

    add-float v13, v8, v9

    iget v8, v0, Lcom/king/zxing/ViewfinderView;->scannerStart:I

    int-to-float v14, v8

    iget-object v15, v0, Lcom/king/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 508
    add-int/lit8 v7, v7, 0x1

    goto :goto_6a

    .line 512
    .end local v7    # "i":I
    :cond_8c
    iget v7, v0, Lcom/king/zxing/ViewfinderView;->gridHeight:I

    if-lez v7, :cond_9c

    iget v7, v0, Lcom/king/zxing/ViewfinderView;->scannerStart:I

    iget v8, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    iget v8, v0, Lcom/king/zxing/ViewfinderView;->gridHeight:I

    if-le v7, v8, :cond_9c

    iget v7, v0, Lcom/king/zxing/ViewfinderView;->gridHeight:I

    goto :goto_a1

    :cond_9c
    iget v7, v0, Lcom/king/zxing/ViewfinderView;->scannerStart:I

    iget v8, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    .line 515
    .local v7, "height":I
    :goto_a1
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_a2
    int-to-float v9, v8

    int-to-float v10, v7

    div-float/2addr v10, v6

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_c9

    .line 516
    iget v9, v1, Landroid/graphics/Rect;->left:I

    int-to-float v11, v9

    iget v9, v0, Lcom/king/zxing/ViewfinderView;->scannerStart:I

    int-to-float v9, v9

    int-to-float v10, v8

    mul-float v10, v10, v6

    sub-float v12, v9, v10

    iget v9, v1, Landroid/graphics/Rect;->right:I

    int-to-float v13, v9

    iget v9, v0, Lcom/king/zxing/ViewfinderView;->scannerStart:I

    int-to-float v9, v9

    int-to-float v10, v8

    mul-float v10, v10, v6

    sub-float v14, v9, v10

    iget-object v15, v0, Lcom/king/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 515
    add-int/lit8 v8, v8, 0x1

    goto :goto_a2

    .line 519
    .end local v8    # "i":I
    :cond_c9
    iget v8, v0, Lcom/king/zxing/ViewfinderView;->scannerStart:I

    iget v9, v0, Lcom/king/zxing/ViewfinderView;->scannerEnd:I

    if-ge v8, v9, :cond_d7

    .line 520
    iget v8, v0, Lcom/king/zxing/ViewfinderView;->scannerStart:I

    iget v9, v0, Lcom/king/zxing/ViewfinderView;->scannerLineMoveDistance:I

    add-int/2addr v8, v9

    iput v8, v0, Lcom/king/zxing/ViewfinderView;->scannerStart:I

    goto :goto_db

    .line 522
    :cond_d7
    iget v8, v1, Landroid/graphics/Rect;->top:I

    iput v8, v0, Lcom/king/zxing/ViewfinderView;->scannerStart:I

    .line 525
    :goto_db
    return-void

    :array_dc
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private drawLaserScanner(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "frame"    # Landroid/graphics/Rect;

    .line 451
    iget-object v0, p0, Lcom/king/zxing/ViewfinderView;->laserStyle:Lcom/king/zxing/ViewfinderView$LaserStyle;

    if-eqz v0, :cond_27

    .line 452
    iget-object v0, p0, Lcom/king/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/king/zxing/ViewfinderView;->laserColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 453
    sget-object v0, Lcom/king/zxing/ViewfinderView$1;->$SwitchMap$com$king$zxing$ViewfinderView$LaserStyle:[I

    iget-object v1, p0, Lcom/king/zxing/ViewfinderView;->laserStyle:Lcom/king/zxing/ViewfinderView$LaserStyle;

    invoke-virtual {v1}, Lcom/king/zxing/ViewfinderView$LaserStyle;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_28

    goto :goto_21

    .line 458
    :pswitch_19
    invoke-direct {p0, p1, p2}, Lcom/king/zxing/ViewfinderView;->drawGridScanner(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    goto :goto_21

    .line 455
    :pswitch_1d
    invoke-direct {p0, p1, p2}, Lcom/king/zxing/ViewfinderView;->drawLineScanner(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 456
    nop

    .line 461
    :goto_21
    iget-object v0, p0, Lcom/king/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 463
    :cond_27
    return-void

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_19
    .end packed-switch
.end method

.method private drawLineScanner(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .registers 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "frame"    # Landroid/graphics/Rect;

    .line 472
    new-instance v8, Landroid/graphics/LinearGradient;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, p0, Lcom/king/zxing/ViewfinderView;->scannerStart:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    iget v0, p0, Lcom/king/zxing/ViewfinderView;->scannerStart:I

    iget v4, p0, Lcom/king/zxing/ViewfinderView;->scannerLineHeight:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget v0, p0, Lcom/king/zxing/ViewfinderView;->laserColor:I

    .line 475
    invoke-virtual {p0, v0}, Lcom/king/zxing/ViewfinderView;->shadeColor(I)I

    move-result v5

    iget v6, p0, Lcom/king/zxing/ViewfinderView;->laserColor:I

    sget-object v7, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 479
    .local v0, "linearGradient":Landroid/graphics/LinearGradient;
    iget-object v1, p0, Lcom/king/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 480
    iget v1, p0, Lcom/king/zxing/ViewfinderView;->scannerStart:I

    iget v2, p0, Lcom/king/zxing/ViewfinderView;->scannerEnd:I

    if-gt v1, v2, :cond_55

    .line 482
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/king/zxing/ViewfinderView;->scannerLineHeight:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/king/zxing/ViewfinderView;->scannerStart:I

    int-to-float v3, v3

    iget v4, p2, Landroid/graphics/Rect;->right:I

    iget v5, p0, Lcom/king/zxing/ViewfinderView;->scannerLineHeight:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/king/zxing/ViewfinderView;->scannerStart:I

    iget v6, p0, Lcom/king/zxing/ViewfinderView;->scannerLineHeight:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 483
    .local v1, "rectF":Landroid/graphics/RectF;
    iget-object v2, p0, Lcom/king/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 484
    iget v2, p0, Lcom/king/zxing/ViewfinderView;->scannerStart:I

    iget v3, p0, Lcom/king/zxing/ViewfinderView;->scannerLineMoveDistance:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/king/zxing/ViewfinderView;->scannerStart:I

    .line 485
    .end local v1    # "rectF":Landroid/graphics/RectF;
    goto :goto_59

    .line 486
    :cond_55
    iget v1, p2, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/king/zxing/ViewfinderView;->scannerStart:I

    .line 488
    :goto_59
    return-void
.end method

.method private drawTextInfo(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .registers 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "frame"    # Landroid/graphics/Rect;

    .line 409
    iget-object v0, p0, Lcom/king/zxing/ViewfinderView;->labelText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_66

    .line 410
    iget-object v0, p0, Lcom/king/zxing/ViewfinderView;->textPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/king/zxing/ViewfinderView;->labelTextColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 411
    iget-object v0, p0, Lcom/king/zxing/ViewfinderView;->textPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/king/zxing/ViewfinderView;->labelTextSize:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 412
    iget-object v0, p0, Lcom/king/zxing/ViewfinderView;->textPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 413
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v3, p0, Lcom/king/zxing/ViewfinderView;->labelText:Ljava/lang/String;

    iget-object v4, p0, Lcom/king/zxing/ViewfinderView;->textPaint:Landroid/text/TextPaint;

    iget v5, p0, Lcom/king/zxing/ViewfinderView;->labelTextWidth:I

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v8, 0x0

    const/4 v9, 0x1

    const v7, 0x3f99999a    # 1.2f

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 414
    .local v0, "staticLayout":Landroid/text/StaticLayout;
    iget-object v1, p0, Lcom/king/zxing/ViewfinderView;->labelTextLocation:Lcom/king/zxing/ViewfinderView$TextLocation;

    sget-object v2, Lcom/king/zxing/ViewfinderView$TextLocation;->BOTTOM:Lcom/king/zxing/ViewfinderView$TextLocation;

    if-ne v1, v2, :cond_4a

    .line 415
    iget v1, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget v3, p0, Lcom/king/zxing/ViewfinderView;->labelTextPadding:F

    add-float/2addr v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_63

    .line 417
    :cond_4a
    iget v1, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p0, Lcom/king/zxing/ViewfinderView;->labelTextPadding:F

    sub-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 419
    :goto_63
    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 422
    .end local v0    # "staticLayout":Landroid/text/StaticLayout;
    :cond_66
    return-void
.end method

.method private getDisplayMetrics()Landroid/util/DisplayMetrics;
    .registers 2

    .line 312
    invoke-virtual {p0}, Lcom/king/zxing/ViewfinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 268
    sget-object v0, Lcom/king/zxing/R$styleable;->ViewfinderView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 269
    .local v0, "array":Landroid/content/res/TypedArray;
    sget v1, Lcom/king/zxing/R$styleable;->ViewfinderView_maskColor:I

    sget v2, Lcom/king/zxing/R$color;->viewfinder_mask:I

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/king/zxing/ViewfinderView;->maskColor:I

    .line 270
    sget v1, Lcom/king/zxing/R$styleable;->ViewfinderView_frameColor:I

    sget v2, Lcom/king/zxing/R$color;->viewfinder_frame:I

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/king/zxing/ViewfinderView;->frameColor:I

    .line 271
    sget v1, Lcom/king/zxing/R$styleable;->ViewfinderView_cornerColor:I

    sget v2, Lcom/king/zxing/R$color;->viewfinder_corner:I

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/king/zxing/ViewfinderView;->cornerColor:I

    .line 272
    sget v1, Lcom/king/zxing/R$styleable;->ViewfinderView_laserColor:I

    sget v2, Lcom/king/zxing/R$color;->viewfinder_laser:I

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/king/zxing/ViewfinderView;->laserColor:I

    .line 274
    sget v1, Lcom/king/zxing/R$styleable;->ViewfinderView_labelText:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/king/zxing/ViewfinderView;->labelText:Ljava/lang/String;

    .line 275
    sget v1, Lcom/king/zxing/R$styleable;->ViewfinderView_labelTextColor:I

    sget v2, Lcom/king/zxing/R$color;->viewfinder_text_color:I

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/king/zxing/ViewfinderView;->labelTextColor:I

    .line 276
    sget v1, Lcom/king/zxing/R$styleable;->ViewfinderView_labelTextSize:I

    invoke-virtual {p0}, Lcom/king/zxing/ViewfinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/4 v3, 0x2

    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {v3, v4, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/king/zxing/ViewfinderView;->labelTextSize:F

    .line 277
    sget v1, Lcom/king/zxing/R$styleable;->ViewfinderView_labelTextPadding:I

    invoke-virtual {p0}, Lcom/king/zxing/ViewfinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/4 v3, 0x1

    const/high16 v4, 0x41c00000    # 24.0f

    invoke-static {v3, v4, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/king/zxing/ViewfinderView;->labelTextPadding:F

    .line 278
    sget v1, Lcom/king/zxing/R$styleable;->ViewfinderView_labelTextWidth:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/king/zxing/ViewfinderView;->labelTextWidth:I

    .line 279
    sget v1, Lcom/king/zxing/R$styleable;->ViewfinderView_labelTextLocation:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    # invokes: Lcom/king/zxing/ViewfinderView$TextLocation;->getFromInt(I)Lcom/king/zxing/ViewfinderView$TextLocation;
    invoke-static {v1}, Lcom/king/zxing/ViewfinderView$TextLocation;->access$000(I)Lcom/king/zxing/ViewfinderView$TextLocation;

    move-result-object v1

    iput-object v1, p0, Lcom/king/zxing/ViewfinderView;->labelTextLocation:Lcom/king/zxing/ViewfinderView$TextLocation;

    .line 281
    sget v1, Lcom/king/zxing/R$styleable;->ViewfinderView_frameWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/king/zxing/ViewfinderView;->frameWidth:I

    .line 282
    sget v1, Lcom/king/zxing/R$styleable;->ViewfinderView_frameHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/king/zxing/ViewfinderView;->frameHeight:I

    .line 284
    sget v1, Lcom/king/zxing/R$styleable;->ViewfinderView_laserStyle:I

    sget-object v2, Lcom/king/zxing/ViewfinderView$LaserStyle;->LINE:Lcom/king/zxing/ViewfinderView$LaserStyle;

    # getter for: Lcom/king/zxing/ViewfinderView$LaserStyle;->mValue:I
    invoke-static {v2}, Lcom/king/zxing/ViewfinderView$LaserStyle;->access$100(Lcom/king/zxing/ViewfinderView$LaserStyle;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    # invokes: Lcom/king/zxing/ViewfinderView$LaserStyle;->getFromInt(I)Lcom/king/zxing/ViewfinderView$LaserStyle;
    invoke-static {v1}, Lcom/king/zxing/ViewfinderView$LaserStyle;->access$200(I)Lcom/king/zxing/ViewfinderView$LaserStyle;

    move-result-object v1

    iput-object v1, p0, Lcom/king/zxing/ViewfinderView;->laserStyle:Lcom/king/zxing/ViewfinderView$LaserStyle;

    .line 285
    sget v1, Lcom/king/zxing/R$styleable;->ViewfinderView_gridColumn:I

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/king/zxing/ViewfinderView;->gridColumn:I

    .line 286
    sget v1, Lcom/king/zxing/R$styleable;->ViewfinderView_gridHeight:I

    invoke-virtual {p0}, Lcom/king/zxing/ViewfinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    const/high16 v5, 0x42200000    # 40.0f

    invoke-static {v3, v5, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/king/zxing/ViewfinderView;->gridHeight:I

    .line 288
    sget v1, Lcom/king/zxing/R$styleable;->ViewfinderView_cornerRectWidth:I

    invoke-virtual {p0}, Lcom/king/zxing/ViewfinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v3, v5, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/king/zxing/ViewfinderView;->cornerRectWidth:I

    .line 289
    sget v1, Lcom/king/zxing/R$styleable;->ViewfinderView_cornerRectHeight:I

    invoke-virtual {p0}, Lcom/king/zxing/ViewfinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {v3, v5, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/king/zxing/ViewfinderView;->cornerRectHeight:I

    .line 290
    sget v1, Lcom/king/zxing/R$styleable;->ViewfinderView_scannerLineMoveDistance:I

    invoke-virtual {p0}, Lcom/king/zxing/ViewfinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v3, v5, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/king/zxing/ViewfinderView;->scannerLineMoveDistance:I

    .line 291
    sget v1, Lcom/king/zxing/R$styleable;->ViewfinderView_scannerLineHeight:I

    invoke-virtual {p0}, Lcom/king/zxing/ViewfinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v3, v5, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/king/zxing/ViewfinderView;->scannerLineHeight:I

    .line 292
    sget v1, Lcom/king/zxing/R$styleable;->ViewfinderView_frameLineWidth:I

    invoke-virtual {p0}, Lcom/king/zxing/ViewfinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v3, v5, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/king/zxing/ViewfinderView;->frameLineWidth:I

    .line 293
    sget v1, Lcom/king/zxing/R$styleable;->ViewfinderView_scannerAnimationDelay:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/king/zxing/ViewfinderView;->scannerAnimationDelay:I

    .line 294
    sget v1, Lcom/king/zxing/R$styleable;->ViewfinderView_frameRatio:I

    const/high16 v2, 0x3f200000    # 0.625f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/king/zxing/ViewfinderView;->frameRatio:F

    .line 295
    sget v1, Lcom/king/zxing/R$styleable;->ViewfinderView_framePaddingLeft:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/king/zxing/ViewfinderView;->framePaddingLeft:F

    .line 296
    sget v1, Lcom/king/zxing/R$styleable;->ViewfinderView_framePaddingTop:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/king/zxing/ViewfinderView;->framePaddingTop:F

    .line 297
    sget v1, Lcom/king/zxing/R$styleable;->ViewfinderView_framePaddingRight:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/king/zxing/ViewfinderView;->framePaddingRight:F

    .line 298
    sget v1, Lcom/king/zxing/R$styleable;->ViewfinderView_framePaddingBottom:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/king/zxing/ViewfinderView;->framePaddingBottom:F

    .line 299
    sget v1, Lcom/king/zxing/R$styleable;->ViewfinderView_frameGravity:I

    sget-object v2, Lcom/king/zxing/ViewfinderView$FrameGravity;->CENTER:Lcom/king/zxing/ViewfinderView$FrameGravity;

    # getter for: Lcom/king/zxing/ViewfinderView$FrameGravity;->mValue:I
    invoke-static {v2}, Lcom/king/zxing/ViewfinderView$FrameGravity;->access$300(Lcom/king/zxing/ViewfinderView$FrameGravity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    # invokes: Lcom/king/zxing/ViewfinderView$FrameGravity;->getFromInt(I)Lcom/king/zxing/ViewfinderView$FrameGravity;
    invoke-static {v1}, Lcom/king/zxing/ViewfinderView$FrameGravity;->access$400(I)Lcom/king/zxing/ViewfinderView$FrameGravity;

    move-result-object v1

    iput-object v1, p0, Lcom/king/zxing/ViewfinderView;->frameGravity:Lcom/king/zxing/ViewfinderView$FrameGravity;

    .line 300
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 302
    iget v1, p0, Lcom/king/zxing/ViewfinderView;->laserColor:I

    iput v1, p0, Lcom/king/zxing/ViewfinderView;->pointColor:I

    .line 303
    const/4 v1, -0x1

    iput v1, p0, Lcom/king/zxing/ViewfinderView;->pointStrokeColor:I

    .line 305
    invoke-virtual {p0}, Lcom/king/zxing/ViewfinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v3, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lcom/king/zxing/ViewfinderView;->pointRadius:F

    .line 306
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/king/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    .line 307
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v1, p0, Lcom/king/zxing/ViewfinderView;->textPaint:Landroid/text/TextPaint;

    .line 309
    return-void
.end method

.method private initFrame(II)V
    .registers 12
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 340
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/king/zxing/ViewfinderView;->frameRatio:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 342
    .local v0, "size":I
    iget v1, p0, Lcom/king/zxing/ViewfinderView;->frameWidth:I

    if-lez v1, :cond_12

    iget v1, p0, Lcom/king/zxing/ViewfinderView;->frameWidth:I

    if-le v1, p1, :cond_14

    .line 343
    :cond_12
    iput v0, p0, Lcom/king/zxing/ViewfinderView;->frameWidth:I

    .line 346
    :cond_14
    iget v1, p0, Lcom/king/zxing/ViewfinderView;->frameHeight:I

    if-lez v1, :cond_1c

    iget v1, p0, Lcom/king/zxing/ViewfinderView;->frameHeight:I

    if-le v1, p2, :cond_1e

    .line 347
    :cond_1c
    iput v0, p0, Lcom/king/zxing/ViewfinderView;->frameHeight:I

    .line 350
    :cond_1e
    iget v1, p0, Lcom/king/zxing/ViewfinderView;->labelTextWidth:I

    if-gtz v1, :cond_2f

    .line 351
    invoke-virtual {p0}, Lcom/king/zxing/ViewfinderView;->getPaddingLeft()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0}, Lcom/king/zxing/ViewfinderView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/king/zxing/ViewfinderView;->labelTextWidth:I

    .line 354
    :cond_2f
    iget v1, p0, Lcom/king/zxing/ViewfinderView;->frameWidth:I

    sub-int v1, p1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/king/zxing/ViewfinderView;->framePaddingLeft:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/king/zxing/ViewfinderView;->framePaddingRight:F

    sub-float/2addr v1, v2

    .line 355
    .local v1, "leftOffsets":F
    iget v2, p0, Lcom/king/zxing/ViewfinderView;->frameHeight:I

    sub-int v2, p2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/king/zxing/ViewfinderView;->framePaddingTop:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/king/zxing/ViewfinderView;->framePaddingBottom:F

    sub-float/2addr v2, v3

    .line 356
    .local v2, "topOffsets":F
    sget-object v3, Lcom/king/zxing/ViewfinderView$1;->$SwitchMap$com$king$zxing$ViewfinderView$FrameGravity:[I

    iget-object v4, p0, Lcom/king/zxing/ViewfinderView;->frameGravity:Lcom/king/zxing/ViewfinderView$FrameGravity;

    invoke-virtual {v4}, Lcom/king/zxing/ViewfinderView$FrameGravity;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_84

    goto :goto_71

    .line 367
    :pswitch_57
    iget v3, p0, Lcom/king/zxing/ViewfinderView;->frameHeight:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/king/zxing/ViewfinderView;->framePaddingBottom:F

    add-float v2, v3, v4

    goto :goto_71

    .line 364
    :pswitch_61
    iget v3, p0, Lcom/king/zxing/ViewfinderView;->frameWidth:I

    sub-int v3, p1, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/king/zxing/ViewfinderView;->framePaddingRight:F

    add-float v1, v3, v4

    .line 365
    goto :goto_71

    .line 361
    :pswitch_6b
    iget v2, p0, Lcom/king/zxing/ViewfinderView;->framePaddingTop:F

    .line 362
    goto :goto_71

    .line 358
    :pswitch_6e
    iget v1, p0, Lcom/king/zxing/ViewfinderView;->framePaddingLeft:F

    .line 359
    nop

    .line 371
    :goto_71
    new-instance v3, Landroid/graphics/Rect;

    float-to-int v4, v1

    float-to-int v5, v2

    float-to-int v6, v1

    iget v7, p0, Lcom/king/zxing/ViewfinderView;->frameWidth:I

    add-int/2addr v6, v7

    float-to-int v7, v2

    iget v8, p0, Lcom/king/zxing/ViewfinderView;->frameHeight:I

    add-int/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/king/zxing/ViewfinderView;->frame:Landroid/graphics/Rect;

    .line 372
    return-void

    nop

    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_6e
        :pswitch_6b
        :pswitch_61
        :pswitch_57
    .end packed-switch
.end method


# virtual methods
.method public drawViewfinder()V
    .registers 1

    .line 570
    invoke-virtual {p0}, Lcom/king/zxing/ViewfinderView;->invalidate()V

    .line 571
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 377
    iget-object v0, p0, Lcom/king/zxing/ViewfinderView;->frame:Landroid/graphics/Rect;

    if-nez v0, :cond_5

    .line 378
    return-void

    .line 381
    :cond_5
    iget v0, p0, Lcom/king/zxing/ViewfinderView;->scannerStart:I

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/king/zxing/ViewfinderView;->scannerEnd:I

    if-nez v0, :cond_1c

    .line 382
    :cond_d
    iget-object v0, p0, Lcom/king/zxing/ViewfinderView;->frame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/king/zxing/ViewfinderView;->scannerStart:I

    .line 383
    iget-object v0, p0, Lcom/king/zxing/ViewfinderView;->frame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/king/zxing/ViewfinderView;->scannerLineHeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/king/zxing/ViewfinderView;->scannerEnd:I

    .line 386
    :cond_1c
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    .line 387
    .local v0, "width":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    .line 390
    .local v1, "height":I
    iget-object v2, p0, Lcom/king/zxing/ViewfinderView;->frame:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/king/zxing/ViewfinderView;->drawExterior(Landroid/graphics/Canvas;Landroid/graphics/Rect;II)V

    .line 392
    iget-object v2, p0, Lcom/king/zxing/ViewfinderView;->frame:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v2}, Lcom/king/zxing/ViewfinderView;->drawLaserScanner(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 394
    iget-object v2, p0, Lcom/king/zxing/ViewfinderView;->frame:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v2}, Lcom/king/zxing/ViewfinderView;->drawFrame(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 396
    iget-object v2, p0, Lcom/king/zxing/ViewfinderView;->frame:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v2}, Lcom/king/zxing/ViewfinderView;->drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 398
    iget-object v2, p0, Lcom/king/zxing/ViewfinderView;->frame:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v2}, Lcom/king/zxing/ViewfinderView;->drawTextInfo(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 400
    iget v2, p0, Lcom/king/zxing/ViewfinderView;->scannerAnimationDelay:I

    int-to-long v4, v2

    iget-object v2, p0, Lcom/king/zxing/ViewfinderView;->frame:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/king/zxing/ViewfinderView;->frame:Landroid/graphics/Rect;

    iget v7, v2, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/king/zxing/ViewfinderView;->frame:Landroid/graphics/Rect;

    iget v8, v2, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/king/zxing/ViewfinderView;->frame:Landroid/graphics/Rect;

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/king/zxing/ViewfinderView;->postInvalidateDelayed(JIIII)V

    .line 401
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 334
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 335
    invoke-direct {p0, p1, p2}, Lcom/king/zxing/ViewfinderView;->initFrame(II)V

    .line 336
    return-void
.end method

.method public setLabelText(Ljava/lang/String;)V
    .registers 2
    .param p1, "labelText"    # Ljava/lang/String;

    .line 316
    iput-object p1, p0, Lcom/king/zxing/ViewfinderView;->labelText:Ljava/lang/String;

    .line 317
    return-void
.end method

.method public setLabelTextColor(I)V
    .registers 2
    .param p1, "color"    # I

    .line 320
    iput p1, p0, Lcom/king/zxing/ViewfinderView;->labelTextColor:I

    .line 321
    return-void
.end method

.method public setLabelTextColorResource(I)V
    .registers 3
    .param p1, "id"    # I

    .line 324
    invoke-virtual {p0}, Lcom/king/zxing/ViewfinderView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/king/zxing/ViewfinderView;->labelTextColor:I

    .line 325
    return-void
.end method

.method public setLabelTextSize(F)V
    .registers 2
    .param p1, "textSize"    # F

    .line 328
    iput p1, p0, Lcom/king/zxing/ViewfinderView;->labelTextSize:F

    .line 329
    return-void
.end method

.method public setLaserStyle(Lcom/king/zxing/ViewfinderView$LaserStyle;)V
    .registers 2
    .param p1, "laserStyle"    # Lcom/king/zxing/ViewfinderView$LaserStyle;

    .line 574
    iput-object p1, p0, Lcom/king/zxing/ViewfinderView;->laserStyle:Lcom/king/zxing/ViewfinderView$LaserStyle;

    .line 575
    return-void
.end method

.method public shadeColor(I)I
    .registers 5
    .param p1, "color"    # I

    .line 533
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 534
    .local v0, "hax":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "01"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 535
    .local v1, "result":Ljava/lang/String;
    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2
.end method
