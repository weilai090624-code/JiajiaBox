.class final Lio/nekohasekai/sagernet/ui/SubscriptionCards$Meter;
.super Landroid/view/View;
.source "SubscriptionCards.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/SubscriptionCards;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Meter"
.end annotation


# instance fields
.field final paint:Landroid/graphics/Paint;

.field final ratio:D


# direct methods
.method constructor <init>(Landroid/content/Context;D)V
    .registers 5

    .line 71
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 70
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/SubscriptionCards$Meter;->paint:Landroid/graphics/Paint;

    .line 71
    iput-wide p2, p0, Lio/nekohasekai/sagernet/ui/SubscriptionCards$Meter;->ratio:D

    # getter for: Lio/nekohasekai/sagernet/ui/SubscriptionCards;->meters:Ljava/util/WeakHashMap;
    invoke-static {}, Lio/nekohasekai/sagernet/ui/SubscriptionCards;->access$000()Ljava/util/WeakHashMap;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p0, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 12

    .line 72
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/SubscriptionCards$Meter;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v7, v0, v1

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/SubscriptionCards$Meter;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/SubscriptionCards$Meter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/ThemePalette;->accent(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/SubscriptionCards$Meter;->paint:Landroid/graphics/Paint;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/SubscriptionCards$Meter;->getWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/SubscriptionCards$Meter;->getHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v9, p0, Lio/nekohasekai/sagernet/ui/SubscriptionCards$Meter;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v8, v7

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    iget-wide v0, p0, Lio/nekohasekai/sagernet/ui/SubscriptionCards$Meter;->ratio:D

    const-wide/16 v3, 0x0

    cmpl-double p1, v0, v3

    if-ltz p1, :cond_59

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/SubscriptionCards$Meter;->paint:Landroid/graphics/Paint;

    const/16 v0, 0x87

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/SubscriptionCards$Meter;->getWidth()I

    move-result p1

    int-to-double v0, p1

    iget-wide v3, p0, Lio/nekohasekai/sagernet/ui/SubscriptionCards$Meter;->ratio:D

    mul-double v0, v0, v3

    double-to-float v5, v0

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/SubscriptionCards$Meter;->getHeight()I

    move-result p1

    int-to-float v6, p1

    iget-object v9, p0, Lio/nekohasekai/sagernet/ui/SubscriptionCards$Meter;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v8, v7

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    :cond_59
    return-void
.end method
