.class public final Lio/nekohasekai/sagernet/ui/ToolbarAlignment;
.super Ljava/lang/Object;
.source "ToolbarAlignment.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static align(Landroid/view/ViewGroup;)V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v1, v0

    const/4 v2, 0x0

    .line 12
    :goto_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2b

    .line 13
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 14
    instance-of v4, v3, Landroid/widget/ImageButton;

    if-eqz v4, :cond_1b

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1b

    move-object v0, v3

    check-cast v0, Landroid/widget/ImageButton;

    .line 15
    :cond_1b
    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_28

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_28

    check-cast v3, Landroid/widget/TextView;

    move-object v1, v3

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_2b
    if-eqz v0, :cond_49

    if-eqz v1, :cond_49

    .line 18
    invoke-virtual {v1}, Landroid/widget/TextView;->getTop()I

    move-result p0

    invoke-virtual {v1}, Landroid/widget/TextView;->getBottom()I

    move-result v1

    add-int/2addr p0, v1

    .line 19
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getTop()I

    move-result v1

    sub-int/2addr p0, v1

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getBottom()I

    move-result v1

    sub-int/2addr p0, v1

    int-to-float p0, p0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p0, v1

    .line 18
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setTranslationY(F)V

    :cond_49
    return-void
.end method
