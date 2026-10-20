.class public final Lio/nekohasekai/sagernet/ui/SubscriptionCards;
.super Ljava/lang/Object;
.source "SubscriptionCards.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/ui/SubscriptionCards$Meter;
    }
.end annotation


# static fields
.field private static final meters:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 9
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lio/nekohasekai/sagernet/ui/SubscriptionCards;->meters:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/WeakHashMap;
    .registers 1

    .line 8
    sget-object v0, Lio/nekohasekai/sagernet/ui/SubscriptionCards;->meters:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method private static addMeter(Landroid/widget/LinearLayout;Ljava/lang/String;D)V
    .registers 9

    .line 42
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xb

    invoke-static {v0, p1, v1}, Lio/nekohasekai/sagernet/ui/SubscriptionCards;->text(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->secondary(Landroid/widget/TextView;)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v0, v3}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    new-instance v1, Lio/nekohasekai/sagernet/ui/SubscriptionCards$Meter;

    invoke-direct {v1, v0, p2, p3}, Lio/nekohasekai/sagernet/ui/SubscriptionCards$Meter;-><init>(Landroid/content/Context;D)V

    invoke-virtual {v1, p1}, Lio/nekohasekai/sagernet/ui/SubscriptionCards$Meter;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {v0, p2}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result p3

    invoke-direct {p1, v4, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v0, p2}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result p2

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0, v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static decorate(Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, " \u00b7 \u4f59 "

    const-string v3, "\u5230\u671f "

    const-string v4, "\u66f4\u65b0\uff1a"

    const-string v5, " / "

    const-string v6, "\u5269\u4f59\u6d41\u91cf "

    .line 15
    :try_start_e
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "getSubscription"

    invoke-static {v1, v8}, Lio/nekohasekai/sagernet/ui/SubscriptionCards;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 16
    const-string v9, "displayName"

    invoke-static {v1, v9}, Lio/nekohasekai/sagernet/ui/SubscriptionCards;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 17
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    const/4 v11, 0x0

    if-lez v10, :cond_3f

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    instance-of v10, v10, Landroid/widget/TextView;

    if-eqz v10, :cond_3f

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    .line 18
    :cond_3f
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v13, 0x41600000    # 14.0f

    .line 19
    invoke-static {v7, v13}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v13

    const/high16 v14, 0x41200000    # 10.0f

    invoke-static {v7, v14}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v15

    invoke-static {v7, v14}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v14

    invoke-virtual {v10, v13, v15, v13, v14}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v13, 0xf

    .line 20
    invoke-static {v7, v9, v13}, Lio/nekohasekai/sagernet/ui/SubscriptionCards;->text(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v9

    const-string v13, "sans-serif-medium"

    invoke-static {v13, v11}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setMaxLines(I)V

    sget-object v13, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x1

    const/4 v15, -0x2

    invoke-direct {v13, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v9, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-nez v8, :cond_98

    .line 21
    const-string v1, "\u672c\u5730\u5206\u7ec4"

    const/16 v2, 0xb

    invoke-static {v7, v1, v2}, Lio/nekohasekai/sagernet/ui/SubscriptionCards;->text(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/high16 v1, 0x42680000    # 58.0f

    invoke-static {v7, v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setMinimumHeight(I)V

    :goto_95
    const/4 v1, 0x0

    goto/16 :goto_1ac

    .line 23
    :cond_98
    invoke-static {v8}, Lio/nekohasekai/sagernet/ui/SubscriptionInfo;->from(Ljava/lang/Object;)Lio/nekohasekai/sagernet/ui/SubscriptionInfo;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    div-long v14, v16, v18

    .line 24
    iget-wide v11, v8, Lio/nekohasekai/sagernet/ui/SubscriptionInfo;->remaining:J
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_a6} :catch_1c5

    const-string v9, ""

    const-wide/16 v20, 0x0

    cmp-long v22, v11, v20

    if-ltz v22, :cond_e0

    :try_start_ae
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v22, v14

    iget-wide v13, v8, Lio/nekohasekai/sagernet/ui/SubscriptionInfo;->remaining:J

    invoke-static {v13, v14}, Lio/nekohasekai/sagernet/ui/SubscriptionInfo;->formatBytes(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v8, Lio/nekohasekai/sagernet/ui/SubscriptionInfo;->total:J

    cmp-long v14, v12, v20

    if-lez v14, :cond_d7

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v13, v8, Lio/nekohasekai/sagernet/ui/SubscriptionInfo;->total:J

    invoke-static {v13, v14}, Lio/nekohasekai/sagernet/ui/SubscriptionInfo;->formatBytes(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_d8

    :cond_d7
    move-object v5, v9

    :goto_d8
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_e4

    :cond_e0
    move-wide/from16 v22, v14

    const-string v5, "\u5269\u4f59\u6d41\u91cf \u00b7 \u8ba2\u9605\u672a\u63d0\u4f9b\u989d\u5ea6"

    .line 25
    :goto_e4
    invoke-virtual {v8}, Lio/nekohasekai/sagernet/ui/SubscriptionInfo;->trafficRatio()D

    move-result-wide v11

    invoke-static {v10, v5, v11, v12}, Lio/nekohasekai/sagernet/ui/SubscriptionCards;->addMeter(Landroid/widget/LinearLayout;Ljava/lang/String;D)V

    .line 26
    const-string v5, "\u4e0d\u9650\u65f6"

    .line 27
    iget-wide v11, v8, Lio/nekohasekai/sagernet/ui/SubscriptionInfo;->expiry:J

    cmp-long v13, v11, v20

    if-lez v13, :cond_15c

    iget-wide v11, v8, Lio/nekohasekai/sagernet/ui/SubscriptionInfo;->expiry:J

    sub-long v11, v11, v22

    cmp-long v5, v11, v20

    if-gtz v5, :cond_fe

    :goto_fb
    move-wide/from16 v11, v20

    goto :goto_109

    :cond_fe
    const-wide/16 v13, 0x1

    sub-long/2addr v11, v13

    const-wide/32 v20, 0x15180

    div-long v11, v11, v20

    add-long v20, v11, v13

    goto :goto_fb

    .line 28
    :goto_109
    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string v14, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v14, Ljava/util/Date;

    move-object v15, v7

    iget-wide v6, v8, Lio/nekohasekai/sagernet/ui/SubscriptionInfo;->expiry:J

    const-wide v24, 0x20c49ba5e353f7L

    cmp-long v21, v6, v24

    if-lez v21, :cond_128

    const-wide v6, 0x7fffffffffffffffL

    goto :goto_12c

    :cond_128
    iget-wide v6, v8, Lio/nekohasekai/sagernet/ui/SubscriptionInfo;->expiry:J

    mul-long v6, v6, v18

    :goto_12c
    invoke-direct {v14, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v13, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 29
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-gtz v5, :cond_140

    const-string v2, " \u00b7 \u5df2\u5230\u671f"

    goto :goto_151

    :cond_140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " \u5929"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_151
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_15d

    :cond_15c
    move-object v15, v7

    :goto_15d
    move-wide/from16 v2, v22

    .line 31
    invoke-virtual {v8, v2, v3}, Lio/nekohasekai/sagernet/ui/SubscriptionInfo;->timeRatio(J)D

    move-result-wide v2

    invoke-static {v10, v5, v2, v3}, Lio/nekohasekai/sagernet/ui/SubscriptionCards;->addMeter(Landroid/widget/LinearLayout;Ljava/lang/String;D)V

    .line 32
    const-string v2, "getId"

    invoke-static {v1, v2}, Lio/nekohasekai/sagernet/ui/SubscriptionCards;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-static {v15, v1, v2}, Lio/nekohasekai/sagernet/ui/SubscriptionUpdates;->summary(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1a1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v15, v1, v2}, Lio/nekohasekai/sagernet/ui/SubscriptionCards;->text(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v13, -0x2

    invoke-direct {v2, v9, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1a1
    const/high16 v1, 0x42d00000    # 104.0f

    .line 34
    invoke-static {v15, v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setMinimumHeight(I)V

    goto/16 :goto_95

    .line 36
    :goto_1ac
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 37
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v13, -0x2

    invoke-direct {v1, v9, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v10, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_1c4

    iput v13, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1c4
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_1c4} :catch_1c5

    :cond_1c4
    return-void

    :catch_1c5
    move-exception v0

    .line 39
    const-string v1, "SubscriptionCards"

    const-string v2, "Cannot show subscription information"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static estimatedHeight(Landroid/content/Context;Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)I"
        }
    .end annotation

    .line 68
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/high16 v2, 0x42700000    # 60.0f

    invoke-static {p0, v2}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getMinimumHeight()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {p0, v2}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_5

    :cond_28
    return v0
.end method

.method static synthetic lambda$show$0(Landroid/app/Dialog;Ljava/lang/Object;JLjava/lang/Object;Landroid/view/View;)V
    .registers 10

    .line 57
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string p5, "setSelectedGroup"

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, p5, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    new-array p3, v0, [Ljava/lang/Object;

    aput-object p2, p3, v3

    invoke-virtual {p0, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string p1, "refreshList"

    new-array p2, v3, [Ljava/lang/Class;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, p4, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_30} :catch_31

    return-void

    :catch_31
    move-exception p0

    const-string p1, "SubscriptionCards"

    const-string p2, "Cannot switch group"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method static synthetic lambda$show$1(Landroid/app/Dialog;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/View;)Z
    .registers 8

    .line 58
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    const/4 p0, 0x1

    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    const-string v0, "confirmDeleteGroup"

    new-array v1, p0, [Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p3, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    invoke-virtual {p3, p0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v0, p0, [Ljava/lang/Object;

    aput-object p2, v0, v3

    invoke-virtual {p3, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_21} :catch_22

    goto :goto_2a

    :catch_22
    move-exception p1

    const-string p2, "SubscriptionCards"

    const-string p3, "Cannot confirm group deletion"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2a
    return p0
.end method

.method static synthetic lambda$show$2(Landroid/app/Dialog;Landroid/view/View;)V
    .registers 2

    .line 64
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public static refreshAll()V
    .registers 4

    .line 10
    sget-object v0, Lio/nekohasekai/sagernet/ui/SubscriptionCards;->meters:Ljava/util/WeakHashMap;

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

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1a
    return-void
.end method

.method public static show(Ljava/lang/Object;Ljava/util/List;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    move-object/from16 v5, p0

    .line 47
    :try_start_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a1

    const-string v0, "isAdded"

    invoke-static {v5, v0}, Lio/nekohasekai/sagernet/ui/SubscriptionCards;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_18

    goto/16 :goto_1a1

    .line 48
    :cond_18
    const-string v0, "requireContext"

    invoke-static {v5, v0}, Lio/nekohasekai/sagernet/ui/SubscriptionCards;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/Context;

    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, v6}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 49
    invoke-static {v6}, Lio/nekohasekai/sagernet/ui/UiComponents;->column(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-static {v7}, Lio/nekohasekai/sagernet/ui/UiComponents;->panel(Landroid/view/View;)V

    const-string v0, "\u5207\u6362\u5206\u7ec4"

    invoke-static {v6, v0}, Lio/nekohasekai/sagernet/ui/UiComponents;->title(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 50
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 51
    const-string v0, "io.nekohasekai.sagernet.database.DataStore"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "INSTANCE"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 52
    const-string v0, "getSelectedGroup"

    invoke-static {v2, v0}, Lio/nekohasekai/sagernet/ui/SubscriptionCards;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    .line 54
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_62
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/16 v3, 0xf

    if-eqz v0, :cond_f3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 55
    const-string v4, "getId"

    invoke-static {v0, v4}, Lio/nekohasekai/sagernet/ui/SubscriptionCards;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v16

    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    cmp-long v18, v16, v10

    if-nez v18, :cond_85

    const/4 v15, 0x1

    goto :goto_86

    :cond_85
    const/4 v15, 0x0

    :goto_86
    invoke-virtual {v4, v15}, Landroid/widget/FrameLayout;->setSelected(Z)V

    invoke-static {v4}, Lio/nekohasekai/sagernet/ui/UiComponents;->choice(Landroid/view/View;)V

    invoke-virtual {v4, v13, v13, v13, v13}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    invoke-virtual {v4, v9}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    .line 56
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v18, :cond_9c

    const-string v18, "\u2713 "

    goto :goto_9e

    :cond_9c
    const-string v18, ""

    :goto_9e
    move-object/from16 v13, v18

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "displayName"

    invoke-static {v0, v13}, Lio/nekohasekai/sagernet/ui/SubscriptionCards;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13, v3}, Lio/nekohasekai/sagernet/ui/SubscriptionCards;->text(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-static {v4, v0}, Lio/nekohasekai/sagernet/ui/SubscriptionCards;->decorate(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 57
    invoke-virtual {v4, v9}, Landroid/widget/FrameLayout;->setClickable(Z)V

    invoke-virtual {v4, v9}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    move-object v3, v0

    new-instance v0, Lio/nekohasekai/sagernet/ui/SubscriptionCards$0;

    move-object v13, v3

    move-object v15, v4

    move-wide/from16 v3, v16

    const/4 v9, -0x2

    invoke-direct/range {v0 .. v5}, Lio/nekohasekai/sagernet/ui/SubscriptionCards$0;-><init>(Landroid/app/Dialog;Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    new-instance v0, Lio/nekohasekai/sagernet/ui/SubscriptionCards$1;

    invoke-direct {v0, v1, v5, v13}, Lio/nekohasekai/sagernet/ui/SubscriptionCards$1;-><init>(Landroid/app/Dialog;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 59
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v0, v3, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v6, v3}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v8, v15, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v15}, Landroid/widget/FrameLayout;->getMinimumHeight()I

    move-result v3

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v0

    add-int/2addr v14, v3

    const/4 v9, 0x1

    const/4 v13, 0x0

    goto/16 :goto_62

    :cond_f3
    const/4 v9, -0x2

    .line 61
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, v6}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v2, v4, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v8, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    const v4, 0x3f0ccccd    # 0.55f

    mul-float v2, v2, v4

    float-to-int v2, v2

    invoke-static {v2, v14}, Ljava/lang/Math;->min(II)I

    move-result v2

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    const-string v0, "\u65f6\u95f4\u8fdb\u5ea6\u6761\u4ee5\u5269\u4f5930\u5929\u4e3a\u523b\u5ea6"

    const/16 v2, 0xa

    invoke-static {v6, v0, v2}, Lio/nekohasekai/sagernet/ui/SubscriptionCards;->text(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/UiComponents;->secondary(Landroid/widget/TextView;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v2, v4, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v6, v4}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v7, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    invoke-static {v6}, Lio/nekohasekai/sagernet/ui/UiComponents;->actions(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    const-string v2, "\u53d6\u6d88"

    invoke-static {v6, v2, v3}, Lio/nekohasekai/sagernet/ui/SubscriptionCards;->text(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Lio/nekohasekai/sagernet/ui/SubscriptionCards$2;

    invoke-direct {v3, v1}, Lio/nekohasekai/sagernet/ui/SubscriptionCards$2;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v0, v2}, Lio/nekohasekai/sagernet/ui/UiComponents;->addAction(Landroid/widget/LinearLayout;Landroid/view/View;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v2, v4, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v6, v3}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v7, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    invoke-virtual {v1, v7}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1a1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x43d20000    # 420.0f

    invoke-static {v6, v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    const v3, 0x3f666666    # 0.9f

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1, v9}, Landroid/view/Window;->setLayout(II)V
    :try_end_1a1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1a1} :catch_1a2

    :cond_1a1
    :goto_1a1
    return-void

    :catch_1a2
    move-exception v0

    .line 66
    const-string v1, "SubscriptionCards"

    const-string v2, "Cannot open group switcher"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method static text(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;
    .registers 4

    .line 12
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-float p0, p2

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/UiComponents;->text(Landroid/widget/TextView;)V

    return-object v0
.end method
