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

.field private headerTintApplied:Z

.field private final homeMode:Z

.field private final ipQualityCard:Lio/nekohasekai/sagernet/ui/IpQualityCard;

.field private lastUpdateTime:J

.field private latestStats:Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;

.field private final rankingCard:Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;

.field private final refreshRunnable:Ljava/lang/Runnable;

.field private refreshScheduled:Z

.field private scrollContent:Landroid/widget/FrameLayout;

.field private final sessionValue:Landroid/widget/TextView;

.field private final settledRender:Ljava/lang/Runnable;

.field private final speedTestCard:Lio/nekohasekai/sagernet/ui/SpeedTestCard;

.field private final telegramCard:Lio/nekohasekai/sagernet/ui/AiRoutingCard;

.field private final totalValue:Landroid/widget/TextView;

.field private final uploadSection:Landroid/widget/LinearLayout;

.field private final uploadValue:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 38
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->homeHeader:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 167
    invoke-direct {p0, p1, v0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Z)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v6, p2

    .line 171
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 172
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->handler:Landroid/os/Handler;

    .line 173
    new-instance v2, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$4;

    invoke-direct {v2, v0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$4;-><init>(Lio/nekohasekai/sagernet/ui/TrafficDashboardView;)V

    iput-object v2, v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->refreshRunnable:Ljava/lang/Runnable;

    .line 184
    new-instance v2, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$5;

    invoke-direct {v2, v0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$5;-><init>(Lio/nekohasekai/sagernet/ui/TrafficDashboardView;)V

    iput-object v2, v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->settledRender:Ljava/lang/Runnable;

    .line 190
    iput-boolean v6, v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->homeMode:Z

    const/4 v7, -0x1

    .line 191
    invoke-virtual {v0, v7}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->setBackgroundColor(I)V

    .line 192
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 193
    iput-object v8, v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dashboardCard:Landroid/widget/LinearLayout;

    const v2, 0x7f0a0169

    .line 194
    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->setId(I)V

    const/4 v9, 0x1

    .line 195
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v10, 0x11

    .line 196
    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    const v2, 0x7f08008d

    .line 197
    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const/high16 v11, 0x41a00000    # 20.0f

    .line 198
    invoke-static {v8, v11}, Lio/nekohasekai/sagernet/ui/CardLight;->bind(Landroid/view/View;F)V

    const/high16 v2, 0x41900000    # 18.0f

    .line 199
    invoke-direct {v0, v2}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v3

    const/high16 v4, 0x41400000    # 12.0f

    invoke-direct {v0, v4}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v5

    invoke-direct {v0, v2}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v2

    invoke-direct {v0, v4}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v4

    invoke-virtual {v8, v3, v5, v2, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 200
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v12, 0x41800000    # 16.0f

    if-eqz v6, :cond_70

    invoke-direct {v0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->homeHeight()I

    move-result v3

    invoke-direct {v0, v12}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    goto :goto_76

    :cond_70
    const/high16 v3, 0x433c0000    # 188.0f

    invoke-direct {v0, v3}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v3

    :goto_76
    const/16 v13, 0x30

    invoke-direct {v2, v7, v3, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/high16 v14, 0x40c00000    # 6.0f

    .line 201
    invoke-direct {v0, v14}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v3

    iput v3, v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->baseTopMargin:I

    .line 202
    invoke-direct {v0, v12}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v3

    iget v4, v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->baseTopMargin:I

    invoke-direct {v0, v12}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v5

    invoke-direct {v0, v14}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v15

    invoke-virtual {v2, v3, v4, v5, v15}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 203
    invoke-virtual {v0, v8, v2}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    new-instance v15, Landroid/widget/LinearLayout;

    invoke-direct {v15, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 205
    invoke-virtual {v15, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 206
    invoke-virtual {v15, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 207
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const v4, 0x3f866666    # 1.05f

    invoke-direct {v3, v7, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v8, v15, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v4, 0x41300000    # 11.0f

    const/high16 v5, 0x41980000    # 19.0f

    const/4 v3, 0x0

    .line 208
    const-string v2, "\u7d2f\u8ba1\u4ee3\u7406"

    const/16 v16, 0x0

    const-string v3, "0 B"

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v5}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->rateSection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FF)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 209
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->totalValue:Landroid/widget/TextView;

    .line 210
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const v4, 0x3f6b851f    # 0.92f

    invoke-direct {v3, v11, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v15, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 212
    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/ThemePalette;->border(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 213
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v4}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v5

    const/high16 v4, 0x41e00000    # 28.0f

    invoke-direct {v0, v4}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v4

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x41000000    # 8.0f

    .line 214
    invoke-direct {v0, v4}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 215
    invoke-direct {v0, v4}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 216
    invoke-virtual {v15, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v2, 0x41000000    # 8.0f

    const/high16 v4, 0x41400000    # 12.0f

    const/high16 v5, 0x41e00000    # 28.0f

    const/high16 v3, 0x41000000    # 8.0f

    .line 217
    const-string v2, "\u672c\u6b21\u4ee3\u7406"

    const/high16 v17, 0x41000000    # 8.0f

    const-string v3, "0 B"

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v14, 0x41000000    # 8.0f

    invoke-direct/range {v0 .. v5}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->rateSection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FF)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 218
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->sessionValue:Landroid/widget/TextView;

    .line 219
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const v4, 0x3f8a3d71    # 1.08f

    invoke-direct {v3, v11, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v15, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 221
    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/ThemePalette;->border(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 222
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v12}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v4

    invoke-direct {v3, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    new-instance v15, Landroid/widget/LinearLayout;

    invoke-direct {v15, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 224
    invoke-virtual {v15, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 225
    invoke-virtual {v15, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 226
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v8, v15, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v4, 0x41300000    # 11.0f

    const/high16 v5, 0x41880000    # 17.0f

    .line 227
    const-string v2, "\u2191 \u4e0a\u884c\u901f\u7387"

    const-string v3, "0 B/s"

    invoke-direct/range {v0 .. v5}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->rateSection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FF)Landroid/widget/LinearLayout;

    move-result-object v10

    .line 228
    iput-object v10, v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->uploadSection:Landroid/widget/LinearLayout;

    .line 229
    invoke-virtual {v10, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 230
    iput-object v2, v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->uploadValue:Landroid/widget/TextView;

    .line 231
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v11, v7, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v15, v10, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 233
    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/ThemePalette;->border(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 234
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v12}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v5

    const/high16 v13, 0x41d00000    # 26.0f

    invoke-direct {v0, v13}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v13

    invoke-direct {v4, v5, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 235
    invoke-direct {v0, v14}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 236
    invoke-direct {v0, v14}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 237
    invoke-virtual {v15, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v4, 0x41300000    # 11.0f

    const/high16 v5, 0x41880000    # 17.0f

    move-object v3, v2

    .line 238
    const-string v2, "\u2193 \u4e0b\u884c\u901f\u7387"

    move-object v13, v3

    const-string v3, "0 B/s"

    invoke-direct/range {v0 .. v5}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->rateSection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FF)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 239
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 240
    iput-object v3, v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->downloadValue:Landroid/widget/TextView;

    .line 241
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v11, v7, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v15, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v2, 0x41880000    # 17.0f

    .line 242
    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 243
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v2, 0x0

    if-eqz v6, :cond_1c6

    move-object v3, v2

    goto :goto_1cb

    .line 244
    :cond_1c6
    new-instance v3, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;

    invoke-direct {v3, v1}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;-><init>(Landroid/content/Context;)V

    .line 245
    :goto_1cb
    iput-object v3, v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->rankingCard:Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;

    if-eqz v3, :cond_1f0

    .line 247
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v3}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->preferredHeight()I

    move-result v5

    const/16 v12, 0x30

    invoke-direct {v4, v7, v5, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/high16 v5, 0x41800000    # 16.0f

    .line 248
    invoke-direct {v0, v5}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v12

    const/high16 v13, 0x40c00000    # 6.0f

    invoke-direct {v0, v13}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v15

    invoke-direct {v0, v5}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v13

    invoke-virtual {v4, v12, v15, v13, v11}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 249
    invoke-virtual {v0, v3, v4}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1f0
    if-eqz v6, :cond_1f4

    move-object v4, v2

    goto :goto_1f9

    .line 251
    :cond_1f4
    new-instance v4, Lio/nekohasekai/sagernet/ui/ConnectionCard;

    invoke-direct {v4, v1}, Lio/nekohasekai/sagernet/ui/ConnectionCard;-><init>(Landroid/content/Context;)V

    .line 252
    :goto_1f9
    iput-object v4, v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->connectionCard:Lio/nekohasekai/sagernet/ui/ConnectionCard;

    if-eqz v4, :cond_21e

    .line 254
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v3}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->preferredHeight()I

    move-result v12

    const/16 v13, 0x30

    invoke-direct {v5, v7, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/high16 v12, 0x41800000    # 16.0f

    .line 255
    invoke-direct {v0, v12}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v13

    const/high16 v15, 0x40c00000    # 6.0f

    invoke-direct {v0, v15}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v14

    invoke-direct {v0, v12}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v15

    invoke-virtual {v5, v13, v14, v15, v11}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 256
    invoke-virtual {v0, v4, v5}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_21e
    if-eqz v6, :cond_222

    move-object v4, v2

    goto :goto_227

    .line 258
    :cond_222
    new-instance v4, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;

    invoke-direct {v4, v1}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;-><init>(Landroid/content/Context;)V

    .line 259
    :goto_227
    iput-object v4, v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->globeCard:Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;

    if-eqz v4, :cond_24c

    .line 261
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v3}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->preferredHeight()I

    move-result v3

    const/16 v13, 0x30

    invoke-direct {v5, v7, v3, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/high16 v12, 0x41800000    # 16.0f

    .line 262
    invoke-direct {v0, v12}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v3

    const/high16 v13, 0x40c00000    # 6.0f

    invoke-direct {v0, v13}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v14

    invoke-direct {v0, v12}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v13

    invoke-virtual {v5, v3, v14, v13, v11}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 263
    invoke-virtual {v0, v4, v5}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    :cond_24c
    new-instance v3, Lio/nekohasekai/sagernet/ui/AiRoutingCard;

    invoke-direct {v3, v1}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;-><init>(Landroid/content/Context;)V

    .line 266
    iput-object v3, v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->aiCard:Lio/nekohasekai/sagernet/ui/AiRoutingCard;

    .line 267
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v5, 0x430c0000    # 140.0f

    invoke-direct {v0, v5}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v12

    const/high16 v13, 0x42a00000    # 80.0f

    invoke-direct {v0, v13}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v14

    const/16 v15, 0x33

    invoke-direct {v4, v12, v14, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/high16 v12, 0x41800000    # 16.0f

    .line 268
    invoke-direct {v0, v12}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v14

    const/high16 v7, 0x434e0000    # 206.0f

    invoke-direct {v0, v7}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v7

    invoke-direct {v0, v12}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v11

    const/high16 v12, 0x40c00000    # 6.0f

    invoke-direct {v0, v12}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v12

    invoke-virtual {v4, v14, v7, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 269
    invoke-virtual {v0, v3, v4}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    new-instance v4, Lio/nekohasekai/sagernet/ui/AiRoutingCard;

    invoke-direct {v4, v1, v9}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;-><init>(Landroid/content/Context;Z)V

    .line 271
    iput-object v4, v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->telegramCard:Lio/nekohasekai/sagernet/ui/AiRoutingCard;

    .line 272
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v11

    invoke-direct {v0, v13}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v12

    invoke-direct {v7, v11, v12, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v4, v7}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v6, :cond_29d

    move-object v7, v2

    goto :goto_2a2

    .line 273
    :cond_29d
    new-instance v7, Lio/nekohasekai/sagernet/ui/SpeedTestCard;

    invoke-direct {v7, v1}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;-><init>(Landroid/content/Context;)V

    .line 274
    :goto_2a2
    iput-object v7, v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->speedTestCard:Lio/nekohasekai/sagernet/ui/SpeedTestCard;

    if-eqz v7, :cond_2b6

    .line 276
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v12

    invoke-direct {v0, v13}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v14

    invoke-direct {v11, v12, v14, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v7, v11}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2b6
    if-eqz v6, :cond_2ba

    move-object v7, v2

    goto :goto_2bf

    .line 278
    :cond_2ba
    new-instance v7, Lio/nekohasekai/sagernet/ui/IpQualityCard;

    invoke-direct {v7, v1}, Lio/nekohasekai/sagernet/ui/IpQualityCard;-><init>(Landroid/content/Context;)V

    .line 279
    :goto_2bf
    iput-object v7, v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->ipQualityCard:Lio/nekohasekai/sagernet/ui/IpQualityCard;

    if-eqz v7, :cond_2d3

    .line 281
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v5

    invoke-direct {v0, v13}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v12

    invoke-direct {v11, v5, v12, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v7, v11}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    :cond_2d3
    new-instance v5, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$6;

    invoke-direct {v5, v0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$6;-><init>(Lio/nekohasekai/sagernet/ui/TrafficDashboardView;)V

    invoke-virtual {v10, v5}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const/16 v5, 0x8

    if-eqz v6, :cond_33e

    .line 290
    invoke-virtual {v0, v2}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v11, 0x0

    .line 291
    invoke-virtual {v0, v11}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->setClipChildren(Z)V

    .line 292
    invoke-virtual {v3, v5}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->setVisibility(I)V

    .line 293
    invoke-virtual {v4, v5}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->setVisibility(I)V

    const/4 v2, -0x1

    .line 294
    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->setId(I)V

    .line 295
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 296
    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/ThemePalette;->control(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 297
    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/ThemePalette;->border(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v2, v11, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    const/high16 v1, 0x41a00000    # 20.0f

    .line 298
    invoke-direct {v0, v1}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 299
    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 300
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setClipToOutline(Z)V

    const/high16 v1, 0x40000000    # 2.0f

    .line 301
    invoke-direct {v0, v1}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setElevation(F)V

    .line 302
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v12, 0x41800000    # 16.0f

    .line 303
    invoke-direct {v0, v12}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v2

    const/high16 v14, 0x41000000    # 8.0f

    invoke-direct {v0, v14}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v3

    invoke-direct {v0, v12}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v4

    invoke-direct {v0, v14}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 304
    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_382

    .line 306
    :cond_33e
    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 307
    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 308
    invoke-virtual {v2, v9}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    const/4 v11, 0x0

    .line 309
    invoke-virtual {v2, v11}, Landroid/widget/ScrollView;->setClipToPadding(Z)V

    .line 310
    invoke-virtual {v2, v9}, Landroid/widget/ScrollView;->setNestedScrollingEnabled(Z)V

    .line 311
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->scrollContent:Landroid/widget/FrameLayout;

    .line 312
    :goto_357
    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_36e

    .line 313
    invoke-virtual {v0, v11}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 314
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 315
    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->removeView(Landroid/view/View;)V

    .line 316
    iget-object v4, v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->scrollContent:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_357

    .line 318
    :cond_36e
    iget-object v1, v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->scrollContent:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v3, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 319
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 321
    :goto_382
    new-instance v1, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$7;

    invoke-direct {v1, v0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$7;-><init>(Lio/nekohasekai/sagernet/ui/TrafficDashboardView;)V

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 327
    new-instance v1, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$8;

    invoke-direct {v1, v0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$8;-><init>(Lio/nekohasekai/sagernet/ui/TrafficDashboardView;)V

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic access$002(Lio/nekohasekai/sagernet/ui/TrafficDashboardView;Z)Z
    .registers 2

    .line 31
    iput-boolean p1, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->refreshScheduled:Z

    return p1
.end method

.method static synthetic access$100(Lio/nekohasekai/sagernet/ui/TrafficDashboardView;)Z
    .registers 1

    .line 31
    iget-boolean p0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->homeMode:Z

    return p0
.end method

.method static synthetic access$200(Lio/nekohasekai/sagernet/ui/TrafficDashboardView;)Landroid/os/Handler;
    .registers 1

    .line 31
    iget-object p0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method private applyHeaderTheme()V
    .registers 2

    const/4 v0, 0x0

    .line 468
    invoke-direct {p0, v0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->applyHeaderTheme(Z)V

    return-void
.end method

.method private applyHeaderTheme(Z)V
    .registers 6

    .line 472
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/ThemePalette;->control(Landroid/content/Context;)I

    move-result v0

    .line 473
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/JJGlassToolbar;->matteTextColor(Landroid/content/Context;)I

    move-result v1

    .line 474
    iget-boolean v2, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->headerThemeApplied:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1d

    iget v2, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->headerColor:I

    if-ne v0, v2, :cond_1d

    iget v2, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->headerTextColor:I

    if-eq v1, v2, :cond_44

    .line 475
    :cond_1d
    iput v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->headerColor:I

    .line 476
    iput v1, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->headerTextColor:I

    .line 477
    iput-boolean v3, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->headerThemeApplied:Z

    const/4 v1, 0x0

    .line 478
    iput-boolean v1, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->headerTintApplied:Z

    .line 479
    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dashboardCard:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 480
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dashboardCard:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lio/nekohasekai/sagernet/ui/ThemePalette;->border(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_44
    if-nez p1, :cond_4c

    .line 482
    iget-boolean p1, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->headerTintApplied:Z

    if-nez p1, :cond_4b

    goto :goto_4c

    :cond_4b
    return-void

    .line 483
    :cond_4c
    :goto_4c
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dashboardCard:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->tintHeader(Landroid/view/View;)V

    .line 484
    iput-boolean v3, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->headerTintApplied:Z

    return-void
.end method

.method private dp(F)I
    .registers 3

    .line 711
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

    .line 707
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
    .registers 8

    .line 117
    move-object v0, p0

    check-cast v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0a02ba

    .line 118
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0177

    .line 119
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 120
    new-instance v3, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;-><init>(Landroid/content/Context;Z)V

    .line 121
    new-instance p0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->homeHeader:Ljava/lang/ref/WeakReference;

    .line 122
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result p0

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v3}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->homeHeight()I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, p0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 123
    new-instance p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$1;

    invoke-direct {p0, v1, v3, v2}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$1;-><init>(Landroid/view/View;Lio/nekohasekai/sagernet/ui/TrafficDashboardView;Landroid/view/View;)V

    .line 129
    new-instance v4, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$2;

    invoke-direct {v4, p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$2;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 135
    new-instance v1, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$3;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$3;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 141
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 142
    sget-object p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->homeStats:Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;

    if-eqz p0, :cond_52

    .line 144
    invoke-virtual {v3, p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->update(Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;)V

    :cond_52
    return-void
.end method

.method static lambda$installHome$1(Landroid/view/View;Lio/nekohasekai/sagernet/ui/TrafficDashboardView;Landroid/view/View;)V
    .registers 6

    .line 149
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    .line 150
    invoke-virtual {p1}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 151
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-eq v1, p0, :cond_13

    .line 152
    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 153
    invoke-virtual {p1, v0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    :cond_13
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 156
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 157
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-eq v2, p0, :cond_28

    .line 158
    iput p0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 159
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    :cond_28
    invoke-direct {p1}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->homeHeight()I

    move-result p0

    const/high16 v0, 0x41400000    # 12.0f

    invoke-direct {p1, v0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result p1

    add-int/2addr p0, p1

    invoke-static {p2, p0}, Lio/nekohasekai/sagernet/ui/HomeInsets;->bind(Landroid/view/View;I)V

    .line 162
    move-object p0, p2

    check-cast p0, Landroid/view/ViewGroup;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 163
    invoke-virtual {p2, p1}, Landroid/view/View;->setClipToOutline(Z)V

    return-void
.end method

.method private positionAiCard()V
    .registers 13

    .line 541
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->homeMode:Z

    if-nez v0, :cond_1c1

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->getWidth()I

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_1c1

    .line 544
    :cond_c
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    const/high16 v1, 0x40c00000    # 6.0f

    .line 545
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

    .line 546
    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->rankingCard:Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;

    const/high16 v4, 0x41400000    # 12.0f

    if-eqz v3, :cond_49

    .line 548
    invoke-virtual {v3}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 549
    iget-object v5, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->rankingCard:Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;

    invoke-virtual {v5}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->preferredHeight()I

    move-result v5

    .line 550
    iget v6, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-ne v6, v1, :cond_3a

    iget v6, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eq v6, v5, :cond_43

    .line 551
    :cond_3a
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 552
    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 553
    iget-object v6, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->rankingCard:Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;

    invoke-virtual {v6, v3}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 555
    :cond_43
    invoke-direct {p0, v4}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v3

    add-int/2addr v5, v3

    add-int/2addr v1, v5

    .line 557
    :cond_49
    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->connectionCard:Lio/nekohasekai/sagernet/ui/ConnectionCard;

    if-eqz v3, :cond_70

    .line 559
    invoke-virtual {v3}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 560
    iget-object v5, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->rankingCard:Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;

    invoke-virtual {v5}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->preferredHeight()I

    move-result v5

    .line 561
    iget v6, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-ne v6, v1, :cond_61

    iget v6, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eq v6, v5, :cond_6a

    .line 562
    :cond_61
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 563
    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 564
    iget-object v6, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->connectionCard:Lio/nekohasekai/sagernet/ui/ConnectionCard;

    invoke-virtual {v6, v3}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 566
    :cond_6a
    invoke-direct {p0, v4}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v3

    add-int/2addr v5, v3

    add-int/2addr v1, v5

    .line 568
    :cond_70
    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->globeCard:Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;

    if-eqz v3, :cond_97

    .line 570
    invoke-virtual {v3}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 571
    iget-object v5, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->rankingCard:Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;

    invoke-virtual {v5}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->preferredHeight()I

    move-result v5

    .line 572
    iget v6, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-ne v6, v1, :cond_88

    iget v6, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eq v6, v5, :cond_91

    .line 573
    :cond_88
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 574
    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 575
    iget-object v6, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->globeCard:Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;

    invoke-virtual {v6, v3}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 577
    :cond_91
    invoke-direct {p0, v4}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v3

    add-int/2addr v5, v3

    add-int/2addr v1, v5

    .line 579
    :cond_97
    invoke-direct {p0, v4}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v3

    .line 580
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->getWidth()I

    move-result v4

    const/high16 v5, 0x42000000    # 32.0f

    invoke-direct {p0, v5}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v5

    sub-int/2addr v4, v5

    .line 581
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
    if-nez v5, :cond_c8

    sub-int/2addr v4, v3

    .line 583
    div-int/lit8 v4, v4, 0x2

    .line 585
    :cond_c8
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

    .line 586
    iget-object v7, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->aiCard:Lio/nekohasekai/sagernet/ui/AiRoutingCard;

    invoke-virtual {v7}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 587
    iget v8, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/high16 v9, 0x41800000    # 16.0f

    if-ne v8, v4, :cond_f4

    iget v8, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v8, v6, :cond_f4

    iget v8, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-eq v8, v1, :cond_105

    .line 588
    :cond_f4
    iput v4, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 589
    iput v6, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 590
    invoke-direct {p0, v9}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v8

    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 591
    iput v1, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 592
    iget-object v8, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->aiCard:Lio/nekohasekai/sagernet/ui/AiRoutingCard;

    invoke-virtual {v8, v7}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_105
    if-eqz v5, :cond_10b

    add-int v7, v1, v6

    add-int/2addr v7, v3

    goto :goto_10c

    :cond_10b
    move v7, v1

    .line 595
    :goto_10c
    invoke-direct {p0, v9}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v8

    if-nez v5, :cond_114

    add-int/2addr v8, v4

    add-int/2addr v8, v3

    .line 599
    :cond_114
    iget-object v10, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->telegramCard:Lio/nekohasekai/sagernet/ui/AiRoutingCard;

    invoke-virtual {v10}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 600
    iget v11, v10, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-ne v11, v4, :cond_12c

    iget v11, v10, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v11, v6, :cond_12c

    iget v11, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-ne v11, v7, :cond_12c

    iget v11, v10, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    if-eq v11, v8, :cond_139

    .line 601
    :cond_12c
    iput v4, v10, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 602
    iput v6, v10, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 603
    iput v7, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 604
    iput v8, v10, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 605
    iget-object v8, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->telegramCard:Lio/nekohasekai/sagernet/ui/AiRoutingCard;

    invoke-virtual {v8, v10}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_139
    if-eqz v5, :cond_13e

    add-int/2addr v7, v6

    add-int/2addr v7, v3

    goto :goto_141

    :cond_13e
    add-int/2addr v1, v6

    add-int v7, v1, v3

    .line 608
    :goto_141
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->speedTestCard:Lio/nekohasekai/sagernet/ui/SpeedTestCard;

    if-eqz v1, :cond_170

    .line 610
    invoke-virtual {v1}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 611
    iget v8, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-ne v8, v4, :cond_15f

    iget v8, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v8, v6, :cond_15f

    iget v8, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-ne v8, v7, :cond_15f

    iget v8, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-direct {p0, v9}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v10

    if-eq v8, v10, :cond_170

    .line 612
    :cond_15f
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 613
    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 614
    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 615
    invoke-direct {p0, v9}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v8

    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 616
    iget-object v8, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->speedTestCard:Lio/nekohasekai/sagernet/ui/SpeedTestCard;

    invoke-virtual {v8, v1}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_170
    if-eqz v5, :cond_174

    add-int/2addr v7, v6

    add-int/2addr v7, v3

    .line 622
    :cond_174
    invoke-direct {p0, v9}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v1

    if-nez v5, :cond_17c

    add-int/2addr v1, v4

    add-int/2addr v1, v3

    .line 626
    :cond_17c
    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->ipQualityCard:Lio/nekohasekai/sagernet/ui/IpQualityCard;

    if-eqz v3, :cond_1a3

    .line 628
    invoke-virtual {v3}, Lio/nekohasekai/sagernet/ui/IpQualityCard;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 629
    iget v5, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-ne v5, v4, :cond_196

    iget v5, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v5, v6, :cond_196

    iget v5, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-ne v5, v7, :cond_196

    iget v5, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    if-eq v5, v1, :cond_1a3

    .line 630
    :cond_196
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 631
    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 632
    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 633
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 634
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->ipQualityCard:Lio/nekohasekai/sagernet/ui/IpQualityCard;

    invoke-virtual {v1, v3}, Lio/nekohasekai/sagernet/ui/IpQualityCard;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 637
    :cond_1a3
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->scrollContent:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1c1

    add-int/2addr v7, v6

    .line 638
    invoke-direct {p0, v9}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result v1

    add-int/2addr v7, v1

    if-eqz v0, :cond_1b3

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    :cond_1b3
    add-int/2addr v7, v2

    .line 639
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->scrollContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMinimumHeight()I

    move-result v0

    if-eq v0, v7, :cond_1c1

    .line 640
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->scrollContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    :cond_1c1
    :goto_1c1
    return-void
.end method

.method private rateSection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;
    .registers 10

    const/high16 v4, 0x41400000    # 12.0f

    const/high16 v5, 0x41c00000    # 24.0f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 668
    invoke-direct/range {v0 .. v5}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->rateSection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FF)Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method private rateSection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FF)Landroid/widget/LinearLayout;
    .registers 14

    .line 672
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 673
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x11

    .line 674
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v6, 0x0

    const v7, 0x7f0a016a

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p4

    .line 675
    invoke-direct/range {v2 .. v7}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->text(Landroid/content/Context;Ljava/lang/String;FZI)Landroid/widget/TextView;

    move-result-object p1

    move-object v2, v3

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->wrapCentered()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v5, 0x1

    const v6, 0x7f0a0167

    move-object v1, p0

    move-object v3, p3

    move v4, p5

    .line 676
    invoke-direct/range {v1 .. v6}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->text(Landroid/content/Context;Ljava/lang/String;FZI)Landroid/widget/TextView;

    move-result-object p1

    .line 677
    invoke-static {p1, v3}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->setValue(Landroid/widget/TextView;Ljava/lang/String;)V

    const p2, -0x430a3d71    # -0.03f

    .line 678
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 679
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->wrapCentered()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    const/high16 p3, 0x40e00000    # 7.0f

    .line 680
    invoke-direct {p0, p3}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dp(F)I

    move-result p3

    iput p3, p2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 681
    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public static refreshHomeTheme()V
    .registers 2

    .line 102
    sget-object v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->homeHeader:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;

    if-eqz v0, :cond_e

    const/4 v1, 0x1

    .line 104
    invoke-direct {v0, v1}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->applyHeaderTheme(Z)V

    :cond_e
    return-void
.end method

.method private scheduleRefresh()V
    .registers 5

    .line 396
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->refreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 397
    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->refreshScheduled:Z

    .line 398
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

    .line 399
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->render()V

    const/4 v0, 0x1

    .line 400
    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->refreshScheduled:Z

    .line 401
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->refreshRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2f
    return-void
.end method

.method private static setValue(Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 6

    .line 446
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

    .line 449
    :cond_13
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 452
    :goto_19
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_21

    const/4 v1, -0x1

    goto :goto_2b

    .line 455
    :cond_21
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_42

    :goto_2b
    if-ltz v1, :cond_3e

    .line 462
    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const v3, 0x3f1eb852    # 0.62f

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v3, 0x21

    invoke-virtual {v0, v2, v1, p1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 464
    :cond_3e
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_19
.end method

.method private styleRoutingCard(Landroid/view/View;)V
    .registers 2

    .line 98
    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/UiComponents;->routingCard(Landroid/view/View;)V

    return-void
.end method

.method private text(Landroid/content/Context;Ljava/lang/String;FZI)Landroid/widget/TextView;
    .registers 7

    .line 686
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 687
    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setId(I)V

    const/16 p5, 0x11

    .line 688
    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setGravity(I)V

    .line 689
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p4, :cond_17

    .line 690
    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/ThemePalette;->text(Landroid/content/Context;)I

    move-result p1

    goto :goto_1b

    :cond_17
    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/ThemePalette;->secondary(Landroid/content/Context;)I

    move-result p1

    :goto_1b
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 691
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 p1, 0x1

    .line 692
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    const/4 p1, 0x0

    .line 693
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    if-eqz p4, :cond_3f

    .line 695
    const-string p2, "sans-serif-medium"

    invoke-static {p2, p1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const p1, -0x43333333    # -0.025f

    .line 696
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 697
    const-string p1, "tnum"

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setFontFeatureSettings(Ljava/lang/String;)V

    :cond_3f
    return-object v0
.end method

.method private tintHeader(Landroid/view/View;)V
    .registers 5

    .line 646
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_25

    .line 647
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    .line 648
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

    .line 649
    :goto_1b
    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v2

    if-eq v2, v1, :cond_44

    .line 650
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_44

    .line 652
    :cond_25
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-nez v0, :cond_44

    .line 653
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/ThemePalette;->border(Landroid/content/Context;)I

    move-result v0

    .line 654
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 655
    instance-of v2, v1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_41

    check-cast v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v1

    if-eq v1, v0, :cond_44

    .line 656
    :cond_41
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 659
    :cond_44
    :goto_44
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_5b

    .line 660
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 661
    :goto_4b
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_5b

    .line 662
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->tintHeader(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4b

    :cond_5b
    return-void
.end method

.method public static updateHome(Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;)V
    .registers 2

    .line 109
    sput-object p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->homeStats:Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;

    .line 110
    sget-object v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->homeHeader:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;

    if-eqz v0, :cond_f

    .line 112
    invoke-virtual {v0, p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->update(Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;)V

    :cond_f
    return-void
.end method

.method private wrapCentered()Landroid/widget/LinearLayout$LayoutParams;
    .registers 3

    .line 703
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public applyTopInset()V
    .registers 5

    .line 512
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->homeMode:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    .line 513
    invoke-direct {p0, v0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->applyHeaderTheme(Z)V

    return-void

    .line 516
    :cond_9
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->refreshAppearance()V

    .line 517
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->positionAiCard()V

    .line 518
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-nez v0, :cond_16

    goto :goto_4d

    .line 522
    :cond_16
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_27

    .line 523
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->top:I

    goto :goto_2b

    .line 525
    :cond_27
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    .line 527
    :goto_2b
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->dashboardCard:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_4d

    .line 528
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/FrameLayout$LayoutParams;

    if-nez v2, :cond_38

    goto :goto_4d

    .line 531
    :cond_38
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 532
    iget v3, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->baseTopMargin:I

    add-int/2addr v3, v0

    .line 533
    iget v0, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-eq v0, v3, :cond_4a

    .line 534
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 535
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 537
    :cond_4a
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->positionAiCard()V

    :cond_4d
    :goto_4d
    return-void
.end method

.method m58lambda$new$0$ionekohasekaisagernetuiTrafficDashboardView()V
    .registers 2

    .line 69
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_15

    .line 70
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->render()V

    :cond_15
    return-void
.end method

.method m59lambda$new$4$ionekohasekaisagernetuiTrafficDashboardView(Landroid/view/View;IIIIIIII)V
    .registers 10

    .line 337
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->positionAiCard()V

    return-void
.end method

.method m60lambda$new$5$ionekohasekaisagernetuiTrafficDashboardView(Landroid/view/View;IIIIIIII)V
    .registers 10

    .line 342
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->applyTopInset()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .line 355
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 356
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->scheduleRefresh()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .line 361
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DrawerWorkGate;->cancel(Landroid/view/View;)V

    .line 362
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->refreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 363
    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->refreshScheduled:Z

    .line 364
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->speedTestCard:Lio/nekohasekai/sagernet/ui/SpeedTestCard;

    if-eqz v0, :cond_14

    .line 366
    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->cancel()V

    .line 368
    :cond_14
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->ipQualityCard:Lio/nekohasekai/sagernet/ui/IpQualityCard;

    if-eqz v0, :cond_1b

    .line 370
    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/IpQualityCard;->cancel()V

    .line 372
    :cond_1b
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 3

    .line 377
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_f

    .line 378
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 379
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->scheduleRefresh()V

    return-void

    .line 382
    :cond_f
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->refreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 383
    iput-boolean p1, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->refreshScheduled:Z

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 2

    .line 388
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    .line 389
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->handler:Landroid/os/Handler;

    if-eqz p1, :cond_f

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->refreshRunnable:Ljava/lang/Runnable;

    if-nez p1, :cond_c

    goto :goto_f

    .line 392
    :cond_c
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->scheduleRefresh()V

    :cond_f
    :goto_f
    return-void
.end method

.method public refreshAppearance()V
    .registers 2

    .line 75
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->homeMode:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    .line 76
    invoke-direct {p0, v0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->applyHeaderTheme(Z)V

    return-void

    .line 79
    :cond_9
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/JJGlassToolbar;->matteTextColor(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->headerTextColor:I

    .line 80
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/UiComponents;->refresh(Landroid/view/View;)V

    .line 81
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->aiCard:Lio/nekohasekai/sagernet/ui/AiRoutingCard;

    invoke-direct {p0, v0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->styleRoutingCard(Landroid/view/View;)V

    .line 82
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->telegramCard:Lio/nekohasekai/sagernet/ui/AiRoutingCard;

    invoke-direct {p0, v0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->styleRoutingCard(Landroid/view/View;)V

    .line 83
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->speedTestCard:Lio/nekohasekai/sagernet/ui/SpeedTestCard;

    if-eqz v0, :cond_27

    .line 85
    invoke-direct {p0, v0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->styleRoutingCard(Landroid/view/View;)V

    .line 87
    :cond_27
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->ipQualityCard:Lio/nekohasekai/sagernet/ui/IpQualityCard;

    if-eqz v0, :cond_2e

    .line 89
    invoke-direct {p0, v0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->styleRoutingCard(Landroid/view/View;)V

    .line 91
    :cond_2e
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->globeCard:Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;

    if-eqz v0, :cond_35

    .line 93
    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->refreshAppearance()V

    :cond_35
    return-void
.end method

.method public render()V
    .registers 14

    .line 490
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->homeMode:Z

    if-eqz v0, :cond_c8

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->settledRender:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Lio/nekohasekai/sagernet/ui/DrawerWorkGate;->defer(Landroid/view/View;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_c8

    .line 493
    :cond_e
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->applyHeaderTheme()V

    .line 494
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->totalValue:Landroid/widget/TextView;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lio/nekohasekai/sagernet/ui/LifetimeTraffic;->cachedRead(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->setValue(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 495
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->latestStats:Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_2e

    move-wide v3, v1

    goto :goto_36

    .line 496
    :cond_2e
    invoke-virtual {v0}, Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;->getTxTotal()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 497
    :goto_36
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->latestStats:Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;

    if-nez v0, :cond_3c

    move-wide v5, v1

    goto :goto_44

    .line 498
    :cond_3c
    invoke-virtual {v0}, Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;->getRxTotal()J

    move-result-wide v5

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 499
    :goto_44
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->sessionValue:Landroid/widget/TextView;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->getContext()Landroid/content/Context;

    move-result-object v7

    const-wide v8, 0x7fffffffffffffffL

    sub-long v10, v8, v3

    cmp-long v12, v10, v5

    if-ltz v12, :cond_57

    add-long v8, v3, v5

    :cond_57
    invoke-static {v7, v8, v9}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->setValue(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 500
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->latestStats:Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;

    if-eqz v0, :cond_72

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->lastUpdateTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x9c4

    cmp-long v0, v3, v5

    if-lez v0, :cond_70

    goto :goto_72

    :cond_70
    const/4 v0, 0x0

    goto :goto_73

    :cond_72
    :goto_72
    const/4 v0, 0x1

    :goto_73
    if-eqz v0, :cond_77

    move-wide v3, v1

    goto :goto_81

    .line 501
    :cond_77
    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->latestStats:Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;

    invoke-virtual {v3}, Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;->getTxRateProxy()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    :goto_81
    if-eqz v0, :cond_84

    goto :goto_8e

    .line 502
    :cond_84
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->latestStats:Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;->getRxRateProxy()J

    move-result-wide v5

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 503
    :goto_8e
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->uploadValue:Landroid/widget/TextView;

    .line 504
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

    .line 505
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->downloadValue:Landroid/widget/TextView;

    .line 506
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

    :cond_c8
    :goto_c8
    return-void
.end method

.method public update(Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;)V
    .registers 4

    .line 346
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->latestStats:Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;

    .line 347
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->lastUpdateTime:J

    .line 348
    iget-boolean p1, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->homeMode:Z

    if-eqz p1, :cond_19

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->isShown()Z

    move-result p1

    if-eqz p1, :cond_19

    iget-boolean p1, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->refreshScheduled:Z

    if-nez p1, :cond_19

    .line 349
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->scheduleRefresh()V

    :cond_19
    return-void
.end method
