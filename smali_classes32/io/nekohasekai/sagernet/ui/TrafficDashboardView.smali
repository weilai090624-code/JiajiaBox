.class public final Lio/nekohasekai/sagernet/ui/TrafficDashboardView;
.super Landroid/widget/FrameLayout;
.source "TrafficDashboardView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/ui/TrafficDashboardView$HeaderBackground;
    }
.end annotation


# static fields
.field private static final CARD_BACKGROUND_ID:I = 0x7f08008d

.field private static final NODE_CARD_ID:I = 0x7f0a0169

.field private static final NODE_NAME_ID:I = 0x7f0a0167

.field private static final NODE_SUBTITLE_ID:I = 0x7f0a016a

.field private static final REFRESH_INTERVAL_MS:J = 0x3e8L

.field private static final STALE_SPEED_MS:J = 0x9c4L

.field private static homeHeader:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/nekohasekai/sagernet/ui/TrafficDashboardView;",
            ">;"
        }
    .end annotation
.end field

.field private static homeStats:Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;


# instance fields
.field private final aiCard:Lio/nekohasekai/sagernet/ui/AiRoutingCard;

.field private baseTopMargin:I

.field private final connectionCard:Lio/nekohasekai/sagernet/ui/ConnectionCard;

.field private final dashboardCard:Landroid/widget/LinearLayout;

.field private final downloadValue:Landroid/widget/TextView;

.field private final globeCard:Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;

.field private final handler:Landroid/os/Handler;

.field private headerColor:I

.field private headerTextColor:I

.field private headerThemeApplied:Z

.field private final homeMode:Z

.field private lastUpdateTime:J

.field private latestStats:Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;

.field private final rankingCard:Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;

.field private final refreshRunnable:Ljava/lang/Runnable;

.field private refreshScheduled:Z

.field private scrollContent:Landroid/widget/FrameLayout;

.field private final sessionValue:Landroid/widget/TextView;

.field private final settledRender:Ljava/lang/Runnable;

.field private final telegramCard:Lio/nekohasekai/sagernet/ui/AiRoutingCard;

.field private final totalValue:Landroid/widget/TextView;

.field private final uploadSection:Landroid/widget/LinearLayout;

.field private final uploadValue:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$OQHbowSBv1Ml1gUhZ8UTaXhEN-M(Lio/nekohasekai/sagernet/ui/TrafficDashboardView;)V
    .registers 1

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->applyTopInset()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 75
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->homeHeader:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 134
    invoke-direct {p0, p1, v0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Z)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 137
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->handler:Landroid/os/Handler;

    .line 48
    new-instance v3, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$1;

    invoke-direct {v3, v0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$1;-><init>(Lio/nekohasekai/sagernet/ui/TrafficDashboardView;)V

    iput-object v3, v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->refreshRunnable:Ljava/lang/Runnable;

    .line 58
    new-instance v3, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$4;

    invoke-direct {v3, v0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$4;-><init>(Lio/nekohasekai/sagernet/ui/TrafficDashboardView;)V

    iput-object v3, v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->settledRender:Ljava/lang/Runnable;

    .line 138
    iput-boolean v2, v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->homeMode:Z

    const/4 v3, -0x1

    .line 139
    invoke-virtual {v0, v3}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->setBackgroundColor(I)V

    .line 141
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 142
    iput-object v4, v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dashboardCard:Landroid/widget/LinearLayout;

    const v5, 0x7f0a0169

    .line 143
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setId(I)V

    const/4 v5, 0x1

    .line 144
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v6, 0x11

    .line 145
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    const v7, 0x7f08008d

    .line 146
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const/high16 v7, 0x41b00000    # 22.0f

    .line 147
    invoke-static {v4, v7}, Lio/nekohasekai/sagernet/ui/CardLight;->bind(Landroid/view/View;F)V

    const/high16 v8, 0x41900000    # 18.0f

    .line 148
    invoke-direct {v0, v8}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v9

    const/high16 v10, 0x41400000    # 12.0f

    invoke-direct {v0, v10}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v11

    invoke-direct {v0, v8}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v12

    invoke-direct {v0, v10}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v10

    invoke-virtual {v4, v9, v11, v12, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 150
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v10, 0x41800000    # 16.0f

    if-eqz v2, :cond_70

    .line 151
    invoke-direct {v0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->homeHeight()I

    move-result v11

    invoke-direct {v0, v10}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v12

    sub-int/2addr v11, v12

    goto :goto_76

    :cond_70
    const/high16 v11, 0x433c0000    # 188.0f

    invoke-direct {v0, v11}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v11

    :goto_76
    const/16 v12, 0x30

    invoke-direct {v9, v3, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/high16 v11, 0x40c00000    # 6.0f

    .line 152
    invoke-direct {v0, v11}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v13

    iput v13, v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->baseTopMargin:I

    .line 153
    invoke-direct {v0, v10}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v13

    iget v14, v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->baseTopMargin:I

    invoke-direct {v0, v10}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v15

    invoke-direct {v0, v11}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v7

    invoke-virtual {v9, v13, v14, v15, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 154
    invoke-virtual {v0, v4, v9}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x0

    .line 157
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 158
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 159
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const v14, 0x3f866666    # 1.05f

    invoke-direct {v13, v3, v9, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v7, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    const-string v13, "\u7d2f\u8ba1\u4ee3\u7406"

    const-string v14, "0 B"

    invoke-direct {v0, v1, v13, v14}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->rateSection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v13

    .line 163
    invoke-virtual {v13, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    iput-object v15, v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->totalValue:Landroid/widget/TextView;

    .line 164
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v15, v9, v3, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v13, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    new-instance v13, Landroid/view/View;

    invoke-direct {v13, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 166
    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/ThemePalette;->border(Landroid/content/Context;)I

    move-result v15

    invoke-virtual {v13, v15}, Landroid/view/View;->setBackgroundColor(I)V

    .line 167
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v11}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v10

    const/high16 v12, 0x42080000    # 34.0f

    invoke-direct {v0, v12}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v8

    invoke-direct {v15, v10, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v8, 0x41000000    # 8.0f

    .line 168
    invoke-direct {v0, v8}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v10

    iput v10, v15, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 169
    invoke-direct {v0, v8}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v10

    iput v10, v15, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 170
    invoke-virtual {v7, v13, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    const-string v10, "\u672c\u6b21\u4ee3\u7406"

    invoke-direct {v0, v1, v10, v14}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->rateSection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v10

    .line 172
    invoke-virtual {v10, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->sessionValue:Landroid/widget/TextView;

    .line 173
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v13, v9, v3, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v10, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    new-instance v7, Landroid/view/View;

    invoke-direct {v7, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 176
    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/ThemePalette;->border(Landroid/content/Context;)I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 177
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 178
    invoke-direct {v0, v11}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v13

    invoke-direct {v10, v3, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 177
    invoke-virtual {v4, v7, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 181
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 182
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 183
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v3, v9, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    const-string v6, "\u2191 \u4e0a\u884c\u901f\u7387"

    const-string v10, "0 B/s"

    invoke-direct {v0, v1, v6, v10}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->rateSection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v6

    iput-object v6, v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->uploadSection:Landroid/widget/LinearLayout;

    .line 187
    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->uploadValue:Landroid/widget/TextView;

    .line 188
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v14, v9, v3, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v6, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    new-instance v14, Landroid/view/View;

    invoke-direct {v14, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 192
    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/ThemePalette;->border(Landroid/content/Context;)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/view/View;->setBackgroundColor(I)V

    .line 193
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v11}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v3

    invoke-direct {v0, v12}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v12

    invoke-direct {v15, v3, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 194
    invoke-direct {v0, v8}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v3

    iput v3, v15, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 195
    invoke-direct {v0, v8}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v3

    iput v3, v15, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 196
    invoke-virtual {v7, v14, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    const-string v3, "\u2193 \u4e0b\u884c\u901f\u7387"

    invoke-direct {v0, v1, v3, v10}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->rateSection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 199
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->downloadValue:Landroid/widget/TextView;

    .line 200
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x1

    invoke-direct {v12, v9, v14, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v3, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v3, 0x41900000    # 18.0f

    .line 203
    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v3, 0x0

    if-eqz v2, :cond_19b

    move-object v7, v3

    goto :goto_1a0

    .line 204
    :cond_19b
    new-instance v7, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;

    invoke-direct {v7, v1}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;-><init>(Landroid/content/Context;)V

    :goto_1a0
    iput-object v7, v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->rankingCard:Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;

    if-eqz v7, :cond_1c6

    .line 206
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v7}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->preferredHeight()I

    move-result v11

    const/16 v12, 0x30

    const/4 v14, -0x1

    invoke-direct {v10, v14, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/high16 v11, 0x41800000    # 16.0f

    .line 207
    invoke-direct {v0, v11}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v12

    const/high16 v13, 0x40c00000    # 6.0f

    invoke-direct {v0, v13}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v14

    invoke-direct {v0, v11}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v13

    invoke-virtual {v10, v12, v14, v13, v9}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 208
    invoke-virtual {v0, v7, v10}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1c6
    if-eqz v2, :cond_1ca

    move-object v10, v3

    goto :goto_1cf

    .line 210
    :cond_1ca
    new-instance v10, Lio/nekohasekai/sagernet/ui/ConnectionCard;

    invoke-direct {v10, v1}, Lio/nekohasekai/sagernet/ui/ConnectionCard;-><init>(Landroid/content/Context;)V

    :goto_1cf
    iput-object v10, v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->connectionCard:Lio/nekohasekai/sagernet/ui/ConnectionCard;

    if-eqz v10, :cond_1f5

    .line 212
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v7}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->preferredHeight()I

    move-result v12

    const/16 v13, 0x30

    const/4 v14, -0x1

    invoke-direct {v11, v14, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/high16 v12, 0x41800000    # 16.0f

    .line 213
    invoke-direct {v0, v12}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v13

    const/high16 v14, 0x40c00000    # 6.0f

    invoke-direct {v0, v14}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v15

    invoke-direct {v0, v12}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v14

    invoke-virtual {v11, v13, v15, v14, v9}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 214
    invoke-virtual {v0, v10, v11}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1f5
    if-eqz v2, :cond_1f9

    move-object v10, v3

    goto :goto_1fe

    .line 216
    :cond_1f9
    new-instance v10, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;

    invoke-direct {v10, v1}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;-><init>(Landroid/content/Context;)V

    :goto_1fe
    iput-object v10, v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->globeCard:Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;

    if-eqz v10, :cond_224

    .line 218
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v7}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->preferredHeight()I

    move-result v7

    const/16 v13, 0x30

    const/4 v14, -0x1

    invoke-direct {v11, v14, v7, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/high16 v12, 0x41800000    # 16.0f

    .line 219
    invoke-direct {v0, v12}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v7

    const/high16 v13, 0x40c00000    # 6.0f

    invoke-direct {v0, v13}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v14

    invoke-direct {v0, v12}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v13

    invoke-virtual {v11, v7, v14, v13, v9}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v10, v11}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    :cond_224
    new-instance v7, Lio/nekohasekai/sagernet/ui/AiRoutingCard;

    invoke-direct {v7, v1}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->aiCard:Lio/nekohasekai/sagernet/ui/AiRoutingCard;

    .line 222
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v11, 0x430c0000    # 140.0f

    invoke-direct {v0, v11}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v12

    const/high16 v13, 0x42a00000    # 80.0f

    invoke-direct {v0, v13}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v14

    const/16 v15, 0x33

    invoke-direct {v10, v12, v14, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/high16 v12, 0x41800000    # 16.0f

    .line 223
    invoke-direct {v0, v12}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v14

    const/high16 v8, 0x434e0000    # 206.0f

    invoke-direct {v0, v8}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v8

    invoke-direct {v0, v12}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v9

    const/high16 v12, 0x40c00000    # 6.0f

    invoke-direct {v0, v12}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v12

    invoke-virtual {v10, v14, v8, v9, v12}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 224
    invoke-virtual {v0, v7, v10}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    new-instance v8, Lio/nekohasekai/sagernet/ui/AiRoutingCard;

    invoke-direct {v8, v1, v5}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;-><init>(Landroid/content/Context;Z)V

    iput-object v8, v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->telegramCard:Lio/nekohasekai/sagernet/ui/AiRoutingCard;

    .line 226
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v11}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v10

    invoke-direct {v0, v13}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v11

    invoke-direct {v9, v10, v11, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v8, v9}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    new-instance v9, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$5;

    invoke-direct {v9, v0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$5;-><init>(Lio/nekohasekai/sagernet/ui/TrafficDashboardView;)V

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const/16 v6, 0x8

    if-eqz v2, :cond_2dc

    .line 232
    invoke-virtual {v0, v3}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x0

    .line 233
    invoke-virtual {v0, v2}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->setClipChildren(Z)V

    .line 234
    invoke-virtual {v7, v6}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->setVisibility(I)V

    .line 235
    invoke-virtual {v8, v6}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->setVisibility(I)V

    const/4 v14, -0x1

    .line 236
    invoke-virtual {v4, v14}, Landroid/widget/LinearLayout;->setId(I)V

    .line 237
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 238
    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/ThemePalette;->control(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 239
    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/ThemePalette;->border(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v3, v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    const/high16 v1, 0x41b00000    # 22.0f

    .line 240
    invoke-direct {v0, v1}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 241
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 242
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setClipToOutline(Z)V

    const/high16 v1, 0x40000000    # 2.0f

    .line 243
    invoke-direct {v0, v1}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setElevation(F)V

    .line 244
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v12, 0x41800000    # 16.0f

    .line 245
    invoke-direct {v0, v12}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-direct {v0, v3}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v5

    invoke-direct {v0, v12}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v6

    invoke-direct {v0, v3}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v3

    invoke-virtual {v1, v2, v5, v6, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 246
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_320

    .line 248
    :cond_2dc
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 250
    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 251
    invoke-virtual {v2, v5}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->setClipToPadding(Z)V

    invoke-virtual {v2, v5}, Landroid/widget/ScrollView;->setNestedScrollingEnabled(Z)V

    .line 252
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->scrollContent:Landroid/widget/FrameLayout;

    .line 253
    :goto_2f5
    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_30c

    invoke-virtual {v0, v3}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->removeView(Landroid/view/View;)V

    iget-object v5, v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->scrollContent:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2f5

    .line 254
    :cond_30c
    iget-object v1, v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->scrollContent:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v14, -0x1

    invoke-direct {v3, v14, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v14, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    :goto_320
    new-instance v1, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$6;

    invoke-direct {v1, v0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$6;-><init>(Lio/nekohasekai/sagernet/ui/TrafficDashboardView;)V

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 258
    new-instance v1, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$7;

    invoke-direct {v1, v0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$7;-><init>(Lio/nekohasekai/sagernet/ui/TrafficDashboardView;)V

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic access$002(Lio/nekohasekai/sagernet/ui/TrafficDashboardView;Z)Z
    .registers 2

    .line 34
    iput-boolean p1, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->refreshScheduled:Z

    return p1
.end method

.method static synthetic access$100(Lio/nekohasekai/sagernet/ui/TrafficDashboardView;)Z
    .registers 1

    .line 34
    iget-boolean p0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->homeMode:Z

    return p0
.end method

.method static synthetic access$200(Lio/nekohasekai/sagernet/ui/TrafficDashboardView;)V
    .registers 1

    .line 34
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->render()V

    return-void
.end method

.method static synthetic access$300(Lio/nekohasekai/sagernet/ui/TrafficDashboardView;)Landroid/os/Handler;
    .registers 1

    .line 34
    iget-object p0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method private applyHeaderTheme()V
    .registers 4

    .line 341
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/ThemePalette;->control(Landroid/content/Context;)I

    move-result v0

    .line 342
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/JJGlassToolbar;->matteTextColor(Landroid/content/Context;)I

    move-result v1

    .line 343
    iget-boolean v2, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->headerThemeApplied:Z

    if-eqz v2, :cond_1c

    iget v2, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->headerColor:I

    if-ne v0, v2, :cond_1c

    iget v2, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->headerTextColor:I

    if-eq v1, v2, :cond_42

    .line 344
    :cond_1c
    iput v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->headerColor:I

    .line 345
    iput v1, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->headerTextColor:I

    const/4 v1, 0x1

    .line 346
    iput-boolean v1, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->headerThemeApplied:Z

    .line 347
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dashboardCard:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 348
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dashboardCard:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/ThemePalette;->border(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 351
    :cond_42
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dashboardCard:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->tintHeader(Landroid/view/View;)V

    return-void
.end method

.method private applyTopInset()V
    .registers 5

    .line 374
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->homeMode:Z

    if-eqz v0, :cond_8

    .line 375
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->applyHeaderTheme()V

    return-void

    .line 378
    :cond_8
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->refreshAppearance()V

    .line 379
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->positionAiCard()V

    .line 380
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-nez v0, :cond_15

    goto :goto_4c

    .line 382
    :cond_15
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_26

    .line 383
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->top:I

    goto :goto_2a

    .line 384
    :cond_26
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    .line 385
    :goto_2a
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dashboardCard:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_4c

    .line 386
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/FrameLayout$LayoutParams;

    if-nez v2, :cond_37

    goto :goto_4c

    .line 387
    :cond_37
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 388
    iget v3, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->baseTopMargin:I

    add-int/2addr v3, v0

    .line 389
    iget v0, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-eq v0, v3, :cond_49

    .line 390
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 391
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 393
    :cond_49
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->positionAiCard()V

    :cond_4c
    :goto_4c
    return-void
.end method

.method private dp(F)I
    .registers 3

    .line 483
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method private homeHeight()I
    .registers 3

    .line 480
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x43340000    # 180.0f

    mul-float v0, v0, v1

    invoke-direct {p0, v0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v0

    return v0
.end method

.method public static installHome(Landroid/view/View;)V
    .registers 7

    .line 106
    move-object v0, p0

    check-cast v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0a02ba

    .line 107
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0177

    .line 108
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 109
    new-instance v3, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;-><init>(Landroid/content/Context;Z)V

    .line 110
    new-instance p0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->homeHeader:Ljava/lang/ref/WeakReference;

    .line 111
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->homeHeight()I

    move-result v5

    invoke-direct {p0, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 112
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v0, v3, v4, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 113
    new-instance p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$0;

    invoke-direct {p0, v1, v3, v2}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$0;-><init>(Landroid/view/View;Lio/nekohasekai/sagernet/ui/TrafficDashboardView;Landroid/view/View;)V

    .line 128
    new-instance v4, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$2;

    invoke-direct {v4, p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$2;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 129
    new-instance v1, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$3;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$3;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 130
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 131
    sget-object p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->homeStats:Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;

    if-eqz p0, :cond_52

    invoke-virtual {v3, p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->update(Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;)V

    :cond_52
    return-void
.end method

.method static synthetic lambda$installHome$1(Landroid/view/View;Lio/nekohasekai/sagernet/ui/TrafficDashboardView;Landroid/view/View;)V
    .registers 6

    .line 114
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    .line 115
    invoke-virtual {p1}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 116
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-eq v1, p0, :cond_13

    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1, v0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    :cond_13
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 118
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 122
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-eq v2, p0, :cond_28

    iput p0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    :cond_28
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result p0

    invoke-direct {p1}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->homeHeight()I

    move-result v0

    const/high16 v1, 0x41400000    # 12.0f

    invoke-direct {p1, v1}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result p1

    add-int/2addr v0, p1

    .line 124
    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 123
    invoke-virtual {p2, p0, v0, p1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 125
    move-object p0, p2

    check-cast p0, Landroid/view/ViewGroup;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 126
    invoke-virtual {p2, p1}, Landroid/view/View;->setClipToOutline(Z)V

    return-void
.end method

.method static synthetic lambda$installHome$2(Ljava/lang/Runnable;Landroid/view/View;IIIIIIII)V
    .registers 10

    .line 128
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic lambda$installHome$3(Ljava/lang/Runnable;Landroid/view/View;IIIIIIII)V
    .registers 10

    .line 129
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private positionAiCard()V
    .registers 11

    .line 397
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->homeMode:Z

    if-nez v0, :cond_15b

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->getWidth()I

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_15b

    .line 398
    :cond_c
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    const/high16 v1, 0x40c00000    # 6.0f

    .line 399
    invoke-direct {p0, v1}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v1

    const/4 v2, 0x0

    if-nez v0, :cond_1b

    const/4 v3, 0x0

    goto :goto_1f

    :cond_1b
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v3

    :goto_1f
    add-int/2addr v1, v3

    .line 400
    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->rankingCard:Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;

    const/high16 v4, 0x41400000    # 12.0f

    if-eqz v3, :cond_49

    .line 401
    invoke-virtual {v3}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 402
    iget-object v5, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->rankingCard:Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;

    invoke-virtual {v5}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->preferredHeight()I

    move-result v5

    .line 403
    iget v6, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-ne v6, v1, :cond_3a

    iget v6, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eq v6, v5, :cond_43

    .line 404
    :cond_3a
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 405
    iget-object v6, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->rankingCard:Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;

    invoke-virtual {v6, v3}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 407
    :cond_43
    invoke-direct {p0, v4}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v3

    add-int/2addr v5, v3

    add-int/2addr v1, v5

    .line 409
    :cond_49
    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->connectionCard:Lio/nekohasekai/sagernet/ui/ConnectionCard;

    if-eqz v3, :cond_70

    .line 410
    invoke-virtual {v3}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 411
    iget-object v5, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->rankingCard:Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;

    invoke-virtual {v5}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->preferredHeight()I

    move-result v5

    .line 412
    iget v6, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-ne v6, v1, :cond_61

    iget v6, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eq v6, v5, :cond_6a

    .line 413
    :cond_61
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 414
    iget-object v6, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->connectionCard:Lio/nekohasekai/sagernet/ui/ConnectionCard;

    invoke-virtual {v6, v3}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 416
    :cond_6a
    invoke-direct {p0, v4}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v3

    add-int/2addr v5, v3

    add-int/2addr v1, v5

    .line 418
    :cond_70
    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->globeCard:Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;

    if-eqz v3, :cond_97

    .line 419
    invoke-virtual {v3}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 420
    iget-object v5, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->rankingCard:Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;

    invoke-virtual {v5}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->preferredHeight()I

    move-result v5

    .line 421
    iget v6, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-ne v6, v1, :cond_88

    iget v6, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eq v6, v5, :cond_91

    :cond_88
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v6, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->globeCard:Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;

    invoke-virtual {v6, v3}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 422
    :cond_91
    invoke-direct {p0, v4}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v3

    add-int/2addr v5, v3

    add-int/2addr v1, v5

    .line 424
    :cond_97
    invoke-direct {p0, v4}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v3

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->getWidth()I

    move-result v4

    const/high16 v5, 0x42000000    # 32.0f

    invoke-direct {p0, v5}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v5

    sub-int/2addr v4, v5

    .line 425
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->fontScale:F

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    const/high16 v7, 0x43910000    # 290.0f

    mul-float v5, v5, v7

    invoke-direct {p0, v5}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v5

    if-ge v4, v5, :cond_c2

    const/4 v5, 0x1

    goto :goto_c3

    :cond_c2
    const/4 v5, 0x0

    :goto_c3
    if-eqz v5, :cond_c6

    goto :goto_c9

    :cond_c6
    sub-int/2addr v4, v3

    .line 426
    div-int/lit8 v4, v4, 0x2

    .line 427
    :goto_c9
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    const/high16 v7, 0x42b00000    # 88.0f

    mul-float v6, v6, v7

    invoke-direct {p0, v6}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v6

    .line 428
    iget-object v7, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->aiCard:Lio/nekohasekai/sagernet/ui/AiRoutingCard;

    invoke-virtual {v7}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 429
    iget v8, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/high16 v9, 0x41800000    # 16.0f

    if-ne v8, v4, :cond_f5

    iget v8, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v8, v6, :cond_f5

    iget v8, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-eq v8, v1, :cond_106

    :cond_f5
    iput v4, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v6, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-direct {p0, v9}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v8

    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v1, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v8, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->aiCard:Lio/nekohasekai/sagernet/ui/AiRoutingCard;

    invoke-virtual {v8, v7}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_106
    if-eqz v5, :cond_10a

    add-int/2addr v1, v6

    add-int/2addr v1, v3

    :cond_10a
    if-eqz v5, :cond_111

    .line 430
    invoke-direct {p0, v9}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v3

    goto :goto_117

    :cond_111
    invoke-direct {p0, v9}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v5

    add-int/2addr v5, v4

    add-int/2addr v3, v5

    .line 431
    :goto_117
    iget-object v5, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->telegramCard:Lio/nekohasekai/sagernet/ui/AiRoutingCard;

    invoke-virtual {v5}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 432
    iget v7, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-ne v7, v4, :cond_12f

    iget v7, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v7, v6, :cond_12f

    iget v7, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-ne v7, v1, :cond_12f

    iget v7, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    if-eq v7, v3, :cond_13c

    :cond_12f
    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->telegramCard:Lio/nekohasekai/sagernet/ui/AiRoutingCard;

    invoke-virtual {v3, v5}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 433
    :cond_13c
    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->scrollContent:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_15b

    if-nez v0, :cond_143

    goto :goto_147

    :cond_143
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    :goto_147
    add-int/2addr v1, v6

    invoke-direct {p0, v9}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v0

    add-int/2addr v1, v0

    add-int/2addr v1, v2

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->scrollContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMinimumHeight()I

    move-result v0

    if-eq v0, v1, :cond_15b

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->scrollContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    :cond_15b
    :goto_15b
    return-void
.end method

.method private rateSection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;
    .registers 12

    .line 449
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 450
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x11

    .line 451
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v6, 0x0

    const v7, 0x7f0a016a

    const/high16 v5, 0x41400000    # 12.0f

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .line 452
    invoke-direct/range {v2 .. v7}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->text(Landroid/content/Context;Ljava/lang/String;FZI)Landroid/widget/TextView;

    move-result-object p1

    move-object v2, v3

    .line 453
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->wrapCentered()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v5, 0x1

    const v6, 0x7f0a0167

    const/high16 v4, 0x41c00000    # 24.0f

    move-object v1, p0

    move-object v3, p3

    .line 454
    invoke-direct/range {v1 .. v6}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->text(Landroid/content/Context;Ljava/lang/String;FZI)Landroid/widget/TextView;

    move-result-object p1

    .line 455
    invoke-static {p1, v3}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->setValue(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 456
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->wrapCentered()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    const/high16 p3, 0x40e00000    # 7.0f

    .line 457
    invoke-direct {p0, p3}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result p3

    iput p3, p2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 458
    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public static refreshHomeTheme()V
    .registers 1

    .line 95
    sget-object v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->homeHeader:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;

    if-eqz v0, :cond_d

    .line 96
    invoke-direct {v0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->applyHeaderTheme()V

    :cond_d
    return-void
.end method

.method private render()V
    .registers 12

    .line 355
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->homeMode:Z

    if-eqz v0, :cond_c9

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->settledRender:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Lio/nekohasekai/sagernet/ui/DrawerWorkGate;->defer(Landroid/view/View;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_c9

    .line 356
    :cond_e
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->applyHeaderTheme()V

    .line 357
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/LifetimeTraffic;->cachedRead(Landroid/content/Context;)J

    move-result-wide v0

    .line 358
    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->totalValue:Landroid/widget/TextView;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->setValue(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->latestStats:Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_2e

    move-wide v3, v1

    goto :goto_36

    :cond_2e
    invoke-virtual {v0}, Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;->getTxTotal()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 360
    :goto_36
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->latestStats:Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;

    if-nez v0, :cond_3c

    move-wide v5, v1

    goto :goto_44

    :cond_3c
    invoke-virtual {v0}, Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;->getRxTotal()J

    move-result-wide v5

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    :goto_44
    const-wide v7, 0x7fffffffffffffffL

    sub-long v9, v7, v3

    cmp-long v0, v9, v5

    if-gez v0, :cond_50

    goto :goto_52

    :cond_50
    add-long v7, v3, v5

    .line 363
    :goto_52
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->sessionValue:Landroid/widget/TextView;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v7, v8}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->setValue(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->latestStats:Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;

    if-eqz v0, :cond_73

    .line 366
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->lastUpdateTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x9c4

    cmp-long v0, v3, v5

    if-lez v0, :cond_71

    goto :goto_73

    :cond_71
    const/4 v0, 0x0

    goto :goto_74

    :cond_73
    :goto_73
    const/4 v0, 0x1

    :goto_74
    if-eqz v0, :cond_78

    move-wide v3, v1

    goto :goto_82

    .line 367
    :cond_78
    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->latestStats:Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;

    invoke-virtual {v3}, Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;->getTxRateProxy()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    :goto_82
    if-eqz v0, :cond_85

    goto :goto_8f

    .line 368
    :cond_85
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->latestStats:Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;->getRxRateProxy()J

    move-result-wide v5

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 369
    :goto_8f
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->uploadValue:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v3, v4}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/s"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->setValue(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->downloadValue:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->setValue(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_c9
    :goto_c9
    return-void
.end method

.method private scheduleRefresh()V
    .registers 5

    .line 292
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->refreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 293
    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->refreshScheduled:Z

    .line 294
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->homeMode:Z

    if-eqz v0, :cond_2f

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_2f

    .line 295
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->render()V

    const/4 v0, 0x1

    .line 296
    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->refreshScheduled:Z

    .line 297
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->refreshRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2f
    return-void
.end method

.method private static setValue(Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 6

    .line 332
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_13

    return-void

    .line 333
    :cond_13
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 335
    :goto_19
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2d

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_2a

    goto :goto_2e

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_2d
    const/4 v1, -0x1

    :goto_2e
    if-ltz v1, :cond_41

    .line 336
    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const v3, 0x3f1eb852    # 0.62f

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v3, 0x21

    invoke-virtual {v0, v2, v1, p1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 337
    :cond_41
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private styleRoutingCard(Landroid/view/View;)V
    .registers 2

    .line 91
    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/UiComponents;->routingCard(Landroid/view/View;)V

    return-void
.end method

.method private text(Landroid/content/Context;Ljava/lang/String;FZI)Landroid/widget/TextView;
    .registers 7

    .line 463
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 464
    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setId(I)V

    const/16 p1, 0x11

    .line 465
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 466
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p4, :cond_16

    const p1, -0xebebea

    goto :goto_19

    :cond_16
    const p1, -0x75756e

    .line 467
    :goto_19
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 468
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 p1, 0x1

    .line 469
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    const/4 p1, 0x0

    .line 470
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    if-eqz p4, :cond_3d

    .line 471
    const-string p2, "sans-serif-medium"

    invoke-static {p2, p1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const p1, -0x43333333    # -0.025f

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    const-string p1, "tnum"

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setFontFeatureSettings(Ljava/lang/String;)V

    :cond_3d
    return-object v0
.end method

.method private tintHeader(Landroid/view/View;)V
    .registers 5

    .line 437
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_25

    .line 438
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    .line 439
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0a016a

    if-ne v1, v2, :cond_19

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/ThemePalette;->secondary(Landroid/content/Context;)I

    move-result v1

    goto :goto_1b

    :cond_19
    iget v1, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->headerTextColor:I

    .line 440
    :goto_1b
    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v2

    if-eq v2, v1, :cond_34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_34

    .line 441
    :cond_25
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-nez v0, :cond_34

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/ThemePalette;->border(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 442
    :cond_34
    :goto_34
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4b

    .line 443
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 444
    :goto_3b
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_4b

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->tintHeader(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    :cond_4b
    return-void
.end method

.method public static updateHome(Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;)V
    .registers 2

    .line 100
    sput-object p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->homeStats:Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;

    .line 101
    sget-object v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->homeHeader:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;

    if-eqz v0, :cond_f

    .line 102
    invoke-virtual {v0, p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->update(Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;)V

    :cond_f
    return-void
.end method

.method private wrapCentered()Landroid/widget/LinearLayout$LayoutParams;
    .registers 3

    .line 476
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method synthetic lambda$new$0$io-nekohasekai-sagernet-ui-TrafficDashboardView()V
    .registers 2

    .line 59
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_15

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->render()V

    :cond_15
    return-void
.end method

.method synthetic lambda$new$4$io-nekohasekai-sagernet-ui-TrafficDashboardView(Landroid/view/View;IIIIIIII)V
    .registers 10

    .line 227
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->positionAiCard()V

    return-void
.end method

.method synthetic lambda$new$5$io-nekohasekai-sagernet-ui-TrafficDashboardView(Landroid/view/View;IIIIIIII)V
    .registers 10

    .line 257
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->applyTopInset()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .line 268
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 269
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->scheduleRefresh()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .line 273
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DrawerWorkGate;->cancel(Landroid/view/View;)V

    .line 274
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->refreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 275
    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->refreshScheduled:Z

    .line 276
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 3

    .line 280
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_f

    .line 281
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->scheduleRefresh()V

    return-void

    .line 282
    :cond_f
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->refreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->refreshScheduled:Z

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 2

    .line 286
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    .line 287
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->handler:Landroid/os/Handler;

    if-eqz p1, :cond_f

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->refreshRunnable:Ljava/lang/Runnable;

    if-nez p1, :cond_c

    goto :goto_f

    .line 288
    :cond_c
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->scheduleRefresh()V

    :cond_f
    :goto_f
    return-void
.end method

.method public refreshAppearance()V
    .registers 2

    .line 80
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->homeMode:Z

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->applyHeaderTheme()V

    return-void

    .line 82
    :cond_8
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/JJGlassToolbar;->matteTextColor(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->headerTextColor:I

    .line 83
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/UiComponents;->refresh(Landroid/view/View;)V

    .line 84
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->aiCard:Lio/nekohasekai/sagernet/ui/AiRoutingCard;

    invoke-direct {p0, v0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->styleRoutingCard(Landroid/view/View;)V

    .line 85
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->telegramCard:Lio/nekohasekai/sagernet/ui/AiRoutingCard;

    invoke-direct {p0, v0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->styleRoutingCard(Landroid/view/View;)V

    .line 86
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->globeCard:Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->refreshAppearance()V

    :cond_26
    return-void
.end method

.method public update(Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;)V
    .registers 4

    .line 262
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->latestStats:Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;

    .line 263
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->lastUpdateTime:J

    .line 264
    iget-boolean p1, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->homeMode:Z

    if-eqz p1, :cond_19

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->isShown()Z

    move-result p1

    if-eqz p1, :cond_19

    iget-boolean p1, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->refreshScheduled:Z

    if-nez p1, :cond_19

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->scheduleRefresh()V

    :cond_19
    return-void
.end method
