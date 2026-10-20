.class final Lio/nekohasekai/sagernet/ui/ResponsiveDrawerHeader$Flow;
.super Landroid/view/ViewGroup;
.source "ResponsiveDrawerHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/ResponsiveDrawerHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Flow"
.end annotation


# instance fields
.field final gap:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 32
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {p1, v0}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lio/nekohasekai/sagernet/ui/ResponsiveDrawerHeader$Flow;->gap:I

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .registers 15

    .line 46
    sub-int/2addr p4, p2

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ResponsiveDrawerHeader$Flow;->getPaddingLeft()I

    move-result p1

    sub-int p1, p4, p1

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ResponsiveDrawerHeader$Flow;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ResponsiveDrawerHeader$Flow;->getPaddingTop()I

    move-result p2

    .line 47
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ResponsiveDrawerHeader$Flow;->getLayoutDirection()I

    move-result p3

    const/4 p5, 0x0

    const/4 v0, 0x1

    if-ne p3, v0, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    .line 48
    :goto_1a
    const/4 p3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1d
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ResponsiveDrawerHeader$Flow;->getChildCount()I

    move-result v3

    if-ge p3, v3, :cond_6a

    .line 49
    invoke-virtual {p0, p3}, Lio/nekohasekai/sagernet/ui/ResponsiveDrawerHeader$Flow;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_30

    goto :goto_67

    .line 50
    :cond_30
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 51
    if-lez v1, :cond_46

    iget v6, p0, Lio/nekohasekai/sagernet/ui/ResponsiveDrawerHeader$Flow;->gap:I

    add-int/2addr v6, v1

    add-int/2addr v6, v4

    if-le v6, p1, :cond_46

    iget v1, p0, Lio/nekohasekai/sagernet/ui/ResponsiveDrawerHeader$Flow;->gap:I

    add-int/2addr v2, v1

    add-int/2addr p2, v2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 52
    :cond_46
    if-lez v1, :cond_4b

    iget v6, p0, Lio/nekohasekai/sagernet/ui/ResponsiveDrawerHeader$Flow;->gap:I

    add-int/2addr v1, v6

    :cond_4b
    if-eqz v0, :cond_56

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ResponsiveDrawerHeader$Flow;->getPaddingRight()I

    move-result v6

    sub-int v6, p4, v6

    sub-int/2addr v6, v1

    sub-int/2addr v6, v4

    goto :goto_5b

    :cond_56
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ResponsiveDrawerHeader$Flow;->getPaddingLeft()I

    move-result v6

    add-int/2addr v6, v1

    .line 53
    :goto_5b
    add-int v7, v6, v4

    add-int v8, p2, v5

    invoke-virtual {v3, v6, p2, v7, v8}, Landroid/view/View;->layout(IIII)V

    add-int/2addr v1, v4

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 48
    :goto_67
    add-int/lit8 p3, p3, 0x1

    goto :goto_1d

    .line 55
    :cond_6a
    return-void
.end method

.method protected onMeasure(II)V
    .registers 13

    .line 34
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ResponsiveDrawerHeader$Flow;->getPaddingLeft()I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ResponsiveDrawerHeader$Flow;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 35
    nop

    .line 36
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_19
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ResponsiveDrawerHeader$Flow;->getChildCount()I

    move-result v7

    if-ge v3, v7, :cond_5c

    .line 37
    invoke-virtual {p0, v3}, Lio/nekohasekai/sagernet/ui/ResponsiveDrawerHeader$Flow;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_2c

    goto :goto_59

    .line 38
    :cond_2c
    const/high16 v8, -0x80000000

    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    .line 39
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 40
    if-lez v6, :cond_4f

    iget v9, p0, Lio/nekohasekai/sagernet/ui/ResponsiveDrawerHeader$Flow;->gap:I

    add-int/2addr v9, v6

    add-int/2addr v9, v8

    if-le v9, v1, :cond_4f

    iget v6, p0, Lio/nekohasekai/sagernet/ui/ResponsiveDrawerHeader$Flow;->gap:I

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 41
    :cond_4f
    if-lez v6, :cond_54

    iget v9, p0, Lio/nekohasekai/sagernet/ui/ResponsiveDrawerHeader$Flow;->gap:I

    add-int/2addr v6, v9

    :cond_54
    add-int/2addr v6, v8

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 36
    :goto_59
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 43
    :cond_5c
    invoke-static {v0, p1}, Lio/nekohasekai/sagernet/ui/ResponsiveDrawerHeader$Flow;->resolveSize(II)I

    move-result p1

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ResponsiveDrawerHeader$Flow;->getPaddingTop()I

    move-result v0

    add-int/2addr v4, v0

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ResponsiveDrawerHeader$Flow;->getPaddingBottom()I

    move-result v0

    add-int/2addr v4, v0

    invoke-static {v4, p2}, Lio/nekohasekai/sagernet/ui/ResponsiveDrawerHeader$Flow;->resolveSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/ResponsiveDrawerHeader$Flow;->setMeasuredDimension(II)V

    .line 44
    return-void
.end method
