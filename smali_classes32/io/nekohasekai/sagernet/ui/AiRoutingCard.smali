.class public final Lio/nekohasekai/sagernet/ui/AiRoutingCard;
.super Landroid/widget/LinearLayout;
.source "AiRoutingCard.java"


# static fields
.field private static final WORKER:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final ALL_DOMAINS:Ljava/lang/String;

.field private final RULE_NAME:Ljava/lang/String;

.field private final main:Landroid/os/Handler;

.field private final telegram:Z

.field private final title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->WORKER:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 10

    .line 42
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->main:Landroid/os/Handler;

    .line 43
    iput-boolean p2, p0, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->telegram:Z

    if-eqz p2, :cond_15

    .line 44
    const-string v0, "\u4f73\u5609 \u00b7 Telegram \u7edf\u4e00\u5206\u6d41"

    goto :goto_17

    :cond_15
    const-string v0, "\u4f73\u5609 \u00b7 \u4e3b\u6d41 AI \u805a\u5408\u5206\u6d41"

    :goto_17
    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->RULE_NAME:Ljava/lang/String;

    if-eqz p2, :cond_1e

    .line 45
    const-string v0, "Telegram\u5206\u6d41"

    goto :goto_20

    :cond_1e
    const-string v0, "AI\u5206\u6d41"

    :goto_20
    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->title:Ljava/lang/String;

    if-eqz p2, :cond_29

    .line 46
    invoke-static {}, Lio/nekohasekai/sagernet/ui/TelegramRouting;->domains()Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    :cond_29
    invoke-static {}, Lio/nekohasekai/sagernet/ui/AiRoutingDomains;->rules()Ljava/lang/String;

    move-result-object v0

    :goto_2d
    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->ALL_DOMAINS:Ljava/lang/String;

    const v0, 0x7f0a0169

    .line 47
    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->setId(I)V

    const/4 v0, 0x1

    .line 48
    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->setOrientation(I)V

    const/16 v1, 0x11

    .line 49
    invoke-virtual {p0, v1}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->setGravity(I)V

    const v1, 0x7f08008d

    .line 50
    invoke-virtual {p0, v1}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->setBackgroundResource(I)V

    .line 51
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41600000    # 14.0f

    mul-float v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 52
    invoke-virtual {p0, v1, v1, v1, v1}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->setPadding(IIII)V

    const/16 v1, 0x10

    .line 53
    invoke-virtual {p0, v1}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->setGravity(I)V

    .line 54
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 55
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_70

    const-string v4, "Telegram"

    goto :goto_72

    :cond_70
    const-string v4, "AI \u5206\u6d41"

    :goto_72
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v2, "sans-serif-medium"

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->text(Landroid/widget/TextView;)V

    .line 56
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, -0x2

    invoke-direct {v2, v4, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v2, "\u2197"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x41880000    # 17.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->secondary(Landroid/widget/TextView;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v1}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_c8

    const-string p2, "\u6d88\u606f\u4e0e\u901a\u8bdd\u5206\u6d41"

    goto :goto_ca

    :cond_c8
    const-string p2, "\u4e3a AI \u72ec\u7acb\u9009\u62e9\u8282\u70b9"

    :goto_ca
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p2, 0x41200000    # 10.0f

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->secondary(Landroid/widget/TextView;)V

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, v2, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x41100000    # 9.0f

    invoke-static {p1, v2}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result p1

    iput p1, p2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0, v1, p2}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->setClickable(Z)V

    .line 60
    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->setFocusable(Z)V

    .line 61
    new-instance p1, Lio/nekohasekai/sagernet/ui/AiRoutingCard$9;

    invoke-direct {p1, p0}, Lio/nekohasekai/sagernet/ui/AiRoutingCard$9;-><init>(Lio/nekohasekai/sagernet/ui/AiRoutingCard;)V

    invoke-virtual {p0, p1}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->refresh()V

    return-void
.end method

.method private addText(Ljava/lang/String;IZ)Landroid/widget/TextView;
    .registers 6

    .line 66
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    if-eqz p3, :cond_f

    const v1, 0x7f0a0167

    goto :goto_12

    :cond_f
    const v1, 0x7f0a016a

    .line 67
    :goto_12
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 68
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-float p1, p2

    .line 69
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    if-eqz p3, :cond_22

    const p1, -0xebebea

    goto :goto_25

    :cond_22
    const p1, -0x75756e

    .line 70
    :goto_25
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p1, 0x11

    .line 71
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 p1, 0x0

    const/4 p2, 0x5

    .line 72
    invoke-virtual {v0, p1, p2, p1, p2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 73
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x1

    const/4 p3, -0x2

    invoke-direct {p1, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, p1}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private static varargs call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 84
    invoke-virtual {p1, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private choose()V
    .registers 3

    .line 130
    sget-object v0, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->WORKER:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lio/nekohasekai/sagernet/ui/AiRoutingCard$10;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/AiRoutingCard$10;-><init>(Lio/nekohasekai/sagernet/ui/AiRoutingCard;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static dao(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 78
    const-string v0, "io.nekohasekai.sagernet.database.SagerDatabase"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Companion"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v2, p0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$showNodeDialog$9(Landroid/app/Dialog;Landroid/view/View;)V
    .registers 2

    .line 272
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private refresh()V
    .registers 3

    .line 109
    sget-object v0, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->WORKER:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lio/nekohasekai/sagernet/ui/AiRoutingCard$8;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/AiRoutingCard$8;-><init>(Lio/nekohasekai/sagernet/ui/AiRoutingCard;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private rule(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 88
    new-array v1, v0, [Ljava/lang/Class;

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "allRules"

    invoke-static {p1, v3, v1, v2}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 89
    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->RULE_NAME:Ljava/lang/String;

    new-array v3, v0, [Ljava/lang/Class;

    new-array v4, v0, [Ljava/lang/Object;

    const-string v5, "getName"

    invoke-static {v1, v5, v3, v4}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    return-object v1

    :cond_2e
    const/4 p1, 0x0

    return-object p1
.end method

.method private save(J)V
    .registers 5

    .line 156
    sget-object v0, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->WORKER:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lio/nekohasekai/sagernet/ui/AiRoutingCard$5;

    invoke-direct {v1, p0, p1, p2}, Lio/nekohasekai/sagernet/ui/AiRoutingCard$5;-><init>(Lio/nekohasekai/sagernet/ui/AiRoutingCard;J)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showNodeDialog(Ljava/util/List;Ljava/util/List;)V
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const-string v2, "\u8282\u70b9 "

    const/4 v3, 0x1

    .line 195
    :try_start_7
    invoke-virtual {v1}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 196
    invoke-virtual {v1}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    .line 197
    new-instance v6, Landroid/app/Dialog;

    invoke-direct {v6, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 198
    const-string v7, "io.nekohasekai.sagernet.ui.JJGlassCapsule"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    new-array v8, v3, [Ljava/lang/Class;

    const-class v9, Landroid/content/Context;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    .line 199
    invoke-virtual {v7, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    new-array v8, v3, [Ljava/lang/Object;

    aput-object v4, v8, v10

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 200
    const-string v8, "setCornerRadiusDp"

    new-array v9, v3, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    const/high16 v11, 0x41b00000    # 22.0f

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    new-array v13, v3, [Ljava/lang/Object;

    aput-object v12, v13, v10

    invoke-static {v7, v8, v9, v13}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const-string v8, "setFrostVeil"

    new-array v9, v3, [Ljava/lang/Class;

    sget-object v12, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v12, v9, v10

    const v12, 0x3f333333    # 0.7f

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    new-array v13, v3, [Ljava/lang/Object;

    aput-object v12, v13, v10

    invoke-static {v7, v8, v9, v13}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-string v8, "setFrostVeilColor"

    new-array v9, v3, [Ljava/lang/Class;

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v9, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    new-array v13, v3, [Ljava/lang/Object;

    aput-object v12, v13, v10

    invoke-static {v7, v8, v9, v13}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 204
    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    mul-float v11, v11, v5

    .line 205
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 206
    invoke-virtual {v8, v9, v9, v9, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 207
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 208
    iget-object v11, v1, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->title:Ljava/lang/String;

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v11, -0x1

    .line 209
    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v12, 0x41900000    # 18.0f

    .line 210
    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setTextSize(F)V

    .line 211
    sget-object v12, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 212
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 213
    new-instance v9, Landroid/widget/EditText;

    invoke-direct {v9, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 214
    invoke-virtual {v9, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 215
    invoke-virtual {v9, v11}, Landroid/widget/EditText;->setTextColor(I)V

    const v12, -0x474740

    .line 216
    invoke-virtual {v9, v12}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 217
    const-string v13, "\u641c\u7d22\u8282\u70b9\u540d\u79f0"

    invoke-virtual {v9, v13}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 218
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 219
    new-instance v13, Landroid/widget/TextView;

    invoke-direct {v13, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 220
    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 221
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " \u4e2a"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    invoke-virtual {v8, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 223
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 224
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 225
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x0

    .line 226
    :goto_ea
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v15
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_ee} :catch_27f

    const/high16 v16, 0x41400000    # 12.0f

    const/16 v17, 0x1

    if-ge v14, v15, :cond_193

    move-object/from16 v15, p1

    .line 227
    :try_start_f6
    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 228
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 229
    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    move/from16 v21, v5

    move-object/from16 v5, v20

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move/from16 v20, v14

    const-string v14, "\u2713 "

    invoke-virtual {v5, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setSelected(Z)V

    const v5, -0xf0f0d

    .line 231
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v5, 0x41700000    # 15.0f

    .line 232
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v5, 0x10

    .line 233
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setGravity(I)V

    mul-float v5, v21, v16

    .line 234
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v14

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v15

    move-object/from16 v22, v7

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v7

    move-object/from16 v23, v9

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-virtual {v3, v14, v15, v7, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v7, 0x42400000    # 48.0f

    mul-float v7, v7, v21

    .line 235
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 236
    new-instance v7, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/high16 v9, 0x20000000

    .line 237
    invoke-virtual {v7, v9}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 238
    invoke-virtual {v7, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 239
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 240
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v9, -0x1

    invoke-direct {v5, v9, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v7, 0x41000000    # 8.0f

    mul-float v7, v7, v21

    .line 241
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 242
    invoke-virtual {v2, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    new-instance v5, Lio/nekohasekai/sagernet/ui/AiRoutingCard$3;

    invoke-direct {v5, v1, v10, v11, v6}, Lio/nekohasekai/sagernet/ui/AiRoutingCard$3;-><init>(Lio/nekohasekai/sagernet/ui/AiRoutingCard;JLandroid/app/Dialog;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v14, v20, 0x1

    move/from16 v5, v21

    move-object/from16 v7, v22

    move-object/from16 v9, v23

    const/4 v3, 0x1

    const/4 v10, 0x0

    const/4 v11, -0x1

    goto/16 :goto_ea

    :cond_193
    move/from16 v21, v5

    move-object/from16 v22, v7

    move-object/from16 v23, v9

    .line 246
    new-instance v3, Landroid/widget/ScrollView;

    invoke-direct {v3, v4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 247
    invoke-virtual {v3, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 248
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x40

    int-to-float v2, v2

    mul-float v2, v2, v21

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v5

    const v7, 0x3f0ccccd    # 0.55f

    mul-float v5, v5, v7

    float-to-int v5, v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 249
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    invoke-direct {v5, v9, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    new-instance v2, Lio/nekohasekai/sagernet/ui/AiRoutingCard$1;

    invoke-direct {v2, v1, v12, v0, v13}, Lio/nekohasekai/sagernet/ui/AiRoutingCard$1;-><init>(Lio/nekohasekai/sagernet/ui/AiRoutingCard;Ljava/util/List;Ljava/util/List;Landroid/widget/TextView;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 264
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 265
    const-string v2, "\u53d6\u6d88"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v5, 0x41700000    # 15.0f

    .line 266
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextSize(F)V

    const v2, -0x3d3d35

    .line 267
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v2, 0x11

    .line 268
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v2, 0x0

    .line 269
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    const/high16 v3, 0x41800000    # 16.0f

    mul-float v5, v21, v3

    .line 270
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v0, v3, v2, v5, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v2, 0x42b00000    # 88.0f

    mul-float v5, v21, v2

    .line 271
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 272
    new-instance v2, Lio/nekohasekai/sagernet/ui/AiRoutingCard$4;

    invoke-direct {v2, v6}, Lio/nekohasekai/sagernet/ui/AiRoutingCard$4;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x42300000    # 44.0f

    mul-float v5, v21, v3

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/4 v7, -0x2

    invoke-direct {v2, v7, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const v3, 0x800005

    .line 274
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    mul-float v5, v21, v16

    .line 275
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 276
    invoke-virtual {v8, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x2

    const/4 v9, -0x1

    invoke-direct {v0, v9, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v7, v22

    invoke-virtual {v7, v8, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 278
    invoke-virtual {v6, v7}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 279
    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 280
    const-string v0, "moe.matsuri.nb4a.ui.DrawerDialogLayout"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "apply"

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/Class;

    const-class v7, Landroid/view/Window;

    const/16 v18, 0x0

    aput-object v7, v5, v18

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v17

    .line 281
    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v18, 0x0

    aput-object v2, v3, v18

    aput-object v4, v3, v17

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    invoke-static {v6}, Lio/nekohasekai/sagernet/ui/AppMotion;->show(Landroid/app/Dialog;)V
    :try_end_27c
    .catch Ljava/lang/Exception; {:try_start_f6 .. :try_end_27c} :catch_27d

    return-void

    :catch_27d
    move-exception v0

    goto :goto_282

    :catch_27f
    move-exception v0

    const/16 v17, 0x1

    .line 284
    :goto_282
    const-string v2, "AiRoutingCard"

    const-string v3, "Cannot show glass node selector"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 285
    invoke-virtual {v1}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "\u65e0\u6cd5\u6253\u5f00\u8282\u70b9\u9009\u62e9\u5668"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static visibleRules(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 98
    :try_start_13
    const-string v2, "getName"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4, v3}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 99
    const-string v3, "\u4f73\u5609 \u00b7 \u4e3b\u6d41 AI \u805a\u5408\u5206\u6d41"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "\u4f73\u5609 \u00b7 Telegram \u7edf\u4e00\u5206\u6d41"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_2e} :catch_35

    if-eqz v2, :cond_31

    goto :goto_9

    .line 103
    :cond_31
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :catch_35
    move-exception p0

    .line 101
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot filter internal AI rule"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_3e
    return-object v0
.end method


# virtual methods
.method synthetic lambda$choose$2$io-nekohasekai-sagernet-ui-AiRoutingCard(Ljava/util/List;Ljava/util/List;)V
    .registers 4

    .line 146
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 147
    :cond_7
    invoke-direct {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->showNodeDialog(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method synthetic lambda$choose$3$io-nekohasekai-sagernet-ui-AiRoutingCard()V
    .registers 4

    .line 150
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u65e0\u6cd5\u8bfb\u53d6\u8282\u70b9\u5217\u8868"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method synthetic lambda$choose$4$io-nekohasekai-sagernet-ui-AiRoutingCard()V
    .registers 14

    .line 132
    :try_start_0
    const-string v0, "getProxyDao"

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->dao(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getAll"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3, v4}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 133
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 134
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 135
    const-string v4, "getRulesDao"

    invoke-static {v4}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->dao(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v4}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->rule(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_4e

    .line 136
    const-string v7, "getEnabled"

    new-array v8, v2, [Ljava/lang/Class;

    new-array v9, v2, [Ljava/lang/Object;

    invoke-static {v4, v7, v8, v9}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_4e

    .line 137
    const-string v7, "getOutbound"

    new-array v8, v2, [Ljava/lang/Class;

    new-array v9, v2, [Ljava/lang/Object;

    invoke-static {v4, v7, v8, v9}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    goto :goto_4f

    :cond_4e
    move-wide v7, v5

    .line 138
    :goto_4f
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5b} :catch_d6

    const-string v9, "\u2713 "

    const-string v10, ""

    cmp-long v11, v7, v5

    if-nez v11, :cond_65

    move-object v5, v9

    goto :goto_66

    :cond_65
    move-object v5, v10

    :goto_66
    :try_start_66
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\u5173\u95ed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_cb

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 141
    const-string v5, "getId"

    new-array v6, v2, [Ljava/lang/Class;

    new-array v11, v2, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, v11}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 143
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    cmp-long v12, v5, v7

    if-nez v12, :cond_b2

    move-object v5, v9

    goto :goto_b3

    :cond_b2
    move-object v5, v10

    :goto_b3
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "displayName"

    new-array v6, v2, [Ljava/lang/Class;

    new-array v12, v2, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, v12}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7e

    .line 145
    :cond_cb
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->main:Landroid/os/Handler;

    new-instance v2, Lio/nekohasekai/sagernet/ui/AiRoutingCard$6;

    invoke-direct {v2, p0, v1, v3}, Lio/nekohasekai/sagernet/ui/AiRoutingCard$6;-><init>(Lio/nekohasekai/sagernet/ui/AiRoutingCard;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_d5} :catch_d6

    return-void

    .line 150
    :catch_d6
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->main:Landroid/os/Handler;

    new-instance v1, Lio/nekohasekai/sagernet/ui/AiRoutingCard$7;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/AiRoutingCard$7;-><init>(Lio/nekohasekai/sagernet/ui/AiRoutingCard;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$new$0$io-nekohasekai-sagernet-ui-AiRoutingCard(Landroid/view/View;)V
    .registers 2

    .line 61
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->choose()V

    return-void
.end method

.method synthetic lambda$refresh$1$io-nekohasekai-sagernet-ui-AiRoutingCard()V
    .registers 9

    .line 111
    const-string v0, "getRulesDao"

    :try_start_2
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->dao(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->rule(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_58

    .line 112
    const-string v2, "getEnabled"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4, v5}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_58

    .line 113
    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->ALL_DOMAINS:Ljava/lang/String;

    const-string v4, "getDomains"

    new-array v5, v3, [Ljava/lang/Class;

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v1, v4, v5, v6}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_58

    .line 114
    const-string v2, "setDomains"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v3

    iget-object v6, p0, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->ALL_DOMAINS:Ljava/lang/String;

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v6, v7, v3

    invoke-static {v1, v2, v5, v7}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->dao(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "updateRule"

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v5, v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v3

    invoke-static {v0, v2, v5, v4}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_58} :catch_59

    :cond_58
    return-void

    :catch_59
    move-exception v0

    .line 119
    const-string v1, "AiRoutingCard"

    const-string v2, "Cannot refresh AI routing rule"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method synthetic lambda$save$5$io-nekohasekai-sagernet-ui-AiRoutingCard()V
    .registers 4

    .line 183
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->refresh()V

    .line 184
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5df2\u4fdd\u5b58\uff0c\u91cd\u65b0\u8fde\u63a5\u4ee3\u7406\u540e\u751f\u6548"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method synthetic lambda$save$6$io-nekohasekai-sagernet-ui-AiRoutingCard()V
    .registers 4

    .line 188
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u4fdd\u5b58\u5931\u8d25\uff0c\u539f\u5206\u6d41\u914d\u7f6e\u672a\u66ff\u6362"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method synthetic lambda$save$7$io-nekohasekai-sagernet-ui-AiRoutingCard(J)V
    .registers 16

    .line 158
    :try_start_0
    const-string v0, "getRulesDao"

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->dao(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    cmp-long v5, p1, v1

    if-lez v5, :cond_33

    .line 159
    const-string v6, "getProxyDao"

    invoke-static {v6}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->dao(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "getById"

    new-array v8, v3, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    new-array v10, v3, [Ljava/lang/Object;

    aput-object v9, v10, v4

    invoke-static {v6, v7, v8, v10}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2b

    goto :goto_33

    .line 160
    :cond_2b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Selected proxy no longer exists"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 162
    :cond_33
    :goto_33
    invoke-direct {p0, v0}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->rule(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_3b

    const/4 v7, 0x1

    goto :goto_3c

    :cond_3b
    const/4 v7, 0x0

    :goto_3c
    if-eqz v7, :cond_44

    if-nez v5, :cond_44

    .line 165
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->refresh()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_43} :catch_123

    return-void

    .line 168
    :cond_44
    const-string v8, "io.nekohasekai.sagernet.database.RuleEntity"

    if-eqz v7, :cond_57

    :try_start_48
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    new-array v9, v4, [Ljava/lang/Class;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 169
    :cond_57
    const-string v9, "setName"

    new-array v10, v3, [Ljava/lang/Class;

    const-class v11, Ljava/lang/String;

    aput-object v11, v10, v4

    iget-object v11, p0, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->RULE_NAME:Ljava/lang/String;

    new-array v12, v3, [Ljava/lang/Object;

    aput-object v11, v12, v4

    invoke-static {v6, v9, v10, v12}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string v9, "setDomains"

    new-array v10, v3, [Ljava/lang/Class;

    const-class v11, Ljava/lang/String;

    aput-object v11, v10, v4

    iget-object v11, p0, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->ALL_DOMAINS:Ljava/lang/String;

    new-array v12, v3, [Ljava/lang/Object;

    aput-object v11, v12, v4

    invoke-static {v6, v9, v10, v12}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string v9, "setOutbound"

    new-array v10, v3, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p1, p2, v4

    invoke-static {v6, v9, v10, p2}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string p1, "setEnabled"

    new-array p2, v3, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, p2, v4

    if-lez v5, :cond_98

    const/4 v5, 0x1

    goto :goto_99

    :cond_98
    const/4 v5, 0x0

    :goto_99
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    new-array v9, v3, [Ljava/lang/Object;

    aput-object v5, v9, v4

    invoke-static {v6, p1, p2, v9}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string p1, "allRules"

    new-array p2, v4, [Ljava/lang/Class;

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v0, p1, p2, v5}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b4
    :goto_b4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_e5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 175
    iget-object v5, p0, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->RULE_NAME:Ljava/lang/String;

    const-string v9, "getName"

    new-array v10, v4, [Ljava/lang/Class;

    new-array v11, v4, [Ljava/lang/Object;

    invoke-static {p2, v9, v10, v11}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b4

    .line 176
    const-string v5, "getUserOrder"

    new-array v9, v4, [Ljava/lang/Class;

    new-array v10, v4, [Ljava/lang/Object;

    invoke-static {p2, v5, v9, v10}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v1, v2, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    goto :goto_b4

    .line 179
    :cond_e5
    const-string p1, "setUserOrder"

    new-array p2, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, p2, v4

    const-wide/high16 v9, -0x8000000000000000L

    cmp-long v5, v1, v9

    if-nez v5, :cond_f4

    goto :goto_f7

    :cond_f4
    const-wide/16 v9, 0x1

    sub-long/2addr v1, v9

    :goto_f7
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v1, v2, v4

    invoke-static {v6, p1, p2, v2}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    if-eqz v7, :cond_10b

    .line 181
    const-string p2, "createRule"

    goto :goto_10d

    :cond_10b
    const-string p2, "updateRule"

    :goto_10d
    new-array v1, v3, [Ljava/lang/Class;

    aput-object p1, v1, v4

    new-array p1, v3, [Ljava/lang/Object;

    aput-object v6, p1, v4

    invoke-static {v0, p2, v1, p1}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->main:Landroid/os/Handler;

    new-instance p2, Lio/nekohasekai/sagernet/ui/AiRoutingCard$0;

    invoke-direct {p2, p0}, Lio/nekohasekai/sagernet/ui/AiRoutingCard$0;-><init>(Lio/nekohasekai/sagernet/ui/AiRoutingCard;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_122
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_122} :catch_123

    return-void

    :catch_123
    move-exception p1

    .line 187
    const-string p2, "AiRoutingCard"

    const-string v0, "Cannot save AI routing rule"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->main:Landroid/os/Handler;

    new-instance p2, Lio/nekohasekai/sagernet/ui/AiRoutingCard$2;

    invoke-direct {p2, p0}, Lio/nekohasekai/sagernet/ui/AiRoutingCard$2;-><init>(Lio/nekohasekai/sagernet/ui/AiRoutingCard;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$showNodeDialog$8$io-nekohasekai-sagernet-ui-AiRoutingCard(JLandroid/app/Dialog;Landroid/view/View;)V
    .registers 5

    .line 244
    invoke-direct {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->save(J)V

    invoke-virtual {p3}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .line 125
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 126
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->refresh()V

    return-void
.end method
