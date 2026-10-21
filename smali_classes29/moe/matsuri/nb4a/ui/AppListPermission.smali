.class public final Lmoe/matsuri/nb4a/ui/AppListPermission;
.super Ljava/lang/Object;
.source "AppListPermission.java"


# static fields
.field private static final PERMISSION:Ljava/lang/String; = "com.android.permission.GET_INSTALLED_APPS"

.field private static final REQUEST:I = 0x1c1b

.field private static final dialogs:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Landroid/app/Dialog;",
            ">;"
        }
    .end annotation
.end field

.field private static requesting:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lmoe/matsuri/nb4a/ui/AppListPermission;->dialogs:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static check(Landroid/app/Activity;)V
    .registers 4

    .line 38
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_44

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_44

    sget-boolean v0, Lmoe/matsuri/nb4a/ui/AppListPermission;->requesting:Z

    if-nez v0, :cond_44

    invoke-static {p0}, Lmoe/matsuri/nb4a/ui/AppListPermission;->supported(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_44

    .line 39
    :cond_17
    const-string v0, "com.android.permission.GET_INSTALLED_APPS"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2d

    .line 40
    sget-object v0, Lmoe/matsuri/nb4a/ui/AppListPermission;->dialogs:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Dialog;

    .line 41
    if-eqz p0, :cond_2c

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 42
    :cond_2c
    return-void

    .line 44
    :cond_2d
    const-string v0, "app-list-permission"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "requested"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 45
    if-nez v0, :cond_40

    invoke-static {p0}, Lmoe/matsuri/nb4a/ui/AppListPermission;->request(Landroid/app/Activity;)V

    goto :goto_43

    .line 46
    :cond_40
    invoke-static {p0}, Lmoe/matsuri/nb4a/ui/AppListPermission;->showDenied(Landroid/app/Activity;)V

    .line 47
    :goto_43
    return-void

    .line 38
    :cond_44
    :goto_44
    return-void
.end method

.method static synthetic lambda$showDenied$0(Landroid/app/Activity;Landroid/app/Dialog;Landroid/view/View;)V
    .registers 4

    .line 94
    const-string p2, "com.android.permission.GET_INSTALLED_APPS"

    invoke-virtual {p0, p2}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 95
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 96
    invoke-static {p0}, Lmoe/matsuri/nb4a/ui/AppListPermission;->request(Landroid/app/Activity;)V

    goto :goto_34

    .line 98
    :cond_f
    new-instance p1, Landroid/content/Intent;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "package:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 99
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 101
    :goto_34
    return-void
.end method

.method private static request(Landroid/app/Activity;)V
    .registers 4

    .line 50
    const/4 v0, 0x1

    sput-boolean v0, Lmoe/matsuri/nb4a/ui/AppListPermission;->requesting:Z

    .line 51
    const-string v1, "app-list-permission"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "requested"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 52
    const-string v0, "com.android.permission.GET_INSTALLED_APPS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1c1b

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 53
    return-void
.end method

.method public static result(Landroid/app/Activity;I)V
    .registers 3

    .line 56
    const/16 v0, 0x1c1b

    if-eq p1, v0, :cond_5

    return-void

    .line 57
    :cond_5
    const/4 p1, 0x0

    sput-boolean p1, Lmoe/matsuri/nb4a/ui/AppListPermission;->requesting:Z

    .line 58
    invoke-static {p0}, Lmoe/matsuri/nb4a/ui/AppListPermission;->check(Landroid/app/Activity;)V

    .line 59
    return-void
.end method

.method private static showDenied(Landroid/app/Activity;)V
    .registers 10

    .line 62
    sget-object v0, Lmoe/matsuri/nb4a/ui/AppListPermission;->dialogs:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    .line 63
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    .line 64
    :cond_11
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 65
    sget-object v1, Lmoe/matsuri/nb4a/ui/AppListPermission;->dialogs:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41b00000    # 22.0f

    mul-float v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 67
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 68
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 69
    invoke-virtual {v3, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 70
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 71
    const-string v5, "\u9700\u8981\u5e94\u7528\u5217\u8868\u8bfb\u53d6\u6743\u9650"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    const/high16 v6, 0x41900000    # 18.0f

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 74
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 75
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 76
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 77
    const-string v6, "\u672a\u6388\u4e88\u5e94\u7528\u5217\u8868\u8bfb\u53d6\u6743\u9650\u65e0\u6cd5\u6b63\u5e38\u5de5\u4f5c"

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    const v6, -0x3d3d35

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    const/high16 v6, 0x41700000    # 15.0f

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 80
    const/4 v7, 0x0

    invoke-virtual {v4, v7, v1, v7, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 81
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 82
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 83
    const-string v8, "\u91cd\u65b0\u7533\u8bf7"

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 86
    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 87
    div-int/lit8 v5, v1, 0x2

    invoke-virtual {v4, v1, v5, v1, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 88
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 89
    const v6, -0xcfcfc8

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 90
    int-to-float v1, v1

    invoke-virtual {v5, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 91
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 92
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 93
    new-instance v1, Lmoe/matsuri/nb4a/ui/AppListPermission$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lmoe/matsuri/nb4a/ui/AppListPermission$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;Landroid/app/Dialog;)V

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    new-instance v1, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;-><init>(Landroid/content/Context;)V

    .line 103
    invoke-virtual {v1, v2}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setCornerRadiusDp(F)V

    .line 104
    const v2, 0x3f333333    # 0.7f

    invoke-virtual {v1, v2}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setFrostVeil(F)V

    .line 105
    invoke-virtual {v1, v7}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setFrostVeilColor(I)V

    .line 106
    invoke-virtual {v1, v3}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->addView(Landroid/view/View;)V

    .line 107
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 108
    invoke-virtual {v0, v7}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 109
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 111
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x3e6147ae    # 0.22f

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDimAmount(F)V

    .line 112
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 113
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, p0}, Lmoe/matsuri/nb4a/ui/DrawerDialogLayout;->apply(Landroid/view/Window;Landroid/content/Context;)V

    .line 114
    return-void
.end method

.method private static supported(Landroid/app/Activity;)Z
    .registers 4

    .line 28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x0

    if-ge v0, v1, :cond_8

    return v2

    .line 30
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.android.permission.GET_INSTALLED_APPS"

    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object p0

    .line 31
    iget p0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_14} :catch_1b

    and-int/lit8 p0, p0, 0xf

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1a

    const/4 v2, 0x1

    :cond_1a
    return v2

    .line 32
    :catch_1b
    move-exception p0

    .line 33
    return v2
.end method
