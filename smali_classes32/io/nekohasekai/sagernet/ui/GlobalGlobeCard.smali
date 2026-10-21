.class public final Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;
.super Landroid/widget/LinearLayout;
.source "GlobalGlobeCard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$CountryScroll;,
        Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$CountryRow;
    }
.end annotation


# static fields
.field private static final WORKER:Ljava/util/concurrent/ExecutorService;

.field private static cachedHtml:Ljava/lang/String;


# instance fields
.field private autoRotate:Z

.field private final body:Landroid/widget/FrameLayout;

.field private final caption:Landroid/widget/TextView;

.field private final changed:Ljava/lang/Runnable;

.field private countries:Lorg/json/JSONArray;

.field private final countryRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$CountryRow;",
            ">;"
        }
    .end annotation
.end field

.field private final countryScroll:Landroid/widget/ScrollView;

.field private final emptyCountries:Landroid/widget/TextView;

.field private epoch:I

.field private final exitLegend:Landroid/widget/LinearLayout;

.field private final exitLocation:Landroid/widget/TextView;

.field private final exitRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$CountryRow;",
            ">;"
        }
    .end annotation
.end field

.field private final footer:Landroid/widget/TextView;

.field private html:Ljava/lang/String;

.field private final laidOut:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private lastDark:Z

.field private lastState:Ljava/lang/String;

.field private final legend:Landroid/widget/LinearLayout;

.field private links:Lorg/json/JSONArray;

.field private live:Z

.field private loaded:Z

.field private loading:Z

.field private final main:Landroid/os/Handler;

.field private nodes:Lorg/json/JSONArray;

.field private observer:Landroid/view/ViewTreeObserver;

.field private final scrolled:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private final selfLocation:Landroid/widget/TextView;

.field private themeApplied:Z

.field private final tick:Ljava/lang/Runnable;

.field private final visible:Landroid/graphics/Rect;

.field private web:Landroid/webkit/WebView;

.field private webFailed:Z


# direct methods
.method public static synthetic $r8$lambda$IcB5MMKfoWyH5pGfh1xlec0ixmY(Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;)V
    .registers 1

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->reconcile()V

    return-void
.end method

.method public static synthetic $r8$lambda$Tc-dScSzcn4_tYF_jZn5zyuJN9U(Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;)V
    .registers 1

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->reconcile()V

    return-void
.end method

.method public static synthetic $r8$lambda$q_1s78ecAuBRojvs5Rf_amZvuQQ(Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;)V
    .registers 1

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->reconcile()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 55
    new-instance v0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$0;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$0;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->WORKER:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 15

    .line 77
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->main:Landroid/os/Handler;

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->visible:Landroid/graphics/Rect;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->countryRows:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->exitRows:Ljava/util/List;

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->autoRotate:Z

    .line 70
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iput-object v1, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->countries:Lorg/json/JSONArray;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iput-object v1, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->nodes:Lorg/json/JSONArray;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iput-object v1, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->links:Lorg/json/JSONArray;

    .line 71
    new-instance v1, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$3;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$3;-><init>(Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;)V

    iput-object v1, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->changed:Ljava/lang/Runnable;

    .line 72
    new-instance v1, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$4;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$4;-><init>(Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;)V

    iput-object v1, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->scrolled:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 73
    new-instance v1, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$5;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$5;-><init>(Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;)V

    iput-object v1, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->laidOut:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 74
    new-instance v1, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$6;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$6;-><init>(Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;)V

    iput-object v1, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->tick:Ljava/lang/Runnable;

    .line 77
    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->setOrientation(I)V

    const/high16 v1, 0x41800000    # 16.0f

    invoke-direct {p0, v1}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->dp(F)I

    move-result v2

    const/high16 v3, 0x41600000    # 14.0f

    invoke-direct {p0, v3}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->dp(F)I

    move-result v4

    invoke-direct {p0, v1}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->dp(F)I

    move-result v1

    invoke-direct {p0, v3}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->dp(F)I

    move-result v5

    invoke-virtual {p0, v2, v4, v1, v5}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->setPadding(IIII)V

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/UiComponents;->routingCard(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->setClipToOutline(Z)V

    .line 78
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 79
    const-string v4, "\u5168\u7403\u8fde\u63a5"

    const/16 v5, 0xe

    invoke-direct {p0, v4, v5, v0}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v4

    const-string v5, "\u6682\u505c\u81ea\u8f6c \u00b7 \u53cc\u6307\u7f29\u653e"

    const/16 v6, 0xa

    const/4 v7, 0x0

    invoke-direct {p0, v5, v6, v7}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v5

    iput-object v5, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->caption:Landroid/widget/TextView;

    invoke-static {v5}, Lio/nekohasekai/sagernet/ui/UiComponents;->secondary(Landroid/widget/TextView;)V

    .line 80
    const-string v8, "\u5207\u6362\u5730\u7403\u81ea\u8f6c\uff0c\u53cc\u51fb\u5730\u7403\u53ef\u91cd\u7f6e\u89c6\u89d2"

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v8, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$7;

    invoke-direct {v8, p0}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$7;-><init>(Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;)V

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x41b00000    # 22.0f

    invoke-direct {p0, v9}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->dp(F)I

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v8, v7, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v9}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->dp(F)I

    move-result v8

    const/4 v10, -0x2

    invoke-direct {v4, v10, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v9}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->dp(F)I

    move-result v5

    const/4 v8, -0x1

    invoke-direct {v4, v8, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v4}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v8, v7, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-direct {p0, v5}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->dp(F)I

    move-result v9

    iput v9, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0, v1, v4}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->body:Landroid/widget/FrameLayout;

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v7, v8, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v4, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->legend:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v9, 0x30

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 85
    new-instance v9, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$CountryScroll;

    invoke-direct {v9, p1}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$CountryScroll;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->countryScroll:Landroid/widget/ScrollView;

    invoke-virtual {v9, v7}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {v9, v0}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    invoke-virtual {v9, v0}, Landroid/widget/ScrollView;->setNestedScrollingEnabled(Z)V

    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v11, v8, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v4, v11}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v12, 0x42d00000    # 104.0f

    invoke-direct {p0, v12}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->dp(F)I

    move-result v12

    invoke-direct {v11, v12, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-direct {p0, v5}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->dp(F)I

    move-result v5

    invoke-virtual {v11, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v1, v9, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    const-string v1, "\u672c\u673a\uff1a\u5b9a\u4f4d\u4e2d"

    invoke-direct {p0, v1, v6, v7}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->selfLocation:Landroid/widget/TextView;

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->secondary(Landroid/widget/TextView;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x41a80000    # 21.0f

    invoke-direct {p0, v9}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->dp(F)I

    move-result v11

    invoke-direct {v5, v8, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    const-string v5, "\u51fa\u53e3\uff1a\u7b49\u5f85\u8fde\u63a5"

    invoke-direct {p0, v5, v6, v7}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v5

    iput-object v5, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->exitLocation:Landroid/widget/TextView;

    invoke-static {v5}, Lio/nekohasekai/sagernet/ui/UiComponents;->secondary(Landroid/widget/TextView;)V

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v9}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->dp(F)I

    move-result v9

    invoke-direct {v11, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->exitLegend:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v8, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v9, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 91
    new-instance p1, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$8;

    invoke-direct {p1, p0}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$8;-><init>(Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    const-string p1, "\u8bf7\u6c42\u56fd\u5bb6\uff0f\u5730\u533a"

    const/16 v0, 0x9

    invoke-direct {p0, p1, v0, v7}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object p1

    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/UiComponents;->secondary(Landroid/widget/TextView;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-direct {p0, v5}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->dp(F)I

    move-result v5

    invoke-direct {v1, v8, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    const-string p1, "\u8fde\u63a5\u540e\u663e\u793a\n\u56fd\u5bb6\uff0f\u5730\u533a"

    invoke-direct {p0, p1, v6, v7}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object p1

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->emptyCountries:Landroid/widget/TextView;

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/16 v1, 0x11

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/UiComponents;->secondary(Landroid/widget/TextView;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x42a00000    # 80.0f

    invoke-direct {p0, v5}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->dp(F)I

    move-result v5

    invoke-direct {v1, v8, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    const-string p1, "\u5f53\u524d 0"

    invoke-direct {p0, p1, v0, v7}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object p1

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->footer:Landroid/widget/TextView;

    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/UiComponents;->secondary(Landroid/widget/TextView;)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v3}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->dp(F)I

    move-result v1

    invoke-direct {v0, v8, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$000(Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;)Landroid/webkit/WebView;
    .registers 1

    .line 54
    iget-object p0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->web:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$100(Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;)Z
    .registers 1

    .line 54
    iget-boolean p0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->loaded:Z

    return p0
.end method

.method static synthetic access$102(Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;Z)Z
    .registers 2

    .line 54
    iput-boolean p1, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->loaded:Z

    return p1
.end method

.method static synthetic access$202(Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 54
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->lastState:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;)V
    .registers 1

    .line 54
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->sendState()V

    return-void
.end method

.method static synthetic access$400(Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;)Z
    .registers 1

    .line 54
    iget-boolean p0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->live:Z

    return p0
.end method

.method static synthetic access$500(Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;Ljava/lang/String;IZ)Landroid/widget/TextView;
    .registers 4

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;F)I
    .registers 2

    .line 54
    invoke-direct {p0, p1}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->dp(F)I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 2

    .line 54
    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method private static asset(Landroid/content/Context;Ljava/lang/String;I)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    :try_start_8
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_43

    const/16 v0, 0x2000

    .line 124
    :try_start_f
    new-array v0, v0, [B

    :goto_11
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2c

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    add-int/2addr v2, v1

    if-gt v2, p2, :cond_24

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_11

    :cond_24
    new-instance p2, Ljava/io/IOException;

    const-string v0, "Globe asset too large"

    invoke-direct {p2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2c
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2
    :try_end_30
    .catchall {:try_start_f .. :try_end_30} :catchall_39

    .line 125
    :try_start_30
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_43

    if-eqz p0, :cond_38

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_38
    return-object p2

    :catchall_39
    move-exception p2

    .line 123
    :try_start_3a
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_3e

    goto :goto_42

    :catchall_3e
    move-exception p1

    :try_start_3f
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_42
    throw p2
    :try_end_43
    .catchall {:try_start_3f .. :try_end_43} :catchall_43

    :catchall_43
    move-exception p1

    if-eqz p0, :cond_4e

    :try_start_46
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_4a

    goto :goto_4e

    :catchall_4a
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4e
    :goto_4e
    throw p1
.end method

.method private available()Z
    .registers 3

    .line 102
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->isShown()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_3a

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->body:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    if-lez v0, :cond_3a

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->body:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->visible:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->visible:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-direct {p0, v1}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->dp(F)I

    move-result v1

    if-le v0, v1, :cond_3a

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DrawerWorkGate;->isMoving(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3a

    const/4 v0, 0x1

    return v0

    :cond_3a
    const/4 v0, 0x0

    return v0
.end method

.method private createWeb()V
    .registers 13

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 190
    :try_start_3
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->web:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->web:Landroid/webkit/WebView;

    const-string v4, "\u5199\u5b9e\u663c\u591c\u5730\u7403\u4e0e\u5927\u6c14\u8f89\u5149\uff1a\u62d6\u52a8\u65cb\u8f6c\u3001\u53cc\u6307\u7f29\u653e\uff0c\u70b9\u51fb\u53f3\u4fa7\u5df2\u8fde\u63a5\u56fd\u5bb6\u6216\u5730\u533a\u5207\u6362\u89c6\u89d2"

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->web:Landroid/webkit/WebView;

    invoke-static {v0, v2}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->exclusiveTouch(Landroid/view/View;Z)V

    .line 191
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->web:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBlockNetworkLoads(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 192
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->web:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->web:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->web:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setOverScrollMode(I)V

    .line 193
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->web:Landroid/webkit/WebView;

    new-instance v4, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$1;

    invoke-direct {v4, p0}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$1;-><init>(Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 202
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->web:Landroid/webkit/WebView;

    new-instance v4, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$2;

    invoke-direct {v4, p0}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$2;-><init>(Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 211
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->body:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->web:Landroid/webkit/WebView;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->web:Landroid/webkit/WebView;

    const-string v7, "https://globe.jiajiabox.invalid/"

    iget-object v8, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->html:Ljava/lang/String;

    const-string v9, "text/html"

    const-string v10, "UTF-8"

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_79
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_79} :catch_7c
    .catch Ljava/lang/LinkageError; {:try_start_3 .. :try_end_79} :catch_7a

    return-void

    :catch_7a
    move-exception v0

    goto :goto_7d

    :catch_7c
    move-exception v0

    .line 213
    :goto_7d
    iput-boolean v2, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->webFailed:Z

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->web:Landroid/webkit/WebView;

    if-eqz v2, :cond_95

    invoke-static {v2, v3}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->exclusiveTouch(Landroid/view/View;Z)V

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->body:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->web:Landroid/webkit/WebView;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->web:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->destroy()V

    const/4 v2, 0x0

    iput-object v2, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->web:Landroid/webkit/WebView;

    :cond_95
    const-string v2, "\u5f53\u524d\u7cfb\u7edf\u65e0\u6cd5\u52a0\u8f7d 3D \u5730\u7403"

    const/16 v4, 0xb

    invoke-direct {p0, v2, v4, v3}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v2}, Lio/nekohasekai/sagernet/ui/UiComponents;->secondary(Landroid/widget/TextView;)V

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->body:Landroid/widget/FrameLayout;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "GlobalGlobeCard"

    const-string v2, "WebView unavailable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private dp(F)I
    .registers 3

    .line 97
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result p1

    return p1
.end method

.method static synthetic lambda$request$4(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 155
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    if-eqz p0, :cond_1b

    return p0

    :cond_1b
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$static$0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 3

    .line 55
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "globe-regions"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method

.method private static networkKey(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    .line 179
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 181
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v2, :cond_36

    aget-object v4, v1, v3

    .line 182
    invoke-virtual {p0, v4}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v5

    if-eqz v5, :cond_33

    const/16 v6, 0xc

    .line 183
    invoke-virtual {v5, v6}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v6

    if-eqz v6, :cond_33

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v5

    if-nez v5, :cond_33

    invoke-virtual {v4}, Landroid/net/Network;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 185
    :cond_36
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3d} :catch_3e

    return-object p0

    .line 186
    :catch_3e
    const-string p0, "network"

    return-object p0
.end method

.method private reconcile()V
    .registers 5

    .line 104
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->main:Landroid/os/Handler;

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->body:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->caption:Landroid/widget/TextView;

    if-nez v0, :cond_d

    goto :goto_4d

    .line 105
    :cond_d
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->available()Z

    move-result v0

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->refreshAppearance()V

    iget-boolean v1, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->live:Z

    if-ne v0, v1, :cond_19

    goto :goto_4d

    .line 106
    :cond_19
    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->live:Z

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->main:Landroid/os/Handler;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 107
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->live:Z

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->web:Landroid/webkit/WebView;

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    :cond_2d
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->sendState()V

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->request()V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->main:Landroid/os/Handler;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->tick:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 108
    :cond_3d
    iget v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->epoch:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->epoch:I

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->sendState()V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->web:Landroid/webkit/WebView;

    if-eqz v0, :cond_4d

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    :cond_4d
    :goto_4d
    return-void
.end method

.method private renderCountries()V
    .registers 10

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_7
    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->nodes:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2b

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->nodes:Lorg/json/JSONArray;

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_28

    const-string v4, "role"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "exit"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 223
    :cond_2b
    :goto_2b
    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->exitRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v2, v3, :cond_4b

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->exitLegend:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->exitRows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-interface {v3, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_2b

    :cond_4b
    const/4 v2, 0x0

    .line 224
    :goto_4c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/high16 v5, 0x41b00000    # 22.0f

    const/4 v6, -0x1

    if-ge v2, v3, :cond_89

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->exitRows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_75

    new-instance v3, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$CountryRow;

    invoke-direct {v3, p0, v4}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$CountryRow;-><init>(Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;Z)V

    iget-object v7, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->exitRows:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->exitLegend:Landroid/widget/LinearLayout;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v5}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->dp(F)I

    move-result v5

    invoke-direct {v8, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_75
    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->exitRows:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$CountryRow;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    invoke-virtual {v3, v5}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$CountryRow;->bind(Lorg/json/JSONObject;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4c

    .line 225
    :cond_89
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->emptyCountries:Landroid/widget/TextView;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->countries:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_95

    const/4 v2, 0x0

    goto :goto_97

    :cond_95
    const/16 v2, 0x8

    :goto_97
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 226
    :goto_9a
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->countryRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->countries:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-le v0, v2, :cond_bb

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->countryRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$CountryRow;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->legend:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_9a

    .line 227
    :cond_bb
    :goto_bb
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->countries:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_109

    .line 228
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->countryRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v1, v0, :cond_f5

    new-instance v0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$CountryRow;

    invoke-direct {v0, p0}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$CountryRow;-><init>(Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;)V

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->countryRows:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->legend:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->fontScale:F

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v7, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    mul-float v4, v4, v5

    invoke-direct {p0, v4}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->dp(F)I

    move-result v4

    invoke-direct {v3, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    :cond_f5
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->countryRows:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$CountryRow;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->countries:Lorg/json/JSONArray;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$CountryRow;->bind(Lorg/json/JSONObject;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_bb

    :cond_109
    return-void
.end method

.method private request()V
    .registers 5

    .line 128
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->live:Z

    if-eqz v0, :cond_29

    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->loading:Z

    if-eqz v0, :cond_9

    goto :goto_29

    :cond_9
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->changed:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Lio/nekohasekai/sagernet/ui/DrawerWorkGate;->defer(Landroid/view/View;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_29

    :cond_12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->loading:Z

    .line 129
    iget v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->epoch:I

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 130
    sget-object v2, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->WORKER:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$12;

    invoke-direct {v3, p0, v1, v0}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$12;-><init>(Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;Landroid/content/Context;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_29
    :goto_29
    return-void
.end method

.method private sendState()V
    .registers 5

    const-string v0, "window.Globe&&Globe.setState("

    .line 217
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->web:Landroid/webkit/WebView;

    if-eqz v1, :cond_6e

    iget-boolean v1, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->loaded:Z

    if-nez v1, :cond_b

    goto :goto_6e

    .line 218
    :cond_b
    :try_start_b
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "dark"

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lio/nekohasekai/sagernet/ui/ThemePalette;->dark(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "paused"

    iget-boolean v3, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->live:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "autoRotate"

    iget-boolean v3, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->autoRotate:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "countries"

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->countries:Lorg/json/JSONArray;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "nodes"

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->nodes:Lorg/json/JSONArray;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "links"

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->links:Lorg/json/JSONArray;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->lastState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    goto :goto_6e

    :cond_55
    iput-object v1, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->lastState:Ljava/lang/String;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->web:Landroid/webkit/WebView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_6e
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_6e} :catch_6e

    :catch_6e
    :cond_6e
    :goto_6e
    return-void
.end method

.method private static setText(Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 3

    .line 220
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_d
    return-void
.end method

.method private text(Ljava/lang/String;IZ)Landroid/widget/TextView;
    .registers 6

    .line 96
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-float p1, p2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    if-eqz p3, :cond_23

    const-string p2, "sans-serif-medium"

    invoke-static {p2, p1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_23
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/UiComponents;->text(Landroid/widget/TextView;)V

    return-object v0
.end method


# virtual methods
.method synthetic lambda$new$1$io-nekohasekai-sagernet-ui-GlobalGlobeCard()V
    .registers 5

    .line 74
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->live:Z

    if-nez v0, :cond_5

    goto :goto_18

    :cond_5
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->reconcile()V

    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->live:Z

    if-eqz v0, :cond_18

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->request()V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->main:Landroid/os/Handler;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->tick:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_18
    :goto_18
    return-void
.end method

.method synthetic lambda$new$2$io-nekohasekai-sagernet-ui-GlobalGlobeCard(Landroid/view/View;)V
    .registers 3

    .line 80
    iget-boolean p1, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->autoRotate:Z

    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->autoRotate:Z

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->caption:Landroid/widget/TextView;

    if-nez p1, :cond_d

    const-string p1, "\u6682\u505c\u81ea\u8f6c \u00b7 \u53cc\u6307\u7f29\u653e"

    goto :goto_f

    :cond_d
    const-string p1, "\u6062\u590d\u81ea\u8f6c \u00b7 \u53cc\u6307\u7f29\u653e"

    :goto_f
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->sendState()V

    return-void
.end method

.method synthetic lambda$new$3$io-nekohasekai-sagernet-ui-GlobalGlobeCard(Landroid/view/View;)V
    .registers 4

    .line 91
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->web:Landroid/webkit/WebView;

    if-eqz p1, :cond_12

    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->loaded:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->live:Z

    if-eqz v0, :cond_12

    const-string v0, "window.Globe&&Globe.focusNode(\'self\')"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_12
    return-void
.end method

.method synthetic lambda$request$5$io-nekohasekai-sagernet-ui-GlobalGlobeCard(ILorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 164
    iget v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->epoch:I

    if-ne p1, v0, :cond_122

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->available()Z

    move-result p1

    if-nez p1, :cond_c

    goto/16 :goto_122

    .line 165
    :cond_c
    const-string p1, "countries"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->countries:Lorg/json/JSONArray;

    if-nez p1, :cond_1d

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->countries:Lorg/json/JSONArray;

    .line 166
    :cond_1d
    const-string p1, "nodes"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->nodes:Lorg/json/JSONArray;

    if-nez p1, :cond_2e

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->nodes:Lorg/json/JSONArray;

    :cond_2e
    const-string p1, "links"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->links:Lorg/json/JSONArray;

    if-nez p1, :cond_3f

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->links:Lorg/json/JSONArray;

    :cond_3f
    iput-object p3, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->html:Ljava/lang/String;

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->web:Landroid/webkit/WebView;

    if-nez p1, :cond_4e

    iget-boolean p1, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->webFailed:Z

    if-nez p1, :cond_4e

    if-eqz p3, :cond_4e

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->createWeb()V

    :cond_4e
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->renderCountries()V

    .line 167
    const-string p1, "selfCountry"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 168
    iget-object p3, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->selfLocation:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u672c\u673a\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const-string v2, "\u672a\u5b9a\u4f4d"

    if-eqz v1, :cond_75

    const-string v1, "selfPending"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_73

    const-string v1, "\u67e5\u8be2\u4e2d"

    goto :goto_7d

    :cond_73
    move-object v1, v2

    goto :goto_7d

    :cond_75
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {p1, v1}, Lio/nekohasekai/sagernet/ui/GlobeCountries;->name(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    :goto_7d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 169
    iget-object p3, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->selfLocation:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u672c\u673a\u516c\u7f51\u4f4d\u7f6e\uff0cIP.SB \u5728\u7ebf\u67e5\u8be2\uff0c"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_97

    goto :goto_9f

    :cond_97
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {p1, v1}, Lio/nekohasekai/sagernet/ui/GlobeCountries;->name(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    :goto_9f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 170
    const-string p1, "total"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p3

    const-string v0, "pending"

    if-lez p3, :cond_cb

    iget-object p3, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->countries:Lorg/json/JSONArray;

    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result p3

    if-nez p3, :cond_cb

    iget-object p3, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->emptyCountries:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c6

    const-string v1, "ip.sb \u67e5\u8be2\u4e2d"

    goto :goto_c8

    :cond_c6
    const-string v1, "ip.sb \u672a\u5b9a\u4f4d"

    :goto_c8
    invoke-static {p3, v1}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 171
    :cond_cb
    iget-object p3, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->exitLocation:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u51fa\u53e3\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "exitCount"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " \u4e2a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_eb

    const-string v0, " \u00b7 \u67e5\u8be2\u4e2d"

    goto :goto_ed

    :cond_eb
    const-string v0, ""

    :goto_ed
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 172
    iget-object p3, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->footer:Landroid/widget/TextView;

    if-eqz p4, :cond_10a

    const-string p1, "[\uff0c,\u00b7]"

    const/4 p2, 0x2

    invoke-virtual {p4, p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aget-object p1, p1, p2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_11c

    :cond_10a
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "\u5f53\u524d "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_11c
    invoke-static {p3, p1}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->sendState()V

    :cond_122
    :goto_122
    return-void
.end method

.method synthetic lambda$request$6$io-nekohasekai-sagernet-ui-GlobalGlobeCard(ILorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 0
    const/4 v0, 0x0

    .line 162
    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->loading:Z

    iget v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->epoch:I

    if-ne p1, v0, :cond_1b

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->available()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_1b

    .line 163
    :cond_e
    new-instance v1, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$9;

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$9;-><init>(Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;ILorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lio/nekohasekai/sagernet/ui/DrawerWorkGate;->publish(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_1b
    :goto_1b
    return-void
.end method

.method synthetic lambda$request$7$io-nekohasekai-sagernet-ui-GlobalGlobeCard(Landroid/content/Context;I)V
    .registers 15

    .line 131
    const-string v0, "UTF-8"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 133
    :try_start_7
    sget-object v2, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->cachedHtml:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_88

    .line 134
    new-instance v2, Ljava/lang/String;

    const-string v4, "globe/index.html"

    const/high16 v5, 0x40000

    invoke-static {p1, v4, v5}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->asset(Landroid/content/Context;Ljava/lang/String;I)[B

    move-result-object v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 135
    const-string v4, "daymap"

    const-string v5, "nightmap"

    const-string v6, "clouds"

    filled-new-array {v4, v5, v6}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "DAY"

    const-string v6, "NIGHT"

    const-string v7, "CLOUDS"

    filled-new-array {v5, v6, v7}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    :goto_30
    const/4 v7, 0x3

    if-ge v6, v7, :cond_86

    .line 137
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "globe/earth-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v4, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".webp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/high16 v8, 0x100000

    invoke-static {p1, v7, v8}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->asset(Landroid/content/Context;Ljava/lang/String;I)[B

    move-result-object v7

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v7

    .line 138
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "@@EARTH_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v5, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "@@"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "data:image/webp;base64,"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v8, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v6, v6, 0x1

    goto :goto_30

    .line 140
    :cond_86
    sput-object v2, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->cachedHtml:Ljava/lang/String;

    .line 142
    :cond_88
    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/ConnectionInspector;->snapshot(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "connections"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 143
    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/ConnectionInspector;->currentTypes(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v4

    new-instance v5, Ljava/util/TreeSet;

    invoke-direct {v5}, Ljava/util/TreeSet;-><init>()V

    .line 144
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const/4 v7, 0x0

    :goto_a1
    if-eqz v2, :cond_10c

    .line 145
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_10c

    .line 146
    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    if-nez v8, :cond_b0

    goto :goto_109

    .line 147
    :cond_b0
    const-string v9, "metadata"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    if-nez v9, :cond_bb

    const-string v9, ""

    goto :goto_c1

    :cond_bb
    const-string v10, "destinationIP"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 148
    :goto_c1
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_e0

    invoke-interface {v6, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x1

    if-eqz v10, :cond_d9

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/2addr v11, v10

    :cond_d9
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_e0
    invoke-static {v8, v4}, Lio/nekohasekai/sagernet/ui/GlobeTopology;->tag(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v4}, Lio/nekohasekai/sagernet/ui/GlobeTopology;->type(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v8

    .line 150
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_109

    const-string v10, "direct"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_109

    const-string v10, "block"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_109

    const-string v10, "dns"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_109

    invoke-interface {v5, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_109
    :goto_109
    add-int/lit8 v7, v7, 0x1

    goto :goto_a1

    .line 152
    :cond_10c
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "/globe-egress?network="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->networkKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v8, 0x0

    :goto_123
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_143

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    add-int/lit8 v10, v8, 0x1

    const/16 v11, 0x80

    if-ge v8, v11, :cond_141

    const-string v8, "&tag="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_141
    move v8, v10

    goto :goto_123

    .line 154
    :cond_143
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 155
    new-instance v8, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$10;

    invoke-direct {v8, v6}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$10;-><init>(Ljava/util/Map;)V

    invoke-static {v5, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 156
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_158
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_178

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    add-int/lit8 v8, v3, 0x1

    const/16 v9, 0x100

    if-ge v3, v9, :cond_176

    const-string v3, "&ip="

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_176
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_176} :catch_18c

    :cond_176
    move v3, v8

    goto :goto_158

    .line 157
    :cond_178
    :try_start_178
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/nekohasekai/sagernet/ui/ConnectionInspector;->request(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_180
    .catch Ljava/lang/Exception; {:try_start_178 .. :try_end_180} :catch_181

    goto :goto_186

    :catch_181
    :try_start_181
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 158
    :goto_186
    invoke-static {v2, v4, p1}, Lio/nekohasekai/sagernet/ui/GlobeTopology;->build(Lorg/json/JSONArray;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_18a
    .catch Ljava/lang/Exception; {:try_start_181 .. :try_end_18a} :catch_18c

    const/4 p1, 0x0

    goto :goto_18e

    .line 159
    :catch_18c
    const-string p1, "\u8fde\u63a5\u540e\u663e\u793a\u5206\u5e03 \u00b7 \u53ef\u62d6\u52a8\u9884\u89c8"

    :goto_18e
    move-object v7, p1

    move-object v5, v1

    .line 160
    sget-object v6, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->cachedHtml:Ljava/lang/String;

    .line 161
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->main:Landroid/os/Handler;

    new-instance v2, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$11;

    move-object v3, p0

    move v4, p2

    invoke-direct/range {v2 .. v7}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$11;-><init>(Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;ILorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .line 111
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->countryScroll:Landroid/widget/ScrollView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->exclusiveTouch(Landroid/view/View;Z)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->changed:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Lio/nekohasekai/sagernet/ui/DrawerWorkGate;->observe(Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->observer:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->scrolled:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->observer:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->laidOut:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->changed:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 4

    .line 114
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DrawerWorkGate;->unobserve(Landroid/view/View;)V

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DrawerWorkGate;->cancel(Landroid/view/View;)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->main:Landroid/os/Handler;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->main:Landroid/os/Handler;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->changed:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->epoch:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->epoch:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->live:Z

    .line 115
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->countryScroll:Landroid/widget/ScrollView;

    invoke-static {v1, v0}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->exclusiveTouch(Landroid/view/View;Z)V

    .line 116
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->observer:Landroid/view/ViewTreeObserver;

    if-eqz v1, :cond_3a

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->observer:Landroid/view/ViewTreeObserver;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->scrolled:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->observer:Landroid/view/ViewTreeObserver;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->laidOut:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_3a
    const/4 v1, 0x0

    iput-object v1, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->observer:Landroid/view/ViewTreeObserver;

    .line 117
    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->web:Landroid/webkit/WebView;

    if-eqz v2, :cond_60

    invoke-static {v2, v0}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->exclusiveTouch(Landroid/view/View;Z)V

    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->loaded:Z

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->web:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->web:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->body:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->web:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->web:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    iput-object v1, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->web:Landroid/webkit/WebView;

    iput-object v1, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->lastState:Ljava/lang/String;

    .line 118
    :cond_60
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 3

    .line 120
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onVisibilityChanged(Landroid/view/View;I)V

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->reconcile()V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 2

    .line 121
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowVisibilityChanged(I)V

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->reconcile()V

    return-void
.end method

.method public refreshAppearance()V
    .registers 3

    .line 99
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->caption:Landroid/widget/TextView;

    if-nez v0, :cond_5

    goto :goto_15

    :cond_5
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/ThemePalette;->dark(Landroid/content/Context;)Z

    move-result v0

    .line 100
    iget-boolean v1, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->themeApplied:Z

    if-eqz v1, :cond_16

    iget-boolean v1, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->lastDark:Z

    if-ne v1, v0, :cond_16

    :goto_15
    return-void

    :cond_16
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->themeApplied:Z

    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->lastDark:Z

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/UiComponents;->refresh(Landroid/view/View;)V

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->sendState()V

    return-void
.end method
