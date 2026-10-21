.class public final Lmoe/matsuri/nb4a/ui/GlassTextEditor;
.super Ljava/lang/Object;
.source "GlassTextEditor.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static button(Landroid/content/Context;IF)Landroid/widget/TextView;
    .registers 4

    .line 82
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 83
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 84
    const p0, -0x3d3d35

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    const/high16 p0, 0x41700000    # 15.0f

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 86
    const/high16 p0, 0x41200000    # 10.0f

    mul-float p2, p2, p0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 87
    invoke-virtual {v0, p0, p0, p0, p0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 88
    return-object v0
.end method

.method static synthetic lambda$open$0(Landroid/app/Dialog;Landroid/view/View;)V
    .registers 2

    .line 43
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$open$1(Landroid/widget/EditText;Ljava/lang/String;Landroidx/preference/EditTextPreference;Landroid/app/Dialog;Landroid/view/View;)V
    .registers 6

    .line 46
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    .line 47
    const-string v0, "mixedPort"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 49
    :try_start_14
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 50
    const/4 v0, 0x1

    if-lt p1, v0, :cond_21

    const v0, 0xffff

    if-gt p1, v0, :cond_21

    .line 54
    goto :goto_3a

    .line 50
    :cond_21
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1}, Ljava/lang/NumberFormatException;-><init>()V

    throw p1
    :try_end_27
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_27} :catch_27

    .line 51
    :catch_27
    move-exception p1

    .line 52
    const-string p1, "\u8bf7\u8f93\u5165 1\u201365535 \u4e4b\u95f4\u7684\u7aef\u53e3"

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 53
    return-void

    .line 55
    :cond_2e
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 56
    const-string p1, "DNS \u4e0d\u80fd\u4e3a\u7a7a"

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 57
    return-void

    .line 59
    :cond_3a
    :goto_3a
    invoke-virtual {p2, p4}, Landroidx/preference/EditTextPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_46

    .line 60
    invoke-virtual {p2, p4}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p3}, Landroid/app/Dialog;->dismiss()V

    .line 63
    :cond_46
    return-void
.end method

.method public static open(Landroidx/preference/EditTextPreference;)Z
    .registers 14

    .line 17
    invoke-virtual {p0}, Landroidx/preference/EditTextPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 18
    const-string v1, "mixedPort"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1e

    const-string v2, "remoteDns"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    const-string v2, "directDns"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    return v3

    .line 19
    :cond_1e
    invoke-virtual {p0}, Landroidx/preference/EditTextPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 20
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    .line 21
    const/high16 v5, 0x41b00000    # 22.0f

    mul-float v6, v4, v5

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 22
    new-instance v7, Landroid/app/Dialog;

    invoke-direct {v7, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 23
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 24
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 25
    const/high16 v10, 0x41800000    # 16.0f

    mul-float v10, v10, v4

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-virtual {v8, v6, v6, v6, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 26
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-virtual {p0}, Landroidx/preference/EditTextPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    const/4 v10, -0x1

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 29
    const/high16 v11, 0x41900000    # 18.0f

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 30
    sget-object v11, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 31
    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 32
    new-instance v6, Landroid/widget/EditText;

    invoke-direct {v6, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-virtual {p0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 34
    invoke-virtual {v6, v10}, Landroid/widget/EditText;->setTextColor(I)V

    .line 35
    const/high16 v11, 0x41700000    # 15.0f

    invoke-virtual {v6, v11}, Landroid/widget/EditText;->setTextSize(F)V

    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v11, 0x2

    if-eqz v1, :cond_87

    const/4 v1, 0x2

    goto :goto_89

    :cond_87
    const/16 v1, 0x11

    :goto_89
    invoke-virtual {v6, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 37
    invoke-virtual {v6, v9}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 38
    invoke-virtual {p0}, Landroidx/preference/EditTextPreference;->getOnBindEditTextListener()Landroidx/preference/EditTextPreference$OnBindEditTextListener;

    move-result-object v1

    if-eqz v1, :cond_9c

    invoke-virtual {p0}, Landroidx/preference/EditTextPreference;->getOnBindEditTextListener()Landroidx/preference/EditTextPreference$OnBindEditTextListener;

    move-result-object v1

    invoke-interface {v1, v6}, Landroidx/preference/EditTextPreference$OnBindEditTextListener;->onBindEditText(Landroid/widget/EditText;)V

    .line 39
    :cond_9c
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x2

    invoke-direct {v1, v10, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 41
    const v10, 0x800005

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 42
    const/high16 v10, 0x1040000

    invoke-static {v2, v10, v4}, Lmoe/matsuri/nb4a/ui/GlassTextEditor;->button(Landroid/content/Context;IF)Landroid/widget/TextView;

    move-result-object v10

    .line 43
    new-instance v12, Lmoe/matsuri/nb4a/ui/GlassTextEditor$$ExternalSyntheticLambda0;

    invoke-direct {v12, v7}, Lmoe/matsuri/nb4a/ui/GlassTextEditor$$ExternalSyntheticLambda0;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    const v12, 0x104000a

    invoke-static {v2, v12, v4}, Lmoe/matsuri/nb4a/ui/GlassTextEditor;->button(Landroid/content/Context;IF)Landroid/widget/TextView;

    move-result-object v4

    .line 45
    new-instance v12, Lmoe/matsuri/nb4a/ui/GlassTextEditor$$ExternalSyntheticLambda1;

    invoke-direct {v12, v6, v0, p0, v7}, Lmoe/matsuri/nb4a/ui/GlassTextEditor$$ExternalSyntheticLambda1;-><init>(Landroid/widget/EditText;Ljava/lang/String;Landroidx/preference/EditTextPreference;Landroid/app/Dialog;)V

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 65
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 66
    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 67
    new-instance p0, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    invoke-direct {p0, v2}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;-><init>(Landroid/content/Context;)V

    .line 68
    invoke-virtual {p0, v5}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setCornerRadiusDp(F)V

    .line 69
    const v0, 0x3f333333    # 0.7f

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setFrostVeil(F)V

    .line 70
    invoke-virtual {p0, v3}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setFrostVeilColor(I)V

    .line 71
    invoke-virtual {p0, v8}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->addView(Landroid/view/View;)V

    .line 72
    invoke-virtual {v7, p0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 73
    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v11}, Landroid/view/Window;->addFlags(I)V

    .line 75
    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const v0, 0x3e6147ae    # 0.22f

    invoke-virtual {p0, v0}, Landroid/view/Window;->setDimAmount(F)V

    .line 76
    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0, v2}, Lmoe/matsuri/nb4a/ui/DrawerDialogLayout;->apply(Landroid/view/Window;Landroid/content/Context;)V

    .line 77
    invoke-static {v7}, Lio/nekohasekai/sagernet/ui/AppMotion;->show(Landroid/app/Dialog;)V

    .line 78
    return v9
.end method
