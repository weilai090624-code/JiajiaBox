.class public final Lio/nekohasekai/sagernet/ui/UiComponents;
.super Ljava/lang/Object;
.source "UiComponents.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/ui/UiComponents$Style;,
        Lio/nekohasekai/sagernet/ui/UiComponents$Role;
    }
.end annotation


# static fields
.field public static final ACTION_HEIGHT:I = 0x30

.field public static final ACTION_MIN_WIDTH:I = 0x58

.field public static final CELL_RADIUS:I = 0x10

.field public static final CONTENT_PAD:I = 0x14

.field public static final GAP:I = 0x8

.field public static final PANEL_RADIUS:I = 0x1a

.field public static final TRANSITION_MS:I = 0xdc

.field private static final styles:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Lio/nekohasekai/sagernet/ui/UiComponents$Style;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lio/nekohasekai/sagernet/ui/UiComponents;->styles:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static action(Landroid/view/View;)V
    .registers 14

    .line 95
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/UiComponents;->owns(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 96
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42b00000    # 88.0f

    .line 97
    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/View;->setMinimumWidth(I)V

    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {v0, v2}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/view/View;->setMinimumHeight(I)V

    .line 98
    instance-of v3, p0, Landroid/widget/TextView;

    const/16 v4, 0x11

    const/high16 v5, 0x41800000    # 16.0f

    const/4 v6, 0x0

    if-eqz v3, :cond_49

    .line 99
    move-object v1, p0

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    const/high16 v2, 0x41600000    # 14.0f

    .line 100
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v2, "sans-serif-medium"

    invoke-static {v2, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-static {v0, v5}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {v0, v5}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {v1, v2, v6, v0, v6}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    goto :goto_a3

    .line 101
    :cond_49
    instance-of v3, p0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_a3

    .line 102
    move-object v3, p0

    check-cast v3, Landroid/view/ViewGroup;

    const/4 v7, 0x0

    .line 103
    :goto_51
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-ge v7, v8, :cond_a3

    .line 104
    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 105
    instance-of v9, v8, Landroid/widget/TextView;

    if-eqz v9, :cond_a0

    .line 106
    move-object v9, v8

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 107
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    const/high16 v10, 0x41700000    # 15.0f

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 108
    invoke-static {v0, v5}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v10

    invoke-static {v0, v5}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v11

    invoke-virtual {v9, v10, v6, v11, v6}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 109
    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 110
    instance-of v10, p0, Landroid/widget/FrameLayout;

    const/4 v11, -0x2

    if-eqz v10, :cond_91

    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v0, v2}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v12

    invoke-direct {v10, v11, v12, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v8, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_9d

    .line 111
    :cond_91
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v0, v2}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v12

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    :goto_9d
    invoke-static {v9}, Lio/nekohasekai/sagernet/ui/UiComponents;->text(Landroid/widget/TextView;)V

    :cond_a0
    add-int/lit8 v7, v7, 0x1

    goto :goto_51

    .line 116
    :cond_a3
    :goto_a3
    instance-of v0, p0, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    if-eqz v0, :cond_bb

    .line 117
    sget-object v0, Lio/nekohasekai/sagernet/ui/UiComponents;->styles:Ljava/util/WeakHashMap;

    new-instance v1, Lio/nekohasekai/sagernet/ui/UiComponents$Style;

    sget-object v2, Lio/nekohasekai/sagernet/ui/UiComponents$Role;->ACTION:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lio/nekohasekai/sagernet/ui/UiComponents$Style;-><init>(Lio/nekohasekai/sagernet/ui/UiComponents$Role;Landroid/graphics/drawable/GradientDrawable;)V

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    move-object v0, p0

    check-cast v0, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    invoke-virtual {v0, v5}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setCornerRadiusDp(F)V

    goto :goto_c1

    .line 119
    :cond_bb
    sget-object v0, Lio/nekohasekai/sagernet/ui/UiComponents$Role;->ACTION:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->register(Landroid/view/View;Lio/nekohasekai/sagernet/ui/UiComponents$Role;Z)V

    .line 120
    :goto_c1
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/UiComponents;->paint(Landroid/view/View;)V

    return-void
.end method

.method public static actions(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .registers 2

    .line 157
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const p0, 0x800015

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setGravity(I)V

    return-object v0
.end method

.method public static addAction(Landroid/widget/LinearLayout;Landroid/view/View;)V
    .registers 5

    .line 161
    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/UiComponents;->action(Landroid/view/View;)V

    .line 162
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {v1, v2}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v1

    const/4 v2, -0x2

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 163
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_26

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v1, v2}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 164
    :cond_26
    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static choice(Landroid/view/View;)V
    .registers 15

    .line 134
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/UiComponents;->owns(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/UiComponents;->paint(Landroid/view/View;)V

    return-void

    .line 135
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 136
    instance-of v1, p0, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    const/16 v2, 0x10

    const/high16 v3, 0x41400000    # 12.0f

    const/high16 v4, 0x41600000    # 14.0f

    if-eqz v1, :cond_7a

    .line 137
    sget-object v1, Lio/nekohasekai/sagernet/ui/UiComponents;->styles:Ljava/util/WeakHashMap;

    new-instance v5, Lio/nekohasekai/sagernet/ui/UiComponents$Style;

    sget-object v6, Lio/nekohasekai/sagernet/ui/UiComponents$Role;->CHOICE:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lio/nekohasekai/sagernet/ui/UiComponents$Style;-><init>(Lio/nekohasekai/sagernet/ui/UiComponents$Role;Landroid/graphics/drawable/GradientDrawable;)V

    invoke-virtual {v1, p0, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    move-object v1, p0

    check-cast v1, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {v1, v5}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setCornerRadiusDp(F)V

    .line 139
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v5, 0x0

    .line 140
    :goto_3a
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    const/4 v7, -0x2

    const/4 v8, -0x1

    if-ge v5, v6, :cond_71

    .line 141
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 142
    instance-of v9, v6, Landroid/widget/TextView;

    if-eqz v9, :cond_6e

    .line 143
    move-object v9, v6

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 144
    invoke-static {v0, v4}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v10

    invoke-static {v0, v3}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v11

    invoke-static {v0, v4}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v12

    invoke-static {v0, v3}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v13

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 145
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v10, v8, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v9}, Lio/nekohasekai/sagernet/ui/UiComponents;->text(Landroid/widget/TextView;)V

    :cond_6e
    add-int/lit8 v5, v5, 0x1

    goto :goto_3a

    .line 148
    :cond_71
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_9d

    .line 150
    :cond_7a
    sget-object v1, Lio/nekohasekai/sagernet/ui/UiComponents$Role;->CHOICE:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    const/4 v5, 0x1

    invoke-static {p0, v1, v5}, Lio/nekohasekai/sagernet/ui/UiComponents;->register(Landroid/view/View;Lio/nekohasekai/sagernet/ui/UiComponents$Role;Z)V

    .line 151
    invoke-static {v0, v4}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {v0, v3}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {v0, v4}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {v0, v3}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0, v1, v5, v4, v0}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 152
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_9d

    move-object v0, p0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 154
    :cond_9d
    :goto_9d
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/UiComponents;->paint(Landroid/view/View;)V

    return-void
.end method

.method public static column(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .registers 6

    .line 73
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 74
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v1, 0x41a00000    # 20.0f

    .line 75
    invoke-static {p0, v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v1

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {p0, v4}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result p0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-object v0
.end method

.method public static dp(Landroid/content/Context;F)I
    .registers 2

    .line 39
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

.method public static drawerHeader(Landroid/view/ViewGroup;)V
    .registers 7

    .line 175
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setMinimumHeight(I)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 176
    :goto_f
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_48

    .line 177
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 178
    invoke-virtual {v3}, Landroid/view/View;->isClickable()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-static {v3}, Lio/nekohasekai/sagernet/ui/UiComponents;->action(Landroid/view/View;)V

    goto :goto_32

    .line 179
    :cond_23
    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_32

    move-object v4, v3

    check-cast v4, Landroid/widget/TextView;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    invoke-static {v4}, Lio/nekohasekai/sagernet/ui/UiComponents;->text(Landroid/widget/TextView;)V

    .line 180
    :cond_32
    :goto_32
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-eqz v4, :cond_45

    .line 181
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 183
    :cond_48
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_57

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    const-string v0, "\u8fd4\u56de\u83dc\u5355"

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_57
    return-void
.end method

.method public static field(Landroid/widget/EditText;)V
    .registers 6

    .line 88
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/UiComponents;->owns(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 89
    :cond_7
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41800000    # 16.0f

    .line 90
    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x41500000    # 13.0f

    invoke-static {v0, v3}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {v0, v3}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {p0, v2, v4, v1, v3}, Landroid/widget/EditText;->setPaddingRelative(IIII)V

    const/high16 v1, 0x42400000    # 48.0f

    .line 91
    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setMinimumHeight(I)V

    .line 92
    sget-object v0, Lio/nekohasekai/sagernet/ui/UiComponents$Role;->FIELD:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->register(Landroid/view/View;Lio/nekohasekai/sagernet/ui/UiComponents$Role;Z)V

    return-void
.end method

.method public static header(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/LinearLayout;
    .registers 8

    .line 167
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 168
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v2, "\u2039"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 169
    const-string v2, "\u8fd4\u56de\u4e0a\u4e00\u9875"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v2, Lio/nekohasekai/sagernet/ui/UiComponents$0;

    invoke-direct {v2, p2}, Lio/nekohasekai/sagernet/ui/UiComponents$0;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->text(Landroid/widget/TextView;)V

    .line 170
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {p0, v2}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v2}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {p2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/UiComponents;->title(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/TextView;

    move-result-object p1

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v2}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result p0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {p2, v2, p0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method static synthetic lambda$header$0(Ljava/lang/Runnable;Landroid/view/View;)V
    .registers 2

    .line 169
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static owns(Landroid/view/View;)Z
    .registers 2

    .line 40
    sget-object v0, Lio/nekohasekai/sagernet/ui/UiComponents;->styles:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static paint(Landroid/view/View;)V
    .registers 12

    .line 191
    sget-object v0, Lio/nekohasekai/sagernet/ui/UiComponents;->styles:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/ui/UiComponents$Style;

    if-nez v0, :cond_c

    goto/16 :goto_166

    .line 192
    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/ThemePalette;->text(Landroid/content/Context;)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_1b

    const/4 v1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    .line 193
    :goto_1c
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lio/nekohasekai/sagernet/ui/ThemePalette;->border(Landroid/content/Context;)I

    move-result v2

    .line 194
    iget-object v5, v0, Lio/nekohasekai/sagernet/ui/UiComponents$Style;->background:Landroid/graphics/drawable/GradientDrawable;

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v5, :cond_114

    .line 195
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-object v7, v0, Lio/nekohasekai/sagernet/ui/UiComponents$Style;->installed:Landroid/graphics/drawable/Drawable;

    if-eq v5, v7, :cond_4a

    .line 196
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v8

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    .line 197
    iget-object v10, v0, Lio/nekohasekai/sagernet/ui/UiComponents$Style;->installed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 198
    invoke-virtual {p0, v5, v7, v8, v9}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_4a
    const/4 v5, 0x0

    .line 200
    invoke-virtual {p0, v5}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 203
    iget-object v5, v0, Lio/nekohasekai/sagernet/ui/UiComponents$Style;->background:Landroid/graphics/drawable/GradientDrawable;

    .line 204
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    instance-of v7, v7, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v7, :cond_82

    .line 205
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/RippleDrawable;

    .line 206
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lio/nekohasekai/sagernet/ui/ThemePalette;->ripple(Landroid/content/Context;)I

    move-result v8

    invoke-static {v8}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 207
    invoke-virtual {v7}, Landroid/graphics/drawable/RippleDrawable;->getNumberOfLayers()I

    move-result v8

    if-lez v8, :cond_90

    invoke-virtual {v7, v4}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    instance-of v8, v8, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v8, :cond_90

    .line 208
    invoke-virtual {v7, v4}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/GradientDrawable;

    goto :goto_90

    .line 209
    :cond_82
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    instance-of v7, v7, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v7, :cond_90

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/GradientDrawable;

    .line 210
    :cond_90
    :goto_90
    iget-object v7, v0, Lio/nekohasekai/sagernet/ui/UiComponents$Style;->role:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    sget-object v8, Lio/nekohasekai/sagernet/ui/UiComponents$Role;->CHOICE:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    if-ne v7, v8, :cond_9e

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v7

    if-eqz v7, :cond_9e

    const/4 v7, 0x1

    goto :goto_9f

    :cond_9e
    const/4 v7, 0x0

    :goto_9f
    if-eqz v7, :cond_aa

    .line 211
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lio/nekohasekai/sagernet/ui/ThemePalette;->selected(Landroid/content/Context;)I

    move-result v8

    goto :goto_c8

    :cond_aa
    iget-object v8, v0, Lio/nekohasekai/sagernet/ui/UiComponents$Style;->role:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    sget-object v9, Lio/nekohasekai/sagernet/ui/UiComponents$Role;->FIELD:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    if-eq v8, v9, :cond_c0

    iget-object v8, v0, Lio/nekohasekai/sagernet/ui/UiComponents$Style;->role:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    sget-object v9, Lio/nekohasekai/sagernet/ui/UiComponents$Role;->ACTION:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    if-ne v8, v9, :cond_b7

    goto :goto_c0

    :cond_b7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lio/nekohasekai/sagernet/ui/ThemePalette;->control(Landroid/content/Context;)I

    move-result v8

    goto :goto_c8

    :cond_c0
    :goto_c0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lio/nekohasekai/sagernet/ui/ThemePalette;->inset(Landroid/content/Context;)I

    move-result v8

    :goto_c8
    invoke-virtual {v5, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    if-eqz v7, :cond_d5

    .line 212
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lio/nekohasekai/sagernet/ui/ThemePalette;->selectedBorder(Landroid/content/Context;)I

    move-result v2

    .line 213
    :cond_d5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, v0, Lio/nekohasekai/sagernet/ui/UiComponents$Style;->role:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    sget-object v10, Lio/nekohasekai/sagernet/ui/UiComponents$Role;->SURFACE:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    if-ne v9, v10, :cond_e2

    const/high16 v9, 0x41d00000    # 26.0f

    goto :goto_ed

    :cond_e2
    iget-object v9, v0, Lio/nekohasekai/sagernet/ui/UiComponents$Style;->role:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    sget-object v10, Lio/nekohasekai/sagernet/ui/UiComponents$Role;->ROUTING:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    if-ne v9, v10, :cond_eb

    const/high16 v9, 0x41b00000    # 22.0f

    goto :goto_ed

    :cond_eb
    const/high16 v9, 0x41800000    # 16.0f

    :goto_ed
    invoke-static {v8, v9}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v5, v8}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 214
    iget-object v8, v0, Lio/nekohasekai/sagernet/ui/UiComponents$Style;->role:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    sget-object v9, Lio/nekohasekai/sagernet/ui/UiComponents$Role;->FIELD:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    if-eq v8, v9, :cond_105

    if-nez v7, :cond_105

    iget-object v7, v0, Lio/nekohasekai/sagernet/ui/UiComponents$Style;->role:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    sget-object v8, Lio/nekohasekai/sagernet/ui/UiComponents$Role;->ROUTING:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    if-ne v7, v8, :cond_111

    if-nez v1, :cond_111

    .line 215
    :cond_105
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_111
    invoke-virtual {v5, v4, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 217
    :cond_114
    instance-of v1, p0, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    if-eqz v1, :cond_127

    .line 218
    move-object v1, p0

    check-cast v1, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->disableLiveBackdrop()V

    invoke-virtual {v1, v3}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setOpaqueVeil(Z)V

    .line 219
    invoke-virtual {v1, v2}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setBorderColor(I)V

    invoke-virtual {v1, v6}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setBorderWidthDp(F)V

    .line 221
    :cond_127
    instance-of v1, p0, Landroid/widget/TextView;

    if-eqz v1, :cond_166

    .line 222
    move-object v1, p0

    check-cast v1, Landroid/widget/TextView;

    .line 223
    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/UiComponents$Style;->role:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    sget-object v3, Lio/nekohasekai/sagernet/ui/UiComponents$Role;->SECONDARY:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    if-ne v2, v3, :cond_141

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/ThemePalette;->secondary(Landroid/content/Context;)I

    move-result v0

    :goto_13c
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_158

    :cond_141
    iget-object v0, v0, Lio/nekohasekai/sagernet/ui/UiComponents$Style;->role:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    sget-object v2, Lio/nekohasekai/sagernet/ui/UiComponents$Role;->ACTION:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    if-ne v0, v2, :cond_150

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/ThemePalette;->accent(Landroid/content/Context;)I

    move-result v0

    goto :goto_13c

    :cond_150
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/ThemePalette;->textStates(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_158
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 224
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/ThemePalette;->secondary(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setHintTextColor(I)V

    :cond_166
    :goto_166
    return-void
.end method

.method public static panel(Landroid/view/View;)V
    .registers 3

    .line 55
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/UiComponents;->owns(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lio/nekohasekai/sagernet/ui/UiComponents$Role;->SURFACE:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->register(Landroid/view/View;Lio/nekohasekai/sagernet/ui/UiComponents$Role;Z)V

    return-void

    :cond_d
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/UiComponents;->paint(Landroid/view/View;)V

    return-void
.end method

.method public static plainAction(Landroid/widget/TextView;)V
    .registers 5

    .line 124
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 125
    sget-object v1, Lio/nekohasekai/sagernet/ui/UiComponents;->styles:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 126
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    .line 127
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setMinimumWidth(I)V

    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {v0, v2}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setMinimumHeight(I)V

    const/16 v2, 0x11

    .line 128
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    const/high16 v2, 0x41600000    # 14.0f

    .line 129
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v2, "sans-serif-medium"

    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v2, 0x41400000    # 12.0f

    .line 130
    invoke-static {v0, v2}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {v0, v2}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0, v3, v1, v0, v1}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 131
    sget-object v0, Lio/nekohasekai/sagernet/ui/UiComponents$Role;->ACTION:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    invoke-static {p0, v0, v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->register(Landroid/view/View;Lio/nekohasekai/sagernet/ui/UiComponents$Role;Z)V

    return-void
.end method

.method public static refresh(Landroid/view/View;)V
    .registers 3

    .line 187
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/UiComponents;->paint(Landroid/view/View;)V

    .line 188
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1a

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1a

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->refresh(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public static refreshAll()V
    .registers 4

    .line 185
    sget-object v0, Lio/nekohasekai/sagernet/ui/UiComponents;->styles:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Landroid/view/View;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/View;

    array-length v2, v0

    :goto_10
    if-ge v1, v2, :cond_1a

    aget-object v3, v0, v1

    invoke-static {v3}, Lio/nekohasekai/sagernet/ui/UiComponents;->paint(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1a
    return-void
.end method

.method private static register(Landroid/view/View;Lio/nekohasekai/sagernet/ui/UiComponents$Role;Z)V
    .registers 11

    const/4 v0, 0x0

    if-eqz p2, :cond_9

    .line 42
    new-instance p2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    goto :goto_a

    :cond_9
    move-object p2, v0

    .line 43
    :goto_a
    sget-object v1, Lio/nekohasekai/sagernet/ui/UiComponents;->styles:Ljava/util/WeakHashMap;

    new-instance v2, Lio/nekohasekai/sagernet/ui/UiComponents$Style;

    invoke-direct {v2, p1, p2}, Lio/nekohasekai/sagernet/ui/UiComponents$Style;-><init>(Lio/nekohasekai/sagernet/ui/UiComponents$Role;Landroid/graphics/drawable/GradientDrawable;)V

    invoke-virtual {v1, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_59

    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    .line 46
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 47
    sget-object v6, Lio/nekohasekai/sagernet/ui/UiComponents$Role;->ACTION:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    if-eq p1, v6, :cond_35

    sget-object v6, Lio/nekohasekai/sagernet/ui/UiComponents$Role;->CHOICE:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    if-eq p1, v6, :cond_35

    sget-object v6, Lio/nekohasekai/sagernet/ui/UiComponents$Role;->ROUTING:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    if-ne p1, v6, :cond_47

    .line 48
    :cond_35
    new-instance v6, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lio/nekohasekai/sagernet/ui/ThemePalette;->ripple(Landroid/content/Context;)I

    move-result v7

    invoke-static {v7}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-direct {v6, v7, p2, v0}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object p2, v6

    .line 47
    :cond_47
    invoke-virtual {p0, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 49
    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/nekohasekai/sagernet/ui/UiComponents$Style;

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p2, Lio/nekohasekai/sagernet/ui/UiComponents$Style;->installed:Landroid/graphics/drawable/Drawable;

    .line 50
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 52
    :cond_59
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/UiComponents;->paint(Landroid/view/View;)V

    .line 53
    sget-object p2, Lio/nekohasekai/sagernet/ui/UiComponents$Role;->SURFACE:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    if-ne p1, p2, :cond_63

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/PopupBackdrop;->bind(Landroid/view/View;)V

    :cond_63
    return-void
.end method

.method public static routingCard(Landroid/view/View;)V
    .registers 4

    .line 57
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/UiComponents;->owns(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lio/nekohasekai/sagernet/ui/UiComponents$Role;->ROUTING:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->register(Landroid/view/View;Lio/nekohasekai/sagernet/ui/UiComponents$Role;Z)V

    goto :goto_10

    :cond_d
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/UiComponents;->paint(Landroid/view/View;)V

    .line 58
    :goto_10
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_37

    .line 59
    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 60
    :goto_17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_37

    .line 61
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 62
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_34

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->owns(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_31

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->text(Landroid/widget/TextView;)V

    goto :goto_34

    :cond_31
    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->paint(Landroid/view/View;)V

    :cond_34
    :goto_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_37
    return-void
.end method

.method public static secondary(Landroid/widget/TextView;)V
    .registers 3

    .line 86
    sget-object v0, Lio/nekohasekai/sagernet/ui/UiComponents$Role;->SECONDARY:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->register(Landroid/view/View;Lio/nekohasekai/sagernet/ui/UiComponents$Role;Z)V

    return-void
.end method

.method public static surface(Landroid/content/Context;)Landroid/widget/FrameLayout;
    .registers 3

    .line 67
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 68
    sget-object p0, Lio/nekohasekai/sagernet/ui/UiComponents$Role;->SURFACE:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->register(Landroid/view/View;Lio/nekohasekai/sagernet/ui/UiComponents$Role;Z)V

    .line 69
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    return-object v0
.end method

.method public static text(Landroid/widget/TextView;)V
    .registers 3

    .line 85
    sget-object v0, Lio/nekohasekai/sagernet/ui/UiComponents$Role;->TEXT:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->register(Landroid/view/View;Lio/nekohasekai/sagernet/ui/UiComponents$Role;Z)V

    return-void
.end method

.method public static title(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/TextView;
    .registers 4

    .line 79
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41a00000    # 20.0f

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 80
    const-string p1, "sans-serif-medium"

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 81
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    const p1, -0x438a3d71    # -0.015f

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    const/16 p1, 0x10

    .line 82
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 p1, 0x42000000    # 32.0f

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 83
    sget-object p0, Lio/nekohasekai/sagernet/ui/UiComponents$Role;->TITLE:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    invoke-static {v0, p0, v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->register(Landroid/view/View;Lio/nekohasekai/sagernet/ui/UiComponents$Role;Z)V

    return-object v0
.end method
