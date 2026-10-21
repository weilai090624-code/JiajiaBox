.class public final Lio/nekohasekai/sagernet/ui/NodeRowStyle;
.super Ljava/lang/Object;
.source "NodeRowStyle.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static dp(Landroid/view/View;F)I
    .registers 2

    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result p0

    return p0
.end method

.method public static install(Landroid/view/View;)V
    .registers 10

    const v0, 0x7f0a0167

    .line 28
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a016a

    .line 29
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a0168

    .line 30
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a0166

    .line 31
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v0, :cond_c7

    if-eqz v1, :cond_c7

    if-eqz v2, :cond_c7

    if-nez v3, :cond_2e

    goto/16 :goto_c7

    :cond_2e
    const/high16 v4, 0x41800000    # 16.0f

    .line 33
    invoke-static {p0, v4}, Lio/nekohasekai/sagernet/ui/NodeRowStyle;->dp(Landroid/view/View;F)I

    move-result v5

    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {p0, v6}, Lio/nekohasekai/sagernet/ui/NodeRowStyle;->dp(Landroid/view/View;F)I

    move-result v7

    invoke-static {p0, v4}, Lio/nekohasekai/sagernet/ui/NodeRowStyle;->dp(Landroid/view/View;F)I

    move-result v4

    invoke-static {p0, v6}, Lio/nekohasekai/sagernet/ui/NodeRowStyle;->dp(Landroid/view/View;F)I

    move-result v8

    invoke-virtual {p0, v5, v7, v4, v8}, Landroid/view/View;->setPaddingRelative(IIII)V

    const/high16 v4, 0x429c0000    # 78.0f

    .line 34
    invoke-static {p0, v4}, Lio/nekohasekai/sagernet/ui/NodeRowStyle;->dp(Landroid/view/View;F)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/view/View;->setMinimumHeight(I)V

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-eqz v4, :cond_6f

    const/4 v5, -0x2

    .line 37
    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 38
    instance-of v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_6c

    .line 39
    move-object v5, v4

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v7, 0x40800000    # 4.0f

    .line 40
    invoke-static {p0, v7}, Lio/nekohasekai/sagernet/ui/NodeRowStyle;->dp(Landroid/view/View;F)I

    move-result v8

    iput v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-static {p0, v7}, Lio/nekohasekai/sagernet/ui/NodeRowStyle;->dp(Landroid/view/View;F)I

    move-result v7

    iput v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 42
    :cond_6c
    invoke-virtual {p0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6f
    const/high16 v4, 0x41700000    # 15.0f

    .line 44
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 45
    const-string v7, "sans-serif-medium"

    invoke-static {v7, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v7, 0x2

    .line 46
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/high16 v0, 0x41300000    # 11.0f

    .line 47
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 48
    const-string v0, "sans-serif"

    invoke-static {v0, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 49
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 50
    const-string v0, "tnum"

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setFontFeatureSettings(Ljava/lang/String;)V

    const/high16 v0, 0x42500000    # 52.0f

    invoke-static {p0, v0}, Lio/nekohasekai/sagernet/ui/NodeRowStyle;->dp(Landroid/view/View;F)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 51
    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x42080000    # 34.0f

    .line 52
    invoke-static {p0, v1}, Lio/nekohasekai/sagernet/ui/NodeRowStyle;->dp(Landroid/view/View;F)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p0, v1}, Lio/nekohasekai/sagernet/ui/NodeRowStyle;->dp(Landroid/view/View;F)I

    move-result p0

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 53
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_c7
    :goto_c7
    return-void
.end method
