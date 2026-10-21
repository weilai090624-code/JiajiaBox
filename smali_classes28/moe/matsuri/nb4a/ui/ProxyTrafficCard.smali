.class public final Lmoe/matsuri/nb4a/ui/ProxyTrafficCard;
.super Ljava/lang/Object;
.source "ProxyTrafficCard.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMenu(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .registers 8

    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 31
    const-string v1, "\u4ee3\u7406\u6d41\u91cf\u7edf\u8ba1"

    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {p0, v1, v2}, Lmoe/matsuri/nb4a/ui/ProxyTrafficCard;->text(Landroid/content/Context;Ljava/lang/String;F)Landroid/widget/TextView;

    move-result-object v1

    .line 32
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 33
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 34
    move-object v2, p0

    check-cast v2, Lio/nekohasekai/sagernet/ui/MainActivity;

    invoke-static {v2}, Lio/nekohasekai/sagernet/ui/MainActivity;->access$makeDarkPill(Lio/nekohasekai/sagernet/ui/MainActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    .line 35
    const v3, -0xf0f0d

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 36
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 37
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 38
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 39
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42380000    # 46.0f

    mul-float v4, v4, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-direct {v1, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 41
    const/high16 v4, 0x40c00000    # 6.0f

    mul-float v0, v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 42
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v3

    const/4 v3, 0x0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1, v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 43
    new-instance p1, Lmoe/matsuri/nb4a/ui/ProxyTrafficCard$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lmoe/matsuri/nb4a/ui/ProxyTrafficCard$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    return-void
.end method

.method public static buildPage(Landroid/content/Context;Landroid/widget/FrameLayout;)Landroid/widget/LinearLayout;
    .registers 17

    .line 47
    move-object v1, p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41a00000    # 20.0f

    mul-float v0, v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 48
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 49
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 50
    invoke-virtual {v3, v6, v6, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 51
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 53
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 54
    const-string v2, "\u6b63\u5728\u8bfb\u53d6\u2026"

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {p0, v2, v4}, Lmoe/matsuri/nb4a/ui/ProxyTrafficCard;->text(Landroid/content/Context;Ljava/lang/String;F)Landroid/widget/TextView;

    move-result-object v4

    .line 55
    const/4 v2, 0x0

    invoke-virtual {v4, v2, v6, v2, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 56
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 57
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 58
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 59
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 60
    invoke-virtual {v0, v5}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 61
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, -0x1

    invoke-direct {v8, v10, v2, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v2, p1

    invoke-virtual {v2, v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v8

    .line 64
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 65
    new-instance v0, Lmoe/matsuri/nb4a/ui/ProxyTrafficCard$1;

    invoke-direct {v0, v8}, Lmoe/matsuri/nb4a/ui/ProxyTrafficCard$1;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 69
    new-instance v9, Lmoe/matsuri/nb4a/ui/ProxyTrafficCard$$ExternalSyntheticLambda0;

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lmoe/matsuri/nb4a/ui/ProxyTrafficCard$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;I)V

    const-wide/16 v12, 0x2

    sget-object v14, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v10, 0x0

    invoke-interface/range {v8 .. v14}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 106
    return-object v7
.end method

.method private static format(J)Ljava/lang/String;
    .registers 8

    .line 126
    const-wide/16 v0, 0x400

    cmp-long v2, p0, v0

    if-gez v2, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " B"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 127
    :cond_1a
    long-to-double p0, p0

    .line 128
    const-string v0, "GiB"

    const-string v1, "TiB"

    const-string v2, "KiB"

    const-string v3, "MiB"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 129
    const/4 v1, -0x1

    .line 130
    :cond_28
    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    div-double/2addr p0, v2

    const/4 v4, 0x1

    add-int/2addr v1, v4

    cmpl-double v5, p0, v2

    if-ltz v5, :cond_34

    const/4 v2, 0x3

    if-lt v1, v2, :cond_28

    .line 131
    :cond_34
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aget-object p1, v0, v1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    aput-object p1, v0, v4

    const-string p0, "%.2f %s"

    invoke-static {v2, p0, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$addMenu$0(Landroid/content/Context;Landroid/view/View;)V
    .registers 2

    .line 43
    check-cast p0, Lio/nekohasekai/sagernet/ui/MainActivity;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->openProxyTraffic()V

    return-void
.end method

.method static synthetic lambda$buildPage$1(Lorg/json/JSONObject;Lorg/json/JSONObject;)I
    .registers 8

    .line 84
    const-string v0, "upload"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string v3, "download"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v1, v4

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide p0

    add-long/2addr v4, p0

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$buildPage$2(Landroid/widget/LinearLayout;Landroid/widget/TextView;Ljava/lang/String;Landroid/widget/LinearLayout;Ljava/util/List;Landroid/content/Context;I)V
    .registers 14

    .line 87
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result p0

    if-nez p0, :cond_7

    return-void

    .line 88
    :cond_7
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    invoke-virtual {p3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 90
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p0

    const/high16 p1, 0x41600000    # 14.0f

    if-eqz p0, :cond_1e

    const-string p0, "\u6682\u65e0\u8bb0\u5f55\uff0c\u7edf\u8ba1\u4ece\u5b89\u88c5\u6b64\u7248\u672c\u5e76\u91cd\u65b0\u8fde\u63a5\u4ee3\u7406\u540e\u5f00\u59cb"

    invoke-static {p5, p0, p1}, Lmoe/matsuri/nb4a/ui/ProxyTrafficCard;->text(Landroid/content/Context;Ljava/lang/String;F)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 91
    :cond_1e
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_22
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/json/JSONObject;

    .line 92
    const-string p4, "package"

    invoke-virtual {p2, p4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 93
    nop

    .line 94
    const/4 v0, 0x0

    :try_start_36
    invoke-virtual {p5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p4, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_4a} :catch_4b

    .line 95
    goto :goto_4d

    :catch_4b
    move-exception v1

    move-object v1, p4

    .line 96
    :goto_4d
    const-string v2, "unknown"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    const-string v1, "\u672a\u8bc6\u522b\u5e94\u7528"

    .line 97
    :cond_57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v1, "upload"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, "download"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    add-long/2addr v2, v5

    invoke-static {v2, v3}, Lmoe/matsuri/nb4a/ui/ProxyTrafficCard;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v2, "  \u2191 "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lmoe/matsuri/nb4a/ui/ProxyTrafficCard;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v1, "  \u2193 "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lmoe/matsuri/nb4a/ui/ProxyTrafficCard;->format(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p5, p2, p1}, Lmoe/matsuri/nb4a/ui/ProxyTrafficCard;->text(Landroid/content/Context;Ljava/lang/String;F)Landroid/widget/TextView;

    move-result-object p2

    .line 98
    div-int/lit8 p4, p6, 0x2

    invoke-virtual {p2, v0, p4, v0, p4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 99
    invoke-virtual {p3, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 100
    goto/16 :goto_22

    .line 101
    :cond_b9
    return-void
.end method

.method static synthetic lambda$buildPage$3(Landroid/widget/LinearLayout;Landroid/widget/TextView;)V
    .registers 2

    .line 103
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result p0

    if-eqz p0, :cond_b

    const-string p0, "\u6682\u65f6\u65e0\u6cd5\u8bfb\u53d6\u7edf\u8ba1\uff0c\u8bf7\u91cd\u65b0\u8fde\u63a5\u4ee3\u7406\u540e\u91cd\u8bd5"

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    return-void
.end method

.method static synthetic lambda$buildPage$4(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;I)V
    .registers 16

    .line 72
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "proxy-app-traffic.json"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 74
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_a7

    :try_start_16
    new-instance v0, Lorg/json/JSONArray;

    invoke-static {v1}, Lmoe/matsuri/nb4a/ui/ProxyTrafficCard;->read(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_23

    :try_start_1f
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_22} :catch_a7

    goto :goto_32

    :catchall_23
    move-exception p0

    :try_start_24
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_28

    goto :goto_2c

    :catchall_28
    move-exception p4

    :try_start_29
    invoke-virtual {p0, p4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2c
    throw p0

    .line 75
    :cond_2d
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 76
    :goto_32
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 77
    nop

    .line 78
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-wide v3, v1

    const/4 v5, 0x0

    :goto_3d
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v5, v7, :cond_5b

    .line 79
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 80
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    const-string v8, "upload"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v1, v8

    .line 82
    const-string v8, "download"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v7

    add-long/2addr v3, v7

    .line 78
    add-int/lit8 v5, v5, 0x1

    goto :goto_3d

    .line 84
    :cond_5b
    new-instance v0, Lmoe/matsuri/nb4a/ui/ProxyTrafficCard$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lmoe/matsuri/nb4a/ui/ProxyTrafficCard$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v6, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5df2\u4ee3\u7406\u603b\u6d41\u91cf "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-long v7, v1, v3

    invoke-static {v7, v8}, Lmoe/matsuri/nb4a/ui/ProxyTrafficCard;->format(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\n\u4e0a\u4f20 "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, v2}, Lmoe/matsuri/nb4a/ui/ProxyTrafficCard;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u00b7 \u4e0b\u8f7d "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3, v4}, Lmoe/matsuri/nb4a/ui/ProxyTrafficCard;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 86
    new-instance v0, Lmoe/matsuri/nb4a/ui/ProxyTrafficCard$$ExternalSyntheticLambda3;

    move-object v1, v0

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v7, p0

    move v8, p5

    invoke-direct/range {v1 .. v8}, Lmoe/matsuri/nb4a/ui/ProxyTrafficCard$$ExternalSyntheticLambda3;-><init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Ljava/lang/String;Landroid/widget/LinearLayout;Ljava/util/List;Landroid/content/Context;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_a6} :catch_a7

    .line 104
    goto :goto_b0

    .line 102
    :catch_a7
    move-exception p0

    .line 103
    new-instance p0, Lmoe/matsuri/nb4a/ui/ProxyTrafficCard$$ExternalSyntheticLambda4;

    invoke-direct {p0, p2, p3}, Lmoe/matsuri/nb4a/ui/ProxyTrafficCard$$ExternalSyntheticLambda4;-><init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;)V

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 105
    :goto_b0
    return-void
.end method

.method private static read(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 111
    const/16 v1, 0x2000

    new-array v1, v1, [B

    .line 113
    :goto_9
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_15

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_9

    .line 114
    :cond_15
    const-string p0, "UTF-8"

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static text(Landroid/content/Context;Ljava/lang/String;F)Landroid/widget/TextView;
    .registers 4

    .line 118
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 119
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 121
    const/4 p0, -0x1

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 122
    return-object v0
.end method
