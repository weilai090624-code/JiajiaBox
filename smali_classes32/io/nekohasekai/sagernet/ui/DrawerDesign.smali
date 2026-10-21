.class public final Lio/nekohasekai/sagernet/ui/DrawerDesign;
.super Ljava/lang/Object;
.source "DrawerDesign.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;,
        Lio/nekohasekai/sagernet/ui/DrawerDesign$MenuScroll;,
        Lio/nekohasekai/sagernet/ui/DrawerDesign$Row;,
        Lio/nekohasekai/sagernet/ui/DrawerDesign$Heading;,
        Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;
    }
.end annotation


# static fields
.field private static final HEADER_TAG:I = 0x7f0a0f7a

.field private static final MENU_TAG:I = 0x7f0a0f78

.field private static final ROSE:I = -0x48b88f

.field private static final ROW_TAG:I = 0x7f0a0f79


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static accent(Landroid/content/Context;)I
    .registers 1

    .line 33
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/ThemePalette;->accent(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method static synthetic access$000(I)Ljava/lang/String;
    .registers 1

    .line 26
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->subtitle(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static action(Landroid/view/View;)V
    .registers 7

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/ThemePalette;->inset(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0xe

    invoke-static {v0, v1, v2}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->shape(Landroid/content/Context;II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    new-instance v3, Landroid/graphics/drawable/RippleDrawable;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->dark(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1a

    const v4, 0x20ffffff

    goto :goto_1d

    :cond_1a
    const v4, 0x18b74771

    :goto_1d
    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    const/4 v5, -0x1

    invoke-static {v0, v5, v2}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->shape(Landroid/content/Context;II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-direct {v3, v4, v1, v0}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static dark(Landroid/content/Context;)Z
    .registers 1

    .line 30
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/ThemePalette;->dark(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static dp(Landroid/content/Context;F)I
    .registers 2

    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method static heading(Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/ViewGroup;)V
    .registers 6

    .line 62
    new-instance v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Heading;

    invoke-direct {v0, p1, p2, p3, p4}, Lio/nekohasekai/sagernet/ui/DrawerDesign$Heading;-><init>(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/ViewGroup;)V

    const p1, 0x7f0a0f7a

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->refresh(Landroid/view/View;)V

    return-void
.end method

.method static ink(Landroid/content/Context;)I
    .registers 1

    .line 31
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/ThemePalette;->text(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static install(Landroid/app/Activity;Lio/nekohasekai/sagernet/ui/JJGlassCapsule;Landroid/widget/LinearLayout;Ljava/util/Map;I)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lio/nekohasekai/sagernet/ui/JJGlassCapsule;",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/Map<",
            "**>;I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const v3, 0x7f0a0f78

    .line 38
    invoke-virtual {v1, v3}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_10

    return-void

    .line 39
    :cond_10
    new-instance v4, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;

    invoke-direct {v4, v1, v2}, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;-><init>(Landroid/view/View;Landroid/widget/LinearLayout;)V

    invoke-virtual {v1, v3, v4}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setTag(ILjava/lang/Object;)V

    .line 40
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1f
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    if-ge v6, v7, :cond_39

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    instance-of v7, v7, Landroid/widget/FrameLayout;

    if-eqz v7, :cond_36

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_36
    add-int/lit8 v6, v6, 0x1

    goto :goto_1f

    .line 41
    :cond_39
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {v0, v6}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->dp(Landroid/content/Context;F)I

    move-result v7

    const/high16 v8, 0x41600000    # 14.0f

    invoke-static {v0, v8}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->dp(Landroid/content/Context;F)I

    move-result v9

    invoke-static {v0, v6}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->dp(Landroid/content/Context;F)I

    move-result v10

    const/high16 v11, 0x41200000    # 10.0f

    invoke-static {v0, v11}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->dp(Landroid/content/Context;F)I

    move-result v12

    invoke-virtual {v2, v7, v9, v10, v12}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 42
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, v4, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;->header:Landroid/widget/LinearLayout;

    iget-object v7, v4, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;->header:Landroid/widget/LinearLayout;

    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v7, v4, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;->header:Landroid/widget/LinearLayout;

    invoke-static {v0, v8}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->dp(Landroid/content/Context;F)I

    move-result v10

    invoke-static {v0, v6}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-static {v0, v11}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->dp(Landroid/content/Context;F)I

    move-result v11

    const/high16 v12, 0x41b00000    # 22.0f

    invoke-static {v0, v12}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->dp(Landroid/content/Context;F)I

    move-result v12

    invoke-virtual {v7, v10, v6, v11, v12}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 43
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->dark(Landroid/content/Context;)Z

    move-result v6

    xor-int/2addr v6, v9

    invoke-static {v6}, Lio/nekohasekai/sagernet/ui/RosePalette;->brandTitle(Z)Ljava/lang/CharSequence;

    move-result-object v6

    const/16 v7, 0x18

    invoke-static {v0, v6, v7, v9}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->label(Landroid/content/Context;Ljava/lang/CharSequence;IZ)Landroid/widget/TextView;

    move-result-object v6

    iput-object v6, v4, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;->brand:Landroid/widget/TextView;

    iget-object v6, v4, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;->brand:Landroid/widget/TextView;

    const v7, -0x43333333    # -0.025f

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setLetterSpacing(F)V

    iget-object v6, v4, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;->header:Landroid/widget/LinearLayout;

    iget-object v7, v4, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;->brand:Landroid/widget/TextView;

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x2

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    const-string v6, "\u7b80\u5355\u8fde\u63a5\uff0c\u81ea\u5728\u4e0a\u7f51"

    const/16 v7, 0xc

    invoke-static {v0, v6, v7, v5}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->label(Landroid/content/Context;Ljava/lang/CharSequence;IZ)Landroid/widget/TextView;

    move-result-object v6

    iput-object v6, v4, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;->tagline:Landroid/widget/TextView;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v7, 0x41100000    # 9.0f

    invoke-static {v0, v7}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->dp(Landroid/content/Context;F)I

    move-result v10

    iput v10, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v10, v4, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;->header:Landroid/widget/LinearLayout;

    iget-object v13, v4, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;->tagline:Landroid/widget/TextView;

    invoke-virtual {v10, v13, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, v4, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;->header:Landroid/widget/LinearLayout;

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v6, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    new-instance v6, Lio/nekohasekai/sagernet/ui/DrawerDesign$MenuScroll;

    invoke-direct {v6, v0}, Lio/nekohasekai/sagernet/ui/DrawerDesign$MenuScroll;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v5}, Lio/nekohasekai/sagernet/ui/DrawerDesign$MenuScroll;->setFillViewport(Z)V

    invoke-virtual {v6, v5}, Lio/nekohasekai/sagernet/ui/DrawerDesign$MenuScroll;->setVerticalScrollBarEnabled(Z)V

    const/4 v10, 0x2

    invoke-virtual {v6, v10}, Lio/nekohasekai/sagernet/ui/DrawerDesign$MenuScroll;->setOverScrollMode(I)V

    invoke-virtual {v6, v5}, Lio/nekohasekai/sagernet/ui/DrawerDesign$MenuScroll;->setClipToPadding(Z)V

    .line 46
    new-instance v13, Landroid/widget/LinearLayout;

    invoke-direct {v13, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v13, v4, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;->list:Landroid/widget/LinearLayout;

    iget-object v13, v4, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;->list:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v13, v4, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;->list:Landroid/widget/LinearLayout;

    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v14, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v13, v14}, Lio/nekohasekai/sagernet/ui/DrawerDesign$MenuScroll;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v13, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v6, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v6, 0x0

    .line 47
    :goto_f9
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    if-ge v6, v13, :cond_214

    .line 48
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout;

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v14

    if-eqz v14, :cond_20b

    invoke-virtual {v13, v5}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    instance-of v14, v14, Landroid/widget/TextView;

    if-nez v14, :cond_115

    goto/16 :goto_20b

    .line 49
    :cond_115
    invoke-virtual {v13, v5}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->kind(Ljava/lang/String;)I

    move-result v15

    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_12f
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    const/4 v9, 0x3

    if-eqz v17, :cond_174

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v13, :cond_171

    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    instance-of v10, v10, Ljava/lang/Number;

    if-eqz v10, :cond_171

    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    const v15, 0x7f0a01e3

    if-ne v10, v15, :cond_15b

    const/4 v9, 0x0

    goto :goto_170

    :cond_15b
    const v15, 0x7f0a01e6

    if-ne v10, v15, :cond_162

    const/4 v9, 0x1

    goto :goto_170

    :cond_162
    const v15, 0x7f0a01e7

    if-ne v10, v15, :cond_169

    const/4 v9, 0x2

    goto :goto_170

    :cond_169
    const v15, 0x7f0a01e9

    if-ne v10, v15, :cond_16f

    goto :goto_170

    :cond_16f
    const/4 v9, 0x5

    :goto_170
    move v15, v9

    :cond_171
    const/4 v9, 0x1

    const/4 v10, 0x2

    goto :goto_12f

    :cond_174
    if-eqz v6, :cond_178

    if-ne v6, v9, :cond_1b5

    :cond_178
    if-nez v6, :cond_17d

    .line 50
    const-string v9, "\u8fde\u63a5\u4e0e\u5206\u6d41"

    goto :goto_17f

    :cond_17d
    const-string v9, "\u504f\u597d\u4e0e\u66f4\u591a"

    :goto_17f
    const/16 v10, 0xa

    invoke-static {v0, v9, v10, v5}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->label(Landroid/content/Context;Ljava/lang/CharSequence;IZ)Landroid/widget/TextView;

    move-result-object v9

    const v10, 0x3da3d70a    # 0.08f

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setLetterSpacing(F)V

    invoke-static {v0, v8}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->dp(Landroid/content/Context;F)I

    move-result v10

    if-nez v6, :cond_196

    const/high16 v16, 0x40400000    # 3.0f

    const/high16 v8, 0x40400000    # 3.0f

    goto :goto_19a

    :cond_196
    const/high16 v16, 0x41880000    # 17.0f

    const/high16 v8, 0x41880000    # 17.0f

    :goto_19a
    invoke-static {v0, v8}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-static {v0, v7}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->dp(Landroid/content/Context;F)I

    move-result v11

    invoke-virtual {v9, v10, v8, v5, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v8, v4, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;->sections:Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, v4, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;->list:Landroid/widget/LinearLayout;

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    :cond_1b5
    invoke-virtual {v13}, Landroid/widget/FrameLayout;->removeAllViews()V

    new-instance v8, Lio/nekohasekai/sagernet/ui/DrawerDesign$Row;

    invoke-direct {v8, v0, v14, v15}, Lio/nekohasekai/sagernet/ui/DrawerDesign$Row;-><init>(Landroid/content/Context;Landroid/widget/TextView;I)V

    const v9, 0x7f0a0f79

    invoke-virtual {v13, v9, v8}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v9, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v13, v8, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v13, v5, v5, v5, v5}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    invoke-virtual {v13, v5}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 52
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x42680000    # 58.0f

    invoke-static {v0, v9}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->dp(Landroid/content/Context;F)I

    move-result v10

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v11, v11, Landroid/content/res/Configuration;->fontScale:F

    mul-float v11, v11, v9

    invoke-static {v0, v11}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->dp(Landroid/content/Context;F)I

    move-result v9

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    const/4 v11, -0x1

    invoke-direct {v8, v11, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v9, 0x40800000    # 4.0f

    invoke-static {v0, v9}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->dp(Landroid/content/Context;F)I

    move-result v9

    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v9, v4, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;->list:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v13, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    new-instance v8, Lio/nekohasekai/sagernet/ui/DrawerDesign$0;

    invoke-direct {v8}, Lio/nekohasekai/sagernet/ui/DrawerDesign$0;-><init>()V

    invoke-virtual {v13, v8}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 54
    iget-object v8, v4, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;->rows:Ljava/util/List;

    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_20b
    :goto_20b
    add-int/lit8 v6, v6, 0x1

    const/high16 v8, 0x41600000    # 14.0f

    const/4 v9, 0x1

    const/4 v10, 0x2

    const/4 v11, -0x1

    goto/16 :goto_f9

    .line 56
    :cond_214
    const-string v3, "\u57fa\u4e8e NekoBox \u00b7 \u4e3a\u7b80\u5355\u800c\u751f"

    const/16 v6, 0xb

    invoke-static {v0, v3, v6, v5}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->label(Landroid/content/Context;Ljava/lang/CharSequence;IZ)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, v4, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;->footer:Landroid/widget/TextView;

    iget-object v3, v4, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;->footer:Landroid/widget/TextView;

    const/16 v6, 0x11

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v3, v4, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;->footer:Landroid/widget/TextView;

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-static {v0, v6}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->dp(Landroid/content/Context;F)I

    move-result v6

    const/high16 v7, 0x40a00000    # 5.0f

    invoke-static {v0, v7}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {v3, v5, v6, v5, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, v4, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;->footer:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    invoke-direct {v3, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    invoke-static/range {p3 .. p4}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->select(Ljava/util/Map;I)V

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->refresh(Landroid/view/View;)V

    return-void
.end method

.method private static kind(Ljava/lang/String;)I
    .registers 6

    .line 80
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "home"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    return v2

    :cond_10
    const-string v1, "route"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1a

    return v3

    :cond_1a
    const-string v1, "settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x2

    if-eqz v1, :cond_24

    return v4

    :cond_24
    const-string v1, "tools"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_2e

    return v1

    :cond_2e
    const-string v0, "\u9996\u9875"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_37

    return v2

    :cond_37
    const-string v0, "\u8def\u7531"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_40

    return v3

    :cond_40
    const-string v0, "\u8bbe\u7f6e"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_49

    return v4

    :cond_49
    const-string v0, "\u5de5\u5177"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    return v1

    :cond_52
    const-string v0, "\u6a21\u5f0f"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5c

    const/4 p0, 0x4

    return p0

    :cond_5c
    const/4 p0, 0x5

    return p0
.end method

.method static label(Landroid/content/Context;Ljava/lang/CharSequence;IZ)Landroid/widget/TextView;
    .registers 5

    .line 35
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-float p1, p2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->ink(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    sget-object p0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, p0, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    return-object v0
.end method

.method static synthetic lambda$install$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    .line 53
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_1f

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const p1, 0x3f7c28f6    # 0.985f

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x5a

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    :goto_1b
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_43

    :cond_1f
    const/4 v0, 0x1

    if-eq p1, v0, :cond_25

    const/4 v0, 0x3

    if-ne p1, v0, :cond_43

    :cond_25
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0xb4

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p1, Lio/nekohasekai/sagernet/ui/DrawerMotion$Ease;

    invoke-direct {p1}, Lio/nekohasekai/sagernet/ui/DrawerMotion$Ease;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    goto :goto_1b

    :cond_43
    :goto_43
    const/4 p0, 0x0

    return p0
.end method

.method static muted(Landroid/content/Context;)I
    .registers 1

    .line 32
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/ThemePalette;->secondary(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method static nestedHeader(Landroid/widget/LinearLayout;)V
    .registers 9

    .line 61
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_c

    goto :goto_71

    :cond_c
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v2, Landroid/widget/TextView;

    if-eqz v5, :cond_22

    move-object v5, v2

    check-cast v5, Landroid/widget/TextView;

    const/high16 v6, 0x41e00000    # 28.0f

    invoke-virtual {v5, v3, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_22
    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v0, v5}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x41800000    # 16.0f

    invoke-static {v0, v6}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {p0, v1, v5, v1, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-static {v2}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->action(Landroid/view/View;)V

    instance-of v5, v4, Landroid/widget/TextView;

    if-eqz v5, :cond_71

    check-cast v4, Landroid/widget/TextView;

    const/high16 v5, 0x41a80000    # 21.0f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    const/high16 v5, 0x42400000    # 48.0f

    invoke-static {v0, v5}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMinHeight(I)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v5, v1, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->ink(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    new-instance v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Heading;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v4, v1, v1}, Lio/nekohasekai/sagernet/ui/DrawerDesign$Heading;-><init>(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/ViewGroup;)V

    const v1, 0x7f0a0f7a

    invoke-virtual {p0, v1, v0}, Landroid/widget/LinearLayout;->setTag(ILjava/lang/Object;)V

    :cond_71
    :goto_71
    return-void
.end method

.method public static refresh(Landroid/view/View;)V
    .registers 5

    const v0, 0x7f0a0f7a

    .line 65
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Heading;

    if-eqz v1, :cond_45

    check-cast v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Heading;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Heading;->title:Landroid/widget/TextView;

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->ink(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Heading;->subtitle:Landroid/widget/TextView;

    if-eqz v2, :cond_27

    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Heading;->subtitle:Landroid/widget/TextView;

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->muted(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_27
    iget-object v1, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Heading;->back:Landroid/view/View;

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->action(Landroid/view/View;)V

    iget-object v1, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Heading;->actions:Landroid/view/ViewGroup;

    if-eqz v1, :cond_45

    const/4 v1, 0x0

    :goto_31
    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Heading;->actions:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_45

    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Heading;->actions:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->action(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    :cond_45
    const v0, 0x7f0a0f78

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;

    if-nez v1, :cond_52

    goto/16 :goto_d2

    :cond_52
    check-cast v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 66
    instance-of v2, p0, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    if-eqz v2, :cond_70

    check-cast p0, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    const/high16 v2, 0x41d00000    # 26.0f

    invoke-virtual {p0, v2}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setCornerRadiusDp(F)V

    const v2, 0x3f333333    # 0.7f

    invoke-virtual {p0, v2}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setBorderWidthDp(F)V

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/ThemePalette;->border(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p0, v2}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setBorderColor(I)V

    .line 67
    :cond_70
    iget-object p0, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;->brand:Landroid/widget/TextView;

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->dark(Landroid/content/Context;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lio/nekohasekai/sagernet/ui/RosePalette;->brandTitle(Z)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;->tagline:Landroid/widget/TextView;

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->muted(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p0, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;->footer:Landroid/widget/TextView;

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->muted(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p0, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;->sections:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_97
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ab

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->muted(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_97

    .line 68
    :cond_ab
    iget-object p0, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;->rows:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_b1
    :goto_b1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0a0f79

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lio/nekohasekai/sagernet/ui/DrawerDesign$Row;

    if-eqz v2, :cond_b1

    check-cast v1, Lio/nekohasekai/sagernet/ui/DrawerDesign$Row;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isSelected()Z

    move-result v0

    invoke-virtual {v1, v0}, Lio/nekohasekai/sagernet/ui/DrawerDesign$Row;->paint(Z)V

    goto :goto_b1

    :cond_d2
    :goto_d2
    return-void
.end method

.method static refreshTree(Landroid/view/View;)V
    .registers 4

    .line 60
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_18

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    :goto_8
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->refreshTree(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_18
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->refresh(Landroid/view/View;)V

    return-void
.end method

.method public static select(Ljava/util/Map;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;I)V"
        }
    .end annotation

    .line 59
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Number;

    if-eqz v2, :cond_38

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_38

    const/4 v0, 0x1

    goto :goto_39

    :cond_38
    const/4 v0, 0x0

    :goto_39
    invoke-virtual {v1, v0}, Landroid/view/View;->setSelected(Z)V

    const v2, 0x7f0a0f79

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lio/nekohasekai/sagernet/ui/DrawerDesign$Row;

    if-eqz v2, :cond_8

    check-cast v1, Lio/nekohasekai/sagernet/ui/DrawerDesign$Row;

    invoke-virtual {v1, v0}, Lio/nekohasekai/sagernet/ui/DrawerDesign$Row;->paint(Z)V

    goto :goto_8

    :cond_4d
    return-void
.end method

.method static shape(Landroid/content/Context;II)Landroid/graphics/drawable/GradientDrawable;
    .registers 4

    .line 34
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    int-to-float p1, p2

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->dp(Landroid/content/Context;F)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-object v0
.end method

.method public static slide(Landroid/view/View;F)V
    .registers 2

    return-void
.end method

.method private static subtitle(I)Ljava/lang/String;
    .registers 7

    .line 81
    const-string v4, "\u4eae\u8272\u4e0e\u6697\u8272"

    const-string v5, "\u7248\u672c\u4e0e\u9879\u76ee"

    const-string v0, "\u8282\u70b9\u4e0e\u8fde\u63a5"

    const-string v1, "\u89c4\u5219\u4e0e\u5206\u6d41"

    const-string v2, "\u8fde\u63a5\u504f\u597d"

    const-string v3, "\u8bca\u65ad\u4e0e\u5b9e\u7528\u529f\u80fd"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method

.method static surface(Landroid/view/View;Z)V
    .registers 7

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->dark(Landroid/content/Context;)Z

    move-result v1

    if-eqz p1, :cond_f

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/ThemePalette;->selected(Landroid/content/Context;)I

    move-result p1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    const/16 v2, 0x11

    invoke-static {v0, p1, v2}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->shape(Landroid/content/Context;II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    new-instance v3, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_1e

    const v1, 0x20ffffff

    goto :goto_21

    :cond_1e
    const v1, 0x18b74771

    :goto_21
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    const/4 v4, -0x1

    invoke-static {v0, v4, v2}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->shape(Landroid/content/Context;II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-direct {v3, v1, p1, v0}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static warmMenuLayer(Landroid/view/View;)Z
    .registers 5

    const v0, 0x7f0a0f78

    .line 72
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    return v1

    .line 73
    :cond_d
    check-cast p0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;

    iget-object p0, p0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;->column:Landroid/widget/LinearLayout;

    .line 74
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_47

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-gtz v0, :cond_2a

    goto :goto_47

    :cond_2a
    const/4 v0, 0x0

    .line 75
    :try_start_2b
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_35

    invoke-virtual {p0, v3, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_35
    invoke-virtual {p0}, Landroid/view/View;->buildLayer()V
    :try_end_38
    .catch Ljava/lang/RuntimeException; {:try_start_2b .. :try_end_38} :catch_3c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2b .. :try_end_38} :catch_3a

    const/4 p0, 0x1

    return p0

    :catch_3a
    move-exception v2

    goto :goto_3d

    :catch_3c
    move-exception v2

    .line 76
    :goto_3d
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    const-string p0, "DrawerDesign"

    const-string v0, "Menu GPU prewarm unavailable"

    invoke-static {p0, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_47
    :goto_47
    return v1
.end method
