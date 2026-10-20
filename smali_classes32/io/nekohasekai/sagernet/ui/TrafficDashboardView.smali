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

    .line 57
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->homeHeader:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 115
    invoke-direct {p0, p1, v0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Z)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 118
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->handler:Landroid/os/Handler;

    .line 34
    new-instance v3, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$1;

    invoke-direct {v3, v0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$1;-><init>(Lio/nekohasekai/sagernet/ui/TrafficDashboardView;)V

    iput-object v3, v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->refreshRunnable:Ljava/lang/Runnable;

    .line 119
    iput-boolean v2, v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->homeMode:Z

    const/4 v3, -0x1

    .line 120
    invoke-virtual {v0, v3}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->setBackgroundColor(I)V

    .line 122
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 123
    iput-object v4, v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dashboardCard:Landroid/widget/LinearLayout;

    const v5, 0x7f0a0169

    .line 124
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setId(I)V

    const/4 v5, 0x1

    .line 125
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v6, 0x11

    .line 126
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    const v7, 0x7f08008d

    .line 127
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const/high16 v7, 0x41900000    # 18.0f

    .line 128
    invoke-direct {v0, v7}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v8

    const/high16 v9, 0x41400000    # 12.0f

    invoke-direct {v0, v9}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v10

    invoke-direct {v0, v7}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v7

    invoke-direct {v0, v9}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v9

    invoke-virtual {v4, v8, v10, v7, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 130
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v8, 0x41800000    # 16.0f

    if-eqz v2, :cond_64

    .line 131
    invoke-direct {v0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->homeHeight()I

    move-result v9

    invoke-direct {v0, v8}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v10

    sub-int/2addr v9, v10

    goto :goto_6a

    :cond_64
    const/high16 v9, 0x433c0000    # 188.0f

    invoke-direct {v0, v9}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v9

    :goto_6a
    const/16 v10, 0x30

    invoke-direct {v7, v3, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/high16 v9, 0x40c00000    # 6.0f

    .line 132
    invoke-direct {v0, v9}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v11

    iput v11, v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->baseTopMargin:I

    .line 133
    invoke-direct {v0, v8}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v11

    iget v12, v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->baseTopMargin:I

    invoke-direct {v0, v8}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v13

    invoke-direct {v0, v9}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v14

    invoke-virtual {v7, v11, v12, v13, v14}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 134
    invoke-virtual {v0, v4, v7}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v11, 0x0

    .line 137
    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 138
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 139
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const v13, 0x3f866666    # 1.05f

    invoke-direct {v12, v3, v11, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v7, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    const-string v12, "\u7d2f\u8ba1\u4ee3\u7406"

    const-string v13, "0 B"

    invoke-direct {v0, v1, v12, v13}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->rateSection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v12

    .line 143
    invoke-virtual {v12, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    iput-object v14, v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->totalValue:Landroid/widget/TextView;

    .line 144
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-direct {v14, v11, v3, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v12, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    new-instance v12, Landroid/view/View;

    invoke-direct {v12, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 146
    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/ThemePalette;->border(Landroid/content/Context;)I

    move-result v14

    invoke-virtual {v12, v14}, Landroid/view/View;->setBackgroundColor(I)V

    .line 147
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v15}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v9

    const/high16 v8, 0x42080000    # 34.0f

    invoke-direct {v0, v8}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v10

    invoke-direct {v14, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v9, 0x41000000    # 8.0f

    .line 148
    invoke-direct {v0, v9}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v10

    iput v10, v14, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 149
    invoke-direct {v0, v9}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v10

    iput v10, v14, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 150
    invoke-virtual {v7, v12, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    const-string v10, "\u672c\u6b21\u4ee3\u7406"

    invoke-direct {v0, v1, v10, v13}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->rateSection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v10

    .line 152
    invoke-virtual {v10, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->sessionValue:Landroid/widget/TextView;

    .line 153
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v12, v11, v3, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v10, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    new-instance v7, Landroid/view/View;

    invoke-direct {v7, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 156
    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/ThemePalette;->border(Landroid/content/Context;)I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 157
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 158
    invoke-direct {v0, v15}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v12

    invoke-direct {v10, v3, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 157
    invoke-virtual {v4, v7, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 161
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 162
    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 163
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v3, v11, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    const-string v6, "\u2191 \u4e0a\u884c\u901f\u7387"

    const-string v10, "0 B/s"

    invoke-direct {v0, v1, v6, v10}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->rateSection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v6

    iput-object v6, v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->uploadSection:Landroid/widget/LinearLayout;

    .line 167
    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->uploadValue:Landroid/widget/TextView;

    .line 168
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v13, v11, v3, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v6, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    new-instance v13, Landroid/view/View;

    invoke-direct {v13, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 172
    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/ThemePalette;->border(Landroid/content/Context;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/view/View;->setBackgroundColor(I)V

    .line 173
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v15}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v3

    invoke-direct {v0, v8}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v8

    invoke-direct {v14, v3, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 174
    invoke-direct {v0, v9}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v3

    iput v3, v14, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 175
    invoke-direct {v0, v9}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v3

    iput v3, v14, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 176
    invoke-virtual {v7, v13, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    const-string v3, "\u2193 \u4e0b\u884c\u901f\u7387"

    invoke-direct {v0, v1, v3, v10}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->rateSection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 179
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->downloadValue:Landroid/widget/TextView;

    .line 180
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x1

    invoke-direct {v10, v11, v13, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v3, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v3, 0x41880000    # 17.0f

    .line 183
    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v3, 0x0

    if-eqz v2, :cond_18f

    move-object v7, v3

    goto :goto_194

    .line 184
    :cond_18f
    new-instance v7, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;

    invoke-direct {v7, v1}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;-><init>(Landroid/content/Context;)V

    :goto_194
    iput-object v7, v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->rankingCard:Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;

    if-eqz v7, :cond_1ba

    .line 186
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v7}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->preferredHeight()I

    move-result v10

    const/16 v12, 0x30

    const/4 v13, -0x1

    invoke-direct {v8, v13, v10, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/high16 v10, 0x41800000    # 16.0f

    .line 187
    invoke-direct {v0, v10}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v12

    const/high16 v13, 0x40c00000    # 6.0f

    invoke-direct {v0, v13}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v14

    invoke-direct {v0, v10}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v13

    invoke-virtual {v8, v12, v14, v13, v11}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 188
    invoke-virtual {v0, v7, v8}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1ba
    if-eqz v2, :cond_1be

    move-object v8, v3

    goto :goto_1c3

    .line 190
    :cond_1be
    new-instance v8, Lio/nekohasekai/sagernet/ui/ConnectionCard;

    invoke-direct {v8, v1}, Lio/nekohasekai/sagernet/ui/ConnectionCard;-><init>(Landroid/content/Context;)V

    :goto_1c3
    iput-object v8, v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->connectionCard:Lio/nekohasekai/sagernet/ui/ConnectionCard;

    if-eqz v8, :cond_1e9

    .line 192
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v7}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->preferredHeight()I

    move-result v7

    const/16 v12, 0x30

    const/4 v13, -0x1

    invoke-direct {v10, v13, v7, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/high16 v7, 0x41800000    # 16.0f

    .line 193
    invoke-direct {v0, v7}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v12

    const/high16 v13, 0x40c00000    # 6.0f

    invoke-direct {v0, v13}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v14

    invoke-direct {v0, v7}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v13

    invoke-virtual {v10, v12, v14, v13, v11}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 194
    invoke-virtual {v0, v8, v10}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    :cond_1e9
    new-instance v7, Lio/nekohasekai/sagernet/ui/AiRoutingCard;

    invoke-direct {v7, v1}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->aiCard:Lio/nekohasekai/sagernet/ui/AiRoutingCard;

    .line 197
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v10, 0x430c0000    # 140.0f

    invoke-direct {v0, v10}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v12

    const/high16 v13, 0x42a00000    # 80.0f

    invoke-direct {v0, v13}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v14

    const/16 v9, 0x33

    invoke-direct {v8, v12, v14, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/high16 v12, 0x41800000    # 16.0f

    .line 198
    invoke-direct {v0, v12}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v14

    const/high16 v15, 0x434e0000    # 206.0f

    invoke-direct {v0, v15}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v15

    invoke-direct {v0, v12}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v11

    const/high16 v12, 0x40c00000    # 6.0f

    invoke-direct {v0, v12}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v12

    invoke-virtual {v8, v14, v15, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 199
    invoke-virtual {v0, v7, v8}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    new-instance v8, Lio/nekohasekai/sagernet/ui/AiRoutingCard;

    invoke-direct {v8, v1, v5}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;-><init>(Landroid/content/Context;Z)V

    iput-object v8, v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->telegramCard:Lio/nekohasekai/sagernet/ui/AiRoutingCard;

    .line 201
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v10}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v10

    invoke-direct {v0, v13}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v12

    invoke-direct {v11, v10, v12, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v8, v11}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    new-instance v9, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$4;

    invoke-direct {v9, v0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$4;-><init>(Lio/nekohasekai/sagernet/ui/TrafficDashboardView;)V

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const/16 v6, 0x8

    if-eqz v2, :cond_2a7

    .line 207
    invoke-virtual {v0, v3}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x0

    .line 208
    invoke-virtual {v0, v2}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->setClipChildren(Z)V

    .line 209
    invoke-virtual {v7, v6}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->setVisibility(I)V

    .line 210
    invoke-virtual {v8, v6}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->setVisibility(I)V

    const/4 v13, -0x1

    .line 211
    invoke-virtual {v4, v13}, Landroid/widget/LinearLayout;->setId(I)V

    .line 212
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 213
    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/ThemePalette;->control(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v3, 0x3f800000    # 1.0f

    .line 214
    invoke-direct {v0, v3}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v3

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/ThemePalette;->border(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v2, v3, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    const/high16 v1, 0x41b00000    # 22.0f

    .line 215
    invoke-direct {v0, v1}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 216
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 217
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setClipToOutline(Z)V

    const/high16 v1, 0x40a00000    # 5.0f

    .line 218
    invoke-direct {v0, v1}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setElevation(F)V

    .line 219
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v7, 0x41800000    # 16.0f

    .line 220
    invoke-direct {v0, v7}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-direct {v0, v3}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v5

    invoke-direct {v0, v7}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v6

    invoke-direct {v0, v3}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v3

    invoke-virtual {v1, v2, v5, v6, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 221
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2eb

    .line 223
    :cond_2a7
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 225
    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 226
    invoke-virtual {v2, v5}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->setClipToPadding(Z)V

    invoke-virtual {v2, v5}, Landroid/widget/ScrollView;->setNestedScrollingEnabled(Z)V

    .line 227
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->scrollContent:Landroid/widget/FrameLayout;

    .line 228
    :goto_2c0
    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2d7

    invoke-virtual {v0, v3}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->removeView(Landroid/view/View;)V

    iget-object v5, v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->scrollContent:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2c0

    .line 229
    :cond_2d7
    iget-object v1, v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->scrollContent:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v13, -0x1

    invoke-direct {v3, v13, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v13, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    :goto_2eb
    new-instance v1, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$5;

    invoke-direct {v1, v0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$5;-><init>(Lio/nekohasekai/sagernet/ui/TrafficDashboardView;)V

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 233
    new-instance v1, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$6;

    invoke-direct {v1, v0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$6;-><init>(Lio/nekohasekai/sagernet/ui/TrafficDashboardView;)V

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic access$002(Lio/nekohasekai/sagernet/ui/TrafficDashboardView;Z)Z
    .registers 2

    .line 20
    iput-boolean p1, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->refreshScheduled:Z

    return p1
.end method

.method static synthetic access$100(Lio/nekohasekai/sagernet/ui/TrafficDashboardView;)Z
    .registers 1

    .line 20
    iget-boolean p0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->homeMode:Z

    return p0
.end method

.method static synthetic access$200(Lio/nekohasekai/sagernet/ui/TrafficDashboardView;)V
    .registers 1

    .line 20
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->render()V

    return-void
.end method

.method static synthetic access$300(Lio/nekohasekai/sagernet/ui/TrafficDashboardView;)Landroid/os/Handler;
    .registers 1

    .line 20
    iget-object p0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method private applyHeaderTheme()V
    .registers 4

    .line 310
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/ThemePalette;->control(Landroid/content/Context;)I

    move-result v0

    .line 311
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/JJGlassToolbar;->matteTextColor(Landroid/content/Context;)I

    move-result v1

    .line 312
    iget-boolean v2, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->headerThemeApplied:Z

    if-eqz v2, :cond_1c

    iget v2, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->headerColor:I

    if-ne v0, v2, :cond_1c

    iget v2, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->headerTextColor:I

    if-eq v1, v2, :cond_47

    .line 313
    :cond_1c
    iput v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->headerColor:I

    .line 314
    iput v1, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->headerTextColor:I

    const/4 v1, 0x1

    .line 315
    iput-boolean v1, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->headerThemeApplied:Z

    .line 316
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dashboardCard:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 317
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dashboardCard:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v1}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v1

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lio/nekohasekai/sagernet/ui/ThemePalette;->border(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 320
    :cond_47
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dashboardCard:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->tintHeader(Landroid/view/View;)V

    return-void
.end method

.method private applyTopInset()V
    .registers 5

    .line 343
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->homeMode:Z

    if-eqz v0, :cond_8

    .line 344
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->applyHeaderTheme()V

    return-void

    .line 347
    :cond_8
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->refreshAppearance()V

    .line 348
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->positionAiCard()V

    .line 349
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-nez v0, :cond_15

    goto :goto_4c

    .line 351
    :cond_15
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_26

    .line 352
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->top:I

    goto :goto_2a

    .line 353
    :cond_26
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    .line 354
    :goto_2a
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dashboardCard:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_4c

    .line 355
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/FrameLayout$LayoutParams;

    if-nez v2, :cond_37

    goto :goto_4c

    .line 356
    :cond_37
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 357
    iget v3, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->baseTopMargin:I

    add-int/2addr v3, v0

    .line 358
    iget v0, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-eq v0, v3, :cond_49

    .line 359
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 360
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 362
    :cond_49
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->positionAiCard()V

    :cond_4c
    :goto_4c
    return-void
.end method

.method private dp(F)I
    .registers 3

    .line 445
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

    .line 442
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

    .line 87
    move-object v0, p0

    check-cast v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0a02ba

    .line 88
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0177

    .line 89
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 90
    new-instance v3, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;-><init>(Landroid/content/Context;Z)V

    .line 91
    new-instance p0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->homeHeader:Ljava/lang/ref/WeakReference;

    .line 92
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->homeHeight()I

    move-result v5

    invoke-direct {p0, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 93
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v0, v3, v4, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 94
    new-instance p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$0;

    invoke-direct {p0, v1, v3, v2}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$0;-><init>(Landroid/view/View;Lio/nekohasekai/sagernet/ui/TrafficDashboardView;Landroid/view/View;)V

    .line 109
    new-instance v4, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$2;

    invoke-direct {v4, p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$2;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 110
    new-instance v1, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$3;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$3;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 111
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 112
    sget-object p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->homeStats:Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;

    if-eqz p0, :cond_52

    invoke-virtual {v3, p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->update(Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;)V

    :cond_52
    return-void
.end method

.method static synthetic lambda$installHome$0(Landroid/view/View;Lio/nekohasekai/sagernet/ui/TrafficDashboardView;Landroid/view/View;)V
    .registers 6

    .line 95
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    .line 96
    invoke-virtual {p1}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 97
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-eq v1, p0, :cond_13

    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1, v0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    :cond_13
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 99
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 103
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-eq v2, p0, :cond_28

    iput p0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    :cond_28
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result p0

    invoke-direct {p1}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->homeHeight()I

    move-result v0

    const/high16 v1, 0x41400000    # 12.0f

    invoke-direct {p1, v1}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result p1

    add-int/2addr v0, p1

    .line 105
    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 104
    invoke-virtual {p2, p0, v0, p1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 106
    move-object p0, p2

    check-cast p0, Landroid/view/ViewGroup;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 107
    invoke-virtual {p2, p1}, Landroid/view/View;->setClipToOutline(Z)V

    return-void
.end method

.method static synthetic lambda$installHome$1(Ljava/lang/Runnable;Landroid/view/View;IIIIIIII)V
    .registers 10

    .line 109
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic lambda$installHome$2(Ljava/lang/Runnable;Landroid/view/View;IIIIIIII)V
    .registers 10

    .line 110
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private positionAiCard()V
    .registers 11

    .line 366
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->homeMode:Z

    if-nez v0, :cond_134

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->getWidth()I

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_134

    .line 367
    :cond_c
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    const/high16 v1, 0x40c00000    # 6.0f

    .line 368
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

    .line 369
    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->rankingCard:Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;

    const/high16 v4, 0x41400000    # 12.0f

    if-eqz v3, :cond_49

    .line 370
    invoke-virtual {v3}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 371
    iget-object v5, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->rankingCard:Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;

    invoke-virtual {v5}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->preferredHeight()I

    move-result v5

    .line 372
    iget v6, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-ne v6, v1, :cond_3a

    iget v6, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eq v6, v5, :cond_43

    .line 373
    :cond_3a
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 374
    iget-object v6, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->rankingCard:Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;

    invoke-virtual {v6, v3}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 376
    :cond_43
    invoke-direct {p0, v4}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v3

    add-int/2addr v5, v3

    add-int/2addr v1, v5

    .line 378
    :cond_49
    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->connectionCard:Lio/nekohasekai/sagernet/ui/ConnectionCard;

    if-eqz v3, :cond_70

    .line 379
    invoke-virtual {v3}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 380
    iget-object v5, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->rankingCard:Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;

    invoke-virtual {v5}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->preferredHeight()I

    move-result v5

    .line 381
    iget v6, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-ne v6, v1, :cond_61

    iget v6, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eq v6, v5, :cond_6a

    .line 382
    :cond_61
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 383
    iget-object v6, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->connectionCard:Lio/nekohasekai/sagernet/ui/ConnectionCard;

    invoke-virtual {v6, v3}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 385
    :cond_6a
    invoke-direct {p0, v4}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v3

    add-int/2addr v5, v3

    add-int/2addr v1, v5

    .line 387
    :cond_70
    invoke-direct {p0, v4}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v3

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->getWidth()I

    move-result v4

    const/high16 v5, 0x42000000    # 32.0f

    invoke-direct {p0, v5}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v5

    sub-int/2addr v4, v5

    .line 388
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

    if-ge v4, v5, :cond_9b

    const/4 v5, 0x1

    goto :goto_9c

    :cond_9b
    const/4 v5, 0x0

    :goto_9c
    if-eqz v5, :cond_9f

    goto :goto_a2

    :cond_9f
    sub-int/2addr v4, v3

    .line 389
    div-int/lit8 v4, v4, 0x2

    .line 390
    :goto_a2
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

    .line 391
    iget-object v7, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->aiCard:Lio/nekohasekai/sagernet/ui/AiRoutingCard;

    invoke-virtual {v7}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 392
    iget v8, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/high16 v9, 0x41800000    # 16.0f

    if-ne v8, v4, :cond_ce

    iget v8, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v8, v6, :cond_ce

    iget v8, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-eq v8, v1, :cond_df

    :cond_ce
    iput v4, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v6, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-direct {p0, v9}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v8

    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v1, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v8, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->aiCard:Lio/nekohasekai/sagernet/ui/AiRoutingCard;

    invoke-virtual {v8, v7}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_df
    if-eqz v5, :cond_e3

    add-int/2addr v1, v6

    add-int/2addr v1, v3

    :cond_e3
    if-eqz v5, :cond_ea

    .line 393
    invoke-direct {p0, v9}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v3

    goto :goto_f0

    :cond_ea
    invoke-direct {p0, v9}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v5

    add-int/2addr v5, v4

    add-int/2addr v3, v5

    .line 394
    :goto_f0
    iget-object v5, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->telegramCard:Lio/nekohasekai/sagernet/ui/AiRoutingCard;

    invoke-virtual {v5}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 395
    iget v7, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-ne v7, v4, :cond_108

    iget v7, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v7, v6, :cond_108

    iget v7, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-ne v7, v1, :cond_108

    iget v7, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    if-eq v7, v3, :cond_115

    :cond_108
    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->telegramCard:Lio/nekohasekai/sagernet/ui/AiRoutingCard;

    invoke-virtual {v3, v5}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 396
    :cond_115
    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->scrollContent:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_134

    if-nez v0, :cond_11c

    goto :goto_120

    :cond_11c
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    :goto_120
    add-int/2addr v1, v6

    invoke-direct {p0, v9}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v0

    add-int/2addr v1, v0

    add-int/2addr v1, v2

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->scrollContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMinimumHeight()I

    move-result v0

    if-eq v0, v1, :cond_134

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->scrollContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    :cond_134
    :goto_134
    return-void
.end method

.method private rateSection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;
    .registers 12

    .line 412
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 413
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x11

    .line 414
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v6, 0x0

    const v7, 0x7f0a016a

    const/high16 v5, 0x41300000    # 11.0f

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .line 415
    invoke-direct/range {v2 .. v7}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->text(Landroid/content/Context;Ljava/lang/String;FZI)Landroid/widget/TextView;

    move-result-object p1

    move-object v2, v3

    .line 416
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->wrapCentered()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v5, 0x1

    const v6, 0x7f0a0167

    const/high16 v4, 0x41b00000    # 22.0f

    move-object v1, p0

    move-object v3, p3

    .line 417
    invoke-direct/range {v1 .. v6}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->text(Landroid/content/Context;Ljava/lang/String;FZI)Landroid/widget/TextView;

    move-result-object p1

    .line 418
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->wrapCentered()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    const/high16 p3, 0x40e00000    # 7.0f

    .line 419
    invoke-direct {p0, p3}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result p3

    iput p3, p2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 420
    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public static refreshHomeTheme()V
    .registers 1

    .line 76
    sget-object v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->homeHeader:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;

    if-eqz v0, :cond_d

    .line 77
    invoke-direct {v0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->applyHeaderTheme()V

    :cond_d
    return-void
.end method

.method private render()V
    .registers 12

    .line 324
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->homeMode:Z

    if-eqz v0, :cond_c7

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->isTransitioning(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto/16 :goto_c7

    .line 325
    :cond_c
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->applyHeaderTheme()V

    .line 326
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/LifetimeTraffic;->cachedRead(Landroid/content/Context;)J

    move-result-wide v0

    .line 327
    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->totalValue:Landroid/widget/TextView;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->setValue(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->latestStats:Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_2c

    move-wide v3, v1

    goto :goto_34

    :cond_2c
    invoke-virtual {v0}, Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;->getTxTotal()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 329
    :goto_34
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->latestStats:Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;

    if-nez v0, :cond_3a

    move-wide v5, v1

    goto :goto_42

    :cond_3a
    invoke-virtual {v0}, Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;->getRxTotal()J

    move-result-wide v5

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    :goto_42
    const-wide v7, 0x7fffffffffffffffL

    sub-long v9, v7, v3

    cmp-long v0, v9, v5

    if-gez v0, :cond_4e

    goto :goto_50

    :cond_4e
    add-long v7, v3, v5

    .line 332
    :goto_50
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->sessionValue:Landroid/widget/TextView;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v7, v8}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->setValue(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->latestStats:Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;

    if-eqz v0, :cond_71

    .line 335
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->lastUpdateTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x9c4

    cmp-long v0, v3, v5

    if-lez v0, :cond_6f

    goto :goto_71

    :cond_6f
    const/4 v0, 0x0

    goto :goto_72

    :cond_71
    :goto_71
    const/4 v0, 0x1

    :goto_72
    if-eqz v0, :cond_76

    move-wide v3, v1

    goto :goto_80

    .line 336
    :cond_76
    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->latestStats:Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;

    invoke-virtual {v3}, Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;->getTxRateProxy()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    :goto_80
    if-eqz v0, :cond_83

    goto :goto_8d

    .line 337
    :cond_83
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->latestStats:Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;->getRxRateProxy()J

    move-result-wide v5

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 338
    :goto_8d
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

    .line 339
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

    :cond_c7
    :goto_c7
    return-void
.end method

.method private scheduleRefresh()V
    .registers 5

    .line 266
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->refreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 267
    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->refreshScheduled:Z

    .line 268
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

    .line 269
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->render()V

    const/4 v0, 0x1

    .line 270
    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->refreshScheduled:Z

    .line 271
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->refreshRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2f
    return-void
.end method

.method private static setValue(Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 3

    .line 306
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_d
    return-void
.end method

.method private styleRoutingCard(Landroid/view/View;)V
    .registers 2

    .line 72
    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/UiComponents;->routingCard(Landroid/view/View;)V

    return-void
.end method

.method private text(Landroid/content/Context;Ljava/lang/String;FZI)Landroid/widget/TextView;
    .registers 7

    .line 425
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 426
    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setId(I)V

    const/16 p1, 0x11

    .line 427
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 428
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p4, :cond_16

    const p1, -0xebebea

    goto :goto_19

    :cond_16
    const p1, -0x75756e

    .line 429
    :goto_19
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 430
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 p1, 0x1

    .line 431
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    const/4 p1, 0x0

    .line 432
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    if-eqz p4, :cond_3d

    .line 433
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

    .line 400
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_25

    .line 401
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    .line 402
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

    .line 403
    :goto_1b
    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v2

    if-eq v2, v1, :cond_34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_34

    .line 404
    :cond_25
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-nez v0, :cond_34

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/ThemePalette;->border(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 405
    :cond_34
    :goto_34
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4b

    .line 406
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 407
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

    .line 81
    sput-object p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->homeStats:Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;

    .line 82
    sget-object v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->homeHeader:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;

    if-eqz v0, :cond_f

    .line 83
    invoke-virtual {v0, p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->update(Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;)V

    :cond_f
    return-void
.end method

.method private wrapCentered()Landroid/widget/LinearLayout$LayoutParams;
    .registers 3

    .line 438
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method synthetic lambda$new$3$io-nekohasekai-sagernet-ui-TrafficDashboardView(Landroid/view/View;IIIIIIII)V
    .registers 10

    .line 202
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->positionAiCard()V

    return-void
.end method

.method synthetic lambda$new$4$io-nekohasekai-sagernet-ui-TrafficDashboardView(Landroid/view/View;IIIIIIII)V
    .registers 10

    .line 232
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->applyTopInset()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .line 243
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 244
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->scheduleRefresh()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .line 248
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->refreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 249
    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->refreshScheduled:Z

    .line 250
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 3

    .line 254
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_f

    .line 255
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->scheduleRefresh()V

    return-void

    .line 256
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

    .line 260
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    .line 261
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->handler:Landroid/os/Handler;

    if-eqz p1, :cond_f

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->refreshRunnable:Ljava/lang/Runnable;

    if-nez p1, :cond_c

    goto :goto_f

    .line 262
    :cond_c
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->scheduleRefresh()V

    :cond_f
    :goto_f
    return-void
.end method

.method public refreshAppearance()V
    .registers 2

    .line 62
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->homeMode:Z

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->applyHeaderTheme()V

    return-void

    .line 64
    :cond_8
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/JJGlassToolbar;->matteTextColor(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->headerTextColor:I

    .line 65
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/UiComponents;->refresh(Landroid/view/View;)V

    .line 66
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->aiCard:Lio/nekohasekai/sagernet/ui/AiRoutingCard;

    invoke-direct {p0, v0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->styleRoutingCard(Landroid/view/View;)V

    .line 67
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->telegramCard:Lio/nekohasekai/sagernet/ui/AiRoutingCard;

    invoke-direct {p0, v0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->styleRoutingCard(Landroid/view/View;)V

    return-void
.end method

.method public update(Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;)V
    .registers 4

    .line 237
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->latestStats:Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;

    .line 238
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->lastUpdateTime:J

    .line 239
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
