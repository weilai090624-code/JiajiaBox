.class public final Lmoe/matsuri/nb4a/ui/ColorPickerPreference;
.super Landroidx/preference/Preference;
.source "ColorPickerPreference.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nColorPickerPreference.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ColorPickerPreference.kt\nmoe/matsuri/nb4a/ui/ColorPickerPreference\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,119:1\n172#2,2:120\n*S KotlinDebug\n*F\n+ 1 ColorPickerPreference.kt\nmoe/matsuri/nb4a/ui/ColorPickerPreference\n*L\n65#1:120,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\'\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u001e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u0007J\u0016\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0016\u001a\u00020\u0007J\u0008\u0010\u001d\u001a\u00020\u0011H\u0014R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u001e"
    }
    d2 = {
        "Lmoe/matsuri/nb4a/ui/ColorPickerPreference;",
        "Landroidx/preference/Preference;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyle",
        "",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "inited",
        "",
        "getInited",
        "()Z",
        "setInited",
        "(Z)V",
        "onBindViewHolder",
        "",
        "holder",
        "Landroidx/preference/PreferenceViewHolder;",
        "getNekoImageViewAtColor",
        "Landroid/widget/ImageView;",
        "color",
        "sizeDp",
        "paddingDp",
        "getNekoAtColor",
        "Landroid/graphics/drawable/Drawable;",
        "res",
        "Landroid/content/res/Resources;",
        "onClick",
        "app_ossDebug"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private inited:Z


# direct methods
.method public static synthetic $r8$lambda$WmI2xq1zuZqWG7ltTw1YiH9k8FU(Lmoe/matsuri/nb4a/ui/ColorPickerPreference;ILkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lmoe/matsuri/nb4a/ui/ColorPickerPreference;->onClick$lambda$3$lambda$2$lambda$1(Lmoe/matsuri/nb4a/ui/ColorPickerPreference;ILkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lmoe/matsuri/nb4a/ui/ColorPickerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lmoe/matsuri/nb4a/ui/ColorPickerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    nop

    .line 33
    nop

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 26
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 27
    const/4 p2, 0x0

    .line 26
    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 27
    nop

    .line 28
    nop

    .line 29
    nop

    .line 30
    nop

    .line 27
    const p3, 0x7f040195

    const p4, 0x1010092

    invoke-static {p1, p3, p4}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result p3

    .line 26
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lmoe/matsuri/nb4a/ui/ColorPickerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method private static final onClick$lambda$3$lambda$2$lambda$1(Lmoe/matsuri/nb4a/ui/ColorPickerPreference;ILkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V
    .locals 1
    .param p0, "this$0"    # Lmoe/matsuri/nb4a/ui/ColorPickerPreference;
    .param p1, "$themeId"    # I
    .param p2, "$dialog"    # Lkotlin/jvm/internal/Ref$ObjectRef;
    .param p3, "it"    # Landroid/view/View;

    .line 97
    invoke-virtual {p0, p1}, Lmoe/matsuri/nb4a/ui/ColorPickerPreference;->persistInt(I)Z

    .line 98
    iget-object v0, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v0, :cond_0

    const-string v0, "dialog"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/app/AlertDialog;

    :goto_0
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 99
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmoe/matsuri/nb4a/ui/ColorPickerPreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 100
    return-void
.end method


# virtual methods
.method public final getInited()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lmoe/matsuri/nb4a/ui/ColorPickerPreference;->inited:Z

    return v0
.end method

.method public final getNekoAtColor(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "color"    # I

    const-string v0, "res"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    nop

    .line 72
    nop

    .line 73
    nop

    .line 74
    nop

    .line 71
    const v0, 0x7f0800bb

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 76
    .local v0, "neko":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1, p2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 77
    return-object v0
.end method

.method public final getNekoImageViewAtColor(III)Landroid/widget/ImageView;
    .locals 8
    .param p1, "color"    # I
    .param p2, "sizeDp"    # I
    .param p3, "paddingDp"    # I

    .line 59
    invoke-virtual {p0}, Lmoe/matsuri/nb4a/ui/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 60
    .local v0, "factor":F
    int-to-float v1, p2

    mul-float v1, v1, v0

    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v1

    .line 61
    .local v1, "size":I
    int-to-float v2, p3

    mul-float v2, v2, v0

    invoke-static {v2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v2

    .line 63
    .local v2, "paddingSize":I
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lmoe/matsuri/nb4a/ui/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object v4, v3

    .local v4, "$this$getNekoImageViewAtColor_u24lambda_u240":Landroid/widget/ImageView;
    const/4 v5, 0x0

    .line 64
    .local v5, "$i$a$-apply-ColorPickerPreference$getNekoImageViewAtColor$1":I
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    move-object v6, v4

    check-cast v6, Landroid/view/View;

    .local v6, "$this$setPadding$iv":Landroid/view/View;
    const/4 v7, 0x0

    .line 120
    .local v7, "$i$f$setPadding":I
    invoke-virtual {v6, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 121
    nop

    .line 66
    .end local v6    # "$this$setPadding$iv":Landroid/view/View;
    .end local v7    # "$i$f$setPadding":I
    invoke-virtual {v4}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "getResources(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v6, p1}, Lmoe/matsuri/nb4a/ui/ColorPickerPreference;->getNekoAtColor(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    nop

    .line 63
    .end local v4    # "$this$getNekoImageViewAtColor_u24lambda_u240":Landroid/widget/ImageView;
    .end local v5    # "$i$a$-apply-ColorPickerPreference$getNekoImageViewAtColor$1":I
    return-object v3
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4
    .param p1, "holder"    # Landroidx/preference/PreferenceViewHolder;

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 41
    const v0, 0x1020018

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.widget.LinearLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout;

    .line 43
    .local v0, "widgetFrame":Landroid/widget/LinearLayout;
    iget-boolean v1, p0, Lmoe/matsuri/nb4a/ui/ColorPickerPreference;->inited:Z

    if-nez v1, :cond_0

    .line 44
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmoe/matsuri/nb4a/ui/ColorPickerPreference;->inited:Z

    .line 46
    nop

    .line 47
    nop

    .line 48
    invoke-virtual {p0}, Lmoe/matsuri/nb4a/ui/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f04010d

    invoke-static {v1, v2}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->getColorAttr(Landroid/content/Context;I)I

    move-result v1

    .line 49
    nop

    .line 50
    nop

    .line 47
    const/16 v2, 0x30

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lmoe/matsuri/nb4a/ui/ColorPickerPreference;->getNekoImageViewAtColor(III)Landroid/widget/ImageView;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 46
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 53
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 55
    :cond_0
    return-void
.end method

.method protected onClick()V
    .locals 15

    .line 81
    invoke-super {p0}, Landroidx/preference/Preference;->onClick()V

    .line 83
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 85
    .local v0, "dialog":Lkotlin/jvm/internal/Ref$ObjectRef;
    new-instance v1, Landroid/widget/GridLayout;

    invoke-virtual {p0}, Lmoe/matsuri/nb4a/ui/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;)V

    move-object v2, v1

    .local v2, "$this$onClick_u24lambda_u243":Landroid/widget/GridLayout;
    const/4 v3, 0x0

    .line 86
    .local v3, "$i$a$-apply-ColorPickerPreference$onClick$grid$1":I
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/widget/GridLayout;->setColumnCount(I)V

    .line 88
    invoke-virtual {v2}, Landroid/widget/GridLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f030016

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v4

    const-string v5, "getIntArray(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    .local v4, "colors":[I
    const/4 v5, 0x0

    .line 91
    .local v5, "i":I
    array-length v6, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v6, :cond_0

    aget v9, v4, v8

    .line 92
    .local v9, "color":I
    add-int/lit8 v5, v5, 0x1

    .line 94
    move v10, v5

    .line 95
    .local v10, "themeId":I
    const/16 v11, 0x40

    invoke-virtual {p0, v9, v11, v7}, Lmoe/matsuri/nb4a/ui/ColorPickerPreference;->getNekoImageViewAtColor(III)Landroid/widget/ImageView;

    move-result-object v11

    move-object v12, v11

    .local v12, "$this$onClick_u24lambda_u243_u24lambda_u242":Landroid/widget/ImageView;
    const/4 v13, 0x0

    .line 96
    .local v13, "$i$a$-apply-ColorPickerPreference$onClick$grid$1$view$1":I
    new-instance v14, Lmoe/matsuri/nb4a/ui/ColorPickerPreference$$ExternalSyntheticLambda0;

    invoke-direct {v14, p0, v10, v0}, Lmoe/matsuri/nb4a/ui/ColorPickerPreference$$ExternalSyntheticLambda0;-><init>(Lmoe/matsuri/nb4a/ui/ColorPickerPreference;ILkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v12, v14}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    nop

    .line 95
    .end local v12    # "$this$onClick_u24lambda_u243_u24lambda_u242":Landroid/widget/ImageView;
    .end local v13    # "$i$a$-apply-ColorPickerPreference$onClick$grid$1$view$1":I
    nop

    .line 102
    .local v11, "view":Landroid/widget/ImageView;
    move-object v12, v11

    check-cast v12, Landroid/view/View;

    invoke-virtual {v2, v12}, Landroid/widget/GridLayout;->addView(Landroid/view/View;)V

    .line 91
    .end local v9    # "color":I
    .end local v10    # "themeId":I
    .end local v11    # "view":Landroid/widget/ImageView;
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 105
    :cond_0
    nop

    .line 85
    .end local v2    # "$this$onClick_u24lambda_u243":Landroid/widget/GridLayout;
    .end local v3    # "$i$a$-apply-ColorPickerPreference$onClick$grid$1":I
    .end local v4    # "colors":[I
    .end local v5    # "i":I
    nop

    .line 107
    .local v1, "grid":Landroid/widget/GridLayout;
    new-instance v2, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p0}, Lmoe/matsuri/nb4a/ui/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lmoe/matsuri/nb4a/ui/ColorPickerPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v2

    .line 108
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lmoe/matsuri/nb4a/ui/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v4, v3

    .local v4, "$this$onClick_u24lambda_u244":Landroid/widget/LinearLayout;
    const/4 v5, 0x0

    .line 109
    .local v5, "$i$a$-apply-ColorPickerPreference$onClick$1":I
    const/16 v6, 0x11

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 110
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    .line 111
    nop

    .line 110
    const/4 v7, -0x2

    invoke-direct {v6, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    move-object v6, v1

    check-cast v6, Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 114
    nop

    .end local v4    # "$this$onClick_u24lambda_u244":Landroid/widget/LinearLayout;
    .end local v5    # "$i$a$-apply-ColorPickerPreference$onClick$1":I
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 108
    check-cast v3, Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v2

    .line 115
    const/high16 v3, 0x1040000

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v2

    .line 116
    invoke-virtual {v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    move-result-object v2

    .line 107
    iput-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 117
    return-void
.end method

.method public final setInited(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 36
    iput-boolean p1, p0, Lmoe/matsuri/nb4a/ui/ColorPickerPreference;->inited:Z

    return-void
.end method
