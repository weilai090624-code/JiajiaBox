.class final Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Icon;
.super Landroid/view/View;
.source "AppTrafficRankingCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Icon"
.end annotation


# instance fields
.field drawable:Landroid/graphics/drawable/Drawable;

.field final paint:Landroid/graphics/Paint;

.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;


# direct methods
.method constructor <init>(Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 156
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Icon;->this$0:Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 155
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Icon;->paint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 157
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Icon;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Icon;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Icon;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Icon;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_19
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Icon;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Icon;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/JJGlassToolbar;->matteTextColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Icon;->paint:Landroid/graphics/Paint;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Icon;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Icon;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Icon;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Icon;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 156
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Icon;->drawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_9

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Icon;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Icon;->invalidate()V

    :cond_9
    return-void
.end method
