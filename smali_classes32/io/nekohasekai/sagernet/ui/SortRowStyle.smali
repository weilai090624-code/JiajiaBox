.class public final Lio/nekohasekai/sagernet/ui/SortRowStyle;
.super Ljava/lang/Object;
.source "SortRowStyle.java"


# static fields
.field private static final TAG_FILL:I = 0x7f0a0f7c


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 11
    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/SortRowStyle;->build(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static addBorder(Landroid/view/View;)V
    .registers 12

    .line 65
    if-nez p0, :cond_3

    return-void

    .line 66
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 67
    if-nez v0, :cond_a

    return-void

    .line 68
    :cond_a
    instance-of v1, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v1, :cond_f

    return-void

    .line 69
    :cond_f
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 70
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 71
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 72
    const/high16 v3, 0x41880000    # 17.0f

    mul-float v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 74
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 75
    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/ThemePalette;->border(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 76
    int-to-float v1, v2

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 78
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    aput-object v3, v2, v5

    aput-object v0, v2, v4

    invoke-direct {v1, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 79
    const/4 v6, 0x1

    move-object v5, v1

    move v7, v10

    move v8, v10

    move v9, v10

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 80
    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 81
    nop

    .line 82
    new-instance v0, Lio/nekohasekai/sagernet/ui/SortRowStyle$4;

    invoke-direct {v0, p0, v1}, Lio/nekohasekai/sagernet/ui/SortRowStyle$4;-><init>(Landroid/view/View;Landroid/graphics/drawable/LayerDrawable;)V

    .line 88
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 89
    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 90
    return-void
.end method

.method public static apply(Landroid/view/View;)V
    .registers 4

    .line 15
    if-nez p0, :cond_3

    return-void

    .line 16
    :cond_3
    new-instance v0, Lio/nekohasekai/sagernet/ui/SortRowStyle$1;

    invoke-direct {v0, p0}, Lio/nekohasekai/sagernet/ui/SortRowStyle$1;-><init>(Landroid/view/View;)V

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lio/nekohasekai/sagernet/ui/SortRowStyle$2;

    invoke-direct {v2, p0, v0}, Lio/nekohasekai/sagernet/ui/SortRowStyle$2;-><init>(Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    new-instance v1, Lio/nekohasekai/sagernet/ui/SortRowStyle$3;

    invoke-direct {v1, v0}, Lio/nekohasekai/sagernet/ui/SortRowStyle$3;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 42
    return-void
.end method

.method private static build(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 11

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 46
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/ThemePalette;->border(Landroid/content/Context;)I

    move-result p0

    .line 47
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 48
    const/high16 v1, 0x41880000    # 17.0f

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 50
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 51
    invoke-virtual {v1, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 52
    int-to-float p0, v0

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 54
    new-instance p0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 55
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 56
    sub-int/2addr v0, v8

    const/4 p1, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 58
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v3, p1

    aput-object p0, v3, v2

    invoke-direct {v0, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 59
    const/4 v4, 0x1

    move-object v3, v0

    move v5, v8

    move v6, v8

    move v7, v8

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 60
    return-object v0
.end method
