.class public final Lio/nekohasekai/sagernet/ui/ResponsiveDrawerHeader;
.super Ljava/lang/Object;
.source "ResponsiveDrawerHeader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/ui/ResponsiveDrawerHeader$Flow;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bind(Landroid/view/ViewGroup;)V
    .registers 15

    .line 10
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/UiComponents;->drawerHeader(Landroid/view/ViewGroup;)V

    .line 11
    instance-of v0, p0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_16a

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_10

    goto/16 :goto_16a

    .line 12
    :cond_10
    move-object v0, p0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 13
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 14
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :goto_28
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    if-ge v1, v7, :cond_38

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_38
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 15
    const/high16 v1, 0x42300000    # 44.0f

    invoke-static {p0, v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/view/View;->setMinimumWidth(I)V

    const/high16 v7, 0x42400000    # 48.0f

    invoke-static {p0, v7}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/view/View;->setMinimumHeight(I)V

    .line 16
    instance-of v8, v3, Landroid/view/ViewGroup;

    const/4 v9, -0x1

    if-eqz v8, :cond_85

    move-object v8, v3

    check-cast v8, Landroid/view/ViewGroup;

    const/4 v10, 0x0

    :goto_56
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    if-ge v10, v11, :cond_85

    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    instance-of v11, v11, Landroid/widget/TextView;

    if-eqz v11, :cond_82

    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const-string v12, "\u2039"

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v12, 0x41e00000    # 28.0f

    invoke-virtual {v11, v4, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setMinimumWidth(I)V

    invoke-virtual {v11, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v12, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_82
    add-int/lit8 v10, v10, 0x1

    goto :goto_56

    .line 17
    :cond_85
    const-string v8, "\u8fd4\u56de\u83dc\u5355"

    invoke-virtual {v3, v8}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 18
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v10, 0x10

    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 19
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v7}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v11, v1, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v3, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 21
    const/high16 v7, 0x41b00000    # 22.0f

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextSize(F)V

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v5, v7, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const v7, 0x800003

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setMinimumHeight(I)V

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x2

    invoke-direct {v10, v9, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lio/nekohasekai/sagernet/ui/ResponsiveDrawerHeader;->description(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/16 v12, 0xb

    invoke-static {p0, v10, v12, v2}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->label(Landroid/content/Context;Ljava/lang/CharSequence;IZ)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-object v12, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v12, v9, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v13, 0x40a00000    # 5.0f

    invoke-static {p0, v13}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v13

    iput v13, v12, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, v10, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v12, v2, v11, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/high16 v13, 0x41600000    # 14.0f

    invoke-static {p0, v13}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v8, v1, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v9, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_156

    new-instance v1, Lio/nekohasekai/sagernet/ui/ResponsiveDrawerHeader$Flow;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/ResponsiveDrawerHeader$Flow;-><init>(Landroid/content/Context;)V

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_130
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_145

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v7, v11, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v6, v7}, Lio/nekohasekai/sagernet/ui/ResponsiveDrawerHeader$Flow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_130

    :cond_145
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v9, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v6, 0x41800000    # 16.0f

    invoke-static {p0, v6}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v6

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_157

    :cond_156
    const/4 v1, 0x0

    .line 26
    :goto_157
    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {p0, v4}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {p0, v6}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result p0

    invoke-virtual {v0, v2, v4, v2, p0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-static {v0, v3, v5, v10, v1}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->heading(Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/ViewGroup;)V

    .line 27
    return-void

    .line 11
    :cond_16a
    :goto_16a
    return-void
.end method

.method private static description(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 28
    const-string v0, "\u8def\u7531"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p0, "\u6309\u89c4\u5219\u5b89\u6392\u6bcf\u4e00\u6b21\u8fde\u63a5"

    return-object p0

    :cond_b
    const-string v0, "\u8bbe\u7f6e"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string p0, "\u6309\u4f60\u7684\u4e60\u60ef\uff0c\u8f7b\u677e\u8bbe\u7f6e"

    return-object p0

    :cond_16
    const-string v0, "\u5de5\u5177"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string p0, "\u5e38\u7528\u5de5\u5177\uff0c\u968f\u624b\u53ef\u7528"

    return-object p0

    :cond_21
    const-string v0, "\u5173\u4e8e"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2c

    const-string p0, "\u7b80\u5355\u597d\u7528\uff0c\u6301\u7eed\u6253\u78e8"

    return-object p0

    :cond_2c
    const-string p0, "JiajiaBox"

    return-object p0
.end method
