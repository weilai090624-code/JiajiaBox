.class final Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Bar;
.super Landroid/view/View;
.source "AppTrafficRankingCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Bar"
.end annotation


# instance fields
.field color:I

.field final paint:Landroid/graphics/Paint;

.field ratio:F


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 160
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 159
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Bar;->paint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 21

    move-object/from16 v0, p0

    .line 161
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v1, v0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Bar;->paint:Landroid/graphics/Paint;

    iget v2, v0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Bar;->color:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Bar;->paint:Landroid/graphics/Paint;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Bar;->getWidth()I

    move-result v1

    int-to-float v5, v1

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Bar;->getHeight()I

    move-result v1

    int-to-float v6, v1

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Bar;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v10, 0x40000000    # 2.0f

    div-float v7, v1, v10

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Bar;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v8, v1, v10

    iget-object v9, v0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Bar;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Bar;->paint:Landroid/graphics/Paint;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Bar;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Bar;->ratio:F

    mul-float v14, v1, v2

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Bar;->getHeight()I

    move-result v1

    int-to-float v15, v1

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Bar;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v16, v1, v10

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Bar;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v17, v1, v10

    iget-object v1, v0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Bar;->paint:Landroid/graphics/Paint;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v11, p1

    move-object/from16 v18, v1

    invoke-virtual/range {v11 .. v18}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method
