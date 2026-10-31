.class public final Lio/nekohasekai/sagernet/ui/DrawerDesign;
.super Ljava/lang/Object;
.source "DrawerDesign.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/ui/DrawerDesign$Background;,
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

.field private static final backgrounds:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Lio/nekohasekai/sagernet/ui/DrawerDesign$Background;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 78
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lio/nekohasekai/sagernet/ui/DrawerDesign;->backgrounds:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static accent(Landroid/content/Context;)I
    .registers 1

    .line 58
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/ThemePalette;->accent(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method static synthetic access$000(Landroid/widget/TextView;I)V
    .registers 2

    .line 31
    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->color(Landroid/widget/TextView;I)V

    return-void
.end method

.method static action(Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 299
    invoke-static {p0, v0, v1}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->background(Landroid/view/View;ZZ)V

    return-void
.end method

.method private static background(Landroid/view/View;ZZ)V
    .registers 13

    .line 89
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p2, :cond_c

    .line 90
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/ThemePalette;->inset(Landroid/content/Context;)I

    move-result v1

    :goto_a
    move v5, v1

    goto :goto_15

    :cond_c
    if-eqz p1, :cond_13

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/ThemePalette;->selected(Landroid/content/Context;)I

    move-result v1

    goto :goto_a

    :cond_13
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 91
    :goto_15
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->dark(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_22

    const v1, 0x20ffffff

    const v6, 0x20ffffff

    goto :goto_28

    :cond_22
    const v1, 0x18b74771

    const v6, 0x18b74771

    :goto_28
    if-eqz p2, :cond_2d

    const/high16 v1, 0x41600000    # 14.0f

    goto :goto_2f

    :cond_2d
    const/high16 v1, 0x41800000    # 16.0f

    .line 92
    :goto_2f
    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->dp(Landroid/content/Context;F)I

    move-result v7

    .line 93
    sget-object v1, Lio/nekohasekai/sagernet/ui/DrawerDesign;->backgrounds:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/nekohasekai/sagernet/ui/DrawerDesign$Background;

    if-eqz v2, :cond_5a

    .line 94
    iget-boolean v3, v2, Lio/nekohasekai/sagernet/ui/DrawerDesign$Background;->selected:Z

    if-ne v3, p1, :cond_5a

    iget-boolean v3, v2, Lio/nekohasekai/sagernet/ui/DrawerDesign$Background;->action:Z

    if-ne v3, p2, :cond_5a

    iget v3, v2, Lio/nekohasekai/sagernet/ui/DrawerDesign$Background;->fill:I

    if-ne v3, v5, :cond_5a

    iget v3, v2, Lio/nekohasekai/sagernet/ui/DrawerDesign$Background;->ripple:I

    if-ne v3, v6, :cond_5a

    iget v3, v2, Lio/nekohasekai/sagernet/ui/DrawerDesign$Background;->radius:I

    if-ne v3, v7, :cond_5a

    .line 96
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v2, v2, Lio/nekohasekai/sagernet/ui/DrawerDesign$Background;->installed:Landroid/graphics/drawable/Drawable;

    if-ne v3, v2, :cond_5a

    return-void

    .line 97
    :cond_5a
    new-instance v8, Landroid/graphics/drawable/RippleDrawable;

    invoke-static {v6}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    const/16 v3, 0xe

    const/16 v4, 0x10

    if-eqz p2, :cond_69

    const/16 v9, 0xe

    goto :goto_6b

    :cond_69
    const/16 v9, 0x10

    .line 98
    :goto_6b
    invoke-static {v0, v5, v9}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->shape(Landroid/content/Context;II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v9

    if-eqz p2, :cond_72

    goto :goto_74

    :cond_72
    const/16 v3, 0x10

    :goto_74
    const/4 v4, -0x1

    invoke-static {v0, v4, v3}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->shape(Landroid/content/Context;II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-direct {v8, v2, v9, v0}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 99
    invoke-virtual {p0, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 100
    new-instance v2, Lio/nekohasekai/sagernet/ui/DrawerDesign$Background;

    move v3, p1

    move v4, p2

    invoke-direct/range {v2 .. v8}, Lio/nekohasekai/sagernet/ui/DrawerDesign$Background;-><init>(ZZIIILandroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static color(Landroid/widget/TextView;I)V
    .registers 3

    .line 104
    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    if-ne v0, p1, :cond_12

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_12

    :cond_11
    return-void

    :cond_12
    :goto_12
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method static dark(Landroid/content/Context;)Z
    .registers 1

    .line 46
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/ThemePalette;->dark(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static dp(Landroid/content/Context;F)I
    .registers 2

    .line 42
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

    .line 295
    new-instance v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Heading;

    invoke-direct {v0, p1, p2, p3, p4}, Lio/nekohasekai/sagernet/ui/DrawerDesign$Heading;-><init>(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/ViewGroup;)V

    const p1, 0x7f0a0f7a

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 296
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->refresh(Landroid/view/View;)V

    return-void
.end method

.method static ink(Landroid/content/Context;)I
    .registers 1

    .line 50
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

    .line 109
    invoke-virtual {v1, v3}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_10

    return-void

    .line 112
    :cond_10
    new-instance v4, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;

    invoke-direct {v4, v1, v2}, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;-><init>(Landroid/view/View;Landroid/widget/LinearLayout;)V

    .line 113
    invoke-virtual {v1, v3, v4}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setTag(ILjava/lang/Object;)V

    .line 114
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 115
    :goto_1f
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    if-ge v6, v7, :cond_39

    .line 116
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    instance-of v7, v7, Landroid/widget/FrameLayout;

    if-eqz v7, :cond_36

    .line 117
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_36
    add-int/lit8 v6, v6, 0x1

    goto :goto_1f

    .line 120
    :cond_39
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/high16 v6, 0x41400000    # 12.0f

    .line 122
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

    .line 123
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, v4, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;->header:Landroid/widget/LinearLayout;

    .line 124
    iget-object v7, v4, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;->header:Landroid/widget/LinearLayout;

    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 125
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

    .line 126
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->dark(Landroid/content/Context;)Z

    move-result v6

    xor-int/2addr v6, v9

    invoke-static {v6}, Lio/nekohasekai/sagernet/ui/RosePalette;->brandTitle(Z)Ljava/lang/CharSequence;

    move-result-object v6

    const/16 v7, 0x18

    invoke-static {v0, v6, v7, v9}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->label(Landroid/content/Context;Ljava/lang/CharSequence;IZ)Landroid/widget/TextView;

    move-result-object v6

    iput-object v6, v4, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;->brand:Landroid/widget/TextView;

    .line 127
    iget-object v6, v4, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;->brand:Landroid/widget/TextView;

    const v7, -0x43333333    # -0.025f

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 128
    iget-object v6, v4, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;->header:Landroid/widget/LinearLayout;

    iget-object v7, v4, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;->brand:Landroid/widget/TextView;

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x2

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    const-string v6, "\u7b80\u5355\u8fde\u63a5\uff0c\u81ea\u5728\u4e0a\u7f51"

    const/16 v7, 0xc

    invoke-static {v0, v6, v7, v5}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->label(Landroid/content/Context;Ljava/lang/CharSequence;IZ)Landroid/widget/TextView;

    move-result-object v6

    iput-object v6, v4, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;->tagline:Landroid/widget/TextView;

    .line 130
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v10, 0x41100000    # 9.0f

    .line 131
    invoke-static {v0, v10}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->dp(Landroid/content/Context;F)I

    move-result v13

    iput v13, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 132
    iget-object v13, v4, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;->header:Landroid/widget/LinearLayout;

    iget-object v14, v4, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;->tagline:Landroid/widget/TextView;

    invoke-virtual {v13, v14, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    iget-object v6, v4, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;->header:Landroid/widget/LinearLayout;

    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v13, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v6, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    new-instance v6, Lio/nekohasekai/sagernet/ui/DrawerDesign$MenuScroll;

    invoke-direct {v6, v0}, Lio/nekohasekai/sagernet/ui/DrawerDesign$MenuScroll;-><init>(Landroid/content/Context;)V

    .line 135
    invoke-virtual {v6, v5}, Lio/nekohasekai/sagernet/ui/DrawerDesign$MenuScroll;->setFillViewport(Z)V

    .line 136
    invoke-virtual {v6, v5}, Lio/nekohasekai/sagernet/ui/DrawerDesign$MenuScroll;->setVerticalScrollBarEnabled(Z)V

    const/4 v13, 0x2

    .line 137
    invoke-virtual {v6, v13}, Lio/nekohasekai/sagernet/ui/DrawerDesign$MenuScroll;->setOverScrollMode(I)V

    .line 138
    invoke-virtual {v6, v5}, Lio/nekohasekai/sagernet/ui/DrawerDesign$MenuScroll;->setClipToPadding(Z)V

    .line 139
    new-instance v14, Landroid/widget/LinearLayout;

    invoke-direct {v14, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v14, v4, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;->list:Landroid/widget/LinearLayout;

    .line 140
    iget-object v14, v4, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;->list:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 141
    iget-object v14, v4, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;->list:Landroid/widget/LinearLayout;

    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v15, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v14, v15}, Lio/nekohasekai/sagernet/ui/DrawerDesign$MenuScroll;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v14, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v6, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v6, 0x0

    .line 144
    :goto_f9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v6, v14, :cond_21e

    .line 145
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/widget/FrameLayout;

    .line 146
    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v15

    if-eqz v15, :cond_213

    invoke-virtual {v14, v5}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    instance-of v15, v15, Landroid/widget/TextView;

    if-eqz v15, :cond_213

    .line 147
    invoke-virtual {v14, v5}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 148
    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->kind(Ljava/lang/String;)I

    move-result v16

    .line 149
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    move/from16 v9, v16

    .line 153
    :goto_12f
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    const/4 v13, 0x3

    if-nez v16, :cond_1d1

    if-eqz v6, :cond_13d

    if-ne v6, v13, :cond_13b

    goto :goto_13d

    :cond_13b
    const/4 v13, -0x1

    goto :goto_17a

    :cond_13d
    :goto_13d
    if-nez v6, :cond_142

    .line 172
    const-string v13, "\u8fde\u63a5\u4e0e\u5206\u6d41"

    goto :goto_144

    :cond_142
    const-string v13, "\u504f\u597d\u4e0e\u66f4\u591a"

    :goto_144
    const/16 v7, 0xa

    invoke-static {v0, v13, v7, v5}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->label(Landroid/content/Context;Ljava/lang/CharSequence;IZ)Landroid/widget/TextView;

    move-result-object v7

    const v13, 0x3da3d70a    # 0.08f

    .line 173
    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 174
    invoke-static {v0, v8}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->dp(Landroid/content/Context;F)I

    move-result v13

    if-nez v6, :cond_15b

    const/high16 v17, 0x40400000    # 3.0f

    const/high16 v8, 0x40400000    # 3.0f

    goto :goto_15f

    :cond_15b
    const/high16 v17, 0x41880000    # 17.0f

    const/high16 v8, 0x41880000    # 17.0f

    :goto_15f
    invoke-static {v0, v8}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-static {v0, v10}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->dp(Landroid/content/Context;F)I

    move-result v11

    invoke-virtual {v7, v13, v8, v5, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 175
    iget-object v8, v4, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;->sections:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    iget-object v8, v4, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;->list:Landroid/widget/LinearLayout;

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x1

    invoke-direct {v11, v13, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v7, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    :goto_17a
    invoke-virtual {v14}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 182
    new-instance v7, Lio/nekohasekai/sagernet/ui/DrawerDesign$Row;

    invoke-direct {v7, v0, v15, v9}, Lio/nekohasekai/sagernet/ui/DrawerDesign$Row;-><init>(Landroid/content/Context;Landroid/widget/TextView;I)V

    const v8, 0x7f0a0f79

    .line 183
    invoke-virtual {v14, v8, v7}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 184
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v8, v13, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v14, v7, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    invoke-virtual {v14, v5, v5, v5, v5}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 186
    invoke-virtual {v14, v5}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 187
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x42680000    # 58.0f

    invoke-static {v0, v8}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->dp(Landroid/content/Context;F)I

    move-result v9

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v11, v11, Landroid/content/res/Configuration;->fontScale:F

    mul-float v11, v11, v8

    invoke-static {v0, v11}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    const/4 v13, -0x1

    invoke-direct {v7, v13, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v8, 0x40800000    # 4.0f

    .line 188
    invoke-static {v0, v8}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->dp(Landroid/content/Context;F)I

    move-result v8

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 189
    iget-object v8, v4, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;->list:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v14, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    new-instance v7, Lio/nekohasekai/sagernet/ui/DrawerDesign$1;

    invoke-direct {v7}, Lio/nekohasekai/sagernet/ui/DrawerDesign$1;-><init>()V

    invoke-virtual {v14, v7}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 196
    iget-object v7, v4, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;->rows:Ljava/util/List;

    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_213

    .line 156
    :cond_1d1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 157
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v14, :cond_20b

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Ljava/lang/Number;

    if-eqz v8, :cond_20b

    .line 158
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    const v8, 0x7f0a01e3

    if-ne v7, v8, :cond_1f6

    const/4 v13, 0x0

    goto :goto_20a

    :cond_1f6
    const v8, 0x7f0a01e6

    if-ne v7, v8, :cond_1fd

    const/4 v13, 0x1

    goto :goto_20a

    :cond_1fd
    const v8, 0x7f0a01e7

    if-ne v7, v8, :cond_204

    const/4 v13, 0x2

    goto :goto_20a

    :cond_204
    const v8, 0x7f0a01e9

    if-eq v7, v8, :cond_20a

    const/4 v13, 0x5

    :cond_20a
    :goto_20a
    move v9, v13

    :cond_20b
    const/16 v7, 0xc

    const/high16 v8, 0x41600000    # 14.0f

    const/4 v11, -0x1

    const/4 v13, 0x2

    goto/16 :goto_12f

    :cond_213
    :goto_213
    add-int/lit8 v6, v6, 0x1

    const/16 v7, 0xc

    const/high16 v8, 0x41600000    # 14.0f

    const/4 v9, 0x1

    const/4 v11, -0x1

    const/4 v13, 0x2

    goto/16 :goto_f9

    .line 201
    :cond_21e
    const-string v3, "\u57fa\u4e8e NekoBox \u00b7 \u4e3a\u7b80\u5355\u800c\u751f"

    const/16 v6, 0xc

    invoke-static {v0, v3, v6, v5}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->label(Landroid/content/Context;Ljava/lang/CharSequence;IZ)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, v4, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;->footer:Landroid/widget/TextView;

    .line 202
    iget-object v3, v4, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;->footer:Landroid/widget/TextView;

    const/16 v6, 0x11

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 203
    iget-object v3, v4, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;->footer:Landroid/widget/TextView;

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-static {v0, v6}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->dp(Landroid/content/Context;F)I

    move-result v6

    const/high16 v7, 0x40a00000    # 5.0f

    invoke-static {v0, v7}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {v3, v5, v6, v5, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 204
    iget-object v0, v4, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;->footer:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x1

    invoke-direct {v3, v13, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    invoke-static/range {p3 .. p4}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->select(Ljava/util/Map;I)V

    .line 206
    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->refresh(Landroid/view/View;)V

    .line 207
    invoke-static {v2}, Lio/nekohasekai/sagernet/ui/DrawerLayers;->bind(Landroid/view/View;)V

    return-void
.end method

.method private static kind(Ljava/lang/String;)I
    .registers 6

    .line 368
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 369
    const-string v1, "home"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    return v2

    .line 372
    :cond_10
    const-string v1, "route"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1a

    return v3

    .line 375
    :cond_1a
    const-string v1, "settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x2

    if-eqz v1, :cond_24

    return v4

    .line 378
    :cond_24
    const-string v1, "tools"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_2e

    return v1

    .line 381
    :cond_2e
    const-string v0, "\u9996\u9875"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_37

    return v2

    .line 384
    :cond_37
    const-string v0, "\u8def\u7531"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_40

    return v3

    .line 387
    :cond_40
    const-string v0, "\u8bbe\u7f6e"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_49

    return v4

    .line 390
    :cond_49
    const-string v0, "\u5de5\u5177"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    return v1

    .line 393
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

    .line 69
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 70
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-float p1, p2

    .line 71
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 72
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->ink(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p0, 0x0

    .line 73
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 74
    sget-object p0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, p0, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    return-object v0
.end method

.method static lambda$install$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    .line 213
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_19

    .line 215
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const p1, 0x3f7c28f6    # 0.985f

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v1, 0x87

    goto :goto_30

    :cond_19
    const/4 v1, 0x1

    if-eq p1, v1, :cond_20

    const/4 v1, 0x3

    if-eq p1, v1, :cond_20

    return v0

    .line 220
    :cond_20
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v1, 0x10e

    .line 223
    :goto_30
    invoke-virtual {p0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object p1, Lio/nekohasekai/sagernet/ui/AppMotion;->CURVE:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return v0
.end method

.method static muted(Landroid/content/Context;)I
    .registers 1

    .line 54
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/ThemePalette;->secondary(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static nestedHeader(Landroid/widget/LinearLayout;)V
    .registers 9

    .line 254
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 255
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_c

    goto :goto_71

    :cond_c
    const/4 v1, 0x0

    .line 258
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    .line 259
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 260
    instance-of v5, v2, Landroid/widget/TextView;

    if-eqz v5, :cond_22

    .line 261
    move-object v5, v2

    check-cast v5, Landroid/widget/TextView;

    const/high16 v6, 0x41e00000    # 28.0f

    invoke-virtual {v5, v3, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_22
    const/high16 v5, 0x40800000    # 4.0f

    .line 263
    invoke-static {v0, v5}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x41800000    # 16.0f

    invoke-static {v0, v6}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {p0, v1, v5, v1, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 264
    invoke-static {v2}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->action(Landroid/view/View;)V

    .line 265
    instance-of v5, v4, Landroid/widget/TextView;

    if-eqz v5, :cond_71

    .line 266
    check-cast v4, Landroid/widget/TextView;

    const/high16 v5, 0x41a80000    # 21.0f

    .line 267
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 268
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    const/high16 v5, 0x42400000    # 48.0f

    .line 269
    invoke-static {v0, v5}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 270
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v5, v1, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->ink(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 272
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 273
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 274
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
    .registers 6

    const v0, 0x7f0a0f7a

    .line 302
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 303
    instance-of v1, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Heading;

    if-eqz v1, :cond_45

    .line 304
    check-cast v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Heading;

    .line 305
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 306
    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Heading;->title:Landroid/widget/TextView;

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->ink(Landroid/content/Context;)I

    move-result v3

    invoke-static {v2, v3}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->color(Landroid/widget/TextView;I)V

    .line 307
    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Heading;->subtitle:Landroid/widget/TextView;

    if-eqz v2, :cond_27

    .line 308
    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Heading;->subtitle:Landroid/widget/TextView;

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->muted(Landroid/content/Context;)I

    move-result v1

    invoke-static {v2, v1}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->color(Landroid/widget/TextView;I)V

    .line 310
    :cond_27
    iget-object v1, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Heading;->back:Landroid/view/View;

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->action(Landroid/view/View;)V

    .line 311
    iget-object v1, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Heading;->actions:Landroid/view/ViewGroup;

    if-eqz v1, :cond_45

    const/4 v1, 0x0

    .line 312
    :goto_31
    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Heading;->actions:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_45

    .line 313
    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Heading;->actions:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->action(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    :cond_45
    const v0, 0x7f0a0f78

    .line 317
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 318
    instance-of v1, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;

    if-eqz v1, :cond_dc

    .line 319
    check-cast v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;

    .line 320
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 321
    instance-of v2, p0, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    if-eqz v2, :cond_6e

    .line 322
    check-cast p0, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    const/high16 v2, 0x41b00000    # 22.0f

    .line 323
    invoke-virtual {p0, v2}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setCornerRadiusDp(F)V

    const v2, 0x3f333333    # 0.7f

    .line 324
    invoke-virtual {p0, v2}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setBorderWidthDp(F)V

    .line 325
    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/ThemePalette;->border(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p0, v2}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setBorderColor(I)V

    .line 327
    :cond_6e
    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->dark(Landroid/content/Context;)Z

    move-result p0

    const/4 v2, 0x1

    xor-int/2addr p0, v2

    .line 328
    iget-boolean v3, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;->brandApplied:Z

    if-eqz v3, :cond_7c

    iget-boolean v3, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;->brandLight:Z

    if-eq v3, p0, :cond_89

    .line 329
    :cond_7c
    iget-object v3, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;->brand:Landroid/widget/TextView;

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/RosePalette;->brandTitle(Z)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    iput-boolean v2, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;->brandApplied:Z

    iput-boolean p0, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;->brandLight:Z

    .line 332
    :cond_89
    iget-object p0, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;->tagline:Landroid/widget/TextView;

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->muted(Landroid/content/Context;)I

    move-result v2

    invoke-static {p0, v2}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->color(Landroid/widget/TextView;I)V

    .line 333
    iget-object p0, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;->footer:Landroid/widget/TextView;

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->muted(Landroid/content/Context;)I

    move-result v2

    invoke-static {p0, v2}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->color(Landroid/widget/TextView;I)V

    .line 334
    iget-object p0, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;->sections:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 335
    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->muted(Landroid/content/Context;)I

    move-result v3

    invoke-static {v2, v3}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->color(Landroid/widget/TextView;I)V

    goto :goto_a1

    .line 337
    :cond_b5
    iget-object p0, v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;->rows:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_bb
    :goto_bb
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_dc

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0a0f79

    .line 338
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 339
    instance-of v2, v1, Lio/nekohasekai/sagernet/ui/DrawerDesign$Row;

    if-eqz v2, :cond_bb

    .line 340
    check-cast v1, Lio/nekohasekai/sagernet/ui/DrawerDesign$Row;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isSelected()Z

    move-result v0

    invoke-virtual {v1, v0}, Lio/nekohasekai/sagernet/ui/DrawerDesign$Row;->paint(Z)V

    goto :goto_bb

    :cond_dc
    return-void
.end method

.method public static refreshTree(Landroid/view/View;)V
    .registers 4

    .line 243
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_18

    .line 244
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 245
    :goto_8
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_18

    .line 246
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->refreshTree(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 249
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

    .line 228
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

    .line 229
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_8

    .line 230
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 231
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

    .line 232
    :goto_39
    invoke-virtual {v1, v0}, Landroid/view/View;->setSelected(Z)V

    const v2, 0x7f0a0f79

    .line 233
    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 234
    instance-of v2, v1, Lio/nekohasekai/sagernet/ui/DrawerDesign$Row;

    if-eqz v2, :cond_8

    .line 235
    check-cast v1, Lio/nekohasekai/sagernet/ui/DrawerDesign$Row;

    invoke-virtual {v1, v0}, Lio/nekohasekai/sagernet/ui/DrawerDesign$Row;->paint(Z)V

    goto :goto_8

    :cond_4d
    return-void
.end method

.method static shape(Landroid/content/Context;II)Landroid/graphics/drawable/GradientDrawable;
    .registers 4

    .line 62
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 63
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    int-to-float p1, p2

    .line 64
    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->dp(Landroid/content/Context;F)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-object v0
.end method

.method public static slide(Landroid/view/View;F)V
    .registers 2

    .line 38
    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard;->slide(Landroid/view/View;F)V

    return-void
.end method

.method public static subtitle(I)Ljava/lang/String;
    .registers 7

    .line 418
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
    .registers 3

    const/4 v0, 0x0

    .line 102
    invoke-static {p0, p1, v0}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->background(Landroid/view/View;ZZ)V

    return-void
.end method

.method public static warmMenuLayer(Landroid/view/View;)Z
    .registers 5

    const v0, 0x7f0a0f78

    .line 347
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    .line 348
    instance-of v0, p0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;

    const/4 v1, 0x0

    if-eqz v0, :cond_45

    .line 349
    check-cast p0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;

    iget-object p0, p0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;->column:Landroid/widget/LinearLayout;

    .line 350
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    if-lez v0, :cond_45

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    if-lez v0, :cond_45

    const/4 v0, 0x0

    .line 352
    :try_start_29
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayerType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_33

    .line 353
    invoke-virtual {p0, v3, v0}, Landroid/widget/LinearLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 355
    :cond_33
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->buildLayer()V
    :try_end_36
    .catch Ljava/lang/OutOfMemoryError; {:try_start_29 .. :try_end_36} :catch_3a
    .catch Ljava/lang/RuntimeException; {:try_start_29 .. :try_end_36} :catch_38

    const/4 p0, 0x1

    return p0

    :catch_38
    move-exception v2

    goto :goto_3b

    :catch_3a
    move-exception v2

    .line 358
    :goto_3b
    invoke-virtual {p0, v1, v0}, Landroid/widget/LinearLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 359
    const-string p0, "DrawerDesign"

    const-string v0, "Menu GPU prewarm unavailable"

    invoke-static {p0, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_45
    return v1
.end method
