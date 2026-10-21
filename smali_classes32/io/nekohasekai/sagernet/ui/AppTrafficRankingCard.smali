.class public final Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;
.super Landroid/widget/LinearLayout;
.source "AppTrafficRankingCard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Row;,
        Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Display;,
        Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Icon;,
        Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Bar;
    }
.end annotation


# static fields
.field private static final REFRESH_MS:J = 0x7d0L

.field private static final WORKER:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private cached:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/nekohasekai/sagernet/ui/AppTrafficRanking$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final caption:Landroid/widget/TextView;

.field private final displays:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Display;",
            ">;"
        }
    .end annotation
.end field

.field private final empty:Landroid/widget/TextView;

.field private epoch:I

.field private hasData:Z

.field private lastLength:J

.field private lastModified:J

.field private final list:Landroid/widget/LinearLayout;

.field private final loading:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final main:Landroid/os/Handler;

.field private publication:Ljava/lang/Runnable;

.field private final rows:[Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Row;

.field private final surface:Landroid/graphics/drawable/GradientDrawable;

.field private themeColor:I

.field private final tick:Ljava/lang/Runnable;

.field private final title:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$iFU6Js898K_hCjduMxGemJtKvsM(Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;)V
    .registers 1

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->request()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 39
    new-instance v0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$1;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$1;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->WORKER:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 11

    .line 57
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->main:Landroid/os/Handler;

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->loading:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 43
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->surface:Landroid/graphics/drawable/GradientDrawable;

    const v1, 0x1234567

    .line 44
    iput v1, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->themeColor:I

    const/4 v1, 0x5

    .line 47
    new-array v2, v1, [Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Row;

    iput-object v2, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->rows:[Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Row;

    .line 48
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->displays:Ljava/util/Map;

    .line 49
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v2, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->cached:Ljava/util/List;

    const-wide/16 v2, -0x1

    .line 50
    iput-wide v2, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->lastModified:J

    iput-wide v2, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->lastLength:J

    .line 54
    new-instance v2, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$4;

    invoke-direct {v2, p0}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$4;-><init>(Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;)V

    iput-object v2, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->tick:Ljava/lang/Runnable;

    const/4 v2, 0x1

    .line 57
    invoke-virtual {p0, v2}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->setOrientation(I)V

    const v3, 0x7f0a0169

    invoke-virtual {p0, v3}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->setId(I)V

    const/high16 v3, 0x41b00000    # 22.0f

    invoke-direct {p0, v3}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v0, 0x41800000    # 16.0f

    invoke-direct {p0, v0}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->dp(F)I

    move-result v4

    const/high16 v5, 0x41600000    # 14.0f

    invoke-direct {p0, v5}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->dp(F)I

    move-result v6

    invoke-direct {p0, v0}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->dp(F)I

    move-result v0

    invoke-direct {p0, v5}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->dp(F)I

    move-result v7

    invoke-virtual {p0, v4, v6, v0, v7}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->setPadding(IIII)V

    .line 58
    invoke-static {p0, v3}, Lio/nekohasekai/sagernet/ui/CardLight;->bind(Landroid/view/View;F)V

    .line 59
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 60
    const-string v3, "\u5e94\u7528\u6d41\u91cf\u6392\u884c"

    invoke-direct {p0, v3, v5, v2}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->text(Ljava/lang/String;FZ)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->title:Landroid/widget/TextView;

    const-string v4, "\u7d2f\u8ba1\u4ee3\u7406 \u00b7 TOP 5"

    const/high16 v5, 0x41200000    # 10.0f

    const/4 v6, 0x0

    invoke-direct {p0, v4, v5, v6}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->text(Ljava/lang/String;FZ)Landroid/widget/TextView;

    move-result-object v4

    iput-object v4, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->caption:Landroid/widget/TextView;

    const/16 v5, 0x15

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 61
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->headerHeight()I

    move-result v7

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->headerHeight()I

    move-result v5

    const/4 v7, -0x2

    invoke-direct {v3, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->headerHeight()I

    move-result v4

    const/4 v5, -0x1

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v3}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->list:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-direct {p0, v3}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->dp(F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0, v0, v2}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    .line 63
    :goto_d4
    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->rows:[Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Row;

    array-length v3, v2

    if-ge v0, v3, :cond_ff

    new-instance v3, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Row;

    add-int/lit8 v4, v0, 0x1

    invoke-direct {v3, p0, p1, v4}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Row;-><init>(Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;Landroid/content/Context;I)V

    aput-object v3, v2, v0

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->list:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->rows:[Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Row;

    aget-object v3, v3, v0

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->rowHeight()I

    move-result v8

    invoke-direct {v7, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->rows:[Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Row;

    aget-object v0, v2, v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Row;->setVisibility(I)V

    move v0, v4

    goto :goto_d4

    .line 64
    :cond_ff
    const-string p1, "\u6b63\u5728\u8bfb\u53d6\u5e94\u7528\u6d41\u91cf\u2026"

    const/high16 v0, 0x41500000    # 13.0f

    invoke-direct {p0, p1, v0, v6}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->text(Ljava/lang/String;FZ)Landroid/widget/TextView;

    move-result-object p1

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->empty:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->list:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->rowHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x5

    invoke-direct {v2, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->applyTheme()V

    return-void
.end method

.method static synthetic access$000(Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;Ljava/lang/String;FZ)Landroid/widget/TextView;
    .registers 4

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->text(Ljava/lang/String;FZ)Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;F)I
    .registers 2

    .line 38
    invoke-direct {p0, p1}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->dp(F)I

    move-result p0

    return p0
.end method

.method private active()Z
    .registers 2

    .line 70
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->isShown()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method private applyTheme()V
    .registers 8

    .line 134
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->title:Landroid/widget/TextView;

    if-nez v0, :cond_6

    goto/16 :goto_8f

    :cond_6
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/JJGlassToolbar;->matteTextColor(Landroid/content/Context;)I

    move-result v0

    .line 135
    iget v1, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->themeColor:I

    if-ne v1, v0, :cond_14

    goto/16 :goto_8f

    .line 136
    :cond_14
    iput v0, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->themeColor:I

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->surface:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lio/nekohasekai/sagernet/ui/ThemePalette;->control(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->surface:Landroid/graphics/drawable/GradientDrawable;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v2}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->dp(F)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lio/nekohasekai/sagernet/ui/ThemePalette;->border(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 137
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->title:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->caption:Landroid/widget/TextView;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lio/nekohasekai/sagernet/ui/ThemePalette;->secondary(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->empty:Landroid/widget/TextView;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lio/nekohasekai/sagernet/ui/ThemePalette;->secondary(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->rows:[Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Row;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_5e
    if-ge v3, v2, :cond_8f

    aget-object v4, v1, v3

    if-eqz v4, :cond_8c

    iget-object v5, v4, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Row;->name:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, v4, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Row;->amount:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, v4, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Row;->rank:Landroid/widget/TextView;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lio/nekohasekai/sagernet/ui/ThemePalette;->secondary(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, v4, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Row;->bar:Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Bar;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lio/nekohasekai/sagernet/ui/ThemePalette;->accent(Landroid/content/Context;)I

    move-result v6

    iput v6, v5, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Bar;->color:I

    iget-object v4, v4, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Row;->bar:Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Bar;

    invoke-virtual {v4}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Bar;->invalidate()V

    :cond_8c
    add-int/lit8 v3, v3, 0x1

    goto :goto_5e

    :cond_8f
    :goto_8f
    return-void
.end method

.method private cancelPublication()V
    .registers 3

    .line 75
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DrawerWorkGate;->cancel(Landroid/view/View;)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->publication:Ljava/lang/Runnable;

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->publication:Ljava/lang/Runnable;

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->loading:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_10
    return-void
.end method

.method private dp(F)I
    .registers 3

    .line 142
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method private headerHeight()I
    .registers 3

    .line 68
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x41b00000    # 22.0f

    mul-float v0, v0, v1

    invoke-direct {p0, v0}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->dp(F)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$static$0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 3

    .line 39
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "app-traffic-ranking"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method

.method private reconcile()V
    .registers 5

    .line 72
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->main:Landroid/os/Handler;

    if-eqz v0, :cond_2b

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->tick:Ljava/lang/Runnable;

    if-nez v1, :cond_9

    goto :goto_2b

    :cond_9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 73
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->active()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->applyTheme()V

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->request()V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->main:Landroid/os/Handler;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->tick:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_22
    iget v0, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->epoch:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->epoch:I

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->cancelPublication()V

    :cond_2b
    :goto_2b
    return-void
.end method

.method private render(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/nekohasekai/sagernet/ui/AppTrafficRanking$Entry;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Display;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 121
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->applyTheme()V

    .line 123
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->caption:Landroid/widget/TextView;

    if-eqz p3, :cond_16

    .line 122
    const-string p1, "\u7d2f\u8ba1\u4ee3\u7406 \u00b7 \u672a\u66f4\u65b0"

    invoke-static {v0, p1}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-boolean p1, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->hasData:Z

    if-nez p1, :cond_d0

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->empty:Landroid/widget/TextView;

    invoke-static {p1, p3}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void

    .line 123
    :cond_16
    const-string p3, "\u7d2f\u8ba1\u4ee3\u7406 \u00b7 TOP 5"

    invoke-static {v0, p3}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p3

    xor-int/lit8 v0, p3, 0x1

    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->hasData:Z

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->empty:Landroid/widget/TextView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez p3, :cond_2d

    const/16 p3, 0x8

    goto :goto_2e

    :cond_2d
    const/4 p3, 0x0

    :goto_2e
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p3, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->empty:Landroid/widget/TextView;

    const-string v0, "\u6682\u65e0\u5e94\u7528\u6d41\u91cf\u8bb0\u5f55\n\u8fde\u63a5\u4ee3\u7406\u540e\u81ea\u52a8\u7edf\u8ba1"

    invoke-static {p3, v0}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 124
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_41

    const-wide/16 v3, 0x1

    goto :goto_49

    :cond_41
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/nekohasekai/sagernet/ui/AppTrafficRanking$Entry;

    iget-wide v3, p3, Lio/nekohasekai/sagernet/ui/AppTrafficRanking$Entry;->total:J

    :goto_49
    const/4 p3, 0x0

    .line 125
    :goto_4a
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->rows:[Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Row;

    array-length v5, v0

    if-ge p3, v5, :cond_d0

    .line 126
    aget-object v0, v0, p3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-lt p3, v5, :cond_5b

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Row;->setVisibility(I)V

    goto :goto_cc

    .line 127
    :cond_5b
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/nekohasekai/sagernet/ui/AppTrafficRanking$Entry;

    iget-object v6, v5, Lio/nekohasekai/sagernet/ui/AppTrafficRanking$Entry;->packageName:Ljava/lang/String;

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Display;

    if-nez v6, :cond_6e

    iget-object v7, v5, Lio/nekohasekai/sagernet/ui/AppTrafficRanking$Entry;->packageName:Ljava/lang/String;

    goto :goto_70

    :cond_6e
    iget-object v7, v6, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Display;->label:Ljava/lang/String;

    .line 128
    :goto_70
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-wide v9, v5, Lio/nekohasekai/sagernet/ui/AppTrafficRanking$Entry;->total:J

    invoke-static {v8, v9, v10}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    .line 129
    iget-object v9, v0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Row;->name:Landroid/widget/TextView;

    invoke-static {v9, v7}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v9, v0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Row;->amount:Landroid/widget/TextView;

    invoke-static {v9, v8}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v9, v0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Row;->icon:Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Icon;

    if-nez v6, :cond_8a

    const/4 v6, 0x0

    goto :goto_8c

    :cond_8a
    iget-object v6, v6, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Display;->icon:Landroid/graphics/drawable/Drawable;

    :goto_8c
    invoke-virtual {v9, v6}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Icon;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-wide v5, v5, Lio/nekohasekai/sagernet/ui/AppTrafficRanking$Entry;->total:J

    long-to-double v5, v5

    long-to-double v9, v3

    div-double/2addr v5, v9

    double-to-float v5, v5

    iget-object v6, v0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Row;->bar:Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Bar;

    iget v6, v6, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Bar;->ratio:F

    cmpl-float v6, v6, v5

    if-eqz v6, :cond_a6

    iget-object v6, v0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Row;->bar:Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Bar;

    iput v5, v6, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Bar;->ratio:F

    iget-object v5, v0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Row;->bar:Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Bar;

    invoke-virtual {v5}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Bar;->invalidate()V

    .line 130
    :cond_a6
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u7b2c"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v6, p3, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "\u540d\uff0c"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\uff0c\u7d2f\u8ba1\u4ee3\u7406\u6d41\u91cf"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Row;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Row;->setVisibility(I)V

    :goto_cc
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_4a

    :cond_d0
    return-void
.end method

.method private request()V
    .registers 5

    .line 81
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->active()Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->loading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_39

    .line 82
    :cond_f
    new-instance v0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$2;

    invoke-direct {v0, p0}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$2;-><init>(Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;)V

    invoke-static {p0, v0}, Lio/nekohasekai/sagernet/ui/DrawerWorkGate;->defer(Landroid/view/View;Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->loading:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_25

    goto :goto_39

    .line 83
    :cond_25
    iget v0, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->epoch:I

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 84
    sget-object v2, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->WORKER:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$3;

    invoke-direct {v3, p0, v1, v0}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$3;-><init>(Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;Landroid/content/Context;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_39
    :goto_39
    return-void
.end method

.method private rowHeight()I
    .registers 3

    .line 69
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x42000000    # 32.0f

    mul-float v0, v0, v1

    invoke-direct {p0, v0}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->dp(F)I

    move-result v0

    return v0
.end method

.method private static setText(Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 3

    .line 140
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_d
    return-void
.end method

.method private text(Ljava/lang/String;FZ)Landroid/widget/TextView;
    .registers 6

    .line 141
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 p1, 0x10

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    if-eqz p3, :cond_2c

    const-string p2, "sans-serif-medium"

    invoke-static {p2, p1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_2c
    return-object v0
.end method


# virtual methods
.method synthetic lambda$new$1$io-nekohasekai-sagernet-ui-AppTrafficRankingCard()V
    .registers 5

    .line 54
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->active()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->request()V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->main:Landroid/os/Handler;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->tick:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method synthetic lambda$request$2$io-nekohasekai-sagernet-ui-AppTrafficRankingCard(ILjava/util/List;Ljava/util/Map;Ljava/lang/String;)V
    .registers 8

    .line 113
    iget v0, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->epoch:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-ne p1, v0, :cond_18

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->active()Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_18

    .line 114
    :cond_d
    iput-object v2, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->publication:Ljava/lang/Runnable;

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->loading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0, p2, p3, p4}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->render(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V

    return-void

    .line 113
    :cond_18
    :goto_18
    iput-object v2, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->publication:Ljava/lang/Runnable;

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->loading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method synthetic lambda$request$3$io-nekohasekai-sagernet-ui-AppTrafficRankingCard(ILjava/util/List;Ljava/util/Map;Ljava/lang/String;)V
    .registers 12

    .line 111
    iget v0, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->epoch:I

    if-ne p1, v0, :cond_1b

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->active()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_1b

    .line 112
    :cond_b
    new-instance v1, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$0;

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$0;-><init>(Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;ILjava/util/List;Ljava/util/Map;Ljava/lang/String;)V

    iput-object v1, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->publication:Ljava/lang/Runnable;

    .line 116
    invoke-static {p0, v1}, Lio/nekohasekai/sagernet/ui/DrawerWorkGate;->publish(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void

    .line 111
    :cond_1b
    :goto_1b
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->loading:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method synthetic lambda$request$4$io-nekohasekai-sagernet-ui-AppTrafficRankingCard(Landroid/content/Context;I)V
    .registers 14

    .line 85
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->cached:Ljava/util/List;

    .line 87
    :try_start_2
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "proxy-app-traffic.json"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 89
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_25

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->lastModified:J

    iput-wide v2, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->lastLength:J

    goto :goto_5e

    .line 90
    :cond_25
    iget-wide v8, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->lastModified:J

    cmp-long v6, v2, v8

    if-nez v6, :cond_31

    iget-wide v8, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->lastLength:J

    cmp-long v6, v4, v8

    if-eqz v6, :cond_5e

    .line 91
    :cond_31
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_36} :catch_d9

    :try_start_36
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_3b
    .catchall {:try_start_36 .. :try_end_3b} :catchall_ce

    const/16 v0, 0x2000

    .line 92
    :try_start_3d
    new-array v0, v0, [B

    :goto_3f
    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_4a

    invoke-virtual {v8, v0, v7, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_3f

    .line 93
    :cond_4a
    const-string v0, "UTF-8"

    invoke-virtual {v8, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/AppTrafficRanking;->topFive(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1
    :try_end_54
    .catchall {:try_start_3d .. :try_end_54} :catchall_c3

    .line 94
    :try_start_54
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_ce

    :try_start_57
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 95
    iput-wide v2, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->lastModified:J

    iput-wide v4, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->lastLength:J

    .line 97
    :cond_5e
    :goto_5e
    iput-object v1, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->cached:Ljava/util/List;

    .line 98
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->displays:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v2, 0x20

    if-le v0, v2, :cond_6f

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->displays:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 99
    :cond_6f
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_73
    :goto_73
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_db

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/nekohasekai/sagernet/ui/AppTrafficRanking$Entry;

    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->displays:Ljava/util/Map;

    iget-object v5, v2, Lio/nekohasekai/sagernet/ui/AppTrafficRanking$Entry;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_73

    .line 100
    iget-object v4, v2, Lio/nekohasekai/sagernet/ui/AppTrafficRanking$Entry;->packageName:Ljava/lang/String;
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_8c} :catch_d9

    .line 101
    :try_start_8c
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, v2, Lio/nekohasekai/sagernet/ui/AppTrafficRanking$Entry;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_aa} :catch_aa

    .line 102
    :catch_aa
    :try_start_aa
    const-string v5, "unknown"

    iget-object v6, v2, Lio/nekohasekai/sagernet/ui/AppTrafficRanking$Entry;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b6

    const-string v4, "\u672a\u8bc6\u522b\u5e94\u7528"

    .line 103
    :cond_b6
    iget-object v5, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->displays:Ljava/util/Map;

    iget-object v2, v2, Lio/nekohasekai/sagernet/ui/AppTrafficRanking$Entry;->packageName:Ljava/lang/String;

    new-instance v6, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Display;

    invoke-direct {v6, v4, v3}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Display;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v5, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_c2} :catch_d9

    goto :goto_73

    :catchall_c3
    move-exception v0

    move-object p1, v0

    .line 91
    :try_start_c5
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c8
    .catchall {:try_start_c5 .. :try_end_c8} :catchall_c9

    goto :goto_cd

    :catchall_c9
    move-exception v0

    :try_start_ca
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_cd
    throw p1
    :try_end_ce
    .catchall {:try_start_ca .. :try_end_ce} :catchall_ce

    :catchall_ce
    move-exception v0

    move-object p1, v0

    :try_start_d0
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_d3
    .catchall {:try_start_d0 .. :try_end_d3} :catchall_d4

    goto :goto_d8

    :catchall_d4
    move-exception v0

    :try_start_d5
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_d8
    throw p1
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_d5 .. :try_end_d9} :catch_d9

    .line 105
    :catch_d9
    const-string v3, "\u6682\u65f6\u65e0\u6cd5\u8bfb\u53d6\u6d41\u91cf\u7edf\u8ba1"

    :cond_db
    move-object v7, v1

    move-object v9, v3

    .line 109
    new-instance v8, Ljava/util/HashMap;

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->displays:Ljava/util/Map;

    invoke-direct {v8, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 110
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->main:Landroid/os/Handler;

    new-instance v4, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$5;

    move-object v5, p0

    move v6, p2

    invoke-direct/range {v4 .. v9}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$5;-><init>(Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;ILjava/util/List;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .line 76
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->reconcile()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .line 77
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->main:Landroid/os/Handler;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget v0, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->epoch:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->epoch:I

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->cancelPublication()V

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 3

    .line 78
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onVisibilityChanged(Landroid/view/View;I)V

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->reconcile()V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 2

    .line 79
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowVisibilityChanged(I)V

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->reconcile()V

    return-void
.end method

.method public preferredHeight()I
    .registers 3

    const/high16 v0, 0x42080000    # 34.0f

    .line 67
    invoke-direct {p0, v0}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->dp(F)I

    move-result v0

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->headerHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->rowHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    return v0
.end method
