.class final Lio/nekohasekai/sagernet/ui/DrawerDesign$MenuScroll;
.super Landroid/widget/ScrollView;
.source "DrawerDesign.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/DrawerDesign;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MenuScroll"
.end annotation


# instance fields
.field final visible:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 69
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/DrawerDesign$MenuScroll;->visible:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 8

    .line 70
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerDesign$MenuScroll;->visible:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/DrawerDesign$MenuScroll;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerDesign$MenuScroll;->visible:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_14

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerDesign$MenuScroll;->visible:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    goto :goto_1e

    :cond_14
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/DrawerDesign$MenuScroll;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_1e
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/DrawerDesign$MenuScroll;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {v1, v2}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/DrawerDesign$MenuScroll;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/DrawerDesign$MenuScroll;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->fontScale:F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v4, 0x42a40000    # 82.0f

    mul-float v3, v3, v4

    const/high16 v4, 0x42c00000    # 96.0f

    add-float/2addr v3, v4

    invoke-static {v2, v3}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->dp(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-nez v1, :cond_54

    move p2, v0

    goto :goto_58

    :cond_54
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    :goto_58
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/high16 v0, -0x80000000

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    return-void
.end method
