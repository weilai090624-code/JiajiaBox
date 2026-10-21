.class public final Lmoe/matsuri/nb4a/ui/GlassConfigEditor;
.super Ljava/lang/Object;
.source "GlassConfigEditor.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static button(Landroid/content/Context;II)Landroid/widget/TextView;
    .registers 4

    .line 80
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 81
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 82
    const/high16 p0, 0x41700000    # 15.0f

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 83
    const p0, -0x3d3d35

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    div-int/lit8 p2, p2, 0x2

    invoke-virtual {v0, p2, p2, p2, p2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 85
    return-object v0
.end method

.method static synthetic lambda$open$0(Landroid/app/Dialog;Landroid/view/View;)V
    .registers 2

    .line 45
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$open$1(Landroid/widget/EditText;Lmoe/matsuri/nb4a/ui/EditConfigPreference;Landroid/app/Dialog;Landroid/view/View;)V
    .registers 5

    .line 48
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    .line 49
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 50
    :try_start_12
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_18

    .line 54
    goto :goto_1f

    .line 51
    :catch_18
    move-exception p1

    .line 52
    const-string p1, "\u8bf7\u8f93\u5165\u6709\u6548\u7684 JSON \u5bf9\u8c61\uff0c\u6216\u6e05\u7a7a\u4ee5\u505c\u7528\u81ea\u5b9a\u4e49\u914d\u7f6e"

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 53
    return-void

    .line 56
    :cond_1f
    :goto_1f
    invoke-virtual {p1, p3}, Lmoe/matsuri/nb4a/ui/EditConfigPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_36

    .line 57
    sget-object p0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {p0, p3}, Lio/nekohasekai/sagernet/database/DataStore;->setGlobalCustomConfig(Ljava/lang/String;)V

    .line 58
    sget-object p0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    const/4 p3, 0x1

    invoke-virtual {p0, p3}, Lio/nekohasekai/sagernet/database/DataStore;->setDirty(Z)V

    .line 59
    invoke-virtual {p1}, Lmoe/matsuri/nb4a/ui/EditConfigPreference;->notifyChanged()V

    .line 60
    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    .line 62
    :cond_36
    return-void
.end method

.method public static open(Lmoe/matsuri/nb4a/ui/EditConfigPreference;)V
    .registers 11

    .line 19
    invoke-virtual {p0}, Lmoe/matsuri/nb4a/ui/EditConfigPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 20
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 22
    const/high16 v3, 0x41a00000    # 20.0f

    mul-float v3, v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 23
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 24
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 25
    invoke-virtual {v4, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 26
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-virtual {p0}, Lmoe/matsuri/nb4a/ui/EditConfigPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    const/high16 v6, 0x41900000    # 18.0f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 29
    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 30
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 31
    new-instance v5, Landroid/widget/EditText;

    invoke-direct {v5, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 32
    sget-object v7, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v7}, Lio/nekohasekai/sagernet/database/DataStore;->getGlobalCustomConfig()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 33
    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setTextColor(I)V

    .line 34
    const/high16 v7, 0x41500000    # 13.0f

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setTextSize(F)V

    .line 35
    sget-object v7, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 36
    const/16 v7, 0x33

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setGravity(I)V

    .line 37
    const v7, 0xa0001

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setInputType(I)V

    .line 38
    new-instance v7, Landroid/widget/ScrollView;

    invoke-direct {v7, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v8, v6, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v5, v8}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    const/high16 v8, 0x43960000    # 300.0f

    mul-float v2, v2, v8

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v8, v8

    const v9, 0x3ecccccd    # 0.4f

    mul-float v8, v8, v9

    float-to-int v8, v8

    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 41
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v6, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 43
    const v6, 0x800005

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 44
    const/high16 v6, 0x1040000

    invoke-static {v0, v6, v3}, Lmoe/matsuri/nb4a/ui/GlassConfigEditor;->button(Landroid/content/Context;II)Landroid/widget/TextView;

    move-result-object v6

    .line 45
    new-instance v7, Lmoe/matsuri/nb4a/ui/GlassConfigEditor$$ExternalSyntheticLambda0;

    invoke-direct {v7, v1}, Lmoe/matsuri/nb4a/ui/GlassConfigEditor$$ExternalSyntheticLambda0;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    const v7, 0x104000a

    invoke-static {v0, v7, v3}, Lmoe/matsuri/nb4a/ui/GlassConfigEditor;->button(Landroid/content/Context;II)Landroid/widget/TextView;

    move-result-object v3

    .line 47
    new-instance v7, Lmoe/matsuri/nb4a/ui/GlassConfigEditor$$ExternalSyntheticLambda1;

    invoke-direct {v7, v5, p0, v1}, Lmoe/matsuri/nb4a/ui/GlassConfigEditor$$ExternalSyntheticLambda1;-><init>(Landroid/widget/EditText;Lmoe/matsuri/nb4a/ui/EditConfigPreference;Landroid/app/Dialog;)V

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 64
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 65
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 66
    new-instance p0, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    invoke-direct {p0, v0}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;-><init>(Landroid/content/Context;)V

    .line 67
    const/high16 v2, 0x41b00000    # 22.0f

    invoke-virtual {p0, v2}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setCornerRadiusDp(F)V

    .line 68
    const v2, 0x3f333333    # 0.7f

    invoke-virtual {p0, v2}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setFrostVeil(F)V

    .line 69
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setFrostVeilColor(I)V

    .line 70
    invoke-virtual {p0, v4}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->addView(Landroid/view/View;)V

    .line 71
    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 72
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 74
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const v2, 0x3e6147ae    # 0.22f

    invoke-virtual {p0, v2}, Landroid/view/Window;->setDimAmount(F)V

    .line 75
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0, v0}, Lmoe/matsuri/nb4a/ui/DrawerDialogLayout;->apply(Landroid/view/Window;Landroid/content/Context;)V

    .line 76
    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/AppMotion;->show(Landroid/app/Dialog;)V

    .line 77
    return-void
.end method
