.class public final Lmoe/matsuri/nb4a/ui/GlassPreferenceDialog;
.super Ljava/lang/Object;
.source "GlassPreferenceDialog.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$show$0(Landroidx/preference/ListPreference;Ljava/lang/String;Landroid/app/Dialog;Landroid/view/View;)V
    .registers 4

    .line 59
    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 60
    :cond_9
    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    .line 61
    return-void
.end method

.method static synthetic lambda$show$1(Landroid/app/Dialog;Landroid/view/View;)V
    .registers 2

    .line 80
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public static show(Landroidx/preference/ListPreference;)V
    .registers 21

    .line 22
    invoke-virtual/range {p0 .. p0}, Landroidx/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 23
    invoke-virtual/range {p0 .. p0}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 24
    invoke-virtual/range {p0 .. p0}, Landroidx/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 25
    if-eqz v1, :cond_1ea

    if-eqz v2, :cond_1ea

    array-length v3, v1

    array-length v4, v2

    if-eq v3, v4, :cond_16

    goto/16 :goto_1ea

    .line 26
    :cond_16
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 27
    const/high16 v4, 0x41b00000    # 22.0f

    mul-float v5, v3, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 28
    new-instance v6, Landroid/app/Dialog;

    invoke-direct {v6, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance v7, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    invoke-direct {v7, v0}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-virtual {v7, v4}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setCornerRadiusDp(F)V

    .line 31
    const v4, 0x3f333333    # 0.7f

    invoke-virtual {v7, v4}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setFrostVeil(F)V

    .line 32
    const/4 v4, 0x0

    invoke-virtual {v7, v4}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setFrostVeilColor(I)V

    .line 33
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 35
    const/high16 v10, 0x41800000    # 16.0f

    mul-float v10, v10, v3

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-virtual {v8, v5, v5, v5, v11}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 36
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-virtual/range {p0 .. p0}, Landroidx/preference/ListPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    const/4 v11, -0x1

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 39
    const/high16 v12, 0x41900000    # 18.0f

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setTextSize(F)V

    .line 40
    sget-object v12, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 41
    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 42
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 44
    const/4 v12, 0x0

    :goto_79
    array-length v13, v1

    const/high16 v15, 0x41700000    # 15.0f

    const-string v16, "#C2C2CB"

    const/high16 v17, 0x41400000    # 12.0f

    if-ge v12, v13, :cond_13b

    .line 45
    aget-object v13, v2, v12

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    .line 46
    invoke-virtual/range {p0 .. p0}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 47
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 48
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v4, :cond_9f

    const-string v18, "\u2713  "

    goto :goto_a1

    :cond_9f
    const-string v18, "     "

    :goto_a1
    move-object/from16 v14, v18

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v14, v1, v12

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    if-eqz v4, :cond_b8

    const/4 v11, -0x1

    goto :goto_bc

    :cond_b8
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    :goto_bc
    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 50
    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setTextSize(F)V

    .line 51
    const/16 v11, 0x10

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 52
    const/high16 v11, 0x42400000    # 48.0f

    mul-float v11, v11, v3

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 53
    mul-float v11, v3, v17

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v14

    const/high16 v15, 0x41200000    # 10.0f

    mul-float v15, v15, v3

    move-object/from16 v18, v2

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v2

    move-object/from16 v19, v7

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    invoke-virtual {v9, v14, v2, v7, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 54
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 55
    const v7, 0x33ffffff

    if-eqz v4, :cond_fd

    const v4, 0x33ffffff

    goto :goto_ff

    :cond_fd
    const/high16 v4, 0x14000000

    :goto_ff
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 56
    invoke-virtual {v2, v11}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 57
    new-instance v4, Landroid/graphics/drawable/RippleDrawable;

    invoke-static {v7}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    const/4 v11, 0x0

    invoke-direct {v4, v7, v2, v11}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 58
    new-instance v2, Lmoe/matsuri/nb4a/ui/GlassPreferenceDialog$$ExternalSyntheticLambda0;

    move-object/from16 v4, p0

    invoke-direct {v2, v4, v13, v6}, Lmoe/matsuri/nb4a/ui/GlassPreferenceDialog$$ExternalSyntheticLambda0;-><init>(Landroidx/preference/ListPreference;Ljava/lang/String;Landroid/app/Dialog;)V

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v11, -0x1

    invoke-direct {v2, v11, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 63
    const/high16 v7, 0x41000000    # 8.0f

    mul-float v7, v7, v3

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 64
    invoke-virtual {v5, v9, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, v18

    move-object/from16 v7, v19

    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v11, -0x1

    goto/16 :goto_79

    .line 66
    :cond_13b
    move-object/from16 v19, v7

    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 67
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 68
    invoke-virtual {v2, v5}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 69
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    const v5, 0x3f19999a    # 0.6f

    mul-float v4, v4, v5

    float-to-int v4, v4

    .line 70
    array-length v1, v1

    mul-int/lit8 v1, v1, 0x40

    int-to-float v1, v1

    mul-float v1, v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 71
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 72
    mul-float v17, v17, v3

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 73
    invoke-virtual {v8, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 75
    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 76
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 77
    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setTextSize(F)V

    .line 78
    const v2, 0x800015

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 79
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/high16 v4, 0x41200000    # 10.0f

    mul-float v3, v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v2, v4, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 80
    new-instance v2, Lmoe/matsuri/nb4a/ui/GlassPreferenceDialog$$ExternalSyntheticLambda1;

    invoke-direct {v2, v6}, Lmoe/matsuri/nb4a/ui/GlassPreferenceDialog$$ExternalSyntheticLambda1;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v4, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v2, v19

    invoke-virtual {v2, v8, v1}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    invoke-virtual {v6, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 84
    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 85
    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 86
    if-eqz v1, :cond_1e3

    .line 87
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 89
    const v2, 0x3e6147ae    # 0.22f

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDimAmount(F)V

    .line 91
    :cond_1e3
    invoke-static {v1, v0}, Lmoe/matsuri/nb4a/ui/DrawerDialogLayout;->apply(Landroid/view/Window;Landroid/content/Context;)V

    .line 92
    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 93
    return-void

    .line 25
    :cond_1ea
    :goto_1ea
    return-void
.end method
