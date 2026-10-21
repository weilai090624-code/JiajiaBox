.class public final Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;
.super Ljava/lang/Object;
.source "LocalAppearanceSettings.java"


# static fields
.field private static final appliedSelections:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final backgrounds:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private static final colors:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/widget/TextView;",
            "Landroid/content/res/ColorStateList;",
            ">;"
        }
    .end annotation
.end field

.field private static final homes:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final rowBackgrounds:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private static final rowModes:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final selectedRows:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static transition:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 17
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->backgrounds:Ljava/util/WeakHashMap;

    .line 18
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->colors:Ljava/util/WeakHashMap;

    .line 19
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->homes:Ljava/util/WeakHashMap;

    .line 20
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->selectedRows:Ljava/util/WeakHashMap;

    .line 21
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->rowModes:Ljava/util/WeakHashMap;

    .line 22
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->rowBackgrounds:Ljava/util/WeakHashMap;

    .line 23
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->appliedSelections:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/view/View;Z)V
    .registers 2

    .line 16
    invoke-static {p0, p1}, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->tint(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$102(Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .registers 1

    .line 16
    sput-object p0, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->transition:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static addMenu(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .registers 10

    .line 158
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 159
    invoke-static {p0}, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->appearance(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "dark"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, "\u5207\u6362\u4eae\u8272\u6a21\u5f0f"

    goto :goto_17

    :cond_15
    const-string v1, "\u5207\u6362\u6697\u8272\u6a21\u5f0f"

    :goto_17
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    const v1, -0xf0f0d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 161
    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 162
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 163
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 164
    move-object v1, p0

    check-cast v1, Lio/nekohasekai/sagernet/ui/MainActivity;

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/MainActivity;->access$makeDarkPill(Lio/nekohasekai/sagernet/ui/MainActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    .line 165
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 166
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    .line 168
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x42380000    # 46.0f

    mul-float v7, v7, v4

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-direct {v6, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 169
    const/high16 v5, 0x40c00000    # 6.0f

    mul-float v4, v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 170
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p1, v1, v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 171
    new-instance p1, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings$$ExternalSyntheticLambda7;

    invoke-direct {p1, p0, v0}, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings$$ExternalSyntheticLambda7;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    return-void
.end method

.method public static addPreferences(Ljava/lang/Object;)V
    .registers 20

    .line 84
    move-object/from16 v0, p0

    const-string v1, "diagnosticLog"

    :try_start_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "requireContext"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 85
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v5, "getPreferenceScreen"

    new-array v6, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 86
    const-string v3, "androidx.preference.Preference"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 87
    const-string v5, "androidx.preference.PreferenceGroup"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 88
    const-string v6, "getPreferenceCount"

    new-array v7, v4, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v6, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4b} :catch_22d

    .line 89
    nop

    .line 90
    const/4 v7, 0x0

    :goto_4d
    const-string v8, "findPreference"

    const/4 v9, 0x1

    if-ge v7, v6, :cond_8b

    .line 91
    :try_start_52
    const-string v10, "getPreference"

    new-array v11, v9, [Ljava/lang/Class;

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v11, v4

    invoke-virtual {v5, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-array v12, v9, [Ljava/lang/Object;

    aput-object v11, v12, v4

    invoke-virtual {v10, v0, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 92
    invoke-virtual {v5, v10}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_71

    goto :goto_88

    .line 93
    :cond_71
    new-array v11, v9, [Ljava/lang/Class;

    const-class v12, Ljava/lang/CharSequence;

    aput-object v12, v11, v4

    invoke-virtual {v5, v8, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    new-array v12, v9, [Ljava/lang/Object;

    const-string v13, "bypassLan"

    aput-object v13, v12, v4

    invoke-virtual {v11, v10, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 94
    if-eqz v11, :cond_88

    goto :goto_8c

    .line 90
    :cond_88
    :goto_88
    add-int/lit8 v7, v7, 0x1

    goto :goto_4d

    :cond_8b
    move-object v10, v0

    .line 96
    :goto_8c
    const-string v6, "chinaDomainBypass"

    const-string v7, "chinaIpBypass"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    .line 97
    const-string v7, "\u4e2d\u56fd\u57df\u540d\u76f4\u8fde"

    const-string v11, "\u4e2d\u56fd IP \u76f4\u8fde\uff08IPv4 / IPv6\uff09"

    filled-new-array {v7, v11}, [Ljava/lang/String;

    move-result-object v7
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_9c} :catch_22d

    .line 98
    const/4 v11, 0x0

    :goto_9d
    const-string v12, "addPreference"

    const-string v13, "setSummary"

    const-string v14, "setTitle"

    const-string v15, "setKey"

    const/4 v4, 0x2

    if-ge v11, v4, :cond_155

    .line 99
    :try_start_a8
    new-array v4, v9, [Ljava/lang/Class;

    const-class v17, Ljava/lang/CharSequence;

    const/16 v16, 0x0

    aput-object v17, v4, v16

    invoke-virtual {v5, v8, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    aget-object v17, v6, v11

    move-object/from16 v18, v1

    new-array v1, v9, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v17, v1, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_c8

    move-object/from16 p0, v6

    goto/16 :goto_14c

    .line 100
    :cond_c8
    const-string v1, "androidx.preference.SwitchPreference"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-array v4, v9, [Ljava/lang/Class;

    const-class v17, Landroid/content/Context;

    const/16 v16, 0x0

    aput-object v17, v4, v16

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v2, v4, v16

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 101
    new-array v4, v9, [Ljava/lang/Class;

    const-class v17, Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v17, v4, v16

    invoke-virtual {v3, v15, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    aget-object v15, v6, v11

    move-object/from16 p0, v6

    new-array v6, v9, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v15, v6, v16

    invoke-virtual {v4, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    new-array v4, v9, [Ljava/lang/Class;

    const-class v6, Ljava/lang/CharSequence;

    const/4 v15, 0x0

    aput-object v6, v4, v15

    invoke-virtual {v3, v14, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    aget-object v6, v7, v11

    new-array v14, v9, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v6, v14, v15

    invoke-virtual {v4, v1, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    new-array v4, v9, [Ljava/lang/Class;

    const-class v6, Ljava/lang/CharSequence;

    const/4 v14, 0x0

    aput-object v6, v4, v14

    invoke-virtual {v3, v13, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v6, v9, [Ljava/lang/Object;

    const-string v13, "\u4f7f\u7528\u672c\u5730\u89c4\u5219\uff1b\u4fee\u6539\u540e\u91cd\u65b0\u8fde\u63a5\u751f\u6548"

    const/4 v14, 0x0

    aput-object v13, v6, v14

    invoke-virtual {v4, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v4, "setDefaultValue"

    new-array v6, v9, [Ljava/lang/Class;

    const-class v13, Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v13, v6, v14

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v6, v9, [Ljava/lang/Object;

    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v14, 0x0

    aput-object v13, v6, v14

    invoke-virtual {v4, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    new-array v4, v9, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v3, v4, v6

    invoke-virtual {v5, v12, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v12, v9, [Ljava/lang/Object;

    aput-object v1, v12, v6

    invoke-virtual {v4, v10, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :goto_14c
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v6, p0

    move-object/from16 v1, v18

    const/4 v4, 0x0

    goto/16 :goto_9d

    .line 107
    :cond_155
    move-object/from16 v18, v1

    new-array v1, v9, [Ljava/lang/Class;

    const-class v4, Ljava/lang/CharSequence;

    const/4 v6, 0x0

    aput-object v4, v1, v6

    invoke-virtual {v5, v8, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v4, v9, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v18, v4, v6

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_22b

    .line 108
    new-array v1, v9, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v4, v1, v6

    invoke-virtual {v3, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v2, v4, v6

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 109
    new-array v4, v9, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v4, v7

    invoke-virtual {v3, v15, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v6, v9, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v18, v6, v7

    invoke-virtual {v4, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    new-array v4, v9, [Ljava/lang/Class;

    const-class v6, Ljava/lang/CharSequence;

    const/4 v7, 0x0

    aput-object v6, v4, v7

    invoke-virtual {v3, v14, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v6, v9, [Ljava/lang/Object;

    const-string v7, "\u8bca\u65ad\u65e5\u5fd7"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v4, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    new-array v4, v9, [Ljava/lang/Class;

    const-class v6, Ljava/lang/CharSequence;

    const/4 v7, 0x0

    aput-object v6, v4, v7

    invoke-virtual {v3, v13, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v6, v9, [Ljava/lang/Object;

    const-string v7, "\u5f55\u5236\u548c\u5206\u4eab\u8fd0\u884c\u65e5\u5fd7"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v4, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v4, "setOrder"

    new-array v6, v9, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const v6, 0x7fffffff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    invoke-virtual {v4, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v4, "setPersistent"

    new-array v6, v9, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v6, v7, v8

    invoke-virtual {v4, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v4, "androidx.preference.Preference$OnPreferenceClickListener"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 115
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    new-instance v8, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings$$ExternalSyntheticLambda0;

    invoke-direct {v8, v2}, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7, v8}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v2

    .line 126
    const-string v6, "setOnPreferenceClickListener"

    new-array v7, v9, [Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v2, v6, v8

    invoke-virtual {v4, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    new-array v2, v9, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v5, v12, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22b
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_22b} :catch_22d

    .line 131
    :cond_22b
    nop

    .line 132
    return-void

    .line 129
    :catch_22d
    move-exception v0

    .line 130
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot add local routing settings"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static animate(Landroid/view/ViewGroup;Landroid/graphics/Bitmap;Z)V
    .registers 6

    .line 237
    new-instance v0, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings$2;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings$2;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Z)V

    .line 256
    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const v1, 0x7f0a01e2

    invoke-virtual {v0, v1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 257
    const/4 p2, 0x1

    invoke-virtual {v0, p2}, Landroid/view/View;->setClickable(Z)V

    .line 258
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p2, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 259
    const/4 p2, 0x2

    new-array p2, p2, [F

    fill-array-data p2, :array_58

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    sput-object p2, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->transition:Landroid/animation/ValueAnimator;

    .line 260
    sget-object p2, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->transition:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x15b

    invoke-virtual {p2, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 261
    sget-object p2, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->transition:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 262
    sget-object p2, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->transition:Landroid/animation/ValueAnimator;

    new-instance v1, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings$$ExternalSyntheticLambda1;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 266
    sget-object p2, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->transition:Landroid/animation/ValueAnimator;

    new-instance v1, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings$3;

    invoke-direct {v1, p0, v0, p1}, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings$3;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 273
    sget-object p0, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->transition:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 274
    return-void

    :array_58
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static appearance(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    .line 135
    const-string v0, "localAppearance"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private static apply(Landroid/view/View;Z)V
    .registers 4

    .line 277
    sget-object v0, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->backgrounds:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->backgrounds:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    :cond_11
    if-eqz p1, :cond_1c

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, -0xe7e6e4

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_24

    :cond_1c
    sget-object v0, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->backgrounds:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    :goto_24
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 279
    if-nez p1, :cond_2c

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/RosePalette;->backdrop(Landroid/view/View;)V

    :cond_2c
    invoke-static {p0, p1}, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->tint(Landroid/view/View;Z)V

    .line 280
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 281
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_52

    .line 282
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    .line 283
    invoke-static {p0, p1}, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->tintMenu(Landroid/view/View;Z)V

    .line 284
    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    .line 285
    if-eqz p1, :cond_4d

    and-int/lit16 p1, v0, -0x2001

    goto :goto_4f

    :cond_4d
    or-int/lit16 p1, v0, 0x2000

    :goto_4f
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 287
    :cond_52
    return-void
.end method

.method public static applySystemBars(Landroid/app/Activity;)V
    .registers 4

    .line 144
    :try_start_0
    invoke-static {p0}, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->dark(Landroid/content/Context;)Z

    move-result v0

    .line 145
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 146
    if-eqz v0, :cond_e

    const v1, -0xe7e6e4

    goto :goto_11

    :cond_e
    const v1, -0x1

    .line 147
    :goto_11
    invoke-virtual {p0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 148
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_1e

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    .line 149
    :cond_1e
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    .line 150
    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    .line 151
    if-eqz v0, :cond_2b

    and-int/lit8 v0, v1, -0x11

    goto :goto_2d

    :cond_2b
    or-int/lit8 v0, v1, 0x10

    :goto_2d
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_31

    .line 154
    goto :goto_39

    .line 152
    :catch_31
    move-exception p0

    .line 153
    const-string v0, "LocalAppearanceSettings"

    const-string v1, "Cannot apply navigation bar appearance"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 155
    :goto_39
    return-void
.end method

.method public static dark(Landroid/content/Context;)Z
    .registers 3

    .line 139
    invoke-static {p0}, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->appearance(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "dark"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static enabled(Ljava/lang/String;)Z
    .registers 9

    .line 75
    const/4 v0, 0x1

    :try_start_1
    invoke-static {}, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->store()Ljava/lang/Object;

    move-result-object v1

    .line 76
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getBoolean"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v0

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v7

    aput-object v3, v4, v0

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2f} :catch_30

    return p0

    .line 77
    :catch_30
    move-exception p0

    .line 78
    return v0
.end method

.method public static home(Landroid/view/View;)V
    .registers 4

    .line 192
    sget-object v0, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->homes:Ljava/util/WeakHashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const v0, 0x7f0a0174

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 194
    if-eqz v0, :cond_44

    .line 195
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_21

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a01e1

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 196
    new-instance v1, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings$$ExternalSyntheticLambda2;-><init>(Landroid/view/View;Landroid/view/View;)V

    .line 213
    new-instance v0, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings$$ExternalSyntheticLambda3;

    invoke-direct {v0, v1}, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 217
    new-instance v0, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings$$ExternalSyntheticLambda4;

    invoke-direct {v0, v1}, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 218
    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 220
    :cond_44
    new-instance v0, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings$$ExternalSyntheticLambda5;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 221
    new-instance v0, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings$$ExternalSyntheticLambda6;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 222
    return-void
.end method

.method static synthetic lambda$addMenu$1(Landroid/content/Context;Landroid/widget/TextView;Landroid/view/View;)V
    .registers 10

    .line 172
    sget-object p2, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->transition:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_5

    return-void

    .line 173
    :cond_5
    invoke-static {p0}, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->appearance(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    const-string v0, "dark"

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .line 174
    xor-int/lit8 p2, p2, 0x1

    move-object v2, p0

    check-cast v2, Landroid/app/Activity;

    .line 175
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 176
    nop

    .line 177
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    if-lez v4, :cond_43

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    if-lez v4, :cond_43

    .line 178
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 179
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    goto :goto_44

    .line 181
    :cond_43
    const/4 v4, 0x0

    :goto_44
    invoke-static {p0}, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->appearance(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 182
    invoke-static {v2}, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->applySystemBars(Landroid/app/Activity;)V

    .line 183
    if-eqz p2, :cond_5b

    const-string p0, "\u5207\u6362\u4eae\u8272\u6a21\u5f0f"

    goto :goto_5d

    :cond_5b
    const-string p0, "\u5207\u6362\u6697\u8272\u6a21\u5f0f"

    :goto_5d
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    sget-object p0, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->homes:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    new-array p1, v1, [Landroid/view/View;

    invoke-interface {p0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/view/View;

    array-length p1, p0

    const/4 v0, 0x0

    :goto_70
    if-ge v0, p1, :cond_7a

    aget-object v2, p0, v0

    invoke-static {v2, p2}, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->apply(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_70

    .line 185
    :cond_7a
    sget-object p0, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->selectedRows:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    new-array p1, v1, [Landroid/view/View;

    invoke-interface {p0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/view/View;

    array-length p1, p0

    :goto_89
    if-ge v1, p1, :cond_93

    aget-object v0, p0, v1

    invoke-static {v0, p2}, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->tint(Landroid/view/View;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_89

    .line 186
    :cond_93
    invoke-static {v3, p2}, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->tint(Landroid/view/View;Z)V

    invoke-static {}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->refreshHomeTheme()V

    invoke-static {}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->refreshAll()V

    .line 187
    if-eqz v4, :cond_a1

    invoke-static {v3, v4, p2}, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->animate(Landroid/view/ViewGroup;Landroid/graphics/Bitmap;Z)V

    .line 188
    :cond_a1
    return-void
.end method

.method static synthetic lambda$addPreferences$0(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 116
    const-string v0, "onPreferenceClick"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_30

    .line 117
    const-string p1, "moe.matsuri.nb4a.ui.DiagnosticRecorder"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Class;

    const-class p3, Landroid/content/Context;

    aput-object p3, p2, v1

    const-string p3, "open"

    invoke-virtual {p1, p3, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 118
    invoke-virtual {p1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 119
    new-array p2, v2, [Ljava/lang/Object;

    aput-object p0, p2, v1

    const/4 p0, 0x0

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 122
    :cond_30
    const-string p0, "hashCode"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_45

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 123
    :cond_45
    const-string p0, "equals"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5b

    aget-object p0, p3, v1

    if-ne p1, p0, :cond_56

    const/4 v1, 0x1

    :cond_56
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 124
    :cond_5b
    const-string p0, "DiagnosticLogClickListener"

    return-object p0
.end method

.method static synthetic lambda$animate$7(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 263
    const v0, 0x7f0a01e2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 264
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 265
    return-void
.end method

.method static synthetic lambda$home$2(Landroid/view/View;Landroid/view/View;)V
    .registers 6

    .line 197
    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    .line 198
    nop

    .line 199
    if-eqz v0, :cond_1d

    .line 200
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_18

    .line 201
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    goto :goto_1c

    .line 202
    :cond_18
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    :goto_1c
    goto :goto_1e

    .line 199
    :cond_1d
    const/4 v0, 0x0

    .line 204
    :goto_1e
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 205
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_52

    .line 206
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 207
    const v2, 0x7f0a01e1

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    .line 208
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_3a

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_4c

    :cond_3a
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41900000    # 18.0f

    mul-float p0, p0, v2

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 209
    :goto_4c
    add-int/2addr p0, v0

    iput p0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 210
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    :cond_52
    return-void
.end method

.method static synthetic lambda$home$3(Ljava/lang/Runnable;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 3

    .line 214
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 215
    return-object p2
.end method

.method static synthetic lambda$home$4(Ljava/lang/Runnable;Landroid/view/View;IIIIIIII)V
    .registers 10

    .line 217
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic lambda$home$5(Landroid/view/View;Landroid/view/View;IIIIIIII)V
    .registers 10

    .line 220
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->appearance(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "dark"

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p0, p1}, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->apply(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic lambda$home$6(Landroid/view/View;)V
    .registers 4

    .line 221
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->appearance(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "dark"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {p0, v0}, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->apply(Landroid/view/View;Z)V

    return-void
.end method

.method private static rounded(Landroid/view/View;IF)Landroid/graphics/drawable/GradientDrawable;
    .registers 4

    .line 290
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 291
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 292
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p2, p2, p0

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 293
    return-object v0
.end method

.method public static row(Landroid/view/View;Z)V
    .registers 4

    .line 225
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x429c0000    # 78.0f

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 226
    sget-object v0, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->selectedRows:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 227
    new-instance v0, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings$1;

    invoke-direct {v0}, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings$1;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 232
    :cond_25
    sget-object v0, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->selectedRows:Ljava/util/WeakHashMap;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->dark(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p0, p1}, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->tint(Landroid/view/View;Z)V

    .line 234
    return-void
.end method

.method public static snackbar(Ljava/lang/Object;)V
    .registers 10

    .line 28
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getView"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 29
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 30
    const v3, -0xd6d5d0

    const/high16 v4, 0x41b00000    # 22.0f

    invoke-static {v0, v3, v4}, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->rounded(Landroid/view/View;IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    .line 31
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    const v6, -0xbab8b0

    invoke-virtual {v3, v4, v6}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 32
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 33
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 34
    const/high16 v3, 0x40c00000    # 6.0f

    mul-float v3, v3, v1

    invoke-virtual {v0, v3}, Landroid/view/View;->setElevation(F)V

    .line 35
    nop

    .line 36
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "jj_capsule"

    const-string v6, "id"

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 37
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 38
    if-eqz v3, :cond_82

    invoke-virtual {v3}, Landroid/view/View;->isShown()Z

    move-result v4

    if-eqz v4, :cond_82

    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v6, "setAnchorView"

    new-array v7, v5, [Ljava/lang/Class;

    const-class v8, Landroid/view/View;

    aput-object v8, v7, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v3, v6, v2

    invoke-virtual {v4, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const/4 v2, 0x1

    .line 42
    :cond_82
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 43
    instance-of v3, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_b5

    .line 44
    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 45
    const/high16 v3, 0x41a00000    # 20.0f

    mul-float v3, v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 46
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 47
    iget v3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eqz v2, :cond_a3

    const/16 v2, 0xc

    goto :goto_a5

    :cond_a3
    const/16 v2, 0x60

    :goto_a5
    int-to-float v2, v2

    mul-float v2, v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 48
    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    :cond_b5
    invoke-static {v0}, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->tintSnackbar(Landroid/view/View;)V
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b8} :catch_b9

    .line 53
    goto :goto_c1

    .line 51
    :catch_b9
    move-exception p0

    .line 52
    const-string v0, "LocalAppearanceSettings"

    const-string v1, "Cannot style snackbar"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    :goto_c1
    return-void
.end method

.method private static store()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 69
    const-string v0, "io.nekohasekai.sagernet.database.DataStore"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 70
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getConfigurationStore"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v3, "INSTANCE"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static tint(Landroid/view/View;Z)V
    .registers 8

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/RosePalette;->widget(Landroid/view/View;)V

    instance-of v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;

    if-eqz v0, :cond_e

    move-object v0, p0

    check-cast v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->refreshAppearance()V

    return-void

    .line 352
    :cond_e
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/UiComponents;->owns(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/UiComponents;->refresh(Landroid/view/View;)V

    return-void

    :cond_18
    nop

    .line 353
    :try_start_19
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_25} :catch_26

    goto :goto_29

    :catch_26
    move-exception v0

    const-string v0, ""

    .line 354
    :goto_29
    const-string v1, "item_jj_root"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a8

    .line 355
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v3, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->selectedRows:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 356
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sget-object v4, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->rowModes:Ljava/util/WeakHashMap;

    invoke-virtual {v4, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6b

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sget-object v4, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->appliedSelections:Ljava/util/WeakHashMap;

    invoke-virtual {v4, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6b

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget-object v4, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->rowBackgrounds:Ljava/util/WeakHashMap;

    invoke-virtual {v4, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_6b

    return-void

    .line 357
    :cond_6b
    invoke-static {p1, v1}, Lio/nekohasekai/sagernet/ui/RosePalette;->nodeFill(ZZ)I

    move-result v3

    const/high16 v4, 0x41900000    # 18.0f

    invoke-static {p0, v3, v4}, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->rounded(Landroid/view/View;IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    .line 358
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {p1, v1}, Lio/nekohasekai/sagernet/ui/RosePalette;->nodeBorder(ZZ)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 359
    invoke-virtual {p0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 360
    sget-object v3, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->rowModes:Ljava/util/WeakHashMap;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, p0, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    sget-object v3, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->appliedSelections:Ljava/util/WeakHashMap;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    sget-object v1, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->rowBackgrounds:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, p0, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    :cond_a8
    const-string v1, "item_jj_emblem"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c2

    if-eqz p1, :cond_b6

    const v1, -0xcbcac5

    goto :goto_b9

    :cond_b6
    const v1, -0x7a7972

    :goto_b9
    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {p0, v1, v3}, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->rounded(Landroid/view/View;IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 365
    :cond_c2
    instance-of v1, p0, Landroid/widget/TextView;

    if-eqz v1, :cond_123

    const-string v1, "item_jj_name"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e6

    const-string v1, "jj_state_title"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e6

    const-string v1, "item_jj_subtitle"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e6

    const-string v1, "jj_state_hint"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_123

    .line 366
    :cond_e6
    move-object v1, p0

    check-cast v1, Landroid/widget/TextView;

    .line 367
    sget-object v3, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->colors:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_fa

    sget-object v3, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->colors:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    :cond_fa
    if-eqz p1, :cond_118

    const-string v3, "name"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_111

    const-string v3, "title"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10d

    goto :goto_111

    :cond_10d
    const v3, -0x4d4d43

    goto :goto_114

    :cond_111
    :goto_111
    const v3, -0xf0f0d

    :goto_114
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_123

    .line 369
    :cond_118
    sget-object v3, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->colors:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 371
    :cond_123
    :goto_123
    const-string v1, "toolbar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14a

    .line 372
    :try_start_12b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setForceLightContent"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_147
    .catch Ljava/lang/Exception; {:try_start_12b .. :try_end_147} :catch_148

    goto :goto_149

    .line 373
    :catch_148
    move-exception v0

    :goto_149
    nop

    .line 375
    :cond_14a
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_161

    .line 376
    check-cast p0, Landroid/view/ViewGroup;

    .line 377
    nop

    :goto_151
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_161

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1}, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->tint(Landroid/view/View;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_151

    .line 379
    :cond_161
    return-void
.end method

.method private static tintActions(Landroid/view/View;I)V
    .registers 8

    .line 338
    instance-of v0, p0, Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    .line 339
    move-object v0, p0

    check-cast v0, Landroid/widget/TextView;

    .line 340
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 341
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v2, :cond_23

    aget-object v4, v0, v3

    .line 342
    if-eqz v4, :cond_20

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, p1, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 341
    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 345
    :cond_23
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3a

    .line 346
    check-cast p0, Landroid/view/ViewGroup;

    .line 347
    nop

    :goto_2a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_3a

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1}, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->tintActions(Landroid/view/View;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 349
    :cond_3a
    return-void
.end method

.method private static tintMenu(Landroid/view/View;Z)V
    .registers 7

    .line 297
    nop

    .line 298
    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_e

    goto :goto_11

    :catch_e
    move-exception v0

    const-string v0, ""

    .line 299
    :goto_11
    instance-of v1, p0, Landroid/widget/ImageButton;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_37

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_37

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "JJGlassToolbar"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    const/4 v1, 0x1

    goto :goto_38

    :cond_37
    const/4 v1, 0x0

    .line 300
    :goto_38
    if-eqz v1, :cond_3e

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 301
    :cond_3e
    const-string v1, "jj_nav_button"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 302
    if-eqz v0, :cond_89

    .line 303
    sget-object v0, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->backgrounds:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    sget-object v0, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->backgrounds:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    :cond_57
    if-eqz p1, :cond_6b

    .line 305
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 306
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 307
    const v1, -0xd6d5d0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 308
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 309
    goto :goto_76

    :cond_6b
    sget-object v0, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->backgrounds:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 310
    :goto_76
    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_89

    move-object v0, p0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz p1, :cond_83

    const v1, -0xf0f0d

    goto :goto_86

    :cond_83
    const v1, -0xebebea

    :goto_86
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 312
    :cond_89
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_a0

    .line 313
    check-cast p0, Landroid/view/ViewGroup;

    .line 314
    nop

    :goto_90
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_a0

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1}, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->tintMenu(Landroid/view/View;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_90

    .line 316
    :cond_a0
    return-void
.end method

.method private static tintSnackbar(Landroid/view/View;)V
    .registers 3

    .line 57
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_12

    .line 58
    move-object v0, p0

    check-cast v0, Landroid/widget/TextView;

    .line 59
    const v1, -0xf0f0d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 62
    :cond_12
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_29

    .line 63
    check-cast p0, Landroid/view/ViewGroup;

    .line 64
    const/4 v0, 0x0

    :goto_19
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_29

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->tintSnackbar(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 66
    :cond_29
    return-void
.end method

.method public static toolbarIcons(Landroid/view/View;)V
    .registers 6

    .line 319
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->dark(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, -0x1

    goto :goto_f

    :cond_c
    const v0, -0xebebea

    .line 321
    :goto_f
    :try_start_f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getMenu"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Menu;

    .line 322
    nop

    :goto_25
    invoke-interface {v1}, Landroid/view/Menu;->size()I

    move-result v2

    if-ge v3, v2, :cond_44

    .line 323
    invoke-interface {v1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 324
    invoke-interface {v2}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 325
    if-eqz v2, :cond_41

    .line 326
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 327
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 328
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v0, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_41} :catch_45

    .line 322
    :cond_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 333
    :cond_44
    goto :goto_4d

    .line 331
    :catch_45
    move-exception v1

    .line 332
    const-string v2, "LocalAppearanceSettings"

    const-string v3, "Cannot tint toolbar menu"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 334
    :goto_4d
    invoke-static {p0, v0}, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->tintActions(Landroid/view/View;I)V

    .line 335
    return-void
.end method
