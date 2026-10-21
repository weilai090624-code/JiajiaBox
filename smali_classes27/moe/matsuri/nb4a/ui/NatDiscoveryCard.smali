.class public final Lmoe/matsuri/nb4a/ui/NatDiscoveryCard;
.super Ljava/lang/Object;
.source "NatDiscoveryCard.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;
    .registers 4

    .line 110
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 111
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    const/high16 p0, 0x41700000    # 15.0f

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 113
    const/4 p0, -0x1

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 114
    div-int/lit8 p2, p2, 0x2

    invoke-virtual {v0, p2, p2, p2, p2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 115
    return-object v0
.end method

.method static synthetic lambda$open$0(Landroid/app/Dialog;Landroid/view/View;)V
    .registers 2

    .line 58
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$open$1(Landroid/app/Dialog;Landroid/widget/TextView;Ljava/lang/String;Landroid/widget/EditText;Landroid/widget/TextView;)V
    .registers 5

    .line 83
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    if-nez p0, :cond_7

    return-void

    .line 84
    :cond_7
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    const/4 p0, 0x1

    invoke-virtual {p3, p0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 86
    invoke-virtual {p4, p0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 87
    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {p4, p0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 88
    const-string p0, "\u91cd\u65b0\u68c0\u6d4b"

    invoke-virtual {p4, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    return-void
.end method

.method static synthetic lambda$open$2(Ljava/lang/String;Landroid/os/Handler;Landroid/app/Dialog;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/TextView;)V
    .registers 12

    .line 75
    const-string v0, "\u68c0\u6d4b\u5931\u8d25\uff1a\n"

    :try_start_2
    invoke-static {p0}, Llibcore/Libcore;->stunTest(Ljava/lang/String;)Llibcore/StunResult;

    move-result-object p0

    .line 76
    if-eqz p0, :cond_29

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Llibcore/StunResult;->getSuccess()Z

    move-result v2

    if-eqz v2, :cond_16

    const-string v2, ""

    goto :goto_17

    :cond_16
    move-object v2, v0

    :goto_17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Llibcore/StunResult;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 80
    move-object v3, p0

    goto :goto_53

    .line 76
    :cond_29
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "\u5185\u6838\u672a\u8fd4\u56de\u68c0\u6d4b\u7ed3\u679c"

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_31} :catch_31

    .line 78
    :catch_31
    move-exception p0

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_46

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_4a

    :cond_46
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    :goto_4a
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    move-object v3, p0

    .line 81
    :goto_53
    nop

    .line 82
    new-instance p0, Lmoe/matsuri/nb4a/ui/NatDiscoveryCard$$ExternalSyntheticLambda4;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lmoe/matsuri/nb4a/ui/NatDiscoveryCard$$ExternalSyntheticLambda4;-><init>(Landroid/app/Dialog;Landroid/widget/TextView;Ljava/lang/String;Landroid/widget/EditText;Landroid/widget/TextView;)V

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 90
    return-void
.end method

.method static synthetic lambda$open$3(Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/util/concurrent/ExecutorService;Landroid/os/Handler;Landroid/app/Dialog;Landroid/view/View;)V
    .registers 14

    .line 63
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result p6

    if-eqz p6, :cond_18

    .line 65
    const-string p1, "\u8bf7\u8f93\u5165 STUN \u670d\u52a1\u5668"

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 66
    return-void

    .line 68
    :cond_18
    const/4 p6, 0x0

    invoke-virtual {p1, p6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 69
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 70
    invoke-virtual {p0, p6}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 71
    const-string p6, "\u6b63\u5728\u68c0\u6d4b\uff0c\u8bf7\u7a0d\u5019\u2026"

    invoke-virtual {p2, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    new-instance p6, Lmoe/matsuri/nb4a/ui/NatDiscoveryCard$$ExternalSyntheticLambda0;

    move-object v0, p6

    move-object v2, p4

    move-object v3, p5

    move-object v4, p2

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lmoe/matsuri/nb4a/ui/NatDiscoveryCard$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Landroid/os/Handler;Landroid/app/Dialog;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/TextView;)V

    invoke-interface {p3, p6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 91
    return-void
.end method

.method static synthetic lambda$open$4(Ljava/util/concurrent/ExecutorService;Landroid/content/DialogInterface;)V
    .registers 2

    .line 105
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    return-void
.end method

.method public static open(Landroid/content/Context;)V
    .registers 16

    .line 22
    new-instance v7, Landroid/app/Dialog;

    invoke-direct {v7, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 24
    const/high16 v1, 0x41a00000    # 20.0f

    mul-float v1, v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 25
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 27
    invoke-virtual {v8, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 28
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 29
    const-string v4, "NAT \u884c\u4e3a\u53d1\u73b0"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 31
    const/high16 v5, 0x41900000    # 18.0f

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 32
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 33
    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 34
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 35
    const-string v5, "STUN \u670d\u52a1\u5668"

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    const v5, -0x474740

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 37
    const/4 v9, 0x0

    invoke-virtual {v3, v9, v1, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 38
    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 39
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 40
    const-string v5, "stun.voipgate.com:3478"

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 41
    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTextColor(I)V

    .line 42
    const/high16 v5, 0x41600000    # 14.0f

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setTextSize(F)V

    .line 43
    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 44
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    invoke-direct {v6, v4, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 46
    const-string v10, "\u70b9\u51fb\u5f00\u59cb\u68c0\u6d4b NAT \u884c\u4e3a"

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    const v10, -0x3d3d35

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 48
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 49
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 50
    invoke-virtual {v6, v9, v1, v9, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 51
    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-virtual {v2, v6}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 53
    const/high16 v5, 0x43660000    # 230.0f

    mul-float v0, v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v5

    const v10, 0x3e99999a    # 0.3f

    mul-float v5, v5, v10

    float-to-int v5, v5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 54
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 56
    const v0, 0x800005

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 57
    const-string v0, "\u5173\u95ed"

    invoke-static {p0, v0, v1}, Lmoe/matsuri/nb4a/ui/NatDiscoveryCard;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v11

    .line 58
    new-instance v0, Lmoe/matsuri/nb4a/ui/NatDiscoveryCard$$ExternalSyntheticLambda1;

    invoke-direct {v0, v7}, Lmoe/matsuri/nb4a/ui/NatDiscoveryCard$$ExternalSyntheticLambda1;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    const-string v0, "\u5f00\u59cb"

    invoke-static {p0, v0, v1}, Lmoe/matsuri/nb4a/ui/NatDiscoveryCard;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v12

    .line 60
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v13

    .line 61
    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 62
    new-instance v14, Lmoe/matsuri/nb4a/ui/NatDiscoveryCard$$ExternalSyntheticLambda2;

    move-object v0, v14

    move-object v1, v3

    move-object v2, v12

    move-object v3, v6

    move-object v4, v13

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lmoe/matsuri/nb4a/ui/NatDiscoveryCard$$ExternalSyntheticLambda2;-><init>(Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/util/concurrent/ExecutorService;Landroid/os/Handler;Landroid/app/Dialog;)V

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 93
    invoke-virtual {v10, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 94
    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 95
    new-instance v0, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    invoke-direct {v0, p0}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;-><init>(Landroid/content/Context;)V

    .line 96
    const/high16 v1, 0x41b00000    # 22.0f

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setCornerRadiusDp(F)V

    .line 97
    const v1, 0x3f333333    # 0.7f

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setFrostVeil(F)V

    .line 98
    invoke-virtual {v0, v9}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setFrostVeilColor(I)V

    .line 99
    invoke-virtual {v0, v8}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->addView(Landroid/view/View;)V

    .line 100
    invoke-virtual {v7, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 101
    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 103
    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x3e6147ae    # 0.22f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 104
    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, p0}, Lmoe/matsuri/nb4a/ui/DrawerDialogLayout;->apply(Landroid/view/Window;Landroid/content/Context;)V

    .line 105
    new-instance p0, Lmoe/matsuri/nb4a/ui/NatDiscoveryCard$$ExternalSyntheticLambda3;

    invoke-direct {p0, v13}, Lmoe/matsuri/nb4a/ui/NatDiscoveryCard$$ExternalSyntheticLambda3;-><init>(Ljava/util/concurrent/ExecutorService;)V

    invoke-virtual {v7, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 106
    invoke-static {v7}, Lio/nekohasekai/sagernet/ui/AppMotion;->show(Landroid/app/Dialog;)V

    .line 107
    return-void
.end method
